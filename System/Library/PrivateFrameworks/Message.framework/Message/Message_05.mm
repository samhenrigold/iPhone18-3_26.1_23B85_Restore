uint64_t sub_1B03F41B0()
{
  v1 = *(*(_s6LoggerVMa(0) - 8) + 80);
  v4 = (v1 + 24) & ~v1;
  MEMORY[0x1E69E5920](*(v0 + 16));
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 8))(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1B03F4C20()
{
  v13 = 0;
  v0 = _s18MailboxPersistenceVMa(0);
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v1 = &v5 - v6;
  v9 = &v5 - v6;
  v13 = v2;
  v7 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v8 = &v12;
  swift_beginAccess();
  sub_1B03F4D78(v7, v1);
  swift_endAccess();
  v11 = sub_1B03F4EB8();
  v10 = v3;
  sub_1B03F4F08(v9);
  return v11;
}

uint64_t _s18MailboxPersistenceVMa(uint64_t a1)
{
  v2 = qword_1EB6DBF00;
  if (!qword_1EB6DBF00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B03F4D78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = _s18MailboxPersistenceVMa(0);
  v5 = *(v7 + 20);
  v6 = *(a1 + v5);
  MEMORY[0x1E69E5928](v6);
  *(a2 + v5) = v6;
  v3 = *(v7 + 24);
  v12 = (a1 + v3);
  v14 = (a2 + v3);
  *(a2 + v3) = *(a1 + v3);
  v9 = *(a1 + v3 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[1] = v9;
  v10 = v12[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[2] = v10;
  v11 = v12[3];

  v14[3] = v11;
  v15 = v12[4];

  result = a2;
  v14[4] = v15;
  return result;
}

uint64_t sub_1B03F4EB8()
{
  v2 = *(v0 + *(_s18MailboxPersistenceVMa(0) + 24));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B03F4F08(uint64_t a1)
{
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))(a1);
  v3 = _s18MailboxPersistenceVMa(0);
  MEMORY[0x1E69E5920](*(a1 + *(v3 + 20)));

  return a1;
}

uint64_t sub_1B03F4FD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s6LoggerVMa(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1B03F5058(uint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a1;
  v39 = a2;
  v38 = a3 & 1;
  v37 = a4;
  v35 = a5;
  v36 = a6;
  v33 = a7;
  v34 = a8;
  v32 = v8;
  v24 = sub_1B03F525C();
  v31 = v24;
  sub_1B03F52C0(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  SyncRequest.init(kind:mailboxes:updateMailboxList:)();
  v25 = v9;
  v26 = v10;
  v23 = v11;
  v28 = v9;
  v29 = v10;
  v30 = v11 & 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B03F5398(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B03F5540(v24, a2, a5, a6);
  v17 = v12;

  sub_1B03F79D0(v24, v25, v26, v23 & 1, v20, a1, 0, v22, v41, v17, a7, a8);
  memcpy(__dst, v41, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  sub_1B0E452E8();
  return v24;
}

uint64_t sub_1B03F525C()
{
  v3 = *(v0 + 8);
  v1 = SyncRequest.ID.makeNext()(v3);
  result = v3;
  *(v0 + 8) = v1;
  return result;
}

uint64_t SyncRequest.ID.makeNext()(int a1)
{
  if ((a1 + 1) > 1)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B03F52C0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 3;
    }

    else if (a1 == 3)
    {
      return sub_1B03904C0() & 1;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 2;
  }
}

BOOL sub_1B03F53C8(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B03F5540(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v35 = 0;
  v36 = 0;
  v30 = 0.0;
  v34 = a1;
  v33 = a2;
  v31 = a3;
  v32 = a4;
  switch(a2)
  {
    case 0:
    case 1:
      goto LABEL_5;
    case 2:
      v30 = -1.0;
      break;
    case 3:
      v30 = -1.0;
      break;
    default:
LABEL_5:
      v30 = 330.0;
      break;
  }

  v29[0] = sub_1B0E46A28();
  v29[1] = v4;
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28[4] = a3;
  v28[5] = a4;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v28[0] = v28[6];
  v28[1] = v28[7];
  v28[2] = v28[8];
  v28[3] = v28[9];
  sub_1B0E46A08();
  sub_1B03F5C58(v28);
  v6 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v6);

  v27 = a2;
  sub_1B03F5C84();
  sub_1B0E469F8();
  v7 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v7);

  v26 = a1;
  sub_1B0E469F8();
  v8 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v8);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v29);
  sub_1B0E44C88();
  v18 = sub_1B0E44AC8();
  v19 = CPPowerAssertionCreate();
  MEMORY[0x1E69E5920](v18);

  if (v19)
  {
    v17 = v19;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v35 = v17;
  v25[0] = sub_1B0E46A28();
  v25[1] = v9;
  v10 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v10);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24[4] = a3;
  v24[5] = a4;
  sub_1B0E45738();
  v24[0] = v24[6];
  v24[1] = v24[7];
  v24[2] = v24[8];
  v24[3] = v24[9];
  sub_1B0E46A08();
  sub_1B03F5C58(v24);
  v11 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v11);

  sub_1B0E469F8();
  v12 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v12);

  sub_1B0E469F8();
  v13 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v13);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v25);
  sub_1B0E44C88();
  sub_1B0E44BC8();

  v16 = os_transaction_create();
  swift_unknownObjectRelease();

  if (v16)
  {
    v15 = v16;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  swift_unknownObjectRetain();
  v36 = v15;

  sub_1B03F7998(&v35);
  return v17;
}

unint64_t sub_1B03F5BE0()
{
  v2 = qword_1EB6DB898;
  if (!qword_1EB6DB898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03F5C84()
{
  v2 = qword_1EB6DBFE0;
  if (!qword_1EB6DBFE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFE0);
    return WitnessTable;
  }

  return v2;
}

void sub_1B03F5EEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFTaskAssertion;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t tablesForOptionsAndCriterion(uint64_t a1, void *a2, int a3)
{
  v4 = a1;
  v5 = a2;
  v6 = addOptionsForCriterion(v4, v5);
  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 & 0xFFBFFFF0;
  }

  if ((v7 & 8) != 0)
  {
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterSupported())
      {
        v8 = 36864;
      }

      else
      {
        v8 = 4096;
      }
    }

    else
    {
      v8 = 4096;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = _os_feature_enabled_impl();
  if (a3)
  {
    v10 = 1572864;
  }

  else
  {
    v10 = 0x80000;
  }

  if ((v9 & (v7 >> 5)) == 0)
  {
    v10 = 0;
  }

  v11 = (v7 >> 1) & 2 | (4 * (v7 & 3)) | (((v7 >> 4) & 1) << 10) & 0xFFFFBFFF | (v7 >> 5) & 0x8000 | (((v7 >> 6) & 1) << 14);
  v12 = (v7 >> 5) & 0x70000 | v8 | v10;

  return v11 | v12;
}

uint64_t addOptionsForCriterion(unsigned int a1, void *a2)
{
  v3 = a2;
  v4 = [v3 includesCriterionSatisfyingPredicate:isReadLaterCriterion restrictive:0];
  v5 = [v3 includesCriterionSatisfyingPredicate:isSendLaterCriterion restrictive:0];
  v6 = [v3 includesCriterionSatisfyingPredicate:isFollowUpCriterion restrictive:0];
  v7 = [v3 includesCriterionSatisfyingPredicate:isSenderBucketCriterion restrictive:0];
  v8 = a1 | 0x100000;
  if ((((v6 | v5) | v4) & 1) == 0)
  {
    v8 = a1;
  }

  if (v7)
  {
    v9 = v8 | 0x200000;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

BOOL isFollowUpCriterion(void *a1)
{
  v1 = a1;
  v2 = [v1 criterionType] == 47 || objc_msgSend(v1, "criterionType") == 48;

  return v2;
}

uint64_t _criterionCannotUseSearchableIndex(void *a1)
{
  v1 = a1;
  v2 = [v1 criterionType];
  v3 = 0;
  if (v2 <= 0x29)
  {
    if (((1 << v2) & 0x30A00000204) != 0)
    {
      v3 = 1;
    }

    else if (v2 == 1)
    {
      v5 = [v1 _attributesForHeaderCriterion];
      v3 = [v5 count] != 0;
    }

    else if (v2 == 11)
    {
      v3 = [v1 preferFullTextSearch];
    }
  }

  return v3 ^ 1u;
}

__CFString *expressionForOperator(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 < 8)
  {
    return off_1E7AA2430[a1];
  }

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "unsupported operator %d", v5, 8u);
  }

  return @"=";
}

id tablesForBaseTableAndOtherTables(int a1, unsigned int a2)
{
  v2 = "messages %s";
  v3 = a2 & 0xFFFFFFBF;
  v4 = "attachments AS attachment JOIN messages ON attachment.message_id = messages.ROWID %s";
  v5 = a2 & 0xFFFEFFFF;
  v6 = "senders JOIN sender_addresses ON senders.ROWID = sender_addresses.sender JOIN messages ON senders_addresses.address = messages.sender %s";
  v7 = "brand_indicators JOIN messages ON brand_indicators.ROWID = messages.brand_indicator %s";
  v8 = a2 & 0xFFFDFFFF;
  if (a1 != 0x20000)
  {
    v8 = a2;
    v7 = "messages %s";
  }

  if (a1 != 0x10000)
  {
    v5 = v8;
    v6 = v7;
  }

  if (a1 != 64)
  {
    v3 = v5;
    v4 = v6;
  }

  v9 = a2 & 0xFFFFFFFD;
  v10 = a2 & 0xFFFFFFF7;
  v11 = a2 & 0xFFFFFFEF;
  if (a1 == 16)
  {
    v2 = "mailboxes JOIN messages ON mailboxes.ROWID = messages.mailbox %s";
  }

  else
  {
    v11 = a2;
  }

  if (a1 == 8)
  {
    v2 = "addresses AS sender JOIN messages ON sender.ROWID = messages.sender %s";
  }

  else
  {
    v10 = v11;
  }

  if (a1 == 2)
  {
    v2 = "addresses AS recipient JOIN recipients ON recipient.ROWID = recipients.address JOIN messages ON recipients.message = messages.ROWID %s";
  }

  else
  {
    v9 = v10;
  }

  v12 = a1 <= 63;
  if (a1 <= 63)
  {
    v13 = v9;
  }

  else
  {
    v13 = v3;
  }

  if (v12)
  {
    v14 = v2;
  }

  else
  {
    v14 = v4;
  }

  v15 = joinsForTables(v13);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  asprintf(&v18, v14, v15);
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
  free(v18);
  free(v15);

  return v16;
}

char *joinsForTables(int a1)
{
  v2 = "";
  if (_os_feature_enabled_impl())
  {
    v3 = EMIsGreymatterSupported();
    v4 = " LEFT OUTER JOIN generated_summaries ON message_global_data.generated_summary = generated_summaries.ROWID";
    if ((a1 & 0x1000) == 0)
    {
      v4 = "";
    }

    if (v3)
    {
      v2 = v4;
    }
  }

  v5 = _os_feature_enabled_impl();
  v6 = "";
  v7 = "";
  v8 = "";
  if (v5)
  {
    v7 = " LEFT OUTER JOIN business_addresses ON messages.sender = business_addresses.address";
    if ((a1 & 0x80000) == 0)
    {
      v7 = "";
    }

    v8 = " LEFT OUTER JOIN businesses ON business_addresses.business = businesses.ROWID";
    if ((a1 & 0x100000) == 0)
    {
      v8 = "";
    }
  }

  v9 = " JOIN searchable_rebuild ON messages.rowid = searchable_rebuild.message_id";
  if ((a1 & 0x40000) == 0)
  {
    v9 = "";
  }

  v10 = " LEFT OUTER JOIN brand_indicators ON messages.brand_indicator = brand_indicators.ROWID";
  if ((a1 & 0x20000) == 0)
  {
    v10 = "";
  }

  v11 = " LEFT OUTER JOIN sender_addresses ON messages.sender = sender_addresses.address LEFT OUTER JOIN senders ON sender_addresses.sender = senders.ROWID";
  if ((a1 & 0x10000) == 0)
  {
    v11 = "";
  }

  v12 = " LEFT OUTER JOIN message_global_data ON messages.global_message_id = message_global_data.ROWID";
  if ((a1 & 0x8000) == 0)
  {
    v12 = "";
  }

  v13 = " JOIN conversations AS conversations ON messages.conversation_id = conversations.conversation_id";
  if ((a1 & 0x400) == 0)
  {
    v13 = "";
  }

  v14 = " LEFT OUTER JOIN summaries ON messages.summary = summaries.ROWID";
  if ((a1 & 0x1000) == 0)
  {
    v14 = "";
  }

  v15 = " JOIN mailboxes AS mailbox ON messages.mailbox = mailbox.ROWID";
  if ((a1 & 0x10) == 0)
  {
    v15 = "";
  }

  if ((a1 & 8) != 0)
  {
    v16 = " LEFT OUTER JOIN addresses AS sender ON messages.sender = sender.ROWID";
  }

  else
  {
    v16 = "";
  }

  if ((a1 & 4) != 0)
  {
    v6 = " LEFT OUTER JOIN subjects ON messages.subject = subjects.ROWID";
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  asprintf(&v18, "%s%s%s%s%s%s%s%s%s%s%s%s", v6, v16, v15, v14, v13, v12, v2, v11, v10, v9, v7, v8);
  return v18;
}

void sub_1B03F790C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void *sub_1B03F79D0@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(__src[0]) = a1;
  LOBYTE(__src[1]) = a2;
  __src[2] = a3;
  LOBYTE(__src[3]) = a4;
  BYTE1(__src[3]) = a5;
  __src[4] = a6;
  LOBYTE(__src[5]) = a7 & 1;
  __src[6] = a8;
  __src[7] = a10;
  __src[8] = a11;
  __src[9] = a12;
  return memcpy(a9, __src, 0x50uLL);
}

uint64_t sub_1B03F7A78(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E452A8();

  return v2;
}

uint64_t sub_1B03F7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_1B0E469C8();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_1B03F7C00(uint64_t a1)
{
  v310 = a1;
  v238 = sub_1B0A1AB70;
  v239 = sub_1B039BBE8;
  v240 = sub_1B0394C30;
  v241 = sub_1B0394C24;
  v242 = sub_1B039BA2C;
  v243 = sub_1B039BA88;
  v244 = sub_1B039BB94;
  v245 = sub_1B0394C24;
  v246 = sub_1B039BBA0;
  v247 = sub_1B039BC08;
  v248 = sub_1B0A1AB68;
  v249 = sub_1B06BCD8C;
  v250 = sub_1B0398F5C;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0399178;
  v253 = sub_1B0398F5C;
  v254 = sub_1B0398F5C;
  v255 = sub_1B039BA94;
  v256 = sub_1B0398F5C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0399178;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0398F5C;
  v261 = sub_1B03991EC;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B03992D4;
  v265 = sub_1B039BBE8;
  v266 = sub_1B0394C24;
  v267 = sub_1B039BA2C;
  v268 = sub_1B039BA88;
  v269 = sub_1B0394C24;
  v270 = sub_1B039BBA0;
  v271 = sub_1B039BC08;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B0399178;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B039BA94;
  v278 = sub_1B0398F5C;
  v279 = sub_1B0398F5C;
  v280 = sub_1B0399178;
  v281 = sub_1B0398F5C;
  v282 = sub_1B0398F5C;
  v283 = sub_1B03991EC;
  v335 = 0;
  v334 = 0;
  v284 = 0;
  v328 = 0;
  v320 = 0;
  v299 = 0;
  v285 = sub_1B0E439A8();
  v286 = *(v285 - 8);
  v287 = v285 - 8;
  v288 = (*(v286 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v289 = v120 - v288;
  v290 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v291 = v120 - v290;
  v292 = _s6LoggerVMa(v4);
  v293 = (*(*(v292 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v299);
  v294 = v120 - v293;
  v295 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v296 = v120 - v295;
  v297 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v298 = v120 - v297;
  v300 = sub_1B0E44238();
  v301 = *(v300 - 8);
  v302 = v300 - 8;
  v303 = (*(v301 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v299);
  v304 = v120 - v303;
  v305 = sub_1B0E44288();
  v306 = *(v305 - 8);
  v307 = v305 - 8;
  v308 = (*(v306 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v310);
  v309 = v120 - v308;
  v335 = v9;
  v334 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v310)
  {
    v236 = v310;
    v233 = v310;
    v312 = v310;
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    sub_1B06E3518();
    sub_1B0E45728();
    v234 = v311;

    v235 = v234;
  }

  else
  {
    v235 = 0;
  }

  v231 = v235;
  if (v235)
  {
    v230 = v231;
    v228 = v231;
    v328 = v231;
    MailboxRowID.init(_:)([v231 databaseID], &v326);
    v229 = v326;
    if (v327)
    {
      v14 = v291;
      v186 = &unk_1EB737000;
      sub_1B0394784(v237 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v298);
      (*(v286 + 16))(v14, v298, v285);
      sub_1B039480C(v298);

      sub_1B0394784(v237 + v186[314], v296);
      v15 = (v296 + *(v292 + 20));
      v187 = *v15;
      v188 = *(v15 + 1);
      sub_1B039480C(v296);

      v190 = 24;
      v201 = 7;
      v16 = swift_allocObject();
      v17 = v188;
      v192 = v16;
      *(v16 + 16) = v187;
      *(v16 + 20) = v17;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v18 = swift_allocObject();
      v19 = v188;
      v189 = v18;
      *(v18 + 16) = v187;
      *(v18 + 20) = v19;

      v200 = 32;
      v20 = swift_allocObject();
      v21 = v189;
      v197 = v20;
      *(v20 + 16) = v239;
      *(v20 + 24) = v21;
      sub_1B0394868();
      sub_1B0394868();

      MEMORY[0x1E69E5928](v228);
      v202 = swift_allocObject();
      *(v202 + 16) = v228;
      v222 = sub_1B0E43988();
      v223 = sub_1B0E458E8();
      v199 = 17;
      v204 = swift_allocObject();
      v194 = 16;
      *(v204 + 16) = 16;
      v205 = swift_allocObject();
      v196 = 4;
      *(v205 + 16) = 4;
      v22 = swift_allocObject();
      v191 = v22;
      *(v22 + 16) = v240;
      *(v22 + 24) = 0;
      v23 = swift_allocObject();
      v24 = v191;
      v206 = v23;
      *(v23 + 16) = v241;
      *(v23 + 24) = v24;
      v207 = swift_allocObject();
      *(v207 + 16) = 0;
      v208 = swift_allocObject();
      *(v208 + 16) = 1;
      v25 = swift_allocObject();
      v26 = v192;
      v193 = v25;
      *(v25 + 16) = v242;
      *(v25 + 24) = v26;
      v27 = swift_allocObject();
      v28 = v193;
      v209 = v27;
      *(v27 + 16) = v243;
      *(v27 + 24) = v28;
      v210 = swift_allocObject();
      *(v210 + 16) = v194;
      v211 = swift_allocObject();
      *(v211 + 16) = v196;
      v29 = swift_allocObject();
      v195 = v29;
      *(v29 + 16) = v244;
      *(v29 + 24) = 0;
      v30 = swift_allocObject();
      v31 = v195;
      v212 = v30;
      *(v30 + 16) = v245;
      *(v30 + 24) = v31;
      v213 = swift_allocObject();
      *(v213 + 16) = 0;
      v214 = swift_allocObject();
      *(v214 + 16) = v196;
      v32 = swift_allocObject();
      v33 = v197;
      v198 = v32;
      *(v32 + 16) = v246;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v198;
      v215 = v34;
      *(v34 + 16) = v247;
      *(v34 + 24) = v35;
      v216 = swift_allocObject();
      *(v216 + 16) = 0;
      v217 = swift_allocObject();
      *(v217 + 16) = 8;
      v36 = swift_allocObject();
      v37 = v202;
      v203 = v36;
      *(v36 + 16) = v248;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v203;
      v219 = v38;
      *(v38 + 16) = v249;
      *(v38 + 24) = v39;
      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v218 = sub_1B0E46A48();
      v220 = v40;

      v41 = v204;
      v42 = v220;
      *v220 = v250;
      v42[1] = v41;

      v43 = v205;
      v44 = v220;
      v220[2] = v251;
      v44[3] = v43;

      v45 = v206;
      v46 = v220;
      v220[4] = v252;
      v46[5] = v45;

      v47 = v207;
      v48 = v220;
      v220[6] = v253;
      v48[7] = v47;

      v49 = v208;
      v50 = v220;
      v220[8] = v254;
      v50[9] = v49;

      v51 = v209;
      v52 = v220;
      v220[10] = v255;
      v52[11] = v51;

      v53 = v210;
      v54 = v220;
      v220[12] = v256;
      v54[13] = v53;

      v55 = v211;
      v56 = v220;
      v220[14] = v257;
      v56[15] = v55;

      v57 = v212;
      v58 = v220;
      v220[16] = v258;
      v58[17] = v57;

      v59 = v213;
      v60 = v220;
      v220[18] = v259;
      v60[19] = v59;

      v61 = v214;
      v62 = v220;
      v220[20] = v260;
      v62[21] = v61;

      v63 = v215;
      v64 = v220;
      v220[22] = v261;
      v64[23] = v63;

      v65 = v216;
      v66 = v220;
      v220[24] = v262;
      v66[25] = v65;

      v67 = v217;
      v68 = v220;
      v220[26] = v263;
      v68[27] = v67;

      v69 = v219;
      v70 = v220;
      v220[28] = v264;
      v70[29] = v69;
      sub_1B0394964();

      if (os_log_type_enabled(v222, v223))
      {
        v71 = v284;
        v179 = sub_1B0E45D78();
        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v178 = 0;
        v180 = sub_1B03949A8(0, v177, v177);
        v181 = sub_1B03949A8(v178, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v182 = &v325;
        v325 = v179;
        v183 = &v324;
        v324 = v180;
        v184 = &v323;
        v323 = v181;
        sub_1B0394A48(0, &v325);
        sub_1B0394A48(5, v182);
        v321 = v250;
        v322 = v204;
        sub_1B03949FC(&v321, v182, v183, v184);
        v185 = v71;
        if (v71)
        {

          __break(1u);
        }

        else
        {
          v321 = v251;
          v322 = v205;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v176 = 0;
          v321 = v252;
          v322 = v206;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v175 = 0;
          v321 = v253;
          v322 = v207;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v174 = 0;
          v321 = v254;
          v322 = v208;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v173 = 0;
          v321 = v255;
          v322 = v209;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v172 = 0;
          v321 = v256;
          v322 = v210;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v171 = 0;
          v321 = v257;
          v322 = v211;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v170 = 0;
          v321 = v258;
          v322 = v212;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v169 = 0;
          v321 = v259;
          v322 = v213;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v168 = 0;
          v321 = v260;
          v322 = v214;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v167 = 0;
          v321 = v261;
          v322 = v215;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v166 = 0;
          v321 = v262;
          v322 = v216;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v165 = 0;
          v321 = v263;
          v322 = v217;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          v164 = 0;
          v321 = v264;
          v322 = v219;
          sub_1B03949FC(&v321, &v325, &v324, &v323);
          _os_log_impl(&dword_1B0389000, v222, v223, "[%.*hhx-%.*X] Not temporarily growing fetch window, invalid row ID %lld.", v179, 0x21u);
          v163 = 0;
          sub_1B03998A8(v180, 0, v177);
          sub_1B03998A8(v181, v163, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v222);
      (*(v286 + 8))(v291, v285);
      return MEMORY[0x1E69E5920](v228);
    }

    else
    {
      v227 = v229;
      v224 = v229;
      v320 = v229;
      v226 = *(v237 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
      MEMORY[0x1E69E5928](v226);

      v10 = swift_allocObject();
      v11 = v224;
      v12 = v238;
      *(v10 + 16) = v237;
      *(v10 + 24) = v11;
      v318 = v12;
      v319 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v314 = 1107296256;
      v315 = 0;
      v316 = sub_1B038C908;
      v317 = &block_descriptor_868;
      v225 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v309, v304, v225);
      (*(v301 + 8))(v304, v300);
      (*(v306 + 8))(v309, v305);
      _Block_release(v225);

      MEMORY[0x1E69E5920](v226);
      return MEMORY[0x1E69E5920](v228);
    }
  }

  else
  {
    v72 = v289;
    v130 = &unk_1EB737000;
    sub_1B0394784(v237 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v294);
    (*(v286 + 16))(v72, v294, v285);
    sub_1B039480C(v294);

    sub_1B0394784(v237 + v130[314], v296);
    v73 = (v296 + *(v292 + 20));
    v132 = *v73;
    v133 = *(v73 + 1);
    sub_1B039480C(v296);

    v131 = 24;
    v143 = 7;
    v74 = swift_allocObject();
    v75 = v133;
    v136 = v74;
    *(v74 + 16) = v132;
    *(v74 + 20) = v75;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v76 = swift_allocObject();
    v77 = v133;
    v134 = v76;
    *(v76 + 16) = v132;
    *(v76 + 20) = v77;

    v142 = 32;
    v78 = swift_allocObject();
    v79 = v134;
    v144 = v78;
    *(v78 + 16) = v265;
    *(v78 + 24) = v79;
    sub_1B0394868();
    sub_1B0394868();

    v161 = sub_1B0E43988();
    v162 = sub_1B0E458E8();
    v140 = 17;
    v146 = swift_allocObject();
    v138 = 16;
    *(v146 + 16) = 16;
    v147 = swift_allocObject();
    v141 = 4;
    *(v147 + 16) = 4;
    v80 = swift_allocObject();
    v135 = v80;
    *(v80 + 16) = v240;
    *(v80 + 24) = 0;
    v81 = swift_allocObject();
    v82 = v135;
    v148 = v81;
    *(v81 + 16) = v266;
    *(v81 + 24) = v82;
    v149 = swift_allocObject();
    *(v149 + 16) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = 1;
    v83 = swift_allocObject();
    v84 = v136;
    v137 = v83;
    *(v83 + 16) = v267;
    *(v83 + 24) = v84;
    v85 = swift_allocObject();
    v86 = v137;
    v151 = v85;
    *(v85 + 16) = v268;
    *(v85 + 24) = v86;
    v152 = swift_allocObject();
    *(v152 + 16) = v138;
    v153 = swift_allocObject();
    *(v153 + 16) = v141;
    v87 = swift_allocObject();
    v139 = v87;
    *(v87 + 16) = v244;
    *(v87 + 24) = 0;
    v88 = swift_allocObject();
    v89 = v139;
    v154 = v88;
    *(v88 + 16) = v269;
    *(v88 + 24) = v89;
    v155 = swift_allocObject();
    *(v155 + 16) = 0;
    v156 = swift_allocObject();
    *(v156 + 16) = v141;
    v90 = swift_allocObject();
    v91 = v144;
    v145 = v90;
    *(v90 + 16) = v270;
    *(v90 + 24) = v91;
    v92 = swift_allocObject();
    v93 = v145;
    v158 = v92;
    *(v92 + 16) = v271;
    *(v92 + 24) = v93;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v157 = sub_1B0E46A48();
    v159 = v94;

    v95 = v146;
    v96 = v159;
    *v159 = v272;
    v96[1] = v95;

    v97 = v147;
    v98 = v159;
    v159[2] = v273;
    v98[3] = v97;

    v99 = v148;
    v100 = v159;
    v159[4] = v274;
    v100[5] = v99;

    v101 = v149;
    v102 = v159;
    v159[6] = v275;
    v102[7] = v101;

    v103 = v150;
    v104 = v159;
    v159[8] = v276;
    v104[9] = v103;

    v105 = v151;
    v106 = v159;
    v159[10] = v277;
    v106[11] = v105;

    v107 = v152;
    v108 = v159;
    v159[12] = v278;
    v108[13] = v107;

    v109 = v153;
    v110 = v159;
    v159[14] = v279;
    v110[15] = v109;

    v111 = v154;
    v112 = v159;
    v159[16] = v280;
    v112[17] = v111;

    v113 = v155;
    v114 = v159;
    v159[18] = v281;
    v114[19] = v113;

    v115 = v156;
    v116 = v159;
    v159[20] = v282;
    v116[21] = v115;

    v117 = v158;
    v118 = v159;
    v159[22] = v283;
    v118[23] = v117;
    sub_1B0394964();

    if (os_log_type_enabled(v161, v162))
    {
      v119 = v284;
      v123 = sub_1B0E45D78();
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v122 = 0;
      v124 = sub_1B03949A8(0, v121, v121);
      v125 = sub_1B03949A8(v122, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v126 = &v333;
      v333 = v123;
      v127 = &v332;
      v332 = v124;
      v128 = &v331;
      v331 = v125;
      sub_1B0394A48(0, &v333);
      sub_1B0394A48(4, v126);
      v329 = v272;
      v330 = v146;
      sub_1B03949FC(&v329, v126, v127, v128);
      v129 = v119;
      if (v119)
      {

        __break(1u);
      }

      else
      {
        v329 = v273;
        v330 = v147;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[10] = 0;
        v329 = v274;
        v330 = v148;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[9] = 0;
        v329 = v275;
        v330 = v149;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[8] = 0;
        v329 = v276;
        v330 = v150;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[7] = 0;
        v329 = v277;
        v330 = v151;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[6] = 0;
        v329 = v278;
        v330 = v152;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[5] = 0;
        v329 = v279;
        v330 = v153;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[4] = 0;
        v329 = v280;
        v330 = v154;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[3] = 0;
        v329 = v281;
        v330 = v155;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[2] = 0;
        v329 = v282;
        v330 = v156;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        v120[1] = 0;
        v329 = v283;
        v330 = v158;
        sub_1B03949FC(&v329, &v333, &v332, &v331);
        _os_log_impl(&dword_1B0389000, v161, v162, "[%.*hhx-%.*X] Not temporarily growing fetch window, no mailboxes.", v123, 0x17u);
        v120[0] = 0;
        sub_1B03998A8(v124, 0, v121);
        sub_1B03998A8(v125, v120[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v161);
    return (*(v286 + 8))(v289, v285);
  }
}

uint64_t sub_1B03FB1CC()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B03B1E80();

  return sub_1B03F7B1C(v4, v3, &type metadata for MailboxRowID, v1);
}

uint64_t sub_1B03FB220()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07AC98C();

  return sub_1B03F7B1C(v4, v3, &type metadata for ActionID, v1);
}

uint64_t sub_1B03FB274()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07F1F94();

  return sub_1B03F7B1C(v4, v3, &unk_1F26F1E88, v1);
}

uint64_t sub_1B03FB2C8()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B08205D8();

  return sub_1B03F7B1C(v4, v3, &unk_1F26C8A78, v1);
}

uint64_t sub_1B03FB320()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  v1 = sub_1B0874B30();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB388()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B0E43788();
  v1 = sub_1B08CA234();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB3E4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B0E43108();
  v1 = sub_1B0911708();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB440()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B0E42E68();
  v1 = sub_1B092A830();

  return sub_1B03F7B1C(v5, v3, v4, v1);
}

uint64_t sub_1B03FB49C()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B0874D98();

  return sub_1B03F7B1C(v4, v3, &unk_1F26F1C68, v1);
}

uint64_t sub_1B03FB524@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1();
  switch(result)
  {
    case 2u:
      v3 = "periodic";
      v4 = 8;
      break;
    case 3u:
      v3 = "push";
      v4 = 4;
      break;
    case 4u:
      v3 = "userInitiated";
      v4 = 13;
      break;
    default:
      v3 = "backFill";
      v4 = 8;
      break;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_1B03FB684(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a2)
  {
    sub_1B03B8BD8();
    v4 = sub_1B0E454A8();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1B03FB784(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B03FBBAC();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B03FB834()
{
  v34 = 0;
  v31 = 0;
  memset(__b, 0, sizeof(__b));
  v27 = 0;
  v24 = sub_1B0E44468();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v20 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v25 = (v4 - v20);
  v34 = v0;

  v21 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v21);
  v1 = v22;
  *v25 = v21;
  (*(v1 + 104))();
  v26 = sub_1B0E44488();
  (*(v22 + 8))(v25, v24);
  result = v26;
  if (v26)
  {

    v6 = v19 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
    v7 = &v33;
    v8 = 32;
    v9 = 0;
    swift_beginAccess();
    v15 = *v6;
    v13 = *(v6 + 8);
    v16 = *(v6 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v10 = v19 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
    v11 = &v32;
    swift_beginAccess();
    v14 = *v10;
    v12 = *(v10 + 8);
    swift_endAccess();
    v3 = sub_1B039AA00();
    v17 = sub_1B03FBBD8(v14, v12 & 1, v3, v15, v13, v16);

    v31 = v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03ABAA0();
    v18 = &v35;
    sub_1B0E45448();
    memcpy(__b, v18, sizeof(__b));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3530, &qword_1B0EA1FB8);
      sub_1B0E45508();
      v5 = v28;
      if (v29)
      {
        break;
      }

      v4[2] = v5;
      v27 = v5;
      sub_1B09C4544(v5, 2);
    }

    sub_1B06B91B0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B03FBBD8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v10 = a1;
  v11 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v27 = v35;
  v35[0] = 0;
  v35[5] = a1;
  v36 = a2 & 1;
  v35[4] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v35[3] = a6;
  v9[1] = &type metadata for SyncRequest.ID;
  v9[2] = sub_1B0E46A48();
  sub_1B03ABAA0();
  v35[0] = sub_1B0E45438();
  v17 = &v32;
  sub_1B03FBF38(v20, v10, v11 & 1, v21, v22, v23, &v32);
  v14 = v33;
  v15 = v34;
  v6 = __swift_project_boxed_opaque_existential_0(&v32, v33);
  v13 = *(v14 - 8);
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v16 = v9 - v12;
  (*(v13 + 16))(v7);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3540, &unk_1B0EA1FD0);
  sub_1B0E45568();
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_1B03FC29C(v21, v22, v23, &v31);
  v19 = &v30;
  v30 = v31;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
  sub_1B03FC214();
  sub_1B0E45568();
  sub_1B03FD38C(v20, v21, v22, v23);
  v26 = v29;
  v29[0] = v29[7];
  v29[1] = v29[8];
  v29[2] = v29[9];
  v29[3] = v29[10];
  v29[4] = v29[11];
  v29[5] = v29[12];
  v29[6] = v29[13];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3910, &unk_1B0EA31A0);
  sub_1B03FD638();
  sub_1B0E45568();
  v28 = v35[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v27);
  return v28;
}

void sub_1B03FBF38(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v16 = a1;
  v14[5] = a2;
  v15 = a3 & 1;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  if (sub_1B03FC170(a1, a2, a3 & 1, 62.0))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14[1] = a4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
    v7 = sub_1B03FC4DC();
    MEMORY[0x1B27270C0](v14, v9, v7);
    v10 = v14[0];

    v13 = v10;
    a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3910, &unk_1B0EA31A0);
    a7[4] = sub_1B03FD638();
    *a7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3958, &qword_1B0EA31D0);
    sub_1B03FD500();
    sub_1B0E46718();
    sub_1B039E440(&v13);
  }

  else
  {
    v8 = sub_1B0E46A48();
    a7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
    a7[4] = sub_1B03FC214();
    *a7 = v8;
  }
}

uint64_t sub_1B03FC118()
{

  return swift_deallocObject();
}

BOOL sub_1B03FC170(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    MonotonicTime.seconds(since:)(a2, a1);
    return a4 < v4;
  }
}

unint64_t sub_1B03FC214()
{
  v2 = qword_1EB6DB408;
  if (!qword_1EB6DB408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB408);
    return WitnessTable;
  }

  return v2;
}

void sub_1B03FC29C(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3968, &qword_1B0EA31D8);
  sub_1B03FC4DC();
  v8 = sub_1B0E44F58();
  sub_1B039E440(v14);
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3970, &qword_1B0EA31E0);
  sub_1B03FCAD8();
  v9 = sub_1B0E44FF8();
  sub_1B039E440(&v13);
  v12[4] = v9;
  sub_1B03FCB60();
  sub_1B0E45768();
  v12[0] = v14[1];
  v12[1] = v14[2];
  v12[2] = v14[3];
  v12[3] = v14[4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3978, &qword_1B0EA31E8);
  v4 = sub_1B03FD2D8();
  v7 = sub_1B039CA88(sub_1B0A240D4, 0, v5, &type metadata for SyncRequest.ID, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v6);
  sub_1B03FD360(v12);
  *a4 = v7;
}

unint64_t sub_1B03FC4DC()
{
  v2 = qword_1EB6DB280;
  if (!qword_1EB6DB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E38E0, &qword_1B0EA3180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB280);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_7Message12RunningSyncsV9AssertionVSg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1B03FC6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B03FC888(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 64)))
      {
        v3 = *(a1 + 64);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

BOOL sub_1B03FC9A0@<W0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  result = static SyncRequest.Kind.__derived_enum_equals(_:_:)(v6, 4u);
  if (result)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

BOOL static SyncRequest.Kind.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if (a2 - 2 < 3)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

unint64_t sub_1B03FCAD8()
{
  v2 = qword_1EB6DB3F8;
  if (!qword_1EB6DB3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3970, &qword_1B0EA31E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03FCB60()
{
  v2 = qword_1EB6DB3F0;
  if (!qword_1EB6DB3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3970, &qword_1B0EA31E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3F0);
    return WitnessTable;
  }

  return v2;
}

Swift::Void __swiftcall CommandConnection.restart()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1B03FCCF8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B03FCCF8()
{
  v1 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = sub_1B0E43DF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E43E18();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x1E6977C18])
  {
    goto LABEL_2;
  }

  if (v11 == *MEMORY[0x1E6977C10])
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E6977C08] || v11 == *MEMORY[0x1E6977C28])
  {
    goto LABEL_3;
  }

  if (v11 == *MEMORY[0x1E6977C00] || v11 == *MEMORY[0x1E6977C20])
  {
LABEL_7:
    v22 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    sub_1B03FD208(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v6, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E439A8();
    (*(*(v24 - 8) + 8))(v6, v24);
    v25 = sub_1B0E458D8();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v28 = v22 + *(v1 + 20);
      *(v26 + 10) = *v28;

      *(v26 + 11) = 2082;
      v29 = ConnectionID.debugDescription.getter(*(v28 + 4));
      v31 = sub_1B0399D64(v29, v30, &v35);

      *(v26 + 13) = v31;
      _os_log_impl(&dword_1B0389000, v23, v25, "[%.*hhx-%{public}s] Ignoring restart", v26, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x1B272C230](v27, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_2:
  (*(v8 + 8))(v10, v7);
LABEL_3:
  v12 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1B03FD208(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v3, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E439A8();
  (*(*(v14 - 8) + 8))(v3, v14);
  v15 = sub_1B0E45908();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 68158210;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v18 = v12 + *(v1 + 20);
    *(v16 + 10) = *v18;

    *(v16 + 11) = 2082;
    v19 = ConnectionID.debugDescription.getter(*(v18 + 4));
    v21 = sub_1B0399D64(v19, v20, &v35);

    *(v16 + 13) = v21;
    _os_log_impl(&dword_1B0389000, v13, v15, "[%.*hhx-%{public}s] Restart", v16, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x1B272C230](v17, -1, -1);
    MEMORY[0x1B272C230](v16, -1, -1);
  }

  else
  {
  }

  sub_1B0E43E38();
}

uint64_t sub_1B03FD208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03FD270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B03FD2D8()
{
  v2 = qword_1EB6DA570;
  if (!qword_1EB6DA570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3978, &qword_1B0EA31E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA570);
    return WitnessTable;
  }

  return v2;
}

void sub_1B03FD38C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v10[5] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v4 = sub_1B03FC4DC();
  MEMORY[0x1B27270C0](v10, v5, v4);
  v7 = v10[0];

  v9 = v7;
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3958, &qword_1B0EA31D0);
  sub_1B03FD500();
  sub_1B0E46718();

  sub_1B039E440(&v9);
}

unint64_t sub_1B03FD500()
{
  v2 = qword_1EB6DA510;
  if (!qword_1EB6DA510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3958, &qword_1B0EA31D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03FD58C(unsigned __int8 a1)
{
  MEMORY[0x1B2726D20](10);
  v2 = a1 + 1;
  do
  {
    v3 = (v2 - 1);
    v2 = (v2 - 1) / 0x1Au;
    sub_1B0E44C78();
    sub_1B0E44D78();
  }

  while (v3 > 0x19);
  return 0;
}

unint64_t sub_1B03FD638()
{
  v2 = qword_1EB6DA458;
  if (!qword_1EB6DA458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3910, &unk_1B0EA31A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA458);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03FD6C8@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v10 = *(a1 + 8);
  v8 = *(a1 + 4);
  v9 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  result = SyncRequest.Kind.isBackgroundSync.getter(v10);
  if (result)
  {
    result = MonotonicTime.seconds(since:)(v8, a2);
    if (v9)
    {
      if (v4 > 300.0)
      {
        *a3 = v7;
        *(a3 + 4) = 0;
        return result;
      }
    }

    else if (v4 > 31.0)
    {
      *a3 = v7;
      *(a3 + 4) = 0;
      return result;
    }

    *a3 = 0;
    *(a3 + 4) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 4) = 1;
  }

  return result;
}

void __destructor_8_s0_s8_s16_s72(uint64_t a1)
{
  v2 = *(a1 + 72);
}

void *_CreateICUSQLiteContext(uint64_t a1, char a2)
{
  v3 = malloc_type_malloc(0x2D0uLL, 0x10B004031052BF7uLL);
  v3[3] = 0;
  *(v3 + 16) = 65;
  v3[20] = v3 + 4;
  v3[21] = 128;
  v3[22] = 0;
  *(v3 + 46) = 0;
  v3[24] = v3 + 25;
  *(v3 + 178) = 256;
  CPICUCreateSearchCollator();
  *v3 = v5;
  v3[2] = v6;
  if (a2)
  {
    ucol_setAttribute();
    if ((a2 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_6;
  }

  ucol_setAttribute();
LABEL_6:
  if ((a2 & 4) != 0)
  {
    ucol_setAttribute();
  }

  v3[3] = usearch_openFromCollator();
  return v3;
}

uint64_t sqlite3_exec_retry(sqlite3 *a1, const char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  while (1)
  {
    result = sqlite3_exec(a1, a2, a3, a4, a5);
    if (result != 262 && result != 5)
    {
      break;
    }

    usleep(0x14u);
    a1 = v9;
    a2 = v8;
    a3 = v7;
    a4 = v6;
    a5 = v5;
  }

  return result;
}

uint64_t sub_1B03FDD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v8) = a4;
  v48 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;

  *(v5 + 256) = MEMORY[0x1E69E7CD0];
  v19 = static MonotonicTime.now()();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v50 = *(v5 + 64);
  sub_1B03FE28C(a2, a3, v8, v19, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + 64) = v50;
  v21 = *(v5 + 184);
  v22 = *(v5 + 216);
  v52 = *(v5 + 200);
  v53[0] = v22;
  *(v53 + 12) = *(v5 + 228);
  v50 = *(v5 + 168);
  v51 = v21;
  v23 = sub_1B03AFF44();
  v49 = a1;
  LOBYTE(v19) = sub_1B03FE5D4(a1, v23);

  if (v19)
  {
    sub_1B03906B8(a5, v18, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E458E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = v8;
      v8 = v26;
      *v26 = 68158208;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = *(v48 + 20);
      v46 = a2;
      v28 = v18[v27];
      sub_1B0390514(v18, type metadata accessor for State.Logger);
      *(v8 + 10) = v28;
      a2 = v46;
      *(v8 + 11) = 1024;
      *(v8 + 13) = v49;
      _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx] Requesting sync with ID that already exists: #%u", v8, 0x11u);
      v29 = v8;
      LOBYTE(v8) = v45;
      MEMORY[0x1B272C230](v29, -1, -1);
    }

    else
    {
      sub_1B0390514(v18, type metadata accessor for State.Logger);
    }
  }

  if (a2 != 3 || a3)
  {
    sub_1B03FE6A0(v49, a2, a3, v8 & 1, 0, a5);
  }

  else
  {
    v30 = v47;
    sub_1B03906B8(a5, v47, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v31 = sub_1B0E43988();
    v32 = sub_1B0E458E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 68158208;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v34 = v8;
      v35 = *(v30 + *(v48 + 20));
      sub_1B0390514(v30, type metadata accessor for State.Logger);
      *(v33 + 10) = v35;
      LOBYTE(v8) = v34;
      *(v33 + 11) = 1024;
      *(v33 + 13) = v49;
      _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx] Ignoring push sync #%u without mailboxes.", v33, 0x11u);
      MEMORY[0x1B272C230](v33, -1, -1);
    }

    else
    {
      sub_1B0390514(v30, type metadata accessor for State.Logger);
    }
  }

  v36 = *(v6 + 128);
  v37 = *(v6 + 136);
  v38 = static MonotonicTime.now()();
  result = sub_1B03FF968(v36, v37, v38, a2, v8 & 1);
  if (result)
  {
    *(v6 + 137) = 1;
  }

  else
  {
    sub_1B03906B8(a5, v13, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v40 = sub_1B0E43988();
    v41 = sub_1B0E45908();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 68157952;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      v43 = v13;
      v44 = v13[*(v48 + 20)];
      sub_1B0390514(v43, type metadata accessor for State.Logger);
      *(v42 + 10) = v44;
      _os_log_impl(&dword_1B0389000, v40, v41, "[%.*hhx] Skipping update of mailbox list for sync.", v42, 0xBu);
      MEMORY[0x1B272C230](v42, -1, -1);
    }

    else
    {
      sub_1B0390514(v13, type metadata accessor for State.Logger);
    }

    return sub_1B0B86B3C(a5);
  }

  return result;
}

unint64_t sub_1B03FE28C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1B03FE284(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1B0B2FF84(v20, a6 & 1);
      result = sub_1B03FE284(a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1B03FE454();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 4 * result) = a5;
    v27 = v25[7] + 32 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
    *(v27 + 24) = a4;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * result;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3 & 1;
  *(v26 + 24) = a4;
}

void sub_1B03FE454()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C0, &qword_1B0EC5EA0);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

BOOL sub_1B03FE5D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1B0E46C28();
  sub_1B0E46C88();
  v4 = sub_1B0E46CB8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1B03FE6A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, NSObject *a5, uint64_t a6)
{
  v7 = v6;
  v67 = a4;
  v13 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v16;
  v20 = *v7;
  v19 = *(v7 + 8);
  v21 = *(v7 + 16);
  v66 = *(v7 + 24);
  v68 = v20;
  if (v66)
  {
    v64 = v21;
    v65 = v19;
    if (a3)
    {
      v22 = v68;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v23 = v67;
    }

    else
    {
      v63 = v15;
      v44 = v17;
      sub_1B03B1BD0(a6, v17, type metadata accessor for State.Logger);
      v22 = v68;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = sub_1B0E43988();
      v61 = sub_1B0E45908();
      v46 = os_log_type_enabled(v45, v61);
      v23 = v67;
      if (v46)
      {
        v47 = swift_slowAlloc();
        v60 = v45;
        v48 = v47;
        v59 = swift_slowAlloc();
        v69[0] = v59;
        *v48 = 68158466;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        v49 = v7;
        v50 = *(v44 + *(v63 + 20));
        sub_1B03B1DC0(v44, type metadata accessor for State.Logger);
        *(v48 + 10) = v50;
        v7 = v49;
        *(v48 + 11) = 2082;
        v51 = sub_1B0E462C8();
        v53 = sub_1B0399D64(v51, v52, v69);
        v22 = v68;

        *(v48 + 13) = v53;
        *(v48 + 21) = 1024;
        *(v48 + 23) = a1;
        _os_log_impl(&dword_1B0389000, v60, v61, "[%.*hhx] Adding %{public}s sync #%u.", v48, 0x1Bu);
        v54 = v59;
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x1B272C230](v54, -1, -1);
        MEMORY[0x1B272C230](v48, -1, -1);
      }

      else
      {
        sub_1B03B1DC0(v44, type metadata accessor for State.Logger);
      }
    }

    v62 = v7;
    v43 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

    for (i = *(v22 + 16); i; i = *(v43 + 2))
    {
      v56 = 0;
      v22 = 0;
      v57 = (v43 + 32);
      while (v56 < i)
      {
        sub_1B03FEC8C(v57, a2, a3, v23 & 1, a5, a6, a1);
        ++v56;
        i = *(v43 + 2);
        v57 += 22;
        if (v56 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      v43 = sub_1B03D0E54(v22);
    }

LABEL_16:
    result = sub_1B03BB638(v68, v65, v64, 1);
    v26 = 0;
    v21 = 0;
    v7 = v62;
    v39 = v66;
  }

  else
  {
    v63 = v15;
    sub_1B03B1BD0(a6, &v58 - v16, type metadata accessor for State.Logger);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();

    v26 = v19;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v65 = v19;
      v28 = v27;
      v29 = swift_slowAlloc();
      v64 = v21;
      v30 = v29;
      v69[0] = v29;
      *v28 = 68158466;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v31 = v7;
      v32 = v18[*(v63 + 20)];
      sub_1B03B1DC0(v18, type metadata accessor for State.Logger);
      *(v28 + 10) = v32;
      v7 = v31;
      *(v28 + 11) = 2082;
      v33 = sub_1B0E462C8();
      v35 = sub_1B0399D64(v33, v34, v69);

      *(v28 + 13) = v35;
      *(v28 + 21) = 1024;
      *(v28 + 23) = a1;
      _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx] Adding %{public}s sync #%u (while local mailboxes are unknown).", v28, 0x1Bu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      v36 = v30;
      v21 = v64;
      MEMORY[0x1B272C230](v36, -1, -1);
      v37 = v28;
      v26 = v65;
      MEMORY[0x1B272C230](v37, -1, -1);
    }

    else
    {
      sub_1B03B1DC0(v18, type metadata accessor for State.Logger);
    }

    v39 = v66;
    v38 = v67;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = v40;
    sub_1B0A9C540(a2, a3, v38 & 1, a1, isUniquelyReferenced_nonNull_native);
    result = sub_1B03BB638(v40, v26, v21, 0);
    v43 = v69[0];
  }

  *v7 = v43;
  *(v7 + 8) = v26;
  *(v7 + 16) = v21;
  *(v7 + 24) = v39;
  return result;
}

uint64_t sub_1B03FEC8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, unsigned int a7)
{
  v66 = a5;
  v64 = a7;
  v57 = a6;
  v10 = sub_1B0E439A8();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = _s12LocalMailboxV6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = v56 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v62 = v56 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v63 = v56 - v22;
  v65 = a1;
  v24 = *a1;
  v23 = a1[1];
  v25 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56[1] = a2;
  v26 = SyncRequest.includes(_:)(v25, v23, a2, a3);

  if (v26)
  {
    if (!v66 || (result = sub_1B0A93330(v24, v23, v66), (result & 1) != 0))
    {
      if (a3)
      {
        sub_1B03B1BD0(v57, v15, type metadata accessor for State.Logger);
        v28 = v65[2];
        v29 = *(v65 + 6);
        v30 = *(v65 + 43);
        v31 = v58;
        (*(v58 + 16))(v12, v15, v10);
        v32 = v15[*(v13 + 20)];
        sub_1B03B1DC0(v15, type metadata accessor for State.Logger);
        v33 = v63;
        (*(v31 + 32))();
        v34 = v61;
        v35 = v33 + *(v61 + 20);
        *v35 = v32;
        *(v35 + 2) = v30;
        *(v35 + 8) = v28;
        *(v35 + 16) = v29;
        v36 = v62;
        sub_1B03B1BD0(v33, v62, _s12LocalMailboxV6LoggerVMa);
        v37 = v59;
        sub_1B03B1BD0(v33, v59, _s12LocalMailboxV6LoggerVMa);
        v38 = v60;
        sub_1B03B1BD0(v33, v60, _s12LocalMailboxV6LoggerVMa);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v39 = sub_1B0E43988();
        v40 = sub_1B0E45908();

        if (os_log_type_enabled(v39, v40))
        {
          LODWORD(v58) = v40;
          v66 = v39;
          v41 = v34;
          v42 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v69 = v57;
          *v42 = 68159491;
          *(v42 + 4) = 2;
          *(v42 + 8) = 256;
          v43 = *(v37 + *(v34 + 20));
          sub_1B03B1DC0(v37, _s12LocalMailboxV6LoggerVMa);
          *(v42 + 10) = v43;
          *(v42 + 11) = 1040;
          *(v42 + 13) = 2;
          *(v42 + 17) = 512;
          v44 = *(v38 + *(v41 + 20) + 2);
          sub_1B03B1DC0(v38, _s12LocalMailboxV6LoggerVMa);
          *(v42 + 19) = v44;
          *(v42 + 21) = 2160;
          *(v42 + 23) = 0x786F626C69616DLL;
          *(v42 + 31) = 2085;
          v45 = v36 + *(v41 + 20);
          v46 = *(v45 + 8);
          v47 = *(v45 + 16);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B1DC0(v36, _s12LocalMailboxV6LoggerVMa);
          v67 = v46;
          v68 = v47;
          v48 = sub_1B0E44BA8();
          v50 = sub_1B0399D64(v48, v49, &v69);

          *(v42 + 33) = v50;
          *(v42 + 41) = 2082;
          v51 = sub_1B0E462C8();
          v53 = sub_1B0399D64(v51, v52, &v69);

          *(v42 + 43) = v53;
          *(v42 + 51) = 1024;
          *(v42 + 53) = v64;
          v54 = v66;
          _os_log_impl(&dword_1B0389000, v66, v58, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s sync #%u.", v42, 0x39u);
          v55 = v57;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v55, -1, -1);
          MEMORY[0x1B272C230](v42, -1, -1);
        }

        else
        {
          sub_1B03B1DC0(v38, _s12LocalMailboxV6LoggerVMa);
          sub_1B03B1DC0(v37, _s12LocalMailboxV6LoggerVMa);

          sub_1B03B1DC0(v36, _s12LocalMailboxV6LoggerVMa);
        }

        sub_1B03B1DC0(v33, _s12LocalMailboxV6LoggerVMa);
      }

      return sub_1B03FF334(v64);
    }
  }

  return result;
}

uint64_t _s12LocalMailboxV6LoggerVMa(uint64_t a1)
{
  result = qword_1EB6DD218;
  if (!qword_1EB6DD218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SyncRequest.includes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return sub_1B0A93330(a1, a2, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B03FF334(uint64_t a1)
{
  v3 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v9 = *(v1 + 96);
  if (!v9)
  {
    return sub_1B03FF318(&v15, a1);
  }

  v10 = v9 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v11 = _s13SelectedStateV7WrappedVMa(0);
  sub_1B03D0E68(v10 + *(v11 + 20), v5, type metadata accessor for MailboxSyncState);
  sub_1B0B149EC(v5, v8, type metadata accessor for MailboxSyncState);
  if (*(v8[19] + 16) != 15 || *(v8[20] + 16))
  {
    sub_1B03D44D0(v8, type metadata accessor for MailboxSyncState);
    return sub_1B03FF318(&v15, a1);
  }

  v13 = *(v8[21] + 16);
  result = sub_1B03D44D0(v8, type metadata accessor for MailboxSyncState);
  if (v13)
  {
    return sub_1B03FF318(&v15, a1);
  }

  return result;
}

uint64_t sub_1B03FF4C0(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_1B0E46C28();
  sub_1B0E46C88();
  v12 = sub_1B0E46CB8();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 4 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1B03FF5E0(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B03FF5E0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B04009E8(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_1B0B07B08(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1B03FF750(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 4 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B03FF750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 4 * (v15 | (v8 << 6)));
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 4 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1B03FF968(uint64_t result, char a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  if (a2)
  {
    return 1;
  }

  if ((a5 & 1) == 0 && a4 - 5 > 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = __OFSUB__(a3, result);
  v6 = a3 - result;
  if (a3 < result)
  {
    if (__OFSUB__(result, a3))
    {
      __break(1u);
      goto LABEL_22;
    }

    v5 = __OFSUB__(0, result - a3);
    v6 = a3 - result;
    if (!v5)
    {
LABEL_11:
      v7 = v6 / 1000000000.0;
      if (a4 == 4)
      {
        if (v7 <= 4.0)
        {
LABEL_13:
          sub_1B03904C0();
          sub_1B03904C0();
          v9 = sub_1B0E43988();
          v10 = sub_1B0E45908();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v19 = v12;
            *v11 = 68158466;
            *(v11 + 4) = 3;
            *(v11 + 8) = 2048;
            *(v11 + 10) = v7;
            *(v11 + 18) = 2082;
            v13 = sub_1B0E462C8();
            v15 = sub_1B0399D64(v13, v14, &v19);

            *(v11 + 20) = v15;
            *(v11 + 28) = 1024;
            *(v11 + 30) = a5 & 1;
            _os_log_impl(&dword_1B0389000, v9, v10, "Last mailbox list update was %.*g seconds ago. Not requesting update. (kind: %{public}s, update was requested: %{BOOL}d", v11, 0x22u);
            __swift_destroy_boxed_opaque_existential_0(v12);
            MEMORY[0x1B272C230](v12, -1, -1);
            MEMORY[0x1B272C230](v11, -1, -1);
          }

          return 0;
        }
      }

      else if (v7 <= 47.0)
      {
        goto LABEL_13;
      }

      sub_1B03904C0();
      sub_1B03904C0();
      v16 = sub_1B0E43988();
      v17 = sub_1B0E45908();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 68157952;
        *(v18 + 4) = 3;
        *(v18 + 8) = 2048;
        *(v18 + 10) = v7;
        _os_log_impl(&dword_1B0389000, v16, v17, "Last mailbox list update was %.*g seconds ago. Requesting update.", v18, 0x12u);
        MEMORY[0x1B272C230](v18, -1, -1);
      }

      return 1;
    }

    __break(1u);
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1B03FFC1C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B0E46C28();
  v6 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v6 = a2 & 1;
  }

  MEMORY[0x1B2728D70](v6);
  v7 = sub_1B0E46CB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(v5 + 48);
      v12 = *(v11 + v9);
      switch(v12)
      {
        case 2:
          if (a2 == 2)
          {
            result = 0;
            LOBYTE(a2) = 2;
            goto LABEL_18;
          }

          break;
        case 3:
          if (a2 == 3)
          {
            result = 0;
            LOBYTE(a2) = 3;
            goto LABEL_18;
          }

          break;
        case 4:
          if (a2 == 4)
          {
            result = 0;
            LOBYTE(a2) = 4;
            goto LABEL_18;
          }

          break;
        default:
          if ((a2 - 2) >= 3u && ((v12 ^ a2) & 1) == 0)
          {
            result = 0;
            LOBYTE(a2) = *(v11 + v9);
            goto LABEL_18;
          }

          break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  sub_1B0B05888(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  result = 1;
LABEL_18:
  *a1 = a2;
  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1B03FFDF0(_OWORD *a1)
{
  v2 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = a1[9];
  v22 = a1[8];
  v23 = v8;
  v24 = a1[10];
  v9 = a1[5];
  v19[4] = a1[4];
  v19[5] = v9;
  v10 = a1[7];
  v20 = a1[6];
  v21 = v10;
  v11 = a1[1];
  v19[0] = *a1;
  v19[1] = v11;
  v12 = a1[3];
  v19[2] = a1[2];
  v19[3] = v12;
  if (v20)
  {
    v13 = v20 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v14 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B041C8AC(v13 + *(v14 + 20), v4, type metadata accessor for MailboxSyncState);
    sub_1B041CE94(v4, v7, type metadata accessor for MailboxSyncState);
    sub_1B03A35B8(v19, &v18);
    v15 = sub_1B041CA3C();
    sub_1B041CE34(v7, type metadata accessor for MailboxSyncState);
    sub_1B03A3614(v19);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B03FFF7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B03FFFC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B040013C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  v26 = v7;
LABEL_4:
  while (v5)
  {
    v9 = v5;
LABEL_10:
    v5 = (v9 - 1) & v9;
    if (*(v1 + 24) == 1)
    {
      v11 = *v1;
      v12 = *(*v1 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = *(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9))));
        v15 = *v14;
        v16 = *(v1 + 8);
        v27 = *(v1 + 16);
        v17 = *(v14 + 8) | (*(v14 + 8) << 32);
        while (1)
        {
          v18 = v11 + 32 + 176 * v13;
          if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
          {
            v19 = *(v18 + 16);
            v20 = *(v19 + 16);
            if (v20 == *(v15 + 16))
            {
              break;
            }
          }

LABEL_13:
          if (++v13 == v12)
          {
            goto LABEL_4;
          }
        }

        if (v20)
        {
          v21 = v19 == v15;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = (v19 + 32);
          v23 = (v15 + 32);
          while (v20)
          {
            if (*v22 != *v23)
            {
              goto LABEL_13;
            }

            ++v22;
            ++v23;
            if (!--v20)
            {
              goto LABEL_24;
            }
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

LABEL_24:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = v16;
        sub_1B03B9A2C(v11, v16, v27, 1);
        v25 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1B03D0E54(v11);
        }

        if (v13 >= *(v25 + 2))
        {
          goto LABEL_33;
        }

        *&v25[176 * v13 + 168] = MEMORY[0x1E69E7CD0];
        sub_1B03BB638(v11, v24, v27, 1);

        *(v1 + 8) = 0;
        *(v1 + 16) = 0;
        *v1 = v25;
        *(v1 + 24) = 1;
        v7 = v26;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v6)
    {
      break;
    }

    v9 = *(v2 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1B0400370(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43828();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43868();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = tracingSignposter.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);
  sub_1B0E43838();
  sub_1B03A35B8(v1, &v39);
  sub_1B03A35B8(v1, &v39);
  sub_1B03A35B8(v1, &v39);
  sub_1B03A35B8(v1, &v39);
  v15 = sub_1B0E43858();
  v37 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v34 = v5;
    v36 = v9;
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v16 = 141558787;
    *(v16 + 4) = 0x786F626C69616DLL;
    *(v16 + 12) = 2085;
    v17 = *(v1 + 24);
    v39 = *(v1 + 16);
    v40 = v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v38);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2048;
    v21 = *(*(v1 + 136) + 16);
    sub_1B03A3614(v1);
    *(v16 + 24) = v21;
    sub_1B03A3614(v1);
    *(v16 + 32) = 1024;
    v22 = *(v1 + 96);
    if (v22)
    {
      v23 = v22 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v24 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
      v33 = v10;
      v25 = v23 + v24;
      v26 = v34;
      sub_1B03D0E68(v25, v34, type metadata accessor for MailboxSyncState);
      v27 = sub_1B0BAF1A4(*(v26 + 152));
      v10 = v33;
      sub_1B03D44D0(v26, type metadata accessor for MailboxSyncState);
    }

    else
    {
      v27 = 0;
    }

    sub_1B03A3614(v2);
    *(v16 + 34) = v27;
    sub_1B03A3614(v2);
    v28 = v36;
    v29 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v15, v37, v29, "LocalMailbox", "Mailbox %{sensitive,mask.mailbox}s syncs: %ld, steps: %u", v16, 0x26u);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B272C230](v30, -1, -1);
    MEMORY[0x1B272C230](v16, -1, -1);

    (*(v7 + 8))(v28, v6);
  }

  else
  {
    sub_1B03A3614(v1);
    sub_1B03A3614(v1);

    sub_1B03A3614(v1);
    sub_1B03A3614(v1);
    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B04007E8(uint64_t a1)
{
  if (*(*(v1 + 16) + 16))
  {
    sub_1B03FE284(a1);
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1B0400828@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

char *sub_1B04008D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DE0, &qword_1B0EC9CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B04009C8(char *a1, int64_t a2, char a3)
{
  result = sub_1B04008D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B04009E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 4 * (v16 | (v8 << 6)));
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

void sub_1B0400C90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFLibraryStore;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B0400E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _MFWeakObjectCacheRef;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0401434(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SMTPAccount;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void MFPersistenceAdaptorPowerLogDidCreateInstance(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MFPersistenceAdaptorPowerLogDidCreateInstance_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = a1;
  if (MFPersistenceAdaptorPowerLogDidCreateInstance_onceToken != -1)
  {
    dispatch_once(&MFPersistenceAdaptorPowerLogDidCreateInstance_onceToken, block);
  }
}

void __MFPersistenceAdaptorPowerLogDidCreateInstance_block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MFUserAgent();
  v3 = [v2 isMaild];

  if (v3)
  {
    if (powerLogIdentifier_onceToken != -1)
    {
      __MFPersistenceAdaptorPowerLogDidCreateInstance_block_invoke_cold_1();
    }

    v6 = @"IMAPv4";
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    PPSSendTelemetry();
  }
}

void sub_1B0401970(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFMonitoredInvocation;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B0401ACC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromMailboxUidType(uint64_t a1)
{
  if (a1 > 6)
  {
    v1 = @"SentMessagesSpecial";
    v11 = @"DraftsSpecial";
    v12 = @"OutboxSpecial";
    if (a1 != 106)
    {
      v12 = 0;
    }

    if (a1 != 105)
    {
      v11 = v12;
    }

    if (a1 != 104)
    {
      v1 = v11;
    }

    v13 = @"ArchiveSpecial";
    v14 = @"TrashSpecial";
    if (a1 != 103)
    {
      v14 = 0;
    }

    if (a1 != 102)
    {
      v13 = v14;
    }

    if (a1 <= 103)
    {
      v1 = v13;
    }

    v6 = @"InboxSpecial";
    v15 = @"JunkSpecial";
    if (a1 != 101)
    {
      v15 = 0;
    }

    if (a1 != 100)
    {
      v6 = v15;
    }

    v16 = @"Inbox";
    v17 = @"Root";
    if (a1 != 8)
    {
      v17 = 0;
    }

    if (a1 != 7)
    {
      v16 = v17;
    }

    if (a1 <= 99)
    {
      v6 = v16;
    }

    v10 = a1 <= 101;
  }

  else
  {
    v1 = @"Sent";
    v2 = @"Drafts";
    v3 = @"Outbox";
    if (a1 != 6)
    {
      v3 = 0;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = v2;
    }

    v4 = @"Archive";
    v5 = @"Trash";
    if (a1 != 3)
    {
      v5 = 0;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1 <= 3)
    {
      v1 = v4;
    }

    v6 = @"Generic";
    v7 = @"Junk";
    if (a1 != 1)
    {
      v7 = 0;
    }

    if (a1)
    {
      v6 = v7;
    }

    v8 = @"Invalid";
    v9 = @"Rootless";
    if (a1 != -100)
    {
      v9 = 0;
    }

    if (a1 != -500)
    {
      v8 = v9;
    }

    if (a1 < 0)
    {
      v6 = v8;
    }

    v10 = a1 <= 1;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1B0401EF8(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v17 = 0;
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v14 = &v18;
  swift_beginAccess();
  v15 = *(v13 + 72);
  result = swift_endAccess();
  if ((v15 & 1) == 0)
  {
    v7 = static MonotonicTime.now()();
    v17 = v7;
    sub_1B03E248C(v12, v11);

    sub_1B03E14B4(v12);
    v10 = &v6;
    MEMORY[0x1EEE9AC00](&v6);
    v8 = v5;
    v5[2] = v4;
    v5[3] = v12;
    v9 = &v16;
    swift_beginAccess();
    sub_1B04196DC(v7, sub_1B0A1F55C);
    swift_endAccess();

    return sub_1B03E1BE8(v12);
  }

  return result;
}

uint64_t sub_1B0412708()
{

  return swift_deallocObject();
}

uint64_t sub_1B0413230()
{

  return swift_deallocObject();
}

uint64_t sub_1B0413278()
{

  return swift_deallocObject();
}

uint64_t sub_1B04132C0()
{

  return swift_deallocObject();
}

uint64_t sub_1B0413A60()
{

  return swift_deallocObject();
}

uint64_t sub_1B0414110()
{

  return swift_deallocObject();
}

uint64_t sub_1B04141D8()
{

  sub_1B03E1BE8(*(v0 + 72));
  return swift_deallocObject();
}

uint64_t sub_1B0414270()
{

  return swift_deallocObject();
}

uint64_t _s6UploadVMa(uint64_t a1)
{
  v2 = qword_1EB6DBB08;
  if (!qword_1EB6DBB08)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata accessor for MessageHeader(uint64_t a1)
{
  result = qword_1EB6DCC70;
  if (!qword_1EB6DCC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MessagesBeingDownloaded.MessageHeader(uint64_t a1)
{
  v2 = qword_1EB6DBD00;
  if (!qword_1EB6DBD00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t _s31PreviouslyDownloadedMessageDataVMa(uint64_t a1)
{
  v2 = qword_1EB6DBC60;
  if (!qword_1EB6DBC60)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t _s18SectionsToDownloadVMa(uint64_t a1)
{
  v2 = qword_1EB6DBBC8;
  if (!qword_1EB6DBBC8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t _s6LoggerVMa_1(uint64_t a1)
{
  v2 = qword_1EB6DBB18;
  if (!qword_1EB6DBB18)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0415104()
{
  v17 = 0;
  v13 = sub_1B0E44468();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v14 = (&v3 - v9);
  v17 = v0;

  v10 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v10);
  v1 = v11;
  *v14 = v10;
  (*(v1 + 104))();
  v15 = sub_1B0E44488();
  (*(v11 + 8))(v14, v13);
  result = v15;
  if (v15)
  {

    v7 = (v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
    swift_beginAccess();
    if (*v7)
    {
      v4 = *v7;
      swift_unknownObjectRetain();
      swift_endAccess();
      swift_getObjectType();
      v5 = [v4 shouldDefer];
      swift_unknownObjectRelease();
      result = v5;
      v6 = v5;
    }

    else
    {
      result = swift_endAccess();
      v6 = 2;
    }

    v16 = v6;
    if (v6 == 2)
    {
      HIDWORD(v3) = 0;
    }

    else
    {
      HIDWORD(v3) = v16;
    }

    if ((v3 & 0x100000000) != 0)
    {
      return sub_1B09CE0B4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0415358(uint64_t a1)
{
  v31 = &v54;
  v32 = a1;
  v33 = 0;
  memset(v69, 0, 32);
  v53 = 0;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v43 = 0;
  v38 = 0;
  v41 = 0;
  v69[4] = a1;
  v34 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v67 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v35 = v36;
  v2 = sub_1B03FC4DC();
  v37 = &v67;
  MEMORY[0x1B2727080](&v68, v36, v2);
  sub_1B039E440(&v67);
  v66 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3938, &qword_1B0EA31B8);
  sub_1B0E465F8();
  for (i = 0; ; i = v14)
  {
    v30 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3940, &unk_1B0EA31C0);
    sub_1B0E46608();
    v3 = *v31;
    v57 = v31[1];
    v56 = v3;
    v4 = v31[2];
    v5 = v31[3];
    v6 = v31[4];
    v61 = v55;
    v60 = v6;
    v59 = v5;
    v58 = v4;
    v63 = v57;
    v62 = v56;
    *&v65[32] = v55;
    *&v65[16] = v6;
    *v65 = v5;
    v64 = v4;
    if (!*(&v6 + 1))
    {
      sub_1B039E440(v69);
      return;
    }

    v25 = v62;
    v26 = *(&v63 + 1);
    v27 = *&v65[8];
    v28 = *&v65[16];
    v29 = *&v65[32];
    v53 = v62;
    LODWORD(v48) = DWORD2(v62);
    BYTE8(v48) = v63;
    *&v49 = *(&v63 + 1);
    WORD4(v49) = v64;
    *&v50 = *(&v64 + 1);
    BYTE8(v50) = v65[0];
    v51 = *&v65[8];
    v52 = *&v65[24];
    if (v65[0])
    {

      sub_1B041589C(v27, v28);

      v14 = v30;
      continue;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v46 = v26;
    if (v26)
    {
      v47 = v46;
    }

    else
    {
      Activity.allMailboxIDs.getter(&v45);
      v44 = v45;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
      v24 = sub_1B03B8BD8();
      sub_1B0415814();
      v47 = sub_1B0E45598();
      if (v46)
      {
        sub_1B039E440(&v46);
      }
    }

    v7 = v30;
    v16 = v47;
    v43 = v47;
    v42 = v47;
    v19 = &v13;
    MEMORY[0x1EEE9AC00](&v13);
    v17 = &v13 - 4;
    *(&v13 - 2) = v8;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
    sub_1B0415814();
    v9 = sub_1B0E45028();
    v20 = v7;
    v21 = v9;
    v22 = v19;
    if (v7)
    {
      break;
    }

    v41 = v21 & 1;
    if (v21)
    {
      v15 = &v40;
      v10 = sub_1B0E45398();
      v11 = v15;
      *(v12 + 40) = 1;
      v10(v11, 0);
    }

    sub_1B041589C(v27, v28);

    v14 = v20;
  }

  __break(1u);
}

uint64_t Activity.allMailboxIDs.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CBF290(v4, v3);
  *a1 = result;
  return result;
}

unint64_t sub_1B0415814()
{
  v2 = qword_1EB6DAD40;
  if (!qword_1EB6DAD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3520, &unk_1B0E9E030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B041589C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B04158DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s18MailboxPersistenceVMa(0);
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  memcpy((a2 + *(v3 + 24)), (a1 + *(v3 + 24)), 0x28uLL);
  return a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t Activity.accountStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for ConnectionStatus.Error(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = type metadata accessor for Activity.MailboxStatus(0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for Activity(0);
    sub_1B03B5C80(v1 + *(v13 + 24), v5, &qword_1EB6E35A0, &qword_1B0E99850);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1B0398EFC(v5, &qword_1EB6E35A0, &qword_1B0E99850);
    }

    else
    {
      sub_1B0CC0084(v5, v9, type metadata accessor for ConnectionStatus.Error);
      sub_1B0CC0084(v9, a1, type metadata accessor for ConnectionStatus.Error);
    }

    v14 = type metadata accessor for Activity.MailboxStatus(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t sub_1B0415C08(uint64_t a1)
{
  v7 = type metadata accessor for Activity.MailboxStatus(0);
  if (!(*(*(v7 - 8) + 48))(a1, 1) && swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
    v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
        }
      }

      else
      {
        v1 = sub_1B0E441D8();
        (*(*(v1 - 8) + 8))(v4);
      }
    }
  }

  return a1;
}

_BYTE *sub_1B0415DC0(_BYTE *a1, _BYTE *a2)
{
  v14 = type metadata accessor for Activity.MailboxStatus(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v7 = type metadata accessor for ConnectionStatus.Error(0);
    __dst = &a2[*(v7 + 20)];
    __src = &a1[*(v7 + 20)];
    v10 = type metadata accessor for ConnectionStatus.Error.Details(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(__dst, __src, *(v11 + 64));
      }

      else
      {
        v2 = sub_1B0E441D8();
        (*(*(v2 - 8) + 32))(__dst, __src);
        swift_storeEnumTagMultiPayload();
      }

      (*(v11 + 56))(__dst, 0, 1, v10);
    }

    v4 = &a2[*(v7 + 24)];
    v5 = &a1[*(v7 + 24)];
    *v4 = *v5;
    v4[8] = v5[8];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v14 - 8) + 64));
  }

  return a2;
}

_BYTE *sub_1B0416014(_BYTE *a1, _BYTE *a2)
{
  v19 = type metadata accessor for Activity.MailboxStatus(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v12 = type metadata accessor for ConnectionStatus.Error(0);
    __dst = &a2[*(v12 + 20)];
    v14 = &a1[*(v12 + 20)];
    v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
      memcpy(__dst, v14, *(*(v3 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          *__dst = *v14;
          v9 = v14[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v9;
          __dst[2] = v14[2];
          v10 = v14[3];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[3] = v10;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          *__dst = *v14;
          if (EnumCaseMultiPayload == 2)
          {
            v8 = v14[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v8;
          }

          else
          {
            v7 = v14[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v7;
          }

          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v2 = sub_1B0E441D8();
        (*(*(v2 - 8) + 16))(__dst, v14);
        swift_storeEnumTagMultiPayload();
      }

      (*(v16 + 56))(__dst, 0, 1, v15);
    }

    v4 = &a2[*(v12 + 24)];
    v5 = &a1[*(v12 + 24)];
    *v4 = *v5;
    v4[8] = v5[8];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v19 - 8) + 64));
  }

  return a2;
}

unint64_t Activity.MailboxStatus.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus.Error(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Activity.MailboxStatus(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B04166B0(v1, v10, type metadata accessor for Activity.MailboxStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x697463656E6E6F63;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B0CC0084(v10, v7, type metadata accessor for ConnectionStatus.Error);
      sub_1B04166B0(v7, v4, type metadata accessor for ConnectionStatus.Error);
      v15 = sub_1B0E44BA8();
      sub_1B0416AA0(v7, type metadata accessor for ConnectionStatus.Error);
      return v15;
    }

    v12 = *(v10 + 1);
    v13 = *(v10 + 2);
    if (*v10)
    {
      result = 0xD000000000000010;
      if (v10[24])
      {
        return result;
      }

      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1B0E46298();

      v22 = 0xD000000000000012;
      v23 = 0x80000001B0F2EFA0;
      v21 = v13;
      v16 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v16);

      MEMORY[0x1B2726E80](761687853, 0xE400000000000000);
      v17 = v12 + v13;
      if (!__OFADD__(v12, v13))
      {
LABEL_18:
        v21 = v17;
        v19 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v19);

        return v22;
      }

      __break(1u);
LABEL_17:
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1B0E46298();

      v22 = 0x676E696863746566;
      v23 = 0xE90000000000002DLL;
      v21 = v13;
      v18 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v18);

      result = MEMORY[0x1B2726E80](761687853, 0xE400000000000000);
      v17 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        __break(1u);
        return result;
      }

      goto LABEL_18;
    }

    if (!v10[24])
    {
      goto LABEL_17;
    }

    if (v10[25])
    {
      return 0x676E69636E7973;
    }

    else
    {
      return 0x636E79732D6E69;
    }
  }
}

uint64_t sub_1B04166B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s16IMAP2Persistence8ActivityV13MailboxStatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Activity.MailboxStatus(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60E0, &qword_1B0EE1930);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v17 = &v26 + *(v16 + 56) - v14;
  sub_1B04166B0(a1, &v26 - v14, type metadata accessor for Activity.MailboxStatus);
  sub_1B04166B0(a2, v17, type metadata accessor for Activity.MailboxStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_14;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_1B0416AA0(v15, type metadata accessor for Activity.MailboxStatus);
    return 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B04166B0(v15, v12, type metadata accessor for Activity.MailboxStatus);
    v20 = *(v12 + 1);
    v19 = *(v12 + 2);
    v21 = v12[24];
    v22 = v12[25];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v12 != *v17)
      {
LABEL_5:
        sub_1B0416AA0(v15, type metadata accessor for Activity.MailboxStatus);
        return 0;
      }

      v25 = v17[24];
      if (v21)
      {
        if (!v17[24])
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v20 != *(v17 + 1))
        {
          v25 = 1;
        }

        if ((v25 & 1) != 0 || v19 != *(v17 + 2))
        {
          goto LABEL_5;
        }
      }

      if ((v22 ^ v17[25]))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

LABEL_14:
    sub_1B0398EFC(v15, &qword_1EB6E60E0, &qword_1B0EE1930);
    return 0;
  }

  sub_1B04166B0(v15, v9, type metadata accessor for Activity.MailboxStatus);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0416AA0(v9, type metadata accessor for ConnectionStatus.Error);
    goto LABEL_14;
  }

  sub_1B0CC0084(v17, v6, type metadata accessor for ConnectionStatus.Error);
  v23 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v6);
  sub_1B0416AA0(v6, type metadata accessor for ConnectionStatus.Error);
  sub_1B0416AA0(v9, type metadata accessor for ConnectionStatus.Error);
  sub_1B0416AA0(v15, type metadata accessor for Activity.MailboxStatus);
  return v23;
}

uint64_t sub_1B0416AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0416B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0416B60(uint64_t a1)
{
  type metadata accessor for Activity.MailboxStatus(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
    v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
        }

        else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
        }
      }

      else
      {
        v1 = sub_1B0E441D8();
        (*(*(v1 - 8) + 8))(v4);
      }
    }
  }

  return a1;
}

uint64_t Activity.isServerUnavailable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Activity(0);
  sub_1B03B5C80(v0 + *(v8 + 24), v3, &qword_1EB6E35A0, &qword_1B0E99850);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B0398EFC(v3, &qword_1EB6E35A0, &qword_1B0E99850);
  }

  else
  {
    sub_1B0CC0084(v3, v7, type metadata accessor for ConnectionStatus.Error);
    v9 = *v7;
    sub_1B0416AA0(v7, type metadata accessor for ConnectionStatus.Error);
    if (v9 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0416E8C(uint64_t a1)
{
  v26 = a1;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v34 = 0;
  v30 = v33;
  v33[0] = 0;
  v33[1] = 0;
  v19 = 0;
  v12 = sub_1B0E42A08();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v7 - v15;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v15);
  v18 = &v7 - v17;
  v39 = &v7 - v17;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3490, &unk_1B0E9BF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v7 - v20;
  v22 = (*(*(_s18MailboxPersistenceVMa(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v7 - v22;
  v38 = v4;
  v37 = v1;
  v23 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v24 = v36;
  v25 = 0;
  swift_beginAccess();
  sub_1B03F4D78(v23, v28);
  swift_endAccess();
  v27 = &v35;
  swift_beginAccess();
  v29 = sub_1B0417318(v26, v28);
  swift_endAccess();
  sub_1B03F4F08(v28);
  v34 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
  sub_1B0417958();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34C0, &qword_1B0E9BF20);
    sub_1B0E46518();
    if ((*(v13 + 48))(v21, 1, v12) == 1)
    {
      break;
    }

    v5 = v16;
    (*(v13 + 32))(v18, v21, v12);
    v9 = [objc_opt_self() defaultCenter];
    (*(v13 + 16))(v5, v18, v12);
    v8 = sub_1B0E429C8();
    v11 = *(v13 + 8);
    v10 = v13 + 8;
    v11(v16, v12);
    [v9 postNotification_];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
    v11(v18, v12);
  }

  sub_1B039E440(v33);
}

uint64_t sub_1B0417318(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v10 = a2;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v8 = (*(*(type metadata accessor for Activity(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v6 - v8;
  v15 = v3;
  v14 = v4;
  v13 = v2;
  sub_1B03DEB8C(v3, (&v6 - v8));
  v11 = sub_1B04173E8(v9);
  v12 = sub_1B04175E0(v11, v10);

  return v12;
}

uint64_t sub_1B04173E8(char *a1)
{
  v5[2] = a1;
  sub_1B0E46A48();
  sub_1B0417568();
  v6 = sub_1B0E45438();
  Activity.allMailboxIDs.getter(v5);
  v4 = v5[0];
  sub_1B0E46A48();
  sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  sub_1B0415814();
  sub_1B0E44FD8();
  sub_1B039E440(&v4);
  v2 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v2;

  sub_1B03DC998(a1);
  sub_1B039E440(&v6);
  return v2;
}

unint64_t sub_1B0417568()
{
  v2 = qword_1EB6DC000;
  if (!qword_1EB6DC000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B04175E0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v13 = a1;
  v18 = 0;
  v30[1] = 0;
  v29 = 0;
  v27 = 0;
  v30[3] = a1;
  v30[2] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0417568();
  v16 = sub_1B0E45418();

  v30[0] = v16;
  v26 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  v19 = v21;
  v22 = sub_1B0E42A08();
  v20 = v22;
  v23 = sub_1B0417878();
  v24 = 0;
  v25 = sub_1B0E44F58();
  v7 = v25;
  sub_1B039E440(v30);
  v29 = v25;
  v8 = *v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E45418();

  v28 = v9;
  v10 = &v4;
  MEMORY[0x1EEE9AC00](&v4);
  v11 = sub_1B0E44F58();
  v5 = v11;
  sub_1B039E440(&v28);
  v27 = v5;
  v6 = sub_1B0E45238();

  sub_1B0417900(v12, v13);
  return v6;
}

unint64_t sub_1B0417878()
{
  v2 = qword_1EB6DAD20;
  if (!qword_1EB6DAD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16D8, &qword_1B0E998D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0417900(uint64_t *a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a1 = a2;
}

unint64_t sub_1B0417958()
{
  v2 = qword_1EB6DB690;
  if (!qword_1EB6DB690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B04179E0(unsigned int a1)
{
  v171 = a1;
  v132 = sub_1B039BBE8;
  v133 = sub_1B07AC984;
  v134 = sub_1B0394C30;
  v135 = sub_1B0394C24;
  v136 = sub_1B039BA2C;
  v137 = sub_1B039BA88;
  v138 = sub_1B039BB94;
  v139 = sub_1B0394C24;
  v140 = sub_1B039BBA0;
  v141 = sub_1B039BC08;
  v142 = sub_1B03FB220;
  v143 = sub_1B039BCF8;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0399178;
  v147 = sub_1B0398F5C;
  v148 = sub_1B0398F5C;
  v149 = sub_1B039BA94;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0399178;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0398F5C;
  v155 = sub_1B03991EC;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v158 = sub_1B039BCEC;
  v185 = 0;
  v184 = 0;
  v159 = 0;
  v165 = 0;
  v160 = sub_1B0E439A8();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v164 = &v68 - v163;
  v166 = _s6LoggerVMa(v2);
  v167 = (*(*(v166 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v165);
  v168 = &v68 - v167;
  v169 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v170 = &v68 - v169;
  v176 = sub_1B0E44468();
  v174 = *(v176 - 8);
  v175 = v176 - 8;
  v172 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v177 = (&v68 - v172);
  v185 = v5;
  v184 = v1;

  v173 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v173);
  v6 = v174;
  *v177 = v173;
  (*(v6 + 104))();
  v178 = sub_1B0E44488();
  (*(v174 + 8))(v177, v176);
  result = v178;
  if (v178)
  {
    v8 = v164;

    v92 = &unk_1EB737000;
    sub_1B0394784(v131 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v170);
    (*(v161 + 16))(v8, v170, v160);
    sub_1B039480C(v170);

    sub_1B0394784(v131 + v92[314], v168);
    v9 = (v168 + *(v166 + 20));
    v94 = *v9;
    v95 = *(v9 + 1);
    sub_1B039480C(v168);

    v93 = 24;
    v108 = 7;
    v10 = swift_allocObject();
    v11 = v95;
    v99 = v10;
    *(v10 + 16) = v94;
    *(v10 + 20) = v11;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v12 = swift_allocObject();
    v13 = v95;
    v96 = v12;
    *(v12 + 16) = v94;
    *(v12 + 20) = v13;

    v107 = 32;
    v14 = swift_allocObject();
    v15 = v96;
    v104 = v14;
    *(v14 + 16) = v132;
    *(v14 + 24) = v15;
    sub_1B0394868();
    sub_1B0394868();

    v97 = swift_allocObject();
    *(v97 + 16) = v171;

    v16 = swift_allocObject();
    v17 = v97;
    v109 = v16;
    *(v16 + 16) = v133;
    *(v16 + 24) = v17;

    v129 = sub_1B0E43988();
    v130 = sub_1B0E458D8();
    v106 = 17;
    v111 = swift_allocObject();
    v101 = 16;
    *(v111 + 16) = 16;
    v112 = swift_allocObject();
    v103 = 4;
    *(v112 + 16) = 4;
    v18 = swift_allocObject();
    v98 = v18;
    *(v18 + 16) = v134;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v98;
    v113 = v19;
    *(v19 + 16) = v135;
    *(v19 + 24) = v20;
    v114 = swift_allocObject();
    *(v114 + 16) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = 1;
    v21 = swift_allocObject();
    v22 = v99;
    v100 = v21;
    *(v21 + 16) = v136;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v100;
    v116 = v23;
    *(v23 + 16) = v137;
    *(v23 + 24) = v24;
    v117 = swift_allocObject();
    *(v117 + 16) = v101;
    v118 = swift_allocObject();
    *(v118 + 16) = v103;
    v25 = swift_allocObject();
    v102 = v25;
    *(v25 + 16) = v138;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v102;
    v119 = v26;
    *(v26 + 16) = v139;
    *(v26 + 24) = v27;
    v120 = swift_allocObject();
    *(v120 + 16) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v103;
    v28 = swift_allocObject();
    v29 = v104;
    v105 = v28;
    *(v28 + 16) = v140;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v105;
    v122 = v30;
    *(v30 + 16) = v141;
    *(v30 + 24) = v31;
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    v32 = swift_allocObject();
    v33 = v109;
    v110 = v32;
    *(v32 + 16) = v142;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v110;
    v126 = v34;
    *(v34 + 16) = v143;
    *(v34 + 24) = v35;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v125 = sub_1B0E46A48();
    v127 = v36;

    v37 = v111;
    v38 = v127;
    *v127 = v144;
    v38[1] = v37;

    v39 = v112;
    v40 = v127;
    v127[2] = v145;
    v40[3] = v39;

    v41 = v113;
    v42 = v127;
    v127[4] = v146;
    v42[5] = v41;

    v43 = v114;
    v44 = v127;
    v127[6] = v147;
    v44[7] = v43;

    v45 = v115;
    v46 = v127;
    v127[8] = v148;
    v46[9] = v45;

    v47 = v116;
    v48 = v127;
    v127[10] = v149;
    v48[11] = v47;

    v49 = v117;
    v50 = v127;
    v127[12] = v150;
    v50[13] = v49;

    v51 = v118;
    v52 = v127;
    v127[14] = v151;
    v52[15] = v51;

    v53 = v119;
    v54 = v127;
    v127[16] = v152;
    v54[17] = v53;

    v55 = v120;
    v56 = v127;
    v127[18] = v153;
    v56[19] = v55;

    v57 = v121;
    v58 = v127;
    v127[20] = v154;
    v58[21] = v57;

    v59 = v122;
    v60 = v127;
    v127[22] = v155;
    v60[23] = v59;

    v61 = v123;
    v62 = v127;
    v127[24] = v156;
    v62[25] = v61;

    v63 = v124;
    v64 = v127;
    v127[26] = v157;
    v64[27] = v63;

    v65 = v126;
    v66 = v127;
    v127[28] = v158;
    v66[29] = v65;
    sub_1B0394964();

    if (os_log_type_enabled(v129, v130))
    {
      v67 = v159;
      v85 = sub_1B0E45D78();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v86 = sub_1B03949A8(0, v84, v84);
      v87 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v88 = &v183;
      v183 = v85;
      v89 = &v182;
      v182 = v86;
      v90 = &v181;
      v181 = v87;
      sub_1B0394A48(2, &v183);
      sub_1B0394A48(5, v88);
      v179 = v144;
      v180 = v111;
      sub_1B03949FC(&v179, v88, v89, v90);
      v91 = v67;
      if (v67)
      {

        __break(1u);
      }

      else
      {
        v179 = v145;
        v180 = v112;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v83 = 0;
        v179 = v146;
        v180 = v113;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v82 = 0;
        v179 = v147;
        v180 = v114;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v81 = 0;
        v179 = v148;
        v180 = v115;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v80 = 0;
        v179 = v149;
        v180 = v116;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v79 = 0;
        v179 = v150;
        v180 = v117;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v78 = 0;
        v179 = v151;
        v180 = v118;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v77 = 0;
        v179 = v152;
        v180 = v119;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v76 = 0;
        v179 = v153;
        v180 = v120;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v75 = 0;
        v179 = v154;
        v180 = v121;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v74 = 0;
        v179 = v155;
        v180 = v122;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v73 = 0;
        v179 = v156;
        v180 = v123;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v72 = 0;
        v179 = v157;
        v180 = v124;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        v71 = 0;
        v179 = v158;
        v180 = v126;
        sub_1B03949FC(&v179, &v183, &v182, &v181);
        _os_log_impl(&dword_1B0389000, v129, v130, "[%.*hhx-%.*X] Action %s did complete.", v85, 0x21u);
        sub_1B03998A8(v86, 0, v84);
        sub_1B03998A8(v87, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v129);
    (*(v161 + 8))(v164, v160);
    v69 = *(v131 + 48);
    v70 = *(v131 + 56);

    v69(v171, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B04196DC(uint64_t a1, uint64_t (*a2)(uint64_t, double))
{
  v10 = static MonotonicTime.now()();
  MonotonicTime.seconds(since:)(a1, v10);
  v11 = v3;
  result = MonotonicTime.seconds(since:)(*(v2 + 16), v10);
  if (*(v2 + 8) <= v11 && *v8 <= v5)
  {
    *(v8 + 16) = v10;
    return a2(result, v11);
  }

  return result;
}

uint64_t sub_1B04197E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1B0419910(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_1B0419F68(uint64_t a1)
{
  sub_1B039A494();
  sub_1B041A044();
  v5 = sub_1B041A060(v1);
  v4 = *(v3 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer);
  MEMORY[0x1E69E5928](v4);
  swift_getObjectType();
  MEMORY[0x1E69E5928](v5);
  [v4 observerDidReceiveResult_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v4);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B041A0E8()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v1 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v8 = *(v0 + v1);
    if (!(v8 >> 62))
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
      {

        RestartableTimer.stop()();
      }

LABEL_21:
      __break(1u);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B0E46138();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = *(v0 + v1);
  if (v10 >> 62)
  {
    result = sub_1B0E46138();
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2728410](i, v10);
    }

    else
    {
    }

    CommandConnection.collectDataTransferReport()();
  }
}

Swift::Void __swiftcall CommandConnection.collectDataTransferReport()()
{
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {

    sub_1B041A35C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B041A35C()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  v9 = sub_1B0E44488();
  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v11 = *(v1 + 72);
    if (v11)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 24);
      v15 = *(v1 + 40);
      v14 = *(v1 + 48);
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v11;
      *(v16 + 32) = v15;
      *(v16 + 40) = v14;
      *(v16 + 48) = v13;
      swift_retain_n();

      sub_1B0E43DA8();
    }

    v17 = sub_1B0E43D98();
    *(v1 + 64) = static MonotonicTime.now()();
    *(v1 + 72) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B041A538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *), uint64_t a5, int a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v8 = sub_1B0E43D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27[-v13];
  v15 = sub_1B0E43D58();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, a1, v15, v17);
  sub_1B0E43D48();
  v21 = v20;
  sub_1B0E43D08();
  v22 = sub_1B0E43D28();
  v23 = *(v9 + 8);
  v23(v14, v8);
  v24 = v22 & ~(v22 >> 63);
  sub_1B0E43D08();
  v25 = sub_1B0E43D18();
  v23(v11, v8);
  (*(v16 + 8))(v19, v15);
  v31 = v28;
  v32 = a2;
  v33 = v21;
  v34 = v24;
  v35 = v25 & ~(v25 >> 63);
  return v30(&v31);
}

void sub_1B041A76C(double *a1)
{
  v2 = v1;
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1B0E44488();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03904C0();
  sub_1B03904C0();
  v11 = sub_1B0E43988();
  v12 = sub_1B0E458D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 68159746;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = *(v2 + 24);

    *(v13 + 11) = 2082;
    v15 = ConnectionID.debugDescription.getter(*a1);
    v17 = sub_1B0399D64(v15, v16, &v29);

    *(v13 + 13) = v17;
    *(v13 + 21) = 1040;
    *(v13 + 23) = 3;
    *(v13 + 27) = 2048;
    v18 = a1[2];
    *(v13 + 29) = v18;
    *(v13 + 37) = 2048;
    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
    *(v13 + 39) = v20;
    *(v13 + 47) = 2048;
    *(v13 + 49) = v19;
    *(v13 + 57) = 2048;
    if (v18 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      if ((v20 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = (8 * v20) / v18;
      v22 = round(v21);
      v23 = v22 >= 9.22337204e18 || v22 <= -9.22337204e18;
      v24 = llround(v21);
      if (v23)
      {
        v24 = 0;
      }
    }

    *(v13 + 59) = v24;
    *(v13 + 67) = 2048;
    *(v13 + 69) = v24;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx] Connection %{public}s sent data transfer report for the past %.*g seconds: received %{iec-bytes}ld, sent %{iec-bytes}ld, received throughput %{iec-bitrate}ld, sent throughput %{iec-bitrate}ld.", v13, 0x4Du);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {

    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
  }

  v25 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    goto LABEL_17;
  }

  v26 = __OFADD__(*v25, v20);
  v20 += *v25;
  if (v26)
  {
    goto LABEL_20;
  }

  v27 = *(v25 + 8);
  v26 = __OFADD__(v27, v19);
  v19 += v27;
  if (v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  *v25 = v20;
  *(v25 + 8) = v19;
  *(v25 + 16) = 0;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {

    RestartableTimer.start()();

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1B041AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v6(v7 | 0xA000000000000006);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  sub_1B0391D50(*(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1B041AC10(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B041AC68();
  }

  return result;
}

uint64_t sub_1B041AC68()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state);
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    return result;
  }

  v11 = *v10;
  v12 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  *(v10 + 16) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  RestartableTimer.stop()();

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E45908();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 68158464;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    *(v15 + 10) = *(v1 + 24);

    *(v15 + 11) = 2048;
    *(v15 + 13) = v11;
    *(v15 + 21) = 2048;
    *(v15 + 23) = v12;
    _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx] Account data transfer report: received %{iec-bytes}ld, sent %{iec-bytes}ld.", v15, 0x1Fu);
    MEMORY[0x1B272C230](v15, -1, -1);
  }

  else
  {
  }

  return (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler))(v11, v12);
}

uint64_t sub_1B041AEB8()
{
  sub_1B041AF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
  return sub_1B0E45338();
}

void OUTLINED_FUNCTION_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

NSString *OUTLINED_FUNCTION_3_0()
{

  return NSStringFromSelector(v0);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = 0x4066800000000000;
  return result;
}

void _powerChanged(uint64_t a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    HIDWORD(v8) = a3 + 536870288;
    LODWORD(v8) = a3 + 536870288;
    v7 = v8 >> 4;
    if (v7 < 0xC && ((0xA07u >> v7) & 1) != 0)
    {
      v9 = off_1E7AA76E8[v7];
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3];
    }

    *buf = 138412290;
    v11 = v9;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "Power changed: %@", buf, 0xCu);
  }

  switch(a3)
  {
    case 0xE0000300:
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_102);
      break;
    case 0xE0000280:
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_98);
      IOAllowPowerChange(sRootDomainConnect, a4);
      break;
    case 0xE0000270:
      IOAllowPowerChange(sRootDomainConnect, a4);
      break;
  }
}

unint64_t sub_1B041B1D8()
{
  result = qword_1EB6DE180;
  if (!qword_1EB6DE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE180);
  }

  return result;
}

void sub_1B041B22C(uint64_t a1)
{
  if (!qword_1EB6DE9A0)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6408, &qword_1B0EE63C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2990, &qword_1B0E9B060);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB6DE9A0);
    }
  }
}

void sub_1B041B36C(uint64_t a1)
{
  sub_1B0CF2B9C(319);
  if (v1 <= 0x3F)
  {
    sub_1B0CF2C14(319, &qword_1EB6DB6B0, MEMORY[0x1E69E6158], "username password ");
    if (v2 <= 0x3F)
    {
      sub_1B043739C();
      if (v3 <= 0x3F)
      {
        sub_1B0CF2CF4(319, &qword_1EB6DE938, &qword_1EB6E63E8, &qword_1B0EE63B8);
        if (v4 <= 0x3F)
        {
          sub_1B0CF2C14(319, &qword_1EB6DE9A8, &type metadata for MailboxName, "from to ");
          if (v5 <= 0x3F)
          {
            sub_1B0CF2C64(319);
            if (v6 <= 0x3F)
            {
              sub_1B0CF2CF4(319, &qword_1EB6DE950, &qword_1EB6E6400, &qword_1B0EF66E0);
              if (v7 <= 0x3F)
              {
                sub_1B041B22C(319);
                if (v8 <= 0x3F)
                {
                  sub_1B0CF2D58(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1B041BFF0(319, qword_1EB6DE420, &type metadata for ClientCommand.FetchData, "messages data ");
                    if (v10 <= 0x3F)
                    {
                      sub_1B041BFF0(319, &qword_1EB6DE418, &type metadata for StoreFlags, "messages items ");
                      if (v11 <= 0x3F)
                      {
                        sub_1B041BFF0(319, &qword_1EB6DE410, &type metadata for MailboxName, "messages to ");
                        if (v12 <= 0x3F)
                        {
                          sub_1B0CF2DD0(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1B041C078(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for SearchReturnOption(uint64_t a1)
{
  result = qword_1EB6DE5C8;
  if (!qword_1EB6DE5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B041B5DC(uint64_t a1)
{
  sub_1B041B648(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B041B648(uint64_t a1)
{
  if (!qword_1EB6DE078)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6440, &unk_1B0EF3530);
    v3 = sub_1B041BD44();
    v6[0] = MEMORY[0x1E69E6158];
    v6[1] = v2;
    v6[2] = MEMORY[0x1E69E6168];
    v6[3] = v3;
    v4 = type metadata accessor for KeyValue(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB6DE078);
    }
  }
}

uint64_t type metadata accessor for ParameterValue(uint64_t a1)
{
  result = qword_1EB6DE728;
  if (!qword_1EB6DE728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B041B720(uint64_t a1)
{
  sub_1B041B794(319);
  if (v1 <= 0x3F)
  {
    sub_1B041BC68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B041B794(uint64_t a1)
{
  if (!qword_1EB6DE798[0])
  {
    v2 = sub_1B041B7F0();
    CommandSet = type metadata accessor for LastCommandSet(a1, &type metadata for SequenceNumber, v2, v3);
    if (!v5)
    {
      atomic_store(CommandSet, qword_1EB6DE798);
    }
  }
}

unint64_t sub_1B041B7F0()
{
  result = qword_1EB6DE6C8;
  if (!qword_1EB6DE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6C8);
  }

  return result;
}

unint64_t sub_1B041B844(void *a1)
{
  a1[1] = sub_1B041B894();
  a1[2] = sub_1B041B8E8();
  a1[3] = sub_1B041B93C();
  a1[4] = sub_1B041B990();
  a1[5] = sub_1B041B9E4();
  result = sub_1B041BAA4();
  a1[6] = result;
  return result;
}

unint64_t sub_1B041B894()
{
  result = qword_1EB6DE6D0;
  if (!qword_1EB6DE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6D0);
  }

  return result;
}

unint64_t sub_1B041B8E8()
{
  result = qword_1EB6DE6E8;
  if (!qword_1EB6DE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6E8);
  }

  return result;
}

unint64_t sub_1B041B93C()
{
  result = qword_1EB6DE708;
  if (!qword_1EB6DE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE708);
  }

  return result;
}

unint64_t sub_1B041B990()
{
  result = qword_1EB6DE6D8;
  if (!qword_1EB6DE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6D8);
  }

  return result;
}

unint64_t sub_1B041B9E4()
{
  result = qword_1EB6DE700;
  if (!qword_1EB6DE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE700);
  }

  return result;
}

unint64_t sub_1B041BA50()
{
  result = qword_1EB6DE6F0;
  if (!qword_1EB6DE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6F0);
  }

  return result;
}

unint64_t sub_1B041BAA4()
{
  result = qword_1EB6DE6E0;
  if (!qword_1EB6DE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6E0);
  }

  return result;
}

unint64_t sub_1B041BAFC()
{
  result = qword_1EB6DE6F8;
  if (!qword_1EB6DE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE6F8);
  }

  return result;
}

uint64_t sub_1B041BB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MessageIdentifierSetNonEmpty(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_1B041BC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B03D06F8();
    v7 = a3(a1, &type metadata for MessageIdentificationShiftWrapper, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B041BC68(uint64_t a1)
{
  v5 = qword_1EB6DB088;
  if (!qword_1EB6DB088)
  {
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB088);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B041BCFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B041BD44()
{
  result = qword_1EB6DE720;
  if (!qword_1EB6DE720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6440, &unk_1B0EF3530);
    sub_1B041BCFC(&qword_1EB6DE740, type metadata accessor for ParameterValue, &protocol conformance descriptor for ParameterValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE720);
  }

  return result;
}

unint64_t sub_1B041BDF8()
{
  result = qword_1EB6DE738;
  if (!qword_1EB6DE738)
  {
    type metadata accessor for ParameterValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE738);
  }

  return result;
}

uint64_t sub_1B041BE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MessageIdentifierSet(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B041BECC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, ValueMetadata *, unint64_t))
{
  sub_1B041BC04(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B041BF64(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B041BFF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *type metadata accessor for UID()
{
  return &type metadata for UID;
}

{
  return &type metadata for UID;
}

void sub_1B041C078(uint64_t a1)
{
  if (!qword_1EB6DC948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3850, &qword_1B0E9B600);
    v1 = sub_1B0E435A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DC948);
    }
  }
}

void *sub_1B041C0EC(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

void sub_1B041C13C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1B041C194()
{
  result = qword_1EB6DE188;
  if (!qword_1EB6DE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE188);
  }

  return result;
}

unint64_t sub_1B041C1E8()
{
  v2 = qword_1EB6DE1A0;
  if (!qword_1EB6DE1A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B041C260(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1B041D32C(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1B27256A0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1B27256A0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x1B27256A0](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_1B0C0895C(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_1B0E43578();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1B041C440()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.move = 1163284301;
  *algn_1EB738008 = 0xE400000000000000;
  qword_1EB738010 = v0;
  byte_1EB738018 = v5 & 1;
  return result;
}

uint64_t sub_1B041C51C()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  StateWithTasks.inSyncMailboxes.getter(v12);
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_0(v12, v12[3]);
  v11[2] = sub_1B03C8E00(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3580, &qword_1B0EA2000);
  sub_1B0E44FD8();
  v7 = v11[3];
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  if (!*(v7 + 16))
  {
  }

  v8 = *(v1 + 32);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v8(v9 | 0x9000000000000004);
}

uint64_t sub_1B041C6F4()
{

  return swift_deallocObject();
}

void StateWithTasks.inSyncMailboxes.getter(void *a1@<X8>)
{
  if (*(v1 + 192) == 1)
  {
    v3 = *(v1 + 168);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD8, &qword_1B0EC0F10);
    v5 = sub_1B039E3F8(&qword_1EB6DA400, &qword_1EB6E3DD8, &qword_1B0EC0F10, MEMORY[0x1E69E6CC8]);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = sub_1B03FFDF0;
    v6[4] = 0;
    v6[5] = sub_1B0A8F5AC;
    v6[6] = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD0, &qword_1B0EC0F08);
    v5 = sub_1B039E3F8(&qword_1EB6DB4A8, &qword_1EB6E3DD0, &qword_1B0EC0F08, MEMORY[0x1E69E6328]);
    v6 = MEMORY[0x1E69E7CC0];
  }

  a1[3] = v4;
  a1[4] = v5;
  *a1 = v6;
}

uint64_t sub_1B041C864()
{

  return swift_deallocObject();
}

uint64_t sub_1B041C8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041C914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041C97C(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B041C9E0(uint64_t a1)
{
  v2 = _s6LoggerVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B041CA3C()
{
  v1 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[21];
  if (sub_1B0A94670(12, v8) & 1) == 0 || (sub_1B0A94670(12, v7) & 1) != 0 || (sub_1B03BE324(v8, v7) & 1) != 0 && (sub_1B0A94670(12, v9))
  {
    goto LABEL_3;
  }

  v12 = type metadata accessor for MailboxSyncState(0);
  sub_1B03BD4C8(v0 + *(v12 + 68), v6, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
LABEL_13:
    v10 = sub_1B041CC20() ^ 1;
    return v10 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B03BD5FC(v6, _s15MissingMessagesOMa);
    goto LABEL_13;
  }

  sub_1B03D008C(v6, v3, _s15MissingMessagesO10IncompleteVMa);
  v14 = sub_1B0B4BE48();
  v16 = v15;
  sub_1B03BD5FC(v3, _s15MissingMessagesO10IncompleteVMa);
  if ((v16 & 1) != 0 || !v14)
  {
    goto LABEL_13;
  }

LABEL_3:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1B041CC20()
{
  v1 = 0;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v2 + 56;
  v6 = v3 + 56;
  v7 = v4 + 56;
  v8 = &unk_1F27105A0;
  while (*(v2 + 16))
  {
    v9 = v8;
    v10 = v8[v1 + 32];
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v10);
    v11 = sub_1B0E46CB8();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      break;
    }

    ++v1;
    v14 = ~v12;
    while (*(*(v2 + 48) + v13) != v10)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(v3 + 16))
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      v15 = sub_1B0E46CB8();
      v16 = -1 << *(v3 + 32);
      v17 = v15 & ~v16;
      if ((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v3 + 48) + v17) != v10)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 1;
      }
    }

LABEL_13:
    if (sub_1B03BE324(v2, v3))
    {
      if (*(v4 + 16))
      {
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v10);
        v19 = sub_1B0E46CB8();
        v20 = -1 << *(v4 + 32);
        v21 = v19 & ~v20;
        if ((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (*(*(v4 + 48) + v21) != v10)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          return 1;
        }
      }
    }

LABEL_19:
    v8 = v9;
    if (v1 == 7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B041CE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B041CE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041CEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B041CF6C(uint64_t a1)
{
  v3 = sub_1B04376A0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1B041D024(uint64_t a1)
{
  result = type metadata accessor for MessageSectionData.Segment(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B041D0D8(uint64_t a1)
{
  type metadata accessor for Task.Logger(319);
  if (v1 <= 0x3F)
  {
    sub_1B041D1CC();
    if (v2 <= 0x3F)
    {
      sub_1B041D4C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B041D1CC()
{
  if (!qword_1EB6DEAD8)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DEAD8);
    }
  }
}

uint64_t sub_1B041D21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = sub_1B0E46A78();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = sub_1B0C08B5C(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = *(a5 + 16 * v11 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v15;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B041D32C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B041D34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B041D34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1B041D458()
{
  if (!qword_1EB6DC9E0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DC9E0);
    }
  }
}

unint64_t sub_1B041D4C0()
{
  result = qword_1EB6DA2C8;
  if (!qword_1EB6DA2C8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB6DA2C8);
  }

  return result;
}

void sub_1B041D510(uint64_t a1)
{
  sub_1B041D6E0(319, &qword_1EB6DB648);
  if (v1 <= 0x3F)
  {
    sub_1B041C13C(319, &qword_1EB6DE960, &type metadata for MailboxName, &type metadata for MailboxStatus);
    if (v2 <= 0x3F)
    {
      sub_1B041D6E0(319, &qword_1EB6DB560);
      if (v3 <= 0x3F)
      {
        sub_1B041D72C(319, &qword_1EB6DAD98, sub_1B041C194, &type metadata for Flag, MEMORY[0x1E69E64E8]);
        if (v4 <= 0x3F)
        {
          sub_1B041D72C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v5 <= 0x3F)
          {
            sub_1B041C078(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B041D6E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B0E45358();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B041D72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B041D794(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B041C260(v3, 0);
  sub_1B041DB10(0, v3, 0);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    while (1)
    {
      v6 = v5 + 32 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v15 + 16);
      v14 = *(v6 + 16);
      if (v9)
      {
        break;
      }

LABEL_11:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C07E68(v8, v7, 0);
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B041DB10((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v2 + 16) = v13 + 1;
      *(v2 + 16 * v13 + 32) = v14;
      if (v4 == v3)
      {
        return;
      }
    }

    v10 = (v15 + 40);
    while (1)
    {
      v11 = *(v10 - 1) == v8 && *v10 == v7;
      if (v11 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      v10 += 2;
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __break(1u);
    __break(1u);
  }
}

double sub_1B041D974()
{
  sub_1B041D794(MEMORY[0x1E69E7CC0]);
  sub_1B041DB30(v0, v1, v2, v4);
  xmmword_1EB737CC0 = v10;
  unk_1EB737CD0 = v11;
  xmmword_1EB737CE0 = v12;
  xmmword_1EB737C80 = v6;
  unk_1EB737C90 = v7;
  xmmword_1EB737CA0 = v8;
  unk_1EB737CB0 = v9;
  static ServerID.empty = v4[0];
  *algn_1EB737C50 = v4[1];
  result = *&v5;
  xmmword_1EB737C60 = v4[2];
  unk_1EB737C70 = v5;
  return result;
}

void *sub_1B041D9DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5638, &unk_1B0EFA5B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B041DB10(void *a1, int64_t a2, char a3)
{
  result = sub_1B041D9DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 sub_1B041DB30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B041D21C(1701667182, 0xE400000000000000, a1, a2, a3);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v72 = v11;
  v73 = v10;
  v12 = sub_1B041D21C(0x6E6F6973726576, 0xE700000000000000, a1, a2, a3);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v13 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v70 = v15;
  v71 = v14;
  v16 = sub_1B041D21C(29551, 0xE200000000000000, a1, a2, a3);
  if (v17 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (v17 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v68 = v19;
  v69 = v18;
  v20 = sub_1B041D21C(0x69737265762D736FLL, 0xEA00000000006E6FLL, a1, a2, a3);
  if (v21 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (v21 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v66 = v23;
  v67 = v22;
  v24 = sub_1B041D21C(0x726F646E6576, 0xE600000000000000, a1, a2, a3);
  if (v25 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (v25 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v64 = v27;
  v65 = v26;
  v28 = sub_1B041D21C(0x2D74726F70707573, 0xEB000000006C7275, a1, a2, a3);
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (v29 == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v62 = v31;
  v63 = v30;
  v32 = sub_1B041D21C(0x73736572646461, 0xE700000000000000, a1, a2, a3);
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  if (v33 == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v60 = v35;
  v61 = v34;
  v36 = sub_1B041D21C(1702125924, 0xE400000000000000, a1, a2, a3);
  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  if (v37 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v58 = v39;
  v59 = v38;
  v40 = sub_1B041D21C(0x646E616D6D6F63, 0xE700000000000000, a1, a2, a3);
  if (v41 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v44 = sub_1B041D21C(0x746E656D75677261, 0xE900000000000073, a1, a2, a3);
  if (v45 == 1)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  if (v45 == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  v48 = sub_1B041D21C(0x6D6E6F7269766E65, 0xEB00000000746E65, a1, a2, a3);
  v50 = v49;

  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = v48;
  }

  if (v50 == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  *&v75 = v73;
  *(&v75 + 1) = v72;
  *&v76 = v71;
  *(&v76 + 1) = v70;
  *&v77 = v69;
  *(&v77 + 1) = v68;
  v78.n128_u64[0] = v67;
  v78.n128_u64[1] = v66;
  *&v79 = v65;
  *(&v79 + 1) = v64;
  *&v80 = v63;
  *(&v80 + 1) = v62;
  *&v81 = v61;
  *(&v81 + 1) = v60;
  *&v82 = v59;
  *(&v82 + 1) = v58;
  *&v83 = v42;
  *(&v83 + 1) = v43;
  *&v84 = v46;
  *(&v84 + 1) = v47;
  *&v85 = v51;
  *(&v85 + 1) = v52;
  v86[0] = v73;
  v86[1] = v72;
  v86[2] = v71;
  v86[3] = v70;
  v86[4] = v69;
  v86[5] = v68;
  v86[6] = v67;
  v86[7] = v66;
  v86[8] = v65;
  v86[9] = v64;
  v86[10] = v63;
  v86[11] = v62;
  v86[12] = v61;
  v86[13] = v60;
  v86[14] = v59;
  v86[15] = v58;
  v86[16] = v42;
  v86[17] = v43;
  v86[18] = v46;
  v86[19] = v47;
  v86[20] = v51;
  v86[21] = v52;
  sub_1B039F420(&v75, &v74);
  sub_1B039FF14(v86);
  v53 = v84;
  *(a4 + 128) = v83;
  *(a4 + 144) = v53;
  *(a4 + 160) = v85;
  v54 = v80;
  *(a4 + 64) = v79;
  *(a4 + 80) = v54;
  v55 = v82;
  *(a4 + 96) = v81;
  *(a4 + 112) = v55;
  v56 = v76;
  *a4 = v75;
  *(a4 + 16) = v56;
  result = v78;
  *(a4 + 32) = v77;
  *(a4 + 48) = result;
  return result;
}

void *sub_1B041DEEC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4470, &qword_1B0EC51E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4478, &qword_1B0EC51F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B041E020(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = result;
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v7 + 32;
    if (*(v7 + 32 + 16 * (v8 - 1) + 12) > a3)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          if (__OFSUB__(v9, v7))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = v7 + (v9 - v7) / 2;
          if (__OFADD__(v7, (v9 - v7) / 2))
          {
            goto LABEL_23;
          }

          if (v11 >= v8)
          {
            goto LABEL_24;
          }

          v12 = *(v10 + 16 * v11 + 12);
          if (v12 < a3)
          {
            break;
          }

          if (v12 <= a3)
          {
            return result;
          }

          v9 = v11 - 1;
          if ((v11 - 1) < v7)
          {
            goto LABEL_12;
          }
        }

        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }
      }

      while (v9 >= v7);
LABEL_12:
      if (v8 < v7)
      {
        __break(1u);
      }

      else if ((v7 & 0x8000000000000000) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BAB8C4(v7, v7, v6, a2 | (a3 << 32));
      }

      __break(1u);
      return result;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_26:
    result = sub_1B041DEEC(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_1B041DEEC((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = v6;
  *(v15 + 40) = a2;
  *(v15 + 44) = a3;
  *v3 = v7;
  return result;
}

uint64_t sub_1B041E1C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  result = sub_1B0E46208();
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v20 | (v20 << 32));
      result = sub_1B0E46CB8();
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
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
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

unint64_t sub_1B041E424()
{
  result = qword_1EB6DE2D8;
  if (!qword_1EB6DE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE2D8);
  }

  return result;
}

void *sub_1B041E494(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

uint64_t static UIDValidityWith<A>.__derived_struct_equals(_:_:)(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UIDValidityWith(0, a3, a3, a4);
  return sub_1B0E44A28() & 1;
}

uint64_t sub_1B041E574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B041E5BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B041E604(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, sub_1B0430EA8, v8);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B041E6D0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B041E710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_1B0C2EBD8(a1, a2, sub_1B0430EA0, v8);
}

uint64_t sub_1B041E7AC()
{

  return swift_deallocObject();
}

uint64_t sub_1B041E7E8(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v37 = a2;
  v11 = _s6LoggerVMa_0(0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B0E44468();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EB6DCDB8;
  *v16 = qword_1EB6DCDB8;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = sub_1B0E44488();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v31 = HIWORD(a1);
    v20 = swift_allocObject();
    v20[2] = v6;
    v20[3] = a4;
    v20[4] = v34;
    v20[5] = a6;
    v33 = qword_1EB737B88;
    v21 = *v6;
    v32 = a6;
    v22 = *(v21 + 136);
    v34 = qword_1EB737B78;
    v23 = *(v6 + qword_1EB737B80);
    v24 = v36;
    sub_1B041EC54(v6 + qword_1EB737B88, v36, _s6LoggerVMa_0);
    v25 = a4;
    v26 = (*(v35 + 80) + 64) & ~*(v35 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1B0430E48;
    *(v27 + 24) = v20;
    *(v27 + 32) = v23;
    *(v27 + 40) = a1;
    *(v27 + 42) = v31;
    *(v27 + 48) = v37;
    *(v27 + 56) = a3;
    sub_1B041ECBC(v24, v27 + v26);
    v28 = *(v6 + v22);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v29 = v25;

    sub_1B0C2FED8(v23, v6 + v34, v29, v6 + v33, sub_1B042FF4C, v27, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B041EB30()
{

  return swift_deallocObject();
}

uint64_t sub_1B041EB78()
{
  v1 = *(_s6LoggerVMa_0(0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);

  v3 = sub_1B0E439A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1B041EC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B041ECBC(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B041ED50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);

    if (v6 == a2)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(Strong + 16) = 0;
      }

      return a3(Strong);
    }
  }

  return result;
}

int64_t sub_1B041EE30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24[-v2];
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1B0E44488();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  if (*(v12 + 16))
  {
    return sub_1B041F1A8();
  }

  v13 = *(v12 + 8);
  result = static MonotonicTime.now()();
  v14 = __OFSUB__(v13, result);
  v15 = v13 - result;
  if (v13 >= result)
  {
LABEL_8:
    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if (__OFSUB__(result, v13))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(0, result - v13);
  v15 = v13 - result;
  if (v14)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v16 = v15 / 1000000000.0;
  if (v16 < 0.0)
  {
    return sub_1B041F1A8();
  }

  v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v0 + v17, v3, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v18 = sub_1B0E439A8();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v3, 1, v18);
  if (result == 1)
  {
    goto LABEL_19;
  }

  v20 = v0;

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v21 = sub_1B0E43988();
  v22 = sub_1B0E458E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 68158208;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    *(v23 + 10) = *(v20 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v23 + 11) = 2048;
    *(v23 + 13) = v16;
    _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx] Backoff timer expired, but we still have to wait %f seconds.", v23, 0x15u);
    MEMORY[0x1B272C230](v23, -1, -1);
  }

  else
  {
  }

  (*(v19 + 8))(v3, v18);
  return sub_1B0C50C9C();
}

uint64_t sub_1B041F1A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v1 + v5, v4, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v6 = sub_1B0E439A8();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v9 = sub_1B0E43988();
    v10 = sub_1B0E458C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68157952;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      *(v11 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx] Backoff timer has expired. Re-trying.", v11, 0xBu);
      MEMORY[0x1B272C230](v11, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v4, v6);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B041F3D0(MEMORY[0x1E69E7CC0]);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B041F3D0(uint64_t a1)
{
  v3 = sub_1B0E44468();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  v10 = v4 + 104;
  v9 = *(v4 + 104);
  v56 = *MEMORY[0x1E69E8020];
  v55 = v9;
  v9(v7, v5);
  v11 = v8;
  v12 = sub_1B0E44488();
  v13 = *(v4 + 8);
  v57 = v7;
  v58 = v4 + 8;
  v51 = v3;
  v54 = v13;
  result = v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v49 = v1;
    v50 = v10;
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_1B0C57BF8(0, v15, 0);
    v16 = v59[0];
    v53 = a1;
    v17 = (a1 + 64);
    v18 = v15;
    do
    {
      v19 = *(v17 - 8);
      v20 = *(v17 - 3);
      v21 = *(v17 - 4);
      v23 = *(v17 - 1);
      v22 = *v17;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v20;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      *(v24 + 48) = v22;
      sub_1B044CD04(v20);
      v59[0] = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v26 >= v25 >> 1)
      {
        sub_1B0C57BF8((v25 > 1), v26 + 1, 1);
        v16 = v59[0];
      }

      *(v16 + 16) = v26 + 1;
      *(v16 + 8 * v26 + 32) = v24;
      v17 += 5;
      --v18;
    }

    while (v18);
    v27 = v49;
    sub_1B038DED0(v16);

    v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    v29 = (v53 + 64);
    v48 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator;
    while (1)
    {
      v30 = *(v29 - 3);
      v31 = *(v27 + v28);
      if (v31)
      {
        v32 = v30 >> 60 == 7;
      }

      else
      {
        v32 = 0;
      }

      if (!v32)
      {
        goto LABEL_8;
      }

      v33 = *(v29 - 1);
      v53 = *v29;
      v34 = *((v30 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *(v31 + 16);
      v36 = v57;
      *v57 = v35;
      v37 = v51;
      v55(v36, v56, v51);
      v38 = v35;
      v52 = v33;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      sub_1B044CD04(v30);
      LOBYTE(v35) = sub_1B0E44488();
      result = v54(v36, v37);
      if ((v35 & 1) == 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v39 = static MonotonicTime.now()();
      swift_beginAccess();
      v40 = *(v31 + 64);
      if (v34)
      {
        break;
      }

      if (v40 == 1)
      {
        v39 = 0;
        v41 = 0;
LABEL_22:
        *(v31 + 56) = v39;
        *(v31 + 64) = v41;
      }

LABEL_23:
      v42 = v57;
      *v57 = v38;
      v55(v42, v56, v37);
      v43 = sub_1B0E44488();
      result = v54(v42, v37);
      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }

      sub_1B044E4C4();
      sub_1B044E8FC();

      sub_1B044CEF8(v30);

      v28 = v48;
      v27 = v49;
LABEL_8:
      v29 += 5;
      if (!--v15)
      {
        return result;
      }
    }

    if (*(v31 + 64) && (v40 != 1 || *(v31 + 56) >= v39))
    {
      goto LABEL_23;
    }

    v41 = 1;
    goto LABEL_22;
  }

  v44 = v57;
  *v57 = v11;
  v45 = v51;
  v55(v44, v56, v51);
  v46 = v11;
  v47 = sub_1B0E44488();
  result = v54(v44, v45);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_1B038DED0(&unk_1F2721090);
  return sub_1B0425738(&unk_1F27210B0);
}

uint64_t sub_1B041F834()
{
  sub_1B044CEF8(*(v0 + 24));

  return swift_deallocObject();
}

char *MailboxesSelectionUsage.sortedIdleConnections(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v41 = v2;
    sub_1B04544CC(0, v2, 0);
    v6 = v41;
    v7 = 0;
    v8 = a1 + 32;
    v9 = v42;
    v10 = (a2 + 32);
    v11 = *(a2 + 16) + 1;
    do
    {
      v12 = *(v8 + 4 * v7);
      v13 = v11;
      v14 = v10;
      while (--v13)
      {
        v15 = v14 + 10;
        v16 = *v14;
        v14 += 10;
        if (v16 == v12)
        {
          v17 = *(v15 - 8);
          v18 = *(v15 - 2);
          goto LABEL_8;
        }
      }

      v18 = 0;
      v17 = 1;
LABEL_8:
      v42 = v9;
      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v23 = v8;
        sub_1B04544CC((v19 > 1), v20 + 1, 1);
        v8 = v23;
        v6 = v41;
        v9 = v42;
      }

      *(v9 + 2) = v21;
      v22 = &v9[32 * v20];
      *(v22 + 4) = v7;
      *(v22 + 10) = v12;
      *(v22 + 6) = v18;
      v22[56] = v17;
      ++v7;
    }

    while (v7 != v6);
  }

  else
  {
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (!v21)
    {
      goto LABEL_25;
    }
  }

  v24 = (v9 + 56);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = *(v24 - 1);
    v29 = *v24;
    if (v29 != 1 || v28 == 0)
    {
      v31 = *(v24 - 3);
      v32 = *(v24 - 4);
      v42 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B04544CC(0, *(v3 + 2) + 1, 1);
        v3 = v42;
      }

      v26 = *(v3 + 2);
      v25 = *(v3 + 3);
      if (v26 >= v25 >> 1)
      {
        sub_1B04544CC((v25 > 1), v26 + 1, 1);
        v3 = v42;
      }

      *(v3 + 2) = v26 + 1;
      v27 = &v3[32 * v26];
      *(v27 + 4) = v31;
      *(v27 + 10) = v32;
      *(v27 + 6) = v28;
      v27[56] = v29;
    }

    v24 += 32;
    --v21;
  }

  while (v21);
LABEL_25:

  v42 = v3;

  sub_1B0454500(&v42);

  v33 = v42;
  v34 = *(v42 + 2);
  if (v34)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B04543AC(0, v34, 0);
    v35 = v42;
    v36 = *(v42 + 2);
    v37 = 40;
    do
    {
      v38 = *&v33[v37];
      v42 = v35;
      v39 = *(v35 + 3);
      if (v36 >= v39 >> 1)
      {
        sub_1B04543AC((v39 > 1), v36 + 1, 1);
        v35 = v42;
      }

      *(v35 + 2) = v36 + 1;
      *&v35[4 * v36 + 32] = v38;
      v37 += 32;
      ++v36;
      --v34;
    }

    while (v34);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v35;
}

void sub_1B041FB64(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v54 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v49 - v5;
  v53 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID;
  v8 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID);
  v9 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v51 = v9;
LABEL_2:
  v10 = *&v9[a2];
  if (v10 >> 62)
  {
    v11 = sub_1B0E46138();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v11)
  {
LABEL_17:

    *(a2 + v52) = v8 + 1;
    v15 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_1B03C623C(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v7, type metadata accessor for ConnectionConfiguration);
    v16 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
    v17 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
    v18 = v7;
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);
    v20 = v53;
    v21 = v18;
    v22 = v18[*(v53 + 28)];
    LODWORD(v52) = v15;
    v51 = v17;
    if (v22 >> 6)
    {
      if (v22 >> 6 == 1)
      {
        v23 = v22 & 0x3F | 0x40;
      }

      else
      {
        v23 = 0x80;
      }
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_1B0E43BC8();
    v25 = v57;
    (*(*(v24 - 8) + 16))(v57, v21, v24);
    v26 = *(v21 + v20[5]);
    v27 = *(v21 + v20[6]);
    v28 = (v21 + v20[8]);
    v29 = *v28;
    v50 = v28[1];
    v30 = v50;
    v31 = (v21 + v20[10]);
    v32 = *v31;
    v33 = v31[1];
    v34 = v54;
    v35 = v55;
    v36 = (v25 + v54[8]);
    v37 = (v25 + v54[9]);
    v38 = v54[6];
    *(v25 + v54[5]) = v26;
    *(v25 + v38) = v27;
    *(v25 + v34[7]) = v23;
    *v36 = v29;
    v36[1] = v30;
    *v37 = v32;
    v37[1] = v33;
    sub_1B03C623C(v25, v35, type metadata accessor for ConnectionConfiguration);
    type metadata accessor for CommandConnection(0);
    v54 = swift_allocObject();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v39 = v56;

    swift_retain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = v51;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v8, v52, v35, v16, sub_1B044AFA8, a2, sub_1B0C5A0D8, a2, v41, v42, v43, v44, v45, v46, v47, v48, sub_1B0C5A0DC, a2, v40, v39, &off_1F2721AA0, sub_1B041AAB4, v19, 0.0, 1);
    sub_1B038C824(v21, type metadata accessor for ConnectionConfiguration);
    sub_1B038C824(v25, type metadata accessor for ConnectionConfiguration);
    return;
  }

  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1B2728410](v12, v10);
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_25;
    }

    LODWORD(v50) = *(v13 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v50 == v8)
    {
LABEL_15:

      v8 = (v8 + 1);
      v9 = v51;
      goto LABEL_2;
    }

LABEL_11:
    if (v12 == v11)
    {
      goto LABEL_17;
    }
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(*(v10 + 32 + 8 * v12) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v8)
    {
      goto LABEL_15;
    }

    ++v12;
    goto LABEL_11;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t type metadata accessor for ConnectionConfiguration(uint64_t a1)
{
  return sub_1B0390488(a1, &unk_1EB6DCF60, &nominal type descriptor for ConnectionConfiguration);
}

{
  result = qword_1EB6DCA20;
  if (!qword_1EB6DCA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConnectionConfiguration.TransportLayerSecurity.init(_:)(uint64_t result)
{
  if (result >> 6 == 1)
  {
    v1 = result & 0x3F | 0x40;
  }

  else
  {
    v1 = 128;
  }

  if (result >> 6)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t ConnectionConfiguration.init(endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:transportLayerSecurity:sourceApplicationBundleIdentifier:networkAccountIdentifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for ConnectionConfiguration(0);
  v16 = v15[6];
  v17 = (a9 + v15[8]);
  v18 = (a9 + v15[9]);
  v19 = sub_1B0E43BC8();
  result = (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + v15[5]) = a2;
  *(a9 + v16) = a3;
  *(a9 + v15[7]) = a4;
  *v17 = a5;
  v17[1] = a6;
  *v18 = a7;
  v18[1] = a8;
  return result;
}

uint64_t type metadata accessor for CommandConnection(uint64_t a1)
{
  result = qword_1EB6DD028;
  if (!qword_1EB6DD028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B04201EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v46 = a4;
  v47 = a3;
  v56 = a2;
  v9 = sub_1B0E43828();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1B0E43868();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B0E43BC8();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E43E78();
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v45 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s6LoggerVMa_0(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v43 - v23);
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  *(v5 + v25) = ServerResponseTranscoder.init()();
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_pendingHandshakeReplyCount) = 0;
  v26 = v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime;
  *(v5 + v27) = static MonotonicTime.now()();
  sub_1B0E43998();
  v28 = v24 + *(v19 + 28);
  *v28 = v7;
  *(v28 + 1) = v6;
  v43[1] = sub_1B0E43E68();
  v44 = type metadata accessor for ConnectionConfiguration;
  sub_1B03FD208(a1, v17, type metadata accessor for ConnectionConfiguration);
  sub_1B03FD208(v24, v21, _s6LoggerVMa_0);
  sub_1B04208F4(v17, v21);
  sub_1B0E43EB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E43EC8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = v51;
  sub_1B0E43ED8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = a1;
  sub_1B0E43EF8();
  (*(v48 + 104))(v45, *MEMORY[0x1E6977C40], v49);
  sub_1B0E43E88();
  v55[2](v50, v17, v57);
  v31 = sub_1B0E43DB8();
  sub_1B03D6AC4(v21, _s6LoggerVMa_0);
  sub_1B03D6AC4(v17, type metadata accessor for ConnectionConfiguration);
  v55 = v24;
  v32 = v52;
  sub_1B03FD208(v24, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, _s6LoggerVMa_0);
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_createdAt) = static MonotonicTime.now()();
  v57 = v30;
  sub_1B03FD208(v30, v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v44);
  v33 = v56;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue) = v56;
  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection) = v31;
  v34 = v33;

  *(v5 + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID) = sub_1B0E43C68();
  v35 = tracingSignposter.unsafeMutableAddressor();
  v36 = v53;
  v37 = v54;
  (*(v54 + 16))(v53, v35, v32);
  sub_1B0E43838();
  v38 = sub_1B0E43858();
  v39 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    *(v40 + 4) = 1;
    v41 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v38, v39, v41, "Connection.networkStateUpdate", "%u", v40, 8u);
    MEMORY[0x1B272C230](v40, -1, -1);
  }

  sub_1B03D6AC4(v57, type metadata accessor for ConnectionConfiguration);
  (*(v58 + 8))(v29, v59);
  (*(v37 + 8))(v36, v32);
  sub_1B03D6AC4(v55, _s6LoggerVMa_0);
  return v5;
}

uint64_t ServerResponseTranscoder.init()()
{
  sub_1B0E435B8();
}

uint64_t sub_1B04208F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  sub_1B0E43F38();
  swift_allocObject();
  v10 = sub_1B0E43F28();
  sub_1B0E43F18();
  v11 = *(a1 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  sub_1B0E43F08();
  if ((v11 & 0xC0) == 0x40)
  {
    v12 = sub_1B0420CD0(a1, v11 & 0x3F, a2);

    v13 = v12;
  }

  else
  {

    v13 = 0;
  }

  v14 = MEMORY[0x1B2726000](v13, v10);
  v15 = qword_1EB6DCDA8;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_1B0E44048();
  swift_allocObject();

  v16 = sub_1B0E44038();
  v17 = (a2 + *(_s6LoggerVMa_0(0) + 20));
  v18 = *(v17 + 1);
  v19 = *v17;
  *(&v27 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v26) = v19;
  DWORD1(v26) = v18;
  sub_1B0E44068();
  sub_1B0E43838();
  v20 = sub_1B0E43828();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v9, 0, 1, v20);
  sub_1B03B5C80(v9, v6, &qword_1EB6E5530, &qword_1B0ED0CF8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    sub_1B0398EFC(v6, &qword_1EB6E5530, &qword_1B0ED0CF8);
    v26 = 0u;
    v27 = 0u;
  }

  else
  {
    *(&v27 + 1) = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v26);
    (*(v21 + 32))(boxed_opaque_existential_0, v6, v20);
  }

  sub_1B0E44068();
  sub_1B0398EFC(v9, &qword_1EB6E5530, &qword_1B0ED0CF8);
  sub_1B0E43EA8();

  v23 = sub_1B0E43E98();
  if (*v24 >> 62 && (result = sub_1B0E46138(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_1B042104C(0, 0, v16);

    v23(&v26, 0);

    return v14;
  }

  return result;
}

uint64_t sub_1B0420CD0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1B0E43BC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ConnectionConfiguration(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B041EC54(a1, v16, type metadata accessor for ConnectionConfiguration);
  sub_1B041EC54(a3, v12, _s6LoggerVMa_0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = &v16[*(v14 + 44)];
  v19 = *v17;
  v18 = *(v17 + 1);
  v20 = qword_1EB6DCDD8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB6DCDE0;

  sub_1B038D6F0(v16, type metadata accessor for ConnectionConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E58E8, qword_1B0ED9EA0);
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + qword_1EB737B78, v9, v6);
  v23 = (v22 + qword_1EB737B90);
  *v23 = v19;
  v23[1] = v18;
  *(v22 + qword_1EB737B80) = a2;
  *(v22 + *(*v22 + 136)) = v21;
  sub_1B041ECBC(v12, v22 + qword_1EB737B88);
  v24 = sub_1B0421A34(v22);

  return v24;
}

uint64_t block_copy_helper_1_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B042104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B0E46138();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1B0E46138();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1B0BE1DA8(result, 1);

  return sub_1B0423DB8(v7, v6, 1, v4);
}

uint64_t CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v26 = v25;
  v94 = a8;
  v87 = a7;
  v93 = a6;
  v85 = a5;
  v88 = a4;
  v91 = a23;
  v92 = a18;
  v86 = a17;
  v84 = a21;
  v79 = sub_1B0E44208();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v76[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v80 = &v76[-v33];
  v83 = sub_1B0E43DF8();
  v95 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v90 = &v76[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v89 = &v76[-v36];
  v37 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v76[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v41 = v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  v42 = MEMORY[0x1E69E7CC0];
  *v41 = MEMORY[0x1E69E7CC0];
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = v42;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = MEMORY[0x1E69E7CD0];
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v43 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v43 = 0u;
  v43[1] = 0u;
  v43[2] = 0u;
  *(v43 + 44) = 0u;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v26 + 24) = a19;
  v82 = a3;
  sub_1B038C9A4(a3, v39, type metadata accessor for ConnectionConfiguration);
  type metadata accessor for Connection(0);
  swift_allocObject();
  v44 = a19;
  v77 = a1;
  v45 = sub_1B04201EC(v39, v44, a2, a1);

  sub_1B038C9A4(v45 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa_0);
  *(v40 + 8) = v84;
  v84 = a20;
  swift_unknownObjectWeakAssign();
  v46 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v46 = v85;
  v46[1] = a6;
  v47 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v48 = v94;
  *v47 = v87;
  v47[1] = v48;
  v49 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v50 = v92;
  *v49 = v86;
  v49[1] = v50;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v88;
  v51 = *MEMORY[0x1E6977C08];
  v88 = *(v95 + 104);
  v52 = v83;
  v88(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, v51, v83);
  type metadata accessor for ConnectionState(0);
  swift_storeEnumTagMultiPayload();
  *(v26 + 16) = v45;
  *(v45 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1F271C898;
  swift_unknownObjectWeakAssign();
  v53 = *(v45 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v54 = swift_allocObject();
  *(v54 + 56) = 0;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  v86 = v44;

  v87 = v45;

  v55 = v91;

  v56 = v89;
  sub_1B0E43E18();
  v57 = v90;
  v58 = v52;
  v88(v90, v51, v52);
  v59 = v56;
  LOBYTE(v56) = MEMORY[0x1B2725F00](v56, v57);
  v60 = *(v95 + 8);
  v60(v57, v58);
  result = (v60)(v59, v58);
  if (v56)
  {
    *(v54 + 16) = v53;
    *(v54 + 24) = v77;
    v62 = v86;
    *(v54 + 32) = v86;
    *(v54 + 40) = a22;
    *(v54 + 48) = v55;
    *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v54;

    if (a25)
    {
      v63 = 285.0;
    }

    else
    {
      v63 = a24;
    }

    v64 = v62;

    sub_1B0421B80(v64, v97, v63);
    v65 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v66 = v65[1];
    v99[0] = *v65;
    v99[1] = v66;
    *v100 = v65[2];
    *&v100[12] = *(v65 + 44);
    v67 = v97[1];
    *v65 = v97[0];
    v65[1] = v67;
    v65[2] = *v98;
    *(v65 + 44) = *&v98[12];
    sub_1B0398EFC(v99, &qword_1EB6E5438, &qword_1B0ED0350);
    v68 = v80;
    *v80 = 9;
    v69 = *MEMORY[0x1E69E7F48];
    v70 = *(v78 + 104);
    v71 = v79;
    v70(v68, v69, v79);
    v72 = v81;
    *v81 = 1;
    v70(v72, v69, v71);
    v73 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B038D2E4;
    aBlock[5] = v73;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_5;
    v74 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v75 = RestartableTimer.init(queue:repeating:leeway:closure:)(v64, v68, v72, v74);
    swift_unknownObjectRelease();

    sub_1B038D690(v82, type metadata accessor for ConnectionConfiguration);

    *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v75;

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}