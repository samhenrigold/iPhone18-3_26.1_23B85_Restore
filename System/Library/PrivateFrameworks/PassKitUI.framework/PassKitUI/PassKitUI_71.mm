uint64_t sub_1BD7773DC(uint64_t a1)
{
  v2 = *(v1 + 280);
  swift_willThrow();

  v4 = *(v1 + 256);
  v3 = *(v1 + 264);
  v5 = *(v1 + 240);
  v22 = *(v1 + 248);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  v8 = *(v1 + 216);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v21 = sub_1BE052D54();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  *(v1 + 176) = sub_1BD77C4C0;
  *(v1 + 184) = v9;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  *(v1 + 152) = 1107296256;
  *(v1 + 160) = sub_1BD126964;
  *(v1 + 168) = &block_descriptor_182_0;
  v10 = _Block_copy((v1 + 144));
  v11 = v8;
  sub_1BE051F74();
  *(v1 + 208) = MEMORY[0x1E69E7CC0];
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v3, v5, v10);
  _Block_release(v10);

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v3, v22);
  *(v1 + 184), v12, v13, v14, v15, v16, v17, v18;

  v19 = *(v1 + 8);

  return v19(0);
}

uint64_t sub_1BD777628(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a2;
  v5 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD77769C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD777728;

  return sub_1BD776BE0();
}

uint64_t sub_1BD777728(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD777828, 0, 0);
}

uint64_t sub_1BD777828()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) associatedPassUniqueID], v1, v2))
  {
    sub_1BE052434();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v13 = v5;
    v14 = v5;
    if (v4)
    {
      v15 = sub_1BE052404();
      v4, v16, v17, v18, v19, v20, v21, v22;
    }

    else
    {
      v15 = 0;
    }

    v23 = [v13 passWithUniqueID_];

    v24 = [v23 paymentPass];
    if (v24)
    {
      v25 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithPaymentPass_];

      v26 = v25;
      goto LABEL_14;
    }
  }

  else
  {
    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  v26 = 0;
LABEL_14:
  v27 = *(v0 + 8);

  return v27(v26);
}

void sub_1BD7779B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = sub_1BE04D8A4();
  MEMORY[0x1BFB40450](v13, a2, a3, a4);
  v12(v49, 0);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27;
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = sub_1BE04D8A4();
  MEMORY[0x1BFB40460](v31, a5, a6, a7);
  v30(v49, 0);
  v28, v32, v33, v34, v35, v36, v37, v38;
  v29, v39, v40, v41, v42, v43, v44, v45;
}

uint64_t sub_1BD777B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD777B30, 0, 0);
}

uint64_t sub_1BD777B30()
{
  v1 = *(v0 + 176);
  v2 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v2 paymentDataProvider:*(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider)];
  *(v0 + 184) = v3;

  if (v3)
  {
    v12 = v3;
    v13 = sub_1BE04AE64();
    v14 = sub_1BE04AE64();
    [v12 setLimit:0 startDate:v13 endDate:v14];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1BD777EAC;
    v15 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD9C18BC;
    *(v0 + 104) = &block_descriptor_173_0;
    *(v0 + 112) = v15;
    [v12 reloadTransactionsWithCompletion_];
    v4 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v4);
  }

  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v4 = sub_1BE053704();
    v16 = v4;
  }

  else
  {
    v16 = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    if (v16 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    v18 = 0;
    v19 = &selRef_recurringPaymentMemo;
    v20 = &selRef_thumbnailWidth;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v17 >> 62)
      {
        v22 = MEMORY[0x1BFB40900](v18, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v18 + 32);
      }

      v23 = v22;
      if ([v22 transactionType] || objc_msgSend(v23, v19[17]) || objc_msgSend(v23, v20[157]) != 1)
      {
      }

      else
      {
        v24 = *(v0 + 152);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1BD1D96EC(0, *(v21 + 2) + 1, 1, v21, v8, v9, v10, v11);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v21 = sub_1BD1D96EC((v25 > 1), v26 + 1, 1, v21, v8, v9, v10, v11);
        }

        v27 = *(v0 + 152);
        *(v21 + 2) = v26 + 1;
        v28 = &v21[16 * v26];
        *(v28 + 4) = v23;
        *(v28 + 5) = v27;
        v19 = &selRef_recurringPaymentMemo;
        v20 = &selRef_thumbnailWidth;
      }

      ++v18;
    }

    while (v16 != v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v29 = *(v0 + 184);
  MEMORY[0x1E69E7CC0], v5, v6, v7, v8, v9, v10, v11;

  v30 = *(v0 + 8);

  return v30(v21);
}

uint64_t sub_1BD777EAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD777F8C, 0, 0);
}

void sub_1BD777F8C()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  if (v1 >> 62)
  {
    v9 = sub_1BE053704();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_22:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = &selRef_recurringPaymentMemo;
  v13 = &selRef_thumbnailWidth;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB40900](v10, v1);
    }

    else
    {
      v14 = *(v1 + 8 * v10 + 32);
    }

    v15 = v14;
    if ([v14 transactionType] || objc_msgSend(v15, v12[17]) || objc_msgSend(v15, v13[157]) != 1)
    {
    }

    else
    {
      v16 = *(v0 + 152);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD1D96EC(0, *(v11 + 2) + 1, 1, v11, v5, v6, v7, v8);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1BD1D96EC((v17 > 1), v18 + 1, 1, v11, v5, v6, v7, v8);
      }

      v19 = *(v0 + 152);
      *(v11 + 2) = v18 + 1;
      v20 = &v11[16 * v18];
      *(v20 + 4) = v15;
      *(v20 + 5) = v19;
      v12 = &selRef_recurringPaymentMemo;
      v13 = &selRef_thumbnailWidth;
    }

    ++v10;
  }

  while (v9 != v10);
LABEL_23:
  v21 = *(v0 + 184);
  v1, v2, v3, v4, v5, v6, v7, v8;

  v22 = *(v0 + 8);

  v22(v11);
}

void *sub_1BD778178()
{
  if (*(v0 + 80))
  {
    return 0;
  }

  v2 = *(v0 + 32);
  v3 = *(v0 + 24) >> 1;
  if (v2 == v3)
  {
    goto LABEL_9;
  }

  if (v2 >= v3 || v2 < *(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = *(*(v0 + 8) + 8 * v2);
    *(v0 + 32) = v2 + 1;
    v6 = *(v0 + 72);
    v7 = *(v0 + 64) >> 1;
    if (v6 == v7)
    {
LABEL_9:
      result = 0;
      *(v0 + 80) = 1;
      return result;
    }

    if (v6 < v7 && v6 >= *(v0 + 56))
    {
      v9 = *(*(v0 + 48) + 8 * v6);
      *(v0 + 72) = v6 + 1;
      v10 = v5;
      v11 = v5;
      v12 = v9;
      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD778238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccountDebugTransactionGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD77BFE0(a2, v8, type metadata accessor for AccountDebugTransactionGroup);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = sub_1BE04D8A4();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1BD1D97F8(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1BD1D97F8((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  sub_1BD77C264(v8, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, type metadata accessor for AccountDebugTransactionGroup);
  v11(v32, 0);
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v10, v25, v26, v27, v28, v29, v30, v31;
}

uint64_t sub_1BD778430(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v9 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return MEMORY[0x1EEE6DEE8](v9, v10);
  }

  else
  {
    v13 = 0;
    if (a2)
    {
      sub_1BD0E5E8C(0, a4, a5);
      v13 = sub_1BE052744();
    }

    **(*(v9 + 64) + 40) = v13;

    return swift_continuation_throwingResume();
  }
}

void sub_1BD778530(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccountDebugSavingsStatement(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD77BFE0(a2, v6, type metadata accessor for AccountDebugSavingsStatement);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = sub_1BE04D8A4();
  v11 = v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1BD1D9820(0, v12[2] + 1, 1, v12);
    *v11 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1BD1D9820((v14 > 1), v15 + 1, 1, v12);
    *v11 = v12;
  }

  v12[2] = v15 + 1;
  sub_1BD77C264(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, type metadata accessor for AccountDebugSavingsStatement);
  v9(v30, 0);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v8, v23, v24, v25, v26, v27, v28, v29;
}

uint64_t sub_1BD778714(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BE053834();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1BFB3F610](a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = a1;
  return sub_1BE04D8C4();
}

void sub_1BD7787DC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AccountDebugCKTransaction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42[-v10];
  if (a1)
  {
    sub_1BD77BFE0(a3, &v42[-v10], type metadata accessor for AccountDebugCKTransaction);
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    v14 = sub_1BE04D8A4();
    v16 = v15;
    v17 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1BD1D9848(0, v17[2] + 1, 1, v17);
      *v16 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1BD1D9848((v19 > 1), v20 + 1, 1, v17);
      *v16 = v17;
    }

    v17[2] = v20 + 1;
    sub_1BD77C264(v11, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, type metadata accessor for AccountDebugCKTransaction);
    v14(v42, 0);
  }

  else
  {
    sub_1BD77BFE0(a3, v8, type metadata accessor for AccountDebugCKTransaction);
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    v28 = sub_1BE04D8A4();
    v30 = v29;
    v31 = *v29;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_1BD1D9848(0, v31[2] + 1, 1, v31);
      *v30 = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1BD1D9848((v33 > 1), v34 + 1, 1, v31);
      *v30 = v31;
    }

    v31[2] = v34 + 1;
    sub_1BD77C264(v8, v31 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, type metadata accessor for AccountDebugCKTransaction);
    v28(v42, 0);
  }

  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v13, v35, v36, v37, v38, v39, v40, v41;
}

void sub_1BD778B04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccountDebugCKReward(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD77BFE0(a2, v6, type metadata accessor for AccountDebugCKReward);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = sub_1BE04D8A4();
  v11 = v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1BD1D9870(0, v12[2] + 1, 1, v12);
    *v11 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1BD1D9870((v14 > 1), v15 + 1, 1, v12);
    *v11 = v12;
  }

  v12[2] = v15 + 1;
  sub_1BD77C264(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, type metadata accessor for AccountDebugCKReward);
  v9(v30, 0);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v8, v23, v24, v25, v26, v27, v28, v29;
}

uint64_t sub_1BD778CE8(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v55);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v55;
  sub_1BE048C84();
  sub_1BD779C9C(&v55);
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v26;
  v27 = a1;
  sub_1BE04D8C4();
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  sub_1BE04D8B4(&v55);
  v28, v30, v31, v32, v33, v34, v35, v36;
  v29, v37, v38, v39, v40, v41, v42, v43;
  v44 = v55;
  sub_1BE048C84();
  sub_1BD779BB8(&v55);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v52;
  v53 = v27;
  return sub_1BE04D8C4();
}

void sub_1BD77921C(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD52480, &qword_1EBD52488, &qword_1BE0F5488);
  if (v1 <= 0x3F)
  {
    sub_1BD779B58(319, &qword_1EBD368F0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1BD779B58(319, &unk_1EBD49E00, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD52490, &qword_1EBD3B6E8, &unk_1BE0F5490);
        if (v4 <= 0x3F)
        {
          sub_1BD77953C(319);
          if (v5 <= 0x3F)
          {
            sub_1BD0E4578(319, &qword_1EBD52498, &qword_1EBD524A0, &qword_1BE0BCC50);
            if (v6 <= 0x3F)
            {
              sub_1BD0E4578(319, &qword_1EBD524A8, &qword_1EBD524B0, &unk_1BE0F54A0);
              if (v7 <= 0x3F)
              {
                sub_1BD0E4578(319, &qword_1EBD524B8, &unk_1EBD524C0, &qword_1BE0BCDA0);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD77953C(uint64_t a1)
{
  if (!qword_1EBD44FF0)
  {
    type metadata accessor for Decimal(255);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD44FF0);
    }
  }
}

void sub_1BD7795DC(uint64_t a1)
{
  sub_1BD779B58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v2 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD524E8, 0x1E695BA60);
      if (v3 <= 0x3F)
      {
        sub_1BD7796DC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD7796DC(uint64_t a1)
{
  if (!qword_1EBD524F0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD524E8, 0x1E695BA60);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD524F0);
    }
  }
}

void sub_1BD77978C(uint64_t a1)
{
  sub_1BD779B58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v2 <= 0x3F)
    {
      sub_1BD779B58(319, &qword_1EBD52508, &type metadata for AccountDebugTransaction, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD524E8, 0x1E695BA60);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD779928(uint64_t a1)
{
  result = sub_1BD0E5E8C(319, &qword_1EBD45650, 0x1E69B9180);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccountDebugTransactionGroup(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD7799EC(uint64_t a1)
{
  sub_1BE04AF64();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Decimal(319);
    if (v2 <= 0x3F)
    {
      sub_1BD779B58(319, &qword_1EBD52530, &type metadata for AccountDebugEvent, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1BD779B58(319, &qword_1EBD52538, &type metadata for AccountDebugTransaction, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BD779B58(319, &qword_1EBD52540, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD779B58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD779BB8(uint64_t *a1)
{
  v2 = *(type metadata accessor for AccountDebugCKReward(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7CC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD779D80(v5, type metadata accessor for AccountDebugCKReward, sub_1BD77A380, sub_1BD779ED0);
  *a1 = v3;
}

void sub_1BD779C9C(uint64_t *a1)
{
  v2 = *(type metadata accessor for AccountDebugCKTransaction(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7E0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD779D80(v5, type metadata accessor for AccountDebugCKTransaction, sub_1BD77ACA8, sub_1BD77A128);
  *a1 = v3;
}

void sub_1BD779D80(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_1BE053B14();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BE0527B4();
        v12[2] = v11;
      }

      v13 = *(a2(0) - 8);
      v21[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v21[1] = v11;
      a3(v21, v22, a1, v10);
      v12[2] = 0;
      v12, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_1BD779ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for AccountDebugCKReward(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v32 = *a4;
    v26 = v16;
    v20 = v32 + v16 * a3;
LABEL_5:
    v30 = v17;
    v31 = a3;
    v28 = v20;
    v29 = v19;
    v21 = v17;
    while (1)
    {
      sub_1BD77BFE0(v20, v15, type metadata accessor for AccountDebugCKReward);
      sub_1BD77BFE0(v21, v11, type metadata accessor for AccountDebugCKReward);
      v22 = sub_1BE04AF04();
      sub_1BD77C048(v11, type metadata accessor for AccountDebugCKReward);
      sub_1BD77C048(v15, type metadata accessor for AccountDebugCKReward);
      if (v22 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v17 = v30 + v26;
        v19 = v29 - 1;
        v20 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = v33;
      sub_1BD77C264(v20, v33, type metadata accessor for AccountDebugCKReward);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD77C264(v23, v21, type metadata accessor for AccountDebugCKReward);
      v21 += v18;
      v20 += v18;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD77A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for AccountDebugCKTransaction(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v32 = *a4;
    v26 = v16;
    v20 = v32 + v16 * a3;
LABEL_5:
    v30 = v17;
    v31 = a3;
    v28 = v20;
    v29 = v19;
    v21 = v17;
    while (1)
    {
      sub_1BD77BFE0(v20, v15, type metadata accessor for AccountDebugCKTransaction);
      sub_1BD77BFE0(v21, v11, type metadata accessor for AccountDebugCKTransaction);
      v22 = sub_1BE04AF04();
      sub_1BD77C048(v11, type metadata accessor for AccountDebugCKTransaction);
      sub_1BD77C048(v15, type metadata accessor for AccountDebugCKTransaction);
      if (v22 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v17 = v30 + v26;
        v19 = v29 - 1;
        v20 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = v33;
      sub_1BD77C264(v20, v33, type metadata accessor for AccountDebugCKTransaction);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD77C264(v23, v21, type metadata accessor for AccountDebugCKTransaction);
      v21 += v18;
      v20 += v18;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD77A380(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v124 = type metadata accessor for AccountDebugCKReward(0);
  v118 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v112 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v107 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v23 = &v107 - v22;
  v120 = a3;
  v24 = a3[1];
  if (v24 >= 1)
  {
    v109 = a4;
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v27 = v25;
      v28 = v25 + 1;
      if (v25 + 1 >= v24)
      {
        v36 = v25 + 1;
      }

      else
      {
        v121 = v24;
        v115 = v6;
        v29 = *v120;
        v30 = *(v118 + 72);
        v5 = *v120 + v30 * v28;
        sub_1BD77BFE0(v5, v23, type metadata accessor for AccountDebugCKReward);
        v31 = v29 + v30 * v27;
        v32 = v27;
        v33 = v123;
        sub_1BD77BFE0(v31, v123, type metadata accessor for AccountDebugCKReward);
        v117 = sub_1BE04AF04();
        sub_1BD77C048(v33, type metadata accessor for AccountDebugCKReward);
        sub_1BD77C048(v23, type metadata accessor for AccountDebugCKReward);
        v110 = v32;
        v34 = v32 + 2;
        v119 = v30;
        v35 = v29 + v30 * (v32 + 2);
        while (1)
        {
          v36 = v121;
          if (v121 == v34)
          {
            break;
          }

          v37 = v26;
          v38 = v117 == -1;
          sub_1BD77BFE0(v35, v23, type metadata accessor for AccountDebugCKReward);
          v39 = v123;
          sub_1BD77BFE0(v5, v123, type metadata accessor for AccountDebugCKReward);
          v40 = sub_1BE04AF04();
          sub_1BD77C048(v39, type metadata accessor for AccountDebugCKReward);
          sub_1BD77C048(v23, type metadata accessor for AccountDebugCKReward);
          v41 = v38 ^ (v40 != -1);
          v26 = v37;
          ++v34;
          v35 += v119;
          v5 += v119;
          if ((v41 & 1) == 0)
          {
            v36 = v34 - 1;
            break;
          }
        }

        v6 = v115;
        v27 = v110;
        if (v117 == -1)
        {
          if (v36 < v110)
          {
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
            return;
          }

          if (v110 < v36)
          {
            v108 = v26;
            v42 = v119 * (v36 - 1);
            v5 = v36 * v119;
            v121 = v36;
            v43 = v110 * v119;
            do
            {
              if (v27 != --v36)
              {
                v115 = v6;
                v44 = *v120;
                if (!*v120)
                {
                  goto LABEL_129;
                }

                sub_1BD77C264(v44 + v43, v112, type metadata accessor for AccountDebugCKReward);
                if (v43 < v42 || v44 + v43 >= v44 + v5)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v43 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD77C264(v112, v44 + v42, type metadata accessor for AccountDebugCKReward);
                v6 = v115;
              }

              ++v27;
              v42 -= v119;
              v5 -= v119;
              v43 += v119;
            }

            while (v27 < v36);
            v26 = v108;
            v27 = v110;
            v36 = v121;
          }
        }
      }

      v45 = v120[1];
      if (v36 >= v45)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v36, v27))
      {
        goto LABEL_121;
      }

      if (v36 - v27 >= v109)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v27, v109))
      {
        goto LABEL_122;
      }

      if (v27 + v109 < v45)
      {
        v45 = v27 + v109;
      }

      if (v45 < v27)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v36 == v45)
      {
LABEL_31:
        v25 = v36;
        if (v36 < v27)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v114 = v45;
        v115 = v6;
        v108 = v26;
        v92 = v27;
        v93 = *v120;
        v94 = *(v118 + 72);
        v95 = *v120 + v94 * (v36 - 1);
        v96 = -v94;
        v110 = v92;
        v97 = v92 - v36;
        v113 = v94;
        v5 = v93 + v36 * v94;
        do
        {
          v121 = v36;
          v116 = v5;
          v117 = v97;
          v119 = v95;
          v98 = v95;
          do
          {
            sub_1BD77BFE0(v5, v23, type metadata accessor for AccountDebugCKReward);
            v99 = v123;
            sub_1BD77BFE0(v98, v123, type metadata accessor for AccountDebugCKReward);
            v100 = sub_1BE04AF04();
            sub_1BD77C048(v99, type metadata accessor for AccountDebugCKReward);
            sub_1BD77C048(v23, type metadata accessor for AccountDebugCKReward);
            if (v100 != -1)
            {
              break;
            }

            if (!v93)
            {
              goto LABEL_126;
            }

            v101 = v122;
            sub_1BD77C264(v5, v122, type metadata accessor for AccountDebugCKReward);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD77C264(v101, v98, type metadata accessor for AccountDebugCKReward);
            v98 += v96;
            v5 += v96;
          }

          while (!__CFADD__(v97++, 1));
          v36 = v121 + 1;
          v95 = v119 + v113;
          v97 = v117 - 1;
          v5 = v116 + v113;
        }

        while (v121 + 1 != v114);
        v25 = v114;
        v6 = v115;
        v26 = v108;
        v27 = v110;
        if (v114 < v110)
        {
          goto LABEL_120;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BD1D7844(0, *(v26 + 2) + 1, 1, v26, v18, v19, v20, v21);
      }

      v47 = *(v26 + 2);
      v46 = *(v26 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v26 = sub_1BD1D7844((v46 > 1), v47 + 1, 1, v26, v18, v19, v20, v21);
      }

      *(v26 + 2) = v48;
      v49 = &v26[16 * v47];
      *(v49 + 4) = v27;
      *(v49 + 5) = v25;
      v50 = *v111;
      if (!*v111)
      {
        goto LABEL_130;
      }

      if (v47)
      {
        while (1)
        {
          v5 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v51 = *(v26 + 4);
            v52 = *(v26 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_51:
            if (v54)
            {
              goto LABEL_109;
            }

            v67 = &v26[16 * v48];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_112;
            }

            v73 = &v26[16 * v5 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_116;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                v5 = v48 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v77 = &v26[16 * v48];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_65:
          if (v72)
          {
            goto LABEL_111;
          }

          v80 = &v26[16 * v5];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_114;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_72:
          v88 = v5 - 1;
          if (v5 - 1 >= v48)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_123;
          }

          if (!*v120)
          {
            goto LABEL_127;
          }

          v89 = *&v26[16 * v88 + 32];
          v90 = *&v26[16 * v5 + 40];
          sub_1BD77B5D0(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v26[16 * v5 + 32], *v120 + *(v118 + 72) * v90, v50);
          if (v6)
          {
            goto LABEL_103;
          }

          if (v90 < v89)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
          }

          if (v88 >= *(v26 + 2))
          {
            goto LABEL_106;
          }

          v91 = &v26[16 * v88];
          *(v91 + 4) = v89;
          *(v91 + 5) = v90;
          v125 = v26;
          sub_1BD5ED63C(v5);
          v26 = v125;
          v48 = *(v125 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v55 = &v26[16 * v48 + 32];
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = &v26[16 * v48];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v66 >= v58)
        {
          v84 = &v26[16 * v5 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v53 < v87)
          {
            v5 = v48 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v24 = v120[1];
      if (v25 >= v24)
      {
        goto LABEL_93;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_93:
  v5 = *v111;
  if (!*v111)
  {
    goto LABEL_131;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
  }

  v125 = v26;
  v103 = *(v26 + 2);
  if (v103 >= 2)
  {
    while (*v120)
    {
      v104 = *&v26[16 * v103];
      v105 = *&v26[16 * v103 + 24];
      sub_1BD77B5D0(*v120 + *(v118 + 72) * v104, *v120 + *(v118 + 72) * *&v26[16 * v103 + 16], *v120 + *(v118 + 72) * v105, v5);
      if (v6)
      {
        goto LABEL_103;
      }

      if (v105 < v104)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
      }

      if (v103 - 2 >= *(v26 + 2))
      {
        goto LABEL_119;
      }

      v106 = &v26[16 * v103];
      *v106 = v104;
      *(v106 + 1) = v105;
      v125 = v26;
      sub_1BD5ED63C(v103 - 1);
      v26 = v125;
      v103 = *(v125 + 2);
      if (v103 <= 1)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_128;
  }

LABEL_103:
  v26, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD77ACA8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v124 = type metadata accessor for AccountDebugCKTransaction(0);
  v118 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v112 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v107 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v23 = &v107 - v22;
  v120 = a3;
  v24 = a3[1];
  if (v24 >= 1)
  {
    v109 = a4;
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v27 = v25;
      v28 = v25 + 1;
      if (v25 + 1 >= v24)
      {
        v36 = v25 + 1;
      }

      else
      {
        v121 = v24;
        v115 = v6;
        v29 = *v120;
        v30 = *(v118 + 72);
        v5 = *v120 + v30 * v28;
        sub_1BD77BFE0(v5, v23, type metadata accessor for AccountDebugCKTransaction);
        v31 = v29 + v30 * v27;
        v32 = v27;
        v33 = v123;
        sub_1BD77BFE0(v31, v123, type metadata accessor for AccountDebugCKTransaction);
        v117 = sub_1BE04AF04();
        sub_1BD77C048(v33, type metadata accessor for AccountDebugCKTransaction);
        sub_1BD77C048(v23, type metadata accessor for AccountDebugCKTransaction);
        v110 = v32;
        v34 = v32 + 2;
        v119 = v30;
        v35 = v29 + v30 * (v32 + 2);
        while (1)
        {
          v36 = v121;
          if (v121 == v34)
          {
            break;
          }

          v37 = v26;
          v38 = v117 == -1;
          sub_1BD77BFE0(v35, v23, type metadata accessor for AccountDebugCKTransaction);
          v39 = v123;
          sub_1BD77BFE0(v5, v123, type metadata accessor for AccountDebugCKTransaction);
          v40 = sub_1BE04AF04();
          sub_1BD77C048(v39, type metadata accessor for AccountDebugCKTransaction);
          sub_1BD77C048(v23, type metadata accessor for AccountDebugCKTransaction);
          v41 = v38 ^ (v40 != -1);
          v26 = v37;
          ++v34;
          v35 += v119;
          v5 += v119;
          if ((v41 & 1) == 0)
          {
            v36 = v34 - 1;
            break;
          }
        }

        v6 = v115;
        v27 = v110;
        if (v117 == -1)
        {
          if (v36 < v110)
          {
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
            return;
          }

          if (v110 < v36)
          {
            v108 = v26;
            v42 = v119 * (v36 - 1);
            v5 = v36 * v119;
            v121 = v36;
            v43 = v110 * v119;
            do
            {
              if (v27 != --v36)
              {
                v115 = v6;
                v44 = *v120;
                if (!*v120)
                {
                  goto LABEL_129;
                }

                sub_1BD77C264(v44 + v43, v112, type metadata accessor for AccountDebugCKTransaction);
                if (v43 < v42 || v44 + v43 >= v44 + v5)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v43 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD77C264(v112, v44 + v42, type metadata accessor for AccountDebugCKTransaction);
                v6 = v115;
              }

              ++v27;
              v42 -= v119;
              v5 -= v119;
              v43 += v119;
            }

            while (v27 < v36);
            v26 = v108;
            v27 = v110;
            v36 = v121;
          }
        }
      }

      v45 = v120[1];
      if (v36 >= v45)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v36, v27))
      {
        goto LABEL_121;
      }

      if (v36 - v27 >= v109)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v27, v109))
      {
        goto LABEL_122;
      }

      if (v27 + v109 < v45)
      {
        v45 = v27 + v109;
      }

      if (v45 < v27)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v36 == v45)
      {
LABEL_31:
        v25 = v36;
        if (v36 < v27)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v114 = v45;
        v115 = v6;
        v108 = v26;
        v92 = v27;
        v93 = *v120;
        v94 = *(v118 + 72);
        v95 = *v120 + v94 * (v36 - 1);
        v96 = -v94;
        v110 = v92;
        v97 = v92 - v36;
        v113 = v94;
        v5 = v93 + v36 * v94;
        do
        {
          v121 = v36;
          v116 = v5;
          v117 = v97;
          v119 = v95;
          v98 = v95;
          do
          {
            sub_1BD77BFE0(v5, v23, type metadata accessor for AccountDebugCKTransaction);
            v99 = v123;
            sub_1BD77BFE0(v98, v123, type metadata accessor for AccountDebugCKTransaction);
            v100 = sub_1BE04AF04();
            sub_1BD77C048(v99, type metadata accessor for AccountDebugCKTransaction);
            sub_1BD77C048(v23, type metadata accessor for AccountDebugCKTransaction);
            if (v100 != -1)
            {
              break;
            }

            if (!v93)
            {
              goto LABEL_126;
            }

            v101 = v122;
            sub_1BD77C264(v5, v122, type metadata accessor for AccountDebugCKTransaction);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD77C264(v101, v98, type metadata accessor for AccountDebugCKTransaction);
            v98 += v96;
            v5 += v96;
          }

          while (!__CFADD__(v97++, 1));
          v36 = v121 + 1;
          v95 = v119 + v113;
          v97 = v117 - 1;
          v5 = v116 + v113;
        }

        while (v121 + 1 != v114);
        v25 = v114;
        v6 = v115;
        v26 = v108;
        v27 = v110;
        if (v114 < v110)
        {
          goto LABEL_120;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BD1D7844(0, *(v26 + 2) + 1, 1, v26, v18, v19, v20, v21);
      }

      v47 = *(v26 + 2);
      v46 = *(v26 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v26 = sub_1BD1D7844((v46 > 1), v47 + 1, 1, v26, v18, v19, v20, v21);
      }

      *(v26 + 2) = v48;
      v49 = &v26[16 * v47];
      *(v49 + 4) = v27;
      *(v49 + 5) = v25;
      v50 = *v111;
      if (!*v111)
      {
        goto LABEL_130;
      }

      if (v47)
      {
        while (1)
        {
          v5 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v51 = *(v26 + 4);
            v52 = *(v26 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_51:
            if (v54)
            {
              goto LABEL_109;
            }

            v67 = &v26[16 * v48];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_112;
            }

            v73 = &v26[16 * v5 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_116;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                v5 = v48 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v77 = &v26[16 * v48];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_65:
          if (v72)
          {
            goto LABEL_111;
          }

          v80 = &v26[16 * v5];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_114;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_72:
          v88 = v5 - 1;
          if (v5 - 1 >= v48)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_123;
          }

          if (!*v120)
          {
            goto LABEL_127;
          }

          v89 = *&v26[16 * v88 + 32];
          v90 = *&v26[16 * v5 + 40];
          sub_1BD77BAD8(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v26[16 * v5 + 32], *v120 + *(v118 + 72) * v90, v50);
          if (v6)
          {
            goto LABEL_103;
          }

          if (v90 < v89)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
          }

          if (v88 >= *(v26 + 2))
          {
            goto LABEL_106;
          }

          v91 = &v26[16 * v88];
          *(v91 + 4) = v89;
          *(v91 + 5) = v90;
          v125 = v26;
          sub_1BD5ED63C(v5);
          v26 = v125;
          v48 = *(v125 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v55 = &v26[16 * v48 + 32];
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = &v26[16 * v48];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v66 >= v58)
        {
          v84 = &v26[16 * v5 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v53 < v87)
          {
            v5 = v48 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v24 = v120[1];
      if (v25 >= v24)
      {
        goto LABEL_93;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_93:
  v5 = *v111;
  if (!*v111)
  {
    goto LABEL_131;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
  }

  v125 = v26;
  v103 = *(v26 + 2);
  if (v103 >= 2)
  {
    while (*v120)
    {
      v104 = *&v26[16 * v103];
      v105 = *&v26[16 * v103 + 24];
      sub_1BD77BAD8(*v120 + *(v118 + 72) * v104, *v120 + *(v118 + 72) * *&v26[16 * v103 + 16], *v120 + *(v118 + 72) * v105, v5);
      if (v6)
      {
        goto LABEL_103;
      }

      if (v105 < v104)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
      }

      if (v103 - 2 >= *(v26 + 2))
      {
        goto LABEL_119;
      }

      v106 = &v26[16 * v103];
      *v106 = v104;
      *(v106 + 1) = v105;
      v125 = v26;
      sub_1BD5ED63C(v103 - 1);
      v26 = v125;
      v103 = *(v125 + 2);
      if (v103 <= 1)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_128;
  }

LABEL_103:
  v26, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD77B5D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = type metadata accessor for AccountDebugCKReward(0);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v45 = a1;
  v44 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a2;
    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = v22;
      v36 = -v12;
      v37 = a1;
      while (2)
      {
        while (1)
        {
          v34 = v22;
          v25 = v39;
          v38 = v39;
          v39 += v23;
          while (1)
          {
            if (v25 <= a1)
            {
              v45 = v25;
              v43 = v34;
              goto LABEL_60;
            }

            v27 = a3;
            v35 = v22;
            v28 = a4;
            v29 = a3 + v23;
            v30 = v24 + v23;
            v31 = v40;
            sub_1BD77BFE0(v30, v40, type metadata accessor for AccountDebugCKReward);
            v32 = v41;
            sub_1BD77BFE0(v39, v41, type metadata accessor for AccountDebugCKReward);
            v33 = sub_1BE04AF04();
            sub_1BD77C048(v32, type metadata accessor for AccountDebugCKReward);
            sub_1BD77C048(v31, type metadata accessor for AccountDebugCKReward);
            if (v33 == -1)
            {
              break;
            }

            v22 = v30;
            a3 = v29;
            a4 = v28;
            if (v27 < v24 || v29 >= v24)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v37;
            }

            else
            {
              a1 = v37;
              if (v27 != v24)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v24 = v30;
            v26 = v30 > a4;
            v23 = v36;
            v25 = v38;
            if (!v26)
            {
              v39 = v38;
              goto LABEL_59;
            }
          }

          a3 = v29;
          a4 = v28;
          if (v27 < v38 || v29 >= v38)
          {
            break;
          }

          v23 = v36;
          a1 = v37;
          v22 = v35;
          if (v27 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v23 = v36;
        a1 = v37;
        v22 = v35;
        if (v24 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v45 = v39;
    v43 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v15;
    v43 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v18 = v41;
      do
      {
        v19 = a3;
        v20 = v40;
        sub_1BD77BFE0(a2, v40, type metadata accessor for AccountDebugCKReward);
        sub_1BD77BFE0(a4, v18, type metadata accessor for AccountDebugCKReward);
        v21 = sub_1BE04AF04();
        sub_1BD77C048(v18, type metadata accessor for AccountDebugCKReward);
        sub_1BD77C048(v20, type metadata accessor for AccountDebugCKReward);
        if (v21 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v44 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v45 = a1;
      }

      while (a4 < v39 && a2 < a3);
    }
  }

LABEL_60:
  sub_1BD9353A0(&v45, &v44, &v43);
}

void sub_1BD77BAD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = type metadata accessor for AccountDebugCKTransaction(0);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v45 = a1;
  v44 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a2;
    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = v22;
      v36 = -v12;
      v37 = a1;
      while (2)
      {
        while (1)
        {
          v34 = v22;
          v25 = v39;
          v38 = v39;
          v39 += v23;
          while (1)
          {
            if (v25 <= a1)
            {
              v45 = v25;
              v43 = v34;
              goto LABEL_60;
            }

            v27 = a3;
            v35 = v22;
            v28 = a4;
            v29 = a3 + v23;
            v30 = v24 + v23;
            v31 = v40;
            sub_1BD77BFE0(v30, v40, type metadata accessor for AccountDebugCKTransaction);
            v32 = v41;
            sub_1BD77BFE0(v39, v41, type metadata accessor for AccountDebugCKTransaction);
            v33 = sub_1BE04AF04();
            sub_1BD77C048(v32, type metadata accessor for AccountDebugCKTransaction);
            sub_1BD77C048(v31, type metadata accessor for AccountDebugCKTransaction);
            if (v33 == -1)
            {
              break;
            }

            v22 = v30;
            a3 = v29;
            a4 = v28;
            if (v27 < v24 || v29 >= v24)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v37;
            }

            else
            {
              a1 = v37;
              if (v27 != v24)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v24 = v30;
            v26 = v30 > a4;
            v23 = v36;
            v25 = v38;
            if (!v26)
            {
              v39 = v38;
              goto LABEL_59;
            }
          }

          a3 = v29;
          a4 = v28;
          if (v27 < v38 || v29 >= v38)
          {
            break;
          }

          v23 = v36;
          a1 = v37;
          v22 = v35;
          if (v27 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v23 = v36;
        a1 = v37;
        v22 = v35;
        if (v24 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v45 = v39;
    v43 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v15;
    v43 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v18 = v41;
      do
      {
        v19 = a3;
        v20 = v40;
        sub_1BD77BFE0(a2, v40, type metadata accessor for AccountDebugCKTransaction);
        sub_1BD77BFE0(a4, v18, type metadata accessor for AccountDebugCKTransaction);
        v21 = sub_1BE04AF04();
        sub_1BD77C048(v18, type metadata accessor for AccountDebugCKTransaction);
        sub_1BD77C048(v20, type metadata accessor for AccountDebugCKTransaction);
        if (v21 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v44 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v45 = a1;
      }

      while (a4 < v39 && a2 < a3);
    }
  }

LABEL_60:
  sub_1BD9353B8(&v45, &v44, &v43);
}

uint64_t sub_1BD77BFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD77C048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD77C0A8()
{
  result = qword_1EBD525A0;
  if (!qword_1EBD525A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD525A0);
  }

  return result;
}

uint64_t sub_1BD77C0FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD7667D4(a1, v4, v5, v6);
}

uint64_t sub_1BD77C1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD77C264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  v1 = (type metadata accessor for AccountDebugTransactionGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = sub_1BE04AF64();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  *(v0 + v2 + v1[12]), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + v1[13]), v11, v12, v13, v14, v15, v16, v17;
  *(v0 + v2 + v1[17]), v18, v19, v20, v21, v22, v23, v24;
  *(v0 + v2 + v1[18]), v25, v26, v27, v28, v29, v30, v31;
  *(v0 + v2 + v1[19]), v32, v33, v34, v35, v36, v37, v38;
  *(v0 + v2 + v1[20]), v39, v40, v41, v42, v43, v44, v45;
  *(v0 + v2 + v1[21]), v46, v47, v48, v49, v50, v51, v52;

  return swift_deallocObject();
}

unint64_t sub_1BD77C4DC()
{
  result = qword_1EBD52608;
  if (!qword_1EBD52608)
  {
    sub_1BD0E5E8C(255, &qword_1EBD524E8, 0x1E695BA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52608);
  }

  return result;
}

uint64_t sub_1BD77C570(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_1BD77C5F0()
{
  v1 = *(type metadata accessor for AccountDebugCKTransaction(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1BD7787DC(v2, v3, v4);
}

uint64_t sub_1BD77C760()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD77C7E8(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v4)
  {
    v6 = v3[4];
    v5 = v3[5];
    v14 = v3[3];
    sub_1BD36A5EC(v4, v3[1], v3[2], v14, v6);
    sub_1BD785FE0(a1, v4, v6);
    v5, v7, v8, v9, v10, v11, v12, v13;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

uint64_t sub_1BD77C8EC()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

id sub_1BD77C960(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527A8, &qword_1BE0F5F30);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v208 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527B0, &qword_1BE0F5F38);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v208 - v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v217 = v2;
  sub_1BE04D8B4(v221);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = v221[0];
  v221[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748, &qword_1BE0F5B48);
  sub_1BD0DE4F4(&qword_1EBD527B8, &qword_1EBD52748, &qword_1BE0F5B48, MEMORY[0x1E69E6310]);
  sub_1BD785A90();
  v29 = v11;
  sub_1BE0522D4();
  v28, v30, v31, v32, v33, v34, v35, v36;
  (*(v5 + 16))(v11, v7, v4);
  v37 = *(v9 + 44);
  v38 = sub_1BD0DE4F4(&unk_1EBD527C8, &qword_1EBD527A8, &qword_1BE0F5F30, MEMORY[0x1E69E6F00]);
  sub_1BE052AD4();
  (*(v5 + 8))(v7, v4);
  v39 = v37;
  v40 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v210 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail;
  sub_1BE052B04();
  if (*&v11[v37] == v221[0])
  {
    return sub_1BD0DE53C(v29, &qword_1EBD527B0, &qword_1BE0F5F38);
  }

  v211 = v217 + v40;
  v209 = *MEMORY[0x1E695C208];
  v212 = v4;
  v213 = v37;
  v214 = v11;
  v215 = v38;
  while (1)
  {
    v43 = sub_1BE052B34();
    v45 = v44[1];
    v46 = v44[2];
    v47 = *(v44 + 24);
    v48 = *(v44 + 25);
    v220 = *v44;
    v218 = v46;
    v219 = v47;
    v49 = v45;
    v43(v221, 0);
    sub_1BE052B14();
    if (v48)
    {
      break;
    }

    v93 = *v211;
    if (*v211)
    {
      v95 = *(v211 + 32);
      v94 = *(v211 + 40);
      v97 = *(v211 + 16);
      v96 = *(v211 + 24);
      v98 = *(v211 + 8);
      v99 = v45;
      v100 = v45;
      v101 = v45;
      sub_1BD36A5EC(v93, v98, v97, v96, v95);
      sub_1BD785FE0(v45, v93, v95);
      v94, v102, v103, v104, v105, v106, v107, v108;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v221[0] = v45;
      v99 = v45;
      v109 = v45;
      v110 = v45;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    v111 = *(v217 + v210);
    if (!v111)
    {
      goto LABEL_28;
    }

    v112 = v111;
    v113 = [v99 identifier];
    v114 = sub_1BE052434();
    v116 = v115;

    v117 = [v112 identifier];
    v118 = sub_1BE052434();
    v120 = v119;

    if (v114 == v118 && v116 == v120)
    {
      v116, v121, v122, v123, v124, v125, v126, v127;
      v120, v128, v129, v130, v131, v132, v133, v134;
    }

    else
    {
      v162 = sub_1BE053B84();
      v116, v163, v164, v165, v166, v167, v168, v169;
      v120, v170, v171, v172, v173, v174, v175, v176;
      if ((v162 & 1) == 0)
      {

LABEL_28:
        goto LABEL_29;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v177 = sub_1BE053074();

    if (v177)
    {

LABEL_33:
      v39 = v213;
      v29 = v214;
      goto LABEL_6;
    }

LABEL_29:
    v178 = v209;
    v186 = sub_1BD3EFFC8(MEMORY[0x1E69E7CC0], v179, v180, v181, v182, v183, v184, v185);
    v187 = sub_1BE04A0E4();
    v188 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
    v189 = sub_1BE052404();
    v190 = sub_1BE052724();
    v186, v191, v192, v193, v194, v195, v196, v197;
    v198 = [v188 initWithTitle:v189 preferences:v190 selectedIndex:v187 readOnly:0];

    if (!v198)
    {

      goto LABEL_33;
    }

    [v198 setContactKey_];

    result = [objc_opt_self() defaultInstance];
    v199 = v213;
    v29 = v214;
    if (!result)
    {
      goto LABEL_39;
    }

    v200 = result;
    v201 = [result saveContactToCoreRecents:v99 preference:v198];

    [v99 setContactSource_];
    [v99 setRecentContact_];

    v39 = v199;
LABEL_6:
    sub_1BE052B04();
    if (*(v29 + v39) == v221[0])
    {
      return sub_1BD0DE53C(v29, &qword_1EBD527B0, &qword_1BE0F5F38);
    }
  }

  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v216 = v45;
  v52 = v45;
  sub_1BE04D8B4(v221);
  v50, v53, v54, v55, v56, v57, v58, v59;
  v51, v60, v61, v62, v63, v64, v65, v66;
  v67 = v221[0];
  if (v221[0])
  {
    v68 = v52;
    v69 = v52;
    v70 = [v67 identifier];
    v71 = sub_1BE052434();
    v73 = v72;

    v74 = [v69 identifier];
    v75 = sub_1BE052434();
    v77 = v76;

    if (v71 == v75 && v73 == v77)
    {
      v73, v78, v79, v80, v81, v82, v83, v84;
      v77, v85, v86, v87, v88, v89, v90, v91;
      v92 = v216;
LABEL_20:
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
      v150 = sub_1BE053074();

      v39 = v213;
      v29 = v214;
      v52 = v68;
      if (v150)
      {
        v151 = *v211;
        if (*v211)
        {
          v153 = *(v211 + 32);
          v152 = *(v211 + 40);
          v154 = *(v211 + 24);
          sub_1BD36A5EC(*v211, *(v211 + 8), *(v211 + 16), v154, v153);
          sub_1BD785FE0(0, v151, v153);
          v152, v155, v156, v157, v158, v159, v160, v161;

          v52 = v68;
          v39 = v213;
          swift_unknownObjectRelease();

          v29 = v214;
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v221[0] = 0;
          sub_1BE048964();
          sub_1BE04D8C4();
        }
      }
    }

    else
    {
      v135 = sub_1BE053B84();
      v73, v136, v137, v138, v139, v140, v141, v142;
      v77, v143, v144, v145, v146, v147, v148, v149;
      v92 = v216;
      if (v135)
      {
        goto LABEL_20;
      }

      v39 = v213;
      v29 = v214;
      v52 = v68;
    }
  }

  v202 = v52;
  v203 = [v202 recentContact];
  if (!v203)
  {
    v42 = v216;

LABEL_5:
    goto LABEL_6;
  }

  v204 = v203;
  result = [objc_opt_self() defaultInstance];
  v205 = v216;
  if (result)
  {
    v206 = result;
    v207 = v204;
    [v206 deleteRecent_];

    goto LABEL_5;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1BD77D460()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD77D4D4(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD77D554(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD77D5C8()
{
  v1 = sub_1BE051F54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context))
  {
    v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32);
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    v12 = v9;
    sub_1BE04D8B4(aBlock);
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
    v11, v20, v21, v22, v23, v24, v25, v26;
    [v12 setIsHideMyEmailLoading_];
  }

  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(aBlock);
  v27, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  if ((aBlock[0] & 1) == 0)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v54 = sub_1BE052D54();
    v43 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BD786408;
    v56 = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_174;
    v44 = _Block_copy(aBlock);
    v56, v45, v46, v47, v48, v49, v50, v51;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD786764(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v53 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    v52 = v54;
    MEMORY[0x1BFB3FDF0](0, v8, v4, v44);
    _Block_release(v44);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v53);
  }
}

void sub_1BD77D988(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
    if (v9)
    {
      v10 = Strong;
      v11 = v9;
      v10, v12, v13, v14, v15, v16, v17, v18;
      [v11 didResolveLoadingState];
    }

    else
    {
      Strong, v2, v3, v4, v5, v6, v7, v8;
    }
  }
}

void sub_1BD77DA24(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD77D5C8();
}

id sub_1BD77DAC4(void **a1, double a2)
{
  v3 = v2;
  v4 = *a1;
  v283 = a1[1];
  v284 = v4;
  v5 = a1[2];
  v281 = a1[3];
  v282 = v5;
  v6 = a1[5];
  v285 = a1[4];
  v290 = v6;
  v7 = sub_1BE04A264();
  v279 = *(v7 - 8);
  v280 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v278 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v9 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v11 = &v275 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52800, &unk_1BE0F5FF8);
  v287 = *(v12 - 1);
  v288 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v275 - v13;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527F8, &qword_1BE0F5FF0);
  v15 = *(v286 - 1);
  MEMORY[0x1EEE9AC00](v286);
  v17 = &v275 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527D8, &qword_1BE0F5FD0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v275 - v20;
  v22 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52738, &qword_1BE0F5B40);
  sub_1BE04D874();
  (*(v19 + 32))(v3 + v22, v21, v18);
  v23 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailError;
  LOBYTE(aBlock) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52760, &qword_1BE0F5B58);
  sub_1BE04D874();
  (*(v15 + 32))(v3 + v23, v17, v286);
  v24 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailAccountConfigurationError;
  LOBYTE(aBlock) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52770, &qword_1BE0F5B60);
  sub_1BE04D874();
  v25 = v14;
  v26 = v3;
  (*(v287 + 4))(v3 + v24, v25, v288);
  v27 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__supportsHideMyEmail;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v28 = *(v9 + 32);
  v29 = v289;
  v28(v26 + v27, v11, v289);
  v30 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailLoading;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v28(v26 + v30, v11, v29);
  v31 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailSelected;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v28(v26 + v31, v11, v29);
  v32 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__useHideMyEmailTransactionDefault;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v28(v26 + v32, v11, v29);
  v33 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  *(v26 + v33) = [objc_allocWithZone(MEMORY[0x1E69B88F0]) init];
  *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) = 0;
  *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) = 0;
  v34 = (v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_domainKey);
  *v34 = 0;
  v34[1] = 0;
  *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration) = 0;
  *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail) = 0;
  v35 = (v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress;
  *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress) = 0;
  v37 = v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  *v37 = 0u;
  v38 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults;
  *(v26 + v38) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    v40 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_recents;
    *(v26 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_recents) = result;
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v281;
    v277 = v38;
    v275 = v36;
    v276 = v40;
    if (v281)
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1BE0B69E0;
        v46 = *MEMORY[0x1E69BB7B8];
        *(v45 + 32) = *MEMORY[0x1E69BB7B8];
        type metadata accessor for PKContactField(0);
        v47 = v46;
        v48 = v42;
        v49 = sub_1BE052724();
        v45, v50, v51, v52, v53, v54, v55, v56;
        v57 = [v44 clientErrors];
        if (v57)
        {
          v58 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
          v59 = sub_1BE052744();

          v60 = sub_1BD3F00D4(v59);
          v59, v61, v62, v63, v64, v65, v66, v67;
        }

        else
        {
          v60 = MEMORY[0x1E69E7CC0];
        }

        v68 = objc_opt_self();
        v76 = sub_1BD3F01E8(v60, v69, v70, v71, v72, v73, v74, v75);
        v60, v77, v78, v79, v80, v81, v82, v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v84 = sub_1BE052724();
        v76, v85, v86, v87, v88, v89, v90, v91;
        v92 = [v68 pk:v49 FilteredShippingErrorsForContactFields:v84 errors:?];

        v93 = sub_1BE052744();
        v41 = sub_1BD3F00D4(v93);

        v93, v94, v95, v96, v97, v98, v99, v100;
      }
    }

    swift_beginAccess();
    v299[0] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8, &qword_1BE0F5B50);
    sub_1BE04D874();
    swift_endAccess();
    v101 = v285;
    v108 = sub_1BD785D04(v42, v285, v102, v103, v104, v105, v106, v107);
    swift_beginAccess();
    LOBYTE(v299[0]) = v108 & 1;
    v289 = v26;
    sub_1BE04D874();
    swift_endAccess();
    v109 = v282;
    v110 = v283;
    v299[0] = v283;
    v111 = *v37;
    v112 = *(v37 + 8);
    v113 = *(v37 + 16);
    v114 = *(v37 + 24);
    v115 = *(v37 + 32);
    v116 = *(v37 + 40);
    v117 = v42;
    v118 = v284;
    *v37 = v284;
    *(v37 + 8) = v110;
    *(v37 + 16) = v109;
    *(v37 + 24) = v117;
    v119 = v290;
    *(v37 + 32) = v101;
    *(v37 + 40) = v119;
    v288 = v117;
    v286 = v118;
    v120 = v101;
    sub_1BE048964();
    sub_1BD0DE19C(v299, &aBlock, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD40FB5C(v111, v112, v113, v114, v115, v116);
    v287 = v120;
    v121 = [v120 shippingEmail];
    v122 = v121;
    if (v121)
    {
      v123 = MEMORY[0x1E69E7CC0];
      v124 = sub_1BD9DE0A8(v121);
      v111 = v125;
      aBlock = v124;
      v292 = v125;
      v126 = v278;
      sub_1BE04A214();
      sub_1BD0DDEBC();
      v127 = sub_1BE053564();
      v129 = v128;
      (*(v279 + 8))(v126, v280);
      v111, v130, v131, v132, v133, v134, v135, v136;
      v129, v137, v138, v139, v140, v141, v142, v143;
      v144 = HIBYTE(v129) & 0xF;
      if ((v129 & 0x2000000000000000) == 0)
      {
        v144 = v127 & 0xFFFFFFFFFFFFLL;
      }

      if (v144)
      {
        *(v289 + v275) = 1;
        v145 = v122;
        v146 = v122;
        goto LABEL_17;
      }

      v147 = v289;
    }

    else
    {
      v147 = v289;
      v123 = MEMORY[0x1E69E7CC0];
    }

    v146 = [*(v147 + v276) meCard];
    v148 = [*(v147 + v277) defaultContactEmail];
    if (v148)
    {
      v149 = v148;

      v146 = v149;
    }

    else if (v146)
    {
      v198 = [v146 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
      v111 = sub_1BE052744();

      if (!(v111 >> 62))
      {
        v206 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_29;
      }

      goto LABEL_47;
    }

    while (1)
    {
LABEL_17:
      v150 = sub_1BE052434();
      v152 = v151;
      v284 = v146;
      v153 = sub_1BD51D758(v150, v151, v146);
      v152, v154, v155, v156, v157, v158, v159, v160;
      if (v153 >> 62)
      {
        v168 = sub_1BE053704();
        v285 = v122;
        if (!v168)
        {
LABEL_32:
          v153, v161, v162, v163, v164, v165, v166, v167;
          v197 = MEMORY[0x1E69E7CC0];
          goto LABEL_33;
        }
      }

      else
      {
        v168 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v285 = v122;
        if (!v168)
        {
          goto LABEL_32;
        }
      }

      aBlock = v123;
      sub_1BE0538E4();
      if ((v168 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_47:
      v206 = sub_1BE053704();
LABEL_29:
      v111, v199, v200, v201, v202, v203, v204, v205;
      if (!v206)
      {

        v146 = 0;
      }
    }

    v169 = 0;
    do
    {
      if ((v153 & 0xC000000000000001) != 0)
      {
        v170 = MEMORY[0x1BFB40900](v169, v153);
      }

      else
      {
        v170 = *(v153 + 8 * v169 + 32);
      }

      v171 = v170;
      ++v169;
      sub_1BE052434();
      v173 = v172;
      v174 = v171;
      v175 = sub_1BE052404();
      v173, v176, v177, v178, v179, v180, v181, v182;
      [v174 setValueSource_];

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v168 != v169);
    v153, v183, v184, v185, v186, v187, v188, v189;
    v197 = aBlock;
    v123 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v207 = MEMORY[0x1E69E7CD0];
    v297 = v123;
    v298 = MEMORY[0x1E69E7CD0];
    v208 = v197[2];
    v209 = v289;
    if (v208)
    {
      v210 = v197 + 4;
      do
      {
        v211 = *v210;
        v212 = sub_1BD9DE0A8(v211);
        v214 = sub_1BD2A5644(&aBlock, v212, v213);
        v292, v215, v216, v217, v218, v219, v220, v221;
        if (v214)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v210;
        --v208;
      }

      while (v208);
      v123 = v297;
      v207 = v298;
    }

    v197, v190, v191, v192, v193, v194, v195, v196;
    v207, v222, v223, v224, v225, v226, v227, v228;
    swift_beginAccess();
    v298 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748, &qword_1BE0F5B48);
    sub_1BE04D874();
    swift_endAccess();
    v229 = v284;
    if (!v284)
    {
      KeyPath = swift_getKeyPath();
      v231 = swift_getKeyPath();
      sub_1BE04D8B4(&aBlock);
      KeyPath, v232, v233, v234, v235, v236, v237, v238;
      v231, v239, v240, v241, v242, v243, v244, v245;
      v253 = aBlock;
      if (aBlock[2])
      {
        v229 = aBlock[4];
        v254 = v229;
      }

      else
      {
        v229 = 0;
      }

      v253, v246, v247, v248, v249, v250, v251, v252;
    }

    v255 = v287;
    [v287 setShippingEmail_];
    v256 = [v255 shippingEmail];
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v256;
    sub_1BE048964();
    sub_1BE04D8C4();
    LOBYTE(v256) = [*(v209 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults) useHideMyEmail];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = v256;
    sub_1BE048964();
    sub_1BE04D8C4();
    v257 = *(v209 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager);
    v295 = sub_1BD7867D4;
    v296 = v209;
    aBlock = MEMORY[0x1E69E9820];
    v292 = 1107296256;
    v293 = sub_1BD3CC8C0;
    v294 = &block_descriptor_115_0;
    v258 = _Block_copy(&aBlock);
    v259 = v296;
    sub_1BE048964();
    v260 = v257;
    v259, v261, v262, v263, v264, v265, v266, v267;
    [v260 isAvailable_];

    _Block_release(v258);
    sub_1BD0DE53C(v299, &qword_1EBD3D490, &unk_1BE0D42B0);

    v290, v268, v269, v270, v271, v272, v273, v274;
    return v209;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD77E990(char a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  v18[15] = a1;
  sub_1BE048964();
  sub_1BE04D8C4();
  v8 = sub_1BE0528D4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a3;
  sub_1BE048964();
  v10 = sub_1BD122C00(0, 0, v7, &unk_1BE0F6250, v9);
  v10, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD77EAEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD77EB7C();
}

uint64_t sub_1BD77EB7C()
{
  v1[41] = v0;
  v2 = sub_1BE04D214();
  v1[42] = v2;
  v1[43] = *(v2 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  sub_1BE0528A4();
  v1[48] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[49] = v4;
  v1[50] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD77EC94, v4, v3);
}

uint64_t sub_1BD77EC94(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 328);
  v10 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive;
  if ((*(v9 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) & 1) != 0 || (KeyPath = swift_getKeyPath(), v12 = swift_getKeyPath(), sub_1BE04D8B4((v8 + 504)), v12, v13, v14, v15, v16, v17, v18, v19, KeyPath, v20, v21, v22, v23, v24, v25, v26, *(v8 + 504) != 1))
  {
    *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
    sub_1BE04D084();
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C54();
    v43 = os_log_type_enabled(v41, v42);
    v45 = *(v8 + 344);
    v44 = *(v8 + 352);
    v46 = *(v8 + 336);
    if (!v43)
    {
LABEL_8:

      (*(v45 + 8))(v44, v46);

      v49 = *(v8 + 8);

      return v49();
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Hide My Email lookup, but HME is already active or is unsupported";
LABEL_7:
    _os_log_impl(&dword_1BD026000, v41, v42, v48, v47, 2u);
    MEMORY[0x1BFB45F20](v47, -1, -1);
    goto LABEL_8;
  }

  v27 = *(v8 + 328);
  v28 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  *(v8 + 408) = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  v29 = [*(v27 + v28) forwardingEmailForPrimaryAccount];
  if (v29)
  {
    v37 = v29;
    v38 = sub_1BE052434();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v51 = (*(v8 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
  v52 = v51[1];
  *v51 = v38;
  v51[1] = v40;
  v52, v30, v31, v32, v33, v34, v35, v36;
  *(v9 + v10) = 1;
  if (![*(v27 + v28) isAccountConfigured])
  {
    *(v8 + 384), v53, v54, v55, v56, v57, v58, v59;
    sub_1BE04D084();
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C54();
    v61 = os_log_type_enabled(v41, v42);
    v44 = *(v8 + 360);
    v46 = *(v8 + 336);
    v45 = *(v8 + 344);
    if (!v61)
    {
      goto LABEL_8;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Hide My Email lookup, account not configured";
    goto LABEL_7;
  }

  if (*(*(v8 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress))
  {
    *(v8 + 384), v53, v54, v55, v56, v57, v58, v59;
    sub_1BE04D084();
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C54();
    v60 = os_log_type_enabled(v41, v42);
    v44 = *(v8 + 368);
    v46 = *(v8 + 336);
    v45 = *(v8 + 344);
    if (!v60)
    {
      goto LABEL_8;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Hide My Email lookup, merchant provided email address";
    goto LABEL_7;
  }

  v62 = swift_task_alloc();
  *(v8 + 416) = v62;
  *v62 = v8;
  v62[1] = sub_1BD77F000;

  return sub_1BD7822DC();
}

uint64_t sub_1BD77F000(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = v2;
  v4[35] = a1;
  v4[36] = a2;
  v4[53] = a2;

  v5 = v3[50];
  v6 = v3[49];

  return MEMORY[0x1EEE6DFA0](sub_1BD77F128, v6, v5);
}

uint64_t sub_1BD77F128(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 424);
  if (v9)
  {
    v10 = *(*(v8 + 328) + *(v8 + 408));
    *(v8 + 432) = v10;
    v11 = v10;
    v12 = sub_1BE052404();
    *(v8 + 440) = v12;
    v9, v13, v14, v15, v16, v17, v18, v19;
    *(v8 + 16) = v8;
    *(v8 + 56) = v8 + 296;
    *(v8 + 24) = sub_1BD77F384;
    v20 = swift_continuation_init();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52808, &qword_1BE0F6198);
    *(v8 + 448) = v21;
    *(v8 + 200) = v21;
    *(v8 + 144) = MEMORY[0x1E69E9820];
    *(v8 + 152) = 1107296256;
    *(v8 + 160) = sub_1BD782AE0;
    *(v8 + 168) = &block_descriptor_71_0;
    *(v8 + 176) = v20;
    [v11 findHideMyEmailAddressWithKey:v12 completion:v8 + 144];

    return MEMORY[0x1EEE6DEC8](v8 + 16);
  }

  else
  {
    *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
    sub_1BE04D084();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v8 + 376);
    v26 = *(v8 + 336);
    v27 = *(v8 + 344);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "Hide My Email lookup, no domain key found", v28, 2u);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v27 + 8))(v25, v26);

    v29 = *(v8 + 8);

    return v29();
  }
}

uint64_t sub_1BD77F384()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_1BD77F7E8;
  }

  else
  {
    v5 = sub_1BD77F4B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD77F4B4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 384);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);

  v2, v5, v6, v7, v8, v9, v10, v11;
  sub_1BD782BB4(v3, v4, 1, 8);
  v4, v12, v13, v14, v15, v16, v17, v18;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1BD77F574(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 480);
  v9 = *(v8 + 488);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
  v12 = *(v8 + 312);
  v11 = *(v8 + 320);

  sub_1BD782BB4(v12, v11, 1, 8);
  v11, v13, v14, v15, v16, v17, v18, v19;

  v20 = *(v8 + 8);

  return v20();
}

uint64_t sub_1BD77F630()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1BD77F750, v3, v2);
}

uint64_t sub_1BD77F750(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 464);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1BD77F7E8(uint64_t a1)
{
  v2 = *(v1 + 456);
  v4 = *(v1 + 432);
  v3 = *(v1 + 440);
  swift_willThrow();

  sub_1BD781820();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + 448);
    v8 = *(*(v1 + 328) + *(v1 + 408));
    *(v1 + 480) = v8;
    v9 = v8;
    v10 = sub_1BE052404();
    *(v1 + 488) = v10;
    v6, v11, v12, v13, v14, v15, v16, v17;
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 312;
    *(v1 + 88) = sub_1BD77FAC0;
    v18 = swift_continuation_init();
    *(v1 + 264) = v7;
    *(v1 + 208) = MEMORY[0x1E69E9820];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_1BD782AE0;
    *(v1 + 232) = &block_descriptor_75_2;
    *(v1 + 240) = v18;
    [v9 findHideMyEmailAddressWithKey:v10 completion:v1 + 208];

    return MEMORY[0x1EEE6DEC8](v1 + 80);
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-3005 userInfo:0];
    swift_willThrow();
    *(v1 + 464) = v19;
    if (([*(*(v1 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults) useHideMyEmail] & 1) != 0 || *(*(v1 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) == 1)
    {
      v27 = swift_task_alloc();
      *(v1 + 472) = v27;
      *v27 = v1;
      v27[1] = sub_1BD77F630;

      return sub_1BD782DA8();
    }

    else
    {
      *(v1 + 384), v20, v21, v22, v23, v24, v25, v26;

      v28 = *(v1 + 8);

      return v28();
    }
  }
}

uint64_t sub_1BD77FAC0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 496) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = sub_1BD77FBF0;
  }

  else
  {
    v5 = sub_1BD77F574;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD77FBF0(uint64_t a1)
{
  v2 = *(v1 + 488);
  v3 = *(v1 + 480);
  swift_willThrow();

  v4 = *(v1 + 496);
  *(v1 + 464) = v4;
  if (([*(*(v1 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults) useHideMyEmail] & 1) != 0 || *(*(v1 + 328) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) == 1)
  {
    v12 = swift_task_alloc();
    *(v1 + 472) = v12;
    *v12 = v1;
    v12[1] = sub_1BD77F630;

    return sub_1BD782DA8();
  }

  else
  {
    *(v1 + 384), v5, v6, v7, v8, v9, v10, v11;

    v14 = *(v1 + 8);

    return v14();
  }
}

_BYTE *sub_1BD77FD44(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v93 = a4;
  v91 = a2;
  v92 = a3;
  v90 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v6 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v8 = &v87 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52800, &unk_1BE0F5FF8);
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527F8, &qword_1BE0F5FF0);
  v12 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v14 = &v87 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527D8, &qword_1BE0F5FD0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v87 - v17;
  v19 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
  aBlock = 0;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52738, &qword_1BE0F5B40);
  sub_1BE04D874();
  v88 = v16;
  v89 = v15;
  (*(v16 + 32))(&v5[v19], v18, v15);
  v20 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailError;
  LOBYTE(aBlock) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52760, &qword_1BE0F5B58);
  sub_1BE04D874();
  (*(v12 + 32))(&v5[v20], v14, v94);
  v21 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailAccountConfigurationError;
  LOBYTE(aBlock) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52770, &qword_1BE0F5B60);
  sub_1BE04D874();
  (*(v95 + 32))(&v5[v21], v11, v96);
  v22 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__supportsHideMyEmail;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v23 = *(v6 + 32);
  v24 = v97;
  v23(&v5[v22], v8, v97);
  v25 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailLoading;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v23(&v5[v25], v8, v24);
  v26 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailSelected;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v23(&v5[v26], v8, v24);
  v27 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__useHideMyEmailTransactionDefault;
  LOBYTE(aBlock) = 0;
  sub_1BE04D874();
  v23(&v5[v27], v8, v24);
  v28 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager;
  *&v5[v28] = [objc_allocWithZone(MEMORY[0x1E69B88F0]) init];
  v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration] = 0;
  v29 = &v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_domainKey];
  *v29 = 0;
  v29[1] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration] = 0;
  *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail] = 0;
  v30 = &v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString];
  *v30 = 0;
  v30[1] = 0;
  v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_merchantDidProvideEmailAddress] = 0;
  v31 = &v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
  v31[1] = 0u;
  v31[2] = 0u;
  *v31 = 0u;
  v32 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults;
  *&v5[v32] = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_recents] = result;
    v34 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
    swift_beginAccess();
    v35 = *(v88 + 8);
    v36 = v90;
    v37 = v90;
    v35(&v5[v34], v89);
    v105 = v36;
    sub_1BE04D874();
    swift_endAccess();
    v45 = MEMORY[0x1E69E7CD0];
    v105 = MEMORY[0x1E69E7CD0];
    v46 = MEMORY[0x1E69E7CC0];
    v104 = MEMORY[0x1E69E7CC0];
    v47 = v91;
    v48 = *(v91 + 16);
    if (v48)
    {
      v49 = v91;
      v50 = (v91 + 32);
      do
      {
        v51 = *v50;
        v52 = sub_1BD9DE0A8(v51);
        v54 = sub_1BD2A5644(&aBlock, v52, v53);
        v99, v55, v56, v57, v58, v59, v60, v61;
        if (v54)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v50;
        --v48;
      }

      while (v48);
      v46 = v104;
      v45 = v105;
      v47 = v49;
    }

    v47, v38, v39, v40, v41, v42, v43, v44;
    v45, v62, v63, v64, v65, v66, v67, v68;
    swift_beginAccess();
    v105 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52748, &qword_1BE0F5B48);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    v105 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8, &qword_1BE0F5B50);
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v105) = v93 & 1;
    sub_1BE04D874();
    swift_endAccess();
    v69 = *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager];
    v102 = sub_1BD7867CC;
    v103 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v99 = 1107296256;
    v100 = sub_1BD3CC8C0;
    v101 = &block_descriptor_112_0;
    v70 = _Block_copy(&aBlock);
    v71 = v103;
    v72 = v69;
    sub_1BE048964();
    v71, v73, v74, v75, v76, v77, v78, v79;
    [v72 isAvailable_];
    _Block_release(v70);

    LOBYTE(v70) = [*&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_defaults] useHideMyEmail];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = v70;
    sub_1BE048964();
    sub_1BE04D8C4();

    v80 = &v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
    v81 = *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context];
    v82 = *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 8];
    v83 = *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 16];
    v84 = *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 24];
    v85 = *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32];
    v86 = *&v5[OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 40];
    *v80 = 0u;
    v80[1] = 0u;
    v80[2] = 0u;
    sub_1BD40FB5C(v81, v82, v83, v84, v85, v86);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD780590(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v35) = a1;
  sub_1BE048964();
  sub_1BE04D8C4();
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v35);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  if (v35 == 1)
  {
    v21 = [*(a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager) forwardingEmailForPrimaryAccount];
    if (v21)
    {
      v29 = v21;
      v30 = sub_1BE052434();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = (a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString);
    v34 = *(a3 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString + 8);
    *v33 = v30;
    v33[1] = v32;
    v34, v22, v23, v24, v25, v26, v27, v28;
  }
}

void sub_1BD7806B8(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v465 = &v464 - v10;
  v11 = (v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v12 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 8);
  v14 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 16);
  v15 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 24);
  v16 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32);
  v17 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 40);
  v469 = v4;
  *v11 = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v8;
  v11[5] = v7;
  sub_1BD40FB5C(v12, v13, v14, v15, v16, v17);
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = v3;
  v21 = v8;
  sub_1BE048964();
  sub_1BD0DE19C(&v469, &v468, &qword_1EBD3D490, &unk_1BE0D42B0);
  v22 = v6;
  sub_1BE04D8B4(&v468);
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  v19, v30, v31, v32, v33, v34, v35, v36;
  v37 = v468;
  v38 = &selRef_setIsFinalViewController_;
  v39 = [v21 shippingEmail];
  v40 = v39;
  if (!v37)
  {
    if (!v39)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v39)
  {
    v40 = v37;
LABEL_13:

    goto LABEL_14;
  }

  v466 = v22;
  v41 = v6;
  v42 = [v37 identifier];
  v43 = sub_1BE052434();
  v45 = v44;

  v46 = [v40 identifier];
  v47 = sub_1BE052434();
  v49 = v48;

  if (v43 == v47 && v45 == v49)
  {
    v45, v50, v51, v52, v53, v54, v55, v56;
    v49, v57, v58, v59, v60, v61, v62, v63;
    v38 = &selRef_setIsFinalViewController_;
    goto LABEL_10;
  }

  v64 = sub_1BE053B84();
  v45, v65, v66, v67, v68, v69, v70, v71;
  v49, v72, v73, v74, v75, v76, v77, v78;
  v38 = &selRef_setIsFinalViewController_;
  if ((v64 & 1) == 0)
  {

    v6 = v41;
    v22 = v466;
    goto LABEL_13;
  }

LABEL_10:
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  v79 = sub_1BE053074();

  v6 = v41;
  v22 = v466;
  if ((v79 & 1) == 0)
  {
LABEL_14:
    v80 = [v21 v38[371]];
    swift_getKeyPath();
    swift_getKeyPath();
    v468 = v80;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

LABEL_15:
  v81 = swift_getKeyPath();
  v82 = swift_getKeyPath();
  sub_1BE04D8B4(&v468);
  v81, v83, v84, v85, v86, v87, v88, v89;
  v82, v90, v91, v92, v93, v94, v95, v96;
  v97 = v468;
  v467 = v21;
  if (v6)
  {
    v98 = v6;
    objc_opt_self();
    v99 = swift_dynamicCastObjCClass();
    if (v99)
    {
      v100 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1BE0B69E0;
      v102 = v22;
      v103 = *MEMORY[0x1E69BB7B8];
      *(v101 + 32) = *MEMORY[0x1E69BB7B8];
      type metadata accessor for PKContactField(0);
      v466 = v102;
      v104 = v102;
      v105 = v103;
      v106 = sub_1BE052724();
      v101, v107, v108, v109, v110, v111, v112, v113;
      v114 = [v100 clientErrors];
      if (v114)
      {
        v115 = v114;
        v116 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v117 = sub_1BE052744();

        v118 = sub_1BD3F00D4(v117);
        v117, v119, v120, v121, v122, v123, v124, v125;
      }

      else
      {
        v116 = v38;
        v118 = MEMORY[0x1E69E7CC0];
      }

      v127 = objc_opt_self();
      v135 = sub_1BD3F01E8(v118, v128, v129, v130, v131, v132, v133, v134);
      v118, v136, v137, v138, v139, v140, v141, v142;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v143 = sub_1BE052724();
      v135, v144, v145, v146, v147, v148, v149, v150;
      v151 = [v127 pk:v106 FilteredShippingErrorsForContactFields:v143 errors:?];

      v152 = sub_1BE052744();
      v126 = sub_1BD3F00D4(v152);

      v152, v153, v154, v155, v156, v157, v158, v159;
      v6 = v98;
      v38 = v116;
      v22 = v466;
      v21 = v467;
    }

    else
    {
      v126 = MEMORY[0x1E69E7CC0];
      v21 = v467;
    }
  }

  else
  {
    v126 = MEMORY[0x1E69E7CC0];
  }

  v160 = sub_1BD3FE590(v97, v126);
  v97, v161, v162, v163, v164, v165, v166, v167;
  v126, v168, v169, v170, v171, v172, v173, v174;
  if ((v160 & 1) == 0)
  {
    if (v6 && (objc_opt_self(), (v175 = swift_dynamicCastObjCClass()) != 0))
    {
      v176 = v175;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v177 = swift_allocObject();
      *(v177 + 16) = xmmword_1BE0B69E0;
      v178 = v22;
      v179 = *MEMORY[0x1E69BB7B8];
      *(v177 + 32) = *MEMORY[0x1E69BB7B8];
      type metadata accessor for PKContactField(0);
      v180 = v178;
      v181 = v179;
      v182 = sub_1BE052724();
      v177, v183, v184, v185, v186, v187, v188, v189;
      v190 = [v176 clientErrors];
      if (v190)
      {
        v191 = v190;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v192 = sub_1BE052744();

        v193 = sub_1BD3F00D4(v192);
        v192, v194, v195, v196, v197, v198, v199, v200;
      }

      else
      {
        v193 = MEMORY[0x1E69E7CC0];
      }

      v202 = objc_opt_self();
      v210 = sub_1BD3F01E8(v193, v203, v204, v205, v206, v207, v208, v209);
      v193, v211, v212, v213, v214, v215, v216, v217;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v218 = sub_1BE052724();
      v210, v219, v220, v221, v222, v223, v224, v225;
      v226 = [v202 pk:v182 FilteredShippingErrorsForContactFields:v218 errors:?];

      v227 = sub_1BE052744();
      v201 = sub_1BD3F00D4(v227);

      v227, v228, v229, v230, v231, v232, v233, v234;
    }

    else
    {
      v201 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v468 = v201;
    sub_1BE048964();
    sub_1BE04D8C4();
    v21 = v467;
  }

  v235 = swift_getKeyPath();
  v236 = swift_getKeyPath();
  sub_1BE04D8B4(&v468);
  v235, v237, v238, v239, v240, v241, v242, v243;
  v236, v244, v245, v246, v247, v248, v249, v250;
  v251 = v468;
  v252 = [v21 v38[371]];
  if (v252)
  {

    v253 = 1;
  }

  else
  {
    v253 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail) != 0;
  }

  v254 = [v21 v38[371]];
  v255 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail;
  v256 = *(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail);
  if (v254)
  {
    v257 = v254;
    if (!v256)
    {

      v281 = 0;
      goto LABEL_49;
    }

    HIDWORD(v464) = v251;
    v466 = v6;
    v258 = v256;
    v259 = [v257 identifier];
    v260 = sub_1BE052434();
    v262 = v261;

    v263 = [v258 identifier];
    v264 = sub_1BE052434();
    v266 = v265;

    if (v260 == v264 && v262 == v266)
    {
      v262, v267, v268, v269, v270, v271, v272, v273;
      v266, v274, v275, v276, v277, v278, v279, v280;
    }

    else
    {
      v282 = sub_1BE053B84();
      v262, v283, v284, v285, v286, v287, v288, v289;
      v266, v290, v291, v292, v293, v294, v295, v296;
      if ((v282 & 1) == 0)
      {

        v281 = 0;
        v6 = v466;
        goto LABEL_49;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v297 = sub_1BE053074();

    v6 = v466;
    LOBYTE(v251) = BYTE4(v464);
    if (v297)
    {
      goto LABEL_45;
    }

LABEL_41:
    v281 = 0;
    goto LABEL_49;
  }

  if (v256)
  {
    goto LABEL_41;
  }

LABEL_45:
  v281 = v251 != 4 || v253;
LABEL_49:
  v298 = v467;
  v299 = swift_getKeyPath();
  v300 = swift_getKeyPath();
  sub_1BE04D8B4(&v468);
  v299, v301, v302, v303, v304, v305, v306, v307;
  v300, v308, v309, v310, v311, v312, v313, v314;
  if (v468 == 1 && (v281 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v468) = 4;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v315 = swift_getKeyPath();
  v316 = swift_getKeyPath();
  sub_1BE04D8B4(&v468);
  v315, v317, v318, v319, v320, v321, v322, v323;
  v316, v324, v325, v326, v327, v328, v329, v330;
  if (v468 == 1)
  {
    v331 = [v298 shippingEmail];
    if (v331)
    {

      v332 = [v298 shippingEmail];
      v333 = *(v2 + v255);
      if (v332)
      {
        v334 = v332;
        if (v333)
        {
          v466 = v6;
          v335 = v333;
          v336 = [v334 identifier];
          v337 = sub_1BE052434();
          v339 = v338;

          v340 = [v335 identifier];
          v341 = sub_1BE052434();
          v343 = v342;

          if (v337 == v341 && v339 == v343)
          {
            v339, v344, v345, v346, v347, v348, v349, v350;
            v343, v351, v352, v353, v354, v355, v356, v357;
            goto LABEL_63;
          }

          v358 = sub_1BE053B84();
          v339, v359, v360, v361, v362, v363, v364, v365;
          v343, v366, v367, v368, v369, v370, v371, v372;
          if (v358)
          {
LABEL_63:
            sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
            v373 = sub_1BE053074();

            v6 = v466;
            v298 = v467;
            if (v373)
            {
              goto LABEL_64;
            }

LABEL_68:
            sub_1BD7814CC();
            if (v281)
            {
              goto LABEL_65;
            }

            goto LABEL_69;
          }

          v6 = v466;
        }

        else
        {
          v335 = v332;
        }

        v298 = v467;
        goto LABEL_68;
      }

      v298 = v467;
      if (v333)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_64:
  if (v281)
  {
LABEL_65:
    v374 = 1;
    goto LABEL_70;
  }

LABEL_69:
  v375 = swift_getKeyPath();
  v376 = swift_getKeyPath();
  sub_1BE04D8B4(&v468);
  v375, v377, v378, v379, v380, v381, v382, v383;
  v376, v384, v385, v386, v387, v388, v389, v390;
  v374 = v468 != 4;
LABEL_70:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v468) = v374;
  sub_1BE048964();
  sub_1BE04D8C4();
  if (sub_1BD785D04(v6, v298, v391, v392, v393, v394, v395, v396))
  {
    v397 = swift_getKeyPath();
    v398 = swift_getKeyPath();
    sub_1BE04D8B4(&v468);
    v397, v399, v400, v401, v402, v403, v404, v405;
    v398, v406, v407, v408, v409, v410, v411, v412;
    v413 = v468 == 4;
  }

  else
  {
    v413 = 0;
  }

  v414 = swift_getKeyPath();
  v415 = swift_getKeyPath();
  sub_1BE04D8B4(&v468);
  v414, v416, v417, v418, v419, v420, v421, v422;
  v415, v423, v424, v425, v426, v427, v428, v429;
  if (v413 != v468)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v468) = v413;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  if (sub_1BD7815EC())
  {
    sub_1BD781820();
    if (v430)
    {
      v430, v430, v431, v432, v433, v434, v435, v436;
      if ((*(v2 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) & 1) == 0)
      {
        v437 = swift_getKeyPath();
        v438 = swift_getKeyPath();
        sub_1BE04D8B4(&v468);
        v437, v439, v440, v441, v442, v443, v444, v445;
        v438, v446, v447, v448, v449, v450, v451, v452;
        if (v468 == 1)
        {
          v453 = sub_1BE0528D4();
          v454 = v465;
          (*(*(v453 - 8) + 56))(v465, 1, 1, v453);
          v455 = swift_allocObject();
          v455[2] = 0;
          v455[3] = 0;
          v455[4] = v2;
          sub_1BE048964();
          v456 = sub_1BD122C00(0, 0, v454, &unk_1BE0F6178, v455);
          v456, v457, v458, v459, v460, v461, v462, v463;
        }
      }
    }
  }
}

void sub_1BD7814CC()
{
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail))
  {
    KeyPath = swift_getKeyPath();
    v2 = swift_getKeyPath();
    sub_1BE04D8B4(&v17);
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
    v2, v10, v11, v12, v13, v14, v15, v16;
    if (v17 == 4)
    {
      *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
      sub_1BD77D5C8();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
    }
  }
}

id sub_1BD7815EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context))
  {
    v12 = sub_1BE04AA64();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
LABEL_8:
    v13 = 0;
LABEL_9:
    sub_1BD0DE53C(v7, &unk_1EBD3CF70, &qword_1BE0BA000);
    return v13;
  }

  result = [*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32) paymentRequest];
  if (result)
  {
    v9 = result;
    v10 = [result originatingURL];

    if (v10)
    {
      sub_1BE04A9F4();

      v11 = sub_1BE04AA64();
      (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
    }

    else
    {
      v11 = sub_1BE04AA64();
      (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    }

    sub_1BD226B4C(v3, v7);
    sub_1BE04AA64();
    v13 = 1;
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1BD781820()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 24);
  v6 = v3;
  sub_1BE048964();
  v7 = v2;
  swift_unknownObjectRetain();
  v8 = sub_1BD7815EC();
  result = [v6 paymentRequest];
  v10 = result;
  if (v8)
  {
    if (result)
    {
      v11 = [result merchantSession];

      if (v11)
      {
        v19 = [v11 merchantIdentifier];

        v20 = sub_1BE052434();
        v4, v21, v22, v23, v24, v25, v26, v27;

        swift_unknownObjectRelease();
        return v20;
      }

LABEL_9:
      v4, v12, v13, v14, v15, v16, v17, v18;

      swift_unknownObjectRelease();
      return 0;
    }

    __break(1u);
  }

  else if (result)
  {
    v28 = [result hashedMerchantIdentifier];

    if (v28)
    {
      v29 = sub_1BE052434();

      v4, v30, v31, v32, v33, v34, v35, v36;
      swift_unknownObjectRelease();

      return v29;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7819D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BE04D214();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD781A98, 0, 0);
}

uint64_t sub_1BD781A98(uint64_t a1)
{
  sub_1BE04D084();
  v2 = sub_1BE04D204();
  v3 = sub_1BE052C54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, v3, "Hide My Email setup, received merchant session", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_1BD781BC8;

  return sub_1BD77EB7C();
}

uint64_t sub_1BD781BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BD781CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE051F54();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD781DF4, 0, 0);
}

uint64_t sub_1BD781DF4()
{
  v1 = v0[16];
  v2 = v0[13];
  v31 = v0[15];
  v32 = v0[14];
  v3 = v0[11];
  v30 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = sub_1BE052434();
  v8 = v7;
  v9 = sub_1BD51D758(v6, v7, v4);
  v8, v10, v11, v12, v13, v14, v15, v16;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v29 = sub_1BE052D54();
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = v9;
  v0[6] = sub_1BD7867C4;
  v0[7] = v17;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_109_1;
  v18 = _Block_copy(v0 + 2);
  v19 = v0[7];
  sub_1BE048964();
  v19, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1BD786764(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v18);
  _Block_release(v18);

  (*(v30 + 8))(v2, v3);
  (*(v31 + 8))(v1, v32);

  v27 = v0[1];

  return v27();
}

void sub_1BD782080(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = sub_1BE053704();
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    v20 = swift_getKeyPath();
    sub_1BE04D8B4(&v61);
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
    v20, v28, v29, v30, v31, v32, v33, v34;
    sub_1BDA7AC70(v4);
    v35 = v61;
    v36 = swift_getKeyPath();
    v37 = swift_getKeyPath();
    sub_1BE04D8B4(&v60);
    v36, v38, v39, v40, v41, v42, v43, v44;
    v37, v45, v46, v47, v48, v49, v50, v51;
    v52 = v60;
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v35;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77C960(v52);
    v52, v53, v54, v55, v56, v57, v58, v59;
    return;
  }

  v61 = MEMORY[0x1E69E7CC0];
  sub_1BE0538E4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](v5, a2);
      }

      else
      {
        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_1BE052434();
      v9 = v8;
      v10 = v7;
      v11 = sub_1BE052404();
      v9, v12, v13, v14, v15, v16, v17, v18;
      [v10 setValueSource_];

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v3 != v5);
    v4 = v61;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BD7822DC()
{
  v1[20] = v0;
  v2 = sub_1BE04AA64();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_1BE0528A4();
  v1[26] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[27] = v4;
  v1[28] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD782414, v4, v3);
}

uint64_t sub_1BD782414(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 160);
  v10 = (v9 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  v11 = *(v9 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  *(v8 + 232) = v11;
  if (!v11)
  {
    *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
    v35 = 0;
    v36 = 0;
    goto LABEL_18;
  }

  v12 = v10[3];
  *(v8 + 240) = v12;
  *(v8 + 248) = v10[1];
  v13 = v10[5];
  *(v8 + 256) = v13;
  v14 = v10[4];
  v15 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_domainKey;
  *(v8 + 264) = v14;
  *(v8 + 272) = v15;
  v16 = (v9 + v15);
  v17 = *(v9 + v15 + 8);
  v18 = v12;
  v19 = v14;
  sub_1BE048964();
  v27 = v11;
  if (!v17)
  {
    swift_unknownObjectRetain();
    if (sub_1BD7815EC())
    {
      v37 = [v19 paymentRequest];
      if (v37)
      {
        v45 = v37;
        *(v8 + 208), v38, v39, v40, v41, v42, v43, v44;
        v46 = [v45 originatingURL];

        v86 = v18;
        if (v46)
        {
          sub_1BE04A9F4();

          v47 = 0;
        }

        else
        {
          v47 = 1;
        }

        v53 = *(v8 + 192);
        v52 = *(v8 + 200);
        v55 = *(v8 + 168);
        v54 = *(v8 + 176);
        (*(v54 + 56))(v53, v47, 1, v55);
        sub_1BD226B4C(v53, v52);
        v56 = (*(v54 + 48))(v52, 1, v55);
        v57 = *(v8 + 200);
        if (v56)
        {

          swift_unknownObjectRelease();
          v13, v58, v59, v60, v61, v62, v63, v64;
          sub_1BD0DE53C(v57, &unk_1EBD3CF70, &qword_1BE0BA000);
          v35 = 0;
          v36 = 0;
        }

        else
        {
          v65 = *(v8 + 176);
          v66 = *(v8 + 184);
          v85 = *(v8 + 168);
          (*(v65 + 16))(v66, v57);
          sub_1BD0DE53C(v57, &unk_1EBD3CF70, &qword_1BE0BA000);
          v35 = sub_1BE04AA14();
          v36 = v67;

          swift_unknownObjectRelease();
          v13, v68, v69, v70, v71, v72, v73, v74;
          (*(v65 + 8))(v66, v85);
        }

        v75 = v16[1];
        *v16 = v35;
        v16[1] = v36;
        sub_1BE048C84();
        v75, v76, v77, v78, v79, v80, v81, v82;
        goto LABEL_18;
      }

      __break(1u);
    }

    else
    {
      v48 = *(*(v8 + 160) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager);
      *(v8 + 280) = v48;
      v49 = v48;
      v37 = [v19 hostApplicationIdentifier];
      *(v8 + 288) = v37;
      if (v37)
      {
        v50 = v37;
        *(v8 + 16) = v8;
        *(v8 + 56) = v8 + 144;
        *(v8 + 24) = sub_1BD782858;
        v51 = swift_continuation_init();
        *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52830, &qword_1BE0F6230);
        *(v8 + 80) = MEMORY[0x1E69E9820];
        *(v8 + 88) = 1107296256;
        *(v8 + 96) = sub_1BD784ED8;
        *(v8 + 104) = &block_descriptor_103_1;
        *(v8 + 112) = v51;
        [v49 bestDomainForAppIdentifier:v50 completion:v8 + 80];
        v37 = (v8 + 16);

        return MEMORY[0x1EEE6DEC8](v37);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v37);
  }

  *(v8 + 208), v20, v21, v22, v23, v24, v25, v26;

  v13, v28, v29, v30, v31, v32, v33, v34;
  v35 = *v16;
  v36 = v16[1];
  sub_1BE048C84();
LABEL_18:

  v83 = *(v8 + 8);

  return v83(v35, v36);
}

uint64_t sub_1BD782858()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1BD782960, v2, v1);
}

uint64_t sub_1BD782960(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 280);
  v9 = *(v8 + 288);
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  v12 = *(v8 + 144);
  v11 = *(v8 + 152);

  v13 = *(v8 + 264);
  if (v11)
  {
    v14 = *(v8 + 256);
    v15 = *(v8 + 232);

    swift_unknownObjectRelease();
    v14, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v23 = [*(v8 + 264) bundleIdentifier];
    v24 = *(v8 + 256);
    v25 = *(v8 + 264);
    v26 = *(v8 + 240);
    v27 = *(v8 + 232);
    if (v23)
    {
      v28 = v23;
      v12 = sub_1BE052434();
      v11 = v29;

      swift_unknownObjectRelease();
      v24, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {

      swift_unknownObjectRelease();
      v24, v37, v38, v39, v40, v41, v42, v43;

      v12 = 0;
      v11 = 0;
    }
  }

  v44 = (*(v8 + 160) + *(v8 + 272));
  v45 = v44[1];
  *v44 = v12;
  v44[1] = v11;
  sub_1BE048C84();
  v45, v46, v47, v48, v49, v50, v51, v52;

  v53 = *(v8 + 8);

  return v53(v12, v11);
}

uint64_t sub_1BD782AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1BE052434();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

void sub_1BD782BB4(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = a4;
  v9 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail;
  v10 = *(v4 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_privateEmail);
  if (!v10)
  {
LABEL_7:
    sub_1BE048C84();
    sub_1BD9DE4A4(a1, a2, v5);
    v31 = *(v4 + v9);
    *(v4 + v9) = v32;

    if (a3)
    {
      v33 = *(v4 + v9);
      v34 = (v4 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
      v35 = *(v4 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
      if (v35)
      {
        v37 = v34[4];
        v36 = v34[5];
        v38 = v34[2];
        v49 = v34[3];
        v39 = v34[1];
        v40 = v33;
        sub_1BD36A5EC(v35, v39, v38, v49, v37);
        sub_1BD785FE0(v33, v35, v37);
        v36, v41, v42, v43, v44, v45, v46, v47;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v48 = v33;
        sub_1BE048964();
        sub_1BE04D8C4();
      }
    }

    return;
  }

  v11 = v10;
  v12 = sub_1BD9DE0A8(v11);
  v14 = v13;

  if (v12 != a1 || v14 != a2)
  {
    v23 = sub_1BE053B84();
    v14, v24, v25, v26, v27, v28, v29, v30;
    if (v23)
    {
      return;
    }

    goto LABEL_7;
  }

  v14, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t sub_1BD782DA8()
{
  v1[4] = v0;
  v2 = sub_1BE052874();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04D214();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = sub_1BE0528A4();
  v1[15] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD782F20, v5, v4);
}

uint64_t sub_1BD782F20()
{
  if ([*(*(v0 + 32) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager) isAccountConfigured])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 209) = 1;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77D5C8();
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_1BD783180;

    return sub_1BD7822DC();
  }

  else
  {
    *(v0 + 120), v1, v2, v3, v4, v5, v6, v7;
    sub_1BE04D084();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Hide My Email creation, account not configured", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    v13 = *(v0 + 88);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);

    (*(v15 + 8))(v13, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 208) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1BD783180(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD7832A8, v6, v5);
}

uint64_t sub_1BD7832A8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 160);
  if (v9)
  {
    v10 = *(v8 + 32) + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
    v11 = *v10;
    if (*v10)
    {
      v13 = *(v10 + 32);
      v12 = *(v10 + 40);
      v14 = *(v10 + 24);
      sub_1BD36A5EC(v11, *(v10 + 8), *(v10 + 16), v14, v13);
      sub_1BD785FE0(0, v11, v13);

      v12, v15, v16, v17, v18, v19, v20, v21;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v8 + 16) = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    v28 = sub_1BD781820();
    *(v8 + 168) = v29;
    if (v29)
    {
      v36 = v28;
      v37 = v29;
      v38 = *(v8 + 152);
      v39 = *(v8 + 32);
      *(v39 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) = 0;
      *(v8 + 176) = sub_1BE052894();
      v40 = swift_task_alloc();
      *(v8 + 184) = v40;
      v40[2] = v39;
      v40[3] = v38;
      v40[4] = v9;
      v40[5] = v36;
      v40[6] = v37;
      v41 = swift_task_alloc();
      *(v8 + 192) = v41;
      *v41 = v8;
      v41[1] = sub_1BD7836C8;

      return MEMORY[0x1EEE6DD58]();
    }

    v42 = *(v8 + 120);
    v9, 0, v30, v31, v32, v33, v34, v35;
    v42, v43, v44, v45, v46, v47, v48, v49;
    sub_1BE04D084();
    v50 = sub_1BE04D204();
    v51 = sub_1BE052C54();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1BD026000, v50, v51, "Hide My Email creation, no merchant identifier found", v52, 2u);
      MEMORY[0x1BFB45F20](v52, -1, -1);
    }

    v53 = *(v8 + 104);
    v54 = *(v8 + 64);
    v55 = *(v8 + 72);
    v56 = *(v8 + 32);

    (*(v55 + 8))(v53, v54);
    *(v56 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_pendingHMERegistration) = 1;
    *(v56 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_isHideMyEmailActive) = 0;
  }

  else
  {
    *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
    sub_1BE04D084();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "Hide My Email creation, no domain key found", v24, 2u);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    v25 = *(v8 + 96);
    v26 = *(v8 + 64);
    v27 = *(v8 + 72);

    (*(v27 + 8))(v25, v26);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v8 + 210) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77D5C8();
  }

  v57 = *(v8 + 8);

  return v57();
}

uint64_t sub_1BD7836C8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v10 = *(v2 + 128);
    v11 = *(v2 + 136);
    v12 = sub_1BD7838A0;
  }

  else
  {
    v14 = *(v2 + 160);
    v13 = *(v2 + 168);
    *(v2 + 176), v3, v4, v5, v6, v7, v8, v9;
    v13, v15, v16, v17, v18, v19, v20, v21;
    v14, v22, v23, v24, v25, v26, v27, v28;

    v10 = *(v2 + 128);
    v11 = *(v2 + 136);
    v12 = sub_1BD783808;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD783808(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD7838A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 200);
  v10 = *(v8 + 176);
  v12 = *(v8 + 160);
  v11 = *(v8 + 168);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  v10, v13, v14, v15, v16, v17, v18, v19;
  v11, v20, v21, v22, v23, v24, v25, v26;
  v12, v27, v28, v29, v30, v31, v32, v33;

  *(v8 + 24) = v9;
  v34 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  if (swift_dynamicCast())
  {
    (*(*(v8 + 48) + 8))(*(v8 + 56), *(v8 + 40));
    sub_1BE04D084();
    v35 = sub_1BE04D204();
    v36 = sub_1BE052C54();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v8 + 200);
    v40 = *(v8 + 72);
    v39 = *(v8 + 80);
    v41 = *(v8 + 64);
    if (v37)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1BD026000, v35, v36, "Hide My Email registration, call timed out or user cancelled", v42, 2u);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v39, v41);
  }

  else
  {
    v43 = *(v8 + 200);
    sub_1BD784CAC(v43);
  }

  v44 = *(v8 + 8);

  return v44();
}

uint64_t sub_1BD783AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v7[8] = swift_task_alloc();
  v7[9] = sub_1BE0528A4();
  v7[10] = sub_1BE052894();
  v9 = sub_1BE052844();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD783B80, v9, v8);
}

uint64_t sub_1BD783B80()
{
  v1 = v0[8];
  v2 = v0[7];
  v17 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_1BE0528D4();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();
  v8 = sub_1BE052894();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v5;
  v9[5] = v3;
  v9[6] = v4;
  v9[7] = v17;
  v9[8] = v2;
  sub_1BD7846B0(v1, &unk_1BE0F6208, v9);
  sub_1BD0DE53C(v1, &unk_1EBD3E580, &unk_1BE0B9000);
  v7(v1, 1, 1, v6);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v5;
  sub_1BE048964();
  sub_1BD7846B0(v1, &unk_1BE0F6218, v11);
  sub_1BD0DE53C(v1, &unk_1EBD3E580, &unk_1BE0B9000);
  v12 = sub_1BE052894();
  v0[13] = v12;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52818, &unk_1BE0F6220);
  *v13 = v0;
  v13[1] = sub_1BD783DD0;
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DAC8](v0 + 16, v12, v15, v14);
}

uint64_t sub_1BD783DD0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v10 = *(v2 + 88);
    v11 = *(v2 + 96);
    v12 = sub_1BD783F98;
  }

  else
  {
    *(v2 + 104), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 88);
    v11 = *(v2 + 96);
    v12 = sub_1BD783EEC;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD783EEC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  sub_1BE0529B4();

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD783F98(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD784014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  sub_1BE0528A4();
  v8[25] = sub_1BE052894();
  v10 = sub_1BE052844();
  v8[26] = v10;
  v8[27] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD7840B4, v10, v9);
}

uint64_t sub_1BD7840B4()
{
  v1 = v0[20];
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_hideMyEmailManager);
  v0[28] = v2;
  v3 = v2;
  v4 = sub_1BE052404();
  v0[29] = v4;
  v5 = v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v6)
  {
    v8 = *(v5 + 32);
    v7 = *(v5 + 40);
    v9 = *(v5 + 24);
    v10 = v8;
    sub_1BE048964();
    v11 = v6;
    swift_unknownObjectRetain();
    if ((sub_1BD7815EC() & 1) == 0)
    {
      v12 = [v10 bundleIdentifier];
      if (v12)
      {
        v43 = v3;
        v13 = v12;
        sub_1BE052434();
        v15 = v14;

        swift_unknownObjectRelease();
        v7, v16, v17, v18, v19, v20, v21, v22;

        v3 = v43;
        goto LABEL_7;
      }
    }

    swift_unknownObjectRelease();
    v7, v23, v24, v25, v26, v27, v28, v29;
  }

  v30 = v0[24];
  sub_1BE048C84();
  v15 = v30;
LABEL_7:
  v31 = sub_1BE052404();
  v0[30] = v31;
  v15, v32, v33, v34, v35, v36, v37, v38;
  v39 = sub_1BE052404();
  v0[31] = v39;
  v40 = sub_1BD7815EC();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD784348;
  v41 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52808, &qword_1BE0F6198);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD782AE0;
  v0[13] = &block_descriptor_99_3;
  v0[14] = v41;
  [v3 registerHideMyEmailAddressWithKey:v4 originIdentifier:v31 merchantIdentifier:v39 isWebPayment:v40 & 1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD784348()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_1BD78461C;
  }

  else
  {
    v5 = sub_1BD784478;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD784478(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 240);
  v9 = *(v8 + 248);
  v12 = *(v8 + 224);
  v11 = *(v8 + 232);
  *(v8 + 200), a2, a3, a4, a5, a6, a7, a8;
  v14 = *(v8 + 144);
  v13 = *(v8 + 152);

  if (sub_1BE052974())
  {
    v13, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v22 = *(v8 + 160);
    v23 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration;
    if (*(v22 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_userCancelledRegistration) == 1)
    {
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v22 + v23) = 0;
      sub_1BE052874();
      sub_1BD786764(&unk_1EBD52820, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      swift_allocError();
      sub_1BE052204();
      swift_willThrow();
      v24 = *(v8 + 8);
      goto LABEL_7;
    }

    sub_1BD782BB4(v14, v13, 1, 7);
    v13, v25, v26, v27, v28, v29, v30, v31;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v8 + 80) = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD77D5C8();
  }

  v24 = *(v8 + 8);
LABEL_7:

  return v24();
}

uint64_t sub_1BD78461C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 248);
  v11 = *(v8 + 232);
  v10 = *(v8 + 240);
  v12 = *(v8 + 224);
  *(v8 + 200), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  v13 = *(v8 + 8);

  return v13();
}

void sub_1BD7846B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  sub_1BD0DE19C(a1, v25 - v8, &unk_1EBD3E580, &unk_1BE0B9000);
  v10 = sub_1BE0528D4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &unk_1EBD3E580, &unk_1BE0B9000);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1BE052844();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BE0528C4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v26[0] = 0;
    v26[1] = 0;
    v16 = v26;
    v26[2] = v12;
    v26[3] = v14;
  }

  v25[1] = 1;
  v25[2] = v16;
  v25[3] = v15;
  v17 = swift_task_create();
  v17, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1BD7848A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1BD784944;

  return MEMORY[0x1EEE6DA60](10000000000);
}

uint64_t sub_1BD784944()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD784A74, 0, 0);
  }
}

uint64_t sub_1BD784A74(uint64_t a1)
{
  if (sub_1BE052974())
  {
    v2 = v1[1];

    return v2();
  }

  else
  {
    sub_1BD785884();
    v1[4] = swift_allocError();
    *v4 = 0;
    sub_1BE0528A4();
    v1[5] = sub_1BE052894();
    v6 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD784B68, v6, v5);
  }
}

uint64_t sub_1BD784B68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 32);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD784CAC(v9);

  return MEMORY[0x1EEE6DFA0](sub_1BD784BE4, 0, 0);
}

uint64_t sub_1BD784BE4()
{
  sub_1BE052874();
  sub_1BD786764(&unk_1EBD52820, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  swift_allocError();
  sub_1BE052204();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD784CAC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD77D5C8();
  sub_1BD7864E8(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v3 = v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context);
  if (v4)
  {
    v6 = *(v3 + 32);
    v5 = *(v3 + 40);
    v7 = *(v3 + 24);
    sub_1BD36A5EC(*(v1 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context), *(v3 + 8), *(v3 + 16), v7, v6);
    sub_1BD785FE0(0, v4, v6);
    v5, v8, v9, v10, v11, v12, v13, v14;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-3005 userInfo:0];
  if (*v3)
  {
    v16 = *v3;
    v17 = sub_1BE04A844();
    [v16 didEncounterShippingEmailError_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD784ED8(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1BE052434();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD784F50()
{
  v1 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__internalSelectedEmailAddress;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527D8, &qword_1BE0F5FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__emailAddresses;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527E0, &qword_1BE0F5FD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__errors;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD527E8, &unk_1BE0F5FE0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isValid;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailError;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD527F8, &qword_1BE0F5FF0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9PassKitUI14EmailAddresses__hideMyEmailAccountConfigurationError;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52800, &unk_1BE0F5FF8);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__supportsHideMyEmail, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailLoading, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__isHideMyEmailSelected, v8);
  v9(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses__useHideMyEmailTransactionDefault, v8);

  *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_domainKey + 8), v14, v15, v16, v17, v18, v19, v20;
  *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_forwardingEmailString + 8), v21, v22, v23, v24, v25, v26, v27;
  sub_1BD40FB5C(*(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 32), *(v0 + OBJC_IVAR____TtC9PassKitUI14EmailAddresses_context + 40));

  return v0;
}

uint64_t sub_1BD785240()
{
  sub_1BD784F50();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmailAddresses(uint64_t a1)
{
  result = qword_1EBD52720;
  if (!qword_1EBD52720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7852EC(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD52730, &qword_1EBD52738, &qword_1BE0F5B40);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD52740, &qword_1EBD52748, &qword_1BE0F5B48);
    if (v2 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD52750, &qword_1EBD459D8, &qword_1BE0F5B50);
      if (v3 <= 0x3F)
      {
        sub_1BD1E1120();
        if (v4 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD52758, &qword_1EBD52760, &qword_1BE0F5B58);
          if (v5 <= 0x3F)
          {
            sub_1BD0E4578(319, &qword_1EBD52768, &qword_1EBD52770, &qword_1BE0F5B60);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

id sub_1BD785584(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v13;
  v16 = *MEMORY[0x1E69B8048];
  v17 = *(v3 + 104);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v17(v11, v16, v2, v14);
      result = PKPassKitBundle();
      if (result)
      {
        v19 = result;
        v20 = sub_1BE04B6F4();
        v15 = v11;
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    v17(&v21 - v13, v16, v2, v14);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
LABEL_12:

      (*(v3 + 8))(v15, v2);
      return v20;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    v17(v8, v16, v2, v14);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_1BE04B6F4();
      v15 = v8;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v17(v5, v16, v2, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04B6F4();
    v15 = v5;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1BD785884()
{
  result = qword_1EBD52778;
  if (!qword_1EBD52778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52778);
  }

  return result;
}

unint64_t sub_1BD7858DC()
{
  result = qword_1EBD52780;
  if (!qword_1EBD52780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52780);
  }

  return result;
}

unint64_t sub_1BD785934()
{
  result = qword_1EBD52788;
  if (!qword_1EBD52788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52788);
  }

  return result;
}

unint64_t sub_1BD78598C()
{
  result = qword_1EBD52790;
  if (!qword_1EBD52790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52790);
  }

  return result;
}

unint64_t sub_1BD7859E4()
{
  result = qword_1EBD52798;
  if (!qword_1EBD52798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52798);
  }

  return result;
}

unint64_t sub_1BD785A3C()
{
  result = qword_1EBD527A0;
  if (!qword_1EBD527A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD527A0);
  }

  return result;
}

unint64_t sub_1BD785A90()
{
  result = qword_1EBD527C0;
  if (!qword_1EBD527C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD527C0);
  }

  return result;
}

void sub_1BD785AEC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD785B6C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD785C10(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD785C90(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD785D04(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (!a1 || (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) == 0))
  {
    v35 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_10;
    }

LABEL_6:
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35, a2, a3, a4, a5, a6, a7, a8;
    if (!v36)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  v13 = *MEMORY[0x1E69BB7B8];
  *(v12 + 32) = *MEMORY[0x1E69BB7B8];
  type metadata accessor for PKContactField(0);
  v14 = v13;
  v15 = a1;
  v16 = sub_1BE052724();
  v12, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v11 clientErrors];
  if (v24)
  {
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v26 = sub_1BE052744();

    v27 = sub_1BD3F00D4(v26);
    v26, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v38 = objc_opt_self();
  v46 = sub_1BD3F01E8(v27, v39, v40, v41, v42, v43, v44, v45);
  v27, v47, v48, v49, v50, v51, v52, v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  v54 = sub_1BE052724();
  v46, v55, v56, v57, v58, v59, v60, v61;
  v62 = [v38 pk:v16 FilteredShippingErrorsForContactFields:v54 errors:?];

  v63 = sub_1BE052744();
  v64 = sub_1BD3F00D4(v63);

  v63, v65, v66, v67, v68, v69, v70, v71;
  v35 = v64;
  if (!(v64 >> 62))
  {
    goto LABEL_6;
  }

LABEL_10:
  v72 = v35;
  v73 = sub_1BE053704();
  v72, v74, v75, v76, v77, v78, v79, v80;
  if (v73)
  {
    return 0;
  }

LABEL_11:
  v81 = [a2 shippingEmail];
  if (v81)
  {
    v82 = v81;
    sub_1BD9DE0A8(v81);
    v84 = v83;

    v85 = [a2 contactFormatValidator];
    if (v85)
    {
      v93 = v85;
      v94 = sub_1BE052404();
      v84, v95, v96, v97, v98, v99, v100, v101;
      v102 = [v93 emailAddressIsValid_];

      return v102;
    }

    v84, v86, v87, v88, v89, v90, v91, v92;
  }

  return 1;
}

void sub_1BD785FE0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a3 shippingEmail];
  v15 = v14;
  if (!a1)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v14)
  {
    v69[0] = v9;
    v69[1] = v6;
    v70 = a2;
    v71 = a1;
    v16 = [v71 identifier];
    v17 = sub_1BE052434();
    v19 = v18;

    v20 = [v15 identifier];
    v21 = sub_1BE052434();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {
      v19, v24, v25, v26, v27, v28, v29, v30;
      v23, v31, v32, v33, v34, v35, v36, v37;
    }

    else
    {
      v38 = sub_1BE053B84();
      v19, v39, v40, v41, v42, v43, v44, v45;
      v23, v46, v47, v48, v49, v50, v51, v52;
      if ((v38 & 1) == 0)
      {

        a2 = v70;
        v9 = v69[0];
        goto LABEL_15;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v53 = sub_1BE053074();

    a2 = v70;
    v9 = v69[0];
    if (v53)
    {
      v54 = v71;

      return;
    }
  }

  v55 = a1;
LABEL_15:
  sub_1BD9DE0A8(a1);
  v57 = v56;

  v57, v58, v59, v60, v61, v62, v63, v64;
LABEL_16:
  sub_1BE04D084();
  v65 = sub_1BE04D204();
  v66 = sub_1BE052C54();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1BD026000, v65, v66, "Updating selected email address", v67, 2u);
    MEMORY[0x1BFB45F20](v67, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  v68 = a1;
  sub_1BD6B56B4(v8, 2);
  sub_1BD42D548(v8);
  [a2 didSelectShippingEmail_];
}

uint64_t sub_1BD786354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD7819D8(a1, v4, v5, v6);
}

uint64_t sub_1BD786410(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BD0F985C;

  return sub_1BD783AA4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD7864E8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  type metadata accessor for PrivateEmailError(0);
  result = swift_dynamicCast();
  if (result)
  {
    sub_1BD786764(&qword_1EBD52810, type metadata accessor for PrivateEmailError, &unk_1BE0B6318);
    sub_1BE04A814();

    if (v3 + 11007 >= 6)
    {
      return 0;
    }

    else
    {
      return (0x10200000003uLL >> (8 * (v3 - 1)));
    }
  }

  return result;
}

uint64_t sub_1BD7865D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD784014(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD7866B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD7848A0(a1, v4, v5, v6);
}

uint64_t sub_1BD786764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD7867DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD77EAEC();
}

uint64_t sub_1BD7868D0()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xE400000000000000;
  v3 = 0xEA0000000000676ELL;
  v4 = 0xE700000000000000;
  if (v1 != 3)
  {
    v4 = 0xE800000000000000;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1BE052524();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1BE053D64();
}

void sub_1BD7869B0(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA0000000000676ELL;
  v5 = 0xE700000000000000;
  if (v2 != 3)
  {
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1BE052524();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD786A7C(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xE400000000000000;
  v4 = 0xEA0000000000676ELL;
  v5 = 0xE700000000000000;
  if (v2 != 3)
  {
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE700000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1BE053D64();
}

unint64_t sub_1BD786B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD789414(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD786B88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x69737365636F7270;
  v7 = 0xE700000000000000;
  v8 = 0x64656E6E616373;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E6964616572;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

char *sub_1BD786C24(unsigned int a1)
{
  v2 = v1;
  v90 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04D214();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v86 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex] = 0;
  v17 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions;
  *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions] = MEMORY[0x1E69E7CC0];
  v18 = &v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v92 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage;
  v93 = v17;
  *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage] = 0;
  sub_1BD0E5E8C(0, &qword_1EBD35DA8, 0x1E696AAE8);
  v20 = sub_1BE053014();
  v21 = sub_1BE052404();
  v22 = sub_1BE052404();
  v23 = [v20 URLForResource:v21 withExtension:v22];

  if (!v23)
  {
    sub_1BE04D0F4();
    v27 = sub_1BE04D204();
    v28 = sub_1BE052C34();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BD026000, v27, v28, "Failed to create card VFX asset url", v29, 2u);
      MEMORY[0x1BFB45F20](v29, -1, -1);
    }

    (*(v94 + 8))(v9, v95);
    *&v2[v93], v30, v31, v32, v33, v34, v35, v36;

    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1BE04A9F4();

  sub_1BD0E5E8C(0, &unk_1EBD4DB60, 0x1E69DF388);
  (*(v11 + 16))(v13, v16, v10);
  v24 = sub_1BD1AAE28(MEMORY[0x1E69E7CC0]);
  v25 = sub_1BD636A80(v13, v24);
  v26 = v10;
  v92 = v16;
  v38 = v25;
  v39 = [v38 rootNode];
  v40 = sub_1BE052404();
  isEscapingClosureAtFileLocation = [v39 childNodeWithName_];

  if (!isEscapingClosureAtFileLocation)
  {
    goto LABEL_20;
  }

  v42 = sub_1BE052404();
  v43 = [v39 childNodeWithName_];

  if (!v43)
  {
    goto LABEL_15;
  }

  v93 = v11;
  v44 = sub_1BE052404();
  v45 = [v39 childNodeWithName_];

  if (!v45)
  {
    v45 = v43;
LABEL_18:

    goto LABEL_19;
  }

  v46 = sub_1BE052404();
  v47 = [v39 childNodeWithName_];

  if (!v47)
  {

    isEscapingClosureAtFileLocation = v43;
    goto LABEL_18;
  }

  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_camera] = v43;
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardParent] = isEscapingClosureAtFileLocation;
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardEmitter] = v45;
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardGridEmitter] = v47;
  v100 = 0;
  v91 = v47;
  v88 = v45;
  v87 = isEscapingClosureAtFileLocation;
  v86 = v43;
  v48 = [v38 assetRegistry];
  v49 = [v48 rootNode];

  v50 = swift_allocObject();
  v50[2] = &v100;
  v51 = swift_allocObject();
  v51[2] = sub_1BD789548;
  v51[3] = v50;
  aBlock[4] = sub_1BD789550;
  v99 = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD637520;
  aBlock[3] = &block_descriptor_33_6;
  v52 = _Block_copy(aBlock);
  v53 = v99;
  sub_1BE048964();
  v53, v54, v55, v56, v57, v58, v59, v60;
  [v49 enumerateHierarchyUsingBlock_];

  _Block_release(v52);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v51, v61, v62, v63, v64, v65, v66, v67;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_15:
    v45 = isEscapingClosureAtFileLocation;
LABEL_19:

    goto LABEL_20;
  }

  v68 = v100;
  v69 = v92;
  if (!v100)
  {
    while (1)
    {
      sub_1BE04D0F4();
      v83 = sub_1BE04D204();
      v84 = sub_1BE052C34();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1BD026000, v83, v84, "Failed to acquiring Client Texture node from VFX", v85, 2u);
        MEMORY[0x1BFB45F20](v85, -1, -1);
      }

      (*(v94 + 8))(v89, v95);
LABEL_20:
      sub_1BE053994();
      __break(1u);
    }
  }

  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_clientTexture] = v100;
  v70 = objc_allocWithZone(MEMORY[0x1E69DF380]);
  v71 = v68;
  v72 = [v70 initWithFrame:0 options:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_vfxView] = v72;
  v73 = v72;
  [v73 setWorld_];

  v97.receiver = v2;
  v97.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v97, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BD787800();
  sub_1BD788BA4(v90, 0, 0);
  [v37 addSubview_];

  (*(v93 + 8))(v69, v26);
  v74 = v100;
  v50, v75, v76, v77, v78, v79, v80, v81;

  return v37;
}

void sub_1BD787688(void *a1, _BYTE *a2, void **a3)
{
  if (![a1 asset])
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [a1 name];
  v9 = sub_1BE052434();
  v11 = v10;

  if (v9 == 0x6554746E65696C43 && v11 == 0xED00006572757478)
  {
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v20 = sub_1BE053B84();
    v11, v21, v22, v23, v24, v25, v26, v27;
    if ((v20 & 1) == 0)
    {
LABEL_8:

      swift_unknownObjectRelease();
      return;
    }
  }

  *a2 = 1;
  v28 = *a3;
  *a3 = v7;
}

void sub_1BD787800()
{
  v0 = MEMORY[0x1E69E6370];
  v24 = MEMORY[0x1E69E6370];
  LOBYTE(v23[0]) = 0;
  sub_1BD787F88(5, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v0;
  LOBYTE(v23[0]) = 0;
  sub_1BD787F88(4, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v0;
  LOBYTE(v23[0]) = 0;
  sub_1BD787F88(6, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v1 = MEMORY[0x1E69E6448];
  v24 = MEMORY[0x1E69E6448];
  LODWORD(v23[0]) = 1036831949;
  sub_1BD787F88(10, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1048576000;
  sub_1BD787F88(9, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(8, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1056964608;
  sub_1BD787F88(7, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1056964608;
  sub_1BD787F88(17, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1056964608;
  sub_1BD787F88(18, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1058642330;
  sub_1BD787F88(19, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(20, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(21, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(25, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1065353216;
  sub_1BD787F88(26, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1059481190;
  sub_1BD787F88(23, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1061997773;
  sub_1BD787F88(22, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1061158912;
  sub_1BD787F88(27, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = v1;
  LODWORD(v23[0]) = 1041865114;
  sub_1BD787F88(1, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v2 = objc_opt_self();
  v3 = [v2 valueWithVFXFloat2_];
  v4 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  v24 = v4;
  v23[0] = v3;
  v21 = v3;
  sub_1BD787F88(13, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v5 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v5;
  v6 = v5;
  sub_1BD787F88(15, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v7 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v7;
  v8 = v7;
  sub_1BD787F88(11, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v9 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v9;
  v10 = v9;
  sub_1BD787F88(12, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v11 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v11;
  v12 = v11;
  sub_1BD787F88(14, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v13 = [v2 valueWithVFXFloat2_];
  v24 = v4;
  v23[0] = v13;
  v14 = v13;
  sub_1BD787F88(16, v23);
  sub_1BD0DE53C(v23, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v15 = *(v22 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardEmitter);
  v16 = [v15 particleEmitter];
  [v16 killParticles];

  v17 = [v15 particleEmitter];
  [v17 restart];

  v18 = *(v22 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_cardGridEmitter);
  v19 = [v18 particleEmitter];
  [v19 killParticles];

  v20 = [v18 particleEmitter];
  [v20 restart];
}

id sub_1BD787E2C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if (v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state] <= 2u)
  {
    v1 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation] * -25.0;
    v2 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation + 8] * -25.0;
  }

  result = [*&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_vfxView] setFrame_];
  v10 = &v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize];
  if (*&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize] != v7 || *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize + 8] != v8)
  {
    v17.origin.x = v5;
    v17.origin.y = v6;
    v17.size.width = v7;
    v17.size.height = v8;
    Width = CGRectGetWidth(v17);
    v18.origin.x = v5;
    v18.origin.y = v6;
    v18.size.width = v7;
    v18.size.height = v8;
    v13 = Width / CGRectGetHeight(v18);
    v15 = MEMORY[0x1E69E6448];
    *v14 = v13;
    sub_1BD787F88(0, v14);
    result = sub_1BD0DE53C(v14, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  }

  *v10 = v7;
  v10[1] = v8;
  return result;
}

void sub_1BD787F88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = [v3 behaviorGraph];
  if (v6)
  {
    v7 = v6;
    sub_1BD7888B0(v5);
    v9 = v8;
    sub_1BD1C4810(a2, v32);
    v10 = v33;
    if (v33)
    {
      v11 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = sub_1BE053B74();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0(v32, v17, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      v16 = 0;
    }

    v24 = sub_1BE052404();
    v9, v25, v26, v27, v28, v29, v30, v31;
    [v7 setObject:v16 forKeyedSubscript:v24];

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1BD788288()
{
  result = qword_1EBD52898;
  if (!qword_1EBD52898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52898);
  }

  return result;
}

void sub_1BD7882DC(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex);
  v6 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions;
  swift_beginAccess();
  v14 = *(v2 + v6);
  *(v2 + v6) = MEMORY[0x1E69E7CC0];
  v15 = v14[2];
  if (v15)
  {
    v16 = (v5 == a1) | a2 & 1;
    v17 = v14 + 5;
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v27 = v16;
      sub_1BE048964();
      v19(&v27);
      v18, v20, v21, v22, v23, v24, v25, v26;
      v17 += 2;
      --v15;
    }

    while (v15);
  }

  v14, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD7883A4(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v42 = a4;
  v45 = a2;
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FC4();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex] == v45)
    {
      v39 = v6;
      v40 = v10;
      v38 = v5;
      v41 = v9;
      v20 = MEMORY[0x1E69E6370];
      v47 = MEMORY[0x1E69E6370];
      LOBYTE(aBlock[0]) = a3 & 1;
      v21 = Strong;
      sub_1BD787F88(4, aBlock);
      sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v37 = v8;
      v22 = v42;
      v47 = v20;
      LOBYTE(aBlock[0]) = v42 == 0;
      sub_1BD787F88(6, aBlock);
      sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v47 = v20;
      LOBYTE(aBlock[0]) = v22 == 2;
      sub_1BD787F88(5, aBlock);
      sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v23 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v43 = *(v43 + 8);
      (v43)(v15, v44);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v26 = v45;
      v25[2] = v24;
      v25[3] = v26;
      v48 = sub_1BD789560;
      v49 = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      v47 = &block_descriptor_24_3;
      v27 = _Block_copy(aBlock);
      v49, v28, v29, v30, v31, v32, v33, v34;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      v35 = v37;
      v36 = v38;
      sub_1BE053664();
      MEMORY[0x1BFB3FD90](v18, v12, v35, v27);
      _Block_release(v27);

      (*(v39 + 8))(v35, v36);
      (*(v40 + 8))(v12, v41);
      (v43)(v18, v44);
    }

    else
    {
    }
  }
}

void sub_1BD788850(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD7882DC(a2, 0);
  }
}

unint64_t sub_1BD7888B0(char a1)
{
  result = 0x7461526874646977;
  switch(a1)
  {
    case 1:
    case 22:
      result = 0xD000000000000013;
      break;
    case 2:
    case 6:
    case 25:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x697274614D746F72;
      break;
    case 4:
      result = 0x747261506F547369;
      break;
    case 5:
      result = 0x616E69466F547369;
      break;
    case 7:
    case 11:
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
    case 16:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6F6D416D6F6F6C62;
      break;
    case 18:
      result = 0x7544647261436F74;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x6E61654C64726163;
      break;
    case 21:
      result = 0x6873755064726163;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0x656C636974726170;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD788BA4(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1BE051F54();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FC4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  v22 = *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_19:
    a2 = sub_1BD1D761C(0, (a2[2] + 1), 1, a2);
    *(v5 + v4) = a2;
    goto LABEL_4;
  }

  v73 = v19;
  v74 = v18;
  v75 = v9;
  *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex) = v24;
  v72 = v24;
  sub_1BD7882DC(v24, 1);
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v4 = OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions;
  swift_beginAccess();
  a2 = *(v5 + v4);
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v4) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  v27 = a2[2];
  v26 = a2[3];
  if (v27 >= v26 >> 1)
  {
    a2 = sub_1BD1D761C((v26 > 1), (v27 + 1), 1, a2);
  }

  a2[2] = v27 + 1;
  v28 = &a2[2 * v27];
  v28[4] = sub_1BD789540;
  v28[5] = v9;
  *(v5 + v4) = a2;
  swift_endAccess();
LABEL_7:
  v29 = *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state);
  *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state) = a1;
  if (a1 < 2u)
  {
    v30 = 0;
    v31 = 1;
    if (v29 >= 2 && a1 <= 1u)
    {
      v32 = MEMORY[0x1E69E6370];
      v83 = MEMORY[0x1E69E6370];
      LOBYTE(aBlock) = 1;
      sub_1BD787F88(4, &aBlock);
      sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v83 = v32;
      LOBYTE(aBlock) = 1;
      sub_1BD787F88(5, &aBlock);
      sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      v83 = v32;
      LOBYTE(aBlock) = 1;
      sub_1BD787F88(6, &aBlock);
      sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v71 = sub_1BE052D54();
      sub_1BE051FB4();
      sub_1BE051FF4();
      v73 = *(v73 + 8);
      v33 = v16;
      v34 = v74;
      (v73)(v33, v74);
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      v37 = v72;
      *(v36 + 16) = v35;
      *(v36 + 24) = v37;
      *(v36 + 32) = 0;
      v84 = sub_1BD789530;
      v85 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_1BD126964;
      v83 = &block_descriptor_14_3;
      v38 = _Block_copy(&aBlock);
      v85, v39, v40, v41, v42, v43, v44, v45;
      sub_1BE051F74();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      v46 = v75;
      v47 = v76;
      sub_1BE053664();
      v48 = v71;
      MEMORY[0x1BFB3FD90](v21, v13, v47, v38);
      _Block_release(v38);

      (*(v79 + 8))(v47, v46);
      (*(v77 + 8))(v13, v78);
      return (v73)(v21, v34);
    }
  }

  else if (a1 - 2 >= 2)
  {
    v50 = *(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage);
    if (v50)
    {
      v51 = [v50 CGImage];
      if (v51)
      {
        v52 = v51;
        [*(v5 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_clientTexture) setCGImage_];
      }
    }

    v31 = 0;
    v30 = 1;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v53 = MEMORY[0x1E69E6370];
  v83 = MEMORY[0x1E69E6370];
  LOBYTE(aBlock) = a1 > 1u;
  sub_1BD787F88(4, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v83 = v53;
  LOBYTE(aBlock) = v31;
  sub_1BD787F88(6, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v83 = v53;
  LOBYTE(aBlock) = v30;
  sub_1BD787F88(5, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v54 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v73 = *(v73 + 8);
  v55 = v16;
  v56 = v74;
  (v73)(v55, v74);
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  v59 = v72;
  v58[2] = v57;
  v58[3] = v59;
  v84 = sub_1BD789514;
  v85 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1BD126964;
  v83 = &block_descriptor_175;
  v60 = _Block_copy(&aBlock);
  v85, v61, v62, v63, v64, v65, v66, v67;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v68 = v75;
  v69 = v76;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v21, v13, v69, v60);
  _Block_release(v60);

  (*(v79 + 8))(v69, v68);
  (*(v77 + 8))(v13, v78);
  return (v73)(v21, v56);
}

unint64_t sub_1BD789414(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void sub_1BD789460()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_state) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionIndex) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_transitionCompletions) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_rotation);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_previousSize);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderCardView_finalImage) = 0;
  sub_1BE053994();
  __break(1u);
}

unint64_t sub_1BD789570()
{
  result = qword_1EBD528A0;
  if (!qword_1EBD528A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD528A0);
  }

  return result;
}

unint64_t sub_1BD7895C8()
{
  result = qword_1EBD528A8;
  if (!qword_1EBD528A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD528A8);
  }

  return result;
}

uint64_t sub_1BD789654()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB690);
  __swift_project_value_buffer(v6, qword_1EBDAB690);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD78986C()
{
  v0 = sub_1BE048EA4();
  __swift_allocate_value_buffer(v0, qword_1EBDAB6A8);
  v1 = __swift_project_value_buffer(v0, qword_1EBDAB6A8);
  v2 = *MEMORY[0x1E695A588];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1BD7898F4(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1BE04CFC4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  sub_1BE0528A4();
  v2[27] = sub_1BE052894();
  v6 = sub_1BE052844();
  v2[28] = v6;
  v2[29] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD789A50, v6, v5);
}

uint64_t sub_1BD789A50(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:DeletePassIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = *(v1 + 200);
  v6 = *(v1 + 208);
  v9 = *(v1 + 184);
  v8 = *(v1 + 192);
  v11 = *(v1 + 168);
  v10 = *(v1 + 176);
  v12 = *(v1 + 160);

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v13 = sub_1BE04D014();
  *(v1 + 240) = v13;
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  sub_1BE048874();
  v14 = *(v1 + 32);
  sub_1BD030458(v1 + 16);
  v15 = [v14 secureElementPass];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 isUserDeletable];

    if ((v17 & 1) == 0)
    {
      *(v1 + 216), v18, v19, v20, v21, v22, v23, v24;
      sub_1BE0484F4();
      sub_1BD78DFD0(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
      swift_allocError();
      sub_1BE0484C4();
      swift_willThrow();
      sub_1BD78A010(v13);
      v13, v25, v26, v27, v28, v29, v30, v31;

      v32 = *(v1 + 8);

      return v32();
    }
  }

  else
  {
  }

  sub_1BE048874();
  v34 = *(v1 + 96);
  *(v1 + 248) = v34;
  v35 = v34;
  sub_1BD030458(v1 + 80);
  v36 = swift_task_alloc();
  *(v1 + 256) = v36;
  *v36 = v1;
  v36[1] = sub_1BD789D8C;
  v37 = *(v1 + 144);
  v38 = *(v1 + 152);

  return sub_1BD78A2FC(v37, v35, v38);
}

uint64_t sub_1BD789D8C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1BD789F70;
  }

  else
  {
    v5 = sub_1BD789EC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD789EC8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 240);
  v10 = *(v8 + 248);
  *(v8 + 216), a2, a3, a4, a5, a6, a7, a8;

  sub_1BD78A010(v9);
  v9, v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD789F70(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 240);
  v9 = *(v8 + 248);
  *(v8 + 216), a2, a3, a4, a5, a6, a7, a8;

  sub_1BD78A010(v10);
  v10, v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD78A010(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:DeletePassIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD78A2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[66] = a3;
  v3[65] = a2;
  v3[64] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  v3[67] = swift_task_alloc();
  v4 = sub_1BE04A884();
  v3[68] = v4;
  v3[69] = *(v4 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v3[72] = v5;
  v3[73] = *(v5 - 8);
  v3[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v3[75] = swift_task_alloc();
  v6 = sub_1BE0523B4();
  v3[76] = v6;
  v3[77] = *(v6 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v7 = sub_1BE048C44();
  v3[82] = v7;
  v3[83] = *(v7 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v8 = sub_1BE048C54();
  v3[87] = v8;
  v3[88] = *(v8 - 8);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v9 = sub_1BE048654();
  v3[92] = v9;
  v3[93] = *(v9 - 8);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD78A66C, 0, 0);
}

uint64_t sub_1BD78A66C()
{
  v1 = [*(v0 + 520) paymentPass];
  *(v0 + 768) = v1;
  if (v1)
  {
    if ([v1 isPeerPaymentPass])
    {
      *(v0 + 496) = *(v0 + 528);
      sub_1BE048634();
      *(v0 + 504) = MEMORY[0x1E69E7CC0];
      sub_1BD78DFD0(&qword_1EBD528F0, MEMORY[0x1E695A448], MEMORY[0x1E695A450]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8, &qword_1BE109E20);
      sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8, &qword_1BE109E20, MEMORY[0x1E69E6328]);
      sub_1BE053664();
      sub_1BE048C34();
      v2 = swift_task_alloc();
      *(v0 + 776) = v2;
      v3 = sub_1BD15D050();
      *v2 = v0;
      v2[1] = sub_1BD78AC44;
      v4 = *(v0 + 760);
      v5 = *(v0 + 728);
      v6 = *(v0 + 688);
    }

    else
    {
      v9 = *(v0 + 648);
      v10 = *(v0 + 640);
      v11 = *(v0 + 616);
      v12 = *(v0 + 608);
      *(v0 + 480) = *(v0 + 528);
      sub_1BE0523A4();
      sub_1BE052394();
      sub_1BE048874();
      v13 = *(v0 + 352);
      *(v0 + 400) = *(v0 + 336);
      *(v0 + 416) = v13;
      v14 = *(v0 + 384);
      *(v0 + 432) = *(v0 + 368);
      *(v0 + 448) = v14;
      sub_1BD03071C();
      sub_1BE052384();
      v15 = *(v0 + 416);
      *(v0 + 272) = *(v0 + 400);
      *(v0 + 288) = v15;
      v16 = *(v0 + 448);
      *(v0 + 304) = *(v0 + 432);
      *(v0 + 320) = v16;
      sub_1BD030458(v0 + 272);
      sub_1BE052394();
      (*(v11 + 32))(v10, v9, v12);
      sub_1BE048644();
      *(v0 + 488) = MEMORY[0x1E69E7CC0];
      sub_1BD78DFD0(&qword_1EBD528F0, MEMORY[0x1E695A448], MEMORY[0x1E695A450]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8, &qword_1BE109E20);
      sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8, &qword_1BE109E20, MEMORY[0x1E69E6328]);
      sub_1BE053664();
      sub_1BE048C34();
      v17 = swift_task_alloc();
      *(v0 + 800) = v17;
      v3 = sub_1BD15D050();
      *v17 = v0;
      v17[1] = sub_1BD78B238;
      v4 = *(v0 + 752);
      v5 = *(v0 + 720);
      v6 = *(v0 + 680);
    }

    return MEMORY[0x1EEDB2D60](v5, v6, v4, &type metadata for DeletePassIntent, v3);
  }

  else if ([*(v0 + 520) passType])
  {
    sub_1BE048774();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    sub_1BE048874();
    v18 = swift_task_alloc();
    *(v0 + 848) = v18;
    *v18 = v0;
    v18[1] = sub_1BD78BD8C;

    return sub_1BD5441D4(v0 + 16);
  }
}

uint64_t sub_1BD78AC44()
{
  v2 = *v1;
  v2[98] = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[93];
    v5 = v2[92];
    v6 = v2[91];
    v7 = v2[88];
    v8 = v2[87];
    (*(v2[83] + 8))(v2[86], v2[82]);
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);

    return MEMORY[0x1EEE6DFA0](sub_1BD78CBA0, 0, 0);
  }

  else
  {
    v9 = v2[95];
    v10 = v2[93];
    v11 = v2[92];
    v12 = v2[91];
    v13 = v2[88];
    v14 = v2[87];
    (*(v2[83] + 8))(v2[86], v2[82]);
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    v15 = swift_task_alloc();
    v2[99] = v15;
    *v15 = v2;
    v15[1] = sub_1BD78AEAC;

    return sub_1BD0D7668();
  }
}

uint64_t sub_1BD78AEAC(char a1)
{
  *(*v1 + 932) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD78AFAC, 0, 0);
}

uint64_t sub_1BD78AFAC(uint64_t a1)
{
  v2 = *(v1 + 768);
  if (*(v1 + 932) == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BD78B238()
{
  v2 = *v1;
  v2[101] = v0;

  if (v0)
  {
    v3 = v2[94];
    v4 = v2[93];
    v5 = v2[92];
    v6 = v2[90];
    v7 = v2[88];
    v8 = v2[87];
    (*(v2[83] + 8))(v2[85], v2[82]);
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);

    return MEMORY[0x1EEE6DFA0](sub_1BD78CD04, 0, 0);
  }

  else
  {
    v9 = v2[94];
    v10 = v2[93];
    v11 = v2[92];
    v12 = v2[90];
    v13 = v2[88];
    v14 = v2[87];
    (*(v2[83] + 8))(v2[85], v2[82]);
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    v15 = swift_task_alloc();
    v2[102] = v15;
    *v15 = v2;
    v15[1] = sub_1BD78B4A0;

    return sub_1BD0D7278();
  }
}

uint64_t sub_1BD78B4A0(char a1)
{
  *(*v1 + 933) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD78B5A0, 0, 0);
}

uint64_t sub_1BD78B5A0()
{
  if (*(v0 + 933) == 1)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 coordinator];
    *(v0 + 824) = v2;

    if (v2)
    {
      v3 = *(v0 + 600);
      v4 = *(v0 + 520);
      v5 = sub_1BE0528D4();
      (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
      sub_1BE0528A4();
      v6 = v4;
      swift_unknownObjectRetain();
      v7 = sub_1BE052894();
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E85E0];
      v8[2] = v7;
      v8[3] = v9;
      v8[4] = v2;
      v8[5] = v6;
      v10 = sub_1BD123214(0, 0, v3, &unk_1BE0F6528, v8);
      *(v0 + 832) = v10;
      v11 = swift_task_alloc();
      *(v0 + 840) = v11;
      *v11 = v0;
      v11[1] = sub_1BD78B9E0;
      v12 = MEMORY[0x1E69E6370];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];

      return MEMORY[0x1EEE6DA20](v0 + 930, v10, v12, v13, v14);
    }

    sub_1BE04D074();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "DeletePassIntent: PKAppIntentCoordinator was nil", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v15 = *(v0 + 768);
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v22 = *(v0 + 576);

    (*(v21 + 8))(v20, v22);
    sub_1BE0484F4();
    sub_1BD78DFD0(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
  }

  else
  {
    v15 = *(v0 + 768);
    sub_1BD135218();
    swift_allocError();
    *v16 = 1;
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1BD78B9E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD78BADC, 0, 0);
}

uint64_t sub_1BD78BADC(uint64_t a1)
{
  v2 = *(v1 + 832);
  v3 = *(v1 + 768);
  if (*(v1 + 931))
  {
    sub_1BD135218();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    sub_1BE048774();
  }

  v2, v5, v6, v7, v8, v9, v10, v11;
  swift_unknownObjectRelease();

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_1BD78BD8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 856) = a1;
  *(v3 + 864) = a2;

  sub_1BD030458(v3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1BD78BE98, 0, 0);
}

uint64_t sub_1BD78BE98()
{
  v25 = *(v0 + 856);
  v26 = *(v0 + 864);
  v1 = *(v0 + 744);
  v2 = *(v0 + 632);
  v3 = *(v0 + 616);
  v23 = *(v0 + 608);
  v24 = *(v0 + 736);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v21 = *(v0 + 536);
  v22 = *(v0 + 624);
  v8 = *(v0 + 528);
  *(v0 + 464) = v8;
  sub_1BE04A864();
  sub_1BE04A864();
  sub_1BE048C24();
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  sub_1BE0523A4();
  sub_1BE052394();
  sub_1BE048874();
  v10 = *(v0 + 160);
  *(v0 + 208) = *(v0 + 144);
  *(v0 + 224) = v10;
  v11 = *(v0 + 192);
  *(v0 + 240) = *(v0 + 176);
  *(v0 + 256) = v11;
  sub_1BD03071C();
  sub_1BE052384();
  v12 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v12;
  v13 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v13;
  sub_1BD030458(v0 + 80);
  sub_1BE052394();
  (*(v3 + 32))(v22, v2, v23);
  sub_1BE048644();
  (*(v1 + 56))(v21, 0, 1, v24);
  v14 = swift_task_alloc();
  *(v0 + 872) = v14;
  v14[2] = v25;
  v14[3] = v26;
  v14[4] = v8;
  *(v0 + 472) = MEMORY[0x1E69E7CC0];
  sub_1BD78DFD0(&qword_1EBD528F0, MEMORY[0x1E695A448], MEMORY[0x1E695A450]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD528F8, &qword_1BE109E20);
  sub_1BD0DE4F4(&qword_1EBD52900, &qword_1EBD528F8, &qword_1BE109E20, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v15 = swift_task_alloc();
  *(v0 + 880) = v15;
  v16 = type metadata accessor for PassEntitySnippetView(0);
  sub_1BD15D050();
  sub_1BD78DFD0(&qword_1EBD52908, type metadata accessor for PassEntitySnippetView, &unk_1BE0CC088);
  *v15 = v0;
  v15[1] = sub_1BD78C25C;
  v17 = *(v0 + 712);
  v18 = *(v0 + 672);
  v19 = *(v0 + 536);

  return MEMORY[0x1EEDE8838](v17, v18, v19, 1, sub_1BD78DFC4, v14, &type metadata for DeletePassIntent, v16);
}

uint64_t sub_1BD78C25C()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  v3 = v2[89];
  v4 = v2[88];
  v5 = v2[87];
  if (v0)
  {
    v6 = v2[84];
    v7 = v2[83];
    v8 = v2[82];
    v9 = v2[67];
    (*(v4 + 8))(v3, v5);
    sub_1BD78E018(v9);
    (*(v7 + 8))(v6, v8);
    v10 = sub_1BD78CE68;
  }

  else
  {
    v11 = v2[84];
    v12 = v2[83];
    v13 = v2[82];
    v14 = v2[67];
    (*(v4 + 8))(v3, v5);
    sub_1BD78E018(v14);
    (*(v12 + 8))(v11, v13);

    v10 = sub_1BD78C424;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1BD78C424()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8A60]) init];
  v0[112] = v1;
  if (v1)
  {
    v2 = v0[75];
    v3 = v0[65];
    [v1 removePass_];
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 coordinator];
    v0[113] = v5;

    v6 = sub_1BE0528D4();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_1BE0528A4();
    v7 = v3;
    swift_unknownObjectRetain();
    v8 = sub_1BE052894();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v5;
    v9[5] = v7;
    v11 = sub_1BD122F00(0, 0, v2, &unk_1BE0F6510, v9);
    v0[114] = v11;
    v12 = swift_task_alloc();
    v0[115] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
    *v12 = v0;
    v12[1] = sub_1BD78C7D4;
    v14 = MEMORY[0x1E69E73E0];
    v15 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v0 + 116, v11, v13, v14, v15);
  }

  else
  {
    v16 = v0[108];
    v17 = v0[107];
    sub_1BE0484F4();
    sub_1BD78DFD0(&qword_1EBD56120, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD030220(v17, v16, v18, v19, v20, v21, v22, v23);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1BD78C7D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD78C8D0, 0, 0);
}

uint64_t sub_1BD78C8D0(uint64_t a1)
{
  v2 = *(v1 + 912);
  v3 = *(v1 + 896);
  v4 = *(v1 + 864);
  v5 = *(v1 + 856);
  if (*(v1 + 929))
  {
    sub_1BD135218();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  else
  {
    sub_1BE048774();
  }

  v2, v7, v8, v9, v10, v11, v12, v13;
  swift_unknownObjectRelease();

  sub_1BD030220(v5, v4, v14, v15, v16, v17, v18, v19);

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_1BD78CBA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD78CD04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD78CE68(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD030220(*(v8 + 856), *(v8 + 864), a3, a4, a5, a6, a7, a8);

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD78CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_1BE0528A4();
  v5[21] = sub_1BE052894();
  v7 = sub_1BE052844();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD78D078, v7, v6);
}

uint64_t sub_1BD78D078()
{
  v1 = [*(v0 + 160) uniqueID];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 200;
    *(v0 + 24) = sub_1BD78D1C4;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980, &unk_1BE0ED700);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD68F38C;
    *(v0 + 104) = &block_descriptor_176;
    *(v0 + 112) = v4;
    [v3 presentDeletePassWithUniqueID:v2 completion:v0 + 80];
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD78D1C4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BD78D2CC, v2, v1);
}

uint64_t sub_1BD78D2CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 192);
  v10 = *(v8 + 144);
  *(v8 + 168), a2, a3, a4, a5, a6, a7, a8;
  *v10 = *(v8 + 200);

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD78D340@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v19 = a2;
  v5 = sub_1BE048C04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1BE048874();
  sub_1BD0415D4(v11);
  sub_1BD030458(v21);
  v12 = type metadata accessor for PassEntitySnippetView(0);
  sub_1BE048BC4();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v14 = *(v12 + 24);
  v15 = sub_1BE04A884();
  (*(*(v15 - 8) + 56))(&a3[v14], 1, 1, v15);
  sub_1BE048874();
  sub_1BD0415D4(v8);
  sub_1BD030458(v20);
  sub_1BE048BF4();
  v13(v8, v5);
  v16 = v19;
  *a3 = a1;
  *(a3 + 1) = v16;
  return sub_1BD030394(a1, v16);
}

uint64_t sub_1BD78D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1BE0528A4();
  v5[5] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD78D5B4, v7, v6);
}

uint64_t sub_1BD78D5B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    [*(v8 + 24) handleDeletePassRequestWithPass_];
  }

  **(v8 + 16) = v9 == 0;
  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1BD78D6AC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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

uint64_t sub_1BD78D754(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52988, &qword_1BE0F6538);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52990, &qword_1BE0F6540);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52998, &unk_1BE0F6570);
  sub_1BE048CC4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD78D8E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD7898F4(a1, v4);
}

uint64_t sub_1BD78D988@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BD78DA0C();
  *a2 = result;
  return result;
}

uint64_t sub_1BD78D9C0(uint64_t a1)
{
  v2 = sub_1BD15D050();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD78DA0C()
{
  v30 = sub_1BE048D74();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = v24 - v6;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A874();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v24[0] = sub_1BE04A884();
  v13 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_1EBDAB400);
  v18 = *(v9 + 16);
  v18(v11, v17, v8);
  sub_1BE04B0A4();
  v24[1] = v16;
  sub_1BE04A894();
  sub_1BE052354();
  v18(v11, v17, v8);
  sub_1BE04B0A4();
  v19 = v25;
  sub_1BE04A894();
  (*(v13 + 56))(v19, 0, 1, v24[0]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  sub_1BE052354();
  v18(v11, v17, v8);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v20 = v26;
  sub_1BE048664();
  v21 = sub_1BE048654();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  v22(v27, 1, 1, v21);
  (*(v28 + 104))(v29, *MEMORY[0x1E695A500], v30);
  sub_1BD0304AC();
  return sub_1BE0488C4();
}

uint64_t sub_1BD78DFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD78E018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD78E080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD78D518(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_88()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD78E188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD78CFDC(a1, v4, v5, v7, v6);
}

double sub_1BD78E248()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD78E2BC()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t AccountObservableBalance.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__balance;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BE0, &unk_1BE0F6580);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__currencyCode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AccountObservableBalance.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__balance;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BE0, &unk_1BE0F6580);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI24AccountObservableBalance__currencyCode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD78E4DC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountObservableBalance(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AccountObservableBalance(uint64_t a1)
{
  result = qword_1EBD529B0;
  if (!qword_1EBD529B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD78E570(uint64_t a1)
{
  sub_1BD540F14(319, &unk_1EBD529C0, MEMORY[0x1E69E63B0]);
  if (v1 <= 0x3F)
  {
    sub_1BD540F14(319, &unk_1EBD49E00, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD78E674(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v20[1];
  *a2 = v20[0];
  a2[1] = v19;
}

uint64_t sub_1BD78E6F4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD78E7A0(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD78E86C()
{
  v0 = sub_1BE04A704();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(v9);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  sub_1BD0DE19C(v9, v6, &unk_1EBD52A20, &unk_1BE0F66E0);
  v26 = 0;
  if ((*(v1 + 48))(v6, 1, v0) != 1)
  {
    (*(v1 + 32))(v3, v6, v0);
    v27 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    [v27 setStyle_];
    v28 = sub_1BE04A6B4();
    v29 = [v27 stringFromPersonNameComponents_];

    v26 = sub_1BE052434();
    (*(v1 + 8))(v3, v0);
  }

  sub_1BD0DE53C(v9, &unk_1EBD52A20, &unk_1BE0F66E0);
  return v26;
}

uint64_t sub_1BD78EB10()
{
  v1 = sub_1BE04A704();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) == 1)
  {
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();
    sub_1BE04D8B4(v7);
    KeyPath, v20, v21, v22, v23, v24, v25, v26;
    v19, v27, v28, v29, v30, v31, v32, v33;
    sub_1BD36A448(v7, v16);
    v34 = *(v2 + 48);
    if (v34(v16, 1, v1) == 1)
    {
      v35 = v16;
LABEL_6:
      sub_1BD0DE53C(v35, &unk_1EBD52A20, &unk_1BE0F66E0);
      return 0;
    }

    sub_1BE04A6C4();
    v36 = *(v2 + 8);
    v36(v16, v1);
    sub_1BD0DE19C(v13, v10, &unk_1EBD52A20, &unk_1BE0F66E0);
    if (v34(v10, 1, v1) == 1)
    {
      v35 = v13;
      goto LABEL_6;
    }

    (*(v2 + 32))(v4, v10, v1);
    v37 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    [v37 setStyle_];
    v38 = v36;
    v39 = sub_1BE04A6B4();
    v40 = [v37 stringFromPersonNameComponents_];

    v41 = sub_1BE052434();
    v38(v4, v1);
    sub_1BD0DE53C(v13, &unk_1EBD52A20, &unk_1BE0F66E0);
    return v41;
  }

  return result;
}

uint64_t sub_1BD78EE98(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v347 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v347 - v12;
  v347 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v347);
  v15 = (&v347 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v348 = &v347 - v17;
  v349 = v1;
  v18 = (v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context);
  v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context);
  v20 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 8);
  v21 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 16);
  v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 24);
  v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 32);
  v24 = *(v1 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 40);
  *v18 = v2;
  v18[1] = v3;
  v18[2] = v5;
  v18[3] = v4;
  v18[4] = v7;
  v18[5] = v6;
  sub_1BD40FB5C(v19, v20, v21, v22, v23, v24);
  v351 = v4;
  v352 = v3;
  v25 = v2;
  v26 = v7;
  sub_1BE048964();
  sub_1BD0DE19C(&v352, &v350, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v351, &v350, &qword_1EBD40150, &qword_1BE0C12A0);
  v27 = [v26 shippingName];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 nameComponents];

    if (v29)
    {
      sub_1BE04A6E4();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v32 = v348;
    v33 = sub_1BE04A704();
    (*(*(v33 - 8) + 56))(v10, v30, 1, v33);
    sub_1BD36A448(v10, v13);
  }

  else
  {
    v31 = sub_1BE04A704();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
    v32 = v348;
  }

  sub_1BD36A448(v13, v32);
  *(v32 + *(v347 + 20)) = 1;
  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  sub_1BE04D8B4(v15);
  KeyPath, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  LOBYTE(KeyPath) = sub_1BD790138(v15, v32);
  sub_1BD791D58(v15, type metadata accessor for PersonNameComponentsData);
  if ((KeyPath & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD7904FC(v32, v15);
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  sub_1BE04D8B4(&v350);
  v50, v52, v53, v54, v55, v56, v57, v58;
  v51, v59, v60, v61, v62, v63, v64, v65;
  v66 = v350;
  if (v351 && (objc_opt_self(), (v67 = swift_dynamicCastObjCClass()) != 0))
  {
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1BE0B69E0;
    v70 = *MEMORY[0x1E69BB7C0];
    *(v69 + 32) = *MEMORY[0x1E69BB7C0];
    sub_1BD0DE19C(&v351, &v350, &qword_1EBD40150, &qword_1BE0C12A0);
    type metadata accessor for PKContactField(0);
    v71 = v70;
    v72 = sub_1BE052724();
    v69, v73, v74, v75, v76, v77, v78, v79;
    v80 = [v68 clientErrors];
    if (v80)
    {
      v81 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v82 = sub_1BE052744();

      v83 = sub_1BD3F00D4(v82);
      v82, v84, v85, v86, v87, v88, v89, v90;
    }

    else
    {
      v83 = MEMORY[0x1E69E7CC0];
    }

    v92 = objc_opt_self();
    v100 = sub_1BD3F01E8(v83, v93, v94, v95, v96, v97, v98, v99);
    v83, v101, v102, v103, v104, v105, v106, v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v108 = sub_1BE052724();
    v100, v109, v110, v111, v112, v113, v114, v115;
    v116 = [v92 pk:v72 FilteredShippingErrorsForContactFields:v108 errors:?];

    v117 = sub_1BE052744();
    v91 = sub_1BD3F00D4(v117);
    v117, v118, v119, v120, v121, v122, v123, v124;
    sub_1BD0DE53C(&v351, &qword_1EBD40150, &qword_1BE0C12A0);
  }

  else
  {
    v91 = MEMORY[0x1E69E7CC0];
  }

  v125 = sub_1BD3FE590(v66, v91);
  v66, v126, v127, v128, v129, v130, v131, v132;
  v91, v133, v134, v135, v136, v137, v138, v139;
  if ((v125 & 1) == 0)
  {
    if (v351 && (objc_opt_self(), (v140 = swift_dynamicCastObjCClass()) != 0))
    {
      v141 = v140;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1BE0B69E0;
      v143 = *MEMORY[0x1E69BB7C0];
      *(v142 + 32) = *MEMORY[0x1E69BB7C0];
      sub_1BD0DE19C(&v351, &v350, &qword_1EBD40150, &qword_1BE0C12A0);
      type metadata accessor for PKContactField(0);
      v144 = v143;
      v145 = sub_1BE052724();
      v142, v146, v147, v148, v149, v150, v151, v152;
      v153 = [v141 clientErrors];
      if (v153)
      {
        v154 = v153;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v155 = sub_1BE052744();

        v156 = sub_1BD3F00D4(v155);
        v155, v157, v158, v159, v160, v161, v162, v163;
      }

      else
      {
        v156 = MEMORY[0x1E69E7CC0];
      }

      v165 = objc_opt_self();
      v173 = sub_1BD3F01E8(v156, v166, v167, v168, v169, v170, v171, v172);
      v156, v174, v175, v176, v177, v178, v179, v180;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v181 = sub_1BE052724();
      v173, v182, v183, v184, v185, v186, v187, v188;
      v189 = [v165 pk:v145 FilteredShippingErrorsForContactFields:v181 errors:?];

      v190 = sub_1BE052744();
      v164 = sub_1BD3F00D4(v190);
      v190, v191, v192, v193, v194, v195, v196, v197;
      sub_1BD0DE53C(&v351, &qword_1EBD40150, &qword_1BE0C12A0);
    }

    else
    {
      v164 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v350 = v164;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v198 = swift_getKeyPath();
  v199 = swift_getKeyPath();
  sub_1BE04D8B4(&v350);
  v198, v200, v201, v202, v203, v204, v205, v206;
  v199, v207, v208, v209, v210, v211, v212, v213;
  v214 = v350;
  if (v351 && (objc_opt_self(), (v215 = swift_dynamicCastObjCClass()) != 0))
  {
    v216 = v215;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
    v217 = swift_allocObject();
    *(v217 + 16) = xmmword_1BE0B69E0;
    v218 = *MEMORY[0x1E69BB7D0];
    *(v217 + 32) = *MEMORY[0x1E69BB7D0];
    sub_1BD0DE19C(&v351, &v350, &qword_1EBD40150, &qword_1BE0C12A0);
    type metadata accessor for PKContactField(0);
    v219 = v218;
    v220 = sub_1BE052724();
    v217, v221, v222, v223, v224, v225, v226, v227;
    v228 = [v216 clientErrors];
    if (v228)
    {
      v229 = v228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v230 = sub_1BE052744();

      v231 = sub_1BD3F00D4(v230);
      v230, v232, v233, v234, v235, v236, v237, v238;
    }

    else
    {
      v231 = MEMORY[0x1E69E7CC0];
    }

    v240 = objc_opt_self();
    v248 = sub_1BD3F01E8(v231, v241, v242, v243, v244, v245, v246, v247);
    v231, v249, v250, v251, v252, v253, v254, v255;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v256 = sub_1BE052724();
    v248, v257, v258, v259, v260, v261, v262, v263;
    v264 = [v240 pk:v220 FilteredShippingErrorsForContactFields:v256 errors:?];

    v265 = sub_1BE052744();
    v239 = sub_1BD3F00D4(v265);
    v265, v266, v267, v268, v269, v270, v271, v272;
    sub_1BD0DE53C(&v351, &qword_1EBD40150, &qword_1BE0C12A0);
  }

  else
  {
    v239 = MEMORY[0x1E69E7CC0];
  }

  v273 = sub_1BD3FE590(v214, v239);
  v214, v274, v275, v276, v277, v278, v279, v280;
  v239, v281, v282, v283, v284, v285, v286, v287;
  if ((v273 & 1) == 0)
  {
    if (v351 && (objc_opt_self(), (v288 = swift_dynamicCastObjCClass()) != 0))
    {
      v289 = v288;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v290 = swift_allocObject();
      *(v290 + 16) = xmmword_1BE0B69E0;
      v291 = *MEMORY[0x1E69BB7D0];
      *(v290 + 32) = *MEMORY[0x1E69BB7D0];
      sub_1BD0DE19C(&v351, &v350, &qword_1EBD40150, &qword_1BE0C12A0);
      type metadata accessor for PKContactField(0);
      v292 = v291;
      v293 = sub_1BE052724();
      v290, v294, v295, v296, v297, v298, v299, v300;
      v301 = [v289 clientErrors];
      if (v301)
      {
        v302 = v301;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v303 = sub_1BE052744();

        v304 = sub_1BD3F00D4(v303);
        v303, v305, v306, v307, v308, v309, v310, v311;
      }

      else
      {
        v304 = MEMORY[0x1E69E7CC0];
      }

      v313 = objc_opt_self();
      v321 = sub_1BD3F01E8(v304, v314, v315, v316, v317, v318, v319, v320);
      v304, v322, v323, v324, v325, v326, v327, v328;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v329 = sub_1BE052724();
      v321, v330, v331, v332, v333, v334, v335, v336;
      v337 = [v313 pk:v293 FilteredShippingErrorsForContactFields:v329 errors:?];

      v338 = sub_1BE052744();
      v312 = sub_1BD3F00D4(v338);
      v338, v339, v340, v341, v342, v343, v344, v345;
      sub_1BD0DE53C(&v351, &qword_1EBD40150, &qword_1BE0C12A0);
    }

    else
    {
      v312 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v350 = v312;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  return sub_1BD791D58(v32, type metadata accessor for PersonNameComponentsData);
}

void sub_1BD78FAE8()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  v2 = [v0 nameOrderForContact_];

  qword_1EBDAB6C0 = v2;
}

uint64_t sub_1BD78FB54()
{
  v1 = OBJC_IVAR____TtC9PassKitUI10PersonName__internalComponentsData;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A50, &qword_1BE0F6778);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI10PersonName__nameErrors;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD527E8, &unk_1BE0F5FE0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName__phoneticNameErrors, v4);
  sub_1BD40FB5C(*(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 32), *(v0 + OBJC_IVAR____TtC9PassKitUI10PersonName_context + 40));

  return swift_deallocClassInstance();
}

void sub_1BD78FCDC(uint64_t a1)
{
  sub_1BD78FF48(319, &qword_1EBD52A18, type metadata accessor for PersonNameComponentsData, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1BD78FE18(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD78FE18(uint64_t a1)
{
  if (!qword_1EBD52750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD459D8, &qword_1BE0F5B50);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD52750);
    }
  }
}

void sub_1BD78FEA4(uint64_t a1)
{
  sub_1BD78FF48(319, &qword_1EBD36A50, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD78FF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD78FFAC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD790028(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD7904FC(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD7904FC(v8, v5);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD791D58(v8, type metadata accessor for PersonNameComponentsData);
}

uint64_t sub_1BD790138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04A704();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A40, &qword_1BE0F6770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v55 - v12, &unk_1EBD52A20, &unk_1BE0F66E0);
  sub_1BD0DE19C(a2, &v13[v15], &unk_1EBD52A20, &unk_1BE0F66E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &unk_1EBD52A20, &unk_1BE0F66E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD7904A4();
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &unk_1EBD52A20, &unk_1BE0F66E0);
      if (v18)
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1BD0DE53C(v13, &unk_1EBD52A40, &qword_1BE0F6770);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(v13, &unk_1EBD52A20, &unk_1BE0F66E0);
LABEL_9:
  v20 = *(type metadata accessor for PersonNameComponentsData(0) + 20);
  v21 = *(a2 + v20);
  v22 = sub_1BD6B04D8(*(a1 + v20));
  v24 = v23;
  v26 = sub_1BD6B04D8(v21);
  v32 = v25;
  if (v22 == v26 && v24 == v25)
  {
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32, v33, v34, v35, v36, v37, v38, v39;
    v17 = 1;
  }

  else
  {
    v17 = sub_1BE053B84();
    v24, v40, v41, v42, v43, v44, v45, v46;
    v32, v47, v48, v49, v50, v51, v52, v53;
  }

  return v17 & 1;
}

unint64_t sub_1BD7904A4()
{
  result = qword_1EBD42E60;
  if (!qword_1EBD42E60)
  {
    sub_1BE04A704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E60);
  }

  return result;
}

uint64_t sub_1BD7904FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonNameComponentsData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BD790560(void **a1, int a2)
{
  v5 = *a1;
  v182 = a1[1];
  v183 = v5;
  v6 = a1[2];
  v180 = a1[3];
  v181 = v6;
  v7 = a1[4];
  v179 = a1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v174 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v173 - v11;
  v12 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v173 - v16;
  v18 = v2 + OBJC_IVAR____TtC9PassKitUI10PersonName_context;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  v19 = OBJC_IVAR____TtC9PassKitUI10PersonName_defaults;
  *(v2 + v19) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (result)
  {
    v21 = OBJC_IVAR____TtC9PassKitUI10PersonName_recents;
    *(v2 + OBJC_IVAR____TtC9PassKitUI10PersonName_recents) = result;
    v22 = [v7 shippingName];
    v178 = a2;
    v176 = v17;
    v177 = v12;
    v175 = v14;
    if (v22)
    {

      v24 = v179;
      v23 = v180;
      v25 = v180;
      v27 = v182;
      v26 = v183;
      v28 = v182;
      v29 = v183;
    }

    else
    {
      v173 = [*(v2 + v21) meCard];
      v30 = [*(v2 + v19) defaultContactName];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
        v33 = v30;
      }

      else
      {
        v34 = [*(v2 + v19) defaultShippingAddress];
        if (v34)
        {
          v32 = v34;
          v33 = v32;
        }

        else
        {
          v33 = 0;
          v32 = v173;
          v31 = v173;
        }
      }

      v35 = v31;
      [v7 setShippingName_];

      v29 = *a1;
      v28 = a1[1];
      v25 = a1[3];
      v27 = v182;
      v26 = v183;
      v24 = v179;
      v23 = v180;
    }

    v187 = v25;
    v188 = v28;
    v36 = *v18;
    v37 = *(v18 + 8);
    v38 = *(v18 + 16);
    v39 = *(v18 + 24);
    v40 = *(v18 + 32);
    v41 = *(v18 + 40);
    *v18 = v26;
    *(v18 + 8) = v27;
    *(v18 + 16) = v181;
    *(v18 + 24) = v23;
    *(v18 + 32) = v7;
    *(v18 + 40) = v24;
    v42 = v29;
    v43 = v7;
    sub_1BE048964();
    sub_1BD0DE19C(&v188, v186, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v187, v186, &qword_1EBD40150, &qword_1BE0C12A0);
    sub_1BD40FB5C(v36, v37, v38, v39, v40, v41);
    v44 = [v43 shippingName];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 nameComponents];

      v47 = v178;
      v49 = v176;
      v48 = v177;
      v50 = v175;
      if (v46)
      {
        v51 = v174;
        sub_1BE04A6E4();

        v52 = 0;
        v53 = v2;
      }

      else
      {
        v52 = 1;
        v53 = v2;
        v51 = v174;
      }

      v56 = sub_1BE04A704();
      (*(*(v56 - 8) + 56))(v51, v52, 1, v56);
      v55 = v184;
      sub_1BD36A448(v51, v184);
    }

    else
    {
      v54 = sub_1BE04A704();
      v55 = v184;
      (*(*(v54 - 8) + 56))(v184, 1, 1, v54);
      v53 = v2;
      v47 = v178;
      v49 = v176;
      v48 = v177;
      v50 = v175;
    }

    sub_1BD36A448(v55, v49);
    *(v49 + *(v48 + 20)) = 1;
    swift_beginAccess();
    sub_1BD7904FC(v49, v50);
    sub_1BE04D874();
    sub_1BD791D58(v49, type metadata accessor for PersonNameComponentsData);
    swift_endAccess();
    *(v53 + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) = v47 & 1;
    if (v187 && (objc_opt_self(), (v57 = swift_dynamicCastObjCClass()) != 0))
    {
      v58 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1BE0B69E0;
      v60 = *MEMORY[0x1E69BB7C0];
      *(v59 + 32) = *MEMORY[0x1E69BB7C0];
      sub_1BD0DE19C(&v187, v186, &qword_1EBD40150, &qword_1BE0C12A0);
      type metadata accessor for PKContactField(0);
      v61 = v60;
      v62 = sub_1BE052724();
      v59, v63, v64, v65, v66, v67, v68, v69;
      v70 = [v58 clientErrors];
      if (v70)
      {
        v71 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v72 = sub_1BE052744();

        v73 = sub_1BD3F00D4(v72);
        v72, v74, v75, v76, v77, v78, v79, v80;
      }

      else
      {
        v73 = MEMORY[0x1E69E7CC0];
      }

      v82 = objc_opt_self();
      v90 = sub_1BD3F01E8(v73, v83, v84, v85, v86, v87, v88, v89);
      v73, v91, v92, v93, v94, v95, v96, v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v98 = sub_1BE052724();
      v90, v99, v100, v101, v102, v103, v104, v105;
      v106 = [v82 pk:v62 FilteredShippingErrorsForContactFields:v98 errors:?];

      v107 = sub_1BE052744();
      v81 = sub_1BD3F00D4(v107);
      v107, v108, v109, v110, v111, v112, v113, v114;
      sub_1BD0DE53C(&v187, &qword_1EBD40150, &qword_1BE0C12A0);
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v185 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8, &qword_1BE0F5B50);
    sub_1BE04D874();
    swift_endAccess();
    if (v187 && (objc_opt_self(), (v115 = swift_dynamicCastObjCClass()) != 0))
    {
      v116 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1BE0B69E0;
      v118 = *MEMORY[0x1E69BB7D0];
      *(v117 + 32) = *MEMORY[0x1E69BB7D0];
      sub_1BD0DE19C(&v187, v186, &qword_1EBD40150, &qword_1BE0C12A0);
      type metadata accessor for PKContactField(0);
      v119 = v118;
      v120 = sub_1BE052724();
      v117, v121, v122, v123, v124, v125, v126, v127;
      v128 = [v116 clientErrors];
      if (v128)
      {
        v129 = v128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v130 = sub_1BE052744();

        v131 = sub_1BD3F00D4(v130);
        v130, v132, v133, v134, v135, v136, v137, v138;
      }

      else
      {
        v131 = MEMORY[0x1E69E7CC0];
      }

      v140 = objc_opt_self();
      v148 = sub_1BD3F01E8(v131, v141, v142, v143, v144, v145, v146, v147);
      v131, v149, v150, v151, v152, v153, v154, v155;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v156 = sub_1BE052724();
      v148, v157, v158, v159, v160, v161, v162, v163;
      v164 = [v140 pk:v120 FilteredShippingErrorsForContactFields:v156 errors:?];

      v165 = sub_1BE052744();
      v139 = sub_1BD3F00D4(v165);
      v165, v166, v167, v168, v169, v170, v171, v172;
      sub_1BD0DE53C(&v187, &qword_1EBD40150, &qword_1BE0C12A0);
    }

    else
    {
      v139 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v185 = v139;
    sub_1BE04D874();
    swift_endAccess();
    return v53;
  }

  else
  {
    __break(1u);
  }

  return result;
}