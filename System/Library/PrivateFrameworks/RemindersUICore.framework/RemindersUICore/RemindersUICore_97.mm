uint64_t TTRReminderCellTextReplacement.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21DBFBEEC();

  v3 = sub_21DBFB9BC();
  MEMORY[0x223D42AA0](v3);

  MEMORY[0x223D42AA0](0x203A68746977202CLL, 0xE800000000000000);
  MEMORY[0x223D42AA0](v1, v2);
  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  return 0x6563616C7065727BLL;
}

uint64_t TTRReminderCellTextHighlights.HighlightType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderCellTextHighlights.Highlight.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t static TTRReminderCellTextHighlights.Highlight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TTRReminderCellTextHighlights.Highlight.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x223D44FA0](*v0);
  MEMORY[0x223D44FA0](v1);
  return MEMORY[0x223D44FA0](v2);
}

uint64_t TTRReminderCellTextHighlights.Highlight.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D9F7BF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D9F7C5C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x223D44FA0](*v0);
  MEMORY[0x223D44FA0](v1);
  return MEMORY[0x223D44FA0](v2);
}

uint64_t sub_21D9F7CA4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v2);
  MEMORY[0x223D44FA0](v3);
  MEMORY[0x223D44FA0](v4);
  return sub_21DBFC82C();
}

uint64_t sub_21D9F7D0C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TTRReminderCellTextHighlights.expectedCurrentText.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRReminderCellTextHighlights.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321F28(v2, v3);
}

uint64_t sub_21D9F7DEC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321F28(v2, v3);
}

id TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.paragraphStyleWithOrderInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_21D749C9C(v2, v3, v4);
}

id TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.remParagraphStyle.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    return 0;
  }

  v2 = *v0;
  sub_21D749C9C(*v0, *(v0 + 8), v1);
  return v2;
}

uint64_t TTRReminderCellHashtagTextUpdate.expectedCurrentText.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D9F7F20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      v4 = sub_21D3220EC(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t TTRReminderCellInlineHashtagVisibility.description.getter()
{
  if (*v0)
  {
    if (*(*v0 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B3E0, "tY\n");
      sub_21D0D0F1C(&qword_27CE5B3E8, &qword_27CE5B3E0, "tY\n", MEMORY[0x277D83B68]);
      sub_21D176F0C();
      v1 = sub_21DBFA5AC();
      v3 = v2;
      sub_21DBFBEEC();

      strcpy(v6, "hideSpecific(");
      HIWORD(v6[1]) = -4864;
      MEMORY[0x223D42AA0](v1, v3);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      return v6[0];
    }

    v5 = 2003789939;
  }

  else
  {
    v5 = 1701079400;
  }

  return v5 | 0x6C6C4100000000;
}

void sub_21D9F80F0(void *a1, uint64_t a2, char a3)
{
  v6 = [a1 string];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = MEMORY[0x223D42B30](v7, v9);

  v11 = *(a2 + 16);
  if (!v11)
  {
    return;
  }

  v12 = (a2 + 48);
  v13 = *MEMORY[0x277D740E8];
  v14 = &selRef_setQueryFragment_;
  while (1)
  {
    v16 = *(v12 - 1);
    v17 = v16 + *v12;
    if (__OFADD__(v16, *v12))
    {
      break;
    }

    v18 = *(v12 - 2);
    if (v17 >= v10)
    {
      v19 = v10;
    }

    else
    {
      v19 = v16 + *v12;
    }

    if (v16 < 0 || v16 >= v10)
    {
      if (v16 > 0 || v17 <= 0)
      {
        goto LABEL_5;
      }

      v16 = 0;
      if (a3)
      {
LABEL_20:
        v22 = qword_280D177B8;
        swift_unknownObjectRetain();
        if (v22 != -1)
        {
          swift_once();
        }

        v14 = &selRef_setQueryFragment_;
        [a1 removeAttribute:qword_280D177C0 range:{v16, v19}];
        goto LABEL_4;
      }
    }

    else
    {
      v20 = __OFSUB__(v19, v16);
      v19 -= v16;
      if (v20)
      {
        goto LABEL_25;
      }

      if (a3)
      {
        goto LABEL_20;
      }
    }

    swift_unknownObjectRetain();
LABEL_4:
    [a1 v14[109]];
    v15 = [objc_opt_self() attributeFromHashtag_];
    [a1 rem:v15 addHashtag:v16 range:v19];
    swift_unknownObjectRelease();

    v14 = &selRef_setQueryFragment_;
LABEL_5:
    v12 += 3;
    if (!--v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_21D9F82C4(void *a1, uint64_t a2)
{
  v4 = [a1 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  v9 = *(a2 + 16);
  if (!v9)
  {
    return;
  }

  v10 = (a2 + 64);
  v11 = &selRef_setDisplayText_;
  v23 = *MEMORY[0x277D44C88];
  while (1)
  {
    v13 = *(v10 - 1);
    v14 = v13 + *v10;
    if (__OFADD__(v13, *v10))
    {
      break;
    }

    v15 = *(v10 - 4);
    v16 = *(v10 - 3);
    v17 = *(v10 - 16);
    if (v14 >= v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = v13 + *v10;
    }

    if (v13 < 0 || v13 >= v8)
    {
      if (v13 > 0 || v14 <= 0)
      {
        goto LABEL_5;
      }

      v13 = 0;
    }

    else
    {
      v19 = __OFSUB__(v18, v13);
      v18 -= v13;
      if (v19)
      {
        goto LABEL_27;
      }
    }

    v21 = *(v10 - 4);
    v22 = *(v10 - 3);
    if (!*(v10 - 16))
    {
      sub_21D749C9C(v21, v22, 0);
      [a1 rem:objc_msgSend(v15 addParagraphNamedStyle:v11[270]) inRange:{v13, v18}];
      goto LABEL_24;
    }

    if (v17 != 1)
    {
      sub_21D749C9C(v21, v22, 2u);
      [a1 rem:v13 removeParagraphNamedStyleFromRange:v18];
LABEL_24:
      [a1 removeAttribute:v23 range:{v13, v18}];
      goto LABEL_4;
    }

    sub_21D749C9C(v21, v22, 1u);
    [a1 rem:objc_msgSend(v15 addParagraphNamedStyle:v11[270]) inRange:{v13, v18}];
    v12 = sub_21DBFABEC();
    [a1 addAttribute:v23 value:v12 range:{v13, v18}];

    v11 = &selRef_setDisplayText_;
LABEL_4:
    sub_21D228468(v15, v16, v17);
LABEL_5:
    v10 += 5;
    if (!--v9)
    {
      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_21D9F84C8(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_21DBFBD7C())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21D183A0C();
    sub_21DBFAB5C();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);
    sub_21DBF8E0C();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_21D0CFAF8(a1);
      return;
    }

    while (1)
    {
      v17 = sub_21D1AABD8(v16);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_21DBFBDBC())
      {
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_21D9F86E8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_21DBF8E0C();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_21DBF8E0C();
        sub_21D1AAFC8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_21D9F8814(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    sub_21DBF8E0C();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_21D9FE6EC(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D1AB104(v9, v5);
      sub_21D9FE624(v9, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D0CF7E0(v5, &qword_27CE5A018, &unk_21DC0DCB0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_21D9F8A0C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_21DBF8E0C();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_21D1ABB04(v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_21D9F8B24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;
    sub_21DBF8E0C();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_21D1ABD98(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_21D0CF7E0(v5, &qword_27CE5EA20, &qword_21DC0D4A0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D9F8D40(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);
  v13 = sub_21DBF8E0C();
  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21DBFC7DC();
    sub_21DBF8E0C();
    sub_21DBFA27C();
    v23 = sub_21DBFC82C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21DBFC64C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_21D7C0054(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_21DBFC7DC();
            sub_21DBF8E0C();
            sub_21DBFA27C();
            v41 = sub_21DBFC82C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_21DBFC64C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_21D9FBDE4(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x223D46520](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_21D0CFAF8(v13);
    return v5;
  }

  result = MEMORY[0x223D46520](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21D9F92B0(unint64_t a1, uint64_t a2)
{
  v274 = *MEMORY[0x277D85DE8];
  v252 = sub_21DBF563C();
  v267 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v5 = &v223 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v245 = &v223 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B38, &qword_21DC29730);
  MEMORY[0x28223BE20](v8);
  v227 = &v223 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v223 - v11;
  v13 = type metadata accessor for TTRRecurrenceEndModel(0);
  v264 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v231 = (&v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v230 = &v223 - v16;
  MEMORY[0x28223BE20](v17);
  v233 = &v223 - v18;
  MEMORY[0x28223BE20](v19);
  v253 = (&v223 - v20);
  MEMORY[0x28223BE20](v21);
  v251 = &v223 - v22;
  MEMORY[0x28223BE20](v23);
  v259 = &v223 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v25 - 8);
  v232 = &v223 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v255 = &v223 - v28;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B40, &unk_21DC29738);
  MEMORY[0x28223BE20](v262);
  v30 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v223 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v34 - 8);
  v226 = &v223 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v223 - v37;
  v39 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v234 = &v223 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v223 - v43;
  MEMORY[0x28223BE20](v45);
  v265 = &v223 - v49;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v240 = v38;
  v257 = v12;
  v229 = v47;
  v258 = v46;
  v228 = v30;
  v261 = v13;
  v225 = v5;
  v51 = a1 + 56;
  v50 = *(a1 + 56);
  v52 = -1 << *(a1 + 32);
  v243 = ~v52;
  if (-v52 < 64)
  {
    v53 = ~(-1 << -v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = (v53 & v50);
  v235 = (63 - v52) >> 6;
  v242 = (v48 + 56);
  v246 = v48;
  v241 = (v48 + 48);
  v256 = a2;
  v266 = (a2 + 56);
  v55 = (v264 + 48);
  v244 = (v267 + 32);
  v250 = (v267 + 8);
  sub_21DBF8E0C();
  v254 = v8;
  v56 = v55;
  v57 = a1;
  v58 = 0;
  v224 = 0;
  v260 = v55;
  v239 = v57;
  for (i = v51; ; v51 = i)
  {
    v267 = v54;
    if (v54)
    {
      v59 = v54;
      v60 = v58;
LABEL_16:
      v64 = (v59 - 1) & v59;
      v65 = v240;
      sub_21D9FE6EC(*(v57 + 48) + *(v246 + 72) * (__clz(__rbit64(v59)) | (v60 << 6)), v240, type metadata accessor for TTRRecurrenceRuleModel);
      v66 = 0;
      v62 = v60;
    }

    else
    {
      if (v235 <= v58 + 1)
      {
        v61 = v58 + 1;
      }

      else
      {
        v61 = v235;
      }

      v62 = v61 - 1;
      v63 = v58;
      while (1)
      {
        v60 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_123;
        }

        if (v60 >= v235)
        {
          break;
        }

        v59 = *(v51 + 8 * v60);
        ++v63;
        if (v59)
        {
          goto LABEL_16;
        }
      }

      v64 = 0;
      v66 = 1;
      v65 = v240;
    }

    v67 = v258;
    v237 = *v242;
    v237(v65, v66, 1, v258);
    v269 = v57;
    v270 = v51;
    v271 = v243;
    v272 = v62;
    v273 = v64;
    v236 = *v241;
    if (v236(v65, 1, v67) == 1)
    {
      sub_21D0CF7E0(v65, &qword_27CE5A018, &unk_21DC0DCB0);
      sub_21D0CFAF8(v57);
      return v256;
    }

    v247 = v64;
    v248 = v62;
    v62 = v265;
    sub_21D9FE684(v65, v265, type metadata accessor for TTRRecurrenceRuleModel);
    v58 = v256;
    sub_21DBFC7DC();
    TTRRecurrenceRuleModel.hash(into:)(&v268);
    v68 = sub_21DBFC82C();
    v69 = -1 << *(v58 + 32);
    v57 = v68 & ~v69;
    v30 = v57 >> 6;
    v60 = 1 << v57;
    if (((1 << v57) & v266[v57 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_21D9FE624(v62, type metadata accessor for TTRRecurrenceRuleModel);
    v58 = v248;
    v54 = v247;
    v57 = v239;
  }

  v263 = ~v69;
  v264 = *(v246 + 72);
  v70 = v255;
  while (1)
  {
    sub_21D9FE6EC(*(v58 + 48) + v264 * v57, v44, type metadata accessor for TTRRecurrenceRuleModel);
    v71 = *(v262 + 48);
    sub_21D3139B4(v44, v33);
    sub_21D3139B4(v62, &v33[v71]);
    v72 = v261;
    v267 = *v56;
    if ((v267)(v33, 1, v261) == 1)
    {
      v73 = (v267)(&v33[v71], 1, v72);
      v62 = v265;
      if (v73 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_21D3139B4(v33, v70);
      if ((v267)(&v33[v71], 1, v72) == 1)
      {
        sub_21D9FE624(v70, type metadata accessor for TTRRecurrenceEndModel);
        v56 = v260;
        v62 = v265;
LABEL_21:
        sub_21D0CF7E0(v33, &qword_27CE61B40, &unk_21DC29738);
        goto LABEL_22;
      }

      v83 = v70;
      v84 = v259;
      sub_21D9FE684(&v33[v71], v259, type metadata accessor for TTRRecurrenceEndModel);
      v85 = *(v254 + 48);
      v86 = v83;
      v87 = v257;
      sub_21D9FE6EC(v86, v257, type metadata accessor for TTRRecurrenceEndModel);
      v88 = v87;
      sub_21D9FE6EC(v84, v87 + v85, type metadata accessor for TTRRecurrenceEndModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D9FE6EC(v87, v253, type metadata accessor for TTRRecurrenceEndModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v56 = v260;
        v70 = v255;
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_47;
        }

        v90 = v88;
        v91 = *v253;
        v92 = *(v90 + v85);
        sub_21D9FE624(v90, type metadata accessor for TTRRecurrenceEndModel);
        v62 = v265;
        if (v91 != v92)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v93 = v251;
        sub_21D9FE6EC(v87, v251, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v250)(v93, v252);
          v56 = v260;
          v70 = v255;
LABEL_47:
          sub_21D0CF7E0(v88, &qword_27CE61B38, &qword_21DC29730);
          v62 = v265;
LABEL_48:
          sub_21D9FE624(v259, type metadata accessor for TTRRecurrenceEndModel);
          sub_21D9FE624(v70, type metadata accessor for TTRRecurrenceEndModel);
          sub_21D0CF7E0(v33, &unk_27CE62610, &unk_21DC0DF00);
          v58 = v256;
          goto LABEL_22;
        }

        v94 = v245;
        v95 = v252;
        (*v244)(v245, v88 + v85, v252);
        v249 = sub_21DBF55EC();
        v96 = *v250;
        (*v250)(v94, v95);
        v96(v93, v95);
        sub_21D9FE624(v257, type metadata accessor for TTRRecurrenceEndModel);
        v56 = v260;
        v70 = v255;
        v62 = v265;
        if ((v249 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      sub_21D9FE624(v259, type metadata accessor for TTRRecurrenceEndModel);
      sub_21D9FE624(v70, type metadata accessor for TTRRecurrenceEndModel);
      v58 = v256;
    }

    sub_21D0CF7E0(v33, &unk_27CE62610, &unk_21DC0DF00);
    if (*&v44[v258[5]] != *(v62 + v258[5]) || *&v44[v258[6]] != *(v62 + v258[6]) || *&v44[v258[7]] != *(v62 + v258[7]))
    {
      goto LABEL_22;
    }

    v75 = v258[8];
    v76 = *&v44[v75];
    v77 = *(v62 + v75);
    if (!v76)
    {
      if (v77)
      {
        goto LABEL_22;
      }

      goto LABEL_52;
    }

    if (!v77)
    {
      goto LABEL_22;
    }

    v78 = v76[1].i64[0];
    if (v78 != v77[1].i64[0])
    {
      goto LABEL_22;
    }

    v79 = !v78 || v76 == v77;
    if (!v79)
    {
      break;
    }

LABEL_52:
    v97 = v258[9];
    v98 = *&v44[v97];
    v99 = *(v62 + v97);
    if (v98)
    {
      if (!v99)
      {
        goto LABEL_22;
      }

      v100 = *(v98 + 16);
      if (v100 != *(v99 + 16))
      {
        goto LABEL_22;
      }

      if (v100)
      {
        v101 = v98 == v99;
      }

      else
      {
        v101 = 1;
      }

      if (!v101)
      {
        v102 = (v98 + 32);
        v103 = (v99 + 32);
        while (v100)
        {
          if (*v102 != *v103)
          {
            goto LABEL_22;
          }

          ++v102;
          ++v103;
          if (!--v100)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
        goto LABEL_250;
      }
    }

    else if (v99)
    {
      goto LABEL_22;
    }

LABEL_65:
    v104 = v258[10];
    v105 = *&v44[v104];
    v106 = *(v62 + v104);
    if (v105)
    {
      if (!v106)
      {
        goto LABEL_22;
      }

      v107 = *(v105 + 16);
      if (v107 != *(v106 + 16))
      {
        goto LABEL_22;
      }

      if (v107)
      {
        v108 = v105 == v106;
      }

      else
      {
        v108 = 1;
      }

      if (!v108)
      {
        v109 = (v105 + 32);
        v110 = (v106 + 32);
        while (v107)
        {
          if (*v109 != *v110)
          {
            goto LABEL_22;
          }

          ++v109;
          ++v110;
          if (!--v107)
          {
            goto LABEL_78;
          }
        }

LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }
    }

    else if (v106)
    {
      goto LABEL_22;
    }

LABEL_78:
    v111 = v258[11];
    v112 = *&v44[v111];
    v113 = *(v62 + v111);
    if (v112)
    {
      if (!v113)
      {
        goto LABEL_22;
      }

      v114 = *(v112 + 16);
      if (v114 != *(v113 + 16))
      {
        goto LABEL_22;
      }

      if (v114)
      {
        v115 = v112 == v113;
      }

      else
      {
        v115 = 1;
      }

      if (!v115)
      {
        v116 = (v112 + 32);
        v117 = (v113 + 32);
        while (v114)
        {
          if (*v116 != *v117)
          {
            goto LABEL_22;
          }

          ++v116;
          ++v117;
          if (!--v114)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_252;
      }
    }

    else if (v113)
    {
      goto LABEL_22;
    }

LABEL_91:
    v118 = v258[12];
    v119 = *&v44[v118];
    v120 = *(v62 + v118);
    if (v119)
    {
      if (!v120)
      {
        goto LABEL_22;
      }

      v121 = *(v119 + 16);
      if (v121 != *(v120 + 16))
      {
        goto LABEL_22;
      }

      if (v121)
      {
        v122 = v119 == v120;
      }

      else
      {
        v122 = 1;
      }

      if (!v122)
      {
        v123 = (v119 + 32);
        v124 = (v120 + 32);
        while (v121)
        {
          if (*v123 != *v124)
          {
            goto LABEL_22;
          }

          ++v123;
          ++v124;
          if (!--v121)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_253;
      }
    }

    else if (v120)
    {
      goto LABEL_22;
    }

LABEL_104:
    v125 = v258[13];
    v126 = *&v44[v125];
    v127 = *(v62 + v125);
    if (v126)
    {
      if (v127)
      {
        v128 = *(v126 + 16);
        if (v128 == *(v127 + 16))
        {
          if (v128)
          {
            v129 = v126 == v127;
          }

          else
          {
            v129 = 1;
          }

          if (v129)
          {
            goto LABEL_124;
          }

          v130 = (v126 + 32);
          v131 = (v127 + 32);
          while (v128)
          {
            if (*v130 != *v131)
            {
              goto LABEL_22;
            }

            ++v130;
            ++v131;
            if (!--v128)
            {
              goto LABEL_124;
            }
          }

LABEL_254:
          __break(1u);
          goto LABEL_255;
        }
      }
    }

    else if (!v127)
    {
      goto LABEL_124;
    }

LABEL_22:
    sub_21D9FE624(v44, type metadata accessor for TTRRecurrenceRuleModel);
    v57 = (v57 + 1) & v263;
    v30 = v57 >> 6;
    v60 = 1 << v57;
    if (((1 << v57) & v266[v57 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v80 = v76 + 2;
  v81 = v77 + 2;
  while (v78)
  {
    v82 = vmovn_s64(vceqq_s64(*v80, *v81));
    if ((v82.i32[0] & v82.i32[1] & 1) == 0)
    {
      goto LABEL_22;
    }

    ++v80;
    ++v81;
    if (!--v78)
    {
      goto LABEL_52;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  sub_21D9FE624(v44, type metadata accessor for TTRRecurrenceRuleModel);
  v134 = sub_21D9FE624(v62, type metadata accessor for TTRRecurrenceRuleModel);
  v135 = *(v58 + 32);
  v257 = ((1 << v135) + 63) >> 6;
  v74 = 8 * v257;
  if ((v135 & 0x3Fu) > 0xD)
  {
    goto LABEL_258;
  }

  while (2)
  {
    v255 = &v223;
    MEMORY[0x28223BE20](v134);
    v137 = &v223 - ((v136 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v137, v266, v136);
    v138 = *&v137[8 * v30] & ~v60;
    v263 = v137;
    *&v137[8 * v30] = v138;
    v259 = *(v58 + 16) - 1;
    v139 = v227;
    while (1)
    {
LABEL_127:
      v140 = v239;
      v57 = v226;
      v141 = i;
      v142 = v235;
      v143 = v248;
      v144 = v247;
LABEL_128:
      if (v144)
      {
        v145 = v143;
LABEL_138:
        v148 = __clz(__rbit64(v144));
        v149 = (v144 - 1) & v144;
        sub_21D9FE6EC(*(v140 + 48) + (v148 | (v145 << 6)) * v264, v57, type metadata accessor for TTRRecurrenceRuleModel);
        v150 = 0;
      }

      else
      {
        v146 = v142 <= v143 + 1 ? v143 + 1 : v142;
        v147 = v146 - 1;
        while (1)
        {
          v145 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            goto LABEL_251;
          }

          if (v145 >= v142)
          {
            break;
          }

          v144 = *(v141 + 8 * v145);
          ++v143;
          if (v144)
          {
            v143 = v145;
            goto LABEL_138;
          }
        }

        v149 = 0;
        v150 = 1;
        v143 = v147;
      }

      v151 = v258;
      v237(v57, v150, 1, v258);
      v269 = v140;
      v270 = v141;
      v271 = v243;
      v272 = v143;
      v273 = v149;
      if (v236(v57, 1, v151) == 1)
      {
        sub_21D0CF7E0(v57, &qword_27CE5A018, &unk_21DC0DCB0);
        v132 = sub_21D7C0278(v263, v257, v259, v58);
        goto LABEL_248;
      }

      v247 = v149;
      v248 = v143;
      v60 = v234;
      sub_21D9FE684(v57, v234, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21DBFC7DC();
      TTRRecurrenceRuleModel.hash(into:)(&v268);
      v152 = sub_21DBFC82C();
      v153 = -1 << *(v58 + 32);
      v140 = v152 & ~v153;
      v30 = v140 >> 6;
      v154 = 1 << v140;
      if (((1 << v140) & v266[v140 >> 6]) != 0)
      {
        break;
      }

LABEL_126:
      sub_21D9FE624(v60, type metadata accessor for TTRRecurrenceRuleModel);
      v58 = v256;
    }

    v265 = ~v153;
    v57 = v232;
    v155 = v228;
    v156 = v229;
    while (2)
    {
      sub_21D9FE6EC(*(v256 + 48) + v140 * v264, v156, type metadata accessor for TTRRecurrenceRuleModel);
      v160 = *(v262 + 48);
      sub_21D3139B4(v156, v155);
      sub_21D3139B4(v60, v155 + v160);
      v161 = v261;
      v162 = v260;
      if ((v267)(v155, 1, v261) != 1)
      {
        sub_21D3139B4(v155, v57);
        if ((v267)(v155 + v160, 1, v161) == 1)
        {
          sub_21D9FE624(v57, type metadata accessor for TTRRecurrenceEndModel);
          v60 = v234;
LABEL_143:
          v157 = v155;
          v158 = &qword_27CE61B40;
          v159 = &unk_21DC29738;
LABEL_144:
          sub_21D0CF7E0(v157, v158, v159);
          goto LABEL_145;
        }

        v172 = v155 + v160;
        v173 = v233;
        sub_21D9FE684(v172, v233, type metadata accessor for TTRRecurrenceEndModel);
        v174 = *(v254 + 48);
        v162 = v139;
        sub_21D9FE6EC(v57, v139, type metadata accessor for TTRRecurrenceEndModel);
        sub_21D9FE6EC(v173, v139 + v174, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21D9FE6EC(v139, v231, type metadata accessor for TTRRecurrenceEndModel);
          v175 = swift_getEnumCaseMultiPayload();
          v155 = v228;
          v156 = v229;
          v60 = v234;
          if (v175 == 1)
          {
            v176 = *v231;
            v177 = *(v139 + v174);
            sub_21D9FE624(v139, type metadata accessor for TTRRecurrenceEndModel);
            if (v176 == v177)
            {
              goto LABEL_173;
            }

            goto LABEL_171;
          }
        }

        else
        {
          v178 = v230;
          sub_21D9FE6EC(v139, v230, type metadata accessor for TTRRecurrenceEndModel);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v179 = v225;
            v180 = v252;
            (*v244)(v225, v139 + v174, v252);
            v181 = v178;
            v182 = sub_21DBF55EC();
            v183 = *v250;
            v184 = v179;
            v162 = v227;
            (*v250)(v184, v180);
            v183(v181, v180);
            v139 = v162;
            sub_21D9FE624(v162, type metadata accessor for TTRRecurrenceEndModel);
            v155 = v228;
            v156 = v229;
            v60 = v234;
            if (v182)
            {
LABEL_173:
              sub_21D9FE624(v233, type metadata accessor for TTRRecurrenceEndModel);
              v57 = v232;
              sub_21D9FE624(v232, type metadata accessor for TTRRecurrenceEndModel);
              goto LABEL_148;
            }

LABEL_171:
            sub_21D9FE624(v233, type metadata accessor for TTRRecurrenceEndModel);
            v57 = v232;
            sub_21D9FE624(v232, type metadata accessor for TTRRecurrenceEndModel);
            v157 = v155;
            v158 = &unk_27CE62610;
            v159 = &unk_21DC0DF00;
            goto LABEL_144;
          }

          (*v250)(v178, v252);
          v155 = v228;
          v156 = v229;
          v60 = v234;
        }

        sub_21D0CF7E0(v139, &qword_27CE61B38, &qword_21DC29730);
        goto LABEL_171;
      }

      v163 = (v267)(v155 + v160, 1, v161);
      v60 = v234;
      if (v163 != 1)
      {
        goto LABEL_143;
      }

LABEL_148:
      sub_21D0CF7E0(v155, &unk_27CE62610, &unk_21DC0DF00);
      if (*(v156 + v258[5]) != *(v60 + v258[5]) || *(v156 + v258[6]) != *(v60 + v258[6]) || *(v156 + v258[7]) != *(v60 + v258[7]))
      {
        goto LABEL_145;
      }

      v164 = v258[8];
      v165 = *(v156 + v164);
      v166 = *(v60 + v164);
      if (!v165)
      {
        if (v166)
        {
          goto LABEL_145;
        }

LABEL_175:
        v185 = v258[9];
        v186 = *(v156 + v185);
        v187 = *(v60 + v185);
        if (v186)
        {
          if (!v187)
          {
            goto LABEL_145;
          }

          v188 = *(v186 + 16);
          if (v188 != *(v187 + 16))
          {
            goto LABEL_145;
          }

          if (v188)
          {
            v189 = v186 == v187;
          }

          else
          {
            v189 = 1;
          }

          if (!v189)
          {
            v190 = (v186 + 32);
            v191 = (v187 + 32);
            while (v188)
            {
              if (*v190 != *v191)
              {
                goto LABEL_145;
              }

              ++v190;
              ++v191;
              if (!--v188)
              {
                goto LABEL_188;
              }
            }

            goto LABEL_256;
          }
        }

        else if (v187)
        {
          goto LABEL_145;
        }

LABEL_188:
        v192 = v258[10];
        v193 = *(v156 + v192);
        v194 = *(v60 + v192);
        if (v193)
        {
          if (!v194)
          {
            goto LABEL_145;
          }

          v195 = *(v193 + 16);
          if (v195 != *(v194 + 16))
          {
            goto LABEL_145;
          }

          if (v195)
          {
            v196 = v193 == v194;
          }

          else
          {
            v196 = 1;
          }

          if (!v196)
          {
            v197 = (v193 + 32);
            v198 = (v194 + 32);
            while (v195)
            {
              if (*v197 != *v198)
              {
                goto LABEL_145;
              }

              ++v197;
              ++v198;
              if (!--v195)
              {
                goto LABEL_201;
              }
            }

            goto LABEL_257;
          }
        }

        else if (v194)
        {
          goto LABEL_145;
        }

LABEL_201:
        v199 = v258[11];
        v200 = *(v156 + v199);
        v201 = *(v60 + v199);
        if (v200)
        {
          if (!v201)
          {
            goto LABEL_145;
          }

          v202 = *(v200 + 16);
          if (v202 != *(v201 + 16))
          {
            goto LABEL_145;
          }

          if (v202)
          {
            v203 = v200 == v201;
          }

          else
          {
            v203 = 1;
          }

          if (!v203)
          {
            v204 = (v200 + 32);
            v205 = (v201 + 32);
            while (v202)
            {
              if (*v204 != *v205)
              {
                goto LABEL_145;
              }

              ++v204;
              ++v205;
              if (!--v202)
              {
                goto LABEL_214;
              }
            }

            __break(1u);
            goto LABEL_261;
          }
        }

        else if (v201)
        {
          goto LABEL_145;
        }

LABEL_214:
        v206 = v258[12];
        v207 = *(v156 + v206);
        v208 = *(v60 + v206);
        if (v207)
        {
          if (!v208)
          {
            goto LABEL_145;
          }

          v209 = *(v207 + 16);
          if (v209 != *(v208 + 16))
          {
            goto LABEL_145;
          }

          if (v209)
          {
            v210 = v207 == v208;
          }

          else
          {
            v210 = 1;
          }

          if (!v210)
          {
            v211 = (v207 + 32);
            v212 = (v208 + 32);
            while (v209)
            {
              if (*v211 != *v212)
              {
                goto LABEL_145;
              }

              ++v211;
              ++v212;
              if (!--v209)
              {
                goto LABEL_227;
              }
            }

            __break(1u);
            goto LABEL_264;
          }
        }

        else if (v208)
        {
          goto LABEL_145;
        }

LABEL_227:
        v213 = v258[13];
        v214 = *(v156 + v213);
        v215 = *(v60 + v213);
        if (v214)
        {
          if (v215)
          {
            v216 = *(v214 + 16);
            if (v216 == *(v215 + 16))
            {
              if (v216)
              {
                v217 = v214 == v215;
              }

              else
              {
                v217 = 1;
              }

              if (!v217)
              {
                v218 = (v214 + 32);
                v219 = (v215 + 32);
                v139 = v227;
                v57 = v232;
                v155 = v228;
                v156 = v229;
                v60 = v234;
                while (v216)
                {
                  if (*v218 != *v219)
                  {
                    goto LABEL_145;
                  }

                  ++v218;
                  ++v219;
                  if (!--v216)
                  {
                    goto LABEL_243;
                  }
                }

LABEL_264:
                __break(1u);
                goto LABEL_265;
              }

              v139 = v227;
              v156 = v229;
              v60 = v234;
LABEL_243:
              sub_21D9FE624(v156, type metadata accessor for TTRRecurrenceRuleModel);
              sub_21D9FE624(v60, type metadata accessor for TTRRecurrenceRuleModel);
              v220 = *(v263 + 8 * v30);
              *(v263 + 8 * v30) = v220 & ~v154;
              v79 = (v220 & v154) == 0;
              v58 = v256;
              v140 = v239;
              v57 = v226;
              v141 = i;
              v142 = v235;
              v143 = v248;
              v144 = v247;
              if (v79)
              {
                goto LABEL_128;
              }

              if (__OFSUB__(v259--, 1))
              {
LABEL_265:
                __break(1u);
                goto LABEL_266;
              }

              v58 = v256;
              v139 = v227;
              if (v259)
              {
                goto LABEL_127;
              }

              v132 = MEMORY[0x277D84FA0];
LABEL_248:
              sub_21D0CFAF8(v269);
              return v132;
            }
          }
        }

        else if (!v215)
        {
          goto LABEL_243;
        }

LABEL_145:
        sub_21D9FE624(v156, type metadata accessor for TTRRecurrenceRuleModel);
        v140 = (v140 + 1) & v265;
        v30 = v140 >> 6;
        v154 = 1 << v140;
        if (((1 << v140) & v266[v140 >> 6]) == 0)
        {
          goto LABEL_126;
        }

        continue;
      }

      break;
    }

    if (!v166)
    {
      goto LABEL_145;
    }

    v167 = v165[1].i64[0];
    if (v167 != v166[1].i64[0])
    {
      goto LABEL_145;
    }

    if (v167)
    {
      v168 = v165 == v166;
    }

    else
    {
      v168 = 1;
    }

    if (v168)
    {
      goto LABEL_175;
    }

    v169 = v165 + 2;
    v170 = v166 + 2;
    while (v167)
    {
      v171 = vmovn_s64(vceqq_s64(*v169, *v170));
      if ((v171.i32[0] & v171.i32[1] & 1) == 0)
      {
        goto LABEL_145;
      }

      ++v169;
      ++v170;
      if (!--v167)
      {
        goto LABEL_175;
      }
    }

LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    v222 = v74;

    v162 = v222;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v58 = v256;

      continue;
    }

    break;
  }

LABEL_261:
  v140 = swift_slowAlloc();
  memcpy(v140, v266, v162);
  v60 = v224;
  v132 = sub_21D9FC01C(v140, v257, v256, v57, &v269);

  if (!v60)
  {

    MEMORY[0x223D46520](v140, -1, -1);
    goto LABEL_248;
  }

LABEL_266:

  result = MEMORY[0x223D46520](v140, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21D9FAEE8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1 << *(a1 + 32);
    v48 = ~v8;
    v49 = a1;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    sub_21DBF8E0C();
    v50 = 0;
    while (1)
    {
      do
      {
        if (!v10)
        {
          v14 = v49;
          v15 = v50;
          while (1)
          {
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v16 >= v11)
            {
              goto LABEL_42;
            }

            v10 = *(v7 + 8 * v16);
            ++v15;
            if (v10)
            {
              v50 = v16;
              goto LABEL_13;
            }
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v14 = v49;
LABEL_13:
        v17 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v18 = *(*(v14 + 48) + ((v50 << 9) | (8 * v17)));
        sub_21DBFC7DC();
        MEMORY[0x223D44FA0](v18);
        v19 = sub_21DBFC82C();
        v20 = *(v5 + 32);
        v2 = v19 & ~(-1 << v20);
        v4 = v2 >> 6;
        v3 = 1 << v2;
      }

      while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
      v21 = *(v5 + 48);
      if (*(v21 + 8 * v2) == v18)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~(-1 << v20);
        v4 = v2 >> 6;
        v3 = 1 << v2;
        if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v18)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v22 = v20 & 0x3F;
    v53 = v48;
    v54 = v50;
    v55 = v10;
    v52[0] = v49;
    v52[1] = v7;
    v45 = ((1 << v22) + 63) >> 6;
    v13 = 8 * v45;
    if (v22 <= 0xD)
    {
      goto LABEL_18;
    }

LABEL_46:
    v41 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v5 + 56), v41);
      v43 = sub_21D9FCDBC(v42, v45, v5, v2, v52);

      MEMORY[0x223D46520](v42, -1, -1);
      v3 = v52[0];
      v48 = v53;
      v50 = v54;
      v5 = v43;
      goto LABEL_41;
    }

LABEL_18:
    v46 = &v44;
    MEMORY[0x28223BE20](v19);
    v24 = (&v44 - v23);
    memcpy(&v44 - v23, (v5 + 56), v25);
    v26 = *(v5 + 16);
    v24[v4] &= ~v3;
    v27 = v26 - 1;
    v3 = v49;
LABEL_19:
    v47 = v27;
    while (v10)
    {
LABEL_27:
      v31 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v4 = *(*(v3 + 48) + ((v50 << 9) | (8 * v31)));
      sub_21DBFC7DC();
      v2 = v51;
      MEMORY[0x223D44FA0](v4);
      v32 = sub_21DBFC82C();
      v33 = -1 << *(v5 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v12 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v5 + 48);
        if (*(v37 + 8 * v34) == v4)
        {
LABEL_20:
          v28 = v24[v35];
          v24[v35] = v28 & ~v36;
          if ((v28 & v36) != 0)
          {
            v27 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v5 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v12 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v4)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v29 = v50;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v30 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v30);
      ++v29;
      if (v10)
      {
        v50 = v30;
        goto LABEL_27;
      }
    }

    if (v11 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v11;
    }

    v50 = v39 - 1;
    v5 = sub_21D7C06E4(v24, v45, v47, v5);
LABEL_41:
    v14 = v3;
LABEL_42:
    sub_21D0CFAF8(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_21D9FB380(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_21DBF54CC();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);
  sub_21DBF8E0C();
  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_21D0CF7E0(v30, &qword_27CE5EA20, &qword_21DC0D4A0);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_21D9FE5DC(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v32 = sub_21DBF9FFC();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_21D9FE5DC(&qword_280D171D0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v36 = sub_21DBFA10C();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_21D0CF7E0(v24, &qword_27CE5EA20, &qword_21DC0D4A0);
        a2 = sub_21D7C0BBC(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_21DBF9FFC();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_21DBFA10C();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_21DBFA10C();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_21D9FCF94(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x223D46520](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_21D0CFAF8(v59);
  return a2;
}

void sub_21D9FBDE4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_21D7C0054(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21DBFC7DC();
        sub_21DBF8E0C();
        sub_21DBFA27C();
        v19 = sub_21DBFC82C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21DBFC64C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_21D9FC01C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v131 = a5;
  v122 = a2;
  v135 = sub_21DBF563C();
  v8 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v129 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B38, &qword_21DC29730);
  MEMORY[0x28223BE20](v139 - 8);
  v140 = &v121 - v10;
  v151 = type metadata accessor for TTRRecurrenceEndModel(0);
  v11 = *(v151 - 8);
  MEMORY[0x28223BE20](v151 - 8);
  v136 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v134 = &v121 - v14;
  MEMORY[0x28223BE20](v15);
  v142 = &v121 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v121 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B40, &unk_21DC29738);
  MEMORY[0x28223BE20](v20);
  v22 = &v121 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v23 - 8);
  v127 = &v121 - v24;
  v141 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v141);
  v146 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v149 = &v121 - v27;
  v28 = *(a3 + 16);
  v29 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v30 = *(a1 + v29) & ((-1 << a4) - 1);
  v124 = a1;
  *(a1 + v29) = v30;
  v31 = v19;
  v32 = v20;
  v123 = v28 - 1;
  v126 = (v33 + 56);
  v130 = v33;
  v125 = (v33 + 48);
  v147 = a3 + 56;
  v148 = a3;
  v143 = (v11 + 48);
  v128 = (v8 + 32);
  v133 = (v8 + 8);
  v138 = v20;
  v137 = v31;
  while (1)
  {
LABEL_3:
    v35 = *v131;
    v34 = v131[1];
    v37 = v131[2];
    v36 = v131[3];
    v38 = v131[4];
    v145 = v37;
    if (v38)
    {
      v39 = v36;
LABEL_12:
      v43 = (v38 - 1) & v38;
      v44 = v127;
      sub_21D9FE6EC(*(v35 + 48) + *(v130 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v127, type metadata accessor for TTRRecurrenceRuleModel);
      v45 = 0;
      v42 = v39;
    }

    else
    {
      v40 = (v37 + 64) >> 6;
      v41 = v40 <= v36 + 1 ? v36 + 1 : (v37 + 64) >> 6;
      v42 = v41 - 1;
      while (1)
      {
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
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
          return MEMORY[0x277D84FA0];
        }

        if (v39 >= v40)
        {
          break;
        }

        v38 = *(v34 + 8 * v39);
        ++v36;
        if (v38)
        {
          goto LABEL_12;
        }
      }

      v43 = 0;
      v45 = 1;
      v44 = v127;
    }

    v46 = v141;
    (*v126)(v44, v45, 1, v141);
    v47 = v131;
    *v131 = v35;
    v47[1] = v34;
    v47[2] = v145;
    v47[3] = v42;
    v47[4] = v43;
    if ((*v125)(v44, 1, v46) == 1)
    {
      sub_21D0CF7E0(v44, &qword_27CE5A018, &unk_21DC0DCB0);
      v120 = v148;

      return sub_21D7C0278(v124, v122, v123, v120);
    }

    sub_21D9FE684(v44, v149, type metadata accessor for TTRRecurrenceRuleModel);
    v48 = v148;
    sub_21DBFC7DC();
    TTRRecurrenceRuleModel.hash(into:)(v150);
    v49 = sub_21DBFC82C();
    v50 = -1 << *(v48 + 32);
    v51 = v49 & ~v50;
    v52 = v51 >> 6;
    v53 = 1 << v51;
    if (((1 << v51) & *(v147 + 8 * (v51 >> 6))) != 0)
    {
      break;
    }

LABEL_2:
    sub_21D9FE624(v149, type metadata accessor for TTRRecurrenceRuleModel);
  }

  v144 = ~v50;
  v145 = *(v130 + 72);
  v54 = v146;
  while (1)
  {
    sub_21D9FE6EC(*(v148 + 48) + v145 * v51, v54, type metadata accessor for TTRRecurrenceRuleModel);
    v58 = *(v32 + 48);
    sub_21D3139B4(v54, v22);
    sub_21D3139B4(v149, &v22[v58]);
    v59 = *v143;
    if ((*v143)(v22, 1, v151) != 1)
    {
      sub_21D3139B4(v22, v31);
      if (v59(&v22[v58], 1, v151) == 1)
      {
        sub_21D9FE624(v31, type metadata accessor for TTRRecurrenceEndModel);
LABEL_17:
        v55 = v22;
        v56 = &qword_27CE61B40;
        v57 = &unk_21DC29738;
      }

      else
      {
        v68 = v31;
        v69 = v142;
        sub_21D9FE684(&v22[v58], v142, type metadata accessor for TTRRecurrenceEndModel);
        v70 = *(v139 + 48);
        v71 = v68;
        v72 = v140;
        sub_21D9FE6EC(v71, v140, type metadata accessor for TTRRecurrenceEndModel);
        sub_21D9FE6EC(v69, v72 + v70, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21D9FE6EC(v72, v136, type metadata accessor for TTRRecurrenceEndModel);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v31 = v137;
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_44;
          }

          v74 = v72;
          v75 = *v136;
          v76 = *(v74 + v70);
          sub_21D9FE624(v74, type metadata accessor for TTRRecurrenceEndModel);
          v32 = v138;
          if (v75 != v76)
          {
            goto LABEL_45;
          }

          goto LABEL_47;
        }

        v77 = v134;
        sub_21D9FE6EC(v72, v134, type metadata accessor for TTRRecurrenceEndModel);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v78 = v72 + v70;
          v79 = v129;
          v80 = v135;
          (*v128)(v129, v78, v135);
          v132 = sub_21DBF55EC();
          v81 = *v133;
          (*v133)(v79, v80);
          v81(v77, v80);
          sub_21D9FE624(v140, type metadata accessor for TTRRecurrenceEndModel);
          v31 = v137;
          v32 = v138;
          if ((v132 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_47:
          sub_21D9FE624(v142, type metadata accessor for TTRRecurrenceEndModel);
          sub_21D9FE624(v31, type metadata accessor for TTRRecurrenceEndModel);
          goto LABEL_22;
        }

        (*v133)(v77, v135);
        v31 = v137;
LABEL_44:
        sub_21D0CF7E0(v72, &qword_27CE61B38, &qword_21DC29730);
        v32 = v138;
LABEL_45:
        sub_21D9FE624(v142, type metadata accessor for TTRRecurrenceEndModel);
        sub_21D9FE624(v31, type metadata accessor for TTRRecurrenceEndModel);
        v55 = v22;
        v56 = &unk_27CE62610;
        v57 = &unk_21DC0DF00;
      }

      sub_21D0CF7E0(v55, v56, v57);
      v54 = v146;
      goto LABEL_19;
    }

    if (v59(&v22[v58], 1, v151) != 1)
    {
      goto LABEL_17;
    }

LABEL_22:
    sub_21D0CF7E0(v22, &unk_27CE62610, &unk_21DC0DF00);
    v54 = v146;
    if (*(v146 + v141[5]) != *(v149 + v141[5]) || *(v146 + v141[6]) != *(v149 + v141[6]) || *(v146 + v141[7]) != *(v149 + v141[7]))
    {
      goto LABEL_19;
    }

    v60 = v141[8];
    v61 = *(v146 + v60);
    v62 = *(v149 + v60);
    if (v61)
    {
      if (!v62)
      {
        goto LABEL_19;
      }

      v63 = v61[1].i64[0];
      if (v63 != v62[1].i64[0])
      {
        goto LABEL_19;
      }

      if (v63)
      {
        v64 = v61 == v62;
      }

      else
      {
        v64 = 1;
      }

      if (!v64)
      {
        v65 = v61 + 2;
        v66 = v62 + 2;
        while (v63)
        {
          v67 = vmovn_s64(vceqq_s64(*v65, *v66));
          if ((v67.i32[0] & v67.i32[1] & 1) == 0)
          {
            goto LABEL_19;
          }

          ++v65;
          ++v66;
          if (!--v63)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_121;
      }
    }

    else if (v62)
    {
      goto LABEL_19;
    }

LABEL_49:
    v82 = v141[9];
    v83 = *(v146 + v82);
    v84 = *(v149 + v82);
    if (v83)
    {
      if (!v84)
      {
        goto LABEL_19;
      }

      v85 = *(v83 + 16);
      if (v85 != *(v84 + 16))
      {
        goto LABEL_19;
      }

      if (v85)
      {
        v86 = v83 == v84;
      }

      else
      {
        v86 = 1;
      }

      if (!v86)
      {
        v87 = (v83 + 32);
        v88 = (v84 + 32);
        while (v85)
        {
          if (*v87 != *v88)
          {
            goto LABEL_19;
          }

          ++v87;
          ++v88;
          if (!--v85)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_122;
      }
    }

    else if (v84)
    {
      goto LABEL_19;
    }

LABEL_62:
    v89 = v141[10];
    v90 = *(v146 + v89);
    v91 = *(v149 + v89);
    if (v90)
    {
      if (!v91)
      {
        goto LABEL_19;
      }

      v92 = *(v90 + 16);
      if (v92 != *(v91 + 16))
      {
        goto LABEL_19;
      }

      if (v92)
      {
        v93 = v90 == v91;
      }

      else
      {
        v93 = 1;
      }

      if (!v93)
      {
        v94 = (v90 + 32);
        v95 = (v91 + 32);
        while (v92)
        {
          if (*v94 != *v95)
          {
            goto LABEL_19;
          }

          ++v94;
          ++v95;
          if (!--v92)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_123;
      }
    }

    else if (v91)
    {
      goto LABEL_19;
    }

LABEL_75:
    v96 = v141[11];
    v97 = *(v146 + v96);
    v98 = *(v149 + v96);
    if (v97)
    {
      if (!v98)
      {
        goto LABEL_19;
      }

      v99 = *(v97 + 16);
      if (v99 != *(v98 + 16))
      {
        goto LABEL_19;
      }

      if (v99)
      {
        v100 = v97 == v98;
      }

      else
      {
        v100 = 1;
      }

      if (!v100)
      {
        v101 = (v97 + 32);
        v102 = (v98 + 32);
        while (v99)
        {
          if (*v101 != *v102)
          {
            goto LABEL_19;
          }

          ++v101;
          ++v102;
          if (!--v99)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_124;
      }
    }

    else if (v98)
    {
      goto LABEL_19;
    }

LABEL_88:
    v103 = v141[12];
    v104 = *(v146 + v103);
    v105 = *(v149 + v103);
    if (v104)
    {
      if (!v105)
      {
        goto LABEL_19;
      }

      v106 = *(v104 + 16);
      if (v106 != *(v105 + 16))
      {
        goto LABEL_19;
      }

      if (v106)
      {
        v107 = v104 == v105;
      }

      else
      {
        v107 = 1;
      }

      if (!v107)
      {
        v108 = (v104 + 32);
        v109 = (v105 + 32);
        while (v106)
        {
          if (*v108 != *v109)
          {
            goto LABEL_19;
          }

          ++v108;
          ++v109;
          if (!--v106)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_125;
      }
    }

    else if (v105)
    {
      goto LABEL_19;
    }

LABEL_101:
    v110 = v141[13];
    v111 = *(v146 + v110);
    v112 = *(v149 + v110);
    if (v111)
    {
      break;
    }

    if (!v112)
    {
      goto LABEL_114;
    }

LABEL_19:
    sub_21D9FE624(v54, type metadata accessor for TTRRecurrenceRuleModel);
    v51 = (v51 + 1) & v144;
    v52 = v51 >> 6;
    v53 = 1 << v51;
    if (((1 << v51) & *(v147 + 8 * (v51 >> 6))) == 0)
    {
      goto LABEL_2;
    }
  }

  if (!v112)
  {
    goto LABEL_19;
  }

  v113 = *(v111 + 16);
  if (v113 != *(v112 + 16))
  {
    goto LABEL_19;
  }

  if (v113)
  {
    v114 = v111 == v112;
  }

  else
  {
    v114 = 1;
  }

  if (!v114)
  {
    v115 = (v111 + 32);
    v116 = (v112 + 32);
    while (v113)
    {
      if (*v115 != *v116)
      {
        goto LABEL_19;
      }

      ++v115;
      ++v116;
      if (!--v113)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_126;
  }

LABEL_114:
  sub_21D9FE624(v146, type metadata accessor for TTRRecurrenceRuleModel);
  result = sub_21D9FE624(v149, type metadata accessor for TTRRecurrenceRuleModel);
  v118 = v124[v52];
  v124[v52] = v118 & ~v53;
  if ((v118 & v53) == 0)
  {
    goto LABEL_3;
  }

  v119 = v123 - 1;
  if (__OFSUB__(v123, 1))
  {
    __break(1u);
    return result;
  }

  --v123;
  if (v119)
  {
    goto LABEL_3;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21D9FCDBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v17);
    result = sub_21DBFC82C();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_21D7C06E4(v7, a2, v9, a3);
}

void sub_21D9FCF94(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_21DBF54CC();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_21D0CF7E0(v11, &qword_27CE5EA20, &qword_21DC0D4A0);
          v45 = v61;

          sub_21D7C0BBC(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_21D9FE5DC(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        v35 = sub_21DBF9FFC();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_21D9FE5DC(&qword_280D171D0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v43 = sub_21DBFA10C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t _s15RemindersUICore27TTRReminderTextChangeDetailV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v10 = sub_21DBFB63C();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v4 == v8)
  {
    if (v5)
    {
      if (v9 && (v3 == v7 && v5 == v9 || (sub_21DBFC64C() & 1) != 0))
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

  return result;
}

uint64_t _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (!v3)
  {
    if (!v7)
    {
      v3 = 0;
      v11 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v7 || (v2 == v6 ? (v10 = v3 == v7) : (v10 = 0), !v10 && (sub_21DBFC64C() & 1) == 0 || (sub_21D321F28(v4, v8) & 1) == 0))
  {
LABEL_11:
    sub_21D24A7C4(v6, v7, v8, v9);
    sub_21D24A7C4(v2, v3, v4, v5);
    v11 = 0;
    goto LABEL_12;
  }

  sub_21D24A7C4(v6, v7, v8, v9);
  sub_21D24A7C4(v2, v3, v4, v5);
  v11 = sub_21D1D56D8(v5, v9);
LABEL_12:
  sub_21D24A814(v2, v3);
  sub_21D24A814(v6, v7);
  return v11 & 1;
}

uint64_t _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO16effectivelyEqualySbACSg_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v2 >= 2 && (*(v4 + 16) || *(v5 + 16)))
  {
    v16 = *a1;
    v17 = v2;
    v18 = v4;
    v19 = v5;
    if (v6 == 1)
    {
      sub_21D64CAB0(v3, v2, v4, v5);
      sub_21D64CAB0(v7, 1, v8, v9);
      sub_21D64CAB0(v3, v2, v4, v5);
      sub_21D24A814(v3, v2);
LABEL_12:
      sub_21D301F20(v3, v2);
      sub_21D301F20(v7, v6);
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_14;
  }

  if (v6 >= 2 && (*(v8 + 16) || *(v9 + 16)))
  {
    if (v2 == 1)
    {
      sub_21D64CAB0(*a1, 1, v4, v5);
      sub_21D64CAB0(v7, v6, v8, v9);
      goto LABEL_12;
    }

    v16 = *a1;
    v17 = v2;
    v18 = v4;
    v19 = v5;
LABEL_14:
    v12 = v7;
    v13 = v6;
    v14 = v8;
    v15 = v9;
    sub_21D64CAB0(v3, v2, v4, v5);
    sub_21D64CAB0(v7, v6, v8, v9);
    sub_21D64CAB0(v3, v2, v4, v5);
    v10 = _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO2eeoiySbAC_ACtFZ_0(&v16, &v12);
    sub_21D24A814(v12, v13);
    sub_21D24A814(v16, v17);
    sub_21D301F20(v3, v2);
    return v10 & 1;
  }

  v10 = 1;
  return v10 & 1;
}

unint64_t sub_21D9FD848()
{
  result = qword_280D0C400;
  if (!qword_280D0C400)
  {
    result = swift_getWitnessTable(MEMORY[0x277D837B0], MEMORY[0x277D837A8], v0, v1);
    atomic_store(result, &qword_280D0C400);
  }

  return result;
}

unint64_t sub_21D9FD8A0()
{
  result = qword_27CE64A50;
  if (!qword_27CE64A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCellTextHighlights.HighlightType, &type metadata for TTRReminderCellTextHighlights.HighlightType, v0, v1);
    atomic_store(result, &qword_27CE64A50);
  }

  return result;
}

unint64_t sub_21D9FD93C()
{
  result = qword_280D18EA0;
  if (!qword_280D18EA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCellTextHighlights.Highlight, &type metadata for TTRReminderCellTextHighlights.Highlight, v0, v1);
    atomic_store(result, &qword_280D18EA0);
  }

  return result;
}

double destroy for TTRReminderTextChangeDetail(id *a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRReminderTextChangeDetail(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderTextChangeDetail(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderTextChangeDetail(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t initializeWithCopy for TTRReminderCellTextReplacement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderCellTextReplacement(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderCellTextReplacement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellTextReplacement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellTextReplacement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for TTRReminderHashtagData()
{

  return result;
}

void *sub_21D9FDC9C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderCellTextHighlights(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderCellTextHighlights(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellTextHighlights.Highlight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double destroy for TTRReminderCellTextEditingAugmentation(uint64_t a1)
{
  if (*(a1 + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

__n128 initializeWithCopy for TTRReminderCellTextEditingAugmentation(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return result;
}

void *assignWithCopy for TTRReminderCellTextEditingAugmentation(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      return a1;
    }

LABEL_7:
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  a1[3] = a2[3];
  sub_21DBF8E0C();

  return a1;
}

_OWORD *assignWithTake for TTRReminderCellTextEditingAugmentation(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    v5 = *(a2 + 16);
    *result = *a2;
    result[1] = v5;
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v6 = *(a2 + 16);
      *v4 = *a2;
      v4[1] = v6;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v3;
      v4 = result;

      v4[1] = *(a2 + 16);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellTextEditingAugmentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellTextEditingAugmentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_21D9FE11C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t initializeWithCopy for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D749C9C(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D749C9C(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  sub_21D228468(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  sub_21D228468(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D9FE328(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D749C9C(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.ParagraphStyleWithOrderInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D749C9C(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D228468(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRReminderCellParagraphStyleUpdate.ParagraphStyleAndRange.ParagraphStyleWithOrderInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D228468(v4, v5, v6);
  return a1;
}

uint64_t *sub_21D9FE424(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t *assignWithCopy for TTRParticipantAvatarResult(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

void *assignWithTake for TTRParticipantAvatarResult(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t *assignWithCopy for TTRReminderCellHashtagTextUpdate.HashtagAndRange(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t *assignWithTake for TTRReminderCellHashtagTextUpdate.HashtagAndRange(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t sub_21D9FE5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D9FE624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D9FE684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9FE6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

int *sub_21D9FE790(uint64_t a1)
{
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110, &qword_21DC36010) + 36);
  result = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  v4 = *(v2 + result[9]);
  if (v4 != v1[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation])
  {
    v1[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation] = v4;

    return [v1 setTintAdjustmentMode_];
  }

  return result;
}

uint64_t sub_21D9FE864(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id TTRIRemindersListIntermediateViewModelObservingCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TTRIRemindersListIntermediateViewModelObservingCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A78, &qword_21DC36018);
  v11 = swift_allocObject();
  v12 = *(*v11 + 88);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110, &qword_21DC36010);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = (v11 + *(*v11 + 104));
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  *(v11 + *(*v11 + 112)) = 0;
  v15 = (v11 + *(*v11 + 96));
  *v15 = sub_21D9FED58;
  v15[1] = v10;
  v16 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  swift_beginAccess();
  *&v9[v16] = v11;

  return v9;
}

void sub_21D9FEB20(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268, &qword_21DC1FF88);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110, &qword_21DC36010);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
    swift_beginAccess();
    v13 = *(v11 + v12);
    if (v13)
    {
      v14 = *(*v13 + 88);
      swift_beginAccess();
      sub_21D9FF094(v13 + v14, v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        v15 = &qword_27CE5F268;
        v16 = &qword_21DC1FF88;
        v17 = v5;
      }

      else
      {
        sub_21D9FF104(v5, v9);
        (*((*MEMORY[0x277D85000] & *v11) + 0xA8))(v9, a1);

        v15 = &unk_27CE5F110;
        v16 = &qword_21DC36010;
        v17 = v9;
      }

      sub_21D0CF7E0(v17, v15, v16);
    }

    else
    {
      __break(1u);
    }
  }
}

id TTRIRemindersListIntermediateViewModelObservingCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIRemindersListIntermediateViewModelObservingCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D9FEEB0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = *(*v2 + 112);
    if (*(v2 + v3))
    {

      sub_21DBF901C();
    }

    else
    {
    }

    *(v2 + v3) = 0;
  }

  else
  {
    __break(1u);
  }
}

id TTRIRemindersListIntermediateViewModelObservingCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D9FF094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268, &qword_21DC1FF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9FF104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110, &qword_21DC36010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9FF174()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64A80);
  v1 = __swift_project_value_buffer(v0, qword_27CE64A80);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListCurrentTipCapability.visibleTip.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  v8 = 1;
  if (!(*(v4 + 48))(v1 + v7, 1, v3))
  {
    sub_21D9FF418(v1 + v7, v6, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v9 = v6[*(v3 + 24)];
    if (v9 != 2 && (v9 & 1) != 0 && v6[*(v3 + 20)] == 1)
    {
      sub_21D9FF418(v6, a1, type metadata accessor for TTRRemindersListTip);
      v8 = 0;
    }

    sub_21DA035F8(v6, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v10 = type metadata accessor for TTRRemindersListTip(0);
  return (*(*(v10 - 8) + 56))(a1, v8, 1, v10);
}

uint64_t sub_21D9FF418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9FF480@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D9FF514(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRRemindersListCurrentTipCapability.visibleTipDidChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1, *(v0 + 24));
  return v1;
}

uint64_t TTRRemindersListCurrentTipCapability.visibleTipDidChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_21D0D0E88(v5, v6);
}

uint64_t TTRRemindersListCurrentTipCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip, 1, 1, v2);
  return v0;
}

uint64_t TTRRemindersListCurrentTipCapability.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip, 1, 1, v2);
  return v0;
}

uint64_t TTRRemindersListCurrentTipCapability.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 48);
  if (!v3(v1, 1, v2))
  {
    v4 = *(v2 + 28);
    if (*(v1 + v4))
    {
      sub_21DBFA96C();
    }

    *(v1 + v4) = 0;
  }

  swift_endAccess();
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  if (!v3(v5, 1, v2))
  {
    v6 = *(v2 + 28);
    if (*(v5 + v6))
    {
      sub_21DBFA96C();
    }

    *(v5 + v6) = 0;
  }

  swift_endAccess();
  sub_21D0D0E88(*(v0 + 16), *(v0 + 24));
  sub_21D0CF7E0(v5, &qword_27CE64A98, &unk_21DC36070);
  sub_21D0CF7E0(v1, &qword_27CE64A98, &unk_21DC36070);
  return v0;
}

uint64_t TTRRemindersListCurrentTipCapability.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v2 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v3 = *(*(v2 - 8) + 48);
  if (!v3(v1, 1, v2))
  {
    v4 = *(v2 + 28);
    if (*(v1 + v4))
    {
      sub_21DBFA96C();
    }

    *(v1 + v4) = 0;
  }

  swift_endAccess();
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  if (!v3(v5, 1, v2))
  {
    v6 = *(v2 + 28);
    if (*(v5 + v6))
    {
      sub_21DBFA96C();
    }

    *(v5 + v6) = 0;
  }

  swift_endAccess();
  sub_21D0D0E88(*(v0 + 16), *(v0 + 24));
  sub_21D0CF7E0(v5, &qword_27CE64A98, &unk_21DC36070);
  sub_21D0CF7E0(v1, &qword_27CE64A98, &unk_21DC36070);
  return swift_deallocClassInstance();
}

uint64_t TTRRemindersListCurrentTipCapability.requestShowTip(_:)(uint64_t a1)
{
  v137 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v2 - 8);
  v136 = &v112 - v3;
  v4 = type metadata accessor for TTRRemindersListTips(0);
  v127 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v129 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v135 = &v112 - v7;
  MEMORY[0x28223BE20](v8);
  v117 = &v112 - v9;
  v128 = v10;
  MEMORY[0x28223BE20](v11);
  v116 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
  MEMORY[0x28223BE20](v13 - 8);
  v132 = (&v112 - v14);
  v131 = type metadata accessor for TTRRemindersListTip(0);
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v126 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v112 - v17;
  MEMORY[0x28223BE20](v18);
  v115 = &v112 - v19;
  MEMORY[0x28223BE20](v20);
  v114 = &v112 - v21;
  v125 = v22;
  MEMORY[0x28223BE20](v23);
  v119 = &v112 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v25);
  v122 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98, &unk_21DC36070);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v120 = &v112 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v112 - v36;
  v38 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v124 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v118 = &v112 - v42;
  MEMORY[0x28223BE20](v43);
  v121 = &v112 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v112 - v46;
  v48 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  v138 = v1;
  v130 = v48;
  sub_21D0D3954(v1 + v48, v37, &qword_27CE64A98, &unk_21DC36070);
  v49 = v38;
  v134 = *(v39 + 48);
  if (v134(v37, 1, v38) == 1)
  {
    v50 = v25;
    sub_21D0CF7E0(v37, &qword_27CE64A98, &unk_21DC36070);
  }

  else
  {
    v113 = v39;
    sub_21DA03424(v37, v47, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v50 = v25;
    v51 = *(v25 + 48);
    sub_21D9FF418(v137, v29, type metadata accessor for TTRRemindersListTip);
    sub_21D9FF418(v47, &v29[v51], type metadata accessor for TTRRemindersListTip);
    v52 = *v29;
    v53 = v29[v51];
    sub_21DA035F8(&v29[v51], type metadata accessor for TTRRemindersListTips);
    sub_21DA035F8(v29, type metadata accessor for TTRRemindersListTips);
    if (v52 == v53)
    {
      v67 = v49;
      v47[v49[5]] = 1;
      v68 = v138 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
      swift_beginAccess();
      v69 = v134(v68, 1, v49);
      v70 = v113;
      if (!v69)
      {
        v71 = v67[7];
        if (*(v68 + v71))
        {
          sub_21DBFA96C();
        }

        *(v68 + v71) = 0;
      }

      sub_21D0CF7E0(v68, &qword_27CE64A98, &unk_21DC36070);
      v72 = *(v70 + 56);
      v72(v68, 1, 1, v67);
      swift_endAccess();
      v73 = v120;
      sub_21D9FF418(v47, v120, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
      v72(v73, 0, 1, v67);
      sub_21DA00A10(v73);
      sub_21D0CF7E0(v73, &qword_27CE64A98, &unk_21DC36070);
      v74 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState;
      v75 = v47;
      return sub_21DA035F8(v75, v74);
    }

    sub_21DA035F8(v47, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v54 = v49;
  v55 = v134;
  v56 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  v57 = v138;
  swift_beginAccess();
  sub_21D0D3954(v57 + v56, v32, &qword_27CE64A98, &unk_21DC36070);
  v58 = v55(v32, 1, v49);
  v59 = v133;
  if (v58 == 1)
  {
    sub_21D0CF7E0(v32, &qword_27CE64A98, &unk_21DC36070);
  }

  else
  {
    v60 = v121;
    sub_21DA03424(v32, v121, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v61 = *(v50 + 48);
    v62 = v122;
    sub_21D9FF418(v137, v122, type metadata accessor for TTRRemindersListTip);
    sub_21D9FF418(v60, &v62[v61], type metadata accessor for TTRRemindersListTip);
    v63 = *v62;
    v64 = v62[v61];
    sub_21DA035F8(&v62[v61], type metadata accessor for TTRRemindersListTips);
    sub_21DA035F8(v62, type metadata accessor for TTRRemindersListTips);
    if (v63 == v64)
    {
      *(v60 + v54[5]) = 1;
      sub_21DA01404(v60);
      v74 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState;
      v75 = v60;
      return sub_21DA035F8(v75, v74);
    }

    sub_21DA035F8(v60, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v65 = v130;
  if (v55((v138 + v130), 1, v54))
  {
    v66 = v132;
    (*(v59 + 56))(v132, 1, 1, v131);
LABEL_23:
    sub_21D0CF7E0(v66, &qword_27CE64AA0, &unk_21DC36080);
LABEL_24:
    v81 = v137;
    v82 = v124;
    sub_21D9FF418(v137, v124, type metadata accessor for TTRRemindersListTip);
    *(v82 + v54[5]) = 1;
    v83 = v54[6];
    v134 = v54[7];
    v84 = v123;
    sub_21D9FF418(v81, v123, type metadata accessor for TTRRemindersListTip);
    v132 = type metadata accessor for TTRRemindersListTips;
    v85 = v84;
    v86 = v135;
    sub_21DA03424(v85, v135, type metadata accessor for TTRRemindersListTips);
    *(v82 + v83) = 2;
    v87 = sub_21DBFA89C();
    (*(*(v87 - 8) + 56))(v136, 1, 1, v87);
    v88 = swift_allocObject();
    swift_weakInit();
    v89 = v129;
    sub_21D9FF418(v86, v129, type metadata accessor for TTRRemindersListTips);
    v90 = v126;
    sub_21D9FF418(v81, v126, type metadata accessor for TTRRemindersListTip);
    sub_21DBFA84C();

    v91 = sub_21DBFA83C();
    v92 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v93 = (v128 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (*(v59 + 80) + v93 + 8) & ~*(v59 + 80);
    v95 = swift_allocObject();
    v96 = MEMORY[0x277D85700];
    *(v95 + 16) = v91;
    *(v95 + 24) = v96;
    sub_21DA03424(v89, v95 + v92, v132);
    *(v95 + v93) = v88;
    sub_21DA03424(v90, v95 + v94, type metadata accessor for TTRRemindersListTip);

    v97 = sub_21D1B5178(0, 0, v136, &unk_21DC36098, v95);
    sub_21DA035F8(v135, type metadata accessor for TTRRemindersListTips);
    *(v134 + v82) = v97;
    sub_21DA01404(v82);
    v74 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState;
    v75 = v82;
    return sub_21DA035F8(v75, v74);
  }

  v76 = v118;
  sub_21D9FF418(v138 + v65, v118, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v77 = *(v76 + v54[6]);
  v66 = v132;
  if (v77 != 2 && (v77 & 1) != 0 && *(v76 + v54[5]) == 1)
  {
    sub_21D9FF418(v76, v132, type metadata accessor for TTRRemindersListTip);
    v78 = 0;
  }

  else
  {
    v78 = 1;
  }

  sub_21DA035F8(v76, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v79 = v78;
  v80 = v131;
  (*(v59 + 56))(v66, v79, 1, v131);
  if ((*(v59 + 48))(v66, 1, v80) == 1)
  {
    goto LABEL_23;
  }

  v99 = v66;
  v100 = v119;
  sub_21DA03424(v99, v119, type metadata accessor for TTRRemindersListTip);
  v101 = v114;
  sub_21D9FF418(v100, v114, type metadata accessor for TTRRemindersListTip);
  v102 = v116;
  sub_21DA03424(v101, v116, type metadata accessor for TTRRemindersListTips);
  v103 = *v102;
  sub_21DA035F8(v102, type metadata accessor for TTRRemindersListTips);
  v104 = v115;
  sub_21D9FF418(v137, v115, type metadata accessor for TTRRemindersListTip);
  v105 = v104;
  v106 = v117;
  sub_21DA03424(v105, v117, type metadata accessor for TTRRemindersListTips);
  v107 = *v106;
  sub_21DA035F8(v106, type metadata accessor for TTRRemindersListTips);
  if ((v107 & 1) != 0 || !v103)
  {
    sub_21DA035F8(v119, type metadata accessor for TTRRemindersListTip);
    goto LABEL_24;
  }

  if (qword_27CE56F58 != -1)
  {
    swift_once();
  }

  v108 = sub_21DBF84BC();
  __swift_project_value_buffer(v108, qword_27CE64A80);
  v109 = sub_21DBF84AC();
  v110 = sub_21DBFAE9C();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_21D0C9000, v109, v110, "TTRRemindersListCurrentTipCapability#requestShowTip: existing tip has higher priority over the new one", v111, 2u);
    MEMORY[0x223D46520](v111, -1, -1);
  }

  v74 = type metadata accessor for TTRRemindersListTip;
  v75 = v119;
  return sub_21DA035F8(v75, v74);
}

uint64_t sub_21DA00A10(uint64_t a1)
{
  v78 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v72);
  v73 = &v71 - v2;
  v3 = type metadata accessor for TTRRemindersListTip(0);
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AB0, &qword_21DC3F1D0);
  MEMORY[0x28223BE20](v79);
  v6 = (&v71 - v5);
  v7 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
  MEMORY[0x28223BE20](v74);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v71 - v15;
  MEMORY[0x28223BE20](v16);
  v76 = &v71 - v17;
  MEMORY[0x28223BE20](v18);
  v82 = &v71 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  v24 = *(v8 + 48);
  v25 = 1;
  v26 = v24(v1 + v23, 1, v7);
  v27 = v83;
  if (!v26)
  {
    v80 = v24;
    sub_21D9FF418(v1 + v23, v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v28 = v12[*(v7 + 24)];
    if (v28 != 2 && (v28 & 1) != 0 && v12[*(v7 + 20)] == 1)
    {
      sub_21D9FF418(v12, v22, type metadata accessor for TTRRemindersListTip);
      v25 = 0;
    }

    sub_21DA035F8(v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v27 = v83;
    v24 = v80;
  }

  v80 = v6;
  v29 = v27;
  v30 = v25;
  v31 = *(v27 + 56);
  v31(v22, v30, 1, v3);
  swift_beginAccess();
  sub_21DA03C98(v78, v1 + v23);
  swift_endAccess();
  v83 = v1;
  v32 = v24(v1 + v23, 1, v7);
  v33 = 1;
  v34 = v82;
  if (!v32)
  {
    v35 = v75;
    sub_21D9FF418(v83 + v23, v75, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v36 = *(v35 + *(v7 + 24));
    if (v36 != 2 && (v36 & 1) != 0 && *(v35 + *(v7 + 20)) == 1)
    {
      sub_21D9FF418(v35, v34, type metadata accessor for TTRRemindersListTip);
      v33 = 0;
    }

    sub_21DA035F8(v35, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }

  v31(v34, v33, 1, v3);
  v37 = v80;
  v38 = *(v79 + 48);
  sub_21D0D3954(v22, v80, &qword_27CE64AA0, &unk_21DC36080);
  sub_21D0D3954(v34, v37 + v38, &qword_27CE64AA0, &unk_21DC36080);
  v39 = *(v29 + 48);
  if (v39(v37, 1, v3) == 1)
  {
    v40 = v39(v37 + v38, 1, v3);
    v41 = v81;
    if (v40 == 1)
    {
      sub_21D0CF7E0(v34, &qword_27CE64AA0, &unk_21DC36080);
      sub_21D0CF7E0(v22, &qword_27CE64AA0, &unk_21DC36080);
      return sub_21D0CF7E0(v37, &qword_27CE64AA0, &unk_21DC36080);
    }

    goto LABEL_18;
  }

  v43 = v76;
  sub_21D0D3954(v37, v76, &qword_27CE64AA0, &unk_21DC36080);
  v44 = v39(v37 + v38, 1, v3);
  v41 = v81;
  if (v44 == 1)
  {
    sub_21DA035F8(v43, type metadata accessor for TTRRemindersListTip);
LABEL_18:
    sub_21D0CF7E0(v37, &qword_27CE64AB0, &qword_21DC3F1D0);
    goto LABEL_19;
  }

  v63 = v71;
  sub_21DA03424(v37 + v38, v71, type metadata accessor for TTRRemindersListTip);
  v64 = v73;
  v65 = *(v72 + 48);
  sub_21D9FF418(v43, v73, type metadata accessor for TTRRemindersListTip);
  sub_21DA03424(v63, &v64[v65], type metadata accessor for TTRRemindersListTip);
  v66 = v22;
  v67 = *v64;
  v68 = v43;
  v69 = v64[v65];
  sub_21DA035F8(&v64[v65], type metadata accessor for TTRRemindersListTips);
  sub_21DA035F8(v64, type metadata accessor for TTRRemindersListTips);
  sub_21DA035F8(v68, type metadata accessor for TTRRemindersListTip);
  sub_21D0CF7E0(v37, &qword_27CE64AA0, &unk_21DC36080);
  v70 = v67 == v69;
  v22 = v66;
  if (v70)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (qword_27CE56F58 != -1)
  {
    swift_once();
  }

  v45 = sub_21DBF84BC();
  __swift_project_value_buffer(v45, qword_27CE64A80);
  sub_21D0D3954(v22, v41, &qword_27CE64AA0, &unk_21DC36080);
  v46 = v77;
  sub_21D0D3954(v34, v77, &qword_27CE64AA0, &unk_21DC36080);
  v47 = sub_21DBF84AC();
  v48 = sub_21DBFAE9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v84[0] = v50;
    *v49 = 136315394;
    v51 = sub_21DBFBA5C();
    v53 = v52;
    sub_21D0CF7E0(v41, &qword_27CE64AA0, &unk_21DC36080);
    v54 = sub_21D0CDFB4(v51, v53, v84);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    v55 = sub_21DBFBA5C();
    v57 = v56;
    v34 = v82;
    sub_21D0CF7E0(v46, &qword_27CE64AA0, &unk_21DC36080);
    v58 = sub_21D0CDFB4(v55, v57, v84);

    *(v49 + 14) = v58;
    _os_log_impl(&dword_21D0C9000, v47, v48, "TTRRemindersListCurrentTipCapability: visible tip changes {from: %s, to: %s}", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v50, -1, -1);
    MEMORY[0x223D46520](v49, -1, -1);
  }

  else
  {

    sub_21D0CF7E0(v46, &qword_27CE64AA0, &unk_21DC36080);
    sub_21D0CF7E0(v41, &qword_27CE64AA0, &unk_21DC36080);
  }

  v59 = v83;
  swift_beginAccess();
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = *(v59 + 24);
    swift_endAccess();

    v60(v62);
    sub_21D0D0E88(v60, v61);
LABEL_28:
    sub_21D0CF7E0(v34, &qword_27CE64AA0, &unk_21DC36080);
    return sub_21D0CF7E0(v22, &qword_27CE64AA0, &unk_21DC36080);
  }

  sub_21D0CF7E0(v34, &qword_27CE64AA0, &unk_21DC36080);
  sub_21D0CF7E0(v22, &qword_27CE64AA0, &unk_21DC36080);
  return swift_endAccess();
}

uint64_t sub_21DA01404(uint64_t a1)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98, &unk_21DC36070);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v42 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - v4;
  v5 = type metadata accessor for TTRRemindersListTip(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AB0, &qword_21DC3F1D0);
  MEMORY[0x28223BE20](v49);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v43 = v1;
  v18 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v19 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v51 = *(v19 - 8);
  v52 = v19;
  v20 = 1;
  v48 = *(v51 + 48);
  if (!v48(v18, 1))
  {
    sub_21D9FF418(v18, v17, type metadata accessor for TTRRemindersListTip);
    v20 = 0;
  }

  v21 = *(v6 + 56);
  v21(v17, v20, 1, v5);
  v22 = v50;
  sub_21D9FF418(v50, v14, type metadata accessor for TTRRemindersListTip);
  v21(v14, 0, 1, v5);
  v23 = *(v49 + 48);
  sub_21DA03D08(v17, v9);
  sub_21DA03D08(v14, &v9[v23]);
  v24 = *(v6 + 48);
  v25 = v22;
  if (v24(v9, 1, v5) == 1)
  {
    v26 = v24(&v9[v23], 1, v5);
    v27 = v53;
    v28 = v51;
    if (v26 == 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE64AA0, &unk_21DC36080);
      v29 = v52;
      goto LABEL_14;
    }
  }

  else
  {
    v30 = v47;
    sub_21D0D3954(v9, v47, &qword_27CE64AA0, &unk_21DC36080);
    if (v24(&v9[v23], 1, v5) != 1)
    {
      v35 = v44;
      sub_21DA03424(&v9[v23], v44, type metadata accessor for TTRRemindersListTip);
      v36 = *(v45 + 48);
      v37 = v30;
      v38 = v30;
      v39 = v46;
      sub_21D9FF418(v37, v46, type metadata accessor for TTRRemindersListTip);
      sub_21DA03424(v35, &v39[v36], type metadata accessor for TTRRemindersListTip);
      LODWORD(v35) = *v39;
      v40 = v39[v36];
      sub_21DA035F8(&v39[v36], type metadata accessor for TTRRemindersListTips);
      sub_21DA035F8(v39, type metadata accessor for TTRRemindersListTips);
      sub_21DA035F8(v38, type metadata accessor for TTRRemindersListTip);
      sub_21D0CF7E0(v9, &qword_27CE64AA0, &unk_21DC36080);
      v41 = v35 == v40;
      v29 = v52;
      v27 = v53;
      v28 = v51;
      if (v41)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    sub_21DA035F8(v30, type metadata accessor for TTRRemindersListTip);
    v27 = v53;
    v28 = v51;
  }

  sub_21D0CF7E0(v9, &qword_27CE64AB0, &qword_21DC3F1D0);
  v29 = v52;
LABEL_9:
  swift_beginAccess();
  if (!(v48)(v18, 1, v29))
  {
    v31 = v29[7];
    if (*(v18 + v31))
    {
      sub_21DBFA96C();
    }

    *(v18 + v31) = 0;
  }

  sub_21D0CF7E0(v18, &qword_27CE64A98, &unk_21DC36070);
  (*(v28 + 56))(v18, 1, 1, v29);
  swift_endAccess();
LABEL_14:
  sub_21D9FF418(v25, v27, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v32 = *(v28 + 56);
  v32(v27, 0, 1, v29);
  swift_beginAccess();
  sub_21DA03D78(v27, v18);
  result = swift_endAccess();
  v34 = *(v25 + v29[6]);
  if (v34 != 2 && (v34 & 1) != 0 && *(v25 + v29[5]) == 1)
  {
    v32(v27, 1, 1, v29);
    swift_beginAccess();
    sub_21DA03D78(v27, v18);
    swift_endAccess();
    sub_21D9FF418(v25, v27, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v32(v27, 0, 1, v29);
    sub_21DA00A10(v27);
    return sub_21D0CF7E0(v27, &qword_27CE64A98, &unk_21DC36070);
  }

  return result;
}

uint64_t sub_21DA01B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C460, &qword_21DC16340);
  v6[12] = swift_task_alloc();
  v7 = sub_21DBF8EFC();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C468, &qword_21DC16348);
  v6[17] = swift_task_alloc();
  v6[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C470, &qword_21DC16350);
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C478, &qword_21DC16358);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C480, &unk_21DC16360);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = sub_21DBFA84C();
  v6[27] = sub_21DBFA83C();
  v11 = sub_21DBFA7CC();
  v6[28] = v11;
  v6[29] = v10;

  return MEMORY[0x2822009F8](sub_21DA01DB0, v11, v10);
}

uint64_t sub_21DA01DB0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  type metadata accessor for TTRRemindersListTips(0);
  sub_21DBF8D7C();
  sub_21DA03DE8();
  sub_21DBF8D8C();
  MEMORY[0x223D44910](v3);
  sub_21D0D0F1C(&qword_27CE5C490, &qword_27CE5C468, &qword_21DC16348, MEMORY[0x277D857C0]);
  sub_21DBFA9BC();
  sub_21DBFC17C();
  (*(v2 + 8))(v1, v3);
  sub_21DBFC18C();
  swift_beginAccess();
  v4 = sub_21DBFA83C();
  v0[30] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_21DBFA7CC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[31] = v5;
  v0[32] = v7;

  return MEMORY[0x2822009F8](sub_21DA01F70, v5, v7);
}

uint64_t sub_21DA01F70()
{
  v1 = v0[30];
  v0[33] = sub_21DBFC16C();
  sub_21D0D0F1C(&qword_27CE5C498, &qword_27CE5C470, &qword_21DC16350, MEMORY[0x277D857B0]);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_21DA02074;
  v3 = v0[12];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

uint64_t sub_21DA02074()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_21DA0235C;
  }

  else
  {
    (*(v2 + 264))();
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_21DA0219C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21DA0219C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_21D0CF7E0(v3, &qword_27CE5C460, &qword_21DC16340);
    v4 = v0[28];
    v5 = v0[29];

    return MEMORY[0x2822009F8](sub_21DA026F4, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[15], v3, v1);
    v6 = sub_21DBFC17C();
    v0[35] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[36] = v8;
    *v8 = v0;
    v8[1] = sub_21DA02374;
    v9 = v0[15];

    return (v11)(v0 + 37, v9);
  }
}

uint64_t sub_21DA02374()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  *(v1 + 297) = *(v1 + 296);
  v5 = *(v1 + 256);
  v6 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_21DA02520, v6, v5);
}

uint64_t sub_21DA02520()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_21DA02584, v1, v2);
}

uint64_t sub_21DA02584()
{
  if (swift_weakLoadStrong())
  {
    sub_21DA027C8(*(v0 + 297), *(v0 + 88));

    v1 = sub_21DBFA83C();
    *(v0 + 240) = v1;
    if (v1)
    {
      swift_getObjectType();
      v2 = sub_21DBFA7CC();
      v4 = v3;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    *(v0 + 248) = v2;
    *(v0 + 256) = v4;

    return MEMORY[0x2822009F8](sub_21DA01F70, v2, v4);
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21DA026F4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21DA027C8(int a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v70 = a1;
  v4 = type metadata accessor for TTRRemindersListTips(0);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98, &unk_21DC36070);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v21 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v66 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v27 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v69 = v3;
  sub_21D0D3954(v3 + v27, v20, &qword_27CE64A98, &unk_21DC36070);
  v63 = v22;
  v28 = *(v22 + 48);
  v29 = v21;
  v30 = v28(v20, 1, v21);
  v67 = v8;
  if (v30 == 1)
  {
    v31 = v70;
    sub_21D0CF7E0(v20, &qword_27CE64A98, &unk_21DC36070);
  }

  else
  {
    sub_21DA03424(v20, v26, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v32 = *(v8 + 48);
    sub_21D9FF418(v26, v12, type metadata accessor for TTRRemindersListTip);
    sub_21D9FF418(v68, &v12[v32], type metadata accessor for TTRRemindersListTip);
    v33 = *v12;
    v34 = v12[v32];
    sub_21DA035F8(&v12[v32], type metadata accessor for TTRRemindersListTips);
    sub_21DA035F8(v12, type metadata accessor for TTRRemindersListTips);
    if (v33 == v34)
    {
      v26[*(v29 + 24)] = v70 & 1;
      sub_21DA01404(v26);
      v53 = v26;
      return sub_21DA035F8(v53, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    }

    sub_21DA035F8(v26, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v31 = v70;
  }

  v35 = v29;
  v36 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  v37 = v69;
  swift_beginAccess();
  sub_21D0D3954(v37 + v36, v17, &qword_27CE64A98, &unk_21DC36070);
  v38 = v28(v17, 1, v29);
  v39 = v67;
  if (v38 == 1)
  {
    return sub_21D0CF7E0(v17, &qword_27CE64A98, &unk_21DC36070);
  }

  v41 = v66;
  sub_21DA03424(v17, v66, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  v42 = *(v39 + 48);
  v43 = v65;
  sub_21D9FF418(v41, v65, type metadata accessor for TTRRemindersListTip);
  v44 = v68;
  sub_21D9FF418(v68, &v43[v42], type metadata accessor for TTRRemindersListTip);
  v45 = *v43;
  v46 = v43[v42];
  sub_21DA035F8(&v43[v42], type metadata accessor for TTRRemindersListTips);
  sub_21DA035F8(v43, type metadata accessor for TTRRemindersListTips);
  if (v45 == v46)
  {
    if ((v31 & 1) == 0)
    {
      v47 = v61;
      sub_21D9FF418(v44, v61, type metadata accessor for TTRRemindersListTip);
      v48 = v62;
      sub_21DA03424(v47, v62, type metadata accessor for TTRRemindersListTips);
      if (*v48)
      {
        if (qword_27CE56F58 != -1)
        {
          swift_once();
        }

        v49 = sub_21DBF84BC();
        __swift_project_value_buffer(v49, qword_27CE64A80);
        v50 = sub_21DBF84AC();
        v51 = sub_21DBFAEDC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_21D0C9000, v50, v51, "TTRRemindersListCurrentTipCapability: Dismissed a section rename tip", v52, 2u);
          MEMORY[0x223D46520](v52, -1, -1);
        }
      }

      else
      {
        if (qword_27CE56F58 != -1)
        {
          swift_once();
        }

        v54 = sub_21DBF84BC();
        __swift_project_value_buffer(v54, qword_27CE64A80);
        v55 = sub_21DBF84AC();
        v56 = sub_21DBFAEDC();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_21D0C9000, v55, v56, "TTRRemindersListCurrentTipCapability: TTRUserDefault groceryTipDismissed set to true after dismissing a grocery tip", v57, 2u);
          MEMORY[0x223D46520](v57, -1, -1);
        }

        if (qword_280D1AA10 != -1)
        {
          swift_once();
        }

        v58 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
        if (v58)
        {
          v59 = sub_21DBFA12C();
          [v58 setBool:1 forKey:v59];
        }

        v50 = [objc_opt_self() daemonUserDefaults];
        [v50 setGroceryTipDismissed:1];
      }

      sub_21DA035F8(v48, type metadata accessor for TTRRemindersListTips);
    }

    *(v41 + *(v35 + 24)) = v31 & 1;
    v60 = v64;
    sub_21D9FF418(v41, v64, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    (*(v63 + 56))(v60, 0, 1, v35);
    sub_21DA00A10(v60);
    sub_21D0CF7E0(v60, &qword_27CE64A98, &unk_21DC36070);
  }

  v53 = v41;
  return sub_21DA035F8(v53, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
}

Swift::Void __swiftcall TTRRemindersListCurrentTipCapability.requestSetCurrentTipHidden(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98, &unk_21DC36070);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_activeTip;
  swift_beginAccess();
  sub_21D0D3954(v1 + v13, v8, &qword_27CE64A98, &unk_21DC36070);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE64A98, &unk_21DC36070);
  }

  else
  {
    sub_21DA03424(v8, v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    v12[*(v9 + 20)] = !a1;
    sub_21D9FF418(v12, v5, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
    (*(v10 + 56))(v5, 0, 1, v9);
    sub_21DA00A10(v5);
    sub_21D0CF7E0(v5, &qword_27CE64A98, &unk_21DC36070);
    sub_21DA035F8(v12, type metadata accessor for TTRRemindersListCurrentTipCapability.TipState);
  }
}

Swift::Void __swiftcall TTRRemindersListCurrentTipCapability.requestDismissTip()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98, &unk_21DC36070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRRemindersListCurrentTipCapability_pendingTip;
  swift_beginAccess();
  v5 = type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    v7 = *(v5 + 28);
    if (*(v4 + v7))
    {
      sub_21DBFA96C();
    }

    *(v4 + v7) = 0;
  }

  sub_21D0CF7E0(v4, &qword_27CE64A98, &unk_21DC36070);
  v8 = *(v6 + 56);
  v8(v4, 1, 1, v5);
  swift_endAccess();
  v8(v3, 1, 1, v5);
  sub_21DA00A10(v3);
  sub_21D0CF7E0(v3, &qword_27CE64A98, &unk_21DC36070);
}

uint64_t sub_21DA03424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA0348C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListTips(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TTRRemindersListTip(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21D1B795C;

  return sub_21DA01B34(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_21DA035F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21DA03680(uint64_t a1)
{
  sub_21DA03748(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21DA03748(uint64_t a1)
{
  if (!qword_280D0FE20)
  {
    type metadata accessor for TTRRemindersListCurrentTipCapability.TipState(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D0FE20);
    }
  }
}

char *sub_21DA037A0(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v8 = sub_21DBF8D7C();
    (*(*(v8 - 8) + 16))(&v3[v7], &a2[v7], v8);
    v9 = a3[6];
    v3[a3[5]] = a2[a3[5]];
    v3[v9] = a2[v9];
    *&v3[a3[7]] = *&a2[a3[7]];
  }

  return v3;
}

uint64_t sub_21DA03890(uint64_t a1)
{
  v2 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v3 = sub_21DBF8D7C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

_BYTE *sub_21DA03918(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v8] = a2[v8];
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

_BYTE *sub_21DA039C0(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[5]] = a2[a3[5]];
  a1[a3[6]] = a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

_BYTE *sub_21DA03A78(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v8] = a2[v8];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

_BYTE *sub_21DA03B1C(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v7 = sub_21DBF8D7C();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v8] = a2[v8];
  *&a1[a3[7]] = *&a2[a3[7]];

  return a1;
}

uint64_t sub_21DA03BF0(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListTips(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DA03C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98, &unk_21DC36070);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA03D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA03D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64A98, &unk_21DC36070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DA03DE8()
{
  result = qword_27CE64AB8;
  if (!qword_27CE64AB8)
  {
    v3 = sub_21DBF8D7C();
    result = swift_getWitnessTable(MEMORY[0x277CE1990], v3, v0, v1);
    atomic_store(result, &qword_27CE64AB8);
  }

  return result;
}

uint64_t TTRSECreateRemindersTreeViewModelUpdateContext.itemToStartEditing.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0) + 20);

  return sub_21D589C24(v4, a1);
}

uint64_t type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(uint64_t a1)
{
  result = qword_27CE64AC0;
  if (!qword_27CE64AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRSECreateRemindersTreeViewModelUpdateContext.init(itemToStartEditing:viewUpdateType:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a2;
  v4 = &a3[*(type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext(0) + 20)];

  return sub_21DA03F2C(a1, v4);
}

uint64_t sub_21DA03F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRSECreateRemindersTreeViewModelUpdateContext(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));

    return v3;
  }

  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v7, 1, v32))
            {
              v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(v6, v7, *(*(v34 - 8) + 64));
            }

            else
            {
              *v6 = *v7;
              v115 = v9;
              v43 = *(v32 + 20);
              v44 = sub_21DBF6C1C();
              v106 = *(*(v44 - 8) + 16);
              sub_21DBF8E0C();
              v45 = v6 + v43;
              v46 = v7 + v43;
              v9 = v115;
              v106(v45, v46, v44);
              (*(v33 + 56))(v6, 0, 1, v32);
            }

            v47 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v48 = (v6 + v47);
            v49 = (v7 + v47);
            v50 = v49[1];
            if (v50)
            {
              *v48 = *v49;
              v48[1] = v50;
              v51 = v49[2];
              v48[2] = v51;
              sub_21DBF8E0C();
              v52 = v51;
            }

            else
            {
              *v48 = *v49;
              v48[2] = v49[2];
            }

            goto LABEL_131;
          case 7:
            v38 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v39 = *(v38 - 8);
            if ((*(v39 + 48))(v7, 1, v38))
            {
              v40 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v6, v7, *(*(v40 - 8) + 64));
            }

            else
            {
              v54 = sub_21DBF563C();
              (*(*(v54 - 8) + 16))(v6, v7, v54);
              *(v6 + *(v38 + 20)) = *(v7 + *(v38 + 20));
              (*(v39 + 56))(v6, 0, 1, v38);
            }

            v55 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v6 + *(v55 + 20)) = *(v7 + *(v55 + 20));
            goto LABEL_131;
          case 8:
            *v6 = *v7;
            v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v15 = sub_21DBF8D7C();
            (*(*(v15 - 8) + 16))(v6 + v14, v7 + v14, v15);
LABEL_131:
            swift_storeEnumTagMultiPayload();
            goto LABEL_132;
        }

LABEL_37:
        memcpy(v6, v7, *(*(v12 - 8) + 64));
LABEL_132:
        *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
        (*(v9 + 56))(v6, 0, 1, v8);
        return v3;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v6 = *v7;
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 9) = *(v7 + 9);
        v24 = v7[2];
        v6[2] = v24;
        v25 = v24;
        goto LABEL_131;
      }

      v113 = v9;
      v35 = *v7;
      *v6 = *v7;
      v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = *(v20 - 8);
      v36 = *(v21 + 48);
      v37 = v35;
      if (v36(v7 + v19, 1, v20))
      {
LABEL_30:
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v6 + v19, v7 + v19, *(*(v31 - 8) + 64));
        v9 = v113;
        goto LABEL_131;
      }

      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 4)
      {
        if (v53 <= 7)
        {
          if (v53 == 5 || v53 == 6)
          {
            goto LABEL_116;
          }

          goto LABEL_129;
        }

        if (v53 != 8 && v53 != 9)
        {
          goto LABEL_129;
        }

LABEL_115:
        v93 = *(v7 + v19);
        *(v6 + v19) = v93;
        v94 = v93;
        swift_storeEnumTagMultiPayload();
LABEL_130:
        (*(v21 + 56))(v6 + v19, 0, 1, v20);
        goto LABEL_131;
      }

      if (v53 <= 2)
      {
        if (v53 != 1)
        {
          if (v53 == 2)
          {
            goto LABEL_116;
          }

LABEL_129:
          memcpy(v6 + v19, v7 + v19, *(v21 + 64));
          goto LABEL_130;
        }

        goto LABEL_115;
      }

LABEL_116:
      v95 = sub_21DBF563C();
      (*(*(v95 - 8) + 16))(v6 + v19, v7 + v19, v95);
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v113 = v9;
        v28 = *v7;
        *v6 = *v7;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        v29 = *(v21 + 48);
        v30 = v28;
        if (v29(v7 + v19, 1, v20))
        {
          goto LABEL_30;
        }

        v42 = swift_getEnumCaseMultiPayload();
        if (v42 > 4)
        {
          if (v42 <= 7)
          {
            if (v42 == 5 || v42 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v42 != 8 && v42 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v42 > 2)
        {
          goto LABEL_116;
        }

        if (v42 == 1)
        {
          goto LABEL_115;
        }

        if (v42 != 2)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v113 = v9;
        v18 = *v7;
        *v6 = *v7;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        v22 = *(v21 + 48);
        v23 = v18;
        if (v22(v7 + v19, 1, v20))
        {
          goto LABEL_30;
        }

        v41 = swift_getEnumCaseMultiPayload();
        if (v41 > 4)
        {
          if (v41 <= 7)
          {
            if (v41 == 5 || v41 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v41 != 8 && v41 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v41 > 2)
        {
          goto LABEL_116;
        }

        if (v41 == 1)
        {
          goto LABEL_115;
        }

        if (v41 != 2)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_116;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_37;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = swift_getEnumCaseMultiPayload();
      v112 = v9;
      v111 = v8;
      if (v17 <= 4)
      {
        if (v17 > 2)
        {
LABEL_67:
          v56 = sub_21DBF563C();
          (*(*(v56 - 8) + 16))(v6, v7, v56);
          swift_storeEnumTagMultiPayload();
          goto LABEL_94;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            goto LABEL_67;
          }

          goto LABEL_93;
        }

LABEL_70:
        v57 = *v7;
        *v6 = *v7;
        v58 = v57;
        swift_storeEnumTagMultiPayload();
        goto LABEL_94;
      }

      if (v17 > 7)
      {
        if (v17 == 8 || v17 == 9)
        {
          goto LABEL_70;
        }
      }

      else if (v17 == 5 || v17 == 6)
      {
        goto LABEL_67;
      }

LABEL_93:
      memcpy(v6, v7, *(*(v16 - 8) + 64));
LABEL_94:
      v62 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v63 = v62[5];
      v64 = v6 + v63;
      v65 = v7 + v63;
      v66 = *(v7 + v63 + 8);
      if (v66)
      {
        v103 = v6;
        *v64 = *v65;
        *(v64 + 1) = v66;
        v67 = *(v65 + 2);
        v68 = *(v65 + 3);
        v70 = *(v65 + 4);
        v69 = *(v65 + 5);
        v71 = *(v65 + 6);
        v99 = *(v65 + 7);
        v107 = v65[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v67, v68, v70, v69, v71, v99, v107);
        *(v64 + 2) = v67;
        *(v64 + 3) = v68;
        *(v64 + 4) = v70;
        *(v64 + 5) = v69;
        *(v64 + 6) = v71;
        *(v64 + 7) = v99;
        v64[64] = v107;
        *(v64 + 65) = *(v65 + 65);
        v72 = v65[120];
        if (v72 == 255)
        {
          *(v64 + 72) = *(v65 + 72);
          *(v64 + 88) = *(v65 + 88);
          *(v64 + 104) = *(v65 + 104);
          v64[120] = v65[120];
        }

        else
        {
          v73 = *(v65 + 9);
          v74 = *(v65 + 10);
          v75 = *(v65 + 12);
          v108 = *(v65 + 11);
          v76 = *(v65 + 13);
          v100 = *(v65 + 14);
          v77 = v72 & 1;
          sub_21D0FB960(v73, v74, v108, v75, v76, v100, v72 & 1);
          *(v64 + 9) = v73;
          *(v64 + 10) = v74;
          *(v64 + 11) = v108;
          *(v64 + 12) = v75;
          *(v64 + 13) = v76;
          *(v64 + 14) = v100;
          v64[120] = v77;
        }

        v8 = v111;
        v9 = v112;
        v64[121] = v65[121];
        v6 = v103;
        goto LABEL_100;
      }

LABEL_97:
      v78 = *(v65 + 5);
      *(v64 + 4) = *(v65 + 4);
      *(v64 + 5) = v78;
      *(v64 + 6) = *(v65 + 6);
      *(v64 + 106) = *(v65 + 106);
      v79 = *(v65 + 1);
      *v64 = *v65;
      *(v64 + 1) = v79;
      v80 = *(v65 + 3);
      *(v64 + 2) = *(v65 + 2);
      *(v64 + 3) = v80;
LABEL_100:
      *(v6 + v62[6]) = *(v7 + v62[6]);
      *(v6 + v62[7]) = *(v7 + v62[7]);
      *(v6 + v62[8]) = *(v7 + v62[8]);
      *(v6 + v62[9]) = *(v7 + v62[9]);
      *(v6 + v62[10]) = *(v7 + v62[10]);
      v81 = v62[11];
      v82 = *(v7 + v81);
      *(v6 + v81) = v82;
      v83 = v82;
      goto LABEL_131;
    }

    v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v27 = swift_getEnumCaseMultiPayload();
    v114 = v9;
    if (v27 <= 4)
    {
      if (v27 > 2)
      {
LABEL_71:
        v59 = sub_21DBF563C();
        (*(*(v59 - 8) + 16))(v6, v7, v59);
        swift_storeEnumTagMultiPayload();
        goto LABEL_102;
      }

      if (v27 != 1)
      {
        if (v27 == 2)
        {
          goto LABEL_71;
        }

        goto LABEL_101;
      }

LABEL_74:
      v60 = *v7;
      *v6 = *v7;
      v61 = v60;
      swift_storeEnumTagMultiPayload();
      goto LABEL_102;
    }

    if (v27 > 7)
    {
      if (v27 == 8 || v27 == 9)
      {
        goto LABEL_74;
      }
    }

    else if (v27 == 5 || v27 == 6)
    {
      goto LABEL_71;
    }

LABEL_101:
    memcpy(v6, v7, *(*(v26 - 8) + 64));
LABEL_102:
    v62 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v84 = v62[5];
    v64 = v6 + v84;
    v65 = v7 + v84;
    v85 = *(v7 + v84 + 8);
    if (v85)
    {
      *v64 = *v65;
      *(v64 + 1) = v85;
      v86 = *(v65 + 2);
      v87 = *(v65 + 3);
      v88 = *(v65 + 4);
      v97 = *(v65 + 5);
      v104 = *(v65 + 7);
      v109 = *(v65 + 6);
      v101 = v65[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v86, v87, v88, v97, v109, v104, v101);
      *(v64 + 2) = v86;
      *(v64 + 3) = v87;
      *(v64 + 4) = v88;
      *(v64 + 5) = v97;
      *(v64 + 6) = v109;
      *(v64 + 7) = v104;
      v64[64] = v101;
      *(v64 + 65) = *(v65 + 65);
      v89 = v65[120];
      if (v89 == 255)
      {
        *(v64 + 72) = *(v65 + 72);
        *(v64 + 88) = *(v65 + 88);
        *(v64 + 104) = *(v65 + 104);
        v64[120] = v65[120];
      }

      else
      {
        v105 = *(v65 + 10);
        v110 = *(v65 + 9);
        v90 = *(v65 + 12);
        v91 = *(v65 + 13);
        v98 = *(v65 + 14);
        v102 = *(v65 + 11);
        v92 = v89 & 1;
        sub_21D0FB960(v110, v105, v102, v90, v91, v98, v89 & 1);
        *(v64 + 9) = v110;
        *(v64 + 10) = v105;
        *(v64 + 11) = v102;
        *(v64 + 12) = v90;
        *(v64 + 13) = v91;
        *(v64 + 14) = v98;
        v64[120] = v92;
      }

      v9 = v114;
      v64[121] = v65[121];
      goto LABEL_100;
    }

    goto LABEL_97;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  memcpy(v6, v7, *(*(v10 - 8) + 64));
  return v3;
}

void destroy for TTRSECreateRemindersTreeViewModelUpdateContext(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_39;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
LABEL_43:
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v22 = v2 + *(v21 + 20);
          if (*(v22 + 8))
          {

            sub_21D179EF0(*(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64));
            v23 = *(v22 + 120);
            if (v23 != 255)
            {
              sub_21D1078C0(*(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), v23 & 1);
            }
          }

          v10 = *(v2 + *(v21 + 44));
          goto LABEL_47;
        }

LABEL_39:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v2, v20);
        goto LABEL_43;
      }
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v10 = *(v2 + 16);
LABEL_47:

      return;
    }

LABEL_19:

    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v12 - 8) + 48))(v2 + v11, 1, v12))
    {
      return;
    }

    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 4)
    {
      if (v13 <= 7)
      {
        if (v13 != 5 && v13 != 6)
        {
          return;
        }

        goto LABEL_50;
      }

      if (v13 != 8 && v13 != 9)
      {
        return;
      }
    }

    else
    {
      if (v13 > 2)
      {
LABEL_50:
        v6 = sub_21DBF563C();
        v7 = *(*(v6 - 8) + 8);
        v8 = v2 + v11;
LABEL_51:

        v7(v8, v6);
        return;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          return;
        }

        goto LABEL_50;
      }
    }

    v10 = *(v2 + v11);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v18 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v18 - 8) + 48))(v2, 1, v18))
      {
        return;
      }

      v19 = sub_21DBF563C();
      v7 = *(*(v19 - 8) + 8);
      v6 = v19;
      v8 = v2;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        return;
      }

      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      v7 = *(*(v6 - 8) + 8);
      v8 = v2 + v5;
    }

    goto LABEL_51;
  }

  v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v14 - 8) + 48))(v2, 1, v14))
  {

    v15 = *(v14 + 20);
    v16 = sub_21DBF6C1C();
    (*(*(v16 - 8) + 8))(v2 + v15, v16);
  }

  v17 = v2 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v17 + 8))
  {

    v10 = *(v17 + 16);
    goto LABEL_47;
  }
}

_BYTE *initializeWithCopy for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v30 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v31 = *(v30 - 8);
            if ((*(v31 + 48))(v6, 1, v30))
            {
              v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(v5, v6, *(*(v32 - 8) + 64));
            }

            else
            {
              *v5 = *v6;
              v114 = v8;
              v41 = *(v30 + 20);
              v42 = sub_21DBF6C1C();
              v105 = *(*(v42 - 8) + 16);
              sub_21DBF8E0C();
              v43 = v5 + v41;
              v44 = v6 + v41;
              v8 = v114;
              v105(v43, v44, v42);
              (*(v31 + 56))(v5, 0, 1, v30);
            }

            v45 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v46 = (v5 + v45);
            v47 = (v6 + v45);
            v48 = v47[1];
            if (v48)
            {
              *v46 = *v47;
              v46[1] = v48;
              v49 = v47[2];
              v46[2] = v49;
              sub_21DBF8E0C();
              v50 = v49;
            }

            else
            {
              *v46 = *v47;
              v46[2] = v47[2];
            }

            goto LABEL_129;
          case 7:
            v36 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v37 = *(v36 - 8);
            if ((*(v37 + 48))(v6, 1, v36))
            {
              v38 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v5, v6, *(*(v38 - 8) + 64));
            }

            else
            {
              v52 = sub_21DBF563C();
              (*(*(v52 - 8) + 16))(v5, v6, v52);
              *(v5 + *(v36 + 20)) = *(v6 + *(v36 + 20));
              (*(v37 + 56))(v5, 0, 1, v36);
            }

            v53 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v5 + *(v53 + 20)) = *(v6 + *(v53 + 20));
            goto LABEL_129;
          case 8:
            *v5 = *v6;
            v12 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v13 = sub_21DBF8D7C();
            (*(*(v13 - 8) + 16))(v5 + v12, v6 + v12, v13);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(v5, v6, *(*(v10 - 8) + 64));
LABEL_130:
        *(v5 + *(v7 + 48)) = *(v6 + *(v7 + 48));
        (*(v8 + 56))(v5, 0, 1, v7);
        return v3;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v5 = *v6;
        *(v5 + 8) = *(v6 + 8);
        *(v5 + 9) = *(v6 + 9);
        v22 = v6[2];
        v5[2] = v22;
        v23 = v22;
        goto LABEL_129;
      }

      v112 = v8;
      v33 = *v6;
      *v5 = *v6;
      v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v19 = *(v18 - 8);
      v34 = *(v19 + 48);
      v35 = v33;
      if (v34(v6 + v17, 1, v18))
      {
LABEL_28:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v5 + v17, v6 + v17, *(*(v29 - 8) + 64));
        v8 = v112;
        goto LABEL_129;
      }

      v51 = swift_getEnumCaseMultiPayload();
      if (v51 > 4)
      {
        if (v51 <= 7)
        {
          if (v51 == 5 || v51 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v51 != 8 && v51 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v93 = *(v6 + v17);
        *(v5 + v17) = v93;
        v94 = v93;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v19 + 56))(v5 + v17, 0, 1, v18);
        goto LABEL_129;
      }

      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          if (v51 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(v5 + v17, v6 + v17, *(v19 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v95 = sub_21DBF563C();
      (*(*(v95 - 8) + 16))(v5 + v17, v6 + v17, v95);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v112 = v8;
        v26 = *v6;
        *v5 = *v6;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        v27 = *(v19 + 48);
        v28 = v26;
        if (v27(v6 + v17, 1, v18))
        {
          goto LABEL_28;
        }

        v40 = swift_getEnumCaseMultiPayload();
        if (v40 > 4)
        {
          if (v40 <= 7)
          {
            if (v40 == 5 || v40 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v40 != 8 && v40 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v40 > 2)
        {
          goto LABEL_114;
        }

        if (v40 == 1)
        {
          goto LABEL_113;
        }

        if (v40 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v112 = v8;
        v16 = *v6;
        *v5 = *v6;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        v20 = *(v19 + 48);
        v21 = v16;
        if (v20(v6 + v17, 1, v18))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = swift_getEnumCaseMultiPayload();
      v111 = v8;
      v109 = v3;
      v110 = v7;
      if (v15 <= 4)
      {
        if (v15 > 2)
        {
LABEL_65:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 16))(v5, v6, v54);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v15 != 1)
        {
          if (v15 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v55 = *v6;
        *v5 = *v6;
        v56 = v55;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v15 > 7)
      {
        if (v15 == 8 || v15 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v15 == 5 || v15 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(v5, v6, *(*(v14 - 8) + 64));
LABEL_92:
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v61 = v60[5];
      v62 = v5 + v61;
      v63 = v6 + v61;
      v64 = *(v6 + v61 + 8);
      if (v64)
      {
        v106 = v5;
        *v62 = *v63;
        *(v62 + 1) = v64;
        v65 = *(v63 + 2);
        v66 = *(v63 + 3);
        v68 = *(v63 + 4);
        v67 = *(v63 + 5);
        v69 = *(v63 + 6);
        v70 = *(v63 + 7);
        v101 = v63[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v68, v67, v69, v70, v101);
        *(v62 + 2) = v65;
        *(v62 + 3) = v66;
        *(v62 + 4) = v68;
        *(v62 + 5) = v67;
        *(v62 + 6) = v69;
        *(v62 + 7) = v70;
        v62[64] = v101;
        *(v62 + 65) = *(v63 + 65);
        v71 = v63[120];
        if (v71 == 255)
        {
          *(v62 + 72) = *(v63 + 72);
          *(v62 + 88) = *(v63 + 88);
          *(v62 + 104) = *(v63 + 104);
          v62[120] = v63[120];
        }

        else
        {
          v72 = *(v63 + 9);
          v73 = *(v63 + 10);
          v74 = *(v63 + 11);
          v75 = *(v63 + 12);
          v76 = *(v63 + 13);
          v102 = *(v63 + 14);
          v77 = v71 & 1;
          sub_21D0FB960(v72, v73, v74, v75, v76, v102, v71 & 1);
          *(v62 + 9) = v72;
          *(v62 + 10) = v73;
          *(v62 + 11) = v74;
          *(v62 + 12) = v75;
          *(v62 + 13) = v76;
          *(v62 + 14) = v102;
          v62[120] = v77;
        }

        v7 = v110;
        v8 = v111;
        v5 = v106;
        v3 = v109;
        v62[121] = v63[121];
        goto LABEL_98;
      }

LABEL_95:
      v78 = *(v63 + 5);
      *(v62 + 4) = *(v63 + 4);
      *(v62 + 5) = v78;
      *(v62 + 6) = *(v63 + 6);
      *(v62 + 106) = *(v63 + 106);
      v79 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v79;
      v80 = *(v63 + 3);
      *(v62 + 2) = *(v63 + 2);
      *(v62 + 3) = v80;
LABEL_98:
      *(v5 + v60[6]) = *(v6 + v60[6]);
      *(v5 + v60[7]) = *(v6 + v60[7]);
      *(v5 + v60[8]) = *(v6 + v60[8]);
      *(v5 + v60[9]) = *(v6 + v60[9]);
      *(v5 + v60[10]) = *(v6 + v60[10]);
      v81 = v60[11];
      v82 = *(v6 + v81);
      *(v5 + v81) = v82;
      v83 = v82;
      goto LABEL_129;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    v113 = v8;
    if (v25 <= 4)
    {
      if (v25 > 2)
      {
LABEL_69:
        v57 = sub_21DBF563C();
        (*(*(v57 - 8) + 16))(v5, v6, v57);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v58 = *v6;
      *v5 = *v6;
      v59 = v58;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v25 > 7)
    {
      if (v25 == 8 || v25 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v25 == 5 || v25 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(v5, v6, *(*(v24 - 8) + 64));
LABEL_100:
    v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v84 = v60[5];
    v62 = v5 + v84;
    v63 = v6 + v84;
    v85 = *(v6 + v84 + 8);
    if (v85)
    {
      *v62 = *v63;
      *(v62 + 1) = v85;
      v86 = *(v63 + 2);
      v87 = *(v63 + 3);
      v88 = *(v63 + 4);
      v97 = *(v63 + 5);
      v103 = *(v63 + 7);
      v107 = *(v63 + 6);
      v99 = v63[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v86, v87, v88, v97, v107, v103, v99);
      *(v62 + 2) = v86;
      *(v62 + 3) = v87;
      *(v62 + 4) = v88;
      *(v62 + 5) = v97;
      *(v62 + 6) = v107;
      *(v62 + 7) = v103;
      v62[64] = v99;
      *(v62 + 65) = *(v63 + 65);
      v89 = v63[120];
      if (v89 == 255)
      {
        *(v62 + 72) = *(v63 + 72);
        *(v62 + 88) = *(v63 + 88);
        *(v62 + 104) = *(v63 + 104);
        v62[120] = v63[120];
      }

      else
      {
        v104 = *(v63 + 10);
        v108 = *(v63 + 9);
        v90 = *(v63 + 12);
        v91 = *(v63 + 13);
        v98 = *(v63 + 14);
        v100 = *(v63 + 11);
        v92 = v89 & 1;
        sub_21D0FB960(v108, v104, v100, v90, v91, v98, v89 & 1);
        *(v62 + 9) = v108;
        *(v62 + 10) = v104;
        *(v62 + 11) = v100;
        *(v62 + 12) = v90;
        *(v62 + 13) = v91;
        *(v62 + 14) = v98;
        v62[120] = v92;
      }

      v8 = v113;
      v62[121] = v63[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  memcpy(v5, v6, *(*(v9 - 8) + 64));
  return v3;
}

_BYTE *assignWithCopy for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a1;
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21DA0A138(v6);
      goto LABEL_11;
    }

    if (v4 == a2)
    {
LABEL_269:
      *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
      return v4;
    }

    sub_21D24B040(v6);
    v18 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v72 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v73 = *(v72 - 8);
            if ((*(v73 + 48))(v7, 1, v72))
            {
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(v6, v7, *(*(v74 - 8) + 64));
            }

            else
            {
              *v6 = *v7;
              v101 = *(v72 + 20);
              v102 = sub_21DBF6C1C();
              v229 = *(*(v102 - 8) + 16);
              sub_21DBF8E0C();
              v229(v6 + v101, v7 + v101, v102);
              (*(v73 + 56))(v6, 0, 1, v72);
            }

            v103 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v104 = (v6 + v103);
            v105 = (v7 + v103);
            if (v105[1])
            {
              *v104 = *v105;
              v104[1] = v105[1];
              v106 = v105[2];
              v104[2] = v106;
              sub_21DBF8E0C();
              v107 = v106;
            }

            else
            {
              v108 = *v105;
              v104[2] = v105[2];
              *v104 = v108;
            }

            goto LABEL_268;
          case 7:
            v88 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v89 = *(v88 - 8);
            if ((*(v89 + 48))(v7, 1, v88))
            {
              v90 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v6, v7, *(*(v90 - 8) + 64));
            }

            else
            {
              v110 = sub_21DBF563C();
              (*(*(v110 - 8) + 16))(v6, v7, v110);
              *(v6 + *(v88 + 20)) = *(v7 + *(v88 + 20));
              (*(v89 + 56))(v6, 0, 1, v88);
            }

            v111 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v6 + *(v111 + 20)) = *(v7 + *(v111 + 20));
            goto LABEL_268;
          case 8:
            *v6 = *v7;
            v20 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v21 = sub_21DBF8D7C();
            (*(*(v21 - 8) + 16))(v6 + v20, v7 + v20, v21);
LABEL_268:
            swift_storeEnumTagMultiPayload();
            goto LABEL_269;
        }

        goto LABEL_102;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v6 = *v7;
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 9) = *(v7 + 9);
        *(v6 + 10) = *(v7 + 10);
        v63 = v7[2];
        v6[2] = v63;
        v64 = v63;
        goto LABEL_268;
      }

      v84 = *v7;
      *v6 = *v7;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      v85 = *(v60 + 48);
      v86 = v84;
      if (v85(v7 + v58, 1, v59))
      {
LABEL_97:
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v6 + v58, v7 + v58, *(*(v87 - 8) + 64));
        goto LABEL_268;
      }

      v109 = swift_getEnumCaseMultiPayload();
      if (v109 > 4)
      {
        if (v109 <= 7)
        {
          if (v109 == 5 || v109 == 6)
          {
            goto LABEL_253;
          }

          goto LABEL_266;
        }

        if (v109 != 8 && v109 != 9)
        {
          goto LABEL_266;
        }

LABEL_252:
        v201 = *(v7 + v58);
        *(v6 + v58) = v201;
        v202 = v201;
        swift_storeEnumTagMultiPayload();
LABEL_267:
        (*(v60 + 56))(v6 + v58, 0, 1, v59);
        goto LABEL_268;
      }

      if (v109 <= 2)
      {
        if (v109 != 1)
        {
          if (v109 == 2)
          {
            goto LABEL_253;
          }

LABEL_266:
          memcpy(v6 + v58, v7 + v58, *(v60 + 64));
          goto LABEL_267;
        }

        goto LABEL_252;
      }

LABEL_253:
      v203 = sub_21DBF563C();
      (*(*(v203 - 8) + 16))(v6 + v58, v7 + v58, v203);
      swift_storeEnumTagMultiPayload();
      goto LABEL_267;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v69 = *v7;
        *v6 = *v7;
        v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v60 = *(v59 - 8);
        v70 = *(v60 + 48);
        v71 = v69;
        if (v70(v7 + v58, 1, v59))
        {
          goto LABEL_97;
        }

        v100 = swift_getEnumCaseMultiPayload();
        if (v100 > 4)
        {
          if (v100 <= 7)
          {
            if (v100 == 5 || v100 == 6)
            {
              goto LABEL_253;
            }

            goto LABEL_266;
          }

          if (v100 != 8 && v100 != 9)
          {
            goto LABEL_266;
          }

          goto LABEL_252;
        }

        if (v100 > 2)
        {
          goto LABEL_253;
        }

        if (v100 == 1)
        {
          goto LABEL_252;
        }

        if (v100 != 2)
        {
          goto LABEL_266;
        }
      }

      else
      {
        v57 = *v7;
        *v6 = *v7;
        v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        v62 = v57;
        if (v61(v7 + v58, 1, v59))
        {
          goto LABEL_97;
        }

        v99 = swift_getEnumCaseMultiPayload();
        if (v99 > 4)
        {
          if (v99 <= 7)
          {
            if (v99 == 5 || v99 == 6)
            {
              goto LABEL_253;
            }

            goto LABEL_266;
          }

          if (v99 != 8 && v99 != 9)
          {
            goto LABEL_266;
          }

          goto LABEL_252;
        }

        if (v99 > 2)
        {
          goto LABEL_253;
        }

        if (v99 == 1)
        {
          goto LABEL_252;
        }

        if (v99 != 2)
        {
          goto LABEL_266;
        }
      }

      goto LABEL_253;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_102:
        memcpy(v6, v7, *(*(v18 - 8) + 64));
        goto LABEL_269;
      }

      v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 4)
      {
        if (v34 > 2)
        {
LABEL_173:
          v152 = sub_21DBF563C();
          (*(*(v152 - 8) + 16))(v6, v7, v152);
          swift_storeEnumTagMultiPayload();
          goto LABEL_221;
        }

        if (v34 != 1)
        {
          if (v34 == 2)
          {
            goto LABEL_173;
          }

          goto LABEL_220;
        }

LABEL_177:
        v154 = *v7;
        *v6 = *v7;
        v155 = v154;
        swift_storeEnumTagMultiPayload();
        goto LABEL_221;
      }

      if (v34 > 7)
      {
        if (v34 == 8 || v34 == 9)
        {
          goto LABEL_177;
        }
      }

      else if (v34 == 5 || v34 == 6)
      {
        goto LABEL_173;
      }

LABEL_220:
      memcpy(v6, v7, *(*(v33 - 8) + 64));
LABEL_221:
      v167 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v168 = v167[5];
      v169 = v6 + v168;
      v170 = v7 + v168;
      if (*(v7 + v168 + 8))
      {
        *v169 = *v170;
        *(v169 + 1) = *(v170 + 1);
        v171 = *(v170 + 2);
        v172 = *(v170 + 3);
        v173 = *(v170 + 4);
        v209 = *(v170 + 5);
        v224 = *(v170 + 7);
        v232 = *(v170 + 6);
        v217 = v170[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v171, v172, v173, v209, v232, v224, v217);
        *(v169 + 2) = v171;
        *(v169 + 3) = v172;
        *(v169 + 4) = v173;
        *(v169 + 5) = v209;
        *(v169 + 6) = v232;
        *(v169 + 7) = v224;
        v169[64] = v217;
        v169[65] = v170[65];
        v169[66] = v170[66];
        v169[67] = v170[67];
        v169[68] = v170[68];
        v174 = v170[120];
        if (v174 == 255)
        {
          v184 = *(v170 + 72);
          v185 = *(v170 + 88);
          v186 = *(v170 + 104);
          v169[120] = v170[120];
          *(v169 + 104) = v186;
          *(v169 + 88) = v185;
          *(v169 + 72) = v184;
        }

        else
        {
          v225 = *(v170 + 10);
          v233 = *(v170 + 9);
          v175 = *(v170 + 12);
          v176 = *(v170 + 13);
          v210 = *(v170 + 14);
          v218 = *(v170 + 11);
          v177 = v174 & 1;
          sub_21D0FB960(v233, v225, v218, v175, v176, v210, v174 & 1);
          *(v169 + 9) = v233;
          *(v169 + 10) = v225;
          *(v169 + 11) = v218;
          *(v169 + 12) = v175;
          *(v169 + 13) = v176;
          *(v169 + 14) = v210;
          v169[120] = v177;
        }

        v169[121] = v170[121];
        goto LABEL_227;
      }

LABEL_224:
      v178 = *v170;
      v179 = *(v170 + 1);
      v180 = *(v170 + 3);
      *(v169 + 2) = *(v170 + 2);
      *(v169 + 3) = v180;
      *v169 = v178;
      *(v169 + 1) = v179;
      v181 = *(v170 + 4);
      v182 = *(v170 + 5);
      v183 = *(v170 + 6);
      *(v169 + 106) = *(v170 + 106);
      *(v169 + 5) = v182;
      *(v169 + 6) = v183;
      *(v169 + 4) = v181;
LABEL_227:
      *(v6 + v167[6]) = *(v7 + v167[6]);
      *(v6 + v167[7]) = *(v7 + v167[7]);
      *(v6 + v167[8]) = *(v7 + v167[8]);
      *(v6 + v167[9]) = *(v7 + v167[9]);
      *(v6 + v167[10]) = *(v7 + v167[10]);
      v187 = v167[11];
      v188 = *(v7 + v187);
      *(v6 + v187) = v188;
      v189 = v188;
      goto LABEL_268;
    }

    v66 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v67 = swift_getEnumCaseMultiPayload();
    if (v67 <= 4)
    {
      if (v67 > 2)
      {
LABEL_181:
        v158 = sub_21DBF563C();
        (*(*(v158 - 8) + 16))(v6, v7, v158);
        swift_storeEnumTagMultiPayload();
        goto LABEL_232;
      }

      if (v67 != 1)
      {
        if (v67 == 2)
        {
          goto LABEL_181;
        }

        goto LABEL_231;
      }

LABEL_185:
      v160 = *v7;
      *v6 = *v7;
      v161 = v160;
      swift_storeEnumTagMultiPayload();
      goto LABEL_232;
    }

    if (v67 > 7)
    {
      if (v67 == 8 || v67 == 9)
      {
        goto LABEL_185;
      }
    }

    else if (v67 == 5 || v67 == 6)
    {
      goto LABEL_181;
    }

LABEL_231:
    memcpy(v6, v7, *(*(v66 - 8) + 64));
LABEL_232:
    v167 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v190 = v167[5];
    v169 = v6 + v190;
    v170 = v7 + v190;
    if (*(v7 + v190 + 8))
    {
      *v169 = *v170;
      *(v169 + 1) = *(v170 + 1);
      v191 = *(v170 + 2);
      v192 = *(v170 + 3);
      v193 = *(v170 + 4);
      v211 = *(v170 + 5);
      v226 = *(v170 + 7);
      v234 = *(v170 + 6);
      v219 = v170[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v191, v192, v193, v211, v234, v226, v219);
      *(v169 + 2) = v191;
      *(v169 + 3) = v192;
      *(v169 + 4) = v193;
      *(v169 + 5) = v211;
      *(v169 + 6) = v234;
      *(v169 + 7) = v226;
      v169[64] = v219;
      v169[65] = v170[65];
      v169[66] = v170[66];
      v169[67] = v170[67];
      v169[68] = v170[68];
      v194 = v170[120];
      if (v194 == 255)
      {
        v198 = *(v170 + 72);
        v199 = *(v170 + 88);
        v200 = *(v170 + 104);
        v169[120] = v170[120];
        *(v169 + 104) = v200;
        *(v169 + 88) = v199;
        *(v169 + 72) = v198;
      }

      else
      {
        v227 = *(v170 + 10);
        v235 = *(v170 + 9);
        v195 = *(v170 + 12);
        v196 = *(v170 + 13);
        v212 = *(v170 + 14);
        v220 = *(v170 + 11);
        v197 = v194 & 1;
        sub_21D0FB960(v235, v227, v220, v195, v196, v212, v194 & 1);
        *(v169 + 9) = v235;
        *(v169 + 10) = v227;
        *(v169 + 11) = v220;
        *(v169 + 12) = v195;
        *(v169 + 13) = v196;
        *(v169 + 14) = v212;
        v169[120] = v197;
      }

      v169[121] = v170[121];
      goto LABEL_227;
    }

    goto LABEL_224;
  }

  if (!v12)
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 3)
    {
      if (v14 > 5)
      {
        switch(v14)
        {
          case 6:
            v44 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v45 = *(v44 - 8);
            if ((*(v45 + 48))(v7, 1, v44))
            {
              v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(v6, v7, *(*(v46 - 8) + 64));
            }

            else
            {
              *v6 = *v7;
              v75 = *(v44 + 20);
              v76 = sub_21DBF6C1C();
              v228 = *(*(v76 - 8) + 16);
              sub_21DBF8E0C();
              v228(v6 + v75, v7 + v75, v76);
              (*(v45 + 56))(v6, 0, 1, v44);
            }

            v77 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v78 = (v6 + v77);
            v79 = (v7 + v77);
            if (v79[1])
            {
              *v78 = *v79;
              v78[1] = v79[1];
              v80 = v79[2];
              v78[2] = v80;
              sub_21DBF8E0C();
              v81 = v80;
            }

            else
            {
              v82 = *v79;
              v78[2] = v79[2];
              *v78 = v82;
            }

            swift_storeEnumTagMultiPayload();
            goto LABEL_244;
          case 7:
            v54 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v55 = *(v54 - 8);
            if ((*(v55 + 48))(v7, 1, v54))
            {
              v56 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v6, v7, *(*(v56 - 8) + 64));
            }

            else
            {
              v91 = sub_21DBF563C();
              (*(*(v91 - 8) + 16))(v6, v7, v91);
              *(v6 + *(v54 + 20)) = *(v7 + *(v54 + 20));
              (*(v55 + 56))(v6, 0, 1, v54);
            }

            v92 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v6 + *(v92 + 20)) = *(v7 + *(v92 + 20));
            swift_storeEnumTagMultiPayload();
            goto LABEL_244;
          case 8:
            *v6 = *v7;
            v15 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v16 = sub_21DBF8D7C();
            (*(*(v16 - 8) + 16))(v6 + v15, v7 + v15, v16);
            swift_storeEnumTagMultiPayload();
LABEL_244:
            *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
            (*(v9 + 56))(v6, 0, 1, v8);
            return v4;
        }

LABEL_53:
        memcpy(v6, v7, *(*(v13 - 8) + 64));
        goto LABEL_244;
      }

      if (v14 != 4)
      {
        *v6 = *v7;
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 9) = *(v7 + 9);
        *(v6 + 10) = *(v7 + 10);
        v31 = v7[2];
        v6[2] = v31;
        v32 = v31;
        swift_storeEnumTagMultiPayload();
        goto LABEL_244;
      }

      v240 = v4;
      v47 = *v7;
      *v6 = *v7;
      v48 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v52 = v47;
      if (v51(v7 + v48, 1, v49))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v6 + v48, v7 + v48, *(*(v53 - 8) + 64));
LABEL_243:
        swift_storeEnumTagMultiPayload();
        v4 = v240;
        goto LABEL_244;
      }

      v83 = swift_getEnumCaseMultiPayload();
      if (v83 > 4)
      {
        if (v83 <= 7)
        {
          if (v83 == 5 || v83 == 6)
          {
            goto LABEL_189;
          }

          goto LABEL_241;
        }

        if (v83 != 8 && v83 != 9)
        {
          goto LABEL_241;
        }
      }

      else
      {
        if (v83 > 2)
        {
LABEL_189:
          v164 = sub_21DBF563C();
          (*(*(v164 - 8) + 16))(v6 + v48, v7 + v48, v164);
          swift_storeEnumTagMultiPayload();
LABEL_242:
          (*(v50 + 56))(v6 + v48, 0, 1, v49);
          goto LABEL_243;
        }

        if (v83 != 1)
        {
          if (v83 == 2)
          {
            goto LABEL_189;
          }

LABEL_241:
          memcpy(v6 + v48, v7 + v48, *(v50 + 64));
          goto LABEL_242;
        }
      }

      v165 = *(v7 + v48);
      *(v6 + v48) = v165;
      v166 = v165;
      swift_storeEnumTagMultiPayload();
      goto LABEL_242;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_53;
        }

        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = swift_getEnumCaseMultiPayload();
        v238 = v4;
        v236 = v8;
        if (v23 <= 4)
        {
          if (v23 > 2)
          {
LABEL_103:
            v93 = sub_21DBF563C();
            (*(*(v93 - 8) + 16))(v6, v7, v93);
            swift_storeEnumTagMultiPayload();
            goto LABEL_159;
          }

          if (v23 != 1)
          {
            if (v23 == 2)
            {
              goto LABEL_103;
            }

            goto LABEL_158;
          }

LABEL_106:
          v94 = *v7;
          *v6 = *v7;
          v95 = v94;
          swift_storeEnumTagMultiPayload();
          goto LABEL_159;
        }

        if (v23 > 7)
        {
          if (v23 == 8 || v23 == 9)
          {
            goto LABEL_106;
          }
        }

        else if (v23 == 5 || v23 == 6)
        {
          goto LABEL_103;
        }

LABEL_158:
        memcpy(v6, v7, *(*(v22 - 8) + 64));
LABEL_159:
        v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v113 = v112[5];
        v114 = v6 + v113;
        v115 = v7 + v113;
        if (*(v7 + v113 + 8))
        {
          v221 = v6;
          v230 = v7;
          *v114 = *v115;
          *(v114 + 1) = *(v115 + 1);
          v116 = *(v115 + 2);
          v117 = *(v115 + 3);
          v119 = *(v115 + 4);
          v118 = *(v115 + 5);
          v121 = *(v115 + 6);
          v120 = *(v115 + 7);
          v213 = v115[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v116, v117, v119, v118, v121, v120, v213);
          *(v114 + 2) = v116;
          *(v114 + 3) = v117;
          *(v114 + 4) = v119;
          *(v114 + 5) = v118;
          *(v114 + 6) = v121;
          *(v114 + 7) = v120;
          v114[64] = v213;
          v114[65] = v115[65];
          v114[66] = v115[66];
          v114[67] = v115[67];
          v114[68] = v115[68];
          v122 = v115[120];
          if (v122 == 255)
          {
            v135 = *(v115 + 72);
            v136 = *(v115 + 88);
            v137 = *(v115 + 104);
            v114[120] = v115[120];
            *(v114 + 104) = v137;
            *(v114 + 88) = v136;
            *(v114 + 72) = v135;
          }

          else
          {
            v123 = *(v115 + 9);
            v124 = *(v115 + 10);
            v125 = *(v115 + 11);
            v126 = *(v115 + 12);
            v127 = *(v115 + 13);
            v214 = *(v115 + 14);
            v128 = v122 & 1;
            sub_21D0FB960(v123, v124, v125, v126, v127, v214, v122 & 1);
            *(v114 + 9) = v123;
            *(v114 + 10) = v124;
            *(v114 + 11) = v125;
            *(v114 + 12) = v126;
            *(v114 + 13) = v127;
            *(v114 + 14) = v214;
            v114[120] = v128;
          }

          v4 = v238;
          v7 = v230;
          v8 = v236;
          v114[121] = v115[121];
          v6 = v221;
          goto LABEL_165;
        }

LABEL_162:
        v129 = *v115;
        v130 = *(v115 + 1);
        v131 = *(v115 + 3);
        *(v114 + 2) = *(v115 + 2);
        *(v114 + 3) = v131;
        *v114 = v129;
        *(v114 + 1) = v130;
        v132 = *(v115 + 4);
        v133 = *(v115 + 5);
        v134 = *(v115 + 6);
        *(v114 + 106) = *(v115 + 106);
        *(v114 + 5) = v133;
        *(v114 + 6) = v134;
        *(v114 + 4) = v132;
LABEL_165:
        *(v6 + v112[6]) = *(v7 + v112[6]);
        *(v6 + v112[7]) = *(v7 + v112[7]);
        *(v6 + v112[8]) = *(v7 + v112[8]);
        *(v6 + v112[9]) = *(v7 + v112[9]);
        *(v6 + v112[10]) = *(v7 + v112[10]);
        v138 = v112[11];
        v139 = *(v7 + v138);
        *(v6 + v138) = v139;
        v140 = v139;
        swift_storeEnumTagMultiPayload();
        goto LABEL_244;
      }

      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = swift_getEnumCaseMultiPayload();
      if (v36 <= 4)
      {
        if (v36 > 2)
        {
LABEL_107:
          v96 = sub_21DBF563C();
          (*(*(v96 - 8) + 16))(v6, v7, v96);
          swift_storeEnumTagMultiPayload();
          goto LABEL_167;
        }

        if (v36 != 1)
        {
          if (v36 == 2)
          {
            goto LABEL_107;
          }

          goto LABEL_166;
        }

LABEL_110:
        v97 = *v7;
        *v6 = *v7;
        v98 = v97;
        swift_storeEnumTagMultiPayload();
        goto LABEL_167;
      }

      if (v36 > 7)
      {
        if (v36 == 8 || v36 == 9)
        {
          goto LABEL_110;
        }
      }

      else if (v36 == 5 || v36 == 6)
      {
        goto LABEL_107;
      }

LABEL_166:
      memcpy(v6, v7, *(*(v35 - 8) + 64));
LABEL_167:
      v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v141 = v112[5];
      v114 = v6 + v141;
      v115 = v7 + v141;
      if (*(v7 + v141 + 8))
      {
        v231 = v7;
        *v114 = *v115;
        *(v114 + 1) = *(v115 + 1);
        v142 = *(v115 + 2);
        v143 = *(v115 + 3);
        v144 = *(v115 + 4);
        v205 = *(v115 + 5);
        v215 = *(v115 + 7);
        v222 = *(v115 + 6);
        v207 = v115[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v142, v143, v144, v205, v222, v215, v207);
        *(v114 + 2) = v142;
        *(v114 + 3) = v143;
        *(v114 + 4) = v144;
        *(v114 + 5) = v205;
        *(v114 + 6) = v222;
        *(v114 + 7) = v215;
        v114[64] = v207;
        v114[65] = v115[65];
        v114[66] = v115[66];
        v114[67] = v115[67];
        v114[68] = v115[68];
        v145 = v115[120];
        if (v145 == 255)
        {
          v149 = *(v115 + 72);
          v150 = *(v115 + 88);
          v151 = *(v115 + 104);
          v114[120] = v115[120];
          *(v114 + 104) = v151;
          *(v114 + 88) = v150;
          *(v114 + 72) = v149;
        }

        else
        {
          v146 = *(v115 + 9);
          v216 = *(v115 + 11);
          v223 = *(v115 + 10);
          v147 = *(v115 + 13);
          v206 = *(v115 + 14);
          v208 = *(v115 + 12);
          v148 = v145 & 1;
          sub_21D0FB960(v146, v223, v216, v208, v147, v206, v145 & 1);
          *(v114 + 9) = v146;
          *(v114 + 10) = v223;
          *(v114 + 11) = v216;
          *(v114 + 12) = v208;
          *(v114 + 13) = v147;
          *(v114 + 14) = v206;
          v114[120] = v148;
        }

        v114[121] = v115[121];
        v7 = v231;
        goto LABEL_165;
      }

      goto LABEL_162;
    }

    if (v14 != 2)
    {
      v239 = v4;
      v24 = *v7;
      *v6 = *v7;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);
      v29 = v24;
      if (v28(v7 + v25, 1, v26))
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v6 + v25, v7 + v25, *(*(v30 - 8) + 64));
LABEL_230:
        v4 = v239;
        swift_storeEnumTagMultiPayload();
        goto LABEL_244;
      }

      v65 = swift_getEnumCaseMultiPayload();
      if (v65 > 4)
      {
        if (v65 <= 7)
        {
          if (v65 == 5 || v65 == 6)
          {
            goto LABEL_174;
          }

          goto LABEL_228;
        }

        if (v65 != 8 && v65 != 9)
        {
          goto LABEL_228;
        }
      }

      else
      {
        if (v65 > 2)
        {
LABEL_174:
          v153 = sub_21DBF563C();
          (*(*(v153 - 8) + 16))(v6 + v25, v7 + v25, v153);
          swift_storeEnumTagMultiPayload();
LABEL_229:
          (*(v27 + 56))(v6 + v25, 0, 1, v26);
          goto LABEL_230;
        }

        if (v65 != 1)
        {
          if (v65 == 2)
          {
            goto LABEL_174;
          }

LABEL_228:
          memcpy(v6 + v25, v7 + v25, *(v27 + 64));
          goto LABEL_229;
        }
      }

      v156 = *(v7 + v25);
      *(v6 + v25) = v156;
      v157 = v156;
      swift_storeEnumTagMultiPayload();
      goto LABEL_229;
    }

    v237 = v8;
    v37 = *v7;
    *v6 = *v7;
    v38 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    v42 = v37;
    if (v41(v7 + v38, 1, v39))
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v6 + v38, v7 + v38, *(*(v43 - 8) + 64));
LABEL_240:
      swift_storeEnumTagMultiPayload();
      v8 = v237;
      goto LABEL_244;
    }

    v68 = swift_getEnumCaseMultiPayload();
    if (v68 > 4)
    {
      if (v68 <= 7)
      {
        if (v68 == 5 || v68 == 6)
        {
          goto LABEL_182;
        }

        goto LABEL_238;
      }

      if (v68 != 8 && v68 != 9)
      {
        goto LABEL_238;
      }
    }

    else
    {
      if (v68 > 2)
      {
LABEL_182:
        v159 = sub_21DBF563C();
        (*(*(v159 - 8) + 16))(v6 + v38, v7 + v38, v159);
        swift_storeEnumTagMultiPayload();
LABEL_239:
        (*(v40 + 56))(v6 + v38, 0, 1, v39);
        goto LABEL_240;
      }

      if (v68 != 1)
      {
        if (v68 == 2)
        {
          goto LABEL_182;
        }

LABEL_238:
        memcpy(v6 + v38, v7 + v38, *(v40 + 64));
        goto LABEL_239;
      }
    }

    v162 = *(v7 + v38);
    *(v6 + v38) = v162;
    v163 = v162;
    swift_storeEnumTagMultiPayload();
    goto LABEL_239;
  }

LABEL_11:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  memcpy(v6, v7, *(*(v17 - 8) + 64));
  return v4;
}

uint64_t sub_21DA0A138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *initializeWithTake for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v26 = *(v25 - 8);
          if ((*(v26 + 48))(v6, 1, v25))
          {
            v27 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v5, v6, *(*(v27 - 8) + 64));
          }

          else
          {
            v30 = sub_21DBF563C();
            (*(*(v30 - 8) + 32))(v5, v6, v30);
            v5[*(v25 + 20)] = v6[*(v25 + 20)];
            (*(v26 + 56))(v5, 0, 1, v25);
          }

          v31 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&v5[*(v31 + 20)] = *&v6[*(v31 + 20)];
          goto LABEL_89;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_34;
        }

        *v5 = *v6;
        v21 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v22 = sub_21DBF8D7C();
        (*(*(v22 - 8) + 32))(&v5[v21], &v6[v21], v22);
LABEL_89:
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v15 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v16 = *(v15 - 8);
          if ((*(v16 + 48))(v6, 1, v15))
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(v5, v6, *(*(v17 - 8) + 64));
          }

          else
          {
            *v5 = *v6;
            v32 = *(v15 + 20);
            v33 = sub_21DBF6C1C();
            (*(*(v33 - 8) + 32))(&v5[v32], &v6[v32], v33);
            (*(v16 + 56))(v5, 0, 1, v15);
          }

          v34 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v35 = &v5[v34];
          v36 = &v6[v34];
          *v35 = *v36;
          *(v35 + 2) = *(v36 + 2);
          goto LABEL_89;
        }

        goto LABEL_34;
      }

      *v5 = *v6;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(&v6[v18], 1, v19))
      {
        v28 = swift_getEnumCaseMultiPayload();
        if (v28 <= 3)
        {
          if (v28 == 2 || v28 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v28 == 4 || v28 == 5 || v28 == 6)
        {
          goto LABEL_59;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = swift_getEnumCaseMultiPayload();
          if (v23 <= 3)
          {
            if (v23 == 2 || v23 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v23 == 4 || v23 == 5 || v23 == 6)
          {
            goto LABEL_11;
          }

          goto LABEL_66;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v13 = swift_getEnumCaseMultiPayload();
          if (v13 <= 3)
          {
            if (v13 == 2 || v13 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v13 == 4 || v13 == 5 || v13 == 6)
          {
LABEL_11:
            v14 = sub_21DBF563C();
            (*(*(v14 - 8) + 32))(v5, v6, v14);
            swift_storeEnumTagMultiPayload();
LABEL_67:
            v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v40 = v39[5];
            v41 = &v5[v40];
            v42 = &v6[v40];
            v43 = v42[3];
            v41[2] = v42[2];
            v41[3] = v43;
            v44 = v42[1];
            *v41 = *v42;
            v41[1] = v44;
            *(v41 + 106) = *(v42 + 106);
            v45 = v42[6];
            v41[5] = v42[5];
            v41[6] = v45;
            v41[4] = v42[4];
            v5[v39[6]] = v6[v39[6]];
            v5[v39[7]] = v6[v39[7]];
            v5[v39[8]] = v6[v39[8]];
            v5[v39[9]] = v6[v39[9]];
            v5[v39[10]] = v6[v39[10]];
            *&v5[v39[11]] = *&v6[v39[11]];
            goto LABEL_89;
          }

LABEL_66:
          memcpy(v5, v6, *(*(v12 - 8) + 64));
          goto LABEL_67;
        }

LABEL_34:
        memcpy(v5, v6, *(*(v10 - 8) + 64));
LABEL_90:
        v5[*(v7 + 48)] = v6[*(v7 + 48)];
        (*(v8 + 56))(v5, 0, 1, v7);
        return a1;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *v5 = *v6;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(&v6[v18], 1, v19))
        {
          goto LABEL_31;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 <= 3)
        {
          if (v37 == 2 || v37 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v37 == 4 || v37 == 5 || v37 == 6)
        {
LABEL_59:
          v38 = sub_21DBF563C();
          (*(*(v38 - 8) + 32))(&v5[v18], &v6[v18], v38);
          swift_storeEnumTagMultiPayload();
LABEL_88:
          (*(v20 + 56))(&v5[v18], 0, 1, v19);
          goto LABEL_89;
        }

LABEL_87:
        memcpy(&v5[v18], &v6[v18], *(v20 + 64));
        goto LABEL_88;
      }

      *v5 = *v6;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(&v6[v18], 1, v19))
      {
        v29 = swift_getEnumCaseMultiPayload();
        if (v29 <= 3)
        {
          if (v29 == 2 || v29 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v29 == 4 || v29 == 5 || v29 == 6)
        {
          goto LABEL_59;
        }

        goto LABEL_87;
      }
    }

LABEL_31:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&v5[v18], &v6[v18], *(*(v24 - 8) + 64));
    goto LABEL_89;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  memcpy(v5, v6, *(*(v9 - 8) + 64));
  return a1;
}

_BYTE *assignWithTake for TTRSECreateRemindersTreeViewModelUpdateContext(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0, &unk_21DC207E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21DA0A138(v6);
      goto LABEL_14;
    }

    if (a1 == a2)
    {
LABEL_184:
      *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
      return a1;
    }

    sub_21D24B040(v6);
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v45 = swift_getEnumCaseMultiPayload();
          if (v45 <= 3)
          {
            if (v45 == 2 || v45 == 3)
            {
              goto LABEL_24;
            }
          }

          else if (v45 == 4 || v45 == 5 || v45 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_154;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v22 = swift_getEnumCaseMultiPayload();
          if (v22 <= 3)
          {
            if (v22 == 2 || v22 == 3)
            {
              goto LABEL_24;
            }
          }

          else if (v22 == 4 || v22 == 5 || v22 == 6)
          {
LABEL_24:
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 32))(v6, v7, v23);
            swift_storeEnumTagMultiPayload();
LABEL_155:
            v79 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v80 = v79[5];
            v81 = (v6 + v80);
            v82 = (v7 + v80);
            v83 = v82[3];
            v81[2] = v82[2];
            v81[3] = v83;
            v84 = v82[1];
            *v81 = *v82;
            v81[1] = v84;
            *(v81 + 106) = *(v82 + 106);
            v85 = v82[6];
            v81[5] = v82[5];
            v81[6] = v85;
            v81[4] = v82[4];
            *(v6 + v79[6]) = *(v7 + v79[6]);
            *(v6 + v79[7]) = *(v7 + v79[7]);
            *(v6 + v79[8]) = *(v7 + v79[8]);
            *(v6 + v79[9]) = *(v7 + v79[9]);
            *(v6 + v79[10]) = *(v7 + v79[10]);
            *(v6 + v79[11]) = *(v7 + v79[11]);
            goto LABEL_183;
          }

LABEL_154:
          memcpy(v6, v7, *(*(v21 - 8) + 64));
          goto LABEL_155;
        }

        goto LABEL_95;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *v6 = *v7;
        v40 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v7 + v40, 1, v41))
        {
LABEL_85:
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(v6 + v40, v7 + v40, *(*(v50 - 8) + 64));
          goto LABEL_183;
        }

        v69 = swift_getEnumCaseMultiPayload();
        if (v69 <= 3)
        {
          if (v69 == 2 || v69 == 3)
          {
            goto LABEL_138;
          }
        }

        else if (v69 == 4 || v69 == 5 || v69 == 6)
        {
          goto LABEL_138;
        }
      }

      else
      {
        *v6 = *v7;
        v40 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v7 + v40, 1, v41))
        {
          goto LABEL_85;
        }

        v77 = swift_getEnumCaseMultiPayload();
        if (v77 <= 3)
        {
          if (v77 == 2 || v77 == 3)
          {
            goto LABEL_138;
          }
        }

        else if (v77 == 4 || v77 == 5 || v77 == 6)
        {
LABEL_138:
          v78 = sub_21DBF563C();
          (*(*(v78 - 8) + 32))(v6 + v40, v7 + v40, v78);
          swift_storeEnumTagMultiPayload();
LABEL_182:
          (*(v42 + 56))(v6 + v40, 0, 1, v41);
          goto LABEL_183;
        }
      }

LABEL_181:
      memcpy(v6 + v40, v7 + v40, *(v42 + 64));
      goto LABEL_182;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v51 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v52 = *(v51 - 8);
        if ((*(v52 + 48))(v7, 1, v51))
        {
          v53 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v6, v7, *(*(v53 - 8) + 64));
        }

        else
        {
          v70 = sub_21DBF563C();
          (*(*(v70 - 8) + 32))(v6, v7, v70);
          *(v6 + *(v51 + 20)) = *(v7 + *(v51 + 20));
          (*(v52 + 56))(v6, 0, 1, v51);
        }

        v71 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(v6 + *(v71 + 20)) = *(v7 + *(v71 + 20));
        goto LABEL_183;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *v6 = *v7;
        v43 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v44 = sub_21DBF8D7C();
        (*(*(v44 - 8) + 32))(v6 + v43, v7 + v43, v44);
LABEL_183:
        swift_storeEnumTagMultiPayload();
        goto LABEL_184;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *v6 = *v7;
        v40 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v7 + v40, 1, v41))
        {
          goto LABEL_85;
        }

        v68 = swift_getEnumCaseMultiPayload();
        if (v68 <= 3)
        {
          if (v68 == 2 || v68 == 3)
          {
            goto LABEL_138;
          }
        }

        else if (v68 == 4 || v68 == 5 || v68 == 6)
        {
          goto LABEL_138;
        }

        goto LABEL_181;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v7, 1, v32))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(v6, v7, *(*(v34 - 8) + 64));
        }

        else
        {
          *v6 = *v7;
          v72 = *(v32 + 20);
          v73 = sub_21DBF6C1C();
          (*(*(v73 - 8) + 32))(v6 + v72, v7 + v72, v73);
          (*(v33 + 56))(v6, 0, 1, v32);
        }

        v74 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v75 = v6 + v74;
        v76 = v7 + v74;
        *v75 = *v76;
        *(v75 + 2) = *(v76 + 2);
        goto LABEL_183;
      }
    }

LABEL_95:
    memcpy(v6, v7, *(*(v19 - 8) + 64));
    goto LABEL_184;
  }

  if (!v12)
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 3)
    {
      if (v14 > 6)
      {
        if (v14 == 7)
        {
          v37 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v38 = *(v37 - 8);
          if ((*(v38 + 48))(v7, 1, v37))
          {
            v39 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v6, v7, *(*(v39 - 8) + 64));
          }

          else
          {
            v48 = sub_21DBF563C();
            (*(*(v48 - 8) + 32))(v6, v7, v48);
            *(v6 + *(v37 + 20)) = *(v7 + *(v37 + 20));
            (*(v38 + 56))(v6, 0, 1, v37);
          }

          v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(v6 + *(v49 + 20)) = *(v7 + *(v49 + 20));
          goto LABEL_161;
        }

        if (v14 != 8)
        {
          goto LABEL_52;
        }

        *v6 = *v7;
        v30 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v31 = sub_21DBF8D7C();
        (*(*(v31 - 8) + 32))(v6 + v30, v7 + v30, v31);
LABEL_161:
        swift_storeEnumTagMultiPayload();
        goto LABEL_162;
      }

      if (v14 != 4)
      {
        if (v14 == 6)
        {
          v24 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v25 = *(v24 - 8);
          if ((*(v25 + 48))(v7, 1, v24))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(v6, v7, *(*(v26 - 8) + 64));
          }

          else
          {
            *v6 = *v7;
            v54 = *(v24 + 20);
            v55 = sub_21DBF6C1C();
            (*(*(v55 - 8) + 32))(v6 + v54, v7 + v54, v55);
            (*(v25 + 56))(v6, 0, 1, v24);
          }

          v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v57 = v6 + v56;
          v58 = v7 + v56;
          *v57 = *v58;
          *(v57 + 2) = *(v58 + 2);
          goto LABEL_161;
        }

        goto LABEL_52;
      }

      *v6 = *v7;
      v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = *(v28 - 8);
      if (!(*(v29 + 48))(v7 + v27, 1, v28))
      {
        v46 = swift_getEnumCaseMultiPayload();
        if (v46 <= 3)
        {
          if (v46 == 2 || v46 == 3)
          {
            goto LABEL_94;
          }
        }

        else if (v46 == 4 || v46 == 5 || v46 == 6)
        {
          goto LABEL_94;
        }

        goto LABEL_159;
      }
    }

    else
    {
      if (v14 <= 1)
      {
        if (!v14)
        {
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v35 = swift_getEnumCaseMultiPayload();
          if (v35 <= 3)
          {
            if (v35 == 2 || v35 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v35 == 4 || v35 == 5 || v35 == 6)
          {
            goto LABEL_11;
          }

          goto LABEL_102;
        }

        if (v14 == 1)
        {
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = swift_getEnumCaseMultiPayload();
          if (v16 <= 3)
          {
            if (v16 == 2 || v16 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v16 == 4 || v16 == 5 || v16 == 6)
          {
LABEL_11:
            v17 = sub_21DBF563C();
            (*(*(v17 - 8) + 32))(v6, v7, v17);
            swift_storeEnumTagMultiPayload();
LABEL_103:
            v61 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v62 = v61[5];
            v63 = (v6 + v62);
            v64 = (v7 + v62);
            v65 = v64[3];
            v63[2] = v64[2];
            v63[3] = v65;
            v66 = v64[1];
            *v63 = *v64;
            v63[1] = v66;
            *(v63 + 106) = *(v64 + 106);
            v67 = v64[6];
            v63[5] = v64[5];
            v63[6] = v67;
            v63[4] = v64[4];
            *(v6 + v61[6]) = *(v7 + v61[6]);
            *(v6 + v61[7]) = *(v7 + v61[7]);
            *(v6 + v61[8]) = *(v7 + v61[8]);
            *(v6 + v61[9]) = *(v7 + v61[9]);
            *(v6 + v61[10]) = *(v7 + v61[10]);
            *(v6 + v61[11]) = *(v7 + v61[11]);
            goto LABEL_161;
          }

LABEL_102:
          memcpy(v6, v7, *(*(v15 - 8) + 64));
          goto LABEL_103;
        }

LABEL_52:
        memcpy(v6, v7, *(*(v13 - 8) + 64));
LABEL_162:
        *(v6 + *(v8 + 48)) = *(v7 + *(v8 + 48));
        (*(v9 + 56))(v6, 0, 1, v8);
        return a1;
      }

      if (v14 != 2)
      {
        *v6 = *v7;
        v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v7 + v27, 1, v28))
        {
          goto LABEL_49;
        }

        v59 = swift_getEnumCaseMultiPayload();
        if (v59 <= 3)
        {
          if (v59 == 2 || v59 == 3)
          {
            goto LABEL_94;
          }
        }

        else if (v59 == 4 || v59 == 5 || v59 == 6)
        {
LABEL_94:
          v60 = sub_21DBF563C();
          (*(*(v60 - 8) + 32))(v6 + v27, v7 + v27, v60);
          swift_storeEnumTagMultiPayload();
LABEL_160:
          (*(v29 + 56))(v6 + v27, 0, 1, v28);
          goto LABEL_161;
        }

LABEL_159:
        memcpy(v6 + v27, v7 + v27, *(v29 + 64));
        goto LABEL_160;
      }

      *v6 = *v7;
      v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = *(v28 - 8);
      if (!(*(v29 + 48))(v7 + v27, 1, v28))
      {
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 <= 3)
        {
          if (v47 == 2 || v47 == 3)
          {
            goto LABEL_94;
          }
        }

        else if (v47 == 4 || v47 == 5 || v47 == 6)
        {
          goto LABEL_94;
        }

        goto LABEL_159;
      }
    }

LABEL_49:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(v6 + v27, v7 + v27, *(*(v36 - 8) + 64));
    goto LABEL_161;
  }

LABEL_14:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0, &qword_21DC1C330);
  memcpy(v6, v7, *(*(v18 - 8) + 64));
  return a1;
}

void sub_21DA0D5E4(uint64_t a1)
{
  sub_21D58AE7C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t TTRShowCustomSmartListTipKitDataModelSource.__allocating_init(store:smartList:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRShowCustomSmartListTipKitDataModelSource.init(store:smartList:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

RemindersUICore::TTRTipKitDataModelSourceContextKeyCondition __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowCustomSmartListTipKitDataModelSource.hasCompletedReminders()()
{
  v2 = v1;
  v48 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v47 - v4;
  v5 = sub_21DBF773C();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF6C9C();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21DBF72DC();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF714C();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21DBF734C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v61 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF71BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF70DC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58568, &qword_21DC2FFD0);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v22 = &v47 - v21;
  swift_beginAccess();
  v23 = *(v2 + 16);
  v24 = *MEMORY[0x277D45420];
  v65 = v18;
  v66 = v17;
  v25 = v17;
  v26 = v16;
  (*(v18 + 104))(v20, v24, v25);
  v27 = *MEMORY[0x277D45470];
  v67 = v14;
  v68 = v13;
  v28 = v14;
  v29 = v61;
  (*(v28 + 104))(v16, v27, v13);
  (*(v70 + 104))(v29, *MEMORY[0x277D45500], v71);
  v30 = v62;
  v31 = v63;
  v32 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x277D45460]);
  v33 = v23;
  v49 = v22;
  v34 = v69;
  sub_21DBF6CAC();
  if (v34)
  {

    (*(v31 + 8))(v30, v32);
    (*(v70 + 8))(v29, v71);
    (*(v67 + 8))(v26, v68);
    return (*(v65 + 8))(v20, v66);
  }

  else
  {

    (*(v31 + 8))(v30, v32);
    (*(v70 + 8))(v29, v71);
    (*(v67 + 8))(v26, v68);
    (*(v65 + 8))(v20, v66);
    v36 = v52;
    v37 = v51;
    v38 = v49;
    v39 = sub_21DBF76DC();
    v40 = v56;
    MEMORY[0x223D3F440](v39);
    (*(v53 + 8))(v36, v54);
    v41 = v60;
    sub_21DBF715C();
    (*(v58 + 8))(v40, v59);
    v42 = v55;
    v43 = v57;
    if ((*(v55 + 48))(v41, 1, v57) == 1)
    {
      sub_21DA0DEC4(v41);
      sub_21DA0DF2C();
      swift_allocError();
      swift_willThrow();
      return (*(v50 + 8))(v38, v37);
    }

    else
    {
      v44 = v47;
      (*(v42 + 32))(v47, v41, v43);
      v45 = sub_21DBF72CC();
      (*(v42 + 8))(v44, v43);
      result = (*(v50 + 8))(v38, v37);
      if (v45 <= 0)
      {
        v46 = 1;
      }

      else
      {
        v46 = 2;
      }

      *v48 = v46;
    }
  }

  return result;
}