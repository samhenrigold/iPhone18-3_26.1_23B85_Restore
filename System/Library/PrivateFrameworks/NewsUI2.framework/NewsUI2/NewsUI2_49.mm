uint64_t sub_218C3E1C0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x21CECCB00](v7, a3, v8);
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

uint64_t sub_218C3E240(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v4 = sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
    v5 = sub_218C3F3F8();
    result = MEMORY[0x21CECCB00](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21949B630(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_219BF7214();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_218C3E380(uint64_t a1)
{
  v2 = sub_219BDC104();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_218C3D9DC(&qword_280EE9BC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  result = MEMORY[0x21CECCB00](v9, v2, v10);
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
      sub_21949BBB0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_218C3E51C()
{
  result = qword_280ED3FD0;
  if (!qword_280ED3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3FD0);
  }

  return result;
}

void sub_218C3E570(uint64_t a1)
{
  if (!qword_280EE5098)
  {
    type metadata accessor for PuzzleContinuePlayingLayoutModel(255);
    sub_218C3D9DC(qword_280EA5740, type metadata accessor for PuzzleContinuePlayingLayoutModel, &unk_219CB8B44);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5098);
    }
  }
}

void sub_218C3E604(uint64_t a1)
{
  if (!qword_280EE4DE0)
  {
    type metadata accessor for PuzzleContinuePlayingLayoutModel(255);
    sub_218AE17AC();
    sub_218C3D9DC(qword_280EA5740, type metadata accessor for PuzzleContinuePlayingLayoutModel, &unk_219CB8B44);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4DE0);
    }
  }
}

void sub_218C3E6BC(uint64_t a1)
{
  if (!qword_27CC0F3B0)
  {
    sub_218C40498(255, &qword_27CC0AE48, sub_2189514C4, &type metadata for SearchHomeLayoutModel, MEMORY[0x277D6DA50]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F3B0);
    }
  }
}

void sub_218C3E74C(uint64_t a1)
{
  if (!qword_280EE4DA8)
  {
    type metadata accessor for AudioFeedLayoutModel(255);
    sub_218C3E804();
    sub_218C3D9DC(qword_280ECF4B0, type metadata accessor for AudioFeedLayoutModel, &unk_219C376B8);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4DA8);
    }
  }
}

unint64_t sub_218C3E804()
{
  result = qword_280EA6DC0[0];
  if (!qword_280EA6DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA6DC0);
  }

  return result;
}

void sub_218C3E858(uint64_t a1)
{
  if (!qword_280EE5070)
  {
    type metadata accessor for AudioFeedLayoutModel(255);
    sub_218C3D9DC(qword_280ECF4B0, type metadata accessor for AudioFeedLayoutModel, &unk_219C376B8);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5070);
    }
  }
}

void sub_218C3E8EC(uint64_t a1)
{
  if (!qword_27CC0F420)
  {
    sub_218C40498(255, &qword_27CC0AEC0, sub_21878E148, &type metadata for FollowingNotificationsLayoutModel, MEMORY[0x277D6DA50]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F420);
    }
  }
}

void sub_218C3E97C(uint64_t a1)
{
  if (!qword_280EE50B0)
  {
    type metadata accessor for HistoryFeedLayoutModel(255);
    sub_218C3D9DC(&unk_280EC8148, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D028);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE50B0);
    }
  }
}

void sub_218C3EA10(uint64_t a1)
{
  if (!qword_280EE4E18)
  {
    type metadata accessor for HistoryFeedLayoutModel(255);
    sub_218C3EAC8();
    sub_218C3D9DC(&unk_280EC8148, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D028);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4E18);
    }
  }
}

unint64_t sub_218C3EAC8()
{
  result = qword_280EA0410[0];
  if (!qword_280EA0410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA0410);
  }

  return result;
}

unint64_t sub_218C3EB1C()
{
  result = qword_280ECA8C0;
  if (!qword_280ECA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA8C0);
  }

  return result;
}

void sub_218C3EB70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_218C3F13C(255, a3, a4);
    v5 = sub_219BF78A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218C3EBC8(uint64_t a1)
{
  if (!qword_27CC0F488)
  {
    type metadata accessor for SearchMoreLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E378);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F488);
    }
  }
}

void sub_218C3EC5C(uint64_t a1)
{
  if (!qword_27CC0F4B8)
  {
    type metadata accessor for SearchMoreLayoutModel(255);
    sub_218C3ED14();
    sub_218C3D9DC(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel, &unk_219C6E378);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F4B8);
    }
  }
}

unint64_t sub_218C3ED14()
{
  result = qword_27CC0F4C0;
  if (!qword_27CC0F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F4C0);
  }

  return result;
}

void sub_218C3ED68(uint64_t a1)
{
  if (!qword_280EE50A8)
  {
    type metadata accessor for MagazineFeedLayoutModel(255);
    sub_218C3D9DC(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE50A8);
    }
  }
}

void sub_218C3EDFC(uint64_t a1)
{
  if (!qword_27CC0F4F0)
  {
    sub_218C40498(255, &qword_27CC0AF70, sub_21895221C, &type metadata for SportsNavigationLayoutModel, MEMORY[0x277D6DA50]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F4F0);
    }
  }
}

void sub_218C3EE8C(uint64_t a1)
{
  if (!qword_280E91D70)
  {
    sub_2186C6148(255, &qword_280E8E810, 0x277D312B0);
    v1 = sub_219BEE2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91D70);
    }
  }
}

void sub_218C3EEF4(uint64_t a1)
{
  if (!qword_280E8E7E0)
  {
    sub_2186C6148(255, &qword_280E8E800, 0x277D35488);
    sub_219BEDC04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E7E0);
    }
  }
}

void sub_218C3EF74(uint64_t a1)
{
  if (!qword_27CC0F518)
  {
    type metadata accessor for RecipeBoxLayoutModel(255);
    sub_21879A370();
    sub_218C3D9DC(&qword_280ECDB48, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C18);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F518);
    }
  }
}

void sub_218C3F02C(uint64_t a1)
{
  if (!qword_27CC0F528)
  {
    type metadata accessor for RecipeBoxLayoutModel(255);
    sub_218C3D9DC(&qword_280ECDB48, type metadata accessor for RecipeBoxLayoutModel, &unk_219C62C18);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F528);
    }
  }
}

void sub_218C3F0C0(uint64_t a1)
{
  if (!qword_27CC0F560)
  {
    sub_2186C709C(255, &qword_27CC0F550, &protocol descriptor for RecipeBoxSearchEntityType, 1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0F560);
    }
  }
}

void sub_218C3F13C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_218C3F194(uint64_t a1)
{
  if (!qword_27CC0F600)
  {
    sub_218C40498(255, &qword_27CC0B020, sub_218952A28, &type metadata for FollowingDislikedLayoutModel, MEMORY[0x277D6DA50]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F600);
    }
  }
}

void sub_218C3F258(uint64_t a1)
{
  if (!qword_27CC0F620)
  {
    type metadata accessor for MyRecipesLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0F628, type metadata accessor for MyRecipesLayoutModel, &unk_219C89048);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F620);
    }
  }
}

void sub_218C3F2EC(uint64_t a1)
{
  if (!qword_27CC0F648)
  {
    type metadata accessor for MyRecipesLayoutModel(255);
    sub_218C3F3A4();
    sub_218C3D9DC(&qword_27CC0F628, type metadata accessor for MyRecipesLayoutModel, &unk_219C89048);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F648);
    }
  }
}

unint64_t sub_218C3F3A4()
{
  result = qword_27CC0F650;
  if (!qword_27CC0F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F650);
  }

  return result;
}

unint64_t sub_218C3F3F8()
{
  result = qword_280E8DAA0;
  if (!qword_280E8DAA0)
  {
    sub_2186C6148(255, &qword_280E8DAB0, 0x277D310B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8DAA0);
  }

  return result;
}

unint64_t sub_218C3F460()
{
  result = qword_280ECA7B0[0];
  if (!qword_280ECA7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECA7B0);
  }

  return result;
}

void sub_218C3F4B4(uint64_t a1)
{
  if (!qword_27CC0F668)
  {
    type metadata accessor for MyMagazinesLayoutModel(255);
    sub_218C3F56C();
    sub_218C3D9DC(&qword_27CC0F678, type metadata accessor for MyMagazinesLayoutModel, &unk_219CD3578);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F668);
    }
  }
}

unint64_t sub_218C3F56C()
{
  result = qword_27CC0F670;
  if (!qword_27CC0F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F670);
  }

  return result;
}

void sub_218C3F5C0(uint64_t a1)
{
  if (!qword_27CC0F688)
  {
    type metadata accessor for MyMagazinesLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0F678, type metadata accessor for MyMagazinesLayoutModel, &unk_219CD3578);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F688);
    }
  }
}

void sub_218C3F654(uint64_t a1)
{
  if (!qword_27CC0F698)
  {
    type metadata accessor for AudioPlaylistFeedLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0F6A0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49700);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F698);
    }
  }
}

void sub_218C3F6E8(uint64_t a1)
{
  if (!qword_27CC0F6C8)
  {
    type metadata accessor for AudioPlaylistFeedLayoutModel(255);
    sub_21897F0C8();
    sub_218C3D9DC(&qword_27CC0F6A0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49700);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F6C8);
    }
  }
}

void sub_218C3F7A0(uint64_t a1)
{
  if (!qword_27CC0F6E0)
  {
    type metadata accessor for SportsFavoritesLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0C960, type metadata accessor for SportsFavoritesLayoutModel, &unk_219C85F2C);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F6E0);
    }
  }
}

void sub_218C3F834(uint64_t a1)
{
  if (!qword_27CC0F728)
  {
    type metadata accessor for SearchMoreModel(255);
    sub_218C3D9DC(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F728);
    }
  }
}

void sub_218C3F8C8(uint64_t a1)
{
  if (!qword_280E8E920)
  {
    type metadata accessor for TagModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E920);
    }
  }
}

void sub_218C3F934(uint64_t a1)
{
  if (!qword_27CC0F760)
  {
    type metadata accessor for SharedWithYouFeedLayoutModel(255);
    sub_218C3F9EC();
    sub_218C3D9DC(&qword_27CC0F770, type metadata accessor for SharedWithYouFeedLayoutModel, &unk_219C93B10);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F760);
    }
  }
}

unint64_t sub_218C3F9EC()
{
  result = qword_27CC0F768;
  if (!qword_27CC0F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F768);
  }

  return result;
}

void sub_218C3FA40(uint64_t a1)
{
  if (!qword_27CC0F798)
  {
    type metadata accessor for SharedWithYouFeedLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0F770, type metadata accessor for SharedWithYouFeedLayoutModel, &unk_219C93B10);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F798);
    }
  }
}

uint64_t sub_218C3FAD4(uint64_t a1)
{
  v2 = sub_219BEAAD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_218C3D9DC(&unk_27CC1AC10, MEMORY[0x277D31B20], MEMORY[0x277D31B28]);
  result = MEMORY[0x21CECCB00](v9, v2, v10);
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
      sub_21949BE90(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_218C3FC70(uint64_t a1)
{
  if (!qword_280E8B690)
  {
    sub_21871AF10(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B690);
    }
  }
}

void sub_218C3FCEC(uint64_t a1)
{
  if (!qword_27CC0F808)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel(255);
    sub_218ACD334();
    sub_218C3D9DC(&qword_27CC0F818, type metadata accessor for MagazineCategoriesPickerLayoutModel, &unk_219CA4580);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F808);
    }
  }
}

void sub_218C3FDA4(uint64_t a1)
{
  if (!qword_27CC0F828)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0F818, type metadata accessor for MagazineCategoriesPickerLayoutModel, &unk_219CA4580);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F828);
    }
  }
}

void sub_218C3FE38(uint64_t a1)
{
  if (!qword_27CC0F870)
  {
    type metadata accessor for ChannelIssuesLayoutModel(255);
    sub_218C3D9DC(&qword_27CC0F860, type metadata accessor for ChannelIssuesLayoutModel, &unk_219CB977C);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F870);
    }
  }
}

unint64_t sub_218C3FECC()
{
  result = qword_27CC0F8E0;
  if (!qword_27CC0F8E0)
  {
    sub_2186D6710(255, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27CC0F8E0);
  }

  return result;
}

void sub_218C3FF38(uint64_t a1)
{
  if (!qword_27CC1D680)
  {
    sub_219BF1F44();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D680);
    }
  }
}

void sub_218C3FF9C(uint64_t a1)
{
  if (!qword_27CC0F958)
  {
    sub_218C40498(255, &qword_27CC0F960, sub_218952904, &type metadata for FollowingDislikedModel, MEMORY[0x277D6D3F0]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F958);
    }
  }
}

void sub_218C4002C(uint64_t a1)
{
  if (!qword_27CC0FA30)
  {
    sub_218C40498(255, &qword_280EE5C10, sub_218931D5C, &type metadata for SearchHomeModel, MEMORY[0x277D6D3F0]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FA30);
    }
  }
}

void sub_218C400BC(uint64_t a1)
{
  if (!qword_280E8B7C0)
  {
    sub_218C40498(255, &qword_280E900C8, sub_2186E19D0, &type metadata for FoodTodayFeedGroupArrangementDataSource, MEMORY[0x277D33F58]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B7C0);
    }
  }
}

void sub_218C40180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_218C401FC(uint64_t a1)
{
  if (!qword_280EE5B58)
  {
    type metadata accessor for PuzzleContinuePlayingModel(255);
    sub_218C3D9DC(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel, &unk_219C0FD4C);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5B58);
    }
  }
}

void sub_218C40290(uint64_t a1)
{
  if (!qword_27CC0FAF8)
  {
    sub_218C40498(255, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FAF8);
    }
  }
}

void sub_218C40320(uint64_t a1)
{
  if (!qword_27CC0FB48)
  {
    sub_219BF0B74();
    sub_219BDBD34();
    v1 = MEMORY[0x277D32FD0];
    sub_218C3D9DC(&unk_280E90C70, MEMORY[0x277D32FD0], MEMORY[0x277D32FD8]);
    sub_218C3D9DC(&unk_280E90C80, v1, MEMORY[0x277D32FC8]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_27CC0FB48);
    }
  }
}

void sub_218C40408(uint64_t a1)
{
  if (!qword_280E8BF90)
  {
    sub_218C40498(255, &qword_280EE5B78, sub_218951108, &type metadata for MagazineSectionBarModel, MEMORY[0x277D6D3F0]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8BF90);
    }
  }
}

void sub_218C40498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218C40500(uint64_t a1)
{
  if (!qword_27CC0FB60)
  {
    type metadata accessor for SharedWithYouFeedModel(255);
    sub_218C3D9DC(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FB60);
    }
  }
}

void sub_218C40594(uint64_t a1)
{
  if (!qword_27CC17660)
  {
    type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    type metadata accessor for SharedWithYouFeedModel(255);
    sub_218C3D9DC(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    sub_218C3D9DC(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17660);
    }
  }
}

uint64_t type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E93C30;
  if (!qword_280E93C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218C406F8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40C28(0, &qword_27CC0FBE0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C40BD4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 4;
    v13 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C40960(void *a1)
{
  v3 = v1;
  sub_218C40C28(0, &qword_27CC0FBF0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C40BD4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C40B2C(uint64_t a1)
{
  v2 = sub_218C40BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C40B68(uint64_t a1)
{
  v2 = sub_218C40BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218C40BD4()
{
  result = qword_27CC0FBE8;
  if (!qword_27CC0FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FBE8);
  }

  return result;
}

void sub_218C40C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C40BD4();
    v7 = a3(a1, &type metadata for ChannelSectionDirectoryTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218C40CA0()
{
  result = qword_27CC0FBF8;
  if (!qword_27CC0FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FBF8);
  }

  return result;
}

unint64_t sub_218C40CF8()
{
  result = qword_27CC0FC00;
  if (!qword_27CC0FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FC00);
  }

  return result;
}

unint64_t sub_218C40D50()
{
  result = qword_27CC0FC08;
  if (!qword_27CC0FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FC08);
  }

  return result;
}

unint64_t sub_218C40DBC(unint64_t result)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = MEMORY[0x277D84F90];
    if (!v1)
    {
      return v2;
    }

    v3 = result;
    v18 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      break;
    }

    v4 = 0;
    v2 = v18;
    v5 = v3;
    v16 = v3;
    v17 = v3 & 0xC000000000000001;
    v15 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = v1;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v17)
      {
        MEMORY[0x21CECE0F0](v4, v5);
      }

      else
      {
        if (v4 >= *(v15 + 16))
        {
          goto LABEL_16;
        }
      }

      v8 = sub_219BF3F84();
      v10 = v9;

      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_21870B65C((v11 > 1), v12 + 1, 1);
      }

      *(v18 + 16) = v12 + 1;
      v13 = v18 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      ++v4;
      v5 = v16;
      if (v7 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v14 = result;
    v1 = sub_219BF7214();
    result = v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_218C40F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_218C49FF0(a1, a2, a3);

  return v3;
}

uint64_t sub_218C40F88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_218C42540(0);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C4A4B0(0, &qword_280E8CFD8, sub_218C4A304, &type metadata for SportsScoreSortingGroupByGroupFilter.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C4A304();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v15 = v20;
    sub_218C425D4(0);
    sub_218C4A400(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
    sub_219BF7764();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v21, v15);
    sub_218C4A448(v12, v17, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_218C41284(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_218C4130C(uint64_t a1)
{
  v2 = sub_218C4A304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C41348(uint64_t a1)
{
  v2 = sub_218C4A304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C4139C(void *a1)
{
  sub_218C4A4B0(0, &qword_280E8C6A8, sub_218C4A304, &type metadata for SportsScoreSortingGroupByGroupFilter.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C4A304();
  sub_219BF7B44();
  sub_218C425D4(0);
  sub_218C4A400(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
  sub_219BF7854();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218C41548(uint64_t a1, uint64_t a2)
{
  sub_218C425D4(0);
  sub_218C4A400(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
  sub_218C4A1E8();

  return sub_219BF2694();
}

uint64_t sub_218C415E0()
{
  sub_218C42540(0);
  sub_219BF2664();
  v0 = MEMORY[0x21CECC6D0](v4, &type metadata for SportsScoreSortingFilter);
  v2 = v1;

  MEMORY[0x21CECC330](v0, v2);

  return 0x3D737265746C6966;
}

uint64_t sub_218C41674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v21 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v21);
  v20 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - v5;
  sub_218C4A4B0(0, &qword_280E8CA90, sub_218C4A358, &type metadata for SportsScoreSortingGroupByFilter.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C4A358();
  v13 = v25;
  sub_219BF7B34();
  if (!v13)
  {
    v14 = v22;
    v25 = v12;
    v15 = v24;
    v27 = 0;
    sub_218C4A3AC();
    sub_219BF7734();
    v26 = 1;
    sub_218C4A400(&qword_280EE24D0, type metadata accessor for SportsScoreSortingGroupByGroupFilter, &unk_219C24818);
    v16 = v20;
    sub_219BF7734();
    v17 = v7;
    v18 = v25;
    (*(v14 + 8))(v9, v17);
    sub_218C4A448(v16, v18, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
    swift_storeEnumTagMultiPayload();
    sub_218C4A448(v18, v15, type metadata accessor for SportsScoreSortingGroupByFilter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C41A54(void *a1)
{
  v19 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v19);
  v20 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C4A4B0(0, &qword_280E8C378, sub_218C4A358, &type metadata for SportsScoreSortingGroupByFilter.CodingKeys, MEMORY[0x277D84538]);
  v10 = v9;
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C4A358();
  sub_219BF7B44();
  sub_218C49F08(v21, v8, type metadata accessor for SportsScoreSortingGroupByFilter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v20;
    sub_218C4A448(v8, v20, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
    v28 = 1;
    v27 = 0;
    sub_218C4A518();
    v14 = v22;
    sub_219BF7834();
    if (!v14)
    {
      v26 = 1;
      sub_218C4A400(&qword_280EE24D8, type metadata accessor for SportsScoreSortingGroupByGroupFilter, &unk_219C247F0);
      sub_219BF7834();
    }

    v15 = v13;
  }

  else
  {
    sub_218C4A448(v8, v5, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
    v25 = 0;
    sub_218C4A518();
    v16 = v22;
    sub_219BF7834();
    if (!v16)
    {
      v24 = 1;
      sub_218C4A400(&qword_280EE24D8, type metadata accessor for SportsScoreSortingGroupByGroupFilter, &unk_219C247F0);
      sub_219BF7834();
    }

    v15 = v5;
  }

  sub_218C49F70(v15, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
  return (*(v23 + 8))(v12, v10);
}

void sub_218C41E48(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_218C41F5C(uint64_t a1)
{
  v2 = sub_218C4A358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C41F98(uint64_t a1)
{
  v2 = sub_218C4A358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C41FD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756761656CLL;
  }

  else
  {
    v3 = 0x74697465706D6F63;
  }

  if (v2)
  {
    v4 = 0xEA0000000000726FLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756761656CLL;
  }

  else
  {
    v5 = 0x74697465706D6F63;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA0000000000726FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218C4207C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218C42100(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218C42170(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218C421FC(uint64_t *a1@<X8>)
{
  v2 = 0x74697465706D6F63;
  if (*v1)
  {
    v2 = 0x65756761656CLL;
  }

  v3 = 0xEA0000000000726FLL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218C42320()
{
  v1 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C49F08(v0, v6, type metadata accessor for SportsScoreSortingGroupByFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_218C4A448(v6, v3, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
  v18 = 0;
  v19 = 0xE000000000000000;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = 0x2865756761656CLL;
    v9 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x74697465706D6F63;
    v9 = 0xEB0000000028726FLL;
  }

  MEMORY[0x21CECC330](v8, v9);
  v16 = 0x3D737265746C6966;
  v17 = 0xE800000000000000;
  sub_218C42540(0);
  sub_219BF2664();
  v10 = MEMORY[0x21CECC6D0](v15[1], &type metadata for SportsScoreSortingFilter);
  v12 = v11;

  MEMORY[0x21CECC330](v10, v12);

  MEMORY[0x21CECC330](v16, v17);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  v13 = v18;
  sub_218C49F70(v3, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
  return v13;
}

void sub_218C42540(uint64_t a1)
{
  if (!qword_280E903E8)
  {
    sub_218C425D4(255);
    sub_218C4A400(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
    v1 = sub_219BF26A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E903E8);
    }
  }
}

void sub_218C425D4(uint64_t a1)
{
  if (!qword_280E8FDC0)
  {
    sub_218C4263C();
    sub_218C42690();
    v1 = sub_219BF47D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FDC0);
    }
  }
}

unint64_t sub_218C4263C()
{
  result = qword_280EC01F8;
  if (!qword_280EC01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC01F8);
  }

  return result;
}

unint64_t sub_218C42690()
{
  result = qword_280EC0208;
  if (!qword_280EC0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0208);
  }

  return result;
}

void sub_218C42724(unint64_t *a1@<X0>, void *a2@<X2>, unint64_t *a3@<X8>)
{
  v799 = a2;
  v750 = a3;
  v738 = sub_219BDBF94();
  v4 = *(v738 - 8);
  MEMORY[0x28223BE20](v738);
  v737 = &v722 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C49EA4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v733 = &v722 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v743 = &v722 - v9;
  v751 = sub_219BF4AC4();
  v10 = *(v751 - 8);
  MEMORY[0x28223BE20](v751);
  v732 = &v722 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v742 = &v722 - v13;
  v14 = sub_219BDBD34();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v730 = &v722 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v731 = &v722 - v18;
  v768 = type metadata accessor for SportsScoreSortingFilterWhen(0);
  MEMORY[0x28223BE20](v768);
  v796 = (&v722 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v794 = (&v722 - v21);
  MEMORY[0x28223BE20](v22);
  v772 = (&v722 - v23);
  MEMORY[0x28223BE20](v24);
  v729 = (&v722 - v25);
  MEMORY[0x28223BE20](v26);
  v781 = &v722 - v27;
  MEMORY[0x28223BE20](v28);
  v783 = (&v722 - v29);
  v773 = type metadata accessor for SportsScoreSortingSubsetFilter(0);
  MEMORY[0x28223BE20](v773);
  v755 = &v722 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v766 = &v722 - v32;
  MEMORY[0x28223BE20](v33);
  v761 = &v722 - v34;
  MEMORY[0x28223BE20](v35);
  v763 = &v722 - v36;
  MEMORY[0x28223BE20](v37);
  v760 = &v722 - v38;
  v39 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v39 - 8);
  v741 = &v722 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v754 = &v722 - v42;
  MEMORY[0x28223BE20](v43);
  v749 = &v722 - v44;
  MEMORY[0x28223BE20](v45);
  v746 = &v722 - v46;
  MEMORY[0x28223BE20](v47);
  v759 = &v722 - v48;
  v49 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v49 - 8);
  v740 = &v722 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v739 = &v722 - v52;
  MEMORY[0x28223BE20](v53);
  v753 = &v722 - v54;
  MEMORY[0x28223BE20](v55);
  v752 = &v722 - v56;
  MEMORY[0x28223BE20](v57);
  v728 = (&v722 - v58);
  MEMORY[0x28223BE20](v59);
  v748 = &v722 - v60;
  MEMORY[0x28223BE20](v61);
  v747 = &v722 - v62;
  MEMORY[0x28223BE20](v63);
  v745 = &v722 - v64;
  MEMORY[0x28223BE20](v65);
  v744 = &v722 - v66;
  MEMORY[0x28223BE20](v67);
  v758 = &v722 - v68;
  MEMORY[0x28223BE20](v69);
  v757 = &v722 - v70;
  v71 = type metadata accessor for SportsScoreSortingOrFilter(0);
  MEMORY[0x28223BE20](v71 - 8);
  v73 = &v722 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v727 = &v722 - v75;
  MEMORY[0x28223BE20](v76);
  v795 = &v722 - v77;
  MEMORY[0x28223BE20](v78);
  v769 = &v722 - v79;
  MEMORY[0x28223BE20](v80);
  v780 = &v722 - v81;
  MEMORY[0x28223BE20](v82);
  v804 = &v722 - v83;
  v84 = type metadata accessor for SportsScoreSortingAndFilter(0);
  MEMORY[0x28223BE20](v84 - 8);
  v86 = &v722 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v791 = &v722 - v88;
  MEMORY[0x28223BE20](v89);
  v767 = &v722 - v90;
  MEMORY[0x28223BE20](v91);
  v793 = &v722 - v92;
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v756 = &v722 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v765 = &v722 - v96;
  MEMORY[0x28223BE20](v97);
  v762 = &v722 - v98;
  MEMORY[0x28223BE20](v99);
  v764 = &v722 - v100;
  MEMORY[0x28223BE20](v101);
  v774 = &v722 - v102;
  v103 = *a1;
  sub_218C42540(0);
  v787 = v104;
  sub_219BF2664();
  v105 = v806;
  v106 = *(v806 + 16);
  v797 = v103;

  v785 = v106;
  if (!v106)
  {
LABEL_599:

    *v750 = v797;
    return;
  }

  v107 = 0;
  v784 = v105 + 32;
  v735 = (v10 + 8);
  v734 = (v15 + 48);
  v725 = (v15 + 32);
  v724 = (v4 + 8);
  v723 = (v15 + 8);
  v736 = v14;
  v108 = v796;
  v109 = v794;
  v798 = v73;
  v110 = v804;
  v803 = v86;
  v111 = v793;
  v778 = v105;
  while (1)
  {
    if (v107 >= *(v105 + 16))
    {
      goto LABEL_621;
    }

    v112 = *(v784 + 8 * v107);
    if (v797 >> 62)
    {
      v709 = v107;
      v113 = sub_219BF7214();
      v107 = v709;
      v105 = v778;
      if (!v113)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v113 = *((v797 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v113)
      {
        goto LABEL_6;
      }
    }

    v114 = v112 >> 60;
    v802 = v113;
    if ((v112 >> 60) <= 3)
    {
      v786 = v107;
      if (v114 <= 1)
      {
        if (!v114)
        {
          v126 = swift_projectBox();
          v127 = v774;
          sub_218C49F08(v126, v774, type metadata accessor for SportsScoreSortingMatchFilter);

          sub_218A84E44(v127, v797, v799);
          v129 = v128;

          sub_218C49F70(v127, type metadata accessor for SportsScoreSortingMatchFilter);
LABEL_569:

          v797 = v129;
          goto LABEL_4;
        }

        v181 = swift_projectBox();
        v182 = v764;
        sub_218C49F08(v181, v764, type metadata accessor for SportsScoreSortingMatchFilter);
        v775 = v112;

        sub_218A84E44(v182, v797, v799);
        v111 = v183;
        if (v183 >> 62)
        {
          v184 = sub_219BF7214();
          if (v184)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v184)
          {
LABEL_76:
            v806 = MEMORY[0x277D84F90];
            sub_218C33F88(v184);
            if (v184 < 0)
            {
              goto LABEL_645;
            }

            v185 = 0;
            do
            {
              if ((v111 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](v185, v111);
              }

              else
              {
              }

              v186 = sub_219BF3F84();
              v188 = v187;

              v189 = v806;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21870B65C(0, *(v189 + 16) + 1, 1);
                v189 = v806;
              }

              v191 = *(v189 + 16);
              v190 = *(v189 + 24);
              if (v191 >= v190 >> 1)
              {
                sub_21870B65C((v190 > 1), v191 + 1, 1);
                v189 = v806;
              }

              ++v185;
              *(v189 + 16) = v191 + 1;
              v192 = v189 + 16 * v191;
              *(v192 + 32) = v186;
              *(v192 + 40) = v188;
            }

            while (v184 != v185);

            v567 = MEMORY[0x277D84F90];
LABEL_578:
            v111 = sub_218845F78(v189);

            v710 = 0;
            v809 = v567;
            v800 = v797 & 0xFFFFFFFFFFFFFF8;
            v801 = v797 & 0xC000000000000001;
            v792 = v797 + 32;
            v711 = v111 + 56;
            do
            {
              if (v801)
              {
                MEMORY[0x21CECE0F0](v710, v797);
                v155 = __OFADD__(v710++, 1);
                if (v155)
                {
                  goto LABEL_609;
                }
              }

              else
              {
                if (v710 >= *(v800 + 16))
                {
                  goto LABEL_610;
                }

                v155 = __OFADD__(v710++, 1);
                if (v155)
                {
                  goto LABEL_609;
                }
              }

              v712 = sub_219BF3F84();
              v714 = v713;
              if (*(v111 + 16) && (v715 = v712, sub_219BF7AA4(), sub_219BF5524(), v716 = sub_219BF7AE4(), v717 = -1 << *(v111 + 32), v718 = v716 & ~v717, ((*(v711 + ((v718 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v718) & 1) != 0))
              {
                v719 = ~v717;
                while (1)
                {
                  v720 = (*(v111 + 48) + 16 * v718);
                  v721 = *v720 == v715 && v720[1] == v714;
                  if (v721 || (sub_219BF78F4() & 1) != 0)
                  {
                    break;
                  }

                  v718 = (v718 + 1) & v719;
                  if (((*(v711 + ((v718 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v718) & 1) == 0)
                  {
                    goto LABEL_579;
                  }
                }
              }

              else
              {
LABEL_579:

                sub_219BF73D4();
                sub_219BF7414();
                sub_219BF7424();
                sub_219BF73E4();
              }

              v86 = v803;
              v108 = v796;
              v73 = v798;
              v110 = v804;
            }

            while (v710 != v802);

            sub_218C49F70(v764, type metadata accessor for SportsScoreSortingMatchFilter);

            v797 = v809;
            v109 = v794;
            goto LABEL_4;
          }
        }

        v567 = MEMORY[0x277D84F90];
        v189 = MEMORY[0x277D84F90];
        goto LABEL_578;
      }

      if (v114 == 2)
      {
        v130 = swift_projectBox();
        sub_218C49F08(v130, v111, type metadata accessor for SportsScoreSortingAndFilter);
        v775 = v112;

        v131 = v111;
        sub_219BF2664();
        v132 = *(v806 + 16);

        if (v132)
        {
          sub_219BF2664();
          v782 = *(v806 + 16);
          if (v782)
          {
            v779 = v806 + 32;
            v133 = v797;
            v134 = v806;

            v135 = v134;
            v136 = 0;
            v792 = v133;
            v777 = v134;
            do
            {
              sub_218A3241C(v136, 1, v135);
              v789 = v136;
              v137 = *(v779 + 8 * v136);

              sub_219659C8C(v133, v799, v137);
              v111 = v138;
              v139 = sub_2193D0138(v138);
              v788 = v137;
              if (v139)
              {
                v140 = v139;
                v806 = MEMORY[0x277D84F90];
                sub_218C33F88(v139);
                if (v140 < 0)
                {
                  goto LABEL_639;
                }

                v141 = 0;
                do
                {
                  if ((v111 & 0xC000000000000001) != 0)
                  {
                    MEMORY[0x21CECE0F0](v141, v111);
                  }

                  else
                  {
                  }

                  v142 = sub_219BF3F84();
                  v144 = v143;

                  v145 = v806;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_21870B65C(0, *(v145 + 16) + 1, 1);
                    v145 = v806;
                  }

                  v147 = *(v145 + 16);
                  v146 = *(v145 + 24);
                  if (v147 >= v146 >> 1)
                  {
                    sub_21870B65C((v146 > 1), v147 + 1, 1);
                    v145 = v806;
                  }

                  ++v141;
                  *(v145 + 16) = v147 + 1;
                  v148 = v145 + 16 * v147;
                  *(v148 + 32) = v142;
                  *(v148 + 40) = v144;
                }

                while (v140 != v141);

                v149 = MEMORY[0x277D84F90];
              }

              else
              {

                v149 = MEMORY[0x277D84F90];
                v145 = MEMORY[0x277D84F90];
              }

              v150 = sub_218845F78(v145);

              v809 = v149;
              v111 = v792;
              v151 = sub_2193D0138(v792);
              if (v151)
              {
                v152 = v151;
                v153 = 0;
                v801 = v111 & 0xFFFFFFFFFFFFFF8;
                v802 = v111 & 0xC000000000000001;
                v800 = v111 + 32;
                v154 = v150 + 56;
                while (1)
                {
                  if (v802)
                  {
                    v111 = MEMORY[0x21CECE0F0](v153, v792);
                    v155 = __OFADD__(v153++, 1);
                    if (v155)
                    {
                      goto LABEL_600;
                    }
                  }

                  else
                  {
                    if (v153 >= *(v801 + 16))
                    {
                      goto LABEL_601;
                    }

                    v111 = *(v800 + 8 * v153);

                    v155 = __OFADD__(v153++, 1);
                    if (v155)
                    {
LABEL_600:
                      __break(1u);
LABEL_601:
                      __break(1u);
LABEL_602:
                      __break(1u);
LABEL_603:
                      __break(1u);
LABEL_604:
                      __break(1u);
LABEL_605:
                      __break(1u);
LABEL_606:
                      __break(1u);
LABEL_607:
                      __break(1u);
LABEL_608:
                      __break(1u);
LABEL_609:
                      __break(1u);
LABEL_610:
                      __break(1u);
LABEL_611:
                      __break(1u);
LABEL_612:
                      __break(1u);
LABEL_613:
                      __break(1u);
LABEL_614:
                      __break(1u);
LABEL_615:
                      __break(1u);
                      goto LABEL_616;
                    }
                  }

                  v156 = sub_219BF3F84();
                  v158 = v157;
                  if (*(v150 + 16) && (v159 = v156, sub_219BF7AA4(), sub_219BF5524(), v160 = sub_219BF7AE4(), v161 = -1 << *(v150 + 32), v162 = v160 & ~v161, ((*(v154 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162) & 1) != 0))
                  {
                    v163 = ~v161;
                    while (1)
                    {
                      v164 = (*(v150 + 48) + 16 * v162);
                      v165 = *v164 == v159 && v164[1] == v158;
                      if (v165 || (sub_219BF78F4() & 1) != 0)
                      {
                        break;
                      }

                      v162 = (v162 + 1) & v163;
                      if (((*(v154 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162) & 1) == 0)
                      {
                        goto LABEL_39;
                      }
                    }

                    sub_219BF73D4();
                    sub_219BF7414();
                    sub_219BF7424();
                    sub_219BF73E4();
                  }

                  else
                  {
LABEL_39:
                  }

                  v110 = v804;
                  if (v153 == v152)
                  {
                    goto LABEL_23;
                  }
                }
              }

              v110 = v804;
LABEL_23:
              v136 = v789 + 1;

              v792 = v809;
              v109 = v794;
              v133 = v797;
              v73 = v798;
              v86 = v803;
              v135 = v777;
            }

            while (v136 != v782);

            v797 = v792;
            v108 = v796;
            v111 = v793;
          }

          else
          {
            v111 = v131;

            v110 = v804;
          }
        }

        else
        {
          v110 = v804;
          v111 = v131;
        }

        v706 = type metadata accessor for SportsScoreSortingAndFilter;
        v707 = v111;
        goto LABEL_573;
      }

      v193 = swift_projectBox();
      sub_218C49F08(v193, v110, type metadata accessor for SportsScoreSortingOrFilter);

      sub_219BF2664();
      v194 = *(v806 + 16);

      if (!v194)
      {
        sub_218C49F70(v110, type metadata accessor for SportsScoreSortingOrFilter);

        goto LABEL_4;
      }

      v775 = v112;
      sub_219BF2664();
      v195 = v806;
      v779 = *(v806 + 16);
      if (!v779)
      {

        v705 = MEMORY[0x277D84F90];
        goto LABEL_568;
      }

      v196 = 0;
      v777 = v806 + 32;
      v800 = v797 & 0xFFFFFFFFFFFFFF8;
      v801 = v797 & 0xC000000000000001;
      v197 = MEMORY[0x277D84F90];
      v111 = v781;
      v198 = v780;
      v776 = v806;
      while (1)
      {
        if (v196 >= *(v195 + 16))
        {
          goto LABEL_630;
        }

        v200 = *(v777 + 8 * v196);
        v201 = v200 >> 60;
        v792 = v197;
        v789 = v196;
        v788 = v200;
        if ((v200 >> 60) <= 3)
        {
          break;
        }

        v202 = v797;
        if (v201 > 5)
        {
          if (v201 == 6)
          {
            v233 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

            sub_21903E324(v233, v202);
            v212 = v234;
            goto LABEL_226;
          }

          if (v201 == 7)
          {
            v203 = swift_projectBox();
            v204 = v744;
            sub_218C49F08(v203, v744, type metadata accessor for SportsScoreSortingGroupByFilter);

            v205 = sub_218C490D4(v204, v202);
            v206 = v745;
            sub_218C49F08(v204, v745, type metadata accessor for SportsScoreSortingGroupByFilter);
            v207 = v746;
            v208 = sub_218C4A448(v206, v746, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
            MEMORY[0x28223BE20](v208);
            v209 = v799;
            *(&v722 - 2) = v207;
            *(&v722 - 1) = v209;
            v210 = v790;
            sub_218DDE84C(sub_218C4A8C8, (&v722 - 4), v205);
            v111 = v211;

            v806 = v111;
            sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
            v212 = sub_219BF56E4();
            v790 = v210;

            sub_218C49F70(v204, type metadata accessor for SportsScoreSortingGroupByFilter);
            v213 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
            v214 = v207;
LABEL_225:
            sub_218C49F70(v214, v213);
            goto LABEL_226;
          }

          v323 = swift_projectBox();
          sub_218C49F08(v323, v111, type metadata accessor for SportsScoreSortingFilterWhen);
          v324 = *v111;

          if (sub_219473EF8(v324, v202, v799, v200))
          {
            sub_219BF2664();
            v111 = v806;
            v325 = sub_2193D015C(v806);

            if (v325)
            {
              v326 = 0;
              do
              {
                if (v326 >= *(v111 + 16))
                {
                  goto LABEL_629;
                }

                v327 = v326 + 1;
                v328 = *(v111 + 32 + 8 * v326);

                sub_219659C8C(v202, v799, v328);
                v212 = v329;

                v202 = v212;
                v326 = v327;
              }

              while (v325 != v327);
            }

            else
            {
              v212 = v202;
            }
          }

          else
          {

            v212 = v202;
          }

          v213 = type metadata accessor for SportsScoreSortingFilterWhen;
          v343 = &v808;
LABEL_224:
          v214 = *(v343 - 32);
          goto LABEL_225;
        }

        if (v201 != 4)
        {
          v330 = swift_projectBox();
          v331 = v763;
          sub_218C49F08(v330, v763, type metadata accessor for SportsScoreSortingSubsetFilter);

          sub_218A84E44(v331, v202, v799);
          v333 = v332;
          v111 = sub_219AC4B08(v202, v332);
          sub_219BF2664();
          v334 = v806;
          v335 = *(v806 + 16);
          if (v335)
          {
            v336 = 0;
            do
            {
              if (v336 >= *(v334 + 16))
              {
                goto LABEL_617;
              }

              v337 = v336 + 1;
              v338 = *(v334 + 32 + 8 * v336);

              sub_219659C8C(v333, v799, v338);
              v340 = v339;

              v333 = v340;
              v336 = v337;
            }

            while (v335 != v337);
          }

          else
          {
            v340 = v333;
          }

          v806 = v111;
          sub_2191EDC00(v340);
          v349 = type metadata accessor for SportsScoreSortingSubsetFilter;
          v350 = &v795;
LABEL_220:
          sub_218C49F70(*(v350 - 32), v349);
          v212 = v806;
          goto LABEL_226;
        }

        v111 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v782 = v111;
        sub_219659C8C(v202, v799, v111);
        v222 = v221;
        v223 = sub_2193D0138(v221);
        if (v223)
        {
          v224 = v223;
          v806 = MEMORY[0x277D84F90];
          sub_218C33F88(v223);
          if (v224 < 0)
          {
            goto LABEL_647;
          }

          v225 = 0;
          do
          {
            if ((v222 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v225, v222);
            }

            else
            {
            }

            v226 = sub_219BF3F84();
            v228 = v227;

            v229 = v806;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21870B65C(0, *(v229 + 16) + 1, 1);
              v229 = v806;
            }

            v231 = *(v229 + 16);
            v230 = *(v229 + 24);
            if (v231 >= v230 >> 1)
            {
              sub_21870B65C((v230 > 1), v231 + 1, 1);
              v229 = v806;
            }

            ++v225;
            *(v229 + 16) = v231 + 1;
            v232 = v229 + 16 * v231;
            *(v232 + 32) = v226;
            *(v232 + 40) = v228;
          }

          while (v224 != v225);

          v86 = v803;
          v111 = MEMORY[0x277D84F90];
        }

        else
        {

          v111 = MEMORY[0x277D84F90];
          v229 = MEMORY[0x277D84F90];
        }

        v351 = sub_218845F78(v229);

        v352 = 0;
        v806 = v111;
        do
        {
          if (v801)
          {
            v111 = MEMORY[0x21CECE0F0](v352, v797);
            v353 = v352 + 1;
            if (__OFADD__(v352, 1))
            {
              goto LABEL_612;
            }
          }

          else
          {
            if (v352 >= *(v800 + 16))
            {
              goto LABEL_614;
            }

            v111 = *(v797 + 8 * v352 + 32);

            v353 = v352 + 1;
            if (__OFADD__(v352, 1))
            {
              goto LABEL_612;
            }
          }

          v354 = sub_219BF3F84();
          v356 = sub_2188537B8(v354, v355, v351);

          if (v356)
          {
          }

          else
          {
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
          }

          ++v352;
        }

        while (v353 != v802);

        v212 = v806;
LABEL_226:
        v357 = v212 >> 62;
        v358 = v792;
        if (v212 >> 62)
        {
          v375 = sub_219BF7214();
          v358 = v792;
          v359 = v375;
        }

        else
        {
          v359 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v360 = v358 >> 62;
        if (v358 >> 62)
        {
          v376 = sub_219BF7214();
          v362 = v376 + v359;
          if (__OFADD__(v376, v359))
          {
            goto LABEL_631;
          }
        }

        else
        {
          v361 = *((v358 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v362 = v361 + v359;
          if (__OFADD__(v361, v359))
          {
            goto LABEL_631;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v360)
          {
            v363 = v792;
            v364 = v792 & 0xFFFFFFFFFFFFFF8;
            if (v362 <= *((v792 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_237;
            }

            goto LABEL_236;
          }

LABEL_235:
          v111 = v792;
          sub_219BF7214();
          goto LABEL_236;
        }

        if (v360)
        {
          goto LABEL_235;
        }

LABEL_236:
        v363 = sub_219BF7364();
        v364 = v363 & 0xFFFFFFFFFFFFFF8;
LABEL_237:
        v792 = v363;
        v365 = *(v364 + 16);
        v366 = *(v364 + 24);
        if (v357)
        {
          v367 = sub_219BF7214();
          if (v367)
          {
LABEL_241:
            if (((v366 >> 1) - v365) < v359)
            {
              goto LABEL_638;
            }

            v368 = v364 + 8 * v365 + 32;
            v782 = v359;
            if (v357)
            {
              if (v367 < 1)
              {
                goto LABEL_642;
              }

              sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
              sub_218C49E30(&qword_27CC0CC70, MEMORY[0x277D83988]);
              for (i = 0; i != v367; ++i)
              {
                v370 = sub_218A35350(&v806, i, v212);
                v372 = *v371;

                (v370)(&v806, 0);
                *(v368 + 8 * i) = v372;
              }
            }

            else
            {
              sub_219BF4044();
              swift_arrayInitWithCopy();
            }

            if (v782 <= 0)
            {
              v108 = v796;
              v109 = v794;
              v111 = v781;
              v73 = v798;
              v198 = v780;
              v86 = v803;
              v197 = v792;
              v195 = v776;
              v199 = v789;
            }

            else
            {
              v373 = *(v364 + 16);
              v155 = __OFADD__(v373, v782);
              v374 = v373 + v782;
              v108 = v796;
              v109 = v794;
              v111 = v781;
              v73 = v798;
              v198 = v780;
              v86 = v803;
              v197 = v792;
              v195 = v776;
              v199 = v789;
              if (v155)
              {
                goto LABEL_641;
              }

              *(v364 + 16) = v374;
            }

            goto LABEL_91;
          }
        }

        else
        {
          v367 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v367)
          {
            goto LABEL_241;
          }
        }

        v108 = v796;
        v109 = v794;
        v111 = v781;
        v73 = v798;
        v198 = v780;
        v197 = v792;
        v195 = v776;
        v199 = v789;
        if (v359 > 0)
        {
          goto LABEL_633;
        }

LABEL_91:
        v196 = v199 + 1;
        if (v196 == v779)
        {

          v705 = v792;
LABEL_568:
          v806 = v705;
          sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
          sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
          v708 = v790;
          v129 = sub_219BF56E4();
          v790 = v708;

          v110 = v804;
          sub_218C49F70(v804, type metadata accessor for SportsScoreSortingOrFilter);
          goto LABEL_569;
        }
      }

      v215 = v797;
      if (v201 <= 1)
      {
        if (v201)
        {
          v235 = swift_projectBox();
          v236 = v762;
          sub_218C49F08(v235, v762, type metadata accessor for SportsScoreSortingMatchFilter);

          sub_218A84E44(v236, v215, v799);
          v111 = v237;
          v238 = sub_2193D0138(v237);
          if (v238)
          {
            v239 = v238;
            v806 = MEMORY[0x277D84F90];
            sub_218C33F88(v238);
            if (v239 < 0)
            {
              goto LABEL_648;
            }

            v240 = 0;
            do
            {
              if ((v111 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](v240, v111);
              }

              else
              {
              }

              v241 = sub_219BF3F84();
              v243 = v242;

              v244 = v806;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21870B65C(0, *(v244 + 16) + 1, 1);
                v244 = v806;
              }

              v246 = *(v244 + 16);
              v245 = *(v244 + 24);
              if (v246 >= v245 >> 1)
              {
                sub_21870B65C((v245 > 1), v246 + 1, 1);
                v244 = v806;
              }

              ++v240;
              *(v244 + 16) = v246 + 1;
              v247 = v244 + 16 * v246;
              *(v247 + 32) = v241;
              *(v247 + 40) = v243;
              v86 = v803;
            }

            while (v239 != v240);

            v341 = MEMORY[0x277D84F90];
          }

          else
          {

            v341 = MEMORY[0x277D84F90];
            v244 = MEMORY[0x277D84F90];
          }

          v111 = sub_218845F78(v244);

          v344 = 0;
          v806 = v341;
          do
          {
            if (v801)
            {
              MEMORY[0x21CECE0F0](v344, v797);
              v345 = v344 + 1;
              if (__OFADD__(v344, 1))
              {
                goto LABEL_613;
              }
            }

            else
            {
              if (v344 >= *(v800 + 16))
              {
                goto LABEL_615;
              }

              v345 = v344 + 1;
              if (__OFADD__(v344, 1))
              {
                goto LABEL_613;
              }
            }

            v346 = sub_219BF3F84();
            v348 = sub_2188537B8(v346, v347, v111);

            if (v348)
            {
            }

            else
            {
              sub_219BF73D4();
              sub_219BF7414();
              sub_219BF7424();
              sub_219BF73E4();
            }

            ++v344;
          }

          while (v345 != v802);

          v349 = type metadata accessor for SportsScoreSortingMatchFilter;
          v350 = &v794;
          goto LABEL_220;
        }

        v216 = swift_projectBox();
        v111 = v774;
        sub_218C49F08(v216, v774, type metadata accessor for SportsScoreSortingMatchFilter);

        sub_218A84E44(v111, v215, v799);
        v212 = v217;
        v218 = type metadata accessor for SportsScoreSortingMatchFilter;
        goto LABEL_103;
      }

      if (v201 == 2)
      {
        v219 = swift_projectBox();
        v111 = v767;
        sub_218C49F08(v219, v767, type metadata accessor for SportsScoreSortingAndFilter);

        sub_219A6059C(v111, v215, v799);
        v212 = v220;
        v218 = type metadata accessor for SportsScoreSortingAndFilter;
LABEL_103:
        v213 = v218;
        v214 = v111;
        goto LABEL_225;
      }

      v248 = swift_projectBox();
      sub_218C49F08(v248, v198, type metadata accessor for SportsScoreSortingOrFilter);

      sub_219BF2664();
      v111 = *(v806 + 16);

      v249 = v783;
      if (!v111)
      {
        sub_218C49F70(v198, type metadata accessor for SportsScoreSortingOrFilter);
        v212 = v797;

        goto LABEL_226;
      }

      v111 = MEMORY[0x277D84F90];
      v806 = MEMORY[0x277D84F90];
      sub_219BF2664();
      v250 = v809;
      v251 = *(v809 + 16);
      if (!v251)
      {
LABEL_189:

        v809 = v111;
        sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
        v342 = v790;
        v212 = sub_219BF56E4();
        v790 = v342;

        v213 = type metadata accessor for SportsScoreSortingOrFilter;
        v343 = &v807;
        goto LABEL_224;
      }

      v252 = 0;
      v782 = v809 + 32;
      v253 = v797;
      v771 = v809;
      v770 = v251;
      while (1)
      {
        if (v252 >= *(v250 + 16))
        {
          goto LABEL_625;
        }

        v254 = *(v782 + 8 * v252);
        v255 = v254 >> 60;
        if ((v254 >> 60) <= 3)
        {
          if (v255 <= 1)
          {
            if (!v255)
            {
              v269 = swift_projectBox();
              v270 = v774;
              sub_218C49F08(v269, v774, type metadata accessor for SportsScoreSortingMatchFilter);

              sub_218A84E44(v270, v253, v799);
              v266 = v271;
              v272 = type metadata accessor for SportsScoreSortingMatchFilter;
              goto LABEL_146;
            }

            v285 = swift_projectBox();
            v260 = v774;
            sub_218C49F08(v285, v774, type metadata accessor for SportsScoreSortingMatchFilter);

            sub_218A84E44(v260, v253, v799);
            v286 = v790;
            v288 = sub_218C40DBC(v287);

            v289 = sub_218845F78(v288);

            v266 = sub_218C48C9C(v290, v289);
            v790 = v286;

            v268 = type metadata accessor for SportsScoreSortingMatchFilter;
            goto LABEL_152;
          }

          v273 = v769;
          if (v255 == 2)
          {
            v274 = swift_projectBox();
            v270 = v767;
            sub_218C49F08(v274, v767, type metadata accessor for SportsScoreSortingAndFilter);

            sub_219A6059C(v270, v253, v799);
            v266 = v275;
            v272 = type metadata accessor for SportsScoreSortingAndFilter;
LABEL_146:
            v276 = v272;
            v277 = v270;
LABEL_169:
            sub_218C49F70(v277, v276);
            if (v266 >> 62)
            {
              goto LABEL_163;
            }

            goto LABEL_170;
          }

          v291 = swift_projectBox();
          sub_218C49F08(v291, v273, type metadata accessor for SportsScoreSortingOrFilter);

          sub_219BF2664();
          v292 = *(v809 + 16);

          if (v292)
          {
            v809 = MEMORY[0x277D84F90];
            sub_219BF2664();
            v293 = *(v805 + 16);
            v726 = v805;
            if (v293)
            {
              v294 = (v805 + 32);
              v295 = v799;
              v296 = v797;
              do
              {
                v297 = *v294++;

                sub_219659C8C(v296, v295, v297);
                sub_2191EDC00(v298);

                --v293;
              }

              while (v293);
            }

            v805 = v809;
            sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
            v299 = v790;
            v266 = sub_219BF56E4();
            v790 = v299;

            sub_218C49F70(v769, type metadata accessor for SportsScoreSortingOrFilter);
            v250 = v771;
            v251 = v770;
            if (v266 >> 62)
            {
LABEL_163:
              v315 = sub_219BF7214();
              if (v111 >> 62)
              {
                goto LABEL_164;
              }

              goto LABEL_171;
            }
          }

          else
          {
            sub_218C49F70(v273, type metadata accessor for SportsScoreSortingOrFilter);
            v266 = v797;

            if (v266 >> 62)
            {
              goto LABEL_163;
            }
          }
        }

        else
        {
          if (v255 > 5)
          {
            if (v255 == 6)
            {
              v283 = *((v254 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

              sub_21903E324(v283, v253);
              v266 = v284;
              if (v284 >> 62)
              {
                goto LABEL_163;
              }

              goto LABEL_170;
            }

            if (v255 != 7)
            {
              v300 = swift_projectBox();
              sub_218C49F08(v300, v249, type metadata accessor for SportsScoreSortingFilterWhen);
              v301 = *v249;

              v302 = v253;
              v266 = v253;
              v303 = v799;
              if (sub_219473EF8(v301, v302, v799, v254))
              {
                sub_219BF2664();
                v304 = v809;

                v305 = v790;
                v266 = sub_218C49FF0(v266, v304, v303);
                v790 = v305;
              }

              else
              {
              }

              v276 = type metadata accessor for SportsScoreSortingFilterWhen;
              v277 = v249;
              goto LABEL_169;
            }

            v256 = swift_projectBox();
            v257 = v757;
            sub_218C49F08(v256, v757, type metadata accessor for SportsScoreSortingGroupByFilter);

            v258 = sub_218C490D4(v257, v253);
            v259 = v758;
            sub_218C49F08(v257, v758, type metadata accessor for SportsScoreSortingGroupByFilter);
            v260 = v759;
            v261 = sub_218C4A448(v259, v759, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
            MEMORY[0x28223BE20](v261);
            v262 = v799;
            *(&v722 - 2) = v260;
            *(&v722 - 1) = v262;
            v263 = v790;
            sub_218DDE84C(sub_218C4A8C8, (&v722 - 4), v258);
            v265 = v264;

            v809 = v265;
            sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
            v266 = sub_219BF56E4();
            v790 = v263;

            v267 = v257;
            v250 = v771;
            sub_218C49F70(v267, type metadata accessor for SportsScoreSortingGroupByFilter);
            v268 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
LABEL_152:
            v276 = v268;
            v277 = v260;
            v251 = v770;
            goto LABEL_169;
          }

          if (v255 == 4)
          {
            v278 = *((v254 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

            sub_219659C8C(v253, v799, v278);
            v279 = v790;
            v281 = sub_218C40DBC(v280);

            v282 = sub_218845F78(v281);

            v266 = sub_218C48C9C(v797, v282);
            v790 = v279;

            swift_bridgeObjectRelease_n();
          }

          else
          {
            v306 = swift_projectBox();
            v307 = v760;
            sub_218C49F08(v306, v760, type metadata accessor for SportsScoreSortingSubsetFilter);

            v308 = v799;
            sub_218A84E44(v307, v253, v799);
            v310 = v309;
            v311 = sub_219AC4B08(v797, v309);
            sub_219BF2664();
            v312 = v809;

            v313 = v790;
            v314 = sub_218C49FF0(v310, v312, v308);
            v790 = v313;

            v251 = v770;

            v809 = v311;
            sub_2191EDC00(v314);
            sub_218C49F70(v307, type metadata accessor for SportsScoreSortingSubsetFilter);
            v266 = v809;
          }

          v250 = v771;
          if (v266 >> 62)
          {
            goto LABEL_163;
          }
        }

LABEL_170:
        v315 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v111 >> 62)
        {
LABEL_164:
          v316 = sub_219BF7214();
          v155 = __OFADD__(v316, v315);
          v317 = v316 + v315;
          if (v155)
          {
            goto LABEL_626;
          }

          goto LABEL_172;
        }

LABEL_171:
        v318 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v155 = __OFADD__(v318, v315);
        v317 = v318 + v315;
        if (v155)
        {
          goto LABEL_626;
        }

LABEL_172:
        sub_218861260(v317, 1);
        v111 = v806;
        sub_218A3363C((v806 & 0xFFFFFFFFFFFFFF8) + 8 * *((v806 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v806 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v806 & 0xFFFFFFFFFFFFFF8) + 0x10), v266);
        v320 = v319;

        if (v320 < v315)
        {
          goto LABEL_627;
        }

        v86 = v803;
        v253 = v797;
        if (v320 >= 1)
        {
          v321 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v155 = __OFADD__(v321, v320);
          v322 = v321 + v320;
          if (v155)
          {
            goto LABEL_637;
          }

          *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) = v322;
        }

        ++v252;
        v806 = v111;
        v249 = v783;
        if (v252 == v251)
        {
          goto LABEL_189;
        }
      }
    }

    if (v114 > 5)
    {
      break;
    }

    v786 = v107;
    if (v114 == 4)
    {
      v111 = *((v112 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      sub_219659C8C(v797, v799, v111);
      v167 = v166;
      if (v166 >> 62)
      {
        v168 = sub_219BF7214();
      }

      else
      {
        v168 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v789 = v111;
      v788 = v112 & 0xFFFFFFFFFFFFFFFLL;
      if (v168)
      {
        v806 = MEMORY[0x277D84F90];
        sub_218C33F88(v168);
        if (v168 < 0)
        {
          goto LABEL_646;
        }

        v169 = 0;
        do
        {
          if ((v167 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CECE0F0](v169, v167);
          }

          else
          {
          }

          v170 = sub_219BF3F84();
          v172 = v171;

          v173 = v806;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21870B65C(0, *(v173 + 16) + 1, 1);
            v173 = v806;
          }

          v175 = *(v173 + 16);
          v174 = *(v173 + 24);
          if (v175 >= v174 >> 1)
          {
            sub_21870B65C((v174 > 1), v175 + 1, 1);
            v173 = v806;
          }

          ++v169;
          *(v173 + 16) = v175 + 1;
          v176 = v173 + 16 * v175;
          *(v176 + 32) = v170;
          *(v176 + 40) = v172;
        }

        while (v168 != v169);

        v111 = MEMORY[0x277D84F90];
      }

      else
      {

        v111 = MEMORY[0x277D84F90];
        v173 = MEMORY[0x277D84F90];
      }

      v692 = sub_218845F78(v173);

      v693 = 0;
      v809 = v111;
      v800 = v797 & 0xFFFFFFFFFFFFFF8;
      v801 = v797 & 0xC000000000000001;
      v792 = v797 + 32;
      v694 = v692 + 56;
      do
      {
        if (v801)
        {
          MEMORY[0x21CECE0F0](v693, v797);
          v155 = __OFADD__(v693++, 1);
          if (v155)
          {
            goto LABEL_608;
          }
        }

        else
        {
          if (v693 >= *(v800 + 16))
          {
            goto LABEL_611;
          }

          v155 = __OFADD__(v693++, 1);
          if (v155)
          {
            goto LABEL_608;
          }
        }

        v695 = sub_219BF3F84();
        v697 = v696;
        if (*(v692 + 16) && (v698 = v695, sub_219BF7AA4(), sub_219BF5524(), v699 = sub_219BF7AE4(), v700 = -1 << *(v692 + 32), v701 = v699 & ~v700, ((*(v694 + ((v701 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v701) & 1) != 0))
        {
          v702 = ~v700;
          while (1)
          {
            v703 = (*(v692 + 48) + 16 * v701);
            v704 = *v703 == v698 && v703[1] == v697;
            if (v704 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v701 = (v701 + 1) & v702;
            if (((*(v694 + ((v701 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v701) & 1) == 0)
            {
              goto LABEL_541;
            }
          }
        }

        else
        {
LABEL_541:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        v86 = v803;
        v108 = v796;
        v110 = v804;
        v111 = v793;
      }

      while (v693 != v802);

      v797 = v809;
      v109 = v794;
      v73 = v798;
      goto LABEL_5;
    }

    v383 = swift_projectBox();
    v384 = v761;
    sub_218C49F08(v383, v761, type metadata accessor for SportsScoreSortingSubsetFilter);
    v775 = v112;

    v385 = v797;
    sub_218A84E44(v384, v797, v799);
    v387 = v386;
    v771 = sub_219AC4B08(v385, v386);
    sub_219BF2664();
    v388 = v806;
    v792 = *(v806 + 16);
    if (v792)
    {
      v389 = 0;
      v789 = v806 + 32;
      v390 = v795;
      v111 = v791;
      v779 = v806;
      v391 = v387;
      while (1)
      {
        if (v389 >= *(v388 + 16))
        {
          goto LABEL_620;
        }

        v396 = *(v789 + 8 * v389);
        if (v391 >> 62)
        {
          v565 = *(v789 + 8 * v389);
          v566 = sub_219BF7214();
          v396 = v565;
          v397 = v566;
          v388 = v779;
          if (!v397)
          {
            goto LABEL_263;
          }
        }

        else
        {
          v397 = *((v391 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v397)
          {
            goto LABEL_263;
          }
        }

        v398 = v396 >> 60;
        v801 = v397;
        v802 = v391;
        v800 = v389;
        if ((v396 >> 60) > 3)
        {
          if (v398 > 5)
          {
            v399 = v772;
            if (v398 == 6)
            {
              v447 = *((v396 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v806 = MEMORY[0x277D84F90];
              v448 = v391 & 0xC000000000000001;
              v788 = v396 & 0xFFFFFFFFFFFFFFFLL;

              v449 = 0;
              v450 = v391 & 0xFFFFFFFFFFFFFF8;
              v111 = v790;
              do
              {
                if (v448)
                {
                  v451 = MEMORY[0x21CECE0F0](v449, v391);
                  v452 = v449 + 1;
                  if (__OFADD__(v449, 1))
                  {
                    goto LABEL_602;
                  }
                }

                else
                {
                  if (v449 >= *(v450 + 16))
                  {
                    goto LABEL_603;
                  }

                  v451 = *(v391 + 8 * v449 + 32);

                  v452 = v449 + 1;
                  if (__OFADD__(v449, 1))
                  {
                    goto LABEL_602;
                  }
                }

                v809 = v451;
                v453 = sub_219038E4C(&v809, v447);
                if (v111)
                {
                  goto LABEL_652;
                }

                if (v453)
                {
                  sub_219BF73D4();
                  sub_219BF7414();
                  sub_219BF7424();
                  sub_219BF73E4();
                  v391 = v802;
                }

                else
                {
                }

                ++v449;
              }

              while (v452 != v801);
              v790 = 0;
              v494 = sub_219038F68(v447);

              if (sub_2193D0138(v494))
              {
                v495 = sub_21994AFE0(v494);
                sub_218A323F8(0, v495, v494);
                v73 = v798;
                v86 = v803;
                if (v495)
                {
                }

                else
                {
                  MEMORY[0x21CECE0F0](0, v494);
                }

                v496 = v742;
                sub_219BF3FA4();
                v497 = v743;
                sub_219BF4AB4();
                (*v735)(v496, v751);
                v498 = v736;
                if ((*v734)(v497, 1, v736) == 1)
                {

                  sub_2189DD39C(v497);

                  v391 = MEMORY[0x277D84F90];
                }

                else
                {
                  v514 = v731;
                  (*v725)(v731, v497, v498);
                  v515 = v737;
                  v516 = sub_219BDBF34();
                  MEMORY[0x28223BE20](v516);
                  *(&v722 - 2) = v515;
                  *(&v722 - 1) = v514;
                  v517 = v790;
                  v518 = sub_2195EB2C4(sub_218C4A8AC, &v722 - 4, v494);
                  v790 = v517;

                  (*v724)(v515, v738);
                  (*v723)(v514, v498);

                  v391 = v518;
                }

                v390 = v795;
                v108 = v796;
                v109 = v794;
              }

              else
              {

                v391 = MEMORY[0x277D84F90];
                v390 = v795;
                v108 = v796;
                v109 = v794;
                v73 = v798;
                v86 = v803;
              }
            }

            else
            {
              if (v398 == 7)
              {
                v400 = swift_projectBox();
                v401 = v752;
                sub_218C49F08(v400, v752, type metadata accessor for SportsScoreSortingGroupByFilter);

                v402 = sub_218C490D4(v401, v391);
                v403 = v753;
                sub_218C49F08(v401, v753, type metadata accessor for SportsScoreSortingGroupByFilter);
                v404 = v754;
                v405 = sub_218C4A448(v403, v754, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                MEMORY[0x28223BE20](v405);
                v406 = v799;
                *(&v722 - 2) = v404;
                *(&v722 - 1) = v406;
                v407 = v790;
                sub_218DDE84C(sub_218C4A8C8, (&v722 - 4), v402);
                v409 = v408;

                v806 = v409;
                sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
                v391 = sub_219BF56E4();
                v790 = v407;

                v410 = v401;
                v73 = v798;
                sub_218C49F70(v410, type metadata accessor for SportsScoreSortingGroupByFilter);
                sub_218C49F70(v404, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

                v390 = v795;
              }

              else
              {
                v471 = v396;
                v472 = swift_projectBox();
                sub_218C49F08(v472, v399, type metadata accessor for SportsScoreSortingFilterWhen);
                v473 = *v399;

                if (sub_219473EF8(v473, v391, v799, v471))
                {
                  v474 = v391;
                  sub_219BF2664();
                  v111 = v806;
                  v475 = sub_2193D015C(v806);

                  if (v475)
                  {
                    v476 = 0;
                    do
                    {
                      if (v476 >= *(v111 + 16))
                      {
                        goto LABEL_628;
                      }

                      v477 = v476 + 1;
                      v478 = *(v111 + 32 + 8 * v476);

                      sub_219659C8C(v474, v799, v478);
                      v480 = v479;

                      v474 = v480;
                      v476 = v477;
                      v165 = v475 == v477;
                      v73 = v798;
                    }

                    while (!v165);
                  }

                  else
                  {
                    v480 = v474;
                  }

                  v391 = v480;
                  v399 = v772;
                  v390 = v795;
                }

                sub_218C49F70(v399, type metadata accessor for SportsScoreSortingFilterWhen);
              }

              v108 = v796;
              v109 = v794;
            }

            goto LABEL_261;
          }

          if (v398 != 4)
          {
            v481 = v396;
            v482 = swift_projectBox();
            v483 = v391;
            v484 = v766;
            sub_218C49F08(v482, v766, type metadata accessor for SportsScoreSortingSubsetFilter);
            v788 = v481;

            sub_218A84E44(v484, v483, v799);
            v486 = v485;
            v111 = sub_219AC4B08(v483, v485);
            sub_219BF2664();
            v487 = v806;
            v488 = *(v806 + 16);
            if (v488)
            {
              v489 = 0;
              while (v489 < *(v487 + 16))
              {
                v490 = v489 + 1;
                v491 = *(v487 + 32 + 8 * v489);

                sub_219659C8C(v486, v799, v491);
                v493 = v492;

                v486 = v493;
                v489 = v490;
                if (v488 == v490)
                {
                  goto LABEL_363;
                }
              }

LABEL_616:
              __break(1u);
LABEL_617:
              __break(1u);
LABEL_618:
              __break(1u);
LABEL_619:
              __break(1u);
LABEL_620:
              __break(1u);
LABEL_621:
              __break(1u);
LABEL_622:
              __break(1u);
LABEL_623:
              __break(1u);
              goto LABEL_624;
            }

            v493 = v486;
LABEL_363:

            v806 = v111;
            sub_2191EDC00(v493);

            sub_218C49F70(v766, type metadata accessor for SportsScoreSortingSubsetFilter);

            v391 = v806;
            v390 = v795;
            v108 = v796;
            v109 = v794;
            v73 = v798;
            goto LABEL_261;
          }

          v439 = v396 & 0xFFFFFFFFFFFFFFFLL;
          v440 = *((v396 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v441 = v440 >> 60;
          v442 = MEMORY[0x277D84F90];
          if ((v440 >> 60) > 3)
          {
            if (v441 > 5)
            {
              if (v441 == 6)
              {
                v525 = *((v440 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                sub_21903E324(v525, v802);
                v445 = v526;
              }

              else
              {
                if (v441 == 7)
                {
                  v443 = swift_projectBox();
                  v444 = v728;
                  sub_218C49F08(v443, v728, type metadata accessor for SportsScoreSortingGroupByFilter);

                  v445 = sub_218C49BFC(v444, v391, v799);
                  v446 = type metadata accessor for SportsScoreSortingGroupByFilter;
                }

                else
                {
                  v534 = swift_projectBox();
                  v444 = v729;
                  sub_218C49F08(v534, v729, type metadata accessor for SportsScoreSortingFilterWhen);

                  sub_2197731BC(v444, v391, v799, v440);
                  v445 = v535;
                  v446 = type metadata accessor for SportsScoreSortingFilterWhen;
                }

                sub_218C49F70(v444, v446);
                v111 = v791;
              }

LABEL_387:
              v538 = sub_2193D0138(v445);
              v777 = v440;
              v776 = v439;
              if (v538)
              {
                v539 = v538;
                v806 = v442;
                sub_218C33F88(v538);
                if (v539 < 0)
                {
                  goto LABEL_643;
                }

                if (sub_21994AFE0(v445))
                {
                  v442 = v806;
                  v540 = 32;
                  do
                  {

                    v541 = sub_219BF3F84();
                    v543 = v542;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_21870B65C(0, *(v442 + 16) + 1, 1);
                      v442 = v806;
                    }

                    v545 = *(v442 + 16);
                    v544 = *(v442 + 24);
                    if (v545 >= v544 >> 1)
                    {
                      sub_21870B65C((v544 > 1), v545 + 1, 1);
                      v442 = v806;
                    }

                    *(v442 + 16) = v545 + 1;
                    v546 = v442 + 16 * v545;
                    *(v546 + 32) = v541;
                    *(v546 + 40) = v543;
                    v540 += 8;
                    --v539;
                    v111 = v791;
                  }

                  while (v539);
                }

                else
                {
                  v548 = v445;
                  v549 = 0;
                  v788 = v548;
                  v782 = v548 & 0xC000000000000001;
                  do
                  {
                    if (v782)
                    {
                      MEMORY[0x21CECE0F0](v549, v788);
                    }

                    else
                    {
                    }

                    v550 = sub_219BF3F84();
                    v552 = v551;

                    v442 = v806;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_21870B65C(0, *(v442 + 16) + 1, 1);
                      v442 = v806;
                    }

                    v554 = *(v442 + 16);
                    v553 = *(v442 + 24);
                    if (v554 >= v553 >> 1)
                    {
                      sub_21870B65C((v553 > 1), v554 + 1, 1);
                      v442 = v806;
                    }

                    ++v549;
                    *(v442 + 16) = v554 + 1;
                    v555 = v442 + 16 * v554;
                    *(v555 + 32) = v550;
                    *(v555 + 40) = v552;
                  }

                  while (v539 != v549);
                }

                v547 = MEMORY[0x277D84F90];
              }

              else
              {

                v547 = v442;
              }

              v556 = sub_218845F78(v442);

              v557 = 0;
              v806 = v547;
              v558 = v802;
              v559 = v802 & 0xC000000000000001;
              v560 = v802 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v559)
                {
                  MEMORY[0x21CECE0F0](v557, v558);
                  v561 = v557 + 1;
                  if (__OFADD__(v557, 1))
                  {
                    goto LABEL_604;
                  }
                }

                else
                {
                  if (v557 >= *(v560 + 16))
                  {
                    goto LABEL_607;
                  }

                  v561 = v557 + 1;
                  if (__OFADD__(v557, 1))
                  {
                    goto LABEL_604;
                  }
                }

                v562 = sub_219BF3F84();
                v564 = sub_2188537B8(v562, v563, v556);

                if (v564)
                {
                }

                else
                {
                  sub_219BF73D4();
                  sub_219BF7414();
                  sub_219BF7424();
                  sub_219BF73E4();
                }

                v73 = v798;
                v390 = v795;
                v558 = v802;
                ++v557;
                v165 = v561 == v801;
                v86 = v803;
              }

              while (!v165);

              v391 = v806;
              v108 = v796;
              v109 = v794;
              goto LABEL_262;
            }

            if (v441 == 4)
            {
              v523 = *((v440 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

              sub_219659C8C(v802, v799, v523);
              v445 = sub_219AC4B08(v802, v524);

              v442 = MEMORY[0x277D84F90];

              goto LABEL_387;
            }

            v536 = swift_projectBox();
            v531 = v760;
            sub_218C49F08(v536, v760, type metadata accessor for SportsScoreSortingSubsetFilter);

            sub_218E1E098(v531, v391, v799);
            v445 = v537;
            v533 = type metadata accessor for SportsScoreSortingSubsetFilter;
            goto LABEL_385;
          }

          if (v441 > 1)
          {
            if (v441 != 2)
            {
              v530 = swift_projectBox();
              v531 = v727;
              sub_218C49F08(v530, v727, type metadata accessor for SportsScoreSortingOrFilter);

              sub_2196840F4(v531, v391, v799);
              v445 = v532;
              v533 = type metadata accessor for SportsScoreSortingOrFilter;
LABEL_385:
              v521 = v533;
              v522 = v531;
              v111 = v791;
              goto LABEL_386;
            }

            v519 = swift_projectBox();
            v502 = v767;
            sub_218C49F08(v519, v767, type metadata accessor for SportsScoreSortingAndFilter);

            sub_219A6059C(v502, v802, v799);
            v445 = v520;
            v504 = type metadata accessor for SportsScoreSortingAndFilter;
          }

          else
          {
            if (v441)
            {
              v527 = swift_projectBox();
              v528 = v774;
              sub_218C49F08(v527, v774, type metadata accessor for SportsScoreSortingMatchFilter);

              sub_218A84E44(v528, v391, v799);
              v445 = sub_219AC4B08(v802, v529);

              v521 = type metadata accessor for SportsScoreSortingMatchFilter;
              v522 = v528;
              v442 = MEMORY[0x277D84F90];
              goto LABEL_386;
            }

            v501 = swift_projectBox();
            v502 = v774;
            sub_218C49F08(v501, v774, type metadata accessor for SportsScoreSortingMatchFilter);

            sub_218A84E44(v502, v802, v799);
            v445 = v503;
            v504 = type metadata accessor for SportsScoreSortingMatchFilter;
          }

          v521 = v504;
          v522 = v502;
LABEL_386:
          sub_218C49F70(v522, v521);
          goto LABEL_387;
        }

        if (v398 <= 1)
        {
          if (v398)
          {
            v411 = v396;
            v412 = swift_projectBox();
            v413 = v765;
            sub_218C49F08(v412, v765, type metadata accessor for SportsScoreSortingMatchFilter);
            v788 = v411;

            sub_218A84E44(v413, v802, v799);
            v415 = v414;
            v416 = sub_2193D0138(v414);
            if (v416)
            {
              v417 = v416;
              v806 = MEMORY[0x277D84F90];
              sub_218C33F88(v416);
              if (v417 < 0)
              {
                goto LABEL_644;
              }

              v418 = 0;
              do
              {
                if ((v415 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x21CECE0F0](v418, v415);
                }

                else
                {
                }

                v419 = sub_219BF3F84();
                v421 = v420;

                v422 = v806;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_21870B65C(0, *(v422 + 16) + 1, 1);
                  v422 = v806;
                }

                v424 = *(v422 + 16);
                v423 = *(v422 + 24);
                if (v424 >= v423 >> 1)
                {
                  sub_21870B65C((v423 > 1), v424 + 1, 1);
                  v422 = v806;
                }

                ++v418;
                *(v422 + 16) = v424 + 1;
                v425 = v422 + 16 * v424;
                *(v425 + 32) = v419;
                *(v425 + 40) = v421;
                v111 = v791;
              }

              while (v417 != v418);

              v499 = MEMORY[0x277D84F90];
            }

            else
            {

              v499 = MEMORY[0x277D84F90];
              v422 = MEMORY[0x277D84F90];
            }

            v505 = sub_218845F78(v422);

            v506 = 0;
            v806 = v499;
            v507 = v802;
            v508 = v802 & 0xC000000000000001;
            v509 = v802 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v508)
              {
                MEMORY[0x21CECE0F0](v506, v507);
                v510 = v506 + 1;
                if (__OFADD__(v506, 1))
                {
                  goto LABEL_605;
                }
              }

              else
              {
                if (v506 >= *(v509 + 16))
                {
                  goto LABEL_606;
                }

                v510 = v506 + 1;
                if (__OFADD__(v506, 1))
                {
                  goto LABEL_605;
                }
              }

              v511 = sub_219BF3F84();
              v513 = sub_2188537B8(v511, v512, v505);

              if (v513)
              {
              }

              else
              {
                sub_219BF73D4();
                sub_219BF7414();
                sub_219BF7424();
                sub_219BF73E4();
              }

              v390 = v795;
              v507 = v802;
              ++v506;
              v165 = v510 == v801;
              v86 = v803;
            }

            while (!v165);

            sub_218C49F70(v765, type metadata accessor for SportsScoreSortingMatchFilter);

            v391 = v806;
            v108 = v796;
            v109 = v794;
            v73 = v798;
            goto LABEL_262;
          }

          v392 = swift_projectBox();
          v393 = v774;
          sub_218C49F08(v392, v774, type metadata accessor for SportsScoreSortingMatchFilter);

          sub_218A84E44(v393, v802, v799);
          v395 = v394;

          sub_218C49F70(v393, type metadata accessor for SportsScoreSortingMatchFilter);

          v391 = v395;
          goto LABEL_261;
        }

        if (v398 == 2)
        {
          v426 = v396;
          v427 = swift_projectBox();
          sub_218C49F08(v427, v111, type metadata accessor for SportsScoreSortingAndFilter);
          v788 = v426;

          v428 = v111;
          sub_219BF2664();
          v429 = *(v806 + 16);

          if (v429)
          {
            sub_219BF2664();
            v430 = *(v806 + 16);
            if (v430)
            {
              v801 = v806;
              v431 = (v806 + 32);
              v432 = v802;

              v391 = v432;
              v433 = v790;
              do
              {
                v434 = *v431++;

                sub_219659C8C(v432, v799, v434);
                v435 = v433;
                v437 = sub_218C40DBC(v436);

                v438 = sub_218845F78(v437);

                v391 = sub_218C48A88(v391, v438);
                v433 = v435;

                swift_bridgeObjectRelease_n();
                --v430;
              }

              while (v430);
              v790 = v435;

              v108 = v796;
              v73 = v798;
              v86 = v803;
              v111 = v791;
            }

            else
            {
              v111 = v428;
              v391 = v802;
            }

            v109 = v794;
            v390 = v795;
          }

          else
          {
            v390 = v795;
            v111 = v428;
            v391 = v802;
          }

          sub_218C49F70(v111, type metadata accessor for SportsScoreSortingAndFilter);

          goto LABEL_262;
        }

        v454 = v396;
        v455 = swift_projectBox();
        sub_218C49F08(v455, v390, type metadata accessor for SportsScoreSortingOrFilter);

        sub_219BF2664();
        v456 = *(v806 + 16);

        if (!v456)
        {
          sub_218C49F70(v390, type metadata accessor for SportsScoreSortingOrFilter);

          v111 = v791;
          v388 = v779;
          v389 = v800;
          v391 = v802;
          goto LABEL_263;
        }

        v788 = v454;
        v111 = MEMORY[0x277D84F90];
        v806 = MEMORY[0x277D84F90];
        sub_219BF2664();
        v457 = *(v809 + 16);
        v801 = v809;
        if (v457)
        {
          break;
        }

LABEL_343:

        v809 = v111;
        sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
        v500 = v790;
        v391 = sub_219BF56E4();
        v790 = v500;

        v390 = v795;
        sub_218C49F70(v795, type metadata accessor for SportsScoreSortingOrFilter);

        v108 = v796;
LABEL_261:
        v111 = v791;
LABEL_262:
        v388 = v779;
        v389 = v800;
LABEL_263:
        if (++v389 == v792)
        {
          goto LABEL_562;
        }
      }

      v458 = (v809 + 32);
      v459 = v799;
      while (2)
      {
        v460 = *v458++;

        sub_219659C8C(v802, v459, v460);
        v462 = v461;
        if (v461 >> 62)
        {
          v463 = sub_219BF7214();
          if (!(v111 >> 62))
          {
            goto LABEL_316;
          }
        }

        else
        {
          v463 = *((v461 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!(v111 >> 62))
          {
LABEL_316:
            v464 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v155 = __OFADD__(v464, v463);
            v465 = v464 + v463;
            if (v155)
            {
              goto LABEL_622;
            }

            goto LABEL_317;
          }
        }

        v470 = sub_219BF7214();
        v155 = __OFADD__(v470, v463);
        v465 = v470 + v463;
        if (v155)
        {
          goto LABEL_622;
        }

LABEL_317:
        sub_218861260(v465, 1);
        v111 = v806;
        sub_218A3363C((v806 & 0xFFFFFFFFFFFFFF8) + 8 * *((v806 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v806 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v806 & 0xFFFFFFFFFFFFFF8) + 0x10), v462);
        v467 = v466;

        if (v467 < v463)
        {
          goto LABEL_623;
        }

        v73 = v798;
        v459 = v799;
        v86 = v803;
        if (v467 >= 1)
        {
          v468 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v155 = __OFADD__(v468, v467);
          v469 = v468 + v467;
          if (v155)
          {
            goto LABEL_634;
          }

          *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) = v469;
        }

        v806 = v111;
        --v457;
        v109 = v794;
        if (!v457)
        {
          goto LABEL_343;
        }

        continue;
      }
    }

    v391 = v387;
LABEL_562:

    v806 = v771;
    sub_2191EDC00(v391);

    sub_218C49F70(v761, type metadata accessor for SportsScoreSortingSubsetFilter);

    v797 = v806;
    v110 = v804;
LABEL_4:
    v111 = v793;
LABEL_5:
    v105 = v778;
    v107 = v786;
LABEL_6:
    if (++v107 == v785)
    {
      goto LABEL_599;
    }
  }

  if (v114 == 6)
  {
    v177 = *((v112 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v178 = v107;

    sub_21903E324(v177, v797);
    v180 = v179;
    v111 = v793;

    v107 = v178;
    v105 = v778;
    v797 = v180;
    v110 = v804;
    goto LABEL_6;
  }

  v786 = v107;
  if (v114 == 7)
  {
    v115 = swift_projectBox();
    v116 = v747;
    sub_218C49F08(v115, v747, type metadata accessor for SportsScoreSortingGroupByFilter);

    v117 = sub_218C490D4(v116, v797);
    v118 = v748;
    sub_218C49F08(v116, v748, type metadata accessor for SportsScoreSortingGroupByFilter);
    v119 = v749;
    v120 = sub_218C4A448(v118, v749, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
    MEMORY[0x28223BE20](v120);
    v121 = v799;
    *(&v722 - 2) = v119;
    *(&v722 - 1) = v121;
    v122 = v790;
    sub_218DDE84C(sub_218C4A8C8, (&v722 - 4), v117);
    v124 = v123;

    v806 = v124;
    sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
    sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
    v109 = v794;
    v108 = v796;
    v125 = sub_219BF56E4();
    v790 = v122;
    v111 = v793;

    sub_218C49F70(v116, type metadata accessor for SportsScoreSortingGroupByFilter);
    sub_218C49F70(v119, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

    v797 = v125;
    v110 = v804;
    goto LABEL_5;
  }

  v377 = swift_projectBox();
  sub_218C49F08(v377, v109, type metadata accessor for SportsScoreSortingFilterWhen);
  v378 = *v109;

  v379 = v797;
  v775 = v112;
  if ((sub_219473EF8(v378, v797, v799, v112) & 1) == 0)
  {
    v110 = v804;
LABEL_572:
    v706 = type metadata accessor for SportsScoreSortingFilterWhen;
    v707 = v109;
LABEL_573:
    sub_218C49F70(v707, v706);

    goto LABEL_5;
  }

  sub_219BF2664();
  v380 = v806;
  v381 = *(v806 + 16);

  v792 = v381;
  if (!v381)
  {
    v110 = v804;
LABEL_571:

    v797 = v379;
    goto LABEL_572;
  }

  v382 = 0;
  v789 = v380 + 32;
  v110 = v804;
  v788 = v380;
  while (1)
  {
    if (v382 >= *(v380 + 16))
    {
      goto LABEL_632;
    }

    v572 = *(v789 + 8 * v382);
    v802 = v379;
    if (v379 >> 62)
    {
      v801 = v572;
      v573 = sub_219BF7214();
      v572 = v801;
      v379 = v802;
      v380 = v788;
      if (!v573)
      {
        goto LABEL_426;
      }
    }

    else
    {
      v573 = *((v379 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v573)
      {
        goto LABEL_426;
      }
    }

    v574 = v572 >> 60;
    v800 = v382;
    if ((v572 >> 60) > 3)
    {
      break;
    }

    if (v574 > 1)
    {
      if (v574 == 2)
      {
        v600 = v572;
        v601 = swift_projectBox();
        sub_218C49F08(v601, v86, type metadata accessor for SportsScoreSortingAndFilter);
        v801 = v600;

        sub_219BF2664();
        v602 = *(v806 + 16);

        if (v602)
        {
          sub_219BF2664();
          v603 = *(v806 + 16);
          if (v603)
          {
            v782 = v806;
            v604 = (v806 + 32);
            v605 = v802;

            v606 = v605;
            v607 = v799;
            v608 = v790;
            do
            {
              v609 = *v604++;

              sub_219659C8C(v605, v607, v609);
              v610 = v608;
              v612 = sub_218C40DBC(v611);
              v613 = v610;

              v614 = sub_218845F78(v612);

              v606 = sub_218C48A88(v606, v614);
              v608 = v610;

              swift_bridgeObjectRelease_n();
              v605 = v802;
              --v603;
            }

            while (v603);
            v790 = v613;

            v802 = v606;
            v108 = v796;
            v73 = v798;
            v86 = v803;
            v110 = v804;
          }

          else
          {
            v110 = v804;
          }

          v109 = v794;
        }

        else
        {
          v110 = v804;
        }

        v111 = v793;
        sub_218C49F70(v86, type metadata accessor for SportsScoreSortingAndFilter);

        goto LABEL_526;
      }

      v638 = v572;
      v639 = swift_projectBox();
      sub_218C49F08(v639, v73, type metadata accessor for SportsScoreSortingOrFilter);

      sub_219BF2664();
      v640 = *(v806 + 16);

      if (!v640)
      {
        sub_218C49F70(v73, type metadata accessor for SportsScoreSortingOrFilter);

        v110 = v804;
        v111 = v793;
LABEL_526:
        v380 = v788;
        v382 = v800;
        v379 = v802;
        goto LABEL_426;
      }

      v801 = v638;
      v641 = MEMORY[0x277D84F90];
      v806 = MEMORY[0x277D84F90];
      sub_219BF2664();
      v642 = *(v809 + 16);
      if (!v642)
      {
LABEL_527:

        v809 = v641;
        sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
        v689 = v790;
        v379 = sub_219BF56E4();
        v790 = v689;

        sub_218C49F70(v73, type metadata accessor for SportsScoreSortingOrFilter);

        v108 = v796;
        v86 = v803;
        v110 = v804;
        goto LABEL_424;
      }

      v643 = (v809 + 32);
      v644 = v799;
      while (2)
      {
        v645 = *v643++;
        v111 = v645;

        sub_219659C8C(v802, v644, v645);
        v647 = v646;
        if (v646 >> 62)
        {
          v648 = sub_219BF7214();
          if (!(v641 >> 62))
          {
            goto LABEL_484;
          }
        }

        else
        {
          v648 = *((v646 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!(v641 >> 62))
          {
LABEL_484:
            v649 = *((v641 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v155 = __OFADD__(v649, v648);
            v650 = v649 + v648;
            if (v155)
            {
              goto LABEL_635;
            }

LABEL_485:
            sub_218861260(v650, 1);
            v641 = v806;
            sub_218A3363C((v806 & 0xFFFFFFFFFFFFFF8) + 8 * *((v806 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v806 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v806 & 0xFFFFFFFFFFFFFF8) + 0x10), v647);
            v652 = v651;

            if (v652 < v648)
            {
              goto LABEL_636;
            }

            v73 = v798;
            v644 = v799;
            if (v652 >= 1)
            {
              v653 = *((v641 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v155 = __OFADD__(v653, v652);
              v654 = v653 + v652;
              if (v155)
              {
                goto LABEL_640;
              }

              *((v641 & 0xFFFFFFFFFFFFFF8) + 0x10) = v654;
            }

            v806 = v641;
            --v642;
            v109 = v794;
            if (!v642)
            {
              goto LABEL_527;
            }

            continue;
          }
        }

        break;
      }

      v655 = sub_219BF7214();
      v155 = __OFADD__(v655, v648);
      v650 = v655 + v648;
      if (v155)
      {
        goto LABEL_635;
      }

      goto LABEL_485;
    }

    if (v574)
    {
      v587 = v572;
      v588 = swift_projectBox();
      v111 = v756;
      sub_218C49F08(v588, v756, type metadata accessor for SportsScoreSortingMatchFilter);
      v801 = v587;

      sub_218A84E44(v111, v802, v799);
      v590 = v589;
      if (v589 >> 62)
      {
        v591 = sub_219BF7214();
        if (v591)
        {
          goto LABEL_439;
        }
      }

      else
      {
        v591 = *((v589 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v591)
        {
LABEL_439:
          v806 = MEMORY[0x277D84F90];
          sub_218C33F88(v591);
          if (v591 < 0)
          {
            goto LABEL_650;
          }

          v592 = 0;
          do
          {
            if ((v590 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v592, v590);
            }

            else
            {
            }

            v593 = sub_219BF3F84();
            v595 = v594;

            v596 = v806;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21870B65C(0, *(v596 + 16) + 1, 1);
              v596 = v806;
            }

            v598 = *(v596 + 16);
            v597 = *(v596 + 24);
            if (v598 >= v597 >> 1)
            {
              sub_21870B65C((v597 > 1), v598 + 1, 1);
              v596 = v806;
            }

            ++v592;
            *(v596 + 16) = v598 + 1;
            v599 = v596 + 16 * v598;
            *(v599 + 32) = v593;
            *(v599 + 40) = v595;
            v109 = v794;
            v86 = v803;
          }

          while (v591 != v592);

          v73 = v798;
          goto LABEL_533;
        }
      }

      v596 = MEMORY[0x277D84F90];
LABEL_533:
      v690 = sub_218845F78(v596);

      v691 = v790;
      v379 = sub_218C48C9C(v802, v690);
      v790 = v691;

      sub_218C49F70(v756, type metadata accessor for SportsScoreSortingMatchFilter);

      v108 = v796;
      goto LABEL_534;
    }

    v568 = swift_projectBox();
    v569 = v774;
    sub_218C49F08(v568, v774, type metadata accessor for SportsScoreSortingMatchFilter);

    sub_218A84E44(v569, v802, v799);
    v571 = v570;

    sub_218C49F70(v569, type metadata accessor for SportsScoreSortingMatchFilter);

    v379 = v571;
LABEL_424:
    v111 = v793;
LABEL_425:
    v380 = v788;
    v382 = v800;
LABEL_426:
    if (++v382 == v792)
    {
      goto LABEL_571;
    }
  }

  if (v574 > 5)
  {
    if (v574 != 6)
    {
      if (v574 != 7)
      {
        v656 = v572;
        v657 = swift_projectBox();
        sub_218C49F08(v657, v108, type metadata accessor for SportsScoreSortingFilterWhen);
        v658 = *v108;

        v659 = v802;
        v660 = v108;
        v661 = v799;
        if (sub_219473EF8(v658, v802, v799, v656))
        {
          sub_219BF2664();
          v662 = v806;

          v663 = v790;
          v664 = sub_218C49FF0(v659, v662, v661);
          v790 = v663;

          v111 = v793;

          v802 = v664;
          v110 = v804;
        }

        sub_218C49F70(v660, type metadata accessor for SportsScoreSortingFilterWhen);

        v108 = v660;
        v109 = v794;
        goto LABEL_526;
      }

      v575 = swift_projectBox();
      v576 = v739;
      sub_218C49F08(v575, v739, type metadata accessor for SportsScoreSortingGroupByFilter);

      v577 = sub_218C490D4(v576, v802);
      v578 = v740;
      sub_218C49F08(v576, v740, type metadata accessor for SportsScoreSortingGroupByFilter);
      v579 = v741;
      v580 = sub_218C4A448(v578, v741, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
      MEMORY[0x28223BE20](v580);
      v581 = v799;
      *(&v722 - 2) = v579;
      *(&v722 - 1) = v581;
      v582 = v790;
      sub_218DDE84C(sub_218C4A8C8, (&v722 - 4), v577);
      v584 = v583;

      v806 = v584;
      sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
      sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
      v108 = v796;
      v585 = sub_219BF56E4();
      v790 = v582;
      v111 = v793;

      v586 = v576;
      v73 = v798;
      sub_218C49F70(v586, type metadata accessor for SportsScoreSortingGroupByFilter);
      sub_218C49F70(v579, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

      v379 = v585;
      v110 = v804;
      v109 = v794;
      goto LABEL_425;
    }

    v630 = *((v572 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    v632 = v790;
    sub_218C48EB0(v631, v630);
    v790 = v632;

    v633 = sub_219038F68(v630);

    if (v633 >> 62)
    {
      v634 = sub_219BF7214();
    }

    else
    {
      v634 = *((v633 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v110 = v804;
    v111 = v793;
    if (!v634)
    {

      goto LABEL_503;
    }

    if ((v633 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](0, v633);
    }

    else
    {
      if (!*((v633 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_651;
      }
    }

    v635 = v732;
    sub_219BF3FA4();
    v636 = v733;
    sub_219BF4AB4();
    (*v735)(v635, v751);
    v637 = v736;
    if ((*v734)(v636, 1, v736) == 1)
    {

      sub_2189DD39C(v636);
      v109 = v794;
      v73 = v798;
      v110 = v804;
      v111 = v793;
LABEL_503:

      v379 = MEMORY[0x277D84F90];
      v108 = v796;
      goto LABEL_425;
    }

    v685 = v730;
    (*v725)(v730, v636, v637);
    v686 = v737;
    v687 = sub_219BDBF34();
    MEMORY[0x28223BE20](v687);
    *(&v722 - 2) = v686;
    *(&v722 - 1) = v685;
    v688 = v790;
    v379 = sub_2195EB2C4(sub_218C49FD0, &v722 - 4, v633);
    v790 = v688;

    (*v724)(v686, v738);
    (*v723)(v685, v637);

    goto LABEL_522;
  }

  if (v574 == 4)
  {
    v801 = v573;
    v615 = v572 & 0xFFFFFFFFFFFFFFFLL;
    v111 = *((v572 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    sub_219659C8C(v379, v799, v111);
    v617 = v616;
    v618 = sub_2193D0138(v616);
    v619 = MEMORY[0x277D84F90];
    v782 = v111;
    v779 = v615;
    if (v618)
    {
      v620 = v618;
      v806 = MEMORY[0x277D84F90];
      sub_218C33F88(v618);
      if (v620 < 0)
      {
        goto LABEL_649;
      }

      v621 = 0;
      do
      {
        if ((v617 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v621, v617);
        }

        else
        {
        }

        v622 = sub_219BF3F84();
        v624 = v623;

        v625 = v806;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v625 + 16) + 1, 1);
          v625 = v806;
        }

        v627 = *(v625 + 16);
        v626 = *(v625 + 24);
        if (v627 >= v626 >> 1)
        {
          sub_21870B65C((v626 > 1), v627 + 1, 1);
          v625 = v806;
        }

        ++v621;
        *(v625 + 16) = v627 + 1;
        v628 = v625 + 16 * v627;
        *(v628 + 32) = v622;
        *(v628 + 40) = v624;
        v629 = MEMORY[0x277D84F90];
      }

      while (v620 != v621);

      v619 = v629;
    }

    else
    {

      v625 = v619;
    }

    v678 = sub_218845F78(v625);

    v111 = 0;
    v806 = v619;
    v679 = v802 & 0xC000000000000001;
    v680 = v802 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v679)
      {
        MEMORY[0x21CECE0F0](v111);
        v681 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_618;
        }
      }

      else
      {
        if (v111 >= *(v680 + 16))
        {
          goto LABEL_619;
        }

        v681 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_618;
        }
      }

      v682 = sub_219BF3F84();
      v684 = sub_2188537B8(v682, v683, v678);

      if (v684)
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      v73 = v798;
      ++v111;
      v165 = v681 == v801;
      v86 = v803;
      v110 = v804;
    }

    while (!v165);

    v379 = v806;
    v108 = v796;
    v109 = v794;
    goto LABEL_424;
  }

  v665 = v572;
  v666 = swift_projectBox();
  v667 = v755;
  sub_218C49F08(v666, v755, type metadata accessor for SportsScoreSortingSubsetFilter);
  v801 = v665;

  sub_218A84E44(v667, v379, v799);
  v669 = v668;
  v111 = sub_219AC4B08(v379, v668);
  sub_219BF2664();
  v670 = v806;
  v671 = sub_2193D015C(v806);
  if (!v671)
  {
    v677 = v669;
LABEL_520:

    v806 = v111;
    sub_2191EDC00(v677);

    sub_218C49F70(v755, type metadata accessor for SportsScoreSortingSubsetFilter);

    v379 = v806;
LABEL_522:
    v108 = v796;
    v109 = v794;
    v73 = v798;
LABEL_534:
    v110 = v804;
    goto LABEL_424;
  }

  v672 = v671;
  v673 = 0;
  while (v673 < *(v670 + 16))
  {
    v674 = v673 + 1;
    v675 = *(v670 + 32 + 8 * v673);

    sub_219659C8C(v669, v799, v675);
    v677 = v676;

    v669 = v677;
    v673 = v674;
    if (v672 == v674)
    {
      goto LABEL_520;
    }
  }

LABEL_624:
  __break(1u);
LABEL_625:
  __break(1u);
LABEL_626:
  __break(1u);
LABEL_627:
  __break(1u);
LABEL_628:
  __break(1u);
LABEL_629:
  __break(1u);
LABEL_630:
  __break(1u);
LABEL_631:
  __break(1u);
LABEL_632:
  __break(1u);
LABEL_633:
  __break(1u);
LABEL_634:
  __break(1u);
LABEL_635:
  __break(1u);
LABEL_636:
  __break(1u);
LABEL_637:
  __break(1u);
LABEL_638:
  __break(1u);
LABEL_639:
  __break(1u);
LABEL_640:
  __break(1u);
LABEL_641:
  __break(1u);
LABEL_642:
  __break(1u);
LABEL_643:
  __break(1u);
LABEL_644:
  __break(1u);
LABEL_645:
  __break(1u);
LABEL_646:
  __break(1u);
LABEL_647:
  __break(1u);
LABEL_648:
  __break(1u);
LABEL_649:
  __break(1u);
LABEL_650:
  __break(1u);
LABEL_651:
  __break(1u);
LABEL_652:

  __break(1u);
}

uint64_t sub_218C48690@<X0>(uint64_t *a2@<X8>)
{
  result = sub_219BF3F84();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_218C486CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_218C4A184(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 56);
  sub_218C49F08(a1, v18, type metadata accessor for SportsScoreSortingGroupByFilter);
  sub_218C49F08(a2, &v18[v20], type metadata accessor for SportsScoreSortingGroupByFilter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218C49F08(v18, v12, type metadata accessor for SportsScoreSortingGroupByFilter);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_218C4A448(&v18[v20], v6, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
      sub_218C425D4(0);
      sub_218C4A400(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
      sub_218C4A1E8();
      v21 = sub_219BF2694();
      v9 = v6;
      v15 = v12;
LABEL_8:
      sub_218C49F70(v9, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
      v22 = type metadata accessor for SportsScoreSortingGroupByFilter;
      goto LABEL_9;
    }

    v22 = sub_218C4A184;
    v21 = 0;
    v15 = v12;
  }

  else
  {
    sub_218C49F08(v18, v15, type metadata accessor for SportsScoreSortingGroupByFilter);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_218C4A448(&v18[v20], v9, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
      sub_218C425D4(0);
      sub_218C4A400(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
      sub_218C4A1E8();
      v21 = sub_219BF2694();
      goto LABEL_8;
    }

    v22 = sub_218C4A184;
    v21 = 0;
  }

LABEL_9:
  sub_218C49F70(v15, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
  sub_218C49F70(v18, v22);
  return v21 & 1;
}

uint64_t sub_218C48A88(unint64_t a1, uint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_25:
    v18 = a1;
    v3 = sub_219BF7214();
    a1 = v18;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v19 = a1;
      v4 = 0;
      v20 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      v5 = a2 + 56;
      while (1)
      {
        if (v21)
        {
          MEMORY[0x21CECE0F0](v4, v19);
          v6 = __OFADD__(v4++, 1);
          if (v6)
          {
LABEL_22:
            __break(1u);
            return v22;
          }
        }

        else
        {
          if (v4 >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v6 = __OFADD__(v4++, 1);
          if (v6)
          {
            goto LABEL_22;
          }
        }

        v7 = sub_219BF3F84();
        v9 = v8;
        if (*(a2 + 16) && (v10 = v7, sub_219BF7AA4(), sub_219BF5524(), v11 = sub_219BF7AE4(), v12 = -1 << *(a2 + 32), v13 = v11 & ~v12, ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = (*(a2 + 48) + 16 * v13);
            v16 = *v15 == v10 && v15[1] == v9;
            if (v16 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          a1 = sub_219BF73E4();
        }

        else
        {
LABEL_4:
        }

        if (v4 == v3)
        {
          return v22;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218C48C9C(unint64_t a1, uint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_25:
    v18 = a1;
    v3 = sub_219BF7214();
    a1 = v18;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v19 = a1;
      v4 = 0;
      v20 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      v5 = a2 + 56;
      while (1)
      {
        if (v21)
        {
          MEMORY[0x21CECE0F0](v4, v19);
          v6 = __OFADD__(v4++, 1);
          if (v6)
          {
LABEL_22:
            __break(1u);
            return v22;
          }
        }

        else
        {
          if (v4 >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v6 = __OFADD__(v4++, 1);
          if (v6)
          {
            goto LABEL_22;
          }
        }

        v7 = sub_219BF3F84();
        v9 = v8;
        if (*(a2 + 16) && (v10 = v7, sub_219BF7AA4(), sub_219BF5524(), v11 = sub_219BF7AE4(), v12 = -1 << *(a2 + 32), v13 = v11 & ~v12, ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = (*(a2 + 48) + 16 * v13);
            v16 = *v15 == v10 && v15[1] == v9;
            if (v16 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
LABEL_4:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          a1 = sub_219BF73E4();
        }

        if (v4 == v3)
        {
          return v22;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218C48EB0(unint64_t a1, int a2)
{
  v3 = v2;
  v20 = a2;
  v19 = sub_219BF4AC4();
  v5 = *(v19 - 8);
  v6 = MEMORY[0x28223BE20](v19);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D84F90];
  v17 = a1;
  if (a1 >> 62)
  {
LABEL_21:
    v9 = sub_219BF7214();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v16[1] = v3;
      v10 = 0;
      v3 = v17;
      v18 = v17 & 0xC000000000000001;
      v11 = v17 & 0xFFFFFFFFFFFFFF8;
      v12 = (v5 + 1);
      while (1)
      {
        if (v18)
        {
          MEMORY[0x21CECE0F0](v10, v3, v6);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_18:
            __break(1u);
            return v21;
          }
        }

        else
        {
          if (v10 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_18;
          }
        }

        sub_219BF3FA4();
        if (v20)
        {
          if (v20 == 1)
          {
            v14 = sub_219BF4A74();
          }

          else
          {
            v14 = sub_219BF4A94();
          }
        }

        else
        {
          v14 = sub_219BF4A84();
        }

        v5 = v14;
        (*v12)(v8, v19);
        if (v5)
        {
          v5 = &v21;
          sub_219BF73D4();
          sub_219BF7414();
          v3 = v17;
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++v10;
        if (v13 == v9)
        {
          return v21;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_218C490D4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C49F08(a1, v6, type metadata accessor for SportsScoreSortingGroupByFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v123 = a2;
  v8 = a2 >> 62;
  v117 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    if (v8)
    {
      goto LABEL_118;
    }

    v9 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_121;
    }

    goto LABEL_4;
  }

  if (v8)
  {
    v59 = sub_219BF7214();
    if (!v59)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v59 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v59)
    {
      goto LABEL_121;
    }
  }

  v60 = 0;
  v61 = v123 & 0xC000000000000001;
  v121 = v123 & 0xFFFFFFFFFFFFFF8;
  v11 = MEMORY[0x277D84F98];
  v119 = v59;
  v120 = v123 + 32;
  v62 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v118 = v123 & 0xC000000000000001;
  while (1)
  {
    if (v61)
    {
      v63 = MEMORY[0x21CECE0F0](v60, v123);
      v30 = __OFADD__(v60++, 1);
      if (v30)
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v60 >= *(v121 + 16))
      {
        goto LABEL_114;
      }

      v63 = *(v120 + 8 * v60);

      v30 = __OFADD__(v60++, 1);
      if (v30)
      {
        goto LABEL_110;
      }
    }

    v64 = sub_219BF3FB4();
    if (v64 >> 62)
    {
      v65 = sub_219BF7214();
    }

    else
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v128 = v63;
    if (!v65)
    {
      if (v11[2] && (sub_21870F700(0, 0xE000000000000000), (v99 & 1) != 0))
      {
      }

      else
      {
        v100 = MEMORY[0x277D84F90];
      }

      v131 = v100;

      MEMORY[0x21CECC690](v101);
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v102 = v131;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = v11;
      v104 = sub_21870F700(0, 0xE000000000000000);
      v106 = v11[2];
      v107 = (v105 & 1) == 0;
      v30 = __OFADD__(v106, v107);
      v108 = v106 + v107;
      if (v30)
      {
        goto LABEL_115;
      }

      v109 = v105;
      if (v11[3] >= v108)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v111 = v104;
          sub_219492774();
          v104 = v111;
          v11 = v130;
          if ((v109 & 1) == 0)
          {
LABEL_104:
            v11[(v104 >> 6) + 8] |= 1 << v104;
            v112 = (v11[6] + 16 * v104);
            *v112 = 0;
            v112[1] = 0xE000000000000000;
            *(v11[7] + 8 * v104) = v102;
            v113 = v11[2];
            v30 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v30)
            {
              goto LABEL_117;
            }

            v11[2] = v114;

            goto LABEL_49;
          }

          goto LABEL_99;
        }
      }

      else
      {
        sub_219481864(v108, isUniquelyReferenced_nonNull_native);
        v104 = sub_21870F700(0, 0xE000000000000000);
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_124;
        }
      }

      v11 = v130;
      if ((v109 & 1) == 0)
      {
        goto LABEL_104;
      }

LABEL_99:
      *(v11[7] + 8 * v104) = v102;
      goto LABEL_102;
    }

    v66 = sub_219BF3FB4();
    v67 = v66;
    if (!(v66 >> 62))
    {
      v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v68)
      {
        break;
      }

      goto LABEL_102;
    }

    v68 = sub_219BF7214();
    if (v68)
    {
      break;
    }

LABEL_102:

LABEL_49:
    if (v60 == v59)
    {
      goto LABEL_122;
    }
  }

  v122 = v60;
  v69 = 0;
  v126 = v67;
  v127 = v67 & 0xC000000000000001;
  v124 = v67 & 0xFFFFFFFFFFFFFF8;
  v125 = v68;
  while (1)
  {
    if (v127)
    {
      v70 = MEMORY[0x21CECE0F0](v69, v67);
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      goto LABEL_70;
    }

    if (v69 >= *(v124 + 16))
    {
      goto LABEL_109;
    }

    v70 = *(v67 + 8 * v69 + 32);
    swift_unknownObjectRetain();
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

LABEL_70:
    v129 = v71;
    v72 = [v70 v62[278]];
    v73 = sub_219BF5414();
    v75 = v74;

    if (v11[2])
    {
      sub_21870F700(v73, v75);
      v77 = v76;

      v78 = MEMORY[0x277D84F90];
      if (v77)
      {
      }
    }

    else
    {

      v78 = MEMORY[0x277D84F90];
    }

    v131 = v78;

    MEMORY[0x21CECC690](v79);
    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v80 = v131;
    v81 = v62;
    v82 = [v70 v62[278]];
    v83 = sub_219BF5414();
    v85 = v84;

    v86 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v11;
    v88 = sub_21870F700(v83, v85);
    v89 = v11;
    v90 = v11[2];
    v91 = (v87 & 1) == 0;
    v92 = v90 + v91;
    if (__OFADD__(v90, v91))
    {
      goto LABEL_107;
    }

    v93 = v87;
    if (v89[3] >= v92)
    {
      if (v86)
      {
        v62 = v81;
        if ((v87 & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        sub_219492774();
        v62 = v81;
        if ((v93 & 1) == 0)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      sub_219481864(v92, v86);
      v94 = sub_21870F700(v83, v85);
      if ((v93 & 1) != (v95 & 1))
      {
        goto LABEL_124;
      }

      v88 = v94;
      v62 = v81;
      if ((v93 & 1) == 0)
      {
LABEL_83:
        v11 = v130;
        v130[(v88 >> 6) + 8] |= 1 << v88;
        v96 = (v11[6] + 16 * v88);
        *v96 = v83;
        v96[1] = v85;
        *(v11[7] + 8 * v88) = v80;
        swift_unknownObjectRelease();
        v97 = v11[2];
        v30 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v30)
        {
          goto LABEL_108;
        }

        v11[2] = v98;
        goto LABEL_63;
      }
    }

    v11 = v130;
    *(v130[7] + 8 * v88) = v80;
    swift_unknownObjectRelease();

LABEL_63:
    ++v69;
    v67 = v126;
    if (v129 == v125)
    {

      v61 = v118;
      v59 = v119;
      v60 = v122;
      goto LABEL_49;
    }
  }

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
  v9 = sub_219BF7214();
  if (v9)
  {
LABEL_4:
    if (v9 < 1)
    {
      __break(1u);
LABEL_124:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    }

    v10 = 0;
    v11 = MEMORY[0x277D84F98];
    v129 = v123 & 0xC000000000000001;
    while (1)
    {
      if (v129)
      {
        MEMORY[0x21CECE0F0](v10, v123);
      }

      else
      {
      }

      v12 = sub_219BF4034();
      if (!v12)
      {
        if (v11[2] && (sub_21870F700(0, 0xE000000000000000), (v21 & 1) != 0))
        {
        }

        else
        {
          v22 = MEMORY[0x277D84F90];
        }

        v131 = v22;

        MEMORY[0x21CECC690](v23);
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v24 = v131;
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v130 = v11;
        v26 = sub_21870F700(0, 0xE000000000000000);
        v28 = v11[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_112;
        }

        v32 = v27;
        if (v11[3] < v31)
        {
          sub_219481864(v31, v25);
          v26 = sub_21870F700(0, 0xE000000000000000);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_124;
          }

          goto LABEL_37;
        }

        if (v25)
        {
LABEL_37:
          v11 = v130;
          if ((v32 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v55 = v26;
          sub_219492774();
          v26 = v55;
          v11 = v130;
          if ((v32 & 1) == 0)
          {
LABEL_42:
            v11[(v26 >> 6) + 8] |= 1 << v26;
            v56 = (v11[6] + 16 * v26);
            *v56 = 0;
            v56[1] = 0xE000000000000000;
            *(v11[7] + 8 * v26) = v24;
            v57 = v11[2];
            v30 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v30)
            {
              goto LABEL_116;
            }

            v11[2] = v58;
            goto LABEL_44;
          }
        }

        *(v11[7] + 8 * v26) = v24;

        goto LABEL_7;
      }

      v13 = v12;
      v14 = [v12 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (v11[2])
      {
        sub_21870F700(v15, v17);
        v19 = v18;

        v20 = MEMORY[0x277D84F90];
        if (v19)
        {
        }
      }

      else
      {

        v20 = MEMORY[0x277D84F90];
      }

      v34 = v11;
      v131 = v20;

      MEMORY[0x21CECC690](v35);
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v36 = v131;
      v37 = [v13 identifier];
      v38 = sub_219BF5414();
      v40 = v39;

      v41 = v34;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v41;
      v43 = sub_21870F700(v38, v40);
      v45 = v41[2];
      v46 = (v44 & 1) == 0;
      v30 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v30)
      {
        goto LABEL_111;
      }

      v48 = v44;
      if (v41[3] >= v47)
      {
        if ((v42 & 1) == 0)
        {
          v54 = v43;
          sub_219492774();
          v43 = v54;
          v50 = v130;
          if ((v48 & 1) == 0)
          {
LABEL_34:
            v50[(v43 >> 6) + 8] |= 1 << v43;
            v51 = (v50[6] + 16 * v43);
            *v51 = v38;
            v51[1] = v40;
            *(v50[7] + 8 * v43) = v36;
            v52 = v50[2];
            v30 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v30)
            {
              goto LABEL_113;
            }

            v11 = v50;
            v50[2] = v53;
            swift_unknownObjectRelease();
LABEL_44:

            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }

      else
      {
        sub_219481864(v47, v42);
        v43 = sub_21870F700(v38, v40);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_124;
        }
      }

      v50 = v130;
      if ((v48 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_6:
      *(v50[7] + 8 * v43) = v36;
      swift_unknownObjectRelease();

      v11 = v50;
LABEL_7:
      if (v9 == ++v10)
      {
        goto LABEL_122;
      }
    }
  }

LABEL_121:
  v11 = MEMORY[0x277D84F98];
LABEL_122:
  sub_218C49F70(v117, type metadata accessor for SportsScoreSortingGroupByFilter);
  return v11;
}

uint64_t sub_218C49BFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_218C490D4(a1, a2);
  sub_218C49F08(a1, v8, type metadata accessor for SportsScoreSortingGroupByFilter);
  sub_218C4A448(v8, v11, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
  v18 = v11;
  v19 = a3;
  sub_218DDE84C(sub_218C49E14, v17, v12);
  v14 = v13;

  v20 = v14;
  sub_218C49EA4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
  sub_218C49E30(&qword_280E8EE88, MEMORY[0x277D83970]);
  v15 = sub_219BF56E4();

  sub_218C49F70(v11, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
  return v15;
}

uint64_t sub_218C49E30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_218C49EA4(255, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218C49EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218C49F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C49F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C49FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);

  if (!v6)
  {
    return a1;
  }

  v7 = (a2 + 32);
  do
  {
    v8 = *v7++;

    sub_219659C8C(a1, a3, v8);
    v10 = v9;

    a1 = v10;
    --v6;
  }

  while (v6);
  return v10;
}

void sub_218C4A0B8(uint64_t a1)
{
  sub_218C42540(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_218C4A124(uint64_t a1)
{
  result = type metadata accessor for SportsScoreSortingGroupByGroupFilter(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_218C4A184(uint64_t a1)
{
  if (!qword_27CC0FC10)
  {
    type metadata accessor for SportsScoreSortingGroupByFilter(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0FC10);
    }
  }
}

unint64_t sub_218C4A1E8()
{
  result = qword_27CC0FC18;
  if (!qword_27CC0FC18)
  {
    sub_218C4A260();
    sub_218C4A2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FC18);
  }

  return result;
}

void sub_218C4A260()
{
  if (!qword_27CC0FC20)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FC20);
    }
  }
}

unint64_t sub_218C4A2B0()
{
  result = qword_280EC0200;
  if (!qword_280EC0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0200);
  }

  return result;
}

unint64_t sub_218C4A304()
{
  result = qword_280EE24F0;
  if (!qword_280EE24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE24F0);
  }

  return result;
}

unint64_t sub_218C4A358()
{
  result = qword_280EA7EB0[0];
  if (!qword_280EA7EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA7EB0);
  }

  return result;
}

unint64_t sub_218C4A3AC()
{
  result = qword_280EA7E88;
  if (!qword_280EA7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7E88);
  }

  return result;
}

uint64_t sub_218C4A400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218C4A448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218C4A4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_218C4A518()
{
  result = qword_280EA7E98;
  if (!qword_280EA7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7E98);
  }

  return result;
}

unint64_t sub_218C4A5A0()
{
  result = qword_27CC0FC28;
  if (!qword_27CC0FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FC28);
  }

  return result;
}

unint64_t sub_218C4A5F8()
{
  result = qword_27CC0FC30;
  if (!qword_27CC0FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FC30);
  }

  return result;
}

unint64_t sub_218C4A650()
{
  result = qword_27CC0FC38;
  if (!qword_27CC0FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FC38);
  }

  return result;
}

unint64_t sub_218C4A6A8()
{
  result = qword_280EA7EA0;
  if (!qword_280EA7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7EA0);
  }

  return result;
}

unint64_t sub_218C4A700()
{
  result = qword_280EA7EA8;
  if (!qword_280EA7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7EA8);
  }

  return result;
}

unint64_t sub_218C4A758()
{
  result = qword_280EE24E0;
  if (!qword_280EE24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE24E0);
  }

  return result;
}

unint64_t sub_218C4A7B0()
{
  result = qword_280EE24E8;
  if (!qword_280EE24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE24E8);
  }

  return result;
}

unint64_t sub_218C4A804()
{
  result = qword_280EA7E90;
  if (!qword_280EA7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7E90);
  }

  return result;
}

unint64_t sub_218C4A858()
{
  result = qword_27CC0FC40;
  if (!qword_27CC0FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FC40);
  }

  return result;
}

uint64_t sub_218C4A8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SavedFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E90E8(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for SavedFeedGroupConfig(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C4AC40(a1, v20, type metadata accessor for SavedFeedGroupConfig);
  v21 = *(v12 + 32);
  v21(v17, v20, v11);
  (*(v12 + 16))(v14, v17, v11);
  sub_218C4AC40(a2, v9, type metadata accessor for SavedFeedGroupKnobs);
  v22 = v9;
  v23 = v6;
  sub_218A6F124(v22, v6);
  sub_218718690(v27 + 16, v28);
  type metadata accessor for ArticleListSavedFeedGroupEmitter(0);
  v24 = swift_allocObject();
  v21((v24 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_config), v14, v11);
  sub_218A6F124(v23, v24 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_knobs);
  sub_2186CB1F0(v28, v24 + OBJC_IVAR____TtC7NewsUI232ArticleListSavedFeedGroupEmitter_formatService);
  *&v28[0] = v24;
  sub_218C4ACA8(0);
  swift_allocObject();
  sub_2186EE674(&qword_280EA7130, type metadata accessor for ArticleListSavedFeedGroupEmitter, &unk_219C5EF30);
  v25 = sub_219BEDF84();
  (*(v12 + 8))(v17, v11);
  return v25;
}

uint64_t sub_218C4AC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218C4ACA8(uint64_t a1)
{
  if (!qword_280E91DD8)
  {
    type metadata accessor for SavedFeedServiceConfig(255);
    sub_2186EE674(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
    v1 = sub_219BEDFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91DD8);
    }
  }
}

uint64_t sub_218C4AD3C()
{
  v1 = *(v0 + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(v1 + 32);
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];

    sub_218C4AE4C(v5, v6, v7, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218C4ADD8()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

void *sub_218C4AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_219BF53D4();
    [v5 setTitle_];

    v7 = sub_219BBA828();
    sub_219BBD6C8(v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *OpenRecipeCommandHandler.__allocating_init(featureAvailability:navigator:recipeService:tracker:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  sub_2186CB1F0(a3, (v8 + 4));
  v8[9] = a4;
  return v8;
}

void *OpenRecipeCommandHandler.init(featureAvailability:navigator:recipeService:tracker:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  sub_2186CB1F0(a3, (v4 + 4));
  v4[9] = a4;
  return v4;
}

uint64_t sub_218C4AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_218C4AFC8, 0, 0);
}

uint64_t sub_218C4AFC8()
{
  v1 = v0[3];
  v3 = v1[7];
  v2 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_218C4B08C;
  v5 = v0[4];

  return MEMORY[0x282192298](v5, v3, v2);
}

uint64_t sub_218C4B08C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_218C4B1D8, 0, 0);
  }
}

void *OpenRecipeCommandHandler.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t OpenRecipeCommandHandler.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

double sub_218C4B2E0()
{
  sub_21875FAA8(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v69 - v1;
  sub_21875FAA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v76 = *(v3 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v69 - v6;
  MEMORY[0x28223BE20](v7);
  v73 = &v69 - v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v69 - v10;
  v11 = sub_219BDD804();
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BE0714();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [sub_219BF2BA4() recipeIDs];
  swift_unknownObjectRelease();
  if (v18)
  {
    v70 = v4;
    v20 = sub_219BF5924();

    v21 = sub_219BDD144();
    sub_219BF2BA4();
    swift_getObjectType();
    sub_219BF6814();
    swift_unknownObjectRelease();
    sub_218C4C49C(&qword_280EE8338, MEMORY[0x277D2E728], MEMORY[0x277D2E720]);
    v22 = v21;
    sub_219BDD1F4();
    (*(v15 + 8))(v17, v14);
    if (v20[2] == 1)
    {
      v23 = v20[4];
      v24 = v20[5];

      sub_218A27458(0, v25);
      *v13 = v23;
      v13[1] = v24;

      sub_219BDDBE4();
      (*(v71 + 104))(v13, *MEMORY[0x277D2FB08], v11);
      sub_219BDE674();
      swift_allocObject();
      v26 = sub_219BDE614();
      v27 = *(v77 + 24);
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v77 = v28;
      v29 = v28 | 0x7000000000000004;
      v30 = sub_219BDFA44();
      v31 = v75;
      (*(*(v30 - 8) + 56))(v75, 1, 1, v30);
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v87 = 0;
      v85 = 0u;
      v86 = 0u;
      v84 = v27;
      sub_2187B14CC(&v85, &v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v74 = v26;
      if (v80)
      {
        sub_2186CB1F0(&v79, &v81);
        v32 = qword_280ED32D0;

        if (v32 != -1)
        {
          swift_once();
        }

        v33 = qword_280ED32D8;
        v34 = qword_280ED32E0;
        v35 = qword_280ED32E8;

        sub_2188202A8(v34);
        __swift_destroy_boxed_opaque_existential_1(&v81);
      }

      else
      {

        sub_2187448D0(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v33 = qword_280ED32D8;
        v34 = qword_280ED32E0;
        v35 = qword_280ED32E8;

        sub_2188202A8(v34);
      }

      v78 = v29;
      v80 = sub_219BDD274();
      *&v79 = v22;
      v49 = v73;
      sub_2189B4E2C(v31, v73);
      sub_2187B14CC(&v88, &v81, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v50 = (*(v76 + 80) + 24) & ~*(v76 + 80);
      v51 = (v70 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + 47) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      *(v53 + 16) = v22;
      sub_2189B4EAC(v49, v53 + v50);
      v54 = v53 + v51;
      v55 = v82;
      *v54 = v81;
      *(v54 + 16) = v55;
      *(v54 + 32) = v83;
      v56 = (v53 + v52);
      v57 = (v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v56 = 0;
      v56[1] = 0;
      *v57 = v33;
      v57[1] = v34;
      v57[2] = v35;
      swift_retain_n();

      sub_2188202A8(v34);
      sub_2186CF94C(0);
      sub_218C4C49C(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v34, v35);

      sub_2187448D0(&v85, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v88, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v68 = &v92;
    }

    else
    {
      v36 = sub_219BF5BF4();
      (*(*(v36 - 8) + 56))(v2, 1, 1, v36);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v38 = v77;
      v37[4] = v77;
      v37[5] = v20;

      v39 = sub_2195E7394(0, 0, v2, &unk_219C24E00, v37);
      v40 = *(v38 + 24);
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      v77 = v41;
      v42 = v41 | 0x8000000000000004;
      v43 = sub_219BDFA44();
      v44 = v74;
      (*(*(v43 - 8) + 56))(v74, 1, 1, v43);
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v87 = 0;
      v85 = 0u;
      v86 = 0u;
      v84 = v40;
      sub_2187B14CC(&v85, &v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v75 = v39;
      if (v80)
      {
        sub_2186CB1F0(&v79, &v81);
        v45 = qword_280ED32D0;

        if (v45 != -1)
        {
          swift_once();
        }

        v46 = qword_280ED32D8;
        v47 = qword_280ED32E0;
        v48 = qword_280ED32E8;

        sub_2188202A8(v47);
        __swift_destroy_boxed_opaque_existential_1(&v81);
      }

      else
      {

        sub_2187448D0(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v46 = qword_280ED32D8;
        v47 = qword_280ED32E0;
        v48 = qword_280ED32E8;

        sub_2188202A8(v47);
      }

      v78 = v42;
      v80 = sub_219BDD274();
      *&v79 = v22;
      v58 = v72;
      sub_2189B4E2C(v44, v72);
      sub_2187B14CC(&v88, &v81, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v59 = (*(v76 + 80) + 24) & ~*(v76 + 80);
      v60 = v22;
      v61 = (v70 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = (v61 + 47) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 16) = v60;
      sub_2189B4EAC(v58, v63 + v59);
      v64 = v63 + v61;
      v65 = v82;
      *v64 = v81;
      *(v64 + 16) = v65;
      *(v64 + 32) = v83;
      v66 = (v63 + v62);
      v67 = (v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v66 = 0;
      v66[1] = 0;
      *v67 = v46;
      v67[1] = v47;
      v67[2] = v48;
      swift_retain_n();

      sub_2188202A8(v47);
      sub_2186CF94C(0);
      sub_218C4C49C(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v47, v48);

      sub_2187448D0(&v85, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v88, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v68 = &v91;
    }

    sub_218A42D80(*(v68 - 32));
    sub_2187448D0(&v79, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  return result;
}

id sub_218C4C2B4()
{
  result = [*(v0 + 16) useFood];
  if (result)
  {
    v2 = [sub_219BF2BA4() recipeIDs];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_219BF5924();

      v4 = [sub_219BF2BA4() sourceChannel];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = [v4 allowsRecipes];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = *(v3 + 16);

          return (v6 != 0);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_218C4C3D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_218C4AFA4(a1, v4, v5, v7, v6);
}

uint64_t sub_218C4C49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_8Tm_0()
{
  sub_21875FAA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218C4C66C(void *a1)
{
  sub_21875FAA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_218C4C750(void *a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v3 = sub_219BED224();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + 16);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  *v6 = sub_219BF66A4();
  v8 = *MEMORY[0x277D85200];
  v34 = *(v4 + 104);
  v34(v6, v8, v3);
  v9 = sub_219BED254();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8;
  v12 = *(v7 + 16);
  v27 = *(v7 + 24);
  v28 = v12;
  sub_218C4DD08(v12, v27);

  v31 = v2;
  v13 = *(v2 + 16);

  v14 = v10;
  v16 = v32;
  v15 = v33;
  sub_218C4DD08(v32, v33);
  *v6 = sub_219BF66A4();
  v30 = v11;
  v34(v6, v11, v3);
  LOBYTE(v11) = sub_219BED254();
  v29 = v14;
  v14(v6, v3);
  if ((v11 & 1) == 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v17 = *(v13 + 16);
  v18 = *(v13 + 24);
  *(v13 + 16) = v16;
  *(v13 + 24) = v15;
  sub_218C4DE18(v17, v18);

  v19 = v28;
  if (v28 >= 3)
  {
    [v28 invalidate];
  }

  v20 = *(v31 + 16);

  *v6 = sub_219BF66A4();
  v34(v6, v30, v3);
  v21 = sub_219BED254();
  v29(v6, v3);
  if ((v21 & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = *(v20 + 16);
  sub_218C4DD08(v22, *(v20 + 24));

  if (!v22)
  {
    sub_218C4DE18(v19, v27);
    v25 = v32;
    v26 = v33;
    goto LABEL_11;
  }

  v24 = v32;
  v23 = v33;
  if (v22 == 1 || v22 == 2)
  {
    sub_218C4DE18(v19, v27);
    v25 = v24;
    v26 = v23;
LABEL_11:
    sub_218C4DE18(v25, v26);
    return;
  }

  swift_unknownObjectRelease();
  [v22 activate];
  sub_218C4DE18(v19, v27);
  sub_218C4DE18(v24, v23);
}

void *sub_218C4CA54()
{
  v1 = sub_219BED224();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  *v4 = sub_219BF66A4();
  v5 = *MEMORY[0x277D85200];
  v6 = *(v2 + 104);
  v6(v4, v5, v1);
  v7 = sub_219BED254();
  v8 = *(v2 + 8);
  result = v8(v4, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(v0 + 16);

  *v4 = sub_219BF66A4();
  v6(v4, v5, v1);
  v11 = sub_219BED254();
  result = v8(v4, v1);
  if ((v11 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  sub_218C4DD08(v13, v12);

  if ((v13 - 1) < 2)
  {
    return 0;
  }

  if (!v13)
  {
    return sub_218C4CD6C();
  }

  return v12;
}

uint64_t sub_218C4CC28(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280E8D8C0 != -1)
  {
    swift_once();
  }

  v3 = qword_280F61780;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_219BE5314("failed to flush cache lookups in newsd download XPC service with error=%{public}@", 81, 2, &dword_2186C1000, v3, v4, v5);

  return a2(v6);
}

void *sub_218C4CD6C()
{
  v1 = v0;
  v2 = sub_219BED224();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  *v5 = sub_219BF66A4();
  v7 = *MEMORY[0x277D85200];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  v9 = sub_219BED254();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(v1 + 16);

  *v5 = sub_219BF66A4();
  v8(v5, v7, v2);
  v12 = sub_219BED254();
  v13 = v10;
  v14 = v12;
  v39 = v13;
  v13(v5, v2);
  if ((v14 & 1) == 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  v37 = v8;
  v38 = v6;
  v16 = *(v11 + 16);
  v15 = *(v11 + 24);
  sub_218C4DD08(v16, v15);

  if ((v16 - 1) < 2)
  {
    return 0;
  }

  if (v16)
  {
LABEL_12:

    return v15;
  }

  if (qword_280E8D8C0 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v17 = qword_280F61780;
  v18 = sub_219BF6214();
  v36 = v17;
  sub_219BE5314("will establish newsd download XPC connection", 44, 2, &dword_2186C1000, v17, v18, MEMORY[0x277D84F90]);
  v19 = NDDownloadServiceXPCConnection();
  v45 = sub_218C4DD4C;
  v46 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_218793E0C;
  v44 = &block_descriptor_39;
  v20 = _Block_copy(&aBlock);

  [v19 setInterruptionHandler_];
  _Block_release(v20);
  v45 = sub_218C4DD54;
  v46 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_218793E0C;
  v44 = &block_descriptor_4;
  v21 = _Block_copy(&aBlock);

  [v19 setInvalidationHandler_];
  _Block_release(v21);
  v45 = sub_218C4DD5C;
  v46 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_218C4D464;
  v44 = &block_descriptor_7_0;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v22);
  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218C4DD60();
  if (!swift_dynamicCast())
  {
    sub_218C4C750(2, 0);
    v15 = 0;
    v16 = v19;
    goto LABEL_12;
  }

  v15 = v40;
  v16 = v19;
  swift_unknownObjectRetain();
  sub_218C4C750(v19, v15);
  v24 = sub_219BF6214();
  v25 = v36;
  sub_219BE5314("did establish newsd download XPC connection", 43, 2, &dword_2186C1000, v36, v24, MEMORY[0x277D84F90]);
  v26 = *(v1 + 32);

  *v5 = sub_219BF66A4();
  v37(v5, v7, v2);
  v27 = sub_219BED254();
  result = v39(v5, v2);
  if (v27)
  {
    v29 = v26[2];
    v30 = v26[3];
    v31 = v26[4];
    sub_218C4DDD0(v29, v30, v31);

    if (v29)
    {
      v32 = sub_219BF6214();
      sub_219BE5314("newsd download XPC connection will re-submit last known requests", 64, 2, &dword_2186C1000, v25, v32, MEMORY[0x277D84F90]);

      v33 = v30;
      swift_unknownObjectRetain();
      [v15 setDownloadLimits_];
      sub_2186C6148(0, &qword_280E8E400, 0x277D31410);
      v34 = sub_219BF5904();

      [v15 setDownloadRequests_];

      [v15 registerDownloadConsumer_];

      swift_unknownObjectRelease_n();
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double sub_218C4D380(uint64_t a1)
{

  sub_219BE3494();

  return result;
}

double sub_218C4D3D4(uint64_t a1)
{
  if (qword_280E8D8C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61780;
  v2 = sub_219BF61F4();
  v3 = MEMORY[0x277D84F90];

  return sub_219BE5314("newsd download XPC connection invalidated", 41, 2, &dword_2186C1000, v1, v2, v3);
}

void sub_218C4D464(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_218C4D4CC(uint64_t a1)
{
  v3 = sub_219BED174();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BED1D4();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED214();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v37 - v9;
  v10 = sub_219BED224();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C4C750(1, 0);
  v49 = a1;
  v14 = *(a1 + 24);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  *v13 = sub_219BF66A4();
  v15 = *MEMORY[0x277D85200];
  v16 = *(v11 + 104);
  v16(v13, v15, v10);
  v17 = sub_219BED254();
  v18 = *(v11 + 8);
  v18(v13, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = *(v14 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = (v19 + 1);
  if (v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v48 = v21;
  *v13 = sub_219BF66A4();
  v16(v13, v15, v10);
  v22 = sub_219BED254();
  v18(v13, v10);
  if ((v22 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v14 + 16) = v48;

  v23 = *(v49 + 24);

  *v13 = sub_219BF66A4();
  v16(v13, v15, v10);
  v24 = sub_219BED254();
  v18(v13, v10);
  if ((v24 & 1) == 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v25 = *(v23 + 16);

  v1 = exp2(v25);
  sub_219BF5CF4();
  if (v26 < v1)
  {
    v1 = v26;
  }

  if (qword_280E8D8C0 != -1)
  {
    goto LABEL_16;
  }

LABEL_8:
  sub_219BF61F4();
  sub_2186F20D4(0);
  result = swift_allocObject();
  *(result + 16) = xmmword_219C09BA0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v1 < 9.22337204e18)
  {
    v28 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v28;
    *(result + 32) = v1;
    sub_219BE5314("newsd download XPC connection interrupted, will reset after %lu seconds", v37);

    v29 = sub_219BF66A4();
    v30 = v38;
    sub_219BED1F4();
    v31 = v39;
    sub_219BED244();
    v32 = v41;
    v48 = *(v40 + 8);
    v48(v30, v41);
    aBlock[4] = sub_218C4DF90;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_10;
    v33 = _Block_copy(aBlock);

    v34 = v42;
    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_21879DD98(0);
    sub_21874E060(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
    v35 = v44;
    v36 = v47;
    sub_219BF7164();
    MEMORY[0x21CECD420](v31, v34, v35, v33);
    _Block_release(v33);

    (*(v46 + 8))(v35, v36);
    (*(v43 + 8))(v34, v45);
    return (v48)(v31, v32);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_218C4DB8C()
{
  sub_218C4C750(0, 0);
  sub_218C4CD6C();

  return swift_unknownObjectRelease();
}

uint64_t sub_218C4DBCC()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_7NewsUI225NewsdDownloadServiceProxyC16ConnectionStatus33_1F7DF65BEB71B98CB8740EFB045A4A5ELLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218C4DC2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218C4DC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_218C4DCD8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void *sub_218C4DD08(void *result, uint64_t a2)
{
  if (result >= 3)
  {
    v3 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_218C4DD60()
{
  result = qword_280E8E308;
  if (!qword_280E8E308)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E308);
  }

  return result;
}

uint64_t sub_218C4DDD0(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {

    v4 = a2;

    return swift_unknownObjectRetain();
  }

  return result;
}

void *sub_218C4DE18(void *result, uint64_t a2)
{
  if (result >= 3)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_218C4DE5C(uint64_t a1)
{
  if (qword_280E8D8C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61780;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("newsd download XPC service failed with error: %{public}@", 56, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

uint64_t type metadata accessor for SearchFeedConfigFetchResult(uint64_t a1)
{
  result = qword_280EB72F0;
  if (!qword_280EB72F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218C4E024(uint64_t a1)
{
  result = type metadata accessor for SearchFeedContentConfig(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218C4E090(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE22B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE22F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C4E41C(0);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v9 + 8))(v11, v8);
  v12 = sub_219BE22C4();
  v14 = v13;
  result = (*(v5 + 8))(v7, v4);
  if (v14)
  {

    MagazineSectionConfigKind.init(identifier:)(v12, v14, v25);
    v16 = v26;
    if (v26 == 255)
    {
      v16 = 0;
    }

    else
    {
      v12 = v25[0];
      v17 = v25[1];

      v14 = v17;
    }

    v18 = __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    v19 = swift_allocObject();
    *(v19 + 16) = v12;
    *(v19 + 24) = v14;
    *(v19 + 32) = v16;
    v20 = v19 | 0x6000000000000006;
    type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
    v21 = swift_allocObject();
    v22 = *v18;
    v23 = swift_allocObject();
    *(v23 + 16) = v20;

    sub_218C4E47C(a1, v21, sub_218C4E474, v23, v22);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C4E348()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_218C4E41C(uint64_t a1)
{
  if (!qword_280EE7430)
  {
    sub_219BE5F74();
    v1 = sub_219BE25A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7430);
    }
  }
}

uint64_t sub_218C4E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v21 = a3;
  v22 = a4;
  sub_218C4E41C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
  v24[4] = sub_218C4EA4C(&qword_27CC0FD10, 255, type metadata accessor for AlertMagazineContentUnavailableInStoreFront, &unk_219C36D2C);
  v24[0] = a2;
  sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);

  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v12 = sub_219BF66A4();
  (*(v9 + 16))(v11, a1, v8);
  sub_218718690(v24, v23);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v21;
  *(v15 + 24) = v16;
  (*(v9 + 32))(v15 + v13, v11, v8);
  *(v15 + v14) = v20;
  sub_2186CB1F0(v23, v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_219BE2F74();

  v17 = sub_219BE2E54();
  sub_219BE2FD4();

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_218C4E768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v23 = a3;
  v24 = a4;
  sub_218C4E41C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDDD74();
  v26[3] = v12;
  v26[4] = sub_218C4EA4C(&qword_27CC0FD18, 255, MEMORY[0x277D2FD20], MEMORY[0x277D2FD18]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v14 = sub_219BF66A4();
  (*(v9 + 16))(v11, a1, v8);
  sub_218718690(v26, v25);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = v24;
  *(v17 + 16) = v23;
  *(v17 + 24) = v18;
  (*(v9 + 32))(v17 + v15, v11, v8);
  *(v17 + v16) = v22;
  sub_2186CB1F0(v25, v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_219BE2F74();

  v19 = sub_219BE2E54();
  sub_219BE2FD4();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_218C4EA4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t objectdestroy_6Tm_0()
{
  sub_218C4E41C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return swift_deallocObject();
}

double sub_218C4EB84(void **a1)
{
  sub_218C4E41C(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2191E3F58(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

void (*sub_218C4ED80(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_218963B4C;
}

void sub_218C4EE60()
{
  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  sub_219BDD154();
  sub_218CCB4D8();
}

uint64_t sub_218C4EF08(uint64_t a1)
{
  v3 = sub_2190353F4();
  v9[0] = 0;
  sub_218F5955C(v3, [objc_allocWithZone(MEMORY[0x277D755B8]) init], v9, v10);
  if ((a1 - 1) >= 2)
  {
    if (a1 == 3)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = &v13;
        v5 = &v14;
        goto LABEL_9;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = &v15;
        v5 = &v16;
        goto LABEL_9;
      }
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = &v11;
      v5 = &v12;
LABEL_9:
      v6 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(*v4, *v5, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  return sub_218C4F040(v10);
}

uint64_t type metadata accessor for HistoryFeedRouteModel(uint64_t a1)
{
  result = qword_27CC0FD20;
  if (!qword_27CC0FD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_218C4F0E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 recentlyVisitedIssueIDs];
  v7 = sub_219BF5924();

  v12[0] = a1;
  v12[1] = a2;
  v11[2] = v12;
  LOBYTE(v6) = sub_2186D128C(sub_2186D1338, v11, v7);

  result = 0;
  if (v6)
  {
    v9 = sub_219BF53D4();
    v10 = [v5 bookmarkForLastVisitToIssueWithID_];

    return v10;
  }

  return result;
}

uint64_t sub_218C4F1CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AffinityTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBF9D0;
  if (!qword_280EBF9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C4F2A4(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_218C4F328();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_218C4F328()
{
  if (!qword_280E91670)
  {
    v0 = sub_219BEF284();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91670);
    }
  }
}

uint64_t sub_218C4F3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C708(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    if (v14(v8, 1, v10) != 1)
    {
      sub_2189ADEC8(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  if (!a2)
  {
    sub_218C4F328();
    swift_allocObject();
    a2 = sub_219BEF274();
  }

  sub_2189ADEC8(a1);
  result = type metadata accessor for AffinityTagFeedGroupKnobs(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_218C4F624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C4FD6C(0, &qword_280E8CD70, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C4FD18();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    v15 = 0;
    sub_21877C708(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_218C4F328();
    v14 = 1;
    sub_21877C708(&qword_280E91678, sub_218C4F328, MEMORY[0x277D32518]);
    sub_219BF7674();
    sub_218C4F3A4(v6, v13[1], v13[0]);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C4F888(void *a1)
{
  v3 = v1;
  sub_218C4FD6C(0, &qword_27CC0FD30, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C4FD18();
  sub_219BF7B44();
  v13 = 0;
  sub_2189AD5C8(0);
  sub_21877C708(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for AffinityTagFeedGroupKnobs(0) + 20));
    v11[15] = 1;
    sub_218C4F328();
    sub_21877C708(&qword_27CC0FD38, sub_218C4F328, MEMORY[0x277D32508]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C4FAA0()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x73656C7572;
  }
}

void sub_218C4FADC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000219CED920 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_218C4FBBC(uint64_t a1)
{
  v2 = sub_218C4FD18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C4FBF8(uint64_t a1)
{
  v2 = sub_218C4FD18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C4FC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877C708(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_218C4F328();
  return sub_219BEF254() & 1;
}

unint64_t sub_218C4FD18()
{
  result = qword_280EBF9F8;
  if (!qword_280EBF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF9F8);
  }

  return result;
}

void sub_218C4FD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C4FD18();
    v7 = a3(a1, &type metadata for AffinityTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218C4FDE4()
{
  result = qword_27CC0FD40;
  if (!qword_27CC0FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FD40);
  }

  return result;
}

unint64_t sub_218C4FE3C()
{
  result = qword_280EBF9E8;
  if (!qword_280EBF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF9E8);
  }

  return result;
}

unint64_t sub_218C4FE94()
{
  result = qword_280EBF9F0;
  if (!qword_280EBF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF9F0);
  }

  return result;
}

uint64_t sub_218C4FEE8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x536F546F72746E69;
    v7 = 0x74756374726F6873;
    if (a1 != 10)
    {
      v7 = 0x6F74536465766173;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656E697A6167616DLL;
    v9 = 0x6957646572616873;
    if (a1 != 7)
    {
      v9 = 0x7374726F7053796DLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E69646E657274;
    v2 = 0x745364657373696DLL;
    v3 = 0x745374736574616CLL;
    if (a1 != 4)
    {
      v3 = 0x6974736567677573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x756F59726F66;
    if (a1 != 1)
    {
      v4 = 0x696C64616548796DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_218C500D0()
{
  result = qword_280EB6268;
  if (!qword_280EB6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6268);
  }

  return result;
}

uint64_t sub_218C50124(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v138 = a1;
  v137 = a2;
  sub_218C516A8(0, &qword_280E91A60, MEMORY[0x277D321A0]);
  v114 = v2;
  v113 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v112 = &v111 - v3;
  sub_2186EDC08(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v4 - 8);
  v116 = &v111 - v5;
  sub_218C51510(0);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = &v111 - v9;
  v10 = type metadata accessor for CuratedAudioFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v10 - 8);
  v117 = (&v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186EDC08(0, qword_280EBBBE8, type metadata accessor for CuratedAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v12 - 8);
  v132 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = &v111 - v15;
  v136 = type metadata accessor for CuratedAudioFeedGroupKnobs(0);
  v133 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v129 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v115 = &v111 - v18;
  MEMORY[0x28223BE20](v19);
  v130 = &v111 - v20;
  sub_2186FA2D8(0);
  v131 = v21;
  v134 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v128 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v135 = &v111 - v24;
  v119 = type metadata accessor for PaywallAudioFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v119);
  v26 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C(0);
  v125 = v27;
  v124 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v121 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs(0);
  MEMORY[0x28223BE20](AudioFeedGroupKnobs - 8);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868(0);
  v123 = v32;
  v122 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v120 = &v111 - v36;
  v37 = type metadata accessor for ForYouAudioFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C(0);
  v41 = v40;
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v44 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v111 - v46;
  v48 = type metadata accessor for AudioFeedGroupConfig(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v111 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C51584(v138, v50, type metadata accessor for AudioFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v56 = v124;
      v57 = v121;
      v58 = v125;
      (*(v124 + 32))(v121, v50, v125);
      (*(v56 + 16))(v26, v57, v58);
      v59 = v119;
      v60 = v139;
      sub_218718690(v139 + 16, &v26[*(v119 + 24)]);
      v61 = &v26[v59[8]];
      *v61 = 0x6C6C6177796150;
      *(v61 + 1) = 0xE700000000000000;
      *&v26[v59[5]] = 1;
      v62 = v59[7];
      v139 = *(v60 + 136);
      *&v26[v62] = v139;
      sub_218C516A8(0, &qword_280E91DE0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186F6AE8(&qword_280EB35F8, type metadata accessor for PaywallAudioFeedGroupEmitter, &unk_219CA61D0);
      swift_unknownObjectRetain();
      v55 = sub_219BEDF84();
      (*(v56 + 8))(v57, v58);
      return v55;
    }

    v69 = v131;
    v138 = *(v134 + 32);
    v138(v135, v50, v131);
    v70 = *(v137 + *(type metadata accessor for AudioFeedGroupKnobs(0) + 24));
    v71 = sub_219BEDCA4();
    if (*(v70 + 16))
    {
      v73 = sub_21870F700(v71, v72);
      v75 = v74;

      v76 = v127;
      v77 = v126;
      if (v75)
      {
        v78 = *(v70 + 56);
        v79 = v133;
        sub_218C51584(v78 + v133[9] * v73, v127, type metadata accessor for CuratedAudioFeedGroupKnobs);
        (v79[7])(v76, 0, 1, v136);
        v80 = v130;
        sub_218C51744(v76, v130, type metadata accessor for CuratedAudioFeedGroupKnobs);
        v81 = v139;
LABEL_23:
        v105 = v134;
        v106 = v135;
        v107 = v128;
        (*(v134 + 16))(v128, v135, v69);
        v108 = v129;
        sub_218C51584(v80, v129, type metadata accessor for CuratedAudioFeedGroupKnobs);
        sub_218718690(v81 + 56, &v141);
        sub_218718690(v81 + 96, &v140);
        type metadata accessor for CuratedAudioFeedGroupEmitter(0);
        v109 = swift_allocObject();
        v138((v109 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_config), v107, v69);
        sub_218C51744(v108, v109 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_knobs, type metadata accessor for CuratedAudioFeedGroupKnobs);
        sub_2186CB1F0(&v141, v109 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_formatService);
        sub_2186CB1F0(&v140, v109 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_offlineContentManager);
        *&v141 = v109;
        sub_218C516A8(0, &qword_280E91DE0, MEMORY[0x277D31F00]);
        swift_allocObject();
        sub_2186F6AE8(&qword_280EB4B80, type metadata accessor for CuratedAudioFeedGroupEmitter, &unk_219C26F38);
        v55 = sub_219BEDF84();
        sub_218C515EC(v80, type metadata accessor for CuratedAudioFeedGroupKnobs);
        (*(v105 + 8))(v106, v69);
        return v55;
      }
    }

    else
    {

      v76 = v127;
      v77 = v126;
    }

    v82 = v133[7];
    v82(v76, 1, 1, v136);
    v83 = v117;
    sub_219BEDD14();
    v84 = *v83;
    v85 = v83[1];

    sub_218C515EC(v83, type metadata accessor for CuratedAudioFeedGroupConfigData);
    if (*(v70 + 16))
    {
      v86 = sub_21870F700(v84, v85);
      v88 = v87;

      if (v88)
      {
        v89 = *(v70 + 56);
        v90 = v132;
        v91 = v133;
        sub_218C51584(v89 + v133[9] * v86, v132, type metadata accessor for CuratedAudioFeedGroupKnobs);
        v82(v90, 0, 1, v136);
        v80 = v130;
        sub_218C51744(v90, v130, type metadata accessor for CuratedAudioFeedGroupKnobs);
        v92 = v91[6];
LABEL_21:
        v81 = v139;
        if (v92(v76, 1, v136) != 1)
        {
          sub_218C5164C(v76, qword_280EBBBE8, type metadata accessor for CuratedAudioFeedGroupKnobs);
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v82(v132, 1, 1, v136);
    v93 = v113;
    v94 = v118;
    v95 = v114;
    (*(v113 + 56))(v118, 1, 1, v114);
    v96 = sub_219BEF814();
    v97 = v116;
    (*(*(v96 - 8) + 56))(v116, 1, 1, v96);
    sub_218C51584(v94, v77, sub_218C51510);
    v98 = *(v93 + 48);
    if (v98(v77, 1, v95) == 1)
    {
      type metadata accessor for AudioFeedServiceConfig(0);
      sub_2186F6AE8(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
      v99 = v112;
      sub_219BEE974();
      if (v98(v77, 1, v95) != 1)
      {
        sub_218C515EC(v77, sub_218C51510);
      }
    }

    else
    {
      v99 = v112;
      (*(v93 + 32))(v112, v77, v95);
    }

    v100 = v115;
    (*(v93 + 32))(v115, v99, v95);
    *&v141 = 1;
    sub_2186F9548();
    swift_allocObject();
    v101 = sub_219BEF534();
    v102 = v136;
    *(v100 + *(v136 + 20)) = v101;
    *&v141 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    *(v100 + v102[6]) = sub_219BEF534();
    LOBYTE(v141) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *(v100 + v102[7]) = sub_219BEF534();
    *&v141 = 0;
    sub_2186ECA28();
    swift_allocObject();
    *(v100 + v102[8]) = sub_219BEF534();
    sub_2189B7614(v97, v100 + v102[9]);
    LOBYTE(v141) = 1;
    swift_allocObject();
    v103 = sub_219BEF534();
    sub_218C5164C(v97, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_218C515EC(v118, sub_218C51510);
    *(v100 + v102[10]) = v103;
    v80 = v130;
    sub_218C51744(v100, v130, type metadata accessor for CuratedAudioFeedGroupKnobs);
    v104 = v132;
    v92 = v133[6];
    if (v92(v132, 1, v102) != 1)
    {
      sub_218C5164C(v104, qword_280EBBBE8, type metadata accessor for CuratedAudioFeedGroupKnobs);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    v63 = v122;
    v64 = *(v122 + 32);
    v65 = v120;
    v66 = v50;
    v67 = v123;
    v64(v120, v66, v123);
    (*(v63 + 16))(v34, v65, v67);
    sub_218C51584(v137, v31, type metadata accessor for UpNextAudioFeedGroupKnobs);
    sub_218718690(v139 + 56, &v141);
    type metadata accessor for UpNextAudioFeedGroupEmitter(0);
    v68 = swift_allocObject();
    v64((v68 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_config), v34, v67);
    sub_218C51744(v31, v68 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs, type metadata accessor for UpNextAudioFeedGroupKnobs);
    sub_2186CB1F0(&v141, v68 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService);
    *&v141 = v68;
    sub_218C516A8(0, &qword_280E91DE0, MEMORY[0x277D31F00]);
    swift_allocObject();
    sub_2186F6AE8(&unk_280EB5E60, type metadata accessor for UpNextAudioFeedGroupEmitter, &unk_219CA6ED8);
    v55 = sub_219BEDF84();
    (*(v63 + 8))(v65, v67);
  }

  else
  {
    v52 = *(v42 + 32);
    v52(v47, v50, v41);
    (*(v42 + 16))(v44, v47, v41);
    v53 = type metadata accessor for AudioFeedGroupKnobs(0);
    sub_218C51584(v137 + *(v53 + 20), v39, type metadata accessor for ForYouAudioFeedGroupKnobs);
    sub_218718690(v139 + 56, &v141);
    type metadata accessor for ForYouAudioFeedGroupEmitter(0);
    v54 = swift_allocObject();
    v52((v54 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_config), v44, v41);
    sub_218C51744(v39, v54 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_knobs, type metadata accessor for ForYouAudioFeedGroupKnobs);
    sub_2186CB1F0(&v141, v54 + OBJC_IVAR____TtC7NewsUI227ForYouAudioFeedGroupEmitter_formatService);
    *&v141 = v54;
    sub_218C516A8(0, &qword_280E91DE0, MEMORY[0x277D31F00]);
    swift_allocObject();
    sub_2186F6AE8(&unk_280EB8AD0, type metadata accessor for ForYouAudioFeedGroupEmitter, &unk_219CAAA98);
    v55 = sub_219BEDF94();
    (*(v42 + 8))(v47, v41);
  }

  return v55;
}

void sub_218C51510(uint64_t a1)
{
  if (!qword_280E91A50)
  {
    sub_218C516A8(255, &qword_280E91A60, MEMORY[0x277D321A0]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91A50);
    }
  }
}

uint64_t sub_218C51584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C515EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C5164C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186EDC08(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218C516A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AudioFeedServiceConfig(255);
    v7 = sub_2186F6AE8(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218C51744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI220RouteReferralContextOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsUI217FeedSearchRequestVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_218C51808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_218C51864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_218C51900(uint64_t *a1)
{
  v1 = a1[12];
  v2 = objc_allocWithZone(MEMORY[0x277CEE8F8]);
  v3 = sub_219BF53D4();
  v4 = sub_219BF53D4();
  v5 = [v2 initWithTitle:v3 message:v4];

  v6 = v5;
  [v6 setStyle_];
  [v6 setIconImage_];
  v7 = sub_219BF53D4();
  v8 = [objc_opt_self() actionWithTitle:0 identifier:v7];

  [v8 setStyle_];
  [v6 addButtonAction_];
  [v6 setDefaultAction_];

  return v6;
}

uint64_t sub_218C51A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v82 = a4;
  v83 = type metadata accessor for TodayLayoutSectionDescriptor.Footer(0);
  v77 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v5 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = v72 - v7;
  v8 = type metadata accessor for TodayLayoutSectionDescriptor.Header(0);
  v78 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = v72 - v12;
  v13 = sub_219BE9834();
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x28223BE20](v13);
  v76 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v72 - v16;
  v18 = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for TodayLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v21);
  v73 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (v72 - v24);
  sub_2188654DC(0);
  sub_219BE8184();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_49:
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_219BF7314();
      v71 = v73;
      sub_219BE8184();
      sub_219BF7484();
      sub_218C53254(v71, type metadata accessor for TodayLayoutSectionDescriptor);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00);
      goto LABEL_50;
    }

    v35 = *v25;
    v73 = v25[1];
    v72[0] = v25[2];
    v36 = *(v35 + 16);
    v37 = MEMORY[0x277D84F90];
    v72[1] = v35;
    if (v36)
    {
      v84 = MEMORY[0x277D84F90];
      sub_218C351A0(0, v36, 0);
      v38 = v84;
      v39 = *(type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0) - 8);
      v40 = v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v41 = *(v39 + 72);
      v42 = v78;
      do
      {
        sub_218C53170(v40, v10, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
        swift_storeEnumTagMultiPayload();
        v84 = v38;
        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_218C351A0((v43 > 1), v44 + 1, 1);
          v42 = v78;
          v38 = v84;
        }

        *(v38 + 16) = v44 + 1;
        sub_218C531D8(v10, v38 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v44, type metadata accessor for TodayLayoutSectionDescriptor.Header);
        v40 += v41;
        --v36;
      }

      while (v36);
      v45 = v81;
      v46 = v82;
      v37 = MEMORY[0x277D84F90];
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
      v45 = v81;
      v46 = v82;
    }

    v25 = v73;
    v54 = *(v73 + 2);
    if (v54)
    {
      v84 = v37;
      sub_218C35150(0, v54, 0);
      v55 = v84;
      v56 = *(type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0) - 8);
      v57 = v25 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v58 = *(v56 + 72);
      v59 = v77;
      do
      {
        sub_218C53170(v57, v5, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
        swift_storeEnumTagMultiPayload();
        v84 = v55;
        v61 = *(v55 + 16);
        v60 = *(v55 + 24);
        v25 = (v61 + 1);
        if (v61 >= v60 >> 1)
        {
          sub_218C35150((v60 > 1), v61 + 1, 1);
          v59 = v77;
          v55 = v84;
        }

        *(v55 + 16) = v25;
        sub_218C531D8(v5, v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v61, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
        v57 += v58;
        --v54;
      }

      while (v54);

      v45 = v81;
      v46 = v82;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v62 = v76;
    sub_219BE95F4();
    v63 = (*(v79 + 88))(v62, v80);
    if (v63 == *MEMORY[0x277D6E758])
    {

      v64 = sub_219BE9604();
      if ((v64 & 0x8000000000000000) == 0)
      {
        if (v64 < *(v38 + 16))
        {
          v65 = v75;
          sub_218C53170(v38 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v64, v75, type metadata accessor for TodayLayoutSectionDescriptor.Header);

          v33 = sub_218C524C8(v65, v45, v46);
          v52 = type metadata accessor for TodayLayoutSectionDescriptor.Header;
          v53 = v65;
          goto LABEL_37;
        }

        goto LABEL_43;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v63 == *MEMORY[0x277D6E750])
    {
      v66 = sub_219BE9604();
      v67 = *(v38 + 16);

      v68 = v66 - v67;
      if (!__OFSUB__(v66, v67))
      {
        if ((v68 & 0x8000000000000000) == 0)
        {
          if (v68 < *(v55 + 16))
          {
            v69 = v74;
            sub_218C53170(v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v68, v74, type metadata accessor for TodayLayoutSectionDescriptor.Footer);

            v33 = sub_218C5272C(v69, v45, v46);
            v52 = type metadata accessor for TodayLayoutSectionDescriptor.Footer;
            v53 = v69;
            goto LABEL_37;
          }

          goto LABEL_47;
        }

        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
LABEL_48:
      sub_218C53254(v25, type metadata accessor for TodayLayoutSectionDescriptor);
      goto LABEL_49;
    }

    sub_218C531D8(v25, v20, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
    v27 = *v20;
    v28 = v20[1];
    v29 = v82;
    sub_219BE95F4();
    v30 = (*(v79 + 88))(v17, v80);
    if (v30 == *MEMORY[0x277D6E758])
    {
      v31 = sub_219BE9604();
      if ((v31 & 0x8000000000000000) == 0)
      {
        if (v31 < *(v27 + 16))
        {
          v32 = v75;
          sub_218C53170(v27 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v31, v75, type metadata accessor for TodayLayoutSectionDescriptor.Header);
          v33 = sub_218C524C8(v32, v81, v29);
          v34 = type metadata accessor for TodayLayoutSectionDescriptor.Header;
LABEL_19:
          sub_218C53254(v32, v34);
          v52 = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData;
          v53 = v20;
LABEL_37:
          sub_218C53254(v53, v52);
          return v33;
        }

        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_39;
    }

    if (v30 == *MEMORY[0x277D6E750])
    {
      v47 = sub_219BE9604();
      v48 = *(v27 + 16);
      v49 = __OFSUB__(v47, v48);
      v50 = v47 - v48;
      if (!v49)
      {
        if ((v50 & 0x8000000000000000) == 0)
        {
          if (v50 < *(v28 + 16))
          {
            v51 = v28 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v50;
            v32 = v74;
            sub_218C53170(v51, v74, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
            v33 = sub_218C5272C(v32, v81, v29);
            v34 = type metadata accessor for TodayLayoutSectionDescriptor.Footer;
            goto LABEL_19;
          }

          goto LABEL_46;
        }

        goto LABEL_44;
      }

      goto LABEL_40;
    }
  }

LABEL_50:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218C524C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TodayLayoutSectionDescriptor.Header(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C53170(a1, v16, type metadata accessor for TodayLayoutSectionDescriptor.Header);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218C531D8(v16, v9, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
    v17 = sub_218F6B774(v9, a2, a3);
    sub_218C53254(v9, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
    v17 = sub_219BF0234();
    (*(v11 + 8))(v13, v10);
  }

  return v17;
}

id sub_218C5272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[0] = a2;
  v29[1] = a3;
  v5 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = sub_219BF00D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TodayLayoutSectionDescriptor.Footer(0);
  MEMORY[0x28223BE20](v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C53170(a1, v17, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218C531D8(v17, v10, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
    v18 = swift_allocObject();
    swift_weakInit();
    sub_218C53170(v10, v7, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_218C53254(v7, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      sub_2188074E4(0);
      v19 = sub_219BF6414();
      sub_2187DE860(&qword_27CC0FD48, sub_2188074E4, MEMORY[0x277D6DE98]);
    }

    else
    {
      sub_2187DE694(0);
      v22 = *(v21 + 48);
      sub_218807484(0);

      v19 = sub_219BF6414();
      sub_2187DE860(&qword_27CC0FD50, sub_218807484, MEMORY[0x277D6DE98]);
      v23 = sub_219BE9CC4();
      (*(*(v23 - 8) + 8))(&v7[v22], v23);
      v24 = sub_219BE8434();
      (*(*(v24 - 8) + 8))(v7, v24);
    }

    swift_getObjectType();
    v20 = v19;
    sub_218F6C1C4(v20, v10, sub_218C53240, v18);

    v29[2] = v20;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = v26;
    v27[4] = sub_218C53240;
    v27[5] = v18;

    sub_219BE5834();

    sub_218C53254(v10, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
    v20 = sub_219BF0234();
    (*(v12 + 8))(v14, v11);
  }

  return v20;
}

double sub_218C52CA0(uint64_t a1)
{
  v1 = sub_219BE8C14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TodayRouteModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((*(Strong + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 48), *(*(Strong + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 72));
      swift_storeEnumTagMultiPayload();
      sub_219BE8C04();
      memset(v10, 0, sizeof(v10));
      v11 = -1;
      sub_218F19BE4(v7, v4, v10);

      (*(v2 + 8))(v4, v1);
      sub_218C53254(v7, type metadata accessor for TodayRouteModel);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218C52E80()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_218C52FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayLayoutModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_218879004(0);
  sub_219BE75E4();
  (*(v6 + 32))(v8, v11, v5);
  __swift_project_boxed_opaque_existential_1((v12 + 32), *(v12 + 56));
  v13 = sub_219BF0224();
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_218C53170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C531D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C53254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C532D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI236FeedPuzzleRankProgressCommandHandler_puzzleHistory), *(v1 + OBJC_IVAR____TtC7NewsUI236FeedPuzzleRankProgressCommandHandler_puzzleHistory + 24));
  v4 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v5 = sub_219BF3424();

  if (v5)
  {
    v6 = [v5 rankID];
    if (v6)
    {
      v7 = v6;
      sub_219BF5414();

      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI236FeedPuzzleRankProgressCommandHandler_puzzleRankProvider), *(v2 + OBJC_IVAR____TtC7NewsUI236FeedPuzzleRankProgressCommandHandler_puzzleRankProvider + 24));
      v8 = [sub_219BF0AA4() puzzleType];
      swift_unknownObjectRelease();
      v9 = [v8 identifier];
      swift_unknownObjectRelease();
      sub_219BF5414();

      v10 = sub_219BF30D4();

      if (v10)
      {
        v11 = [v10 name];
        v12 = sub_219BF5414();
        v14 = v13;

        goto LABEL_7;
      }
    }
  }

  v12 = 0;
  v14 = 0xE000000000000000;
LABEL_7:
  *a1 = v12;
  a1[1] = v14;
  v15 = *MEMORY[0x277D32568];
  v16 = sub_219BEF344();
  v17 = *(*(v16 - 8) + 104);

  return v17(a1, v15, v16);
}

uint64_t sub_218C535D4()
{
  sub_2189698E4(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0A14();
  v3 = sub_219BF2204();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return 0;
  }

  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x277D337A0] || v5 == *MEMORY[0x277D33798])
  {
    return 1;
  }

  if (v5 == *MEMORY[0x277D33790])
  {
    return 0;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_218C5371C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAA34();
    sub_219BF0AC4();
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218C53804()
{
  v1 = OBJC_IVAR____TtC7NewsUI215DemoStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI215DemoStartupTask_engagementTriggerStateStore));

  return swift_deallocClassInstance();
}

void sub_218C538C8(uint64_t a1)
{
  v55 = a1;
  sub_2187FAD00(0);
  v58 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188637B8(0);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218863910(0);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C0BABC(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  (*(v10 + 16))(&v50 - v21, v1, v9, v20);
  v50 = v22;
  sub_218C5435C(v22, v18);
  (*(v10 + 32))(v12, v18, v9);
  sub_2186EF984(&qword_280EE3738, sub_21880B928, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v23 = MEMORY[0x277D6EC70];
  sub_2188639E4(0, &qword_280E8D4A0, &qword_280EE3730, MEMORY[0x277D6EC70], MEMORY[0x277D84310]);
  v25 = *(v24 + 36);
  v26 = sub_2186EF984(&qword_280EE3730, sub_21880B928, v23);
  sub_219BF5E84();
  if (*&v15[v25] == v60[0])
  {
    v27 = 0;
LABEL_20:
    v49 = *(v51 + 36);
    sub_218744E0C(v50, sub_218C0BABC);
    *&v15[v49] = v27;
    sub_218744E0C(v15, sub_218863910);
  }

  else
  {
    v28 = 0;
    v53 = (v3 + 32);
    v54 = (v3 + 16);
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      v29 = sub_219BF5EC4();
      v31 = v57;
      v30 = v58;
      (*v54)(v57);
      v29(v60, 0);
      sub_219BF5E94();
      v32 = *(v56 + 48);
      *v7 = v28;
      (*v53)(&v7[v32], v31, v30);
      v52 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v33 = v15;
      v34 = v26;
      v35 = v25;
      v36 = v9;
      v37 = sub_218C53E7C(v28, &v7[v32], v55);
      v38 = v7;
      sub_218744E0C(v7, sub_2188637B8);
      v39 = *(v37 + 2);
      v40 = *(v59 + 2);
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_22;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v59;
      if (!isUniquelyReferenced_nonNull_native || v41 > *(v59 + 3) >> 1)
      {
        if (v40 <= v41)
        {
          v44 = v40 + v39;
        }

        else
        {
          v44 = v40;
        }

        v43 = sub_218840D24(isUniquelyReferenced_nonNull_native, v44, 1, v59);
      }

      v7 = v38;
      v9 = v36;
      v45 = *(v37 + 2);
      v25 = v35;
      v26 = v34;
      v59 = v43;
      if (v45)
      {
        if ((*(v43 + 3) >> 1) - *(v43 + 2) < v39)
        {
          goto LABEL_24;
        }

        v15 = v33;
        swift_arrayInitWithCopy();

        if (v39)
        {
          v46 = *(v59 + 2);
          v47 = __OFADD__(v46, v39);
          v48 = v46 + v39;
          if (v47)
          {
            goto LABEL_25;
          }

          *(v59 + 2) = v48;
        }
      }

      else
      {

        v15 = v33;
        if (v39)
        {
          goto LABEL_23;
        }
      }

      sub_219BF5E84();
      ++v28;
      if (*&v15[v35] == v60[0])
      {
        v27 = v52;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}