uint64_t sub_22B9F0978(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B9F0998, 0, 0);
}

uint64_t sub_22B9F0998()
{
  v33 = v0;
  v1 = [*(v0 + 16) guid];
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    v4 = sub_22BA0FFFC();
    v6 = v5;

    v7 = [v2 service];
    if (!v7)
    {
LABEL_5:

LABEL_6:
      v1 = 0;
      goto LABEL_7;
    }

    v8 = v7;
    v9 = sub_22BA0FFFC();
    v11 = v10;
    v12 = *MEMORY[0x277D1A5F0];
    v13 = [v12 containsObject_];

    if (v13)
    {

      goto LABEL_5;
    }

    v16 = *(v0 + 24);
    v17 = v16 + *(type metadata accessor for MessageRecord(0) + 136);
    v18 = *v17;
    v19 = *(v17 + 24);
    if (*v17 != 1 && v19 != 0)
    {
      v22 = *(v17 + 8);
      v21 = *(v17 + 16);
      sub_22B9E1B94(*v17, v22, v21, *(v17 + 24));
      v23 = v19;
      if ([v23 hasActualParentChatId])
      {
        v24 = [v23 actualParentChatId];

        if (v24)
        {

          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v25 = sub_22BA0FEFC();
    sub_22B936CA8(v25, qword_28141AD10);

    v26 = sub_22BA0FEDC();
    v27 = sub_22BA1042C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315394;
      v30 = sub_22B99153C(v4, v6, &v32);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      v31 = sub_22B99153C(v9, v11, &v32);

      *(v28 + 14) = v31;
      _os_log_impl(&dword_22B92A000, v26, v27, "Message %s has non legacy service %s, but cloud is missing proto4 overrides", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v29, -1, -1);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    else
    {
    }

    v1 = 1;
  }

LABEL_7:
  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_22B9F0CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B9F0D20, 0, 0);
}

uint64_t sub_22B9F0D20()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 56) = v1;
  if (v1 && (v2 = v1, objc_opt_self(), v3 = swift_dynamicCastObjCClass(), (*(v0 + 64) = v3) != 0))
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);
    v6 = v4;
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = sub_22B9F0E6C;

    return sub_22B9F0978(v2);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_22B9F0E6C(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_22B9F1600;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = sub_22B9F0F98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9F0F98()
{
  v73 = v0;
  v1 = *(v0 + 88);
  v2 = objc_opt_self();
  v3 = [v2 sharedFeatureFlags];
  v4 = v3;
  if (v1 != 1)
  {
    v12 = *(v0 + 56);
    v13 = [v3 isEmojiTapbacksEnabled];

    v14 = [v12 threadIdentifier];
    if (!v13)
    {
      if (v14)
      {
        v18 = *(v0 + 64);

        v19 = [v18 threadIdentifier];
        if (!v19)
        {
LABEL_35:
          v42 = *(v0 + 16);
          v41 = *(v0 + 24);
          goto LABEL_36;
        }
      }

LABEL_34:
      if ([*(v0 + 64) scheduleType] == 2)
      {
        goto LABEL_35;
      }

      v45 = [*(v0 + 16) service];
      if (v45)
      {
        v46 = v45;
        v47 = *(v0 + 24);
        v48 = sub_22BA0FFFC();
        v50 = v49;
        v51 = [v47 service];
        if (!v51)
        {

          goto LABEL_49;
        }

        v52 = v51;
        if (v48 == sub_22BA0FFFC() && v50 == v53)
        {

LABEL_48:

          goto LABEL_49;
        }

        v54 = sub_22BA10C6C();

        if (v54)
        {
          goto LABEL_48;
        }

        v67 = MEMORY[0x277D1A5F0];
        v68 = *MEMORY[0x277D1A5F0];
        v69 = [v68 containsObject_];

        if (v69)
        {
        }

        else
        {
          v70 = *v67;
          v71 = [v70 containsObject_];

          if (v71)
          {
            goto LABEL_35;
          }
        }
      }

LABEL_49:
      if (([*(v0 + 64) sentOrReceivedOffGrid] & 1) == 0 && objc_msgSend(*(v0 + 56), sel_sentOrReceivedOffGrid) || (objc_msgSend(*(v0 + 64), sel_isTimeSensitive) & 1) == 0 && objc_msgSend(*(v0 + 56), sel_isTimeSensitive))
      {
        goto LABEL_35;
      }

      v55 = [*(v0 + 56) originalUnformattedID];
      if (v55)
      {
        v56 = *(v0 + 64);

        v57 = [v56 originalUnformattedID];
        if (!v57)
        {
          goto LABEL_35;
        }
      }

      v58 = [*(v0 + 56) originalServiceName];
      if (v58)
      {
        v59 = *(v0 + 64);

        v60 = [v59 originalServiceName];
        if (!v60)
        {
          goto LABEL_35;
        }
      }

      if (![*(v0 + 56) wasInterworked] || (objc_msgSend(*(v0 + 64), sel_wasInterworked) & 1) != 0)
      {
        v61 = [v2 sharedFeatureFlags];
        v62 = [v61 isRCSEncryptionEnabled];

        if (v62 && [*(v0 + 56) encrypted])
        {
          v64 = *(v0 + 16);
          v63 = *(v0 + 24);
          v65 = [*(v0 + 64) encrypted];

          if ((v65 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v66 = *(v0 + 24);
        }

        v37 = 0;
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      v15 = *(v0 + 64);

      v16 = [v15 threadIdentifier];
      if (!v16)
      {
        v17 = 1;
LABEL_29:
        v38 = [*(v0 + 56) associatedMessageEmoji];
        if (v38)
        {
          v39 = *(v0 + 64);

          v40 = [v39 associatedMessageEmoji];
          if (!v40)
          {
            goto LABEL_32;
          }

          if (v17)
          {
            goto LABEL_32;
          }
        }

        else if (v17)
        {
LABEL_32:
          v41 = *(v0 + 16);
          v42 = *(v0 + 24);
LABEL_36:

LABEL_37:
          v37 = 1;
          goto LABEL_38;
        }

        goto LABEL_34;
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

  v5 = [v3 isMergeBusinessSenderIndiaEnabled];

  if (!v5)
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  sub_22B9EF314(v6);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (v7 == *(v0 + 32) && v8 == *(v0 + 40))
  {

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v10 = sub_22BA10C6C();

  v11 = v10 ^ 1;
LABEL_19:
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 24);
  v21 = sub_22BA0FEFC();
  sub_22B936CA8(v21, qword_28141AD10);
  v22 = v20;
  v23 = sub_22BA0FEDC();
  v24 = sub_22BA1042C();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 24);
  if (v25)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v72 = v28;
    *v27 = 136315394;
    v29 = [v26 guid];
    if (v29)
    {
      v30 = v29;
      v31 = sub_22BA0FFFC();
      v33 = v32;
    }

    else
    {
      v33 = 0xE800000000000000;
      v31 = 0x646975672D6C696ELL;
    }

    v35 = *(v0 + 16);
    v34 = *(v0 + 24);
    v36 = sub_22B99153C(v31, v33, &v72);

    *(v27 + 4) = v36;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v11 & 1;
    _os_log_impl(&dword_22B92A000, v23, v24, "Bad chatID found in message %s, marking for resync, but only if chatIsAMergedBusinessThread is false: %{BOOL}d", v27, 0x12u);
    sub_22B936C4C(v28);
    MEMORY[0x23189ADD0](v28, -1, -1);
    MEMORY[0x23189ADD0](v27, -1, -1);
  }

  else
  {
  }

  v37 = v11 ^ 1;
LABEL_38:
  v43 = *(v0 + 8);

  return v43(v37 & 1);
}

uint64_t sub_22B9F1600()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_22B9F166C()
{
  v1[11] = v0;
  v1[12] = type metadata accessor for MessageRecord(0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9F170C, 0, 0);
}

uint64_t sub_22B9F170C()
{
  v79 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = (v1 + *(v2 + 140));
  v5 = *v3;
  v4 = v3[1];
  v6 = (v1 + *(v2 + 136));
  if (*v6 == 1 || (v7 = v6[3]) == 0)
  {

    goto LABEL_14;
  }

  v8 = v7;
  if (([v8 hasActualParentChatId] & 1) == 0 || (v9 = objc_msgSend(v8, sel_actualParentChatId)) == 0)
  {

    goto LABEL_14;
  }

  v10 = v9;
  v11 = sub_22BA0FFFC();
  v13 = v12;

  if (v4)
  {
    v14 = v11 == v5 && v4 == v13;
    if (v14 || (sub_22BA10C6C() & 1) != 0)
    {

LABEL_14:
      v11 = v5;
      goto LABEL_15;
    }
  }

  v77 = v13;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v48 = v0[13];
  v47 = v0[14];
  v49 = v0[11];
  v50 = sub_22BA0FEFC();
  sub_22B936CA8(v50, qword_28141AD40);
  sub_22B936918(v49, v47);
  sub_22B936918(v49, v48);
  v51 = v8;
  v52 = sub_22BA0FEDC();
  v53 = sub_22BA1046C();

  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[14];
  if (v54)
  {
    v75 = v53;
    v56 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v78[0] = v74;
    *v56 = 136315650;
    v57 = v0[14];
    if (*(v55 + 8))
    {
      v58 = *v57;
      v59 = *(v55 + 8);
    }

    else
    {
      v59 = 0xE700000000000000;
      v58 = 0x646975672D6F6ELL;
    }

    sub_22B93697C(v57);
    v61 = sub_22B99153C(v58, v59, v78);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    v62 = [v51 actualParentChatId];
    if (v62)
    {
      v63 = v62;
      v64 = sub_22BA0FFFC();
      v66 = v65;
    }

    else
    {
      v66 = 0xE500000000000000;
      v64 = 0x7974706D65;
    }

    v67 = v0[13];
    v68 = sub_22B99153C(v64, v66, v78);

    *(v56 + 14) = v68;
    *(v56 + 22) = 2080;
    v69 = (v67 + *(v2 + 140));
    if (v69[1])
    {
      v70 = *v69;
      v71 = v69[1];
    }

    else
    {
      v70 = 7104878;
      v71 = 0xE300000000000000;
    }

    v72 = v0[13];

    sub_22B93697C(v72);
    v73 = sub_22B99153C(v70, v71, v78);

    *(v56 + 24) = v73;
    _os_log_impl(&dword_22B92A000, v52, v75, "For message %s import, using override in proto4 %s over %s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v74, -1, -1);
    MEMORY[0x23189ADD0](v56, -1, -1);
  }

  else
  {
    v60 = v0[13];

    sub_22B93697C(v60);
    sub_22B93697C(v55);
  }

  v4 = v77;
LABEL_15:
  v15 = sub_22B9337B8();
  v0[15] = v15;
  v16 = objc_opt_self();
  v0[16] = v16;
  v17 = [v16 sharedFeatureFlags];
  v18 = [v17 isMergeBusinessSenderIndiaEnabled];

  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v15;
    }

    sub_22B9EF314(v19);
    v22 = v21;
    v24 = v23;

    if (v24)
    {
      if (v4 && (v22 == v11 ? (v25 = v24 == v4) : (v25 = 0), v25 || (sub_22BA10C6C() & 1) != 0))
      {
      }

      else
      {
        v33 = qword_281414D18;

        if (v33 != -1)
        {
          swift_once();
        }

        v34 = sub_22BA0FEFC();
        sub_22B936CA8(v34, qword_28141AD10);

        v35 = sub_22BA0FEDC();
        v36 = sub_22BA1046C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v78[0] = v76;
          *v37 = 136315394;
          if (v4)
          {
            v38 = v4;
          }

          else
          {
            v11 = 7104878;
            v38 = 0xE300000000000000;
          }

          v39 = sub_22B99153C(v11, v38, v78);

          *(v37 + 4) = v39;
          *(v37 + 12) = 2080;
          v40 = sub_22B99153C(v22, v24, v78);

          *(v37 + 14) = v40;
          _os_log_impl(&dword_22B92A000, v35, v36, "Updating parentChatID from %s to %s for a merged business thread", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v76, -1, -1);
          MEMORY[0x23189ADD0](v37, -1, -1);
        }

        else
        {
        }

        v4 = v24;
        v11 = v22;
      }

      goto LABEL_43;
    }
  }

  if (v4)
  {
LABEL_43:
    v0[17] = v4;
    v0[18] = v11;

    v41 = [v15 cloudKitChatID];
    if (v41)
    {
      v42 = v41;
      v43 = sub_22BA0FFFC();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    sub_22B95BE50(v43, v45);

    v46 = swift_task_alloc();
    v0[19] = v46;
    *v46 = v0;
    v46[1] = sub_22B9F1F28;

    return sub_22B95BFAC(v15);
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v26 = sub_22BA0FEFC();
  sub_22B936CA8(v26, qword_28141AD10);
  v27 = sub_22BA0FEDC();
  v28 = sub_22BA1044C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22B92A000, v27, v28, "No parent chat ID found, do not store orphan", v29, 2u);
    MEMORY[0x23189ADD0](v29, -1, -1);
  }

  sub_22B9F3DB4();
  swift_allocError();
  *v30 = 2;
  swift_willThrow();

  v31 = v0[1];

  return v31();
}

uint64_t sub_22B9F1F28(char a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_22B9F26BC;
  }

  else
  {
    *(v4 + 392) = a1 & 1;
    v5 = sub_22B9F2054;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9F2054()
{
  v44 = v0;
  if (*(v0 + 392) == 1)
  {
    v1 = [*(v0 + 120) guid];
    if (v1)
    {
      v2 = *(v0 + 120);
      v3 = v1;
      v4 = sub_22BA0FFFC();
      v6 = v5;

      *(v0 + 168) = v4;
      *(v0 + 176) = v6;
      v7 = [v2 associatedMessageType];
      if (v7 == 3006 || v7 == 2006)
      {
        v8 = [*(v0 + 128) sharedFeatureFlags];
        v9 = [v8 isEmojiTapbacksEnabled];

        if ((v9 & 1) == 0)
        {
          v28 = *(v0 + 120);

          swift_bridgeObjectRelease_n();
          v29 = 0;
LABEL_37:

          v42 = *(v0 + 8);

          return v42(v29);
        }
      }

      if (qword_281414F10 != -1)
      {
        swift_once();
      }

      sub_22B99F8F8(v4, v6);
      *(v0 + 184) = v10;
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        *(v0 + 192) = v12;
        if (v12)
        {
          v13 = v12;
          v14 = *(v0 + 136);

          v15 = v11;
          v16 = swift_task_alloc();
          *(v0 + 200) = v16;
          *v16 = v0;
          v16[1] = sub_22B9F2740;
          v17 = *(v0 + 144);
          v18 = *(v0 + 120);

          return sub_22B9F0CF8(v13, v18, v17, v14);
        }
      }

      if (sub_22B9EFCD4(*(v0 + 120)))
      {

        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v30 = sub_22BA0FEFC();
        sub_22B936CA8(v30, qword_28141AD10);

        v31 = sub_22BA0FEDC();
        v32 = sub_22BA1042C();

        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 120);
        if (v33)
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v43 = v36;
          *v35 = 136315138;
          v37 = sub_22B99153C(v4, v6, &v43);

          *(v35 + 4) = v37;
          _os_log_impl(&dword_22B92A000, v31, v32, "Business chat is not supported, do not import message %s", v35, 0xCu);
          sub_22B936C4C(v36);
          MEMORY[0x23189ADD0](v36, -1, -1);
          MEMORY[0x23189ADD0](v35, -1, -1);
        }

        else
        {
        }

        v29 = 1;
        goto LABEL_37;
      }

      v38 = qword_28141ADC8;
      *(v0 + 224) = qword_28141ADC8;
      if (v38)
      {
        v39 = qword_28141ADD0;
        *(v0 + 232) = qword_28141ADD0;
        *(v0 + 240) = *(v39 + 24);
        *(v0 + 248) = (v39 + 24) & 0xFFFFFFFFFFFFLL | 0xB149000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        sub_22BA102EC();
        v41 = sub_22BA1029C();
        *(v0 + 256) = v41;
        *(v0 + 264) = v40;

        return MEMORY[0x2822009F8](sub_22B9F2DF8, v41, v40);
      }

      v20 = *(v0 + 120);

      sub_22B952500();
      swift_allocError();
    }

    else
    {

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v22 = sub_22BA0FEFC();
      sub_22B936CA8(v22, qword_28141AD10);
      v23 = sub_22BA0FEDC();
      v24 = sub_22BA1044C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22B92A000, v23, v24, "Existing item with no guid, do not store", v25, 2u);
        MEMORY[0x23189ADD0](v25, -1, -1);
      }

      v20 = *(v0 + 120);

      sub_22B9F3DB4();
      swift_allocError();
      *v26 = 1;
    }
  }

  else
  {
    v20 = *(v0 + 120);

    sub_22B9F3DB4();
    swift_allocError();
    *v21 = 0;
  }

  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22B9F26BC()
{
  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9F2740(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = *(v4 + 184);

    v6 = sub_22B9F2A2C;
  }

  else
  {
    *(v4 + 393) = a1 & 1;
    v6 = sub_22B9F288C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9F288C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 88);
  v3 = ~*(v0 + 393);
  sub_22B9EFA08(v1, *(v0 + 120));
  [v1 setCloudKitSyncState_];
  if (*(v2 + 56))
  {
    v4 = sub_22BA0FFCC();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 184);
  v6 = *(v0 + 88);
  [*(v0 + 192) setCloudKitRecordID_];

  if (*(v6 + 40))
  {
    v7 = sub_22BA0FFCC();
  }

  else
  {
    v7 = 0;
  }

  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  [v8 setCloudKitRecordChangeTag_];

  [v8 setCloudKitServerChangeTokenBlob_];
  v10 = sub_22BA0FFCC();
  [v8 setCloudKitChatID_];

  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_22B9F2AB4;
  v12 = *(v0 + 192);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);

  return sub_22B99FA48(v12, v12, v13, v14);
}

uint64_t sub_22B9F2A2C()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9F2AB4()
{

  return MEMORY[0x2822009F8](sub_22B9F2BCC, 0, 0);
}

void sub_22B9F2BCC()
{
  v20 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = [v6 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = *(v0 + 184);
    v12 = *(v0 + 120);
    v13 = sub_22BA0FFFC();
    v15 = v14;

    v16 = sub_22B99153C(v13, v15, &v19);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_22B92A000, v4, v5, "Updated existing message item for %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 184);
  }

  v18 = *(v0 + 8);

  v18(1);
}

uint64_t sub_22B9F2DF8()
{
  *(v0 + 394) = (*(v0 + 240))(*(v0 + 120)) & 1;

  return MEMORY[0x2822009F8](sub_22B9F2E74, 0, 0);
}

uint64_t sub_22B9F2E74()
{
  v20 = v0;
  if (*(v0 + 394) == 1)
  {
    v1 = qword_28141ADC8;
    *(v0 + 272) = qword_28141ADC8;

    if (v1)
    {
      v2 = qword_28141ADD0;
      *(v0 + 280) = qword_28141ADD0;
      *(v0 + 288) = *(v2 + 40);
      *(v0 + 296) = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x81C6000000000000;
      v3 = *(v0 + 256);
      v4 = *(v0 + 264);

      return MEMORY[0x2822009F8](sub_22B9F3144, v3, v4);
    }

    v16 = *(v0 + 120);

    sub_22B952500();
    swift_allocError();
    swift_willThrow();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD10);

    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 176);
    if (v8)
    {
      v10 = *(v0 + 168);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_22B99153C(v10, v9, &v19);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_22B92A000, v6, v7, "Should not store message record for %s, account or alias mismatch", v11, 0xCu);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    else
    {
    }

    v14 = *(v0 + 120);
    sub_22B9F3E08();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B9F3144()
{
  *(v0 + 395) = (*(v0 + 288))(*(v0 + 120), *(v0 + 144), *(v0 + 136)) & 1;

  return MEMORY[0x2822009F8](sub_22B9F31C4, 0, 0);
}

uint64_t sub_22B9F31C4()
{
  v34 = v0;
  v1 = *(v0 + 395);

  if (v1)
  {
    v2 = *(v0 + 120);

LABEL_9:

    v15 = *(v0 + 8);

    return v15(1);
  }

  if (sub_22B9F02F8(*(v0 + 120)))
  {

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 120);
    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD10);
    v5 = v3;
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1046C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 120);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&dword_22B92A000, v6, v7, "Message item is a candidate for deletion since it has no parent chat and has an error: %@", v9, 0xCu);
      sub_22B95DEF0(v10);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }

    v12 = *(v0 + 120);

    v13 = [v12 guid];
    v14 = [v12 cloudKitRecordID];
    IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit();

    goto LABEL_9;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  *(v0 + 304) = v17;
  if (v17)
  {
    v18 = v17;
    v19 = *(v0 + 120);
    [v18 setFlags_];
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_22B9F369C;

    return sub_22B9A14A8(v18);
  }

  else
  {

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v21 = sub_22BA0FEFC();
    sub_22B936CA8(v21, qword_28141AD10);

    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1044C();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 176);
    if (v24)
    {
      v26 = *(v0 + 168);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      v29 = sub_22B99153C(v26, v25, &v33);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_22B92A000, v22, v23, "Failed to generate IMMessageItem %s", v27, 0xCu);
      sub_22B936C4C(v28);
      MEMORY[0x23189ADD0](v28, -1, -1);
      MEMORY[0x23189ADD0](v27, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 120);
    sub_22B9F3E08();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22B9F369C()
{

  return MEMORY[0x2822009F8](sub_22B9F3798, 0, 0);
}

uint64_t sub_22B9F3798()
{
  v22 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD10);

  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1042C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_22B99153C(v5, v4, &v21);
    _os_log_impl(&dword_22B92A000, v2, v3, "Created message item for %s", v6, 0xCu);
    sub_22B936C4C(v7);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  v8 = v0[38];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[15];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  v0[6] = sub_22B9F3E5C;
  v0[7] = v12;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B9F0448;
  v0[5] = &unk_283F57E78;
  v13 = _Block_copy(v0 + 2);

  [v8 enumerateAttachmentGUIDsWithBlock_];
  _Block_release(v13);

  v14 = qword_28141ADC8;
  v0[40] = qword_28141ADC8;
  if (v14)
  {
    v15 = qword_28141ADD0;
    v0[41] = qword_28141ADD0;
    v0[42] = *(v15 + 72);
    v0[43] = (v15 + 72) & 0xFFFFFFFFFFFFLL | 0x91C7000000000000;
    v16 = v0[32];
    v17 = v0[33];

    return MEMORY[0x2822009F8](sub_22B9F3A8C, v16, v17);
  }

  else
  {
    v18 = v0[15];

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_22B9F3A8C()
{
  (*(v0 + 336))(*(v0 + 120), *(v0 + 144), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_22B9F3B04, 0, 0);
}

uint64_t sub_22B9F3B04()
{
  v1 = qword_28141ADC8;
  v0[44] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[45] = qword_28141ADD0;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v4 = sub_22B990A58(v0[18], v0[17]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
    }

    else
    {
      v6 = -1;
    }

    v0[46] = v6;
    swift_endAccess();
    v0[47] = *(v2 + 80);
    v0[48] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
    v7 = v0[32];
    v8 = v0[33];

    return MEMORY[0x2822009F8](sub_22B9F3CA8, v7, v8);
  }

  else
  {
    v9 = v0[15];

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22B9F3CA8()
{
  (*(v0 + 376))(*(v0 + 120), *(v0 + 144), *(v0 + 136), *(v0 + 368));

  return MEMORY[0x2822009F8](sub_22B9F3D30, 0, 0);
}

uint64_t sub_22B9F3D30()
{

  v1 = *(v0 + 8);

  return v1(1);
}

unint64_t sub_22B9F3DB4()
{
  result = qword_27D8D5B58;
  if (!qword_27D8D5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B58);
  }

  return result;
}

unint64_t sub_22B9F3E08()
{
  result = qword_27D8D5B60;
  if (!qword_27D8D5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B60);
  }

  return result;
}

uint64_t sub_22B9F3E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22B9F3E7C()
{
  result = qword_27D8D5B68;
  if (!qword_27D8D5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B68);
  }

  return result;
}

uint64_t sub_22B9F3ED0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22BA10C6C() & 1;
  }
}

unint64_t sub_22B9F3F3C()
{
  result = qword_27D8D5B70;
  if (!qword_27D8D5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B70);
  }

  return result;
}

void sub_22B9F3F90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v51 = a6;
  v57 = a5;
  v60 = a4;
  v61 = a2;
  v55 = a3;
  v7 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v8 = *(v7 - 8);
  v56 = *(v8 + 64);
  v9 = v56;
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = *(v8 + 16);
  v59 = v8 + 16;
  v54 = a1;
  v12(&v50 - v10, a1, v7);
  v13 = *(v8 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  v16 = *(v8 + 32);
  v53 = v14;
  v16(v15 + v14, v11, v7);
  v58 = v8 + 32;
  v52 = v16;
  sub_22BA1067C();
  sub_22BA1068C();
  v12(v11, a1, v7);
  v17 = (v14 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v16(v18 + v14, v11, v7);
  v19 = (v18 + v17);
  v20 = v17;
  v21 = v55;
  v22 = v60;
  *v19 = v55;
  v19[1] = v22;
  v67 = sub_22B9F4AB8;
  v68 = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9F4B8C;
  v66 = &unk_283F57F80;
  v23 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v61 setRecordZoneChangeTokensUpdatedBlock_];
  _Block_release(v23);
  v24 = v54;
  v12(v11, v54, v7);
  v25 = v20;
  v26 = swift_allocObject();
  v27 = v52;
  v52(v26 + v53, v11, v7);
  v28 = (v26 + v25);
  v29 = v60;
  *v28 = v21;
  v28[1] = v29;
  swift_unknownObjectRetain();
  v30 = v61;
  sub_22BA1065C();
  v12(v11, v24, v7);
  v31 = swift_allocObject();
  *(v31 + 16) = v21;
  *(v31 + 24) = v29;
  v27(v31 + ((v13 + 32) & ~v13), v11, v7);
  v32 = v21;
  swift_unknownObjectRetain();
  sub_22BA1064C();
  if ((*v57 & 1) == 0)
  {
    *v57 = 1;
    v33 = *(v21 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v34 = *(v21 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
    sub_22B9358B4((v21 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase), v33);
    (*(v34 + 8))(v30, v33, v34);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v35 = sub_22BA0FEFC();
    sub_22B936CA8(v35, qword_28141AD40);
    sub_22B935B38(v51, aBlock);
    swift_unknownObjectRetain();
    v36 = v30;
    v37 = sub_22BA0FEDC();
    v38 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v64 = v41;
      *v39 = 136315650;
      v42 = sub_22B9358B4(aBlock, v66);
      v43 = *v42;
      v44 = v42[1];

      sub_22B936C4C(aBlock);
      v45 = sub_22B99153C(v43, v44, &v64);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      v62 = 0x2E636E7973;
      v63 = 0xE500000000000000;
      sub_22B9358B4((v32 + 16), *(v32 + 40));
      v46 = sub_22B9B580C();
      MEMORY[0x231899730](v46);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v47 = sub_22BA10C1C();
      MEMORY[0x231899730](v47);

      v48 = sub_22B99153C(v62, v63, &v64);

      *(v39 + 14) = v48;
      *(v39 + 22) = 2112;
      *(v39 + 24) = v36;
      *v40 = v36;
      v49 = v36;
      _os_log_impl(&dword_22B92A000, v37, v38, "Added fetch operation for %s (sync: %s): %@", v39, 0x20u);
      sub_22B95DEF0(v40);
      MEMORY[0x23189ADD0](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v41, -1, -1);
      MEMORY[0x23189ADD0](v39, -1, -1);
    }

    else
    {

      sub_22B936C4C(aBlock);
    }
  }
}

uint64_t sub_22B9F45F4(void *a1, void *a2, char a3)
{
  v6 = sub_22B9349C8(&qword_27D8D5B80, qword_22BA1A760);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v10 = (v9 + 8);
  v13[1] = a1;
  v13[2] = a2;
  if (a3)
  {
    v14 = -127;
  }

  else
  {
    v14 = 0x80;
  }

  sub_22B930C44(a2);
  v11 = a1;
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  sub_22BA1033C();
  return (*v10)(v8, v6);
}

uint64_t sub_22B9F4738(void *a1, void *a2, char a3)
{
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);

  return sub_22B9F45F4(a1, a2, a3 & 1);
}

void sub_22B9F47CC(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v6 = sub_22BA0FEFC();
  sub_22B936CA8(v6, qword_28141AD40);

  v7 = a1;
  oslog = sub_22BA0FEDC();
  v8 = sub_22BA1046C();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_22B99153C(a2, a3, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&dword_22B92A000, oslog, v8, "Deleted %s record reported, id %@", v9, 0x16u);
    sub_22B95DEF0(v10);
    MEMORY[0x23189ADD0](v10, -1, -1);
    sub_22B936C4C(v11);
    MEMORY[0x23189ADD0](v11, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }
}

uint64_t sub_22B9F497C(uint64_t a1, void *a2)
{
  v3 = sub_22B9349C8(&qword_27D8D5B80, qword_22BA1A760);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[1] = a2;
  v9[2] = 0;
  v10 = 0;
  v7 = a2;
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  sub_22BA1033C();
  (*(v4 + 8))(v6, v3);
  return sub_22B97EAEC();
}

uint64_t sub_22B9F4AB8(uint64_t a1, void *a2)
{
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);

  return sub_22B9F497C(a1, a2);
}

uint64_t sub_22B9F4B8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  if (a4)
  {

    v8 = a2;
    v9 = a3;
    v10 = v4;
    v4 = sub_22BA0FCAC();
    v12 = v11;
  }

  else
  {

    v13 = a2;
    v14 = a3;
    v12 = 0xF000000000000000;
  }

  v7(a2, a3, v4, v12);

  sub_22B9359A8(v4, v12);
}

uint64_t sub_22B9F4C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9F4C6C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  v9 = sub_22B9349C8(&qword_27D8D5B80, qword_22BA1A760);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  if ((a5 & 0x100) != 0)
  {
    v20 = a2;
    v18 = a2;
    sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
    return sub_22BA1034C();
  }

  else
  {
    v13 = a5;
    v14 = a2;
    sub_22B936A3C(a3, a4);
    sub_22B9359A8(a3, a4);
    v20 = a2;
    v21 = 0;
    v22 = 0;
    v15 = v14;
    sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
    sub_22BA1033C();
    v16 = *(v10 + 8);
    v16(v12, v9);
    sub_22B97EAEC();
    v20 = v13 & 1;
    v21 = 0;
    v22 = 64;
    sub_22BA1033C();

    return (v16)(v12, v9);
  }
}

uint64_t sub_22B9F4E58()
{
  v1 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B9F4F00(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);

  return sub_22B9F4C6C(a1, a2, a3, a4, a5 & 0x1FF);
}

uint64_t sub_22B9F4FE4(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a1;
  }

  else
  {
    sub_22B9358B4((a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    if ((sub_22BA08808() & 1) != 0 || (sub_22B92DA70(1, 0) & 1) == 0)
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:1 userInfo:0];
      sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
      sub_22BA1034C();
    }
  }

  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  return sub_22BA1034C();
}

uint64_t sub_22B9F50D4(void *a1, char a2)
{
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v5 = *(v2 + 16);

  return sub_22B9F4FE4(a1, a2 & 1, v5);
}

uint64_t sub_22B9F519C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22BA103BC();
  if (!v19)
  {
    return sub_22BA1023C();
  }

  v41 = v19;
  v45 = sub_22BA10A0C();
  v32 = sub_22BA10A1C();
  sub_22BA109BC();
  result = sub_22BA103AC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22BA103FC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22BA109FC();
      result = sub_22BA103CC();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B9F55BC()
{
  v0 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_22BA1030C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  result = sub_22B988D1C(0, 0, v2, &unk_22BA1AA88, v4);
  qword_281416788 = result;
  return result;
}

uint64_t sub_22B9F56D0()
{
  if (qword_281414AD0 != -1)
  {
    swift_once();
  }

  v1 = qword_28141ACC8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 defaultManager];
  v0[5] = &type metadata for FileManagerProvider;
  v0[6] = &off_283F53B48;
  v0[2] = v4;
  type metadata accessor for SyncStore(0);
  v5 = swift_allocObject();
  sub_22B943D3C((v0 + 2), &type metadata for FileManagerProvider);
  v6 = qword_283F53B18;
  v7 = swift_task_alloc();
  v0[8] = v7;
  (*(v6 + 16))();
  v8 = *v7;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_22B9F58B0;

  return sub_22BA00764(v3, v8, v5);
}

uint64_t sub_22B9F58B0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 80) = a1;

  sub_22B936C4C((v2 + 16));

  return MEMORY[0x2822009F8](sub_22B9F59D8, 0, 0);
}

uint64_t sub_22B9F59F8()
{
  if (qword_281416780 != -1)
  {
    swift_once();
  }

  v0 = qword_281416788;
  sub_22B9349C8(&qword_27D8D5B98, &unk_22BA1AA70);
  v1 = swift_allocObject();

  result = swift_defaultActor_initialize();
  *(v1 + 112) = v0;
  *&xmmword_28141AEB0 = v1;
  *(&xmmword_28141AEB0 + 1) = &off_283F55E18;
  return result;
}

uint64_t sub_22B9F5A98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = sub_22BA0FB8C();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_22BA0FC4C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  sub_22B951A54(0, &qword_281414B88, 0x277CCAC38);
  if (sub_22B9620AC())
  {

    return sub_22BA0FBAC();
  }

  else
  {
    v20 = sub_22B9358B4(a1, a1[3]);
    (*(v14 + 56))(v12, 1, 1, v13);
    v21 = *v20;
    sub_22B9AE680(v12, v10);
    v22 = (*(v14 + 48))(v10, 1, v13);
    v36 = v14;
    if (v22 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_22BA0FBBC();
      (*(v14 + 8))(v10, v13);
    }

    v37 = v13;
    v38 = a2;
    v41 = 0;
    v24 = [v21 URLForDirectory:5 inDomain:1 appropriateForURL:v23 create:0 error:&v41];

    v25 = v41;
    if (v24)
    {
      v35 = v18;
      sub_22BA0FC0C();
      v26 = v25;

      sub_22B936BEC(v12, &qword_27D8D5210, qword_22BA16040);
      v41 = 5459283;
      v42 = 0xE300000000000000;
      v27 = *MEMORY[0x277CC91C0];
      v28 = v40;
      v29 = *(v40 + 104);
      v29(v6, v27, v4);
      sub_22B936ACC();
      v30 = v39;
      sub_22BA0FC3C();
      v31 = *(v28 + 8);
      v31(v6, v4);
      v41 = 1668184403;
      v42 = 0xE400000000000000;
      v29(v6, v27, v4);
      sub_22BA0FC3C();
      v31(v6, v4);
      v32 = v37;
      v33 = *(v36 + 8);
      v33(v30, v37);
      return (v33)(v35, v32);
    }

    else
    {
      v34 = v41;
      sub_22BA0FB6C();

      swift_willThrow();
      sub_22B936BEC(v12, &qword_27D8D5210, qword_22BA16040);
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B9F5F98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_22BA0FB8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BA0FC4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  sub_22B951A54(0, &qword_281414B88, 0x277CCAC38);
  if (sub_22B9620AC())
  {

    return sub_22BA0FBAC();
  }

  else
  {
    sub_22B9F5A98(a1, v13);
    v16[2] = 1668184435;
    v16[3] = 0xE400000000000000;
    (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
    sub_22B936ACC();
    sub_22BA0FC3C();
    (*(v4 + 8))(v6, v3);
    sub_22BA0FBEC();
    v15 = *(v8 + 8);
    v15(v11, v7);
    return (v15)(v13, v7);
  }
}

uint64_t sub_22B9F622C(void *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22BA0FC4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  sub_22B951A54(0, &qword_281414B88, 0x277CCAC38);
  result = sub_22B9620AC();
  if ((result & 1) == 0)
  {
    sub_22B9F5A98(a1, v9);
    v11 = *sub_22B9358B4(a1, a1[3]);
    LOBYTE(v38[0]) = 0;
    sub_22BA0FB7C();
    v12 = sub_22BA0FFCC();

    v13 = [v11 fileExistsAtPath:v12 isDirectory:v38];

    if (v13)
    {
      v14 = LOBYTE(v38[0]) == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 && (sub_22B964F88(v9, 1, v11), v1))
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v15 = sub_22BA0FEFC();
      sub_22B936CA8(v15, qword_28141AD40);
      (*(v4 + 16))(v7, v9, v3);
      v16 = v1;
      v17 = sub_22BA0FEDC();
      v18 = sub_22BA1046C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v34 = v19;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38[0] = v37;
        *v19 = 136315394;
        sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v35 = v17;
        v20 = sub_22BA10C1C();
        v22 = v21;
        v23 = *(v4 + 8);
        v33 = v18;
        v23(v7, v3);
        v24 = sub_22B99153C(v20, v22, v38);

        v25 = v34;
        *(v34 + 1) = v24;
        v26 = v23;
        *(v25 + 6) = 2112;
        v27 = v1;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v28;
        v30 = v35;
        v29 = v36;
        *v36 = v28;
        _os_log_impl(&dword_22B92A000, v30, v33, "Failed to create directory at %s %@", v25, 0x16u);
        sub_22B936BEC(v29, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v29, -1, -1);
        v31 = v37;
        sub_22B936C4C(v37);
        MEMORY[0x23189ADD0](v31, -1, -1);
        MEMORY[0x23189ADD0](v25, -1, -1);
      }

      else
      {

        v26 = *(v4 + 8);
        v26(v7, v3);
      }

      swift_willThrow();
      return (v26)(v9, v3);
    }

    else
    {
      return (*(v4 + 8))(v9, v3);
    }
  }

  return result;
}

uint64_t sub_22B9F6664(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - v7;
  (*(v6 + 16))(&aBlock[-1] - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = a2[17];
  sub_22B935B38((a2 + 18), v18);
  v12 = swift_allocObject();
  v12[2] = sub_22BA01D68;
  v12[3] = v10;
  sub_22B92DFEC(v18, (v12 + 4));
  v12[9] = v11;
  v12[10] = v4;
  aBlock[4] = sub_22BA01DD4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9F7408;
  aBlock[3] = &unk_283F58468;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  [v14 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v13);
}

uint64_t sub_22B9F68A4(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v63 = *MEMORY[0x277D85DE8];
  v12 = sub_22BA0FC4C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v59 = v14;
    v62 = a2;
    v17 = a2;
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    sub_22B951A54(0, &qword_281414A88, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
LABEL_23:

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v40 = sub_22BA0FEFC();
      sub_22B936CA8(v40, qword_28141AD40);
      v41 = a2;
      v42 = sub_22BA0FEDC();
      v43 = sub_22BA1044C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = a2;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_22B92A000, v42, v43, "Error: Failed to load CoreData persistent store, %@", v44, 0xCu);
        sub_22B936BEC(v45, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v45, -1, -1);
        MEMORY[0x23189ADD0](v44, -1, -1);
      }

      sub_22B975FD8(22, a2, 0xD00000000000001ALL, 0x800000022BA1FCF0);
      return a3();
    }

    v57[1] = a4;
    v58 = a3;
    v18 = v61;
    v19 = [v61 domain];
    v20 = sub_22BA0FFFC();
    v22 = v21;

    if (v20 == sub_22BA0FFFC() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_22BA10C6C();

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if ([v18 code] != 134110)
    {
LABEL_22:

      a3 = v58;
      goto LABEL_23;
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v33 = sub_22BA0FEFC();
    sub_22B936CA8(v33, qword_28141AD40);
    v34 = sub_22BA0FEDC();
    v35 = sub_22BA1044C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22B92A000, v34, v35, "Warning: Failed to migrate CoreData store; attempting to delete and re-create Sync store", v36, 2u);
      MEMORY[0x23189ADD0](v36, -1, -1);
    }

    sub_22B9F5A98(a5, v16);
    v37 = *sub_22B9358B4(a5, a5[3]);
    LOBYTE(aBlock[0]) = 0;
    sub_22BA0FB7C();
    v38 = sub_22BA0FFCC();

    v39 = [v37 fileExistsAtPath:v38 isDirectory:aBlock];

    if (v39)
    {
      sub_22B964DE0(v16, v37);
    }

    else
    {
      v49 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:7 userInfo:0];
      sub_22B975FD8(18, v49, 0xD00000000000005ALL, 0x800000022BA1FD10);
    }

    sub_22B9F622C(a5);
    aBlock[4] = sub_22B9F7134;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9F7408;
    aBlock[3] = &unk_283F58490;
    v50 = _Block_copy(aBlock);
    [a6 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v50);
    v51 = v18;
    v52 = sub_22BA0FEDC();
    v53 = sub_22BA1046C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_22B92A000, v52, v53, "Cleared sync store due to failed migration%@", v54, 0xCu);
      sub_22B936BEC(v55, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v55, -1, -1);
      MEMORY[0x23189ADD0](v54, -1, -1);
    }

    else
    {
      v56 = v52;
      v52 = v51;
    }

    (*(v13 + 8))(v16, v59);
    a3 = v58;
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v26 = sub_22BA0FEFC();
    sub_22B936CA8(v26, qword_28141AD40);
    v27 = a1;
    v28 = sub_22BA0FEDC();
    v29 = sub_22BA1046C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_22B92A000, v28, v29, "Loaded CoreData persistent store with description: %@", v30, 0xCu);
      sub_22B936BEC(v31, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v31, -1, -1);
      MEMORY[0x23189ADD0](v30, -1, -1);
    }
  }

  return a3();
}

void sub_22B9F7134(void *a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    v5 = a2;
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22B92A000, v6, v7, "Error: Failed to load CoreData persistent store, %@", v8, 0xCu);
      sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v9, -1, -1);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    sub_22B975FD8(20, a2, 0xD000000000000035, 0x800000022BA1FDB0);
    v12 = a2;
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD40);
    v15 = a1;
    oslog = sub_22BA0FEDC();
    v16 = sub_22BA1046C();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_22B92A000, oslog, v16, "Re-created CoreData persistent store with description: %@", v17, 0xCu);
      sub_22B936BEC(v18, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v18, -1, -1);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    v12 = oslog;
  }
}

void sub_22B9F7408(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_22B9F7494()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9F7524;

  return sub_22B9F7900();
}

uint64_t sub_22B9F7524()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22B9F7634, v1, 0);
}

uint64_t sub_22B9F7634()
{
  v1 = v0[2];
  v2 = sub_22BA01B54(&qword_281416770, type metadata accessor for SyncStore, &unk_22BA1A9A8);
  v3 = swift_allocObject();
  v0[4] = v3;
  swift_weakInit();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22B9F7774;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, v1, v2, 0xD000000000000013, 0x800000022BA1FC90, sub_22BA01B9C, v3, v5);
}

uint64_t sub_22B9F7774()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_22B9F789C;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_22B961A04;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9F789C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9F7920()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v1 = qword_28141ACF0;
  v2 = *MEMORY[0x277D199F8];
  v0[3] = qword_28141ACF0;
  v0[4] = v2;
  if ([v1 BOOLForKey_])
  {
    if (qword_281416778 != -1)
    {
      swift_once();
    }

    v3 = *(&xmmword_28141AEB0 + 1);
    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_22B9F7B04;

    return v8(ObjectType, v3);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B9F7B04(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22B9F7C1C, v2, 0);
}

uint64_t sub_22B9F7C1C()
{
  if (*(v0 + 48) == 1)
  {
    [*(v0 + 24) removeObjectForKey_];
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B92A000, v2, v3, "Attempted to clear sync store success %{BOOL}d", v5, 8u);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_22B9F7D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22BA01888();
    v17 = swift_allocError();
    *v18 = 0;
    aBlock[0] = v17;
    sub_22BA102AC();
    return;
  }

  v8 = Strong;
  v9 = [*(Strong + 136) persistentStoreCoordinator];
  v10 = [v9 persistentStores];

  sub_22B951A54(0, &qword_281414B38, 0x277CBE4D0);
  v11 = sub_22BA101FC();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    v19 = *(v8 + 136);
    (*(v4 + 16))(v6, a1, v3);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    (*(v4 + 32))(v21 + v20, v6, v3);
    aBlock[4] = sub_22BA01BA4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9F7408;
    aBlock[3] = &unk_283F583C8;
    v22 = _Block_copy(aBlock);
    v23 = v19;

    [v23 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v22);

    return;
  }

  if (!sub_22BA1080C())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x231899FA0](0, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v12)
    {
      __break(1u);
      return;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v13 = sub_22BA0FEFC();
  sub_22B936CA8(v13, qword_28141AD40);
  v14 = sub_22BA0FEDC();
  v15 = sub_22BA1046C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22B92A000, v14, v15, "We have an existing store continuing sync.", v16, 2u);
    MEMORY[0x23189ADD0](v16, -1, -1);
  }

  sub_22BA102BC();
}

uint64_t sub_22B9F8124(void *a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    v6 = a2;
    v7 = a1;
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2112;
      v12 = a2;
      v13 = v7;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      _os_log_impl(&dword_22B92A000, v8, v9, "Failed to load store %@ with error: %@", v10, 0x16u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102AC();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD40);
    v17 = a1;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1046C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_22B92A000, v18, v19, "Reloaded persistent store with description: %@", v20, 0xCu);
      sub_22B936BEC(v21, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v21, -1, -1);
      MEMORY[0x23189ADD0](v20, -1, -1);
    }

    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102BC();
  }
}

uint64_t sub_22B9F8420(uint64_t a1, uint64_t a2, void *a3)
{
  v129 = a3;
  v133 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
  v127 = *(v4 - 8);
  v125 = *(v127 + 64);
  MEMORY[0x28223BE20](v4);
  v126 = &v116 - v5;
  v6 = sub_22BA104CC();
  v123 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BA0FC4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v128 = &v116 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v131 = &v116 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v116 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v116 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v116 - v23;
  v132 = swift_allocObject();
  *(v132 + 16) = 0;
  v130 = a2;
  v134 = *(a2 + 136);
  v25 = [v134 persistentStoreCoordinator];
  v26 = [v25 persistentStores];

  sub_22B951A54(0, &qword_281414B38, 0x277CBE4D0);
  v27 = sub_22BA101FC();

  if (!(v27 >> 62))
  {
    v28 = v134;
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_20:

    v61 = v130;
    v62 = v131;
    v63 = (v130 + 144);
    sub_22B9F5A98((v130 + 144), v131);
    goto LABEL_21;
  }

  v65 = sub_22BA1080C();
  v28 = v134;
  if (!v65)
  {
    goto LABEL_20;
  }

LABEL_3:
  v124 = v9;
  v121 = v10;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x231899FA0](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_48:
      swift_once();
LABEL_8:
      v34 = sub_22BA0FEFC();
      v119 = sub_22B936CA8(v34, qword_28141AD40);
      v35 = sub_22BA0FEDC();
      v36 = sub_22BA1046C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_22B92A000, v35, v36, "Removed store from store coordinator", v37, 2u);
        MEMORY[0x23189ADD0](v37, -1, -1);
      }

      v38 = [v10 URL];
      v4 = v120;
      if (v38)
      {
        v39 = v38;
        sub_22BA0FC0C();

        v40 = v121;
        v121[4](v24, v22, v124);
        v41 = [v134 persistentStoreCoordinator];
        sub_22BA104BC();
        sub_22BA1063C();
        (v123[1])(v8, v6);

        v44 = v40;
        v45 = v40[2];
        v46 = v124;
        v45(v19, v24, v124);
        v47 = sub_22BA0FEDC();
        v48 = sub_22BA1046C();
        if (!os_log_type_enabled(v47, v48))
        {

          v64 = v44[1];
          (v64)(v19, v46);
          (v64)(v24, v46);
          v4 = v120;
          v10 = v44;
          goto LABEL_17;
        }

        v50 = swift_slowAlloc();
        v118 = v50;
        v123 = swift_slowAlloc();
        aBlock[0] = v123;
        *v50 = 136315138;
        sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v117 = v48;
        v51 = sub_22BA10C1C();
        v53 = v52;
        v116 = v47;
        v119 = v44[1];
        (v119)(v19, v46);
        v54 = sub_22B99153C(v51, v53, aBlock);
        v55 = v120;

        v56 = v118;
        *(v118 + 1) = v54;
        v57 = v116;
        v58 = v56;
        _os_log_impl(&dword_22B92A000, v116, v117, "Deleted store at: %s", v56, 0xCu);
        v59 = v123;
        sub_22B936C4C(v123);
        MEMORY[0x23189ADD0](v59, -1, -1);
        MEMORY[0x23189ADD0](v58, -1, -1);

        v60 = v46;
        v4 = v55;
        (v119)(v24, v60);
      }

      else
      {
      }

      v10 = v121;
LABEL_17:
      v61 = v130;
      v62 = v131;
      v63 = (v130 + 144);
      sub_22B9F5A98((v130 + 144), v131);

      v9 = v124;
LABEL_21:
      v66 = *sub_22B9358B4(v63, *(v61 + 168));
      LOBYTE(aBlock[0]) = 0;
      sub_22BA0FB7C();
      v67 = sub_22BA0FFCC();

      v68 = [v66 fileExistsAtPath:v67 isDirectory:aBlock];

      if (v68)
      {
        sub_22B964DE0(v62, v66);
        v129 = v63;
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v84 = sub_22BA0FEFC();
        sub_22B936CA8(v84, qword_28141AD40);
        v85 = v122;
        (v10[2])(v122, v62, v9);
        v86 = sub_22BA0FEDC();
        v87 = sub_22BA1046C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = v85;
          v89 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          aBlock[0] = v123;
          *v89 = 136315138;
          sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v90 = sub_22BA10C1C();
          v91 = v4;
          v93 = v92;
          v128 = v10[1];
          (v128)(v88, v9);
          v94 = sub_22B99153C(v90, v93, aBlock);
          v4 = v91;
          v61 = v130;

          *(v89 + 4) = v94;
          _os_log_impl(&dword_22B92A000, v86, v87, "Deleted sync directory at %s", v89, 0xCu);
          v95 = v123;
          sub_22B936C4C(v123);
          v62 = v131;
          MEMORY[0x23189ADD0](v95, -1, -1);
          MEMORY[0x23189ADD0](v89, -1, -1);
        }

        else
        {

          v128 = v10[1];
          (v128)(v85, v9);
        }

        v81 = v129;
        v82 = &off_27871A000;
      }

      else
      {
        v129 = v63;
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v69 = sub_22BA0FEFC();
        sub_22B936CA8(v69, qword_28141AD40);
        v70 = v128;
        (v10[2])(v128, v62, v9);
        v71 = sub_22BA0FEDC();
        v72 = sub_22BA1046C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = v70;
          v74 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          aBlock[0] = v123;
          *v74 = 136315138;
          sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v75 = sub_22BA10C1C();
          v76 = v4;
          v78 = v77;
          v128 = v10[1];
          (v128)(v73, v9);
          v79 = sub_22B99153C(v75, v78, aBlock);
          v4 = v76;
          v61 = v130;

          *(v74 + 4) = v79;
          _os_log_impl(&dword_22B92A000, v71, v72, "Failed to delete sync directory at %s", v74, 0xCu);
          v80 = v123;
          sub_22B936C4C(v123);
          v62 = v131;
          MEMORY[0x23189ADD0](v80, -1, -1);
          MEMORY[0x23189ADD0](v74, -1, -1);
        }

        else
        {

          v128 = v10[1];
          (v128)(v70, v9);
        }

        v81 = v129;
        v82 = &off_27871A000;
        v83 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:7 userInfo:0];
        sub_22B975FD8(18, v83, 0xD000000000000052, 0x800000022BA1FB40);
      }

      v96 = *sub_22B9358B4(v81, *(v61 + 168));
      LOBYTE(aBlock[0]) = 0;
      sub_22BA0FB7C();
      v97 = sub_22BA0FFCC();

      v98 = [v96 v82[421]];

      if (!v98 || !LOBYTE(aBlock[0]))
      {
        sub_22B964F88(v62, 1, v96);
      }

      v110 = v126;
      v109 = v127;
      (*(v127 + 16))(v126, v133, v4);
      v111 = (*(v109 + 80) + 16) & ~*(v109 + 80);
      v112 = (v125 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v113 = swift_allocObject();
      (*(v109 + 32))(&v113[v111], v110, v4);
      *&v113[v112] = v132;
      aBlock[4] = sub_22BA01A84;
      aBlock[5] = v113;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22B9F7408;
      aBlock[3] = &unk_283F58378;
      v114 = _Block_copy(aBlock);

      [v134 loadPersistentStoresWithCompletionHandler_];
      _Block_release(v114);
      (v128)(v62, v9);
    }

    v29 = *(v27 + 32);
  }

  v10 = v29;

  v30 = [v28 persistentStoreCoordinator];
  aBlock[0] = 0;
  v31 = [v30 removePersistentStore:v10 error:aBlock];

  if (v31)
  {
    v120 = v4;
    v32 = qword_281414D30;
    v33 = aBlock[0];
    if (v32 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

  v42 = aBlock[0];
  v43 = sub_22BA0FB6C();

  swift_willThrow();
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v99 = sub_22BA0FEFC();
  sub_22B936CA8(v99, qword_28141AD40);

  v100 = v43;
  v101 = sub_22BA0FEDC();
  v102 = sub_22BA1044C();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    aBlock[0] = v105;
    *v103 = 136315394;
    v106 = sub_22B99153C(0xD000000000000028, 0x800000022BA1FAD0, aBlock);

    *(v103 + 4) = v106;
    *(v103 + 12) = 2112;
    v107 = v43;
    v108 = _swift_stdlib_bridgeErrorToNSError();
    *(v103 + 14) = v108;
    *v104 = v108;
    _os_log_impl(&dword_22B92A000, v101, v102, "Failed to clear sync store while %s: %@, Sync store db will not be available", v103, 0x16u);
    sub_22B936BEC(v104, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v104, -1, -1);
    sub_22B936C4C(v105);
    MEMORY[0x23189ADD0](v105, -1, -1);
    MEMORY[0x23189ADD0](v103, -1, -1);
  }

  else
  {
  }

  sub_22B975FD8(21, v43, 0xD00000000000001BLL, 0x800000022BA1FB00);
  LOBYTE(aBlock[0]) = *(v132 + 16);
  sub_22BA102BC();
}

void sub_22B9F9518(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    v8 = a2;
    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22B92A000, v9, v10, "Error: Failed to re-create CoreData persistent store after clearing, %@", v11, 0xCu);
      sub_22B936BEC(v12, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    sub_22B975FD8(20, a2, 0xD00000000000002DLL, 0x800000022BA1FC30);
    swift_beginAccess();
    sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
    sub_22BA102BC();
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD40);
    v17 = a1;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1046C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_22B92A000, v18, v19, "Loaded CoreData persistent store with description: %@", v20, 0xCu);
      sub_22B936BEC(v21, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v21, -1, -1);
      MEMORY[0x23189ADD0](v20, -1, -1);
    }

    swift_beginAccess();
    sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
    sub_22BA102BC();
  }
}

uint64_t sub_22B9F9868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_22BA1055C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9F992C, v3, 0);
}

uint64_t sub_22B9F992C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  v12 = *(v0 + 40);
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v12;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  sub_22BA1028C();
  sub_22B948760(&qword_27D8D55E0, &unk_22BA135D0);
  v5 = sub_22BA10D7C();
  v6 = *MEMORY[0x277CBE110];
  v7 = sub_22BA1055C();
  (*(*(v7 - 8) + 104))(v1, v6, v7);
  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_22B9F9AF0;
  v10 = *(v0 + 80);

  return MEMORY[0x28210EE50](v0 + 16, v10, sub_22BA01A5C, v4, v5);
}

uint64_t sub_22B9F9AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_22B9F9D10;
  }

  else
  {
    v7 = sub_22B9F9C9C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B9F9C9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_22B9F9D10()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B9F9D74(uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 128);
    v8 = sub_22BA1056C();
    if (v4)
    {

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v9 = sub_22BA0FEFC();
      sub_22B936CA8(v9, qword_28141AD40);
      v10 = v4;
      v11 = sub_22BA0FEDC();
      v12 = sub_22BA1044C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v4;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_22B92A000, v11, v12, "Error fetching objects from sync database: %@", v13, 0xCu);
        sub_22B936BEC(v14, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v14, -1, -1);
        MEMORY[0x23189ADD0](v13, -1, -1);
      }

      *a4 = v4;
      *(a4 + 8) = 1;
    }

    else
    {
      v18 = v8;

      *a4 = v18;
      *(a4 + 8) = 0;
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9F9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22BA1055C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FA060, v4, 0);
}

uint64_t sub_22B9FA060()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_allocObject();
  v13 = *(v0 + 40);
  swift_weakInit();
  v5 = swift_allocObject();
  *(v0 + 88) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v13;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  sub_22B951A54(255, &qword_281414B40, 0x277CBE448);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v6 = sub_22BA1028C();
  v7 = *MEMORY[0x277CBE110];
  v8 = sub_22BA1055C();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  v9 = v3;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_22B9FA250;
  v11 = *(v0 + 80);

  return MEMORY[0x28210EE50](v0 + 16, v11, sub_22BA01A14, v5, v6);
}

uint64_t sub_22B9FA250()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_22B9F9D10;
  }

  else
  {
    v7 = sub_22B9FA3FC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B9FA3FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_22B9FA468(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 128);
    v13 = sub_22BA1056C();
    if (v6)
    {
    }

    else
    {
      v15 = v13;

      v23 = &v23;
      v24 = v15;
      MEMORY[0x28223BE20](v16);
      v22[2] = a3;
      v22[3] = a4;
      v22[4] = a5;
      v17 = sub_22BA1028C();
      sub_22B951A54(255, &qword_281414B40, 0x277CBE448);
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v21 = sub_22B9F519C(sub_22BA01A38, v22, v17, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

      *a6 = v21;
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9FA67C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  sub_22B951A54(255, &qword_281414B40, 0x277CBE448);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  *a4 = [v7 objectID];
  return (*(a3 + 16))(a2, a3);
}

uint64_t sub_22B9FA764(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22BA1055C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FA824, v1, 0);
}

uint64_t sub_22B9FA824()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D837D0];
  *(v5 + 16) = xmmword_22BA13CB0;
  *(v5 + 56) = v6;
  *(v5 + 32) = 1684632935;
  *(v5 + 40) = 0xE400000000000000;
  v7 = sub_22BA101DC();

  [v4 setPropertiesToFetch_];

  [v4 setReturnsObjectsAsFaults_];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v0[8] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v10 = v4;
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
  *v11 = v0;
  v11[1] = sub_22B9FAA1C;
  v13 = v0[7];

  return MEMORY[0x28210EE50](v0 + 2, v13, sub_22BA01960, v9, v12);
}

uint64_t sub_22B9FAA1C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_22B9FAC34;
  }

  else
  {
    v7 = sub_22B9FABC8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B9FABC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B9FAC34()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B9FAC98(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22BA01888();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    return;
  }

  v6 = *(Strong + 128);
  type metadata accessor for RemoteRecord();
  v7 = v6;
  v8 = sub_22BA1056C();
  if (v3)
  {

    return;
  }

  v10 = v8;

  v25 = a3;
  if (v10 >> 62)
  {
LABEL_25:
    v11 = sub_22BA1080C();
    if (v11)
    {
LABEL_7:
      v12 = 0;
      v26 = MEMORY[0x277D84F90];
      do
      {
        v13 = v12;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x231899FA0](v13, v10);
          }

          else
          {
            if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v14 = *(v10 + 8 * v13 + 32);
          }

          v15 = v14;
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v16 = [v14 guid];
          if (v16)
          {
            break;
          }

          ++v13;
          if (v12 == v11)
          {
            goto LABEL_27;
          }
        }

        v17 = v16;
        v18 = sub_22BA0FFFC();
        v24 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_22B97FB74(0, *(v26 + 2) + 1, 1, v26);
        }

        v21 = *(v26 + 2);
        v20 = *(v26 + 3);
        if (v21 >= v20 >> 1)
        {
          v26 = sub_22B97FB74((v20 > 1), v21 + 1, 1, v26);
        }

        *(v26 + 2) = v21 + 1;
        v22 = &v26[16 * v21];
        *(v22 + 4) = v18;
        *(v22 + 5) = v24;
      }

      while (v12 != v11);
      goto LABEL_27;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v26 = MEMORY[0x277D84F90];
LABEL_27:

  v23 = sub_22BA0197C(v26);

  *v25 = v23;
}

uint64_t sub_22B9FAF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22BA1055C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FAFEC, v5, 0);
}

uint64_t sub_22B9FAFEC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = swift_allocObject();
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  swift_weakInit();
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v12;
  *(v6 + 32) = v5;
  *(v6 + 40) = v13;
  *(v6 + 56) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v7 = v13;

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_22B9FB168;
  v9 = *(v0 + 80);
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v8, v9, sub_22BA018DC, v6, v10);
}

uint64_t sub_22B9FB168()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_22B9FB4BC;
  }

  else
  {
    v7 = sub_22B9FB314;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B9FB314()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22B9FB3A4;

  return sub_22B9FB6F4();
}

uint64_t sub_22B9FB3A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B9FB4BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B9FB520(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 128);
    v9 = sub_22BA1056C();
    if (v5)
    {
    }

    else
    {
      v11 = v9;

      if (sub_22BA1027C())
      {
        v12 = 0;
        while (1)
        {
          v13 = sub_22BA1025C();
          sub_22BA1021C();
          v14 = (v13 & 1) != 0 ? *(v11 + 8 * v12 + 32) : sub_22BA1092C();
          v15 = v14;
          v16 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v17 = *(v7 + 128);
          a3();

          ++v12;
          if (v16 == sub_22BA1027C())
          {
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_13:
      }
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9FB6F4()
{
  v1[2] = v0;
  v2 = sub_22BA1055C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FB7B4, v0, 0);
}

uint64_t sub_22B9FB7B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 128);
  v0[6] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE108], v3);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  v4;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22B9FB8D4;
  v7 = v0[5];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v6, v7, sub_22BA01E60, v5, v8);
}

uint64_t sub_22B9FB8D4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_22BA01E5C;
  }

  else
  {
    v7 = sub_22BA01E4C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B9FBA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22BA1055C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FBB48, v5, 0);
}

uint64_t sub_22B9FBB48()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = swift_allocObject();
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);
  swift_weakInit();
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v11;
  *(v6 + 32) = v5;
  *(v6 + 40) = v12;
  *(v6 + 56) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_22B9FBCC4;
  v8 = *(v0 + 80);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v7, v8, sub_22BA01908, v6, v9);
}

uint64_t sub_22B9FBCC4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_22BA01E78;
  }

  else
  {
    v7 = sub_22B9FBE70;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B9FBE70()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22BA01E7C;

  return sub_22B9FB6F4();
}

void sub_22B9FBF00(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (sub_22BA1027C())
    {
      v9 = 0;
      while (1)
      {
        v10 = sub_22BA1025C();
        sub_22BA1021C();
        v11 = (v10 & 1) != 0 ? *(a2 + 8 * v9 + 32) : sub_22BA1092C();
        v12 = v11;
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v14 = *(v8 + 128);
        a3();
        if (v5)
        {

          return;
        }

        ++v9;
        if (v13 == sub_22BA1027C())
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9FC084(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 216) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  v7 = sub_22BA1055C();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  v8 = *(a3 - 8);
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 + 64);
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FC1A8, v4, 0);
}

uint64_t sub_22B9FC1A8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v15 = *(v0 + 96);
  v16 = *(v0 + 112);
  v14 = *(v0 + 216);
  v5 = *(v0 + 64);
  v6 = swift_allocObject();
  *(v0 + 144) = v6;
  *(v6 + 16) = 1;
  v7 = swift_allocObject();
  v17 = *(v0 + 72);
  swift_weakInit();
  (*(v3 + 16))(v2, v5, v17);
  v8 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v17;
  *(v9 + 32) = v7;
  *(v9 + 40) = v14;
  (*(v3 + 32))(v9 + v8, v2, v17);
  *(v9 + ((v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  (*(v4 + 104))(v16, *MEMORY[0x277CBE110], v15);

  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  v11 = sub_22B951A54(0, &qword_281414B40, 0x277CBE448);
  *v10 = v0;
  v10[1] = sub_22B9FC3D0;
  v12 = *(v0 + 112);

  return MEMORY[0x28210EE50](v0 + 56, v12, sub_22BA01804, v9, v11);
}

uint64_t sub_22B9FC3D0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_22B9FCB60;
  }

  else
  {
    v7 = sub_22B9FC57C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_22B9FC57C()
{
  v1 = v0[11];
  v0[22] = v0[7];
  v2 = *(v1 + 184);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 184) = v4;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v4 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      v7 = swift_task_alloc();
      v0[23] = v7;
      *v7 = v0;
      v7[1] = sub_22B9FC750;

      sub_22B9FD9C8();
    }

    else if (__ROR8__(0x8F5C28F5C28F5C29 * v4 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v8 = swift_task_alloc();
      v0[25] = v8;
      *v8 = v0;
      v8[1] = sub_22B9FC9B0;

      sub_22B9FDE2C();
    }

    else
    {

      v5 = v0[22];

      v6 = v0[1];

      v6(v5, 0);
    }
  }
}

uint64_t sub_22B9FC750()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_22B9FCE84;
  }

  else
  {
    v4 = sub_22B9FC87C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9FC87C()
{
  if (__ROR8__(0x8F5C28F5C28F5C29 * *(v0[11] + 184) + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v4[1] = sub_22B9FC9B0;

    return sub_22B9FDE2C();
  }

  else
  {

    v1 = v0[22];

    v2 = v0[1];

    return v2(v1, 0);
  }
}

uint64_t sub_22B9FC9B0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_22B9FD1B0;
  }

  else
  {
    v4 = sub_22B9FCADC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B9FCADC()
{

  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_22B9FCB60()
{
  v28 = v0;
  v1 = v0[21];
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);

  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v8 = 136315394;
    swift_beginAccess();
    v10 = 0x676E69726F6E6769;
    v11 = *(v7 + 16);
    v12 = 0xE800000000000000;
    v13 = 0x676E697461647075;
    v14 = 0xE900000000000067;
    v15 = 0x6E69747265736E69;
    if (v11 != 3)
    {
      v15 = 0x676E6974656C6564;
      v14 = 0xE800000000000000;
    }

    if (v11 != 2)
    {
      v13 = v15;
      v12 = v14;
    }

    if (*(v7 + 16))
    {
      v10 = 0x676E696863746566;
    }

    if (*(v7 + 16) <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }

    if (*(v7 + 16) <= 1u)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = v12;
    }

    v0[5] = v16;
    v0[6] = v17;
    sub_22B936ACC();
    v18 = sub_22BA1076C();
    v20 = v19;

    v21 = sub_22B99153C(v18, v20, &v27);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v23;
    *v9 = v23;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error on action: %s while trying to upsert record: %@", v8, 0x16u);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    sub_22B936C4C(v26);
    MEMORY[0x23189ADD0](v26, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v24 = v0[1];

  return v24(v1, 1);
}

uint64_t sub_22B9FCE84()
{
  v28 = v0;

  v1 = *(v0 + 192);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);

  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v8 = 136315394;
    swift_beginAccess();
    v10 = 0x676E69726F6E6769;
    v11 = *(v7 + 16);
    v12 = 0xE800000000000000;
    v13 = 0x676E697461647075;
    v14 = 0xE900000000000067;
    v15 = 0x6E69747265736E69;
    if (v11 != 3)
    {
      v15 = 0x676E6974656C6564;
      v14 = 0xE800000000000000;
    }

    if (v11 != 2)
    {
      v13 = v15;
      v12 = v14;
    }

    if (*(v7 + 16))
    {
      v10 = 0x676E696863746566;
    }

    if (*(v7 + 16) <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }

    if (*(v7 + 16) <= 1u)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = v12;
    }

    *(v0 + 40) = v16;
    *(v0 + 48) = v17;
    sub_22B936ACC();
    v18 = sub_22BA1076C();
    v20 = v19;

    v21 = sub_22B99153C(v18, v20, &v27);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v23;
    *v9 = v23;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error on action: %s while trying to upsert record: %@", v8, 0x16u);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    sub_22B936C4C(v26);
    MEMORY[0x23189ADD0](v26, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 8);

  return v24(v1, 1);
}

uint64_t sub_22B9FD1B0()
{
  v28 = v0;

  v1 = *(v0 + 208);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);

  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v8 = 136315394;
    swift_beginAccess();
    v10 = 0x676E69726F6E6769;
    v11 = *(v7 + 16);
    v12 = 0xE800000000000000;
    v13 = 0x676E697461647075;
    v14 = 0xE900000000000067;
    v15 = 0x6E69747265736E69;
    if (v11 != 3)
    {
      v15 = 0x676E6974656C6564;
      v14 = 0xE800000000000000;
    }

    if (v11 != 2)
    {
      v13 = v15;
      v12 = v14;
    }

    if (*(v7 + 16))
    {
      v10 = 0x676E696863746566;
    }

    if (*(v7 + 16) <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }

    if (*(v7 + 16) <= 1u)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = v12;
    }

    *(v0 + 40) = v16;
    *(v0 + 48) = v17;
    sub_22B936ACC();
    v18 = sub_22BA1076C();
    v20 = v19;

    v21 = sub_22B99153C(v18, v20, &v27);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2112;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v23;
    *v9 = v23;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error on action: %s while trying to upsert record: %@", v8, 0x16u);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    sub_22B936C4C(v26);
    MEMORY[0x23189ADD0](v26, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 8);

  return v24(v1, 1);
}

void sub_22B9FD4DC(char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22BA01888();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return;
  }

  v12 = Strong;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 3;
    v19 = *(v12 + 120);
    v20 = a4;
    v21 = *(a5 + 32);
    v22 = v19;
    v23 = v21(v19, a4, a5);

    v24 = *(a5 + 40);
    v25 = *(v12 + 120);
    v24(v23, v25, v12 + 144, v20, a5);

    v26 = [v23 objectID];

    goto LABEL_7;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  [v15 setFetchLimit_];
  [v15 setResultType_];
  v16 = (*(a5 + 48))(a4, a5);
  [v15 setPredicate_];

  v17 = *(v12 + 120);
  sub_22BA1056C();
  if (v6)
  {

    return;
  }

  v27 = a4;

  sub_22BA1028C();
  swift_getWitnessTable();
  if ((sub_22BA103EC() & 1) == 0)
  {
    sub_22BA103DC();

    if (!v39)
    {
      goto LABEL_13;
    }

    if ((*(a5 + 56))(v39, a4, a5))
    {
      swift_beginAccess();
      *(a3 + 16) = 2;
      v36 = *(a5 + 40);
      v28 = *(v12 + 120);
      v36(v39, v28, v12 + 144, a4, a5);

      v26 = [v39 objectID];
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 0;
      v26 = [v39 objectID];
    }

LABEL_7:
    *a6 = v26;
    return;
  }

LABEL_13:
  swift_beginAccess();
  *(a3 + 16) = 3;
  v29 = *(v12 + 120);
  v30 = *(a5 + 32);
  v31 = v29;
  v32 = v30(v29, a4, a5);

  v37 = *(a5 + 40);
  v33 = *(v12 + 120);
  v37(v32, v33, v12 + 144, v27, a5);

  v34 = v32;
  v35 = [v34 objectID];

  *a6 = v35;
}

uint64_t sub_22B9FD9C8()
{
  v1[2] = v0;
  v2 = sub_22BA1055C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FDA88, v0, 0);
}

uint64_t sub_22B9FDA88()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 120);
  v0[6] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE108], v3);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  v4;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22B9FDBA8;
  v7 = v0[5];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v6, v7, sub_22BA01E60, v5, v8);
}

uint64_t sub_22B9FDBA8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_22B9FDDC0;
  }

  else
  {
    v7 = sub_22B9FDD54;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B9FDD54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9FDDC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9FDE2C()
{
  v1[2] = v0;
  v2 = sub_22BA1055C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FDEEC, v0, 0);
}

uint64_t sub_22B9FDEEC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 112);
  v0[6] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE108], v3);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  v4;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22B9FB8D4;
  v7 = v0[5];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v6, v7, sub_22BA017E8, v5, v8);
}

id sub_22B9FE00C(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  result = [a1 hasChanges];
  if (result)
  {
    v5[0] = 0;
    if ([a1 save_])
    {
      v3 = v5[0];
      return [a1 reset];
    }

    else
    {
      v4 = v5[0];
      sub_22BA0FB6C();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22B9FE0D8()
{
  v1[7] = v0;
  v2 = sub_22BA0FC4C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_22B9FE210;

  return sub_22B9A8CA4(v0, &off_283F58108);
}

uint64_t sub_22B9FE210(char a1)
{
  v4 = *v2;
  *(v4 + 96) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 56);
    *(v4 + 105) = a1 & 1;

    return MEMORY[0x2822009F8](sub_22B9FE3A8, v7, 0);
  }
}

uint64_t sub_22B9FE3A8()
{
  if ((*(v0 + 105) & 1) == 0)
  {
    v1 = *(v0 + 96);
    v2 = [objc_opt_self() defaultManager];
    *(v0 + 40) = &type metadata for FileManagerProvider;
    *(v0 + 48) = &off_283F53B48;
    *(v0 + 16) = v2;
    sub_22B971A60();
    if (v1)
    {
      sub_22B936C4C((v0 + 16));
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v3 = sub_22BA0FEFC();
      sub_22B936CA8(v3, qword_28141AD40);
      v4 = v1;
      v5 = sub_22BA0FEDC();
      v6 = sub_22BA1046C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = v1;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_22B92A000, v5, v6, "Failed to clear sync asset store directory, %@", v7, 0xCu);
        sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v8, -1, -1);
        MEMORY[0x23189ADD0](v7, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v11 = *(v0 + 56);
      sub_22B936C4C((v0 + 16));
      v12 = *sub_22B9358B4((v11 + 144), *(v11 + 168));
      *(v0 + 104) = 0;
      sub_22BA0FB7C();
      v13 = sub_22BA0FFCC();

      v14 = [v12 fileExistsAtPath:v13 isDirectory:v0 + 104];

      v15 = *(v0 + 80);
      if (v14)
      {
        sub_22B964DE0(v15, v12);
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v16 = sub_22BA0FEFC();
        sub_22B936CA8(v16, qword_28141AD40);
        v17 = sub_22BA0FEDC();
        v18 = sub_22BA1046C();
        v19 = os_log_type_enabled(v17, v18);
        v21 = *(v0 + 72);
        v20 = *(v0 + 80);
        v22 = *(v0 + 64);
        if (v19)
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_22B92A000, v17, v18, "SyncStore has no more importable records with assets, cleared sync asset store", v23, 2u);
          MEMORY[0x23189ADD0](v23, -1, -1);
        }

        (*(v21 + 8))(v20, v22);
      }

      else
      {
        (*(*(v0 + 72) + 8))(v15, *(v0 + 64));
      }
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22B9FE764()
{
  sub_22B936C4C((v0 + 144));
  v1 = OBJC_IVAR____TtC17MessagesCloudSync9SyncStore_databaseURL;
  v2 = sub_22BA0FC4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SyncStore(uint64_t a1)
{
  result = qword_281416760;
  if (!qword_281416760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B9FE868(uint64_t a1)
{
  result = sub_22BA0FC4C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B9FE938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9F7494();
}

uint64_t sub_22B9FE9C4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_22B9FEA0C, v0, 0);
}

uint64_t sub_22B9FEA0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_22BA01B54(&qword_281416770, type metadata accessor for SyncStore, &unk_22BA1A9A8);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22B9FEB44;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 6, v1, v3, 0xD000000000000010, 0x800000022BA1FAB0, sub_22BA01A7C, v4, v6);
}

uint64_t sub_22B9FEB44()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22B9FEC70, v1, 0);
}

uint64_t sub_22B9FEC88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9F7900();
}

uint64_t sub_22B9FED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B947814;

  return sub_22B9F9868(a1, a2, a3);
}

uint64_t sub_22B9FEDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B9B22B4;

  return sub_22B9F9F98(a1, a2, a3, a4);
}

uint64_t sub_22B9FEE7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B9B1D90;

  return sub_22B9FA764(a1);
}

uint64_t sub_22B9FEF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9FBA80(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9FEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9FAF24(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9FF098(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B980888;

  return sub_22B9FC084(a1, a2, a3, a4);
}

uint64_t sub_22B9FF154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9FD9C8();
}

uint64_t sub_22B9FF1E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9FDE2C();
}

uint64_t sub_22B9FF26C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9FE0D8();
}

uint64_t sub_22B9FF2F8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22BA10D3C();
  sub_22BA1008C();
  v8 = sub_22BA10D6C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22BA10C6C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22B9FFD7C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B9FF448(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22BA1081C();

    if (v9)
    {

      sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22BA1080C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22B9FF680(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22B9FFAD0(v20 + 1);
    }

    v18 = v8;
    sub_22B9FFCF8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
  v11 = sub_22BA1071C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22B9FFEFC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22BA1072C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22B9FF680(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
    v2 = sub_22BA108AC();
    v15 = v2;
    sub_22BA107FC();
    if (sub_22BA1082C())
    {
      sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_22B9FFAD0(v9 + 1);
        }

        v2 = v15;
        result = sub_22BA1071C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_22BA1082C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B9FF870(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  result = sub_22BA1089C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22B9FFAD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
  result = sub_22BA1089C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_22BA1071C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22B9FFCF8(uint64_t a1, uint64_t a2)
{
  sub_22BA1071C();
  result = sub_22BA107EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_22B9FFD7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B9FF870(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22BA0006C();
      goto LABEL_16;
    }

    sub_22BA00318(v8 + 1);
  }

  v10 = *v4;
  sub_22BA10D3C();
  sub_22BA1008C();
  v11 = sub_22BA10D6C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22BA10C6C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22BA10CAC();
  __break(1u);
}

void sub_22B9FFEFC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B9FFAD0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22BA001C8();
      goto LABEL_12;
    }

    sub_22BA00550(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_22BA1071C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_22BA1072C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22BA10CAC();
  __break(1u);
}

void sub_22BA0006C()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  v2 = *v0;
  v3 = sub_22BA1088C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_22BA001C8()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
  v2 = *v0;
  v3 = sub_22BA1088C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_22BA00318(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  result = sub_22BA1089C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22BA10D3C();

      sub_22BA1008C();
      result = sub_22BA10D6C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22BA00550(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
  result = sub_22BA1089C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_22BA1071C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22BA00764(uint64_t a1, uint64_t a2, void *a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = *a3;
  v5 = sub_22BA0FC4C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[5] = &type metadata for FileManagerProvider;
  v3[6] = &off_283F53B48;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_22BA008B4, 0, 0);
}

uint64_t sub_22BA008B4()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[7];
  swift_defaultActor_initialize();
  v2[23] = 0;
  *(v2 + OBJC_IVAR____TtC17MessagesCloudSync9SyncStore_contextDidSaveToken) = 0;
  v2[17] = v3;
  sub_22B935B38((v0 + 2), (v2 + 18));
  v4 = v3;
  v2[14] = [v4 newBackgroundContext];
  v5 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v0[15] = v5;
  [v5 setParentContext_];
  [v5 setAutomaticallyMergesChangesFromParent_];
  v6 = [objc_opt_self() errorMergePolicy];
  [v5 setMergePolicy_];

  [v5 setUndoManager_];
  v2[15] = v5;
  v7 = v5;
  v8 = [v4 newBackgroundContext];
  v0[16] = v8;
  [v8 setAutomaticallyMergesChangesFromParent_];
  [v8 setUndoManager_];
  v2[16] = v8;
  v9 = v8;
  sub_22B9F5F98(v0 + 2, v1);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[10];
  v13 = v0[11];
  v14 = sub_22BA0FEFC();
  v0[17] = sub_22B936CA8(v14, qword_28141AD40);
  v15 = *(v13 + 16);
  v15(v10, v11, v12);
  v16 = sub_22BA0FEDC();
  v17 = sub_22BA1046C();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[13];
  v21 = v0[10];
  v20 = v0[11];
  if (v18)
  {
    buf = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *buf = 136315138;
    sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = v15;
    v23 = sub_22BA10C1C();
    v25 = v24;
    v31 = v17;
    v26 = *(v20 + 8);
    v26(v19, v21);
    v27 = v23;
    v15 = v22;
    v28 = sub_22B99153C(v27, v25, v34);

    *(buf + 4) = v28;
    _os_log_impl(&dword_22B92A000, v16, v31, "Sync Database URL: %s", buf, 0xCu);
    sub_22B936C4C(v33);
    MEMORY[0x23189ADD0](v33, -1, -1);
    MEMORY[0x23189ADD0](buf, -1, -1);
  }

  else
  {

    v26 = *(v20 + 8);
    v26(v19, v21);
  }

  v0[18] = v26;
  v29 = v0[8];
  v15(v29 + OBJC_IVAR____TtC17MessagesCloudSync9SyncStore_databaseURL, v0[14], v0[10]);

  return MEMORY[0x2822009F8](sub_22BA00C8C, v29, 0);
}

uint64_t sub_22BA00C8C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isMessagesIniCloudVersion2];

  if (v2)
  {
    if (qword_281414B68 != -1)
    {
      swift_once();
    }

    v3 = qword_28141ACF0;
    if (sub_22B92DA70(5, 0))
    {
      sub_22B9F5A98((v0 + 16), *(v0 + 96));
      v4 = *sub_22B9358B4((v0 + 16), *(v0 + 40));
      *(v0 + 176) = 0;
      sub_22BA0FB7C();
      v5 = sub_22BA0FFCC();

      v6 = [v4 fileExistsAtPath:v5 isDirectory:v0 + 176];

      if (v6)
      {
        sub_22B964DE0(*(v0 + 96), v4);
      }

      [v3 removeObjectForKey_];
      v14 = sub_22BA0FEDC();
      v15 = sub_22BA1046C();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 144);
      v18 = *(v0 + 96);
      v19 = *(v0 + 80);
      if (v16)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v33[0] = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_22B99153C(0, 0xE000000000000000, v33);
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_22B99153C(0xD000000000000010, 0x800000022BA1FCD0, v33);
        _os_log_impl(&dword_22B92A000, v14, v15, "Cleared sync store (%s%s)", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v21, -1, -1);
        MEMORY[0x23189ADD0](v20, -1, -1);
      }

      v17(v18, v19);
    }

    sub_22B9F622C((v0 + 16));
    v23 = *(v0 + 56);
    v22 = *(v0 + 64);
    v24 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v25 = sub_22BA0FBBC();
    v26 = [v24 initWithURL_];
    *(v0 + 152) = v26;

    [v26 setType_];
    [v26 setShouldMigrateStoreAutomatically_];
    [v26 setShouldInferMappingModelAutomatically_];
    [v26 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
    [v26 setShouldAddStoreAsynchronously_];
    sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22BA172B0;
    *(v27 + 32) = v26;
    sub_22B951A54(0, &qword_281414AB8, 0x277CBE4E0);
    v28 = v26;
    v29 = sub_22BA101DC();

    [v23 setPersistentStoreDescriptions_];

    return MEMORY[0x2822009F8](sub_22BA013B4, v22, 0);
  }

  else
  {
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1046C();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 56);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B92A000, v7, v8, "MiC2 not enabled, not performing sync store init", v13, 2u);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    else
    {
    }

    (*(v0 + 144))(*(v0 + 112), *(v0 + 80));
    sub_22B936C4C((v0 + 16));

    v30 = *(v0 + 8);
    v31 = *(v0 + 64);

    return v30(v31);
  }
}

uint64_t sub_22BA013B4()
{
  v1 = v0[8];
  v2 = sub_22BA01B54(&qword_281416770, type metadata accessor for SyncStore, &unk_22BA1A9A8);
  v0[20] = v2;
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_22BA014FC;
  v4 = v0[8];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, v1, v2, 0xD000000000000015, 0x800000022BA1FCB0, sub_22BA01CDC, v4, v5);
}

uint64_t sub_22BA014FC()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_22BA01638, v1, 0);
}

uint64_t sub_22BA01638()
{
  swift_getObjectType();
  v1 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22BA016EC, v1, v0);
}

uint64_t sub_22BA016EC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 56);

  (*(v0 + 144))(*(v0 + 112), *(v0 + 80));
  sub_22B936C4C((v0 + 16));

  v4 = *(v0 + 8);
  v5 = *(v0 + 64);

  return v4(v5);
}

unint64_t sub_22BA01888()
{
  result = qword_27D8D5B88;
  if (!qword_27D8D5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B88);
  }

  return result;
}

uint64_t sub_22BA0197C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318999F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22B9FF2F8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_22BA01A84(void *a1, void *a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B9F9518(a1, a2, v2 + v6, v7);
}

uint64_t sub_22BA01B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BA01B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BA01BA4(void *a1, void *a2)
{
  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);

  return sub_22B9F8124(a1, a2);
}

uint64_t sub_22BA01C30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B943E68;

  return sub_22B9F56B0(a1);
}

uint64_t sub_22BA01CE4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22B9349C8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_22BA01DF8()
{
  result = qword_27D8D5BA0;
  if (!qword_27D8D5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BA0);
  }

  return result;
}

void sub_22BA01E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = sub_22BA0FA0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((1 << v4) & 0x105577) == 0)
  {
    v36 = v8;
    if (((1 << v4) & 0xFAA88) != 0)
    {
      sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
      inited = swift_initStackObject();
      *(inited + 32) = a1;
      v35 = xmmword_22BA13CB0;
      *(inited + 16) = xmmword_22BA13CB0;
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 40) = a2;
      *(inited + 48) = a3;

      v22 = sub_22B9BBA8C(inited);
      swift_setDeallocating();
      sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
      if (IMIsRunningInAutomation())
      {
        v23 = swift_initStackObject();
        *(v23 + 16) = v35;
        *(v23 + 32) = 17481;
        *(v23 + 40) = 0xE200000000000000;
        v24 = sub_22BA02580(v4);
        *(v23 + 72) = MEMORY[0x277D837D0];
        *(v23 + 48) = v24;
        *(v23 + 56) = v25;
        v26 = sub_22B9BBA8C(v23);
        swift_setDeallocating();
        sub_22B936BEC(v23 + 32, &unk_27D8D5770, &qword_22BA135E0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v37 = v22;
        sub_22BA02BBC(v26, sub_22BA02A10, 0, isUniquelyReferenced_nonNull_native, &v37);

        v18 = v37;
        v19 = sub_22BA0FFCC();
        v20 = [objc_opt_self() defaultCenter];
        goto LABEL_7;
      }

      v28 = [objc_opt_self() defaultCenter];
      sub_22BA02580(v4);
      sub_22BA0FFCC();

      v37 = 0u;
      v38 = 0u;
    }

    else
    {
      v30 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
      if (IMIsRunningInAutomation())
      {
        sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
        v31 = swift_initStackObject();
        *(v31 + 16) = xmmword_22BA13CB0;
        *(v31 + 32) = 17481;
        v32 = v31 + 32;
        *(v31 + 72) = MEMORY[0x277D837D0];
        *(v31 + 40) = 0xE200000000000000;
        *(v31 + 48) = 0xD000000000000010;
        *(v31 + 56) = 0x800000022BA1C070;
        v33 = sub_22B9BBA8C(v31);
        swift_setDeallocating();
        sub_22B936BEC(v32, &unk_27D8D5770, &qword_22BA135E0);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *&v37 = v30;
        sub_22BA02BBC(v33, sub_22BA02A10, 0, v34, &v37);

        v18 = v37;
        v19 = sub_22BA0FFCC();
        v20 = [objc_opt_self() defaultCenter];
        goto LABEL_7;
      }

      v28 = [objc_opt_self() defaultCenter];
      sub_22BA0FFCC();

      v37 = 0u;
      v38 = 0u;
    }

    sub_22BA0F9FC();
    v29 = sub_22BA0F9EC();
    (*(v9 + 8))(v11, v36);
LABEL_11:
    [v28 postNotification_];
    goto LABEL_12;
  }

  v12 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  if (!IMIsRunningInAutomation())
  {

    v28 = [objc_opt_self() defaultCenter];
    sub_22BA02580(v4);
    sub_22BA0FFCC();

    v37 = 0u;
    v38 = 0u;
    sub_22BA0F9FC();
    v29 = sub_22BA0F9EC();
    (*(v9 + 8))(v11, v8);
    goto LABEL_11;
  }

  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_22BA13CB0;
  *(v13 + 32) = 17481;
  *(v13 + 40) = 0xE200000000000000;
  v14 = sub_22BA02580(v4);
  *(v13 + 72) = MEMORY[0x277D837D0];
  *(v13 + 48) = v14;
  *(v13 + 56) = v15;
  v16 = sub_22B9BBA8C(v13);
  swift_setDeallocating();
  sub_22B936BEC(v13 + 32, &unk_27D8D5770, &qword_22BA135E0);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *&v37 = v12;
  sub_22BA02BBC(v16, sub_22BA02A10, 0, v17, &v37);

  v18 = v37;
  v19 = sub_22BA0FFCC();
  v20 = [objc_opt_self() defaultCenter];
LABEL_7:
  v28 = v20;
  sub_22B98C248(v18);

  v29 = sub_22BA0FF5C();

  [v28 postNotificationName:v19 object:0 userInfo:v29 options:0];

LABEL_12:
}

unint64_t sub_22BA02580(char a1)
{
  result = 0x795370756B636162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
    case 4:
    case 18:
    case 19:
      result = 0xD000000000000011;
      break;
    case 3:
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 15:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x65666544636E7973;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_22BA027BC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22BA02580(*a1);
  v5 = v4;
  if (v3 == sub_22BA02580(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22BA02844()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA02580(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA028A8(uint64_t a1)
{
  sub_22BA02580(*v1);
  sub_22BA1008C();
}

uint64_t sub_22BA028FC(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22BA02580(v2);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22BA0295C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BA02EF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22BA0298C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22BA02580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22BA029BC()
{
  result = qword_27D8D5BA8;
  if (!qword_27D8D5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BA8);
  }

  return result;
}

double sub_22BA02A10@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22B936B20((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_22BA02A5C(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22B936B20(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_22B936C98(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_22B936BEC(v20, &qword_27D8D5BB0, &qword_22BA1AC28);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_22BA02BBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_22BA02A5C(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_22B936C98(v47, v45);
  v14 = *a5;
  result = sub_22B990A58(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_22B9D877C(v20, a4 & 1);
    result = sub_22B990A58(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22BA10CBC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_22B9EBF40();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_22B936B20(*(*a5 + 56) + 32 * result, v44);
    sub_22B936C4C(v45);

    v25 = *(v23 + 56);
    sub_22B936C4C((v25 + v24));
    sub_22B936C98(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_22B936C98(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_22BA02A5C(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_22B936C98(v47, v45);
        v34 = *a5;
        result = sub_22B990A58(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_22B9D877C(v38, 1);
          result = sub_22B990A58(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_22B936B20(*(*a5 + 56) + 32 * result, v44);
          sub_22B936C4C(v45);

          v33 = *(v31 + 56);
          sub_22B936C4C((v33 + v32));
          sub_22B936C98(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_22B936C98(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_22BA02A5C(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_22B951944(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22BA02EF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10C7C();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22BA02F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22BA02FEC();
}

uint64_t sub_22BA02FEC()
{
  v1[9] = v0;
  sub_22B9349C8(&qword_27D8D5BB8, &qword_22BA1AC58);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for RecoverableMessageRecord(0);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v3 = sub_22BA0FD8C();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BA031D8, 0, 0);
}

uint64_t sub_22BA031D8()
{
  v112 = v0;
  v1 = *(v0 + 72);
  v2 = *v1;
  *(v0 + 208) = *v1;
  v3 = v1[1];
  *(v0 + 216) = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  sub_22B9934AC(v1 + *(*(v0 + 96) + 52), v6, &unk_27D8D4A90, &qword_22BA126A0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_22B936BEC(*(v0 + 160), &unk_27D8D4A90, &qword_22BA126A0);
LABEL_4:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 72);
    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD10);
    sub_22B966144(v9, v8);
    sub_22B966144(v9, v7);
    v11 = sub_22BA0FEDC();
    v108 = sub_22BA1044C();
    v12 = os_log_type_enabled(v11, v108);
    v13 = *(v0 + 120);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v110 = v105;
      *v14 = 136315394;
      v15 = *(v13 + 8);
      v16 = *(v0 + 120);
      if (v15)
      {
        *(v0 + 48) = *v16;
        *(v0 + 56) = v15;

        v17 = sub_22BA1005C();
        v19 = v18;
        sub_22B9661A8(v16);
      }

      else
      {
        v17 = 7104878;
        sub_22B9661A8(*(v0 + 120));
        v19 = 0xE300000000000000;
      }

      v37 = *(v0 + 168);
      v36 = *(v0 + 176);
      v38 = *(v0 + 152);
      v39 = *(v0 + 112);
      v40 = *(v0 + 96);
      v41 = sub_22B99153C(v17, v19, &v110);

      *(v14 + 4) = v41;
      *(v14 + 12) = 2080;
      sub_22B9934AC(v39 + *(v40 + 52), v38, &unk_27D8D4A90, &qword_22BA126A0);
      if ((*(v36 + 48))(v38, 1, v37) == 1)
      {
        v42 = 7104878;
        sub_22B936BEC(*(v0 + 152), &unk_27D8D4A90, &qword_22BA126A0);
        v43 = 0xE300000000000000;
      }

      else
      {
        v44 = *(v0 + 184);
        v45 = *(v0 + 192);
        v47 = *(v0 + 168);
        v46 = *(v0 + 176);
        (*(v46 + 32))(v45, *(v0 + 152), v47);
        (*(v46 + 16))(v44, v45, v47);
        v42 = sub_22BA1005C();
        v43 = v48;
        (*(v46 + 8))(v45, v47);
      }

      sub_22B9661A8(*(v0 + 112));
      v49 = sub_22B99153C(v42, v43, &v110);

      *(v14 + 14) = v49;
      _os_log_impl(&dword_22B92A000, v11, v108, "Failed reading recoverable message record, guid: %s, deleteDate: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v105, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
      v20 = *(v0 + 112);

      sub_22B9661A8(v20);
      sub_22B9661A8(v13);
    }

    sub_22BA0423C();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    goto LABEL_23;
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 72);
  (*(*(v0 + 176) + 32))(*(v0 + 200), *(v0 + 160), *(v0 + 168));
  v23 = (v22 + *(v21 + 56));
  v24 = *v23;
  *(v0 + 224) = *v23;
  v25 = v23[1];
  *(v0 + 232) = v25;
  if (v25 >> 60 != 15)
  {

    sub_22B936A3C(v24, v25);
    v34 = sub_22BA0FC8C();
    v35 = JWDecodeCodableObjectWithStandardAllowlist();

    if (v35)
    {
      sub_22BA107AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
    }

    v65 = v111;
    *(v0 + 16) = v110;
    *(v0 + 32) = v65;
    if (*(v0 + 40))
    {
      sub_22B99F640();
      if (swift_dynamicCast())
      {
        v66 = *(v0 + 64);
        v67 = qword_28141ADC8;
        *(v0 + 240) = v66;
        *(v0 + 248) = v67;
        if (v67)
        {
          v68 = qword_28141ADD0;
          *(v0 + 256) = qword_28141ADD0;
          *(v0 + 264) = *(v68 + 248);
          *(v0 + 272) = (v68 + 248) & 0xFFFFFFFFFFFFLL | 0x5D04000000000000;
          if (qword_281416450 != -1)
          {
            swift_once();
          }

          sub_22BA102EC();
          v30 = sub_22BA1029C();
          v32 = v69;
          v33 = sub_22BA03EF0;
          goto LABEL_38;
        }

        sub_22B952500();
        v93 = swift_allocError();
        swift_willThrow();
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v94 = sub_22BA0FEFC();
        sub_22B936CA8(v94, qword_28141AD10);

        v95 = v93;
        v96 = sub_22BA0FEDC();
        v97 = sub_22BA1044C();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v107 = v0;
          v99 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          *&v110 = v104;
          *v98 = 136315394;
          v100 = sub_22B99153C(v2, v3, &v110);

          *(v98 + 4) = v100;
          *(v98 + 12) = 2112;
          v101 = v93;
          v102 = _swift_stdlib_bridgeErrorToNSError();
          *(v98 + 14) = v102;
          *v99 = v102;
          _os_log_impl(&dword_22B92A000, v96, v97, "Encountered error moving recoverable message part for guid %s %@", v98, 0x16u);
          sub_22B936BEC(v99, &qword_27D8D4CD0, qword_22BA14360);
          v103 = v99;
          v0 = v107;
          MEMORY[0x23189ADD0](v103, -1, -1);
          sub_22B936C4C(v104);
          MEMORY[0x23189ADD0](v104, -1, -1);
          MEMORY[0x23189ADD0](v98, -1, -1);
        }

        else
        {
        }

        v89 = *(v0 + 200);
        v91 = *(v0 + 168);
        v90 = *(v0 + 176);
        swift_willThrow();
        sub_22B9359A8(v24, v25);

LABEL_52:
        (*(v90 + 8))(v89, v91);
LABEL_23:

        v51 = *(v0 + 8);

        return v51();
      }
    }

    else
    {

      sub_22B936BEC(v0 + 16, &unk_27D8D5A30, qword_22BA13390);
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 144);
    v71 = *(v0 + 72);
    v72 = sub_22BA0FEFC();
    sub_22B936CA8(v72, qword_28141AD10);
    sub_22B966144(v71, v70);
    v73 = sub_22BA0FEDC();
    v74 = sub_22BA1044C();
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 144);
    if (v75)
    {
      v109 = v74;
      v78 = *(v0 + 96);
      v77 = *(v0 + 104);
      v79 = *(v0 + 80);
      v80 = *(v0 + 88);
      v81 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v110 = v106;
      *v81 = 136315138;
      sub_22B966144(v76, v80);
      (*(v77 + 56))(v80, 0, 1, v78);
      sub_22B9934AC(v80, v79, &qword_27D8D5BB8, &qword_22BA1AC58);
      if ((*(v77 + 48))(v79, 1, v78) == 1)
      {
        v82 = 7104878;
        sub_22B936BEC(*(v0 + 80), &qword_27D8D5BB8, &qword_22BA1AC58);
        v83 = 0xE300000000000000;
      }

      else
      {
        v85 = *(v0 + 128);
        v84 = *(v0 + 136);
        sub_22BA04290(*(v0 + 80), v84);
        sub_22B966144(v84, v85);
        v82 = sub_22BA1005C();
        v83 = v86;
        sub_22B9661A8(v84);
      }

      v87 = *(v0 + 144);
      sub_22B936BEC(*(v0 + 88), &qword_27D8D5BB8, &qword_22BA1AC58);
      sub_22B9661A8(v87);
      v88 = sub_22B99153C(v82, v83, &v110);

      *(v81 + 4) = v88;
      _os_log_impl(&dword_22B92A000, v73, v109, "Error decoding recoverable message part body into an attributed string: %s", v81, 0xCu);
      sub_22B936C4C(v106);
      MEMORY[0x23189ADD0](v106, -1, -1);
      MEMORY[0x23189ADD0](v81, -1, -1);
    }

    else
    {

      sub_22B9661A8(v76);
    }

    v89 = *(v0 + 200);
    v91 = *(v0 + 168);
    v90 = *(v0 + 176);
    sub_22BA0423C();
    swift_allocError();
    *v92 = 1;
    swift_willThrow();
    sub_22B9359A8(v24, v25);
    goto LABEL_52;
  }

  v26 = qword_28141ADC8;
  *(v0 + 280) = qword_28141ADC8;
  if (!v26)
  {
    sub_22B952500();
    v53 = swift_allocError();
    swift_willThrow();
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v54 = sub_22BA0FEFC();
    sub_22B936CA8(v54, qword_28141AD10);
    v55 = v53;
    v56 = sub_22BA0FEDC();
    v57 = sub_22BA1044C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = v53;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v61;
      *v59 = v61;
      _os_log_impl(&dword_22B92A000, v56, v57, "Error encountered moving recoverable message %@", v58, 0xCu);
      sub_22B936BEC(v59, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v59, -1, -1);
      MEMORY[0x23189ADD0](v58, -1, -1);
    }

    v62 = *(v0 + 200);
    v63 = *(v0 + 168);
    v64 = *(v0 + 176);

    swift_willThrow();
    (*(v64 + 8))(v62, v63);
    goto LABEL_23;
  }

  v27 = qword_28141ADD0;
  *(v0 + 288) = qword_28141ADD0;
  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v28 = swift_allocObject();
  *(v0 + 296) = v28;
  *(v28 + 16) = xmmword_22BA13CB0;
  *(v28 + 32) = v2;
  *(v28 + 40) = v3;
  *(v0 + 304) = *(v27 + 240);
  *(v0 + 312) = (v27 + 240) & 0xFFFFFFFFFFFFLL | 0x8468000000000000;
  v29 = qword_281416450;

  if (v29 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v30 = sub_22BA1029C();
  v32 = v31;
  v33 = sub_22BA040A0;
LABEL_38:

  return MEMORY[0x2822009F8](v33, v30, v32);
}

uint64_t sub_22BA03EF0()
{
  (*(v0 + 264))(*(v0 + 208), *(v0 + 216), *(v0 + 200), *(v0 + 240));

  return MEMORY[0x2822009F8](sub_22BA03F78, 0, 0);
}

uint64_t sub_22BA03F78()
{
  v1 = v0[30];
  sub_22B9359A8(v0[28], v0[29]);

  (*(v0[22] + 8))(v0[25], v0[21]);

  v2 = v0[1];

  return v2(1);
}

uint64_t sub_22BA040A0()
{
  (*(v0 + 304))(*(v0 + 296), *(v0 + 200));

  return MEMORY[0x2822009F8](sub_22BA04124, 0, 0);
}

uint64_t sub_22BA04124()
{
  (*(v0[22] + 8))(v0[25], v0[21]);

  v1 = v0[1];

  return v1(1);
}

unint64_t sub_22BA0423C()
{
  result = qword_27D8D5BC0;
  if (!qword_27D8D5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BC0);
  }

  return result;
}

uint64_t sub_22BA04290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoverableMessageRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BA04308()
{
  result = qword_27D8D5BC8;
  if (!qword_27D8D5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BC8);
  }

  return result;
}

uint64_t sub_22BA0435C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_22B9358B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22BA045B0(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_22BA04650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B943E68;

  return sub_22BA045B0(v2, v3);
}

uint64_t sub_22BA04704(uint64_t a1, void *a2)
{
  v3 = sub_22B9358B4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22BA047D0()
{
  v5 = v0;
  v1 = *(v0 + 16);
  sub_22B9358B4((v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v4 = *(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17);
  sub_22BA0903C(&v4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22BA04874(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B947814;

  return sub_22BA04FE8(a1, a2, v7, v6);
}

uint64_t sub_22BA0493C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22B945AC8;

  return v6();
}

uint64_t sub_22BA04A24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22B943E68;

  return v7();
}

uint64_t sub_22BA04B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_22BA04DF8(a3, v23 - v10);
  v12 = sub_22BA1030C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22B936BEC(v11, &unk_27D8D5780, &qword_22BA13DB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22BA102FC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_22BA1029C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22BA1006C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

    return v21;
  }

LABEL_8:
  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_22BA04DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BA04E68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B99134C(a1, v4);
}

uint64_t sub_22BA04F20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B99134C(a1, v4);
}

uint64_t sub_22BA04FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  return MEMORY[0x2822009F8](sub_22BA0500C, 0, 0);
}

uint64_t sub_22BA0500C()
{
  v1 = v0[36];
  v2 = *(*sub_22B9358B4((v0[34] + 16), *(v0[34] + 40)) + 100);
  v0[2] = v0;
  v0[3] = sub_22BA05144;
  v3 = swift_continuation_init();
  v0[25] = sub_22B9349C8(&qword_27D8D5BD0, &qword_22BA1AE28);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_22BA04704;
  v0[21] = &unk_283F587F8;
  v0[22] = v3;
  [v1 verifyAllPreReqsWithRequireEnablement:v2 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22BA05144()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_22BA05734;
  }

  else
  {
    v2 = sub_22BA05254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22BA05254()
{
  if (v0[37])
  {
    v0[10] = v0;
    v0[15] = v0 + 42;
    v0[11] = sub_22BA05468;
    v1 = swift_continuation_init();
    v0[33] = sub_22B9349C8(&unk_27D8D4EE0, qword_22BA138F0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_22BA0435C;
    v0[29] = &unk_283F58820;
    v0[30] = v1;
    [swift_unknownObjectRetain() sendDeviceIDToCloudKitWithCompletion_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Missing backup controller did not send ping for iCloud quota grace", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6(0, 0);
  }
}

uint64_t sub_22BA05468()
{
  v1 = *(*v0 + 112);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_22BA0598C;
  }

  else
  {
    v2 = sub_22BA05578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22BA05578()
{
  if (*(v0 + 336))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD40);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1046C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Sent ping for quota grace to iCloud";
LABEL_10:
      _os_log_impl(&dword_22B92A000, v2, v3, v5, v4, 2u);
      MEMORY[0x23189ADD0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v6 = sub_22BA0FEFC();
    sub_22B936CA8(v6, qword_28141AD40);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1044C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Did not successfully ping iCloud for quota grace";
      goto LABEL_10;
    }
  }

  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7(0, 0);
}

uint64_t sub_22BA05734(uint64_t a1)
{
  swift_willThrow();
  v2 = swift_task_alloc();
  v1[40] = v2;
  *v2 = v1;
  v2[1] = sub_22BA05824;
  v4 = v1[34];
  v3 = v1[35];

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/SyncPreReqsVerifierStep.swift", 115, 2);
}

uint64_t sub_22BA05824()
{

  return MEMORY[0x2822009F8](sub_22BA05920, 0, 0);
}

uint64_t sub_22BA05920(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_22BA0598C(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = swift_task_alloc();
  *(v1 + 328) = v2;
  *v2 = v1;
  v2[1] = sub_22BA05A54;
  v3 = *(v1 + 312);

  return sub_22B97D504(v3);
}

uint64_t sub_22BA05A54()
{

  return MEMORY[0x2822009F8](sub_22BA05B50, 0, 0);
}

uint64_t sub_22BA05B50()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B92A000, v4, v5, "Error pinging iCloud for quota grace: %@", v8, 0xCu);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0, 0);
}

uint64_t sub_22BA05D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BA05D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22BA05DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CBC3E0]);
  sub_22BA0826C();
  v8 = sub_22BA101DC();
  v9 = [v7 initWithRecordIDs_];

  if (a2)
  {

    sub_22BA1059C();
  }

  v10 = v9;
  v11 = sub_22B99BA10(a3, a4, 0x6863746566, 0xE500000000000000);
  [v10 setGroup_];

  v12 = (a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v13 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v13 setQualityOfService_];
  [v13 setAllowsCellularAccess_];
  v14 = v12[3];
  v15 = v12[4];
  sub_22B9358B4(v12, v14);
  v16 = (*(v15 + 8))(v14, v15);
  if (v16)
  {
    v17 = v16;
    [v13 setAllowsCellularAccess_];
    [v13 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v10 setConfiguration_];

  return v10;
}

uint64_t sub_22BA05FA0()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Removing afterRow marker for AttachmentAssetDownload", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(*sub_22B9358B4((v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
  v7 = sub_22BA0FFCC();
  [v6 removeObjectForKey_];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22BA0611C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return MEMORY[0x2822009F8](sub_22BA061B0, 0, 0);
}

uint64_t sub_22BA061B0()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[6] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v3 = *(*sub_22B9358B4((v1 + v2), *(v1 + v2 + 24)) + 24);
  v4 = sub_22B9375B4(0xAu, 0);
  v0[7] = v4;

  if (v4)
  {
    v5 = v4;
    v6 = [v5 stringValue];
    v7 = sub_22BA0FFFC();
    v9 = v8;
  }

  else
  {
    v9 = 0xE800000000000000;
    v7 = 0x29747365776F6C28;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v10 = sub_22BA0FEFC();
  v0[8] = sub_22B936CA8(v10, qword_28141AD40);

  v11 = sub_22BA0FEDC();
  v12 = sub_22BA1046C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 134218242;
    *(v13 + 4) = 200;
    *(v13 + 12) = 2080;
    v15 = sub_22B99153C(v7, v9, v19);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_22B92A000, v11, v12, "Downloading limit %lld assets from %s", v13, 0x16u);
    sub_22B936C4C(v14);
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  else
  {
  }

  v0[9] = *(v0[5] + 64);
  v0[2] = v4;
  sub_22BA102EC();
  v0[10] = sub_22BA102DC();
  v17 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22BA0646C, v17, v16);
}

uint64_t sub_22BA0646C()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = [v1 batchOfRecordsMissingAssetsAfterRow:v0 + 2 withLimit:200];
  v4 = v0[2];
  v0[11] = v3;
  v0[12] = v4;
  v5 = v4;

  return MEMORY[0x2822009F8](sub_22BA0653C, 0, 0);
}

uint64_t sub_22BA0653C()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  if (v1)
  {
    sub_22BA0826C();
    sub_22B977228();
    v2 = sub_22BA0FF6C();
    v0[13] = v2;

    if (*(v2 + 16))
    {
      v3 = v0[12];
      if (v3)
      {
        v4 = v3;
        v5 = [v4 stringValue];
        v6 = sub_22BA0FFFC();
        v8 = v7;
      }

      else
      {
        v8 = 0xE500000000000000;
        v6 = 0x296C696E28;
      }

      v12 = sub_22BA0FEDC();
      v13 = sub_22BA1046C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24[0] = v15;
        *v14 = 136315138;
        v16 = sub_22B99153C(v6, v8, v24);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_22B92A000, v12, v13, "Updating afterRow to %s", v14, 0xCu);
        sub_22B936C4C(v15);
        MEMORY[0x23189ADD0](v15, -1, -1);
        MEMORY[0x23189ADD0](v14, -1, -1);
      }

      else
      {
      }

      v17 = v0[12];
      v18 = (v0[3] + v0[6]);
      v19 = *(*sub_22B9358B4(v18, v18[3]) + 24);
      v20 = sub_22BA0FFCC();
      [v19 setObject:v17 forKey:v20];

      v21 = swift_task_alloc();
      v0[14] = v21;
      *v21 = v0;
      v21[1] = sub_22BA06894;
      v22 = v0[4];
      v23 = v0[3];

      return sub_22BA06D08(v23, v22, v2);
    }
  }

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_22BA06AB8;
  v10 = v0[3];

  return sub_22BA05F80(v10);
}

uint64_t sub_22BA06894(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = sub_22BA06C78;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 128) = a1;
    v7 = sub_22BA06A10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22BA06A10()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v1, v2 & 1);
}

uint64_t sub_22BA06AB8()
{

  return MEMORY[0x2822009F8](sub_22BA06BE0, 0, 0);
}

uint64_t sub_22BA06BE0()
{
  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_22BA06C78()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22BA06D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[55] = a3;
  v4[56] = v3;
  v4[53] = a1;
  v4[54] = a2;
  v5 = sub_22B9349C8(&qword_27D8D5BD8, &qword_22BA1AF10);
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v6 = sub_22B9349C8(&qword_27D8D5BE0, &qword_22BA1AF18);
  v4[61] = v6;
  v4[62] = *(v6 - 8);
  v4[63] = swift_task_alloc();
  v7 = sub_22B9349C8(&qword_27D8D5BE8, &qword_22BA1AF20);
  v4[64] = v7;
  v4[65] = *(v7 - 8);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BA06ECC, 0, 0);
}

uint64_t sub_22BA06ECC()
{
  v45 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = sub_22B9358B4((v2 + 24), *(v2 + 48));
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v0 + 440);
    v40 = sub_22B980248(v4, 0);
    v42 = sub_22B9547F0(&v44, v40 + 4, v4, v5);
    v6 = v44;

    v7 = sub_22B951944(v6);
    if (v42 != v4)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    v10 = v40;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v35 = *(v0 + 544);
  v36 = *(v0 + 536);
  v11 = *(v0 + 520);
  v12 = *(v0 + 512);
  v33 = *(v0 + 504);
  v13 = *(v0 + 496);
  v34 = *(v0 + 488);
  v37 = *(v0 + 528);
  v38 = *(v0 + 480);
  v39 = *(v0 + 464);
  v41 = *(v0 + 456);
  v43 = *(v0 + 472);
  v14 = *(v0 + 424);
  v15 = *(v0 + 432);
  v16 = sub_22B9358B4((v2 + 24), *(v2 + 48))[5];
  v17 = v3[12];
  v19 = *(v3 + 4);
  v18 = *(v3 + 5);
  *(v0 + 64) = *(v3 + 3);
  *(v0 + 80) = v19;
  *(v0 + 96) = v18;
  *(v0 + 112) = v17;
  v21 = *(v3 + 1);
  v20 = *(v3 + 2);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v21;
  *(v0 + 48) = v20;

  v22 = sub_22BA05DC8(v10, v16, v14, v15);
  *(v0 + 552) = v22;

  v23 = sub_22B9358B4((v2 + 24), *(v2 + 48));
  v24 = *v23;
  v25 = *(v23 + 1);
  *(v0 + 152) = *(v23 + 2);
  *(v0 + 136) = v25;
  *(v0 + 120) = v24;
  v26 = *(v23 + 3);
  v27 = *(v23 + 4);
  v28 = *(v23 + 5);
  *(v0 + 216) = v23[12];
  *(v0 + 200) = v28;
  *(v0 + 184) = v27;
  *(v0 + 168) = v26;
  *(v0 + 352) = &type metadata for SyncZoneInfo;
  *(v0 + 360) = &off_283F57268;
  v29 = swift_allocObject();
  *(v0 + 328) = v29;
  memmove((v29 + 16), v23, 0x68uLL);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_task_alloc();
  v31[2] = v22;
  v31[3] = v30;
  v31[4] = v14;
  v31[5] = v15;
  v31[6] = v0 + 328;
  (*(v13 + 104))(v33, *MEMORY[0x277D858A0], v34);
  sub_22B951748(v0 + 120, v0 + 224);
  sub_22BA1035C();

  (*(v11 + 32))(v36, v35, v12);

  sub_22B936C4C((v0 + 328));
  (*(v11 + 16))(v37, v36, v12);
  sub_22B95194C(&qword_27D8D5BF0, &qword_27D8D5BE8, &qword_22BA1AF20, MEMORY[0x277D858E0]);
  sub_22BA1032C();
  (*(v39 + 32))(v43, v38, v41);
  (*(v11 + 8))(v36, v12);
  *(v0 + 560) = 0;
  v7 = sub_22BA07290;
  v8 = 0;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BA07290()
{
  swift_beginAccess();
  v1 = sub_22B95194C(&qword_27D8D5BF8, &qword_27D8D5BD8, &qword_22BA1AF10, MEMORY[0x277D858D0]);
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  v2[1] = sub_22BA0737C;
  v3 = *(v0 + 456);

  return MEMORY[0x282200308](v0 + 392, v3, v1);
}

uint64_t sub_22BA0737C()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = sub_22BA07870;
  }

  else
  {
    swift_endAccess();
    v4 = *(v2 + 400);
    *(v2 + 584) = *(v2 + 392);
    *(v2 + 592) = v4;
    *(v2 + 409) = *(v2 + 408);
    v3 = sub_22BA074AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22BA074AC()
{
  v1 = *(v0 + 409);
  if (v1 != 255)
  {
    if (v1)
    {
      v2 = *(v0 + 592);
      v3 = *(v0 + 584);
      if (!*(*(v0 + 440) + 16) || (v4 = sub_22B990B14(*(v0 + 584)), (v5 & 1) == 0))
      {
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v20 = sub_22BA0FEFC();
        sub_22B936CA8(v20, qword_28141AD40);
        v21 = v2;
        v22 = v3;
        v23 = v2;
        v24 = v22;
        v25 = sub_22BA0FEDC();
        v26 = sub_22BA1044C();

        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 409);
        v29 = *(v0 + 592);
        v30 = *(v0 + 584);
        if (v27)
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412546;
          v33 = _swift_stdlib_bridgeErrorToNSError();
          *(v31 + 4) = v33;
          *(v31 + 12) = 2112;
          *(v31 + 14) = v24;
          *v32 = v33;
          v32[1] = v30;
          _os_log_impl(&dword_22B92A000, v25, v26, "While fetching assets, got an error %@ for a recordID %@ we didn't expect to fetch", v31, 0x16u);
          sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v32, -1, -1);
          MEMORY[0x23189ADD0](v31, -1, -1);

          sub_22BA082C8(v30, v29, v28);
        }

        else
        {

          sub_22BA082C8(v30, v29, v28);
        }

        v17 = sub_22BA07290;
        v18 = 0;
        v19 = 0;
        goto LABEL_17;
      }

      v6 = *(v0 + 448);
      v7 = (*(*(v0 + 440) + 56) + 16 * v4);
      *(v0 + 616) = *v7;
      *(v0 + 624) = v7[1];
      *(v0 + 632) = *(v6 + 64);

      *(v0 + 640) = sub_22BA0FFCC();
      sub_22BA102EC();
      *(v0 + 648) = sub_22BA102DC();
      v8 = sub_22BA1029C();
      v10 = v9;
      v11 = sub_22BA07B4C;
    }

    else
    {
      *(v0 + 600) = *(*(v0 + 448) + 64);
      sub_22BA102EC();
      *(v0 + 608) = sub_22BA102DC();
      v8 = sub_22BA1029C();
      v10 = v16;
      v11 = sub_22BA07A44;
    }

    v17 = v11;
    v18 = v8;
    v19 = v10;
LABEL_17:

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  v12 = *(v0 + 552);
  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

  v13 = *(v0 + 8);
  v14 = *(v0 + 560);

  return v13(v14, 1);
}

uint64_t sub_22BA07870()
{
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22BA078D8, 0, 0);
}

uint64_t sub_22BA078D8()
{
  *(v0 + 416) = *(v0 + 576);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22BA07968, 0, 0);
}

uint64_t sub_22BA07968()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22BA07A44()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);

  [v1 updateAssetUsingRecord_];

  return MEMORY[0x2822009F8](sub_22BA07AC8, 0, 0);
}

uint64_t sub_22BA07AC8()
{
  v1 = *(v0 + 560);
  sub_22BA082C8(*(v0 + 584), *(v0 + 592), *(v0 + 409));
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 560) = v1 + 1;
    v2 = sub_22BA07290;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BA07B4C()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);

  [v2 markTransferAsNotSuccessfullyDownloadedWithGUID_];

  return MEMORY[0x2822009F8](sub_22BA07BD4, 0, 0);
}

uint64_t sub_22BA07BD4()
{
  v23 = v0;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 592);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;

  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1046C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 624);
  if (v7)
  {
    v9 = *(v0 + 616);
    v10 = *(v0 + 592);
    v11 = *(v0 + 584);
    v21 = *(v0 + 409);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 136315394;
    v15 = sub_22B99153C(v9, v8, &v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22B92A000, v5, v6, "Failed to fetch asset for attachment %s %@", v12, 0x16u);
    sub_22B95DEF0(v13);
    MEMORY[0x23189ADD0](v13, -1, -1);
    sub_22B936C4C(v14);
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v12, -1, -1);

    sub_22BA082C8(v11, v10, v21);
  }

  else
  {
    v17 = *(v0 + 592);
    v18 = *(v0 + 584);
    v19 = *(v0 + 409);

    sub_22BA082C8(v18, v17, v19);
  }

  return MEMORY[0x2822009F8](sub_22BA07290, 0, 0);
}

uint64_t sub_22BA07E28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22BA0800C();
}

uint64_t sub_22BA07EC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22BA0611C(a1, a2);
}

uint64_t sub_22BA07F6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22BA0813C();
}

uint64_t sub_22BA08028()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Starting Attachment asset download", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22BA08158()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Finished Attachment asset download", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_22BA0826C()
{
  result = qword_281414BE0;
  if (!qword_281414BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414BE0);
  }

  return result;
}

void sub_22BA082C8(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_22B99C258(a1, a2, a3 & 1);
  }
}

unint64_t sub_22BA082E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000015;
    if (a1 != 8)
    {
      v4 = 0xD000000000000023;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000012;
    }

    v5 = 0xD000000000000014;
    if (a1 == 5)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x616E614D74616863;
    v2 = 0xD000000000000015;
    if (a1 != 3)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000012;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_22BA08458()
{
  result = qword_27D8D5C00;
  if (!qword_27D8D5C00)
  {
    sub_22B948760(&qword_27D8D5C08, qword_22BA1AF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5C00);
  }

  return result;
}

uint64_t sub_22BA084BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_22BA082E0(*a1);
  v5 = v4;
  if (v3 == sub_22BA082E0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22BA08544()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA082E0(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA085A8(uint64_t a1)
{
  sub_22BA082E0(*v1);
  sub_22BA1008C();
}

uint64_t sub_22BA085FC(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22BA082E0(v2);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22BA0865C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BA08720(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22BA0868C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22BA082E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22BA086CC()
{
  result = qword_27D8D5C10;
  if (!qword_27D8D5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5C10);
  }

  return result;
}

unint64_t sub_22BA08720(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

BOOL sub_22BA0876C()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v0 = sub_22BA0A634(6u, 0);
  return (v1 & 1) == 0 && v0 >= sub_22B9317A8();
}

uint64_t sub_22BA08828(uint64_t a1, const char *a2)
{
  v3 = sub_22B92DA70(a1, 0);
  if (v3)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1044C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B92A000, v5, v6, a2, v7, 2u);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }
  }

  return v3 & 1;
}

id sub_22BA08920()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return [v1 syncCancelled];
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_22B97D720();
    v10 = sub_22B99153C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error setting sync date: %s", v6, 0xCu);
    sub_22B936C4C(v7);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  v11 = sub_22BA0FEDC();
  v12 = sub_22BA1044C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B92A000, v11, v12, "StateManager was nil in CloudState, returning false for isSyncCancelled.", v13, 2u);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  return 0;
}

id sub_22BA08AEC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    swift_unknownObjectRetain();
    v6 = sub_22BA0FFCC();
    v7 = [v5 tokenForKey_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD40);

    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_22B99153C(0xD000000000000023, 0x800000022BA1FF70, &v14);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_22B99153C(a1, a2, &v14);
      _os_log_impl(&dword_22B92A000, v9, v10, "%s: Missing sync token store, did not update change token %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    return 0;
  }

  return v7;
}

void sub_22BA08CC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(v3 + 48);
  if (v6)
  {
    swift_unknownObjectRetain();
    oslog = sub_22BA0FFCC();
    [v6 persistToken:a1 forKey:oslog];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD40);

    oslog = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_22B99153C(0xD00000000000001ELL, 0x800000022BA1DB20, &v13);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_22B99153C(a2, a3, &v13);
      _os_log_impl(&dword_22B92A000, oslog, v9, "%s: Missing sync token store, did not update server change token for key (%s)", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }
  }
}

void sub_22BA08EA4(char a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    if (a1)
    {
      v4 = sel_setSyncStopped;
    }

    else
    {
      v4 = sel_setSyncStarted;
    }

    [v3 v4];
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    oslog = sub_22BA0FEDC();
    v6 = sub_22BA1044C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = sub_22B97D720();
      v11 = sub_22B99153C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_22B92A000, oslog, v6, "Encountered error sync status: %s", v7, 0xCu);
      sub_22B936C4C(v8);
      MEMORY[0x23189ADD0](v8, -1, -1);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }
  }
}

uint64_t sub_22BA0903C(_BYTE *a1)
{
  v2 = sub_22BA0FD8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  v19 = *a1;
  if (v19 <= 1)
  {
    if (*a1)
    {
      if (v19 == 1)
      {
        sub_22BA0FD7C();
        v24 = sub_22BA09CBC();
        if (v24)
        {
          v25 = v24;
          swift_unknownObjectRetain();
          v26 = sub_22BA0FCFC();
          v27 = sub_22BA0FFCC();
          [v25 setSyncDate:v26 forKey:v27 shouldOverride:0];

          swift_unknownObjectRelease();
        }

        v28 = *(v3 + 8);
        v28(v15, v2);
        sub_22BA0FD7C();
        v29 = sub_22BA09CBC();
        if (v29)
        {
          v30 = v29;
          swift_unknownObjectRetain();
          v31 = sub_22BA0FCFC();
          v32 = sub_22BA0FFCC();
          [v30 setSyncDate:v31 forKey:v32 shouldOverride:1];

          swift_unknownObjectRelease();
        }

        return (v28)(v12, v2);
      }
    }

    else
    {
      sub_22BA0FD7C();
      v33 = sub_22BA09CBC();
      if (v33)
      {
        v34 = v33;
        swift_unknownObjectRetain();
        v35 = sub_22BA0FCFC();
        v36 = sub_22BA0FFCC();
        [v34 setSyncDate:v35 forKey:v36 shouldOverride:0];

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v18, v2);
    }
  }

  else
  {
    if (v19 - 2 < 2)
    {
LABEL_5:
      sub_22BA0FD7C();
      v20 = sub_22BA09CBC();
      if (v20)
      {
        v21 = v20;
        swift_unknownObjectRetain();
        v22 = sub_22BA0FCFC();
        v23 = sub_22BA0FFCC();
        [v21 setSyncDate:v22 forKey:v23 shouldOverride:1];

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v9, v2);
    }

    if (v19 != 4)
    {
      if (v19 != 6)
      {
        return result;
      }

      goto LABEL_5;
    }

    sub_22BA0FD7C();
    v37 = sub_22BA09CBC();
    if (v37)
    {
      v38 = v37;
      swift_unknownObjectRetain();
      v39 = sub_22BA0FCFC();
      v40 = sub_22BA0FFCC();
      [v38 setSyncDate:v39 forKey:v40 shouldOverride:1];

      swift_unknownObjectRelease();
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_22BA09450(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_22BA0FD8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_22BA0FD7C();
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      if ((a2 & 1) == 0)
      {
        return (*(v7 + 8))(v9, v6);
      }

      v23 = sub_22BA09CBC();
      if (v23)
      {
        v24 = v23;
        swift_unknownObjectRetain();
        v25 = sub_22BA0FCFC();
        v26 = sub_22BA0FFCC();
        [v24 setSyncDate:v25 forKey:v26 shouldOverride:0];

        swift_unknownObjectRelease();
      }

      v15 = sub_22BA09CBC();
      if (!v15)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v10 != 6)
    {
LABEL_16:
      if ((a2 & 1) == 0)
      {
        return (*(v7 + 8))(v9, v6);
      }

      goto LABEL_22;
    }

LABEL_11:
    if ((a2 & 1) == 0)
    {
      return (*(v7 + 8))(v9, v6);
    }

    v16 = sub_22BA09CBC();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      v18 = sub_22BA0FCFC();
      v19 = sub_22BA0FFCC();
      [v17 setSyncDate:v18 forKey:v19 shouldOverride:0];

      swift_unknownObjectRelease();
    }

    v15 = sub_22BA09CBC();
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if ((v10 - 1) < 3)
  {
    goto LABEL_11;
  }

  if (v10)
  {
    goto LABEL_16;
  }

  if ((a2 & 1) == 0)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v11 = sub_22BA09CBC();
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectRetain();
    v13 = sub_22BA0FCFC();
    v14 = sub_22BA0FFCC();
    [v12 setSyncDate:v13 forKey:v14 shouldOverride:0];

    swift_unknownObjectRelease();
  }

  v15 = sub_22BA09CBC();
  if (v15)
  {
LABEL_15:
    v20 = v15;
    swift_unknownObjectRetain();
    v21 = sub_22BA0FCFC();
    v22 = sub_22BA0FFCC();
    [v20 setSyncDate:v21 forKey:v22 shouldOverride:1];

    swift_unknownObjectRelease();
  }

LABEL_22:
  v27 = sub_22BA09CBC();
  if (v27)
  {
    v28 = v27;
    swift_unknownObjectRetain();
    v29 = sub_22BA0FCFC();
    v30 = sub_22BA0FFCC();
    [v28 setSyncDate:v29 forKey:v30 shouldOverride:1];

    swift_unknownObjectRelease();
  }

  v31 = *(v3 + 56);
  if (v31)
  {
    v32 = sub_22BA0FCFC();
    [v31 setLastSyncDate_];
  }

  return (*(v7 + 8))(v9, v6);
}

id sub_22BA0980C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  v8 = sub_22BA0FEFC();
  sub_22B936CA8(v8, qword_28141AD28);
  v9 = sub_22BA0FEDC();
  v10 = sub_22BA1046C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = v11;
    *v11 = 134217984;
    if (a2 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a2;
    }

    *(v11 + 4) = fmin(a1 / v13, 1.0);
    _os_log_impl(&dword_22B92A000, v9, v10, "Download Progress: %f", v11, 0xCu);
    MEMORY[0x23189ADD0](v12, -1, -1);
  }

  v14 = *(v4 + 56);
  if (v14)
  {
    [*(v4 + 56) setCloudKitHasAvailableRecordsToDownload_];
    if (a2 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a2;
    }

    [v14 setLastSyncDownloadProgress_];
  }

  result = sub_22BA09CBC();
  if (result)
  {

    return [result sendBroadcastToClient];
  }

  return result;
}

void sub_22BA099D8(unsigned __int8 *a1, void *a2, void *a3)
{
  v5 = *(v3 + 24);
  [v5 setBool:1 forKey:*a2];
  v6 = sub_22BA0FFCC();

  [v5 setObject:v6 forKey:*a3];
}

uint64_t sub_22BA09BB4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22BA09C30(uint64_t a1)
{
  v2 = *(*v1 + 56);
  if (v2)
  {
    v3 = sub_22BA0FF5C();
    [v2 setCloudKitSyncStatistics_];
  }
}

uint64_t sub_22BA09CBC()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = sub_22B97D720();
      v9 = sub_22B99153C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22B92A000, v3, v4, "Encountered error setting sync date: %s", v5, 0xCu);
      sub_22B936C4C(v6);
      MEMORY[0x23189ADD0](v6, -1, -1);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }
  }

  return v1;
}

uint64_t _s17MessagesCloudSync0C11CoordinatorC28readServerCountsFromDefaultsSDySSSDySSs5Int64VGGyFZ_0()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v0 = 0;
  v1 = MEMORY[0x277D84F98];
  do
  {
    v2 = v0 + 1;
    v3 = qword_28141ACF0;
    v4 = byte_283F50DF0[v0 + 32];
    v5 = sub_22BA0A80C(v4, qword_28141ACF0);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v8 = sub_22BA0A950(v4, v3);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_22BA082E0(v4);
    v13 = v12;
    sub_22B9349C8(&qword_27D8D5C80, &qword_22BA1B090);
    inited = swift_initStackObject();
    strcpy((inited + 32), "total_records");
    *(inited + 16) = xmmword_22BA13410;
    *(inited + 46) = -4864;
    *(inited + 48) = v7;
    strcpy((inited + 56), "live_records");
    *(inited + 69) = 0;
    *(inited + 70) = -5120;
    *(inited + 72) = v10;
    v15 = sub_22B9BC140(inited);
    swift_setDeallocating();
    sub_22B9349C8(&qword_27D8D5C88, &qword_22BA1B098);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BB5DC(v15, v11, v13, isUniquelyReferenced_nonNull_native);

    v0 = v2;
  }

  while (v2 != 10);
  return v1;
}

unint64_t sub_22BA09FF4()
{
  result = qword_27D8D5C90;
  if (!qword_27D8D5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5C90);
  }

  return result;
}

void sub_22BA0A048(void *a1)
{
  v2 = sub_22BA0FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ActionRecord(0);
  if (*(a1 + *(v9 + 68) + 8))
  {
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  sub_22B94498C(a1 + *(v9 + 64), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v11 = 0;
    if (a1[1])
    {
LABEL_6:
      v12 = sub_22BA0FFCC();
      goto LABEL_9;
    }
  }

  else
  {
    v11 = sub_22BA0FCFC();
    (*(v3 + 8))(v8, v2);
    if (a1[1])
    {
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_9:
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v10 time:v11 guid:v12 type:1];

  if (v13)
  {
    v14 = v13;
    sub_22BA0FD6C();
    v15 = sub_22BA0FCFC();
    (*(v3 + 8))(v5, v2);
    [v14 setTimeRead_];

    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22BA0A2A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    [v3 setChangeType_];
    sub_22B977794();
    if (v5)
    {
      v6 = sub_22BA0FFCC();
    }

    else
    {
      v6 = 0;
    }

    [v3 setOtherHandle_];

    v13 = sub_22B977D30();
    if (v13)
    {
      sub_22B98C248(v13);

      osloga = sub_22BA0FF5C();

      [v3 setMessageSummaryInfo_];
    }

    else
    {
      [v3 setMessageSummaryInfo_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22B99153C(a2, a3, &v16);
      _os_log_impl(&dword_22B92A000, oslog, v10, "No Proto for IMParticipantChangeItem %s", v11, 0xCu);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }
  }
}

uint64_t sub_22BA0A4D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = sub_22B9358B4((v0 + 24), v2);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = v1;
  v8 = sub_22BA10C5C();
  (*(v4 + 8))(v6, v2);
  [v7 removeObserver_];

  swift_unknownObjectRelease();
  sub_22B936C4C((v0 + 24));
  return swift_deallocClassInstance();
}

uint64_t sub_22BA0A634(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  sub_22B92DB4C(a1);
  v5 = sub_22BA0FFCC();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_22B949698(v11);
  }

  return a2;
}

void sub_22BA0A728()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_28141ACE8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_22BA0A7A0()
{
  v0 = *MEMORY[0x277D19A08];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    qword_28141ACF0 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BA0A80C(unsigned __int8 a1, void *a2)
{
  sub_22BA108FC();

  *&v11[0] = 0xD000000000000014;
  *(&v11[0] + 1) = 0x800000022BA20140;
  v4 = sub_22BA082E0(a1);
  MEMORY[0x231899730](v4);

  v5 = sub_22BA0FFCC();

  v6 = [a2 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B949698(v11);
    return 0;
  }
}

uint64_t sub_22BA0A950(unsigned __int8 a1, void *a2)
{
  sub_22BA108FC();

  *&v11[0] = 0xD000000000000013;
  *(&v11[0] + 1) = 0x800000022BA20120;
  v4 = sub_22BA082E0(a1);
  MEMORY[0x231899730](v4);

  v5 = sub_22BA0FFCC();

  v6 = [a2 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B949698(v11);
    return 0;
  }
}

void sub_22BA0AA94(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = sub_22BA10D2C();
  sub_22BA108FC();

  v6 = sub_22BA082E0(a2);
  MEMORY[0x231899730](v6);

  v7 = sub_22BA0FFCC();

  [a3 setObject:v5 forKey:v7];
}

uint64_t sub_22BA0AB6C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000022BA1C1D0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v3 == 1)
  {
    v6 = 0x800000022BA1C1D0;
  }

  else
  {
    v6 = 0x800000022BA1C1F0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F737265505A46;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA00000000004449;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000017;
    v4 = 0x800000022BA1C1F0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6E6F737265505A46;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000004449;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22BA10C6C();
  }

  return v11 & 1;
}

uint64_t sub_22BA0AC4C()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0ACF8(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22BA0AD90(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22BA0AE38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BA0B3C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22BA0AE68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0xD000000000000013;
  v5 = 0x800000022BA1C1D0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000017;
    v5 = 0x800000022BA1C1F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6E6F737265505A46;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22BA0AED0()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F737265505A46;
  }
}

unint64_t sub_22BA0AF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BA0B3C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BA0AF5C(uint64_t a1)
{
  v2 = sub_22BA0B658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BA0AF98(uint64_t a1)
{
  v2 = sub_22BA0B658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BA0AFD4(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D5CA8, &unk_22BA1B250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22BA0B658();
  sub_22BA10D9C();
  LOBYTE(v12) = 0;
  sub_22BA10BCC();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v11 = 1;
    sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
    sub_22B993430();
    sub_22BA10BEC();
    v12 = *(v3 + 32);
    v11 = 2;
    sub_22BA10BEC();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_22BA0B1A0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_22BA0B40C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_22BA0B1FC(_OWORD *a1, __int128 *a2)
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
  return sub_22BA0B244(v7, v8) & 1;
}

uint64_t sub_22BA0B244(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22BA10C6C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_22BA10C6C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

__n128 sub_22BA0B308(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22BA0B31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22BA0B364(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_22BA0B3C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22BA0B40C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5CA0, &qword_22BA1B248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22BA0B658();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  v25 = 0;
  v9 = sub_22BA10B1C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_22BA10ACC();
  v21 = v12;
  v23 = 2;
  v13 = sub_22BA10ACC();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_22B936C4C(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_22BA0B658()
{
  result = qword_281415E70[0];
  if (!qword_281415E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281415E70);
  }

  return result;
}

unint64_t sub_22BA0B6C0()
{
  result = qword_27D8D5CB0;
  if (!qword_27D8D5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CB0);
  }

  return result;
}

unint64_t sub_22BA0B718()
{
  result = qword_281415E60;
  if (!qword_281415E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E60);
  }

  return result;
}

unint64_t sub_22BA0B770()
{
  result = qword_281415E68;
  if (!qword_281415E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E68);
  }

  return result;
}

uint64_t sub_22BA0B7C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22BA0C17C();
}

uint64_t sub_22BA0B864(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22BA0B884, 0, 0);
}

uint64_t sub_22BA0B884()
{
  v33 = v0;
  v1 = [*(v0 + 16) guid];
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    v4 = sub_22BA0FFFC();
    v6 = v5;

    v7 = [v2 service];
    if (!v7)
    {
LABEL_5:

LABEL_6:
      v1 = 0;
      goto LABEL_7;
    }

    v8 = v7;
    v9 = sub_22BA0FFFC();
    v11 = v10;
    v12 = *MEMORY[0x277D1A5F0];
    v13 = [v12 containsObject_];

    if (v13)
    {

      goto LABEL_5;
    }

    v16 = *(v0 + 24);
    v17 = v16 + *(type metadata accessor for ActionRecord(0) + 84);
    v18 = *v17;
    v19 = *(v17 + 24);
    if (*v17 != 1 && v19 != 0)
    {
      v22 = *(v17 + 8);
      v21 = *(v17 + 16);
      sub_22B9E1B94(*v17, v22, v21, *(v17 + 24));
      v23 = v19;
      if ([v23 hasActualParentChatId])
      {
        v24 = [v23 actualParentChatId];

        if (v24)
        {

          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v25 = sub_22BA0FEFC();
    sub_22B936CA8(v25, qword_28141AD10);

    v26 = sub_22BA0FEDC();
    v27 = sub_22BA1042C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315394;
      v30 = sub_22B99153C(v4, v6, &v32);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      v31 = sub_22B99153C(v9, v11, &v32);

      *(v28 + 14) = v31;
      _os_log_impl(&dword_22B92A000, v26, v27, "Message %s has non legacy service %s, but cloud is missing proto4 overrides", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v29, -1, -1);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    else
    {
    }

    v1 = 1;
  }

LABEL_7:
  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_22BA0BBE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22BA0BC94;

  return sub_22BA0B864(a1);
}

uint64_t sub_22BA0BC94(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 40) = a1 & 1;

    return MEMORY[0x2822009F8](sub_22BA0BDE8, 0, 0);
  }
}

void sub_22BA0BDE8()
{
  v31 = v0;
  if (*(v0 + 40) != 1)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16 && (v17 = v16, objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
    {
      v19 = v18;
      v20 = *(v0 + 16);
      v21 = [v17 messageSummaryInfo];
      if (v21)
      {
LABEL_19:

        v28 = [v19 messageSummaryInfo];
        if (!v28)
        {
          v15 = 1;
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22 && (v23 = v22, objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) != 0))
      {
        v19 = v24;
        v25 = *(v0 + 16);
        v21 = [v23 messageSummaryInfo];
        if (v21)
        {
          goto LABEL_19;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          goto LABEL_24;
        }

        v26 = v15;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          goto LABEL_24;
        }

        v19 = v15;
        v27 = *(v0 + 16);
        v21 = [v26 messageSummaryInfo];
        if (v21)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_22:
    v15 = 0;
    goto LABEL_24;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1043C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = sub_22BA0FFFC();
    v13 = v12;

    v14 = sub_22B99153C(v11, v13, &v30);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_22B92A000, v4, v5, "Bad chatID found in message %s, marking for resync", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);

    v15 = 1;
  }

  else
  {

    v15 = 1;
  }

LABEL_24:
  v29 = *(v0 + 8);

  v29(v15);
}

uint64_t sub_22BA0C19C()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for ActionRecord(0) + 88));
  v3 = *v2;
  v0[6] = *v2;
  v4 = v2[1];
  v0[7] = v4;
  sub_22B95BE50(v3, v4);
  v5 = sub_22B9C7220();
  v0[8] = v5;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_22BA0C274;

  return sub_22B95BFAC(v5);
}

uint64_t sub_22BA0C274(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_22BA0C638;
  }

  else
  {
    *(v4 + 248) = a1 & 1;
    v5 = sub_22BA0C3A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22BA0C3A0()
{
  if (*(v0 + 248) == 1)
  {
    if (qword_281414F10 != -1)
    {
      swift_once();
    }

    v1 = [*(v0 + 64) guid];
    if (!v1)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v4 = v1;
    v5 = sub_22BA0FFFC();
    v7 = v6;

    sub_22B99F8F8(v5, v7);
    v9 = v8;
    *(v0 + 88) = v8;

    if (v9)
    {
      v10 = v9;
      v11 = swift_task_alloc();
      *(v0 + 96) = v11;
      *v11 = v0;
      v11[1] = sub_22BA0C69C;
      v12 = *(v0 + 64);

      return sub_22BA0BBE4(v10, v12);
    }

    v17 = qword_28141ADC8;
    *(v0 + 120) = qword_28141ADC8;
    if (v17)
    {
      v18 = qword_28141ADD0;
      *(v0 + 128) = qword_28141ADD0;
      *(v0 + 136) = *(v18 + 24);
      *(v0 + 144) = (v18 + 24) & 0xFFFFFFFFFFFFLL | 0xB149000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v19 = sub_22BA1029C();
      v3 = v20;
      *(v0 + 152) = v19;
      *(v0 + 160) = v20;
      v1 = sub_22BA0CC7C;
      v2 = v19;

      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v14 = *(v0 + 64);
    sub_22B952500();
    swift_allocError();
  }

  else
  {
    v14 = *(v0 + 64);
    sub_22B9F3DB4();
    swift_allocError();
    *v15 = 0;
  }

  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22BA0C638()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22BA0C69C(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = sub_22BA0C914;
  }

  else
  {
    *(v4 + 249) = a1 & 1;
    v5 = sub_22BA0C7D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22BA0C7D0()
{
  v1 = *(v0 + 40);
  [*(v0 + 88) setCloudKitSyncState_];
  if (*(v1 + 56))
  {
    v2 = sub_22BA0FFCC();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 40);
  [*(v0 + 88) setCloudKitRecordID_];

  if (*(v3 + 40))
  {
    v4 = sub_22BA0FFCC();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 88);
  [v5 setCloudKitRecordChangeTag_];

  [v5 setCloudKitServerChangeTokenBlob_];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_22BA0C980;
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 48);

  return sub_22B9A1FF0(v5, v7, v9, v8);
}

uint64_t sub_22BA0C914()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22BA0C980()
{

  return MEMORY[0x2822009F8](sub_22BA0CA7C, 0, 0);
}

void sub_22BA0CA7C()
{
  v19 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = sub_22BA0FFFC();
    v15 = v14;

    v16 = sub_22B99153C(v13, v15, &v18);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_22B92A000, v4, v5, "Updated existing action item for %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  v17(1);
}

uint64_t sub_22BA0CC7C()
{
  *(v0 + 250) = (*(v0 + 136))(*(v0 + 64)) & 1;

  return MEMORY[0x2822009F8](sub_22BA0CCF8, 0, 0);
}

void sub_22BA0CCF8()
{
  v20 = v0;
  if (*(v0 + 250) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_22BA0CF78;
    v2 = *(v0 + 64);

    sub_22B9A29DC(v2);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 64);
    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD10);
    v5 = v3;
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 64);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v9 guid];

      if (!v12)
      {
        __break(1u);
        return;
      }

      v13 = sub_22BA0FFFC();
      v15 = v14;

      v16 = sub_22B99153C(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v6, v7, "Should not store action record for %s, account or alias mismatch", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    else
    {
    }

    v17 = *(v0 + 64);
    sub_22BA0D698();
    swift_allocError();
    swift_willThrow();

    v18 = *(v0 + 8);

    v18();
  }
}

uint64_t sub_22BA0CF78()
{

  return MEMORY[0x2822009F8](sub_22BA0D074, 0, 0);
}

uint64_t sub_22BA0D074()
{
  v32 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    v14 = sub_22BA0FFFC();
    v16 = v15;

    v17 = sub_22B99153C(v14, v16, &v31);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_22B92A000, v4, v5, "Created action item for %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);

    if (!v0[7])
    {
LABEL_6:
      v18 = sub_22BA0FEDC();
      v19 = sub_22BA1044C();
      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[8];
      if (v20)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22B92A000, v18, v19, "No parentChatID to add this message to", v22, 2u);
        MEMORY[0x23189ADD0](v22, -1, -1);
      }

      v23 = v0[1];

      return v23(1);
    }
  }

  else
  {

    if (!v0[7])
    {
      goto LABEL_6;
    }
  }

  v25 = qword_28141ADC8;
  v0[22] = qword_28141ADC8;
  if (v25)
  {
    v26 = qword_28141ADD0;
    v0[23] = qword_28141ADD0;
    v0[24] = *(v26 + 72);
    v0[25] = (v26 + 72) & 0xFFFFFFFFFFFFLL | 0x91C7000000000000;
    v27 = v0[19];
    v28 = v0[20];

    v11 = sub_22BA0D3BC;
    v12 = v27;
    v13 = v28;

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v29 = v0[8];
  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v30 = v0[1];

  return v30();
}

uint64_t sub_22BA0D3BC()
{
  (*(v0 + 192))(*(v0 + 64), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2822009F8](sub_22BA0D434, 0, 0);
}

uint64_t sub_22BA0D434()
{
  v1 = qword_28141ADC8;
  v0[26] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[27] = qword_28141ADD0;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v4 = sub_22B990A58(v0[6], v0[7]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
    }

    else
    {
      v6 = -1;
    }

    v0[28] = v6;
    swift_endAccess();
    v0[29] = *(v2 + 80);
    v0[30] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
    v7 = v0[19];
    v8 = v0[20];

    return MEMORY[0x2822009F8](sub_22BA0D5A8, v7, v8);
  }

  else
  {
    v9 = v0[8];

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22BA0D5A8()
{
  (*(v0 + 232))(*(v0 + 64), *(v0 + 48), *(v0 + 56), *(v0 + 224));

  return MEMORY[0x2822009F8](sub_22BA0D630, 0, 0);
}

uint64_t sub_22BA0D630()
{
  v1 = *(v0 + 8);

  return v1(1);
}

unint64_t sub_22BA0D698()
{
  result = qword_27D8D5CB8;
  if (!qword_27D8D5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CB8);
  }

  return result;
}

unint64_t sub_22BA0D700()
{
  result = qword_27D8D5CC0;
  if (!qword_27D8D5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CC0);
  }

  return result;
}

uint64_t sub_22BA0D75C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BA0D7CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_22BA0D90C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for AttachmentRecord(uint64_t a1)
{
  result = qword_2814159A0;
  if (!qword_2814159A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BA0DBA0(uint64_t a1)
{
  sub_22B9651AC(319, &qword_281414C40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22B934C68(319);
    if (v2 <= 0x3F)
    {
      sub_22B9651AC(319, &qword_281415630, &type metadata for AttachmentMetadata);
      if (v3 <= 0x3F)
      {
        sub_22B9651AC(319, &unk_281416C20, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22BA0DC9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v38 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = v33 - v6;
  v7 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  MEMORY[0x28223BE20](v7);
  v42 = v33 - v9;
  v10 = sub_22B9349C8(&qword_27D8D5CC8, &qword_22BA1B588);
  v43 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for AttachmentRecord(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B9358B4(a1, a1[3]);
  sub_22BA0EF24();
  v16 = v44;
  sub_22BA10D8C();
  if (v16)
  {
    return sub_22B936C4C(a1);
  }

  v44 = v12;
  v35 = v15;
  v36 = v10;
  v34 = v13;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9358F8();
  v17 = v42;
  sub_22BA10D8C();
  v46[0] = 0;
  v18 = sub_22BA10ACC();
  v19 = v35;
  *v35 = v18;
  v19[1] = v20;
  v46[0] = 1;
  v19[2] = sub_22BA10ACC();
  v19[3] = v21;
  v46[0] = 2;
  v33[2] = 0;
  v19[4] = sub_22BA10ACC();
  v19[5] = v22;
  v46[0] = 3;
  v19[6] = sub_22BA10ACC();
  v19[7] = v23;
  v46[0] = 4;
  v19[8] = sub_22BA10ACC();
  v19[9] = v24;
  v46[0] = 5;
  v19[10] = sub_22BA10ACC();
  v19[11] = v25;
  v26 = sub_22BA0FD8C();
  v46[0] = 6;
  sub_22BA0EF78(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v33[1] = v26;
  sub_22BA10AFC();
  sub_22B935A74(v39, v19 + v34[10]);
  v46[0] = 7;
  v27 = v38;
  sub_22BA10AFC();
  sub_22B935A74(v27, v19 + v34[11]);
  v46[0] = 8;
  v28 = sub_22BA10ACC();
  v29 = (v35 + v34[12]);
  *v29 = v28;
  v29[1] = v30;
  v46[343] = 0;
  sub_22BA0EFC0();
  sub_22BA10AFC();
  memcpy(v35 + v34[13], v46, 0x140uLL);
  v46[342] = 1;
  sub_22B9363C8();
  sub_22BA10AFC();
  (*(v41 + 8))(v17, v40);
  (*(v43 + 8))(v44, v36);
  v31 = v35;
  *(v35 + v34[14]) = v45;
  sub_22B97CACC(v31, v37);
  sub_22B936C4C(a1);
  return sub_22B9AD928(v31);
}

uint64_t sub_22BA0E6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AttachmentRecord(0);
  memcpy(v11, (v3 + *(v7 + 52)), sizeof(v11));
  if (sub_22B97CA68(v11) != 1 && v11[39] && *(v11[39] + 16))
  {

    sub_22B990A58(a1, a2);
    if (v8)
    {

      sub_22BA0FC1C();
    }
  }

  v10 = sub_22BA0FC4C();
  return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_22BA0E7BC()
{
  v1 = type metadata accessor for AttachmentRecord(0);
  memcpy(v7, (v0 + *(v1 + 52)), sizeof(v7));
  if (sub_22B97CA68(v7) != 1)
  {
    v2 = v7[39];
    if (v7[39])
    {
      if (*(v7[39] + 16))
      {

        v3 = sub_22B990A58(6386028, 0xE300000000000000);
        if (v4)
        {
          v5 = *(*(v2 + 56) + (v3 << 6));

          return v5;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_22BA0E878(uint64_t a1, uint64_t a2)
{
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  v3 = *(type metadata accessor for AttachmentRecord(0) + 52);
  memcpy(__dst, (v2 + v3), sizeof(__dst));
  v4 = 0;
  if (sub_22B97CA68(__dst) != 1)
  {
    v4 = __dst[24];
  }

  memcpy(v15, (v2 + v3), sizeof(v15));
  if (sub_22B97CA68(v15) == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v15[38];
  }

  memcpy(v14, (v2 + v3), sizeof(v14));
  if (sub_22B97CA68(v14) == 1)
  {
    v6 = 0;
    if (v4)
    {
LABEL_10:
      v7 = sub_22BA0FFCC();
      goto LABEL_13;
    }
  }

  else
  {
    v6 = v14[6];

    if (v4)
    {
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_13:
  v8 = sub_22BA0FFCC();
  if (v5)
  {
    v9 = sub_22BA0FFCC();
    if (v6)
    {
LABEL_15:
      v10 = sub_22BA0FFCC();
      goto LABEL_18;
    }
  }

  else
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_18:
  v11 = IMDCopyAttachmentPersistentPath();

  if (v11)
  {
    v12 = sub_22BA0FFFC();
  }

  else
  {

    return 0;
  }

  return v12;
}

uint64_t sub_22BA0EA9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x617461646174656DLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000022BA1BAB0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x617461646174656DLL;
  }

  if (*a2)
  {
    v6 = 0x800000022BA1BAB0;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22BA0EB48()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0EBD0(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22BA0EC44(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0ECC8@<X0>(char *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22BA0ED28(unint64_t *a1@<X8>)
{
  v2 = 0x800000022BA1BAB0;
  v3 = 0x617461646174656DLL;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_22BA0ED6C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_22BA0EDAC@<X0>(char *a3@<X8>)
{
  v4 = sub_22BA10AAC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_22BA0EE10(uint64_t a1)
{
  v2 = sub_22BA0EF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BA0EE4C(uint64_t a1)
{
  v2 = sub_22BA0EF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BA0EEA0(uint64_t a1)
{
  *(a1 + 8) = sub_22BA0EF78(&qword_2814159B8, type metadata accessor for AttachmentRecord, &unk_22BA1B53C);
  result = sub_22BA0EF78(&qword_2814159C0, type metadata accessor for AttachmentRecord, &unk_22BA1B514);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BA0EF24()
{
  result = qword_2814159D8;
  if (!qword_2814159D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159D8);
  }

  return result;
}

uint64_t sub_22BA0EF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22BA0EFC0()
{
  result = qword_281415638;
  if (!qword_281415638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415638);
  }

  return result;
}

unint64_t sub_22BA0F028()
{
  result = qword_27D8D5CD0;
  if (!qword_27D8D5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CD0);
  }

  return result;
}

unint64_t sub_22BA0F080()
{
  result = qword_2814159C8;
  if (!qword_2814159C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159C8);
  }

  return result;
}

unint64_t sub_22BA0F0D8()
{
  result = qword_2814159D0;
  if (!qword_2814159D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159D0);
  }

  return result;
}

uint64_t sub_22BA0F12C()
{
  sub_22BA102EC();
  result = sub_22BA102DC();
  qword_281416458 = result;
  return result;
}

uint64_t static CloudSyncWorkActor.shared.getter()
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BA0F1E0()
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BA0F28C()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0F36C(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22BA0F438(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22BA0F514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BA0F81C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22BA0F544(unint64_t *a1@<X8>)
{
  v2 = 0xEE0064756F6C4369;
  v3 = 0x6D6F724664616572;
  v4 = 0x800000022BA1C230;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x646574726F706D69;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x546E657474697277;
    v2 = 0xEF64756F6C43696FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22BA0F6A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0F7C8();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_22BA0F6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22BA0F7C8();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_22BA0F774()
{
  result = qword_281416670;
  if (!qword_281416670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416670);
  }

  return result;
}

unint64_t sub_22BA0F7C8()
{
  result = qword_281416668;
  if (!qword_281416668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416668);
  }

  return result;
}

unint64_t sub_22BA0F81C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_22BA0F874()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22BA0F8E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BA1090C();
  *a1 = result;
  return result;
}

id sub_22BA0F910()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithEntityName_];

  return v2;
}