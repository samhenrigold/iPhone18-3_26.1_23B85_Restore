uint64_t sub_1C6BD9518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    sub_1C6BDEC00(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD9780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    sub_1C6BDEC00(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    sub_1C6BDEC00(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    sub_1C6BDEC00(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BD9EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    sub_1C6BDEC00(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    sub_1C6BDEC00(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    sub_1C6BDEC00(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    sub_1C6BDEC00(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDA858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    sub_1C6BDEC00(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDAAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    sub_1C6BDEC00(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDAD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    sub_1C6BDEC00(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDAF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    sub_1C6BDEC00(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    sub_1C6BDEC00(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    sub_1C6BDEC00(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    sub_1C6BDEC00(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    sub_1C6BDEC00(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDBB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    sub_1C6BDEC00(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDBE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    sub_1C6BDEC00(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDC068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    sub_1C6BDEC00(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6BDC2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    sub_1C6BDEC00(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDEC00(&qword_1EC1D7620, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BDC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = sub_1C6D789A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C6BDC6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BDEC00(&qword_1EC1D7630, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BDC74C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7608);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BDC7F4(uint64_t a1)
{
  v2 = sub_1C6BDEC00(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BDC860(uint64_t a1, uint64_t a2)
{
  sub_1C6BDEC00(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B30Storage_CompressedSessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v52 = &v49 - v9;
  sub_1C6BDF034(0, &qword_1EC1D6CB0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v56 = &v49 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v49 - v21;
  sub_1C6BDF034(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v49 - v26;
  v51 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v28 = *(v51 + 24);
  v29 = *(v24 + 56);
  v57 = a1;
  sub_1C6BDF178(a1 + v28, v27, &qword_1EDCE66F0, v18);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6BDF178(v30, &v27[v29], &qword_1EDCE66F0, v18);
  v32 = *(v14 + 48);
  if (v32(v27, 1, v13) != 1)
  {
    sub_1C6BDF178(v27, v22, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v27[v29], 1, v13) != 1)
    {
      (*(v14 + 32))(v17, &v27[v29], v13);
      sub_1C6BDEC00(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v37 = sub_1C6D79560();
      v38 = *(v14 + 8);
      v38(v17, v13);
      v38(v22, v13);
      sub_1C6BDF108(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v22, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v27;
LABEL_14:
    sub_1C6BDF0AC(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v27[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BDF108(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v39 = *(v53 + 48);
  v40 = v56;
  sub_1C6BDF178(v57, v56, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BDF178(v31, v40 + v39, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v40, 1, v55) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_1C6BDF108(v40, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v52;
  sub_1C6BDF178(v40, v52, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_1C6BC7690(v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_13:
    v33 = &qword_1EC1D6CB0;
    v34 = qword_1EDCE3EB8;
    v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
    v36 = v40;
    goto LABEL_14;
  }

  v46 = v40 + v39;
  v47 = v50;
  sub_1C6BC7B1C(v46, v50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v48 = _s19NewsPersonalization010Com_Apple_a1_B30Storage_CompressedSessionEventV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v43, v47);
  sub_1C6BC7690(v47, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7690(v43, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BDF108(v40, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B30Storage_CompressedSessionEventV06OneOf_H0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v225 = a2;
  v226 = a1;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v208 = (&v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v188, v5);
  v209 = (&v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v207 = (&v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v206 = (&v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v205 = (&v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v204 = (&v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v203 = (&v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v202 = (&v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v201 = (&v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v199 = (&v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v187, v31);
  v200 = (&v184 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v186, v33);
  v198 = (&v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v185, v35);
  v197 = (&v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v184 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v184, v37);
  v196 = (&v184 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v195 = (&v184 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v194 = (&v184 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v193 = (&v184 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v192 = &v184 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v191 = (&v184 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v190 = (&v184 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v189 = (&v184 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v223 = (&v184 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v63, v64);
  v224 = (&v184 - v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v222 = (&v184 - v68);
  MEMORY[0x1EEE9AC00](v69, v70);
  v221 = (&v184 - v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  v219 = (&v184 - v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v217 = (&v184 - v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  v215 = (&v184 - v80);
  MEMORY[0x1EEE9AC00](v81, v82);
  v213 = (&v184 - v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  v212 = (&v184 - v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  v211 = (&v184 - v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  v220 = (&v184 - v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  v218 = (&v184 - v95);
  MEMORY[0x1EEE9AC00](v96, v97);
  v216 = (&v184 - v98);
  MEMORY[0x1EEE9AC00](v99, v100);
  v214 = (&v184 - v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  v210 = (&v184 - v104);
  MEMORY[0x1EEE9AC00](v105, v106);
  v108 = (&v184 - v107);
  MEMORY[0x1EEE9AC00](v109, v110);
  v112 = (&v184 - v111);
  MEMORY[0x1EEE9AC00](v113, v114);
  v116 = &v184 - v115;
  MEMORY[0x1EEE9AC00](v117, v118);
  v120 = (&v184 - v119);
  MEMORY[0x1EEE9AC00](v121, v122);
  v124 = (&v184 - v123);
  MEMORY[0x1EEE9AC00](v125, v126);
  v128 = (&v184 - v127);
  sub_1C6BDF1F8(0);
  MEMORY[0x1EEE9AC00](v129 - 8, v130);
  v132 = &v184 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(v133 + 56);
  sub_1C6BDF25C(v226, v132, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v226 = v134;
  sub_1C6BDF25C(v225, &v132[v134], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6BDF25C(v132, v124, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v161 = v226;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v162 = v190;
        sub_1C6BC7B1C(&v132[v161], v190, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(v124, v162);
        v154 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
        sub_1C6BC7690(v162, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
        v145 = v124;
        goto LABEL_43;
      }

      v136 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      v137 = v124;
      goto LABEL_80;
    case 2u:
      sub_1C6BDF25C(v132, v120, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v152 = v226;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v153 = v191;
        sub_1C6BC7B1C(&v132[v152], v191, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleReadV2eeoiySbAC_ACtFZ_0(v120, v153);
        v154 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
        sub_1C6BC7690(v153, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
        v145 = v120;
        goto LABEL_43;
      }

      v180 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
      goto LABEL_79;
    case 3u:
      sub_1C6BDF25C(v132, v116, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v156 = v226;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v157 = v192;
        sub_1C6BC7B1C(&v132[v156], v192, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(v116, v157);
        v154 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
        sub_1C6BC7690(v157, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
        v145 = v116;
        goto LABEL_43;
      }

      v136 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      v137 = v116;
      goto LABEL_80;
    case 4u:
      sub_1C6BDF25C(v132, v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v143 = v226;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v144 = v193;
        sub_1C6BC7B1C(&v132[v143], v193, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(v112, v144);
        sub_1C6BC7690(v144, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
        v145 = v112;
        v146 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
        goto LABEL_44;
      }

      v136 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
      v137 = v112;
      goto LABEL_80;
    case 5u:
      sub_1C6BDF25C(v132, v108, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v165 = v226;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v139 = v194;
        sub_1C6BC7B1C(&v132[v165], v194, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      goto LABEL_75;
    case 6u:
      v108 = v210;
      sub_1C6BDF25C(v132, v210, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v167 = v226;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v139 = v195;
        sub_1C6BC7B1C(&v132[v167], v195, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_75;
    case 7u:
      v120 = v214;
      sub_1C6BDF25C(v132, v214, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v158 = v226;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v180 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
        goto LABEL_79;
      }

      v159 = v196;
      sub_1C6BC7B1C(&v132[v158], v196, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      if (*v120 == *v159)
      {
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v160 = sub_1C6D79560();
        sub_1C6BC7690(v159, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
        if (v160)
        {
          v151 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v159, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      }

      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
      goto LABEL_93;
    case 8u:
      v120 = v216;
      sub_1C6BDF25C(v132, v216, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v173 = v226;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v180 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
        goto LABEL_79;
      }

      v174 = v197;
      sub_1C6BC7B1C(&v132[v173], v197, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      if (*v120 == *v174)
      {
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v175 = sub_1C6D79560();
        sub_1C6BC7690(v174, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
        if (v175)
        {
          v151 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v174, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      }

      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
      goto LABEL_93;
    case 9u:
      v120 = v218;
      sub_1C6BDF25C(v132, v218, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v148 = v226;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v180 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
        goto LABEL_79;
      }

      v149 = v198;
      sub_1C6BC7B1C(&v132[v148], v198, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      if (*v120 == *v149)
      {
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v150 = sub_1C6D79560();
        sub_1C6BC7690(v149, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
        if (v150)
        {
          v151 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v149, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      }

      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
      goto LABEL_93;
    case 0xAu:
      v120 = v220;
      sub_1C6BDF25C(v132, v220, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v170 = v226;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v180 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
        goto LABEL_79;
      }

      v171 = v200;
      sub_1C6BC7B1C(&v132[v170], v200, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      if (*v120 == *v171)
      {
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v172 = sub_1C6D79560();
        sub_1C6BC7690(v171, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
        if (v172)
        {
          v151 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
          goto LABEL_57;
        }
      }

      else
      {
        sub_1C6BC7690(v171, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      }

      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
      goto LABEL_93;
    case 0xBu:
      v108 = v211;
      sub_1C6BDF25C(v132, v211, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v142 = v226;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v139 = v199;
        sub_1C6BC7B1C(&v132[v142], v199, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
      goto LABEL_75;
    case 0xCu:
      v108 = v212;
      sub_1C6BDF25C(v132, v212, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v147 = v226;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v139 = v201;
        sub_1C6BC7B1C(&v132[v147], v201, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_75;
    case 0xDu:
      v108 = v213;
      sub_1C6BDF25C(v132, v213, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v166 = v226;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v139 = v202;
        sub_1C6BC7B1C(&v132[v166], v202, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_75;
    case 0xEu:
      v108 = v215;
      sub_1C6BDF25C(v132, v215, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v141 = v226;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v139 = v203;
        sub_1C6BC7B1C(&v132[v141], v203, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventTrackFinishedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_75;
    case 0xFu:
      v108 = v217;
      sub_1C6BDF25C(v132, v217, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v155 = v226;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v139 = v204;
        sub_1C6BC7B1C(&v132[v155], v204, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      goto LABEL_75;
    case 0x10u:
      v108 = v219;
      sub_1C6BDF25C(v132, v219, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v138 = v226;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v139 = v205;
        sub_1C6BC7B1C(&v132[v138], v205, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B47Storage_CompressedSessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      goto LABEL_75;
    case 0x11u:
      v108 = v221;
      sub_1C6BDF25C(v132, v221, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v163 = v226;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v139 = v206;
        sub_1C6BC7B1C(&v132[v163], v206, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
      goto LABEL_75;
    case 0x12u:
      v108 = v222;
      sub_1C6BDF25C(v132, v222, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v168 = v226;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v139 = v207;
        sub_1C6BC7B1C(&v132[v168], v207, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
        goto LABEL_42;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
      goto LABEL_75;
    case 0x13u:
      v120 = v224;
      sub_1C6BDF25C(v132, v224, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v176 = v226;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        v180 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_79:
        v136 = v180;
        v137 = v120;
        goto LABEL_80;
      }

      v177 = v209;
      sub_1C6BC7B1C(&v132[v176], v209, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      if (*v120 == *v177)
      {
        sub_1C6D78A40();
        sub_1C6BDEC00(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v178 = sub_1C6D79560();
        sub_1C6BC7690(v177, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
        if (v178)
        {
          v151 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_57:
          sub_1C6BC7690(v120, v151);
          LODWORD(v226) = 1;
          v169 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
          goto LABEL_81;
        }
      }

      else
      {
        sub_1C6BC7690(v177, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      }

      v183 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_93:
      sub_1C6BC7690(v120, v183);
      LODWORD(v226) = 0;
      v169 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
      goto LABEL_81;
    case 0x14u:
      v108 = v223;
      sub_1C6BDF25C(v132, v223, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v164 = v226;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v139 = v208;
        sub_1C6BC7B1C(&v132[v164], v208, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B48Storage_CompressedSessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(v108, v139);
        v140 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_42:
        v154 = v140;
        sub_1C6BC7690(v139, v140);
        v145 = v108;
        goto LABEL_43;
      }

      v179 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_75:
      v136 = v179;
      v137 = v108;
      goto LABEL_80;
    default:
      sub_1C6BDF25C(v132, v128, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v135 = v226;
      if (swift_getEnumCaseMultiPayload())
      {
        v136 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
        v137 = v128;
LABEL_80:
        sub_1C6BC7690(v137, v136);
        LODWORD(v226) = 0;
        v169 = sub_1C6BDF1F8;
      }

      else
      {
        v182 = v189;
        sub_1C6BC7B1C(&v132[v135], v189, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
        LODWORD(v226) = _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(v128, v182);
        v154 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
        sub_1C6BC7690(v182, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
        v145 = v128;
LABEL_43:
        v146 = v154;
LABEL_44:
        sub_1C6BC7690(v145, v146);
        v169 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
      }

LABEL_81:
      sub_1C6BC7690(v132, v169);
      return v226 & 1;
  }
}

uint64_t sub_1C6BDEC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6BDED48(uint64_t a1)
{
  sub_1C6BC6FE4(319, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6BC6FE4(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6BDEE44(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(319);
                                          if (v22 <= 0x3F)
                                          {
                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                            return 0;
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
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C6BDF034(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BC6FE4(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BDF0AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BDF034(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BDF108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BC6FE4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BDF178(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BC6FE4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C6BDF1F8(uint64_t a1)
{
  if (!qword_1EC1D7728)
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7728);
    }
  }
}

uint64_t sub_1C6BDF25C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BDF2C4(uint64_t a1)
{
  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  v3 = off_1EDCE18E8;
  sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  sub_1C6BE01C4(0, &qword_1EDCDF8A8, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, MEMORY[0x1E69E6720]);
  swift_unknownObjectRetain();
  v5 = sub_1C6D795F0();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C6B2064C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_1C6D79AC0();
  sub_1C6D78D30("Fetching tags from the sports graph directly under root tag %{public}@", 70, 2, &dword_1C6B09000, v3, v8, v4);

  sub_1C6D793D0();
  sub_1C6D783A0();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v1;
  swift_unknownObjectRetain();

  v10 = sub_1C6D78210();
  v11 = MEMORY[0x1E69E62F8];
  sub_1C6BE01C4(0, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding, MEMORY[0x1E69E62F8]);
  sub_1C6D782A0();

  v12 = sub_1C6D78210();
  sub_1C6BE01C4(0, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, v11);
  v13 = sub_1C6D782A0();

  return v13;
}

uint64_t sub_1C6BDF570(void *a1, void *a2, void *a3)
{
  sub_1C6BDF6F8(a2);
  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  v4 = off_1EDCE18E8;
  sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = sub_1C6D7A0E0();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6B2064C();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = sub_1C6D79AC0();
  sub_1C6D78D30("Found sports taxonomy graph with %{public}@ tags to fetch, fetching...", 70, 2, &dword_1C6B09000, v4, v9, v5);

  __swift_project_boxed_opaque_existential_1(a3 + 7, a3[10]);
  v10 = sub_1C6D79320();

  return v10;
}

char *sub_1C6BDF6F8(void *a1)
{
  sub_1C6B1A3B4(0, &unk_1EDCDFC80, MEMORY[0x1E69B6540], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v50 - v4;
  v6 = sub_1C6D79400();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v50 - v13;
  if (a1)
  {
    v15 = [swift_unknownObjectRetain() identifier];
    sub_1C6D795A0();

    sub_1C6D793B0();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1C6BE0318(v5);
      if (qword_1EDCE18E0 != -1)
      {
        swift_once();
      }

      v16 = off_1EDCE18E8;
      sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C6D7E630;
      v58 = 0;
      v59 = 0xE000000000000000;
      v57 = a1;
      sub_1C6B0F7A8(0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
      sub_1C6D79E60();
      v18 = v58;
      v19 = v59;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1C6B2064C();
      *(v17 + 32) = v18;
      *(v17 + 40) = v19;
      v20 = sub_1C6D79AC0();
      sub_1C6D78D30("Found no node for provided root tag %{public}@. Continuing with empty collection of graph tags", 94, 2, &dword_1C6B09000, v16, v20, v17);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  v21 = sub_1C6D793C0();
  v22 = v21;
  a1 = *(v21 + 16);
  if (!a1)
  {
LABEL_22:

    return MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1C6B6732C(*(v21 + 16), 0);
  v24 = sub_1C6B67FC8(&v58, v23 + 4, a1, v22);
  sub_1C6B688C4(v58);
  if (v24 != a1)
  {
    __break(1u);
LABEL_9:
    v52 = a1;
    v54 = v7;
    (*(v7 + 32))(v14, v5, v6);
    v25 = sub_1C6D793E0();
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    v56 = off_1EDCE18E8;
    sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C6D807C0;
    v58 = 0;
    v59 = 0xE000000000000000;
    v51 = v14;
    v53 = v6;
    sub_1C6D79E60();
    v27 = v58;
    v28 = v59;
    v29 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1C6B2064C();
    *(v26 + 64) = v30;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    v58 = *(v25 + 16);
    v31 = sub_1C6D7A0E0();
    *(v26 + 96) = v29;
    *(v26 + 104) = v30;
    *(v26 + 72) = v31;
    *(v26 + 80) = v32;
    v58 = 0;
    v59 = 0xE000000000000000;
    v57 = v52;
    sub_1C6B0F7A8(0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
    sub_1C6D79E60();
    v33 = v58;
    v34 = v59;
    *(v26 + 136) = v29;
    *(v26 + 144) = v30;
    *(v26 + 112) = v33;
    *(v26 + 120) = v34;
    v35 = sub_1C6D79AC0();
    sub_1C6D78D30("Found root node %{public}@ with %{public}@ children for provided root tag %{public}@", 84, 2, &dword_1C6B09000, v56, v35, v26);

    v36 = *(v25 + 16);
    if (v36)
    {
      v37 = v53;
      v38 = *(v54 + 16);
      v39 = *(v54 + 80);
      v50[1] = v25;
      v40 = v25 + ((v39 + 32) & ~v39);
      v55 = *(v54 + 72);
      v56 = v38;
      v41 = (v54 + 8);
      v23 = MEMORY[0x1E69E7CC0];
      v50[0] = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54 += 16;
      v38(v10, v40, v53);
      while (1)
      {
        v43 = sub_1C6D793F0();
        v45 = v44;
        v46 = *v41;
        (*v41)(v10, v37);
        if (v45)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1C6B6592C(0, *(v23 + 2) + 1, 1, v23);
          }

          v48 = *(v23 + 2);
          v47 = *(v23 + 3);
          if (v48 >= v47 >> 1)
          {
            v23 = sub_1C6B6592C((v47 > 1), v48 + 1, 1, v23);
          }

          *(v23 + 2) = v48 + 1;
          v42 = &v23[16 * v48];
          *(v42 + 4) = v43;
          *(v42 + 5) = v45;
          v37 = v53;
        }

        v40 += v55;
        if (!--v36)
        {
          break;
        }

        v56(v10, v40, v37);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v37 = v53;
      v46 = *(v54 + 8);
      v23 = MEMORY[0x1E69E7CC0];
    }

    v46(v51, v37);
  }

  return v23;
}

uint64_t sub_1C6BDFD78(unint64_t *a1)
{
  v2 = *a1;
  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  v22 = off_1EDCE18E8;
  sub_1C6B1A3B4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  if (v2 >> 62)
  {
    sub_1C6D79E90();
  }

  v4 = sub_1C6D7A0E0();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1C6B2064C();
  *(v3 + 64) = v21;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1C6D79AC0();
  sub_1C6D78D30("Got back %{public}@ fetched tags", 32, 2, &dword_1C6B09000, v22, v7, v3);

  v23 = MEMORY[0x1E69E7CC0];
  v20 = v1;
  if (v2 >> 62)
  {
    result = sub_1C6D79E90();
    v9 = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_19:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1CCA56240](v10, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v10 + 32);
      swift_unknownObjectRetain();
    }

    if ([v14 asSports])
    {
      v15 = swift_unknownObjectRetain();
      MEMORY[0x1CCA55C20](v15);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C6D797C0();
      }

      sub_1C6D79800();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v11 = v23;
    }

    else
    {
      v12 = sub_1C6D79AA0();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C6D7E630;
      sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
      sub_1C6D79E60();
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = v21;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0xE000000000000000;
      sub_1C6D78D30("Tag fetched from sports taxonomy isn't a sports tag. %{public}@", 63, 2, &dword_1C6B09000, v22, v12, v13);

      swift_unknownObjectRelease();
    }

    ++v10;
  }

  while (v9 != v10);
LABEL_20:
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6D7E630;
  if (v11 >> 62)
  {
    sub_1C6D79E90();
  }

  v17 = sub_1C6D7A0E0();
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v19 = sub_1C6D79AC0();
  sub_1C6D78D30("Found %{public}@ sports providing tags", 38, 2, &dword_1C6B09000, v22, v19, v16);

  sub_1C6BE0294(0);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6BE0184()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1C6BE01C4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0F7A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C6BE0294(uint64_t a1)
{
  if (!qword_1EDCE5D60)
  {
    sub_1C6BE01C4(255, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding, MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D78360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5D60);
    }
  }
}

uint64_t sub_1C6BE0318(uint64_t a1)
{
  sub_1C6B1A3B4(0, &unk_1EDCDFC80, MEMORY[0x1E69B6540], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ComputeService<>.runningConfigurationData.getter()
{
  v21 = *MEMORY[0x1E69E9840];
  sub_1C6D78470();
  if (v18)
  {
    v0 = v20;
    sub_1C6B189DC(v17, v18, v19, v20);
    v1 = [v0 dictionary];

    sub_1C6D79490();
    v2 = objc_opt_self();
    v3 = sub_1C6D79480();

    v17 = 0;
    v4 = [v2 dataWithJSONObject:v3 options:0 error:&v17];

    v5 = v17;
    if (v4)
    {
      v6 = sub_1C6D75E60();

      return v6;
    }

    v10 = v5;
    v11 = sub_1C6D75CC0();

    swift_willThrow();
    if (qword_1EDCE66F8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDCE6700;
    v13 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C6D7E630;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v15 = v17;
    v16 = v18;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1C6B2064C();
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    sub_1C6D78D30("Failed to serialize tabi configuration dictionary into JSON. Error=%{public}@", 77, 2, &dword_1C6B09000, v12, v13, v14);
  }

  else
  {
    if (qword_1EDCE66F8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDCE6700;
    v9 = sub_1C6D79AA0();
    sub_1C6D78D30("Failed to get tabi configuration dictionary from work service", 61, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
  }

  return 0;
}

void sub_1C6BE070C()
{
  v1 = v0;
  sub_1C6B1ABB8(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D78EC0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B761BC();
  *v10 = sub_1C6D79B00();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v11 = sub_1C6D78ED0();
  v12 = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v1[17])
  {
    if (qword_1EDCE66F8 == -1)
    {
LABEL_4:
      v14 = qword_1EDCE6700;
      v15 = sub_1C6D79AA0();
      sub_1C6D78D30("Observed call to run when startup task already has run", 54, 2, &dword_1C6B09000, v14, v15, MEMORY[0x1E69E7CC0]);
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (v1[16] == 1 && v1[18] == 1)
  {
    v1[17] = 1;
    if (NPDeviceSupportsFeedPersonalization(v12, v13))
    {
      v16 = sub_1C6D79880();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v1;

      sub_1C6BE0BF8(0, 0, v5, &unk_1C6D830D8, v17);
    }

    else
    {
      v18 = objc_opt_self();
      aBlock[4] = sub_1C6BE1538;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C6B20B90;
      aBlock[3] = &block_descriptor_1;
      v19 = _Block_copy(aBlock);

      [v18 scheduleLowPriorityBlockForMainThread_];
      _Block_release(v19);
    }
  }
}

uint64_t sub_1C6BE0A5C()
{
  v3 = (*MEMORY[0x1E69960B8] + MEMORY[0x1E69960B8]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C6BE0B04;

  return v3();
}

uint64_t sub_1C6BE0B04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6BE0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B1ABB8(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE15F4(a3, v12);
  v13 = sub_1C6D79880();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C6B1AB5C(v12);
  }

  else
  {
    sub_1C6D79870();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C6D79840();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C6D79600() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1C6B1AB5C(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C6B1AB5C(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C6BE0EB0(uint64_t a1)
{
  sub_1C6B1ABB8(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D79880();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1C6BE0BF8(0, 0, v5, &unk_1C6D83100, v7);
}

uint64_t sub_1C6BE0FD4()
{
  v3 = (*MEMORY[0x1E69960B8] + MEMORY[0x1E69960B8]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C6BE1AAC;

  return v3();
}

uint64_t sub_1C6BE107C()
{

  return swift_deallocClassInstance();
}

void sub_1C6BE10B4()
{
  v1 = sub_1C6D78EC0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  sub_1C6B761BC();
  *v5 = sub_1C6D79B00();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = sub_1C6D78ED0();
  (*(v2 + 8))(v5, v1);
  if (v7)
  {
    *(v6 + 16) = 1;
    sub_1C6BE070C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C6BE11D8()
{
  v1 = sub_1C6D78EC0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  sub_1C6B761BC();
  *v5 = sub_1C6D79B00();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = sub_1C6D78ED0();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    *(v6 + 18) = 1;
    sub_1C6BE070C();
    sub_1C6B1AC10();
    swift_allocObject();
    return sub_1C6D78350();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ComputeService<>.containerDirectory.getter()
{
  v0 = sub_1C6D78550();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78490();
  sub_1C6D78540();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C6BE140C()
{
  v0 = sub_1C6D78550();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78490();
  sub_1C6D78540();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C6BE1540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BB6A40;

  return sub_1C6BE0A3C(a1, v4, v5, v6);
}

uint64_t sub_1C6BE15F4(uint64_t a1, uint64_t a2)
{
  sub_1C6B1ABB8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BE1658(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C6BE1750;

  return v6(a1);
}

uint64_t sub_1C6BE1750()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6BE1848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BE1AB0;

  return sub_1C6BE1658(a1, v4);
}

uint64_t sub_1C6BE1900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BB6A40;

  return sub_1C6BE1658(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6BE19F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BE1AB0;

  return sub_1C6BE0FB4(a1, v4, v5, v6);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(uint64_t a1)
{
  result = qword_1EDCE3158;
  if (!qword_1EDCE3158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6BE1D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6BE1ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6BE2574()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7730);
  __swift_project_value_buffer(v0, qword_1EC1D7730);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6BE2894(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6BE2894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6BE3340(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6BE29E4(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6BE29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6BE3340(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6BE3340(&qword_1EC1D7748, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BE2CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BE3340(&qword_1EC1D7760, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BE2D3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BE2DE4(uint64_t a1)
{
  v2 = sub_1C6BE3340(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BE2E50(uint64_t a1, uint64_t a2)
{
  sub_1C6BE3340(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B3FB88(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6B3E190(a1 + v18, v17);
  sub_1C6B3E190(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6BE3340(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v19], v8);
  v23 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6BE3340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id NewsPersonalizer.treatment.getter()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void NewsPersonalizer.treatment.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id NewsPersonalizer.init(context:configurationManager:)(void *a1, void *a2)
{
  v3 = v2;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1C6D76B80();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D79AF0();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D79AE0();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = sub_1C6D78E80();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  sub_1C6B0C69C(0, &qword_1EDCE7E80, 0x1E69B5448);
  sub_1C6B0C6E4();
  sub_1C6D77070();
  v45 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_queue;
  v15 = sub_1C6B0C69C(0, &qword_1EDCE7EB0, 0x1E69E9610);
  v44[0] = "SessionEventArticleUnliked";
  v44[1] = v15;
  sub_1C6D78E50();
  v56[0] = MEMORY[0x1E69E7CC0];
  sub_1C6BE3A54(&unk_1EDCE7EB8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v16 = MEMORY[0x1E69E8030];
  sub_1C6BE5014(0, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1C6BE3A9C(&qword_1EDCE7F28, &qword_1EDCE7F30, v16);
  sub_1C6D79CB0();
  (*(v47 + 104))(v46, *MEMORY[0x1E69E8090], v48);
  *&v2[v45] = sub_1C6D79B20();
  v17 = v49;
  *&v2[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_context] = v49;
  sub_1C6B16F28(a2, &v2[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_configurationManager]);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v49 = v17;
  v20(v55, v18, v19);
  v21 = v55[3];
  sub_1C6B11190(v55);
  *&v3[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment] = v21;
  v22 = v21;
  v23 = v50;
  sub_1C6B7DF50(v50);

  (*(v51 + 32))(&v3[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration], v23, v52);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  (*(v25 + 8))(v56, v24, v25);
  v26 = v57;
  if (v57)
  {
    v28 = v61;
    v27 = v62;
    v30 = v59;
    v29 = v60;
    v31 = v58;
    v32 = v57;
    v33 = v31;
    v34 = v30;
    v35 = v29;
    v36 = [v27 disableTrainingLegacyAggregates];
    sub_1C6B11190(v56);
    sub_1C6B16EC0(v26, v31, v30, v29, v28, v27);
  }

  else
  {
    sub_1C6B11190(v56);
    v36 = 0;
  }

  v3[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_disableTrainingLegacyAggregates] = v36;
  v54.receiver = v3;
  v54.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v54, sel_init);
  v38 = a2[3];
  v39 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v38);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v41 = *(v39 + 32);
  v42 = v37;
  v41(sub_1C6BE3E8C, v40, v38, v39);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v42;
}

uint64_t sub_1C6BE3A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6BE3A9C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6BE5014(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6BE3B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78E30();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D78E80();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v29[5] = v12;
  v30[0] = *(a1 + 96);
  *(v30 + 14) = *(a1 + 110);
  v13 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v13;
  v14 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v14;
  v23[1] = *(a2 + OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  *(v16 + 88) = *(a1 + 64);
  *(v16 + 104) = v17;
  *(v16 + 120) = *(a1 + 96);
  v18 = *(a1 + 16);
  *(v16 + 24) = *a1;
  *(v16 + 40) = v18;
  v19 = *(a1 + 48);
  *(v16 + 56) = *(a1 + 32);
  *(v16 + 16) = v15;
  *(v16 + 134) = *(a1 + 110);
  *(v16 + 72) = v19;
  v28[4] = sub_1C6BE5078;
  v28[5] = v16;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1C6B20B90;
  v28[3] = &block_descriptor_15;
  v20 = _Block_copy(v28);

  sub_1C6BE5084(v29, v27);
  sub_1C6D78E60();
  v27[0] = MEMORY[0x1E69E7CC0];
  sub_1C6BE3A54(qword_1EDCE7FD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1C6BE5014(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C6BE3A9C(&qword_1EDCE7F58, &qword_1EDCE7F60, v21);
  sub_1C6D79CB0();
  MEMORY[0x1CCA55FE0](0, v11, v7, v20);
  _Block_release(v20);
  (*(v26 + 8))(v7, v4);
  (*(v24 + 8))(v11, v25);
}

void sub_1C6BE3E94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6D76B80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(a2 + 24);
    v11 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_treatment;
    swift_beginAccess();
    v12 = *&v9[v11];
    *&v9[v11] = v10;
    v13 = v10;

    sub_1C6B7DF50(v7);
    v14 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration;
    swift_beginAccess();
    (*(v4 + 40))(&v9[v14], v7, v3);
    swift_endAccess();
    if (*(a2 + 32))
    {
      v15 = [*(a2 + 72) disableTrainingLegacyAggregates];
    }

    else
    {
      v15 = 0;
    }

    v9[OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_disableTrainingLegacyAggregates] = v15;
  }
}

uint64_t sub_1C6BE4020(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D78E30();
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v98 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1C6D78E80();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v7);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1C6D76820();
  v102 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1C6D76A40();
  v104 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v12);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D76B80();
  v103 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C6D76F90();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v26 = MEMORY[0x1EEE9AC00](v22, v23);
  v27 = (&v83 - v24);
  v105 = v2;
  if (*(v2 + OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_disableTrainingLegacyAggregates))
  {
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDCEA6A8;
    v29 = sub_1C6D79A90();
    sub_1C6BE5014(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C6D7E630;
    sub_1C6BE3A54(&unk_1EDCE6220, MEMORY[0x1E69E3698], MEMORY[0x1E69E36A0]);
    v31 = sub_1C6D7A0E0();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C6B2064C();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_1C6D78D30("Training legacy aggregates is disabled, ignoring action %{public}@", 66, 2, &dword_1C6B09000, v28, v29, v30);
  }

  v93 = v25;
  v35 = *(v20 + 16);
  v92 = v20 + 16;
  v91 = v35;
  (v35)(&v83 - v24, a1, v19, v26);
  v36 = (*(v20 + 88))(v27, v19) == *MEMORY[0x1E69E35F0];
  v90 = a1;
  if (!v36)
  {
    (*(v20 + 8))(v27, v19);
LABEL_13:
    v67 = v90;
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    v68 = qword_1EDCEA6A8;
    sub_1C6BE5014(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1C6D7E630;
    sub_1C6BE3A54(&unk_1EDCE6220, MEMORY[0x1E69E3698], MEMORY[0x1E69E36A0]);
    v70 = sub_1C6D7A0E0();
    v72 = v71;
    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = sub_1C6B2064C();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    v73 = sub_1C6D79AC0();
    sub_1C6D78D30("Training with Action: %@", 24, 2, &dword_1C6B09000, v68, v73, v69);

    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = v93;
    v91(v93, v67, v19);
    v76 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v74;
    (*(v20 + 32))(v77 + v76, v75, v19);
    v111 = sub_1C6BE4FB0;
    v112 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v109 = sub_1C6B20B90;
    v110 = &block_descriptor_2;
    v78 = _Block_copy(&aBlock);

    v79 = v96;
    sub_1C6D78E60();
    v106 = MEMORY[0x1E69E7CC0];
    sub_1C6BE3A54(qword_1EDCE7FD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v80 = MEMORY[0x1E69E7F60];
    sub_1C6BE5014(0, &qword_1EDCE7F60, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1C6BE3A9C(&qword_1EDCE7F58, &qword_1EDCE7F60, v80);
    v81 = v98;
    v82 = v101;
    sub_1C6D79CB0();
    MEMORY[0x1CCA55FE0](0, v79, v81, v78);
    _Block_release(v78);
    (*(v100 + 8))(v81, v82);
    (*(v97 + 8))(v79, v99);
  }

  (*(v20 + 96))(v27, v19);
  v37 = v27[6];
  __swift_destroy_boxed_opaque_existential_1(v27);
  v84 = v37;
  v38 = v37 / 1000.0;
  v39 = v18;
  v40 = v14;
  v41 = v15;
  v42 = v11;
  v43 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration;
  v44 = v105;
  swift_beginAccess();
  v45 = v103;
  v46 = *(v103 + 16);
  v89 = v43;
  v47 = v44 + v43;
  v48 = v42;
  v49 = v41;
  v50 = v40;
  v51 = v39;
  v88 = v103 + 16;
  v87 = v46;
  v46(v39, v47, v49);
  sub_1C6D76A60();
  v52 = *(v45 + 8);
  v103 = v45 + 8;
  v52(v51, v49);
  sub_1C6D769F0();
  v53 = *(v104 + 8);
  v104 += 8;
  v86 = v53;
  v53(v50, v95);
  sub_1C6D76810();
  v55 = v54;
  v56 = v102 + 8;
  v57 = v94;
  v85 = *(v102 + 8);
  v85(v48, v94);
  if (v38 >= v55)
  {
    goto LABEL_13;
  }

  v101 = v52;
  v102 = v56;
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  v100 = qword_1EDCEA6A8;
  sub_1C6BE5014(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C6D7EB10;
  aBlock = v84;
  v59 = sub_1C6D7A0E0();
  v61 = v60;
  v62 = MEMORY[0x1E69E6158];
  *(v58 + 56) = MEMORY[0x1E69E6158];
  v63 = sub_1C6B2064C();
  *(v58 + 64) = v63;
  *(v58 + 32) = v59;
  *(v58 + 40) = v61;
  aBlock = 0;
  v108 = 0xE000000000000000;
  v87(v51, v105 + v89, v49);
  sub_1C6D76A60();
  v101(v51, v49);
  sub_1C6D769F0();
  v86(v50, v95);
  sub_1C6D76810();
  v85(v48, v57);
  sub_1C6D79910();
  v64 = aBlock;
  v65 = v108;
  *(v58 + 96) = v62;
  *(v58 + 104) = v63;
  *(v58 + 72) = v64;
  *(v58 + 80) = v65;
  v66 = sub_1C6D79AC0();
  sub_1C6D78D30("Skipping article read action as duration %{public}@ doesn't satisfy requirement %{public}@", 90, 2, &dword_1C6B09000, v100, v66, v58);
}

void sub_1C6BE4C44(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D76B80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_context);
    v8 = v13;
    v9 = OBJC_IVAR____TtC19NewsPersonalization16NewsPersonalizer_classicConfiguration;
    v10 = Strong;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v10[v9], v2);
    sub_1C6B0C628(0);
    v11 = v8;
    sub_1C6D77060();

    (*(v3 + 8))(v6, v2);
  }
}

id NewsPersonalizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsPersonalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C6BE4FB0()
{
  v1 = *(sub_1C6D76F90() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1C6BE4C44(v2, v3);
}

void sub_1C6BE5014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6BE50E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_1C6D75F80();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D783E0();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*(a1 + 24) adSegmentsEndpoint];
  if (v19)
  {
    v27 = v19;
    v20 = [v19 adSegmentsOutputName];
    v26[1] = a2;
    v21 = v20;
    sub_1C6D795A0();
    v26[0] = v12;
    v28 = v2;

    sub_1C6D783C0();
    sub_1C6D78800();
    sub_1C6D75F70();
    sub_1C6D75F60();
    (*(v5 + 8))(v8, v29);
    sub_1C6B7A158(0);
    v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C6D7E630;
    (*(v14 + 16))(v23 + v22, v18, v13);
    sub_1C6B68E34(v23);
    swift_setDeallocating();
    v24 = *(v14 + 8);
    v24(v23 + v22, v13);
    swift_deallocClassInstance();
    sub_1C6D78790();

    return (v24)(v18, v13);
  }

  else
  {
    sub_1C6BE56E8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C6BE5418(uint64_t a1)
{
  v3 = sub_1C6D783E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D784F0();
  if (!v1)
  {
    v22 = v4;
    sub_1C6D78500();
    a1 = v20;
    v14 = v21;

    v15 = [v14 adSegmentsEndpoint];

    if (v15)
    {
      v19 = v10;
      v16 = [v15 adSegmentsOutputName];
      sub_1C6D795A0();

      sub_1C6D783C0();
      sub_1C6BB320C();
      a1 = sub_1C6D786C0();

      (*(v22 + 8))(v7, v3);
      (*(v19 + 8))(v13, v9);
    }

    else
    {
      sub_1C6BE56E8();
      swift_allocError();
      swift_willThrow();
      (*(v10 + 8))(v13, v9);
    }
  }

  return a1;
}

unint64_t sub_1C6BE56E8()
{
  result = qword_1EC1D7770;
  if (!qword_1EC1D7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7770);
  }

  return result;
}

unint64_t sub_1C6BE5750()
{
  result = qword_1EC1D7778;
  if (!qword_1EC1D7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7778);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(v1 + *(v7 + 20), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BE64B4(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(uint64_t a1)
{
  result = qword_1EDCE4340;
  if (!qword_1EDCE4340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BE59B0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(a1 + *(v8 + 20), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BE64B4(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6BE5B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 20);
  sub_1C6BE64B4(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 20);
  sub_1C6BE64B4(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleVisited.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6BE6434(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BE64B4(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6BE5FC0;
}

void sub_1C6BE5FC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6BE64B4(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6BE64B4(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleVisited.hasArticle.getter()
{
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(v0 + *(v5 + 20), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BE64B4(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleVisited.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 20);
  sub_1C6BE64B4(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BE64B4(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BE6434(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BE8774(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BE64B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BE8774(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BE6524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BE64B4(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BE66BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 24);
  sub_1C6BE64B4(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 24);
  sub_1C6BE64B4(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleVisited.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6BE6434(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BE64B4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BE6B28;
}

void sub_1C6BE6B28(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BE64B4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BE64B4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleVisited.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BE64B4(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleVisited.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0) + 24);
  sub_1C6BE64B4(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BE7030()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4370);
  __swift_project_value_buffer(v0, qword_1EDCE4370);
  sub_1C6BE8774(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4368 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BE734C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6BE7400(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6BE734C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6BE872C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BE7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6D78A00();
  sub_1C6BE872C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BE7524(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BE7748(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BE7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(a1 + *(v14 + 20), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BE64B4(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6BE872C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t sub_1C6BE7748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE6434(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BE64B4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BE872C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  sub_1C6BE872C(&qword_1EC1D7780, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BE7A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BE7B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BE872C(&qword_1EC1D7790, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BE7BAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4368 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BE7C54(uint64_t a1)
{
  v2 = sub_1C6BE872C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BE7CC0(uint64_t a1, uint64_t a2)
{
  sub_1C6BE872C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v53 = &v52 - v9;
  sub_1C6BE8658(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v52 - v20;
  sub_1C6BE8658(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6BE6434(v59 + v28, v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6BE6434(v30, &v26[v29], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BE6434(v26, v21, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6B483C8(&v26[v29], v17);
      v37 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v21, v17);
      sub_1C6B7F770(v17);
      sub_1C6B7F770(v21);
      sub_1C6BE64B4(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6B7F770(v21);
LABEL_6:
    v33 = &qword_1EC1D69F0;
    v34 = &qword_1EDCE52B0;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v36 = v26;
LABEL_14:
    sub_1C6BE86D0(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BE64B4(v26, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6BE6434(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6BE6434(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6BE64B4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BE872C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6BE6434(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6BE872C(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6BE64B4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6BE855C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6BE8774(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6BE8774(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6BE8658(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BE8774(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BE86D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BE8658(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BE872C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6BE8774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6BE87FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v43 = a2;
  v8 = sub_1C6D77E40();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C6D775A0();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE8C94(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6D77290();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  (*(v24 + 16))(&v38 - v23, a1, v20, v22);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_1C6D77270();
    v26 = sub_1C6D77330();
    v28 = v27;

    if (!v5)
    {
      sub_1C6BE8D28(&qword_1EC1D7798, MEMORY[0x1E69B4628], MEMORY[0x1E69B4630]);
      v29 = v44;
      sub_1C6D75AF0();
      v31 = v40;
      sub_1C6D77590();
      v32 = sub_1C6D77E30();
      v34 = v33;
      sub_1C6B1C9F0(v26, v28);
      (*(v41 + 8))(v31, v42);
      (*(v39 + 8))(v13, v29);
      *a5 = v32;
      a5[1] = v34;
      v35 = *MEMORY[0x1E69E3658];
      v36 = sub_1C6D76F90();
      v37 = *(v36 - 8);
      (*(v37 + 104))(a5, v35, v36);
      (*(v37 + 56))(a5, 0, 1, v36);
    }
  }

  else
  {
    v30 = sub_1C6D76F90();
    (*(*(v30 - 8) + 56))(a5, 1, 1, v30);
  }
}

void sub_1C6BE8C94(uint64_t a1)
{
  if (!qword_1EDCE6018)
  {
    sub_1C6D775B0();
    sub_1C6BE8D28(&qword_1EDCE5F98, MEMORY[0x1E69B4638], MEMORY[0x1E69B4620]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6018);
    }
  }
}

uint64_t sub_1C6BE8D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(uint64_t a1)
{
  result = qword_1EDCE3318;
  if (!qword_1EDCE3318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  sub_1C6D78A40();
  sub_1C6BE97E8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6BE902C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D77A0);
  __swift_project_value_buffer(v0, qword_1EC1D77A0);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "tag_id";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D77A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  sub_1C6BE97E8(&qword_1EC1D77B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BE93F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BE97E8(&unk_1EC1D77D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BE946C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D77A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BE9514(uint64_t a1)
{
  v2 = sub_1C6BE97E8(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BE9580(uint64_t a1, uint64_t a2)
{
  sub_1C6BE97E8(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6BE971C(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6BE97E8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6BE97E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GroupingServiceType.bestOf(scoredItems:context:allowClusteringFallback:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v9 = MEMORY[0x1E69B5D80];
  sub_1C6BE9A78(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27[-v12];
  v14 = MEMORY[0x1E69B5CF0];
  sub_1C6BE9A78(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v27[-v17];
  v19 = sub_1C6D791E0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = sub_1C6D792C0();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v21 = (*(a5 + 8))(a1, a2, v28, 0, 1, 0, 1, v18, 0, v23, 0, v24, 0, v25, 0, v13, 0, v26, a4, a5);
  sub_1C6BE9ACC(v13, &unk_1EDCDFCA0, v9);
  sub_1C6BE9ACC(v18, &qword_1EDCDFCB0, v14);
  return v21;
}

void sub_1C6BE9A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6BE9ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BE9A78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.recipe.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BEA244(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BEA29C(v2, v28, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v50;
      sub_1C6BEA304(v28, v50, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      v20 = v51;
      sub_1C6BEA29C(v30 + *(v3 + 20), v51, sub_1C6BEA244);
      v31 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      v34 = v33(v20, 1, v31);
      v35 = v52;
      if (v34 == 1)
      {
        *v52 = 0;
        *(v35 + 8) = 0xE000000000000000;
        sub_1C6D78A30();
        v36 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
        v37 = v30;
        goto LABEL_10;
      }

      v45 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved;
      v46 = v30;
    }

    else
    {
      sub_1C6BEA304(v28, v24, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      sub_1C6BEA29C(&v24[*(v21 + 20)], v20, sub_1C6BEA244);
      v31 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      v42 = v33(v20, 1, v31);
      v35 = v52;
      if (v42 == 1)
      {
        *v52 = 0;
        *(v35 + 8) = 0xE000000000000000;
        sub_1C6D78A30();
        v36 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
        v37 = v24;
LABEL_10:
        sub_1C6BEA4A0(v37, v36);
        v43 = *(v31 + 24);
        v44 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
        (*(*(v44 - 8) + 56))(v35 + v43, 1, 1, v44);
        if (v33(v20, 1, v31) != 1)
        {
          v41 = v20;
          goto LABEL_12;
        }

        return (*(v32 + 56))(v35, 0, 1, v31);
      }

      v45 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed;
      v46 = v24;
    }

    sub_1C6BEA4A0(v46, v45);
    v47 = v20;
LABEL_17:
    sub_1C6BEA304(v47, v35, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    return (*(v32 + 56))(v35, 0, 1, v31);
  }

  sub_1C6BEA304(v28, v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6BEA29C(&v9[*(v6 + 20)], v16, sub_1C6BEA244);
  v31 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v32 = *(v31 - 8);
  v38 = *(v32 + 48);
  if (v38(v16, 1, v31) != 1)
  {
    sub_1C6BEA4A0(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    v47 = v16;
    v35 = v52;
    goto LABEL_17;
  }

  v35 = v52;
  *v52 = 0;
  *(v35 + 8) = 0xE000000000000000;
  sub_1C6D78A30();
  sub_1C6BEA4A0(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v39 = *(v31 + 24);
  v40 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v40 - 8) + 56))(v35 + v39, 1, 1, v40);
  if (v38(v16, 1, v31) != 1)
  {
    v41 = v16;
LABEL_12:
    sub_1C6BEA4A0(v41, sub_1C6BEA244);
  }

  return (*(v32 + 56))(v35, 0, 1, v31);
}

void sub_1C6BEA244(uint64_t a1)
{
  if (!qword_1EDCE5428[0])
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(255);
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, qword_1EDCE5428);
    }
  }
}

uint64_t sub_1C6BEA29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BEA304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.string.getter()
{
  v1 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BEA29C(v0, v4, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x6956657069636572;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = 0x6153657069636572;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x65646F4D6B6F6F63;
  }

  sub_1C6BEA4A0(v4, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  return v7;
}

uint64_t sub_1C6BEA4A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6BEA500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a4;
  v7[6] = a6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(a3 + 16);
  v7[7] = v6;
  v7[8] = v8;
  v7[9] = *(a3 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1C6BEA534, 0, 0);
}

uint64_t sub_1C6BEA534(uint64_t a1)
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v2 = v1[9];
  v3 = qword_1EDCE23C0;
  v1[10] = qword_1EDCE23C0;
  v4 = sub_1C6D79AC0();
  v5 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("AutoFavoritesService generating external signal results", 55, 2, &dword_1C6B09000, v3, v4, MEMORY[0x1E69E7CC0]);
  if (v2 > 0 || (sub_1C6D77FA0(), (sub_1C6D77F90() & 1) != 0))
  {
    v7 = v1[7];
    v6 = v1[8];
    v8 = *(v7 + 40);
    v9 = *(v7 + 48);
    __swift_project_boxed_opaque_existential_1((v7 + 16), v8);
    v10 = [*(v7 + 56) bundleIDMapping];
    v11 = [*(v7 + 64) urlMapping];
    v1[11] = (*(v9 + 16))(v6, v10, v11, v8, v9);

    v12 = swift_task_alloc();
    v1[12] = v12;
    *v12 = v1;
    v12[1] = sub_1C6BEA7B4;

    return MEMORY[0x1EEE44EE0](v1 + 2);
  }

  else
  {
    v13 = v1[9];
    sub_1C6B1D314(0);
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E6530];
    *(v14 + 16) = xmmword_1C6D7E630;
    v16 = MEMORY[0x1E69E65A8];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    sub_1C6D79AC0();
    sub_1C6D78D30("AutoFavoritesService skipping generating external signal with minExternalRecommendations %lu", v21);

    v18 = v1[3];
    v17 = v1[4];
    *v18 = v5;
    v18[1] = v5;
    *v17 = v5;
    v17[1] = v5;
    v19 = v1[1];

    return v19();
  }
}

uint64_t sub_1C6BEA7B4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1C6BEB618;
  }

  else
  {

    v2 = sub_1C6BEA8D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6BEA8D0()
{
  v1 = v0[2];
  sub_1C6B1D314(0);
  v154 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = MEMORY[0x1E69E6530];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  sub_1C6D79AC0();
  sub_1C6D78D30("AutoFavoritesService got back %lu external signal recommendations", v151);

  v157 = v0;
  v162 = *(v1 + 16);
  if (v162)
  {
    v7 = 0;
    v8 = v0[6];
    v155 = v0[5];
    v160 = v1 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = v8 + 56;
    v11 = MEMORY[0x1E69E7CC0];
    v158 = v1;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v170 = v11;
      v13 = (v160 + 32 * v7);
      v14 = *v13;
      v16 = *(v13 + 1);
      v15 = *(v13 + 2);
      v17 = *(v13 + 6);
      if (*(v8 + 16))
      {
        sub_1C6D7A260();
        swift_bridgeObjectRetain_n();
        sub_1C6D79610();
        v18 = sub_1C6D7A2B0();
        v19 = -1 << *(v8 + 32);
        v20 = v18 & ~v19;
        if ((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(v8 + 48) + 16 * v20);
            v23 = *v22 == v16 && v22[1] == v15;
            if (v23 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1C6B66228(0, v9[2] + 1, 1, v9);
            v9 = result;
          }

          v1 = v158;
          v30 = v9[2];
          v29 = v9[3];
          v11 = v170;
          if (v30 >= v29 >> 1)
          {
            result = sub_1C6B66228((v29 > 1), v30 + 1, 1, v9);
            v11 = v170;
            v9 = result;
          }

          v9[2] = v30 + 1;
          v12 = &v9[6 * v30];
          *(v12 + 32) = v14;
          v12[5] = v16;
          v12[6] = v15;
          *(v12 + 14) = v17;
          v12[8] = 0;
          goto LABEL_4;
        }

LABEL_16:
        v165 = v14;
        v24 = v9;
      }

      else
      {
        v165 = *v13;
        v24 = v9;
      }

      v25 = *(v155 + 24);
      v26 = *(v155 + 32);
      __swift_project_boxed_opaque_existential_1(v157[5], v25);

      v27 = sub_1C6CDE8A8(v16, v15, v25, v26);

      if (v27 <= 1u)
      {
        v9 = v24;
        if (v27)
        {
          v28 = 8;
        }

        else
        {
          v28 = 1;
        }

        goto LABEL_28;
      }

      v9 = v24;
      if (v27 == 2)
      {
        v28 = 5;
LABEL_28:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C6B66228(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v32 = v9[2];
        v31 = v9[3];
        v11 = v170;
        if (v32 >= v31 >> 1)
        {
          result = sub_1C6B66228((v31 > 1), v32 + 1, 1, v9);
          v11 = v170;
          v9 = result;
        }

        v9[2] = v32 + 1;
        v33 = &v9[6 * v32];
        *(v33 + 32) = v165;
        v33[5] = v16;
        v33[6] = v15;
        *(v33 + 14) = v17;
        v33[8] = v28;
        *(v33 + 72) = 1;
        v1 = v158;
        goto LABEL_5;
      }

      v1 = v158;
      v34 = *(v170 + 16);
      if (v34 < v157[9])
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v11 = v170;
        }

        else
        {
          result = sub_1C6B66118(0, v34 + 1, 1, v170);
          v11 = result;
        }

        v36 = *(v11 + 16);
        v35 = *(v11 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_1C6B66118((v35 > 1), v36 + 1, 1, v11);
          v11 = result;
        }

        *(v11 + 16) = v36 + 1;
        v37 = v11 + 32 * v36;
        *(v37 + 32) = v165;
        *(v37 + 40) = v16;
        *(v37 + 48) = v15;
        *(v37 + 56) = v17;
        goto LABEL_5;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B66228(0, v24[2] + 1, 1, v24);
        v9 = result;
      }

      v39 = v9[2];
      v38 = v9[3];
      v11 = v170;
      if (v39 >= v38 >> 1)
      {
        result = sub_1C6B66228((v38 > 1), v39 + 1, 1, v9);
        v11 = v170;
        v9 = result;
      }

      v9[2] = v39 + 1;
      v12 = &v9[6 * v39];
      *(v12 + 32) = v165;
      v12[5] = v16;
      v12[6] = v15;
      *(v12 + 14) = v17;
      v12[8] = 7;
LABEL_4:
      *(v12 + 72) = 1;
LABEL_5:
      if (++v7 == v162)
      {
        v40 = v11;

        v41 = v40;
        goto LABEL_47;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v171 = v41;
  v42 = 0;
  v43 = v9[2];
  v44 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v45 = 6 * v42;
  while (v43 != v42)
  {
    if (v42 >= v9[2])
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v46 = v45 * 8 + 48;
    ++v42;
    v47 = v9[v45 + 4];
    v45 += 6;
    if ((v47 & 1) == 0)
    {
      v49 = *(v9 + v46 - 8);
      v48 = *(v9 + v46);
      v50 = *(v9 + v46 + 8);
      v51 = *(v9 + v46 + 16);
      v52 = *(v9 + v46 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B39574(0, *(v44 + 16) + 1, 1);
      }

      v54 = *(v44 + 16);
      v53 = *(v44 + 24);
      if (v54 >= v53 >> 1)
      {
        result = sub_1C6B39574((v53 > 1), v54 + 1, 1);
      }

      *(v44 + 16) = v54 + 1;
      v55 = v44 + 48 * v54;
      *(v55 + 32) = 0;
      *(v55 + 40) = v49;
      *(v55 + 48) = v48;
      *(v55 + 56) = v50;
      *(v55 + 64) = v51;
      *(v55 + 72) = v52;
      goto LABEL_48;
    }
  }

  v56 = *(v44 + 16);
  v159 = v9;
  v156 = v43;
  if (v56)
  {
    v163 = v44;
    v172 = MEMORY[0x1E69E7CC0];
    sub_1C6B39554(0, v56, 0);
    v57 = 0;
    v58 = *(v172 + 16);
    v59 = 40 * v58 + 64;
    do
    {
      v60 = *(v163 + v57 + 40);
      v61 = *(v163 + v57 + 48);
      v62 = *(v163 + v57 + 56);
      v63 = *(v163 + v57 + 64);
      v166 = *(v163 + v57 + 72);
      v64 = v58 + 1;
      v65 = *(v172 + 24);

      if (v58 >= v65 >> 1)
      {
        sub_1C6B39554((v65 > 1), v64, 1);
      }

      *(v172 + 16) = v64;
      v66 = (v172 + v59);
      *(v66 - 4) = v60;
      *(v66 - 3) = v61;
      *(v66 - 4) = v62;
      v59 += 40;
      *(v66 - 1) = v63;
      v57 += 48;
      ++v58;
      *v66 = v166;
      --v56;
    }

    while (v56);
    v153 = v172;

    v9 = v159;
    v43 = v156;
  }

  else
  {

    v153 = MEMORY[0x1E69E7CC0];
  }

  v67 = 0;
  v68 = v171;
  v69 = *(v171 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  v161 = v69;
LABEL_65:
  v72 = 32 * v67;
  while (v69 != v67)
  {
    if (v67 >= *(v68 + 16))
    {
      goto LABEL_122;
    }

    v73 = v72 + 32;
    ++v67;
    v74 = *(v68 + v72 + 32);
    v72 += 32;
    if ((v74 & 1) == 0)
    {
      v76 = *(v68 + v73 + 8);
      v75 = *(v68 + v73 + 16);
      v77 = *(v68 + v73 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B39534(0, *(v71 + 16) + 1, 1);
        v69 = v161;
      }

      v79 = *(v71 + 16);
      v78 = *(v71 + 24);
      v68 = v171;
      if (v79 >= v78 >> 1)
      {
        result = sub_1C6B39534((v78 > 1), v79 + 1, 1);
        v69 = v161;
        v68 = v171;
      }

      *(v71 + 16) = v79 + 1;
      v80 = v71 + 32 * v79;
      *(v80 + 32) = 0;
      *(v80 + 40) = v76;
      *(v80 + 48) = v75;
      *(v80 + 56) = v77;
      goto LABEL_65;
    }
  }

  v81 = *(v71 + 16);
  if (v81)
  {
    result = sub_1C6B39514(0, v81, 0);
    v82 = 0;
    v83 = v70;
    v84 = (v71 + 56);
    while (v82 < *(v71 + 16))
    {
      v85 = *(v84 - 2);
      v86 = *(v84 - 1);
      v87 = *v84;
      v89 = *(v83 + 16);
      v88 = *(v83 + 24);

      if (v89 >= v88 >> 1)
      {
        result = sub_1C6B39514((v88 > 1), v89 + 1, 1);
      }

      ++v82;
      *(v83 + 16) = v89 + 1;
      v90 = v83 + 24 * v89;
      *(v90 + 32) = v85;
      *(v90 + 40) = v86;
      *(v90 + 48) = v87;
      v84 += 8;
      if (v81 == v82)
      {
        v152 = v83;

        v9 = v159;
        v69 = v161;
        v43 = v156;
        goto LABEL_82;
      }
    }

    goto LABEL_126;
  }

  v152 = MEMORY[0x1E69E7CC0];
LABEL_82:
  v91 = 0;
  v92 = MEMORY[0x1E69E7CC0];
LABEL_83:
  v93 = 6 * v91;
  while (v43 != v91)
  {
    if (v91 >= v9[2])
    {
      goto LABEL_123;
    }

    v94 = v93 * 8 + 48;
    ++v91;
    v95 = v9[v93 + 4];
    v93 += 6;
    if (v95)
    {
      v96 = *(v9 + v94 - 8);
      v97 = *(v9 + v94);
      v98 = *(v9 + v94 + 8);
      v99 = *(v9 + v94 + 16);
      v100 = *(v9 + v94 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      v167 = v99;
      if ((result & 1) == 0)
      {
        result = sub_1C6B39574(0, *(v92 + 16) + 1, 1);
        v69 = v161;
      }

      v102 = *(v92 + 16);
      v101 = *(v92 + 24);
      if (v102 >= v101 >> 1)
      {
        result = sub_1C6B39574((v101 > 1), v102 + 1, 1);
        v69 = v161;
      }

      *(v92 + 16) = v102 + 1;
      v103 = v92 + 48 * v102;
      *(v103 + 32) = 1;
      *(v103 + 40) = v96;
      *(v103 + 48) = v97;
      *(v103 + 56) = v98;
      *(v103 + 64) = v167;
      *(v103 + 72) = v100;
      goto LABEL_83;
    }
  }

  v104 = *(v92 + 16);
  if (v104)
  {
    v173 = MEMORY[0x1E69E7CC0];
    sub_1C6B39554(0, v104, 0);
    v105 = 0;
    v106 = v173;
    v107 = *(v173 + 16);
    v108 = 40 * v107 + 64;
    v164 = v92;
    do
    {
      v109 = *(v92 + v105 + 40);
      v110 = *(v92 + v105 + 48);
      v111 = *(v92 + v105 + 56);
      v112 = *(v92 + v105 + 64);
      v168 = *(v92 + v105 + 72);
      v174 = v106;
      v113 = v107 + 1;
      v114 = *(v106 + 24);
      v115 = v106;

      v106 = v115;
      if (v107 >= v114 >> 1)
      {
        sub_1C6B39554((v114 > 1), v113, 1);
        v106 = v174;
      }

      *(v106 + 16) = v113;
      v116 = (v106 + v108);
      *(v116 - 4) = v109;
      *(v116 - 3) = v110;
      *(v116 - 4) = v111;
      v108 += 40;
      *(v116 - 1) = v112;
      v105 += 48;
      ++v107;
      *v116 = v168;
      --v104;
      v92 = v164;
    }

    while (v104);
    v169 = v106;

    v69 = v161;
  }

  else
  {

    v169 = MEMORY[0x1E69E7CC0];
  }

  v117 = 0;
  v118 = MEMORY[0x1E69E7CC0];
  v119 = MEMORY[0x1E69E7CC0];
  v120 = v171;
LABEL_100:
  v121 = 32 * v117;
  while (v69 != v117)
  {
    if (v117 >= *(v120 + 16))
    {
      goto LABEL_124;
    }

    v122 = v121 + 32;
    ++v117;
    v123 = *(v120 + v121 + 32);
    v121 += 32;
    if (v123)
    {
      v124 = *(v120 + v122 + 8);
      v125 = *(v120 + v122 + 16);
      v126 = *(v120 + v122 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B39534(0, *(v119 + 16) + 1, 1);
        v69 = v161;
      }

      v128 = *(v119 + 16);
      v127 = *(v119 + 24);
      v120 = v171;
      if (v128 >= v127 >> 1)
      {
        result = sub_1C6B39534((v127 > 1), v128 + 1, 1);
        v69 = v161;
        v120 = v171;
      }

      *(v119 + 16) = v128 + 1;
      v129 = v119 + 32 * v128;
      *(v129 + 32) = 1;
      *(v129 + 40) = v124;
      *(v129 + 48) = v125;
      *(v129 + 56) = v126;
      goto LABEL_100;
    }
  }

  v130 = *(v119 + 16);
  if (v130)
  {
    v175 = v118;
    result = sub_1C6B39514(0, v130, 0);
    v131 = 0;
    v132 = v175;
    v133 = (v119 + 56);
    while (v131 < *(v119 + 16))
    {
      v134 = *(v133 - 2);
      v135 = *(v133 - 1);
      v136 = *v133;
      v138 = *(v175 + 16);
      v137 = *(v175 + 24);

      if (v138 >= v137 >> 1)
      {
        result = sub_1C6B39514((v137 > 1), v138 + 1, 1);
      }

      ++v131;
      *(v175 + 16) = v138 + 1;
      v139 = v175 + 24 * v138;
      *(v139 + 32) = v134;
      *(v139 + 40) = v135;
      *(v139 + 48) = v136;
      v133 += 8;
      if (v130 == v131)
      {

        goto LABEL_117;
      }
    }

    goto LABEL_127;
  }

  v132 = MEMORY[0x1E69E7CC0];
LABEL_117:
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6D7F520;
  v140 = v152;
  v141 = *(v152 + 16);
  v142 = *(v132 + 16);
  if (!__OFADD__(v141, v142))
  {
    v143 = MEMORY[0x1E69E6530];
    *(result + 56) = MEMORY[0x1E69E6530];
    v144 = MEMORY[0x1E69E65A8];
    *(result + 64) = MEMORY[0x1E69E65A8];
    *(result + 72) = v141;
    *(result + 32) = v141 + v142;
    *(result + 96) = v143;
    *(result + 104) = v144;
    *(result + 136) = v143;
    *(result + 144) = v144;
    *(result + 112) = v142;
    v145 = v153;
    v146 = *(v153 + 16);
    *(result + 176) = v143;
    *(result + 184) = v144;
    *(result + 152) = v146;
    v147 = *(v169 + 16);
    *(result + 216) = v143;
    *(result + 224) = v144;
    *(result + 192) = v147;
    sub_1C6D79AC0();
    sub_1C6D78D30("AutoFavoritesService selected %lu external signal recommendations, %lu from web signals %lu from app signals and rejected %lu from app signals and %lu from web signals", 64, v152, v153, v154, v156);

    v149 = v157[3];
    v148 = v157[4];
    *v149 = v145;
    v149[1] = v140;
    *v148 = v169;
    v148[1] = v132;
    v150 = v157[1];

    return v150();
  }

LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C6BEB618()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6BEB67C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter@<X0>(char *a1@<X8>)
{
  v193 = a1;
  v187 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  MEMORY[0x1EEE9AC00](v187, v1);
  v191 = &v157 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
  MEMORY[0x1EEE9AC00](v185, v3);
  v190 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
  MEMORY[0x1EEE9AC00](v183, v5);
  v189 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  MEMORY[0x1EEE9AC00](v181, v7);
  v188 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
  MEMORY[0x1EEE9AC00](v179, v9);
  v186 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
  MEMORY[0x1EEE9AC00](v177, v11);
  v184 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  MEMORY[0x1EEE9AC00](v175, v13);
  v182 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
  MEMORY[0x1EEE9AC00](v173, v15);
  v180 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  MEMORY[0x1EEE9AC00](v171, v17);
  v178 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
  MEMORY[0x1EEE9AC00](v167, v19);
  v176 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
  MEMORY[0x1EEE9AC00](v163, v21);
  v174 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v160, v23);
  v172 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
  MEMORY[0x1EEE9AC00](v158, v25);
  v169 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BED644(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v170 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v168 = &v157 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v166 = &v157 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v165 = &v157 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v164 = &v157 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v162 = &v157 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v161 = &v157 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v159 = &v157 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v157 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v157 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v157 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v157 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v157 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v157 - v73;
  v75 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v157 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v79, v80);
  v82 = &v157 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BED69C(v192, v82, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v123 = v169;
      sub_1C6BED704(v82, v169, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      sub_1C6BED69C(v123 + *(v158 + 20), v70, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v124 = *(v96 + 48);
      v125 = v124(v70, 1, v95);
      v99 = v193;
      if (v125 != 1)
      {
        sub_1C6BED76C(v123, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        v156 = v70;
        goto LABEL_58;
      }

      *v193 = 0;
      *(v99 + 8) = 0xE000000000000000;
      v126 = *(v95 + 20);
      v127 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v127 - 8) + 56))(v99 + v126, 1, 1, v127);
      sub_1C6D78A30();
      sub_1C6BED76C(v123, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      if (v124(v70, 1, v95) != 1)
      {
        sub_1C6BED76C(v70, sub_1C6BED644);
      }

      return (*(v96 + 56))(v99, 0, 1, v95);
    case 2u:
      v103 = v172;
      sub_1C6BED704(v82, v172, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      sub_1C6BED69C(v103 + *(v160 + 24), v66, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v104 = *(v96 + 48);
      v105 = v104(v66, 1, v95);
      v99 = v193;
      if (v105 != 1)
      {
        sub_1C6BED76C(v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        v156 = v66;
        goto LABEL_58;
      }

      *v193 = 0;
      *(v99 + 8) = 0xE000000000000000;
      v106 = *(v95 + 20);
      v107 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v107 - 8) + 56))(v99 + v106, 1, 1, v107);
      sub_1C6D78A30();
      sub_1C6BED76C(v103, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      if (v104(v66, 1, v95) != 1)
      {
        sub_1C6BED76C(v66, sub_1C6BED644);
      }

      return (*(v96 + 56))(v99, 0, 1, v95);
    case 3u:
      v108 = v174;
      sub_1C6BED704(v82, v174, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      sub_1C6BED69C(v108 + *(v163 + 24), v62, sub_1C6BED644);
      v109 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v110 = *(v109 - 8);
      v111 = *(v110 + 48);
      v112 = v111(v62, 1, v109);
      v113 = v193;
      if (v112 == 1)
      {
        *v193 = 0;
        *(v113 + 8) = 0xE000000000000000;
        v114 = *(v109 + 20);
        v115 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v115 - 8) + 56))(v113 + v114, 1, 1, v115);
        sub_1C6D78A30();
        sub_1C6BED76C(v108, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        if (v111(v62, 1, v109) != 1)
        {
          sub_1C6BED76C(v62, sub_1C6BED644);
        }
      }

      else
      {
        sub_1C6BED76C(v108, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        sub_1C6BED704(v62, v113, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v110 + 56))(v113, 0, 1, v109);
    case 4u:
      v85 = v176;
      sub_1C6BED704(v82, v176, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      sub_1C6BED69C(v85 + *(v167 + 20), v58, sub_1C6BED644);
      v86 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v87 = *(v86 - 8);
      v88 = *(v87 + 48);
      v89 = v88(v58, 1, v86);
      v90 = v193;
      if (v89 != 1)
      {
        sub_1C6BED76C(v85, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
        v154 = v58;
        goto LABEL_48;
      }

      *v193 = 0;
      *(v90 + 8) = 0xE000000000000000;
      v91 = *(v86 + 20);
      v92 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v92 - 8) + 56))(v90 + v91, 1, 1, v92);
      sub_1C6D78A30();
      sub_1C6BED76C(v85, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      if (v88(v58, 1, v86) != 1)
      {
        sub_1C6BED76C(v58, sub_1C6BED644);
      }

      return (*(v87 + 56))(v90, 0, 1, v86);
    case 5u:
      v93 = v180;
      sub_1C6BED704(v82, v180, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v94 = v159;
      sub_1C6BED69C(v93 + *(v173 + 20), v159, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v133 = v97(v94, 1, v95);
      v99 = v193;
      if (v133 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v134 = *(v95 + 20);
        v135 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v135 - 8) + 56))(v99 + v134, 1, 1, v135);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
        goto LABEL_37;
      }

      v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
      goto LABEL_57;
    case 6u:
      v93 = v184;
      sub_1C6BED704(v82, v184, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v94 = v162;
      sub_1C6BED69C(v93 + *(v177 + 20), v162, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v139 = v97(v94, 1, v95);
      v99 = v193;
      if (v139 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v140 = *(v95 + 20);
        v141 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v141 - 8) + 56))(v99 + v140, 1, 1, v141);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
        goto LABEL_37;
      }

      v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
      goto LABEL_57;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0x12u:
    case 0x13u:
      sub_1C6BED76C(v82, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v83 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      return (*(*(v83 - 8) + 56))(v193, 1, 1, v83);
    case 0xCu:
      v93 = v189;
      sub_1C6BED704(v82, v189, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v94 = v166;
      sub_1C6BED69C(v93 + *(v183 + 20), v166, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v145 = v97(v94, 1, v95);
      v99 = v193;
      if (v145 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v146 = *(v95 + 20);
        v147 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v147 - 8) + 56))(v99 + v146, 1, 1, v147);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
        goto LABEL_37;
      }

      v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
      goto LABEL_57;
    case 0xDu:
      v93 = v190;
      sub_1C6BED704(v82, v190, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v94 = v168;
      sub_1C6BED69C(v93 + *(v185 + 20), v168, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v98 = v97(v94, 1, v95);
      v99 = v193;
      if (v98 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v100 = *(v95 + 20);
        v101 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v101 - 8) + 56))(v99 + v100, 1, 1, v101);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
        goto LABEL_37;
      }

      v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
      goto LABEL_57;
    case 0xEu:
      v93 = v191;
      sub_1C6BED704(v82, v191, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v94 = v170;
      sub_1C6BED69C(v93 + *(v187 + 20), v170, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v151 = v97(v94, 1, v95);
      v99 = v193;
      if (v151 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v152 = *(v95 + 20);
        v153 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v153 - 8) + 56))(v99 + v152, 1, 1, v153);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
        goto LABEL_37;
      }

      v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
      goto LABEL_57;
    case 0xFu:
      v128 = v178;
      sub_1C6BED704(v82, v178, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      sub_1C6BED69C(v128 + *(v171 + 20), v54, sub_1C6BED644);
      v86 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v87 = *(v86 - 8);
      v129 = *(v87 + 48);
      v130 = v129(v54, 1, v86);
      v90 = v193;
      if (v130 == 1)
      {
        *v193 = 0;
        *(v90 + 8) = 0xE000000000000000;
        v131 = *(v86 + 20);
        v132 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v132 - 8) + 56))(v90 + v131, 1, 1, v132);
        sub_1C6D78A30();
        sub_1C6BED76C(v128, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
        if (v129(v54, 1, v86) != 1)
        {
          sub_1C6BED76C(v54, sub_1C6BED644);
        }
      }

      else
      {
        sub_1C6BED76C(v128, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
        v154 = v54;
LABEL_48:
        sub_1C6BED704(v154, v90, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v87 + 56))(v90, 0, 1, v86);
    case 0x10u:
      v93 = v182;
      sub_1C6BED704(v82, v182, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v94 = v161;
      sub_1C6BED69C(v93 + *(v175 + 20), v161, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v142 = v97(v94, 1, v95);
      v99 = v193;
      if (v142 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v143 = *(v95 + 20);
        v144 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v144 - 8) + 56))(v99 + v143, 1, 1, v144);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
        goto LABEL_37;
      }

      v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
      goto LABEL_57;
    case 0x11u:
      v93 = v186;
      sub_1C6BED704(v82, v186, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v94 = v164;
      sub_1C6BED69C(v93 + *(v179 + 20), v164, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v148 = v97(v94, 1, v95);
      v99 = v193;
      if (v148 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v149 = *(v95 + 20);
        v150 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v150 - 8) + 56))(v99 + v149, 1, 1, v150);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
        goto LABEL_37;
      }

      v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
      goto LABEL_57;
    case 0x14u:
      v93 = v188;
      sub_1C6BED704(v82, v188, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v94 = v165;
      sub_1C6BED69C(v93 + *(v181 + 24), v165, sub_1C6BED644);
      v95 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v96 = *(v95 - 8);
      v97 = *(v96 + 48);
      v136 = v97(v94, 1, v95);
      v99 = v193;
      if (v136 == 1)
      {
        *v193 = 0;
        *(v99 + 8) = 0xE000000000000000;
        v137 = *(v95 + 20);
        v138 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v138 - 8) + 56))(v99 + v137, 1, 1, v138);
        sub_1C6D78A30();
        v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_37:
        sub_1C6BED76C(v93, v102);
        if (v97(v94, 1, v95) != 1)
        {
          sub_1C6BED76C(v94, sub_1C6BED644);
        }
      }

      else
      {
        v155 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_57:
        sub_1C6BED76C(v93, v155);
        v156 = v94;
LABEL_58:
        sub_1C6BED704(v156, v99, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v96 + 56))(v99, 0, 1, v95);
    default:
      sub_1C6BED704(v82, v78, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      sub_1C6BED69C(&v78[*(v75 + 20)], v74, sub_1C6BED644);
      v116 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v117 = *(v116 - 8);
      v118 = *(v117 + 48);
      v119 = v118(v74, 1, v116);
      v120 = v193;
      if (v119 == 1)
      {
        *v193 = 0;
        *(v120 + 8) = 0xE000000000000000;
        v121 = *(v116 + 20);
        v122 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
        (*(*(v122 - 8) + 56))(v120 + v121, 1, 1, v122);
        sub_1C6D78A30();
        sub_1C6BED76C(v78, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        if (v118(v74, 1, v116) != 1)
        {
          sub_1C6BED76C(v74, sub_1C6BED644);
        }
      }

      else
      {
        sub_1C6BED76C(v78, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6BED704(v74, v120, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }

      return (*(v117 + 56))(v120, 0, 1, v116);
  }
}

unint64_t Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter()
{
  v1 = v0;
  v2 = 0x53656C6369747261;
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BED69C(v1, v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v2 = 0x56656C6369747261;
      break;
    case 2u:
      v2 = 0x52656C6369747261;
      break;
    case 4u:
      v2 = 0x4C656C6369747261;
      break;
    case 5u:
      v2 = 0x44656C6369747261;
      break;
    case 7u:
      v2 = 0x646574754D676174;
      break;
    case 8u:
      v2 = 0x74756D6E55676174;
      break;
    case 9u:
      v2 = 0x6F6C6C6F46676174;
      break;
    case 0xAu:
      v2 = 0x6C6F666E55676174;
      break;
    case 0xBu:
      v2 = 0x5664656546676174;
      break;
    case 0xCu:
      v2 = 0x7369566B63617274;
      break;
    case 0xDu:
      v2 = 0x73694C6B63617274;
      break;
    case 0xEu:
      v2 = 0x6E69466B63617274;
      break;
    case 0xFu:
    case 0x11u:
      v2 = 0x55656C6369747261;
      break;
    case 0x10u:
      v2 = 0xD000000000000011;
      break;
    case 0x12u:
      v2 = 0x61547374726F7073;
      break;
    case 0x13u:
      v2 = 0x726F6E6749676174;
      break;
    case 0x14u:
      v2 = 0xD000000000000012;
      break;
    default:
      break;
  }

  sub_1C6BED76C(v6, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  return v2;
}

void sub_1C6BED644(uint64_t a1)
{
  if (!qword_1EDCE52B0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticle(255);
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE52B0);
    }
  }
}

uint64_t sub_1C6BED69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BED704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BED76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1C6BED7CC(unint64_t a1, uint64_t a2)
{
  v52 = a2;
  sub_1C6BEE6BC(0, &unk_1EDCDFCC0, sub_1C6BEE720, MEMORY[0x1E69B59A8]);
  v56 = v4;
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v46 - v6;
  v8 = sub_1C6D79040();
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D79170();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D791B0();
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v54 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6B6DC2C(a1);
  if (v20)
  {
    v21 = v20;
    v22 = *MEMORY[0x1E69B5CA0];
    v52 = v2;
    v24 = v54;
    v23 = v55;
    (*(v55 + 104))(v54, v22, v17);
    v25 = v53[11];
    v49 = v53[10];
    v48 = __swift_project_boxed_opaque_existential_1(v53 + 7, v49);
    v26 = *(v23 + 16);
    v50 = v17;
    v26(v16, v24, v17);
    v27 = *MEMORY[0x1E69B5A18];
    v51 = v13;
    v28 = *(v13 + 104);
    v53 = v12;
    v28(v16, v27, v12);
    v29 = *(v25 + 16);
    v30 = sub_1C6BEE720();
    v31 = v52;
    v32 = v29(v21, v16, v30, v49, v25);
    if (v31)
    {

      (*(v51 + 8))(v16, v53);
      (*(v55 + 8))(v54, v50);
    }

    else
    {
      v35 = v32;

      (*(v51 + 8))(v16, v53);
      (*(v55 + 8))(v54, v50);
      v36 = *(v35 + 16);
      if (v36)
      {
        v52 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        sub_1C6B393A4(0, v36, 0);
        v16 = v60;
        v37 = *(v59 + 16);
        v38 = *(v59 + 80);
        v51 = v35;
        v39 = v35 + ((v38 + 32) & ~v38);
        v54 = *(v59 + 72);
        v55 = v37;
        v59 += 16;
        v40 = (v59 - 8);
        v53 = (v58 + 32);
        v41 = v47;
        do
        {
          v42 = v56;
          (v55)(v7, v39, v56);
          sub_1C6D790B0();
          sub_1C6D79080();
          sub_1C6D79020();
          (*v40)(v7, v42);
          v60 = v16;
          v44 = *(v16 + 2);
          v43 = *(v16 + 3);
          if (v44 >= v43 >> 1)
          {
            sub_1C6B393A4((v43 > 1), v44 + 1, 1);
            v41 = v47;
            v16 = v60;
          }

          *(v16 + 2) = v44 + 1;
          (*(v58 + 32))(&v16[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44], v41, v57);
          v39 += v54;
          --v36;
        }

        while (v36);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  else
  {
    v33 = v53[10];
    v34 = v53[11];
    __swift_project_boxed_opaque_existential_1(v53 + 7, v33);
    return (*(v34 + 8))(a1, v52, v33, v34);
  }

  return v16;
}

uint64_t sub_1C6BEDD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C6D79170();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[10];
  v13 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v12);
  v14 = sub_1C6D791B0();
  (*(*(v14 - 8) + 16))(v11, a2, v14);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B5A18], v7);
  v15 = (*(v13 + 16))(a1, v11, a3, v12, v13);
  (*(v8 + 8))(v11, v7);
  return v15;
}

uint64_t sub_1C6BEDEE4(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  return (*(v6 + 48))(a1, a2, v5, v6);
}

uint64_t sub_1C6BEDF50(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v40 = MEMORY[0x1E69B5D80];
  v4 = MEMORY[0x1E69E6720];
  sub_1C6BEE6BC(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v33 = &v26 - v7;
  v36 = MEMORY[0x1E69B5CF0];
  sub_1C6BEE6BC(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v4);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - v10;
  v13 = v3[5];
  v12 = v3[6];
  v35 = __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
  v34 = sub_1C6D79230();
  v31 = v14;
  v32 = sub_1C6D79220();
  v30 = v15;
  sub_1C6D79250();
  v29 = sub_1C6D79280();
  v17 = v16;
  v28 = sub_1C6D79260();
  v19 = v18;
  v27 = sub_1C6D79270();
  v21 = v20;
  v22 = sub_1C6D79210();
  v23 = v33;
  sub_1C6D79240();
  v24 = (*(v12 + 8))(v37, v38, v39, v34, v31 & 1, v32, v30 & 1, v11, v29, v17 & 1, v28, v19 & 1, v27, v21 & 1, v22, v23, 0, 1, v13, v12);

  sub_1C6BEE64C(v23, &unk_1EDCDFCA0, v40);
  sub_1C6BEE64C(v11, &qword_1EDCDFCB0, v36);
  return v24;
}

uint64_t sub_1C6BEE1B8(uint64_t a1, uint64_t a2)
{
  v5 = v2[15];
  v6 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_1C6BEE224()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6BEE2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v5;
  v10 = *(*v5 + 80);
  v11 = *(v9 + 88);
  __swift_project_boxed_opaque_existential_1((v9 + 56), v10);
  return a5(a1, a2, v10, v11);
}

uint64_t sub_1C6BEE350(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((*v1 + 56), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_1C6BEE3B0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((*v1 + 56), v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_1C6BEE410(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((*v1 + 56), v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t sub_1C6BEE4B8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_1C6BEE510()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_1C6BEE64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BEE6BC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6BEE6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C6BEE720()
{
  result = qword_1EDCDF7B0;
  if (!qword_1EDCDF7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCDF7B0);
  }

  return result;
}

id Com_Apple_News_Algorithms_Proto_Model_Float16List.coreMLFloat16s.getter()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1C6D75E50();
  v4 = [v3 bytes];
  v5 = v3;
  sub_1C6BEE988();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D839E0;
  v7 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v7 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v7)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    __break(1u);
  }

LABEL_9:
  *(v6 + 32) = sub_1C6D799A0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D839E0;
  sub_1C6B18500();
  *(v8 + 32) = sub_1C6D79BA0();
  v9 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v10 = sub_1C6D79760();

  v11 = sub_1C6D79760();

  v17[0] = 0;
  v12 = [v9 initWithDataPointer:v4 shape:v10 dataType:65552 strides:v11 deallocator:0 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    v15 = sub_1C6D75CC0();

    swift_willThrow();
    v12 = [objc_allocWithZone(MEMORY[0x1E695FED0]) init];
  }

  return v12;
}

void sub_1C6BEE988()
{
  if (!qword_1EDCEA420)
  {
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA420);
    }
  }
}

uint64_t sub_1C6BEE9DC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1C6B39594(0, v2, 0);
  v3 = v27;
  v5 = a1 + 64;
  result = sub_1C6D79CC0();
  v7 = result;
  v8 = 0;
  v23 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v25 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v26 = *v11;
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);

    if (v14 >= v13 >> 1)
    {
      result = sub_1C6B39594((v13 > 1), v14 + 1, 1);
    }

    *(v27 + 16) = v14 + 1;
    v15 = v27 + 24 * v14;
    *(v15 + 32) = v26;
    *(v15 + 40) = v12;
    *(v15 + 48) = a2;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v5 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1C6B360A8(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C6BEEC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C6B39484(0, v1, 0);
    v2 = v13;
    v4 = MEMORY[0x1E69E63B0];
    sub_1C6BF5804(0, &qword_1EDCDFB10, MEMORY[0x1E69E63B0]);
    sub_1C6B3CAFC(0, &qword_1EDCDFB60, v4, "tagID score ");
    v5 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C6B39484((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = (v13 + 24 * v7);
      v8[4] = v10;
      v8[5] = v11;
      v8[6] = v12;
      v5 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C6BEED64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C6B394A4(0, v1, 0);
    v2 = v13;
    v4 = MEMORY[0x1E69E63B0];
    sub_1C6B3CAFC(0, &qword_1EDCDFB60, MEMORY[0x1E69E63B0], "tagID score ");
    sub_1C6BF5804(0, &qword_1EDCDFB10, v4);
    v5 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C6B394A4((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = (v13 + 24 * v7);
      v8[4] = v10;
      v8[5] = v11;
      v8[6] = v12;
      v5 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C6BEEEB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C6B39514(0, v1, 0);
    v2 = v13;
    v4 = MEMORY[0x1E69E6448];
    sub_1C6BF5804(0, &qword_1EDCE6680, MEMORY[0x1E69E6448]);
    sub_1C6B3CAFC(0, &unk_1EDCDFBB0, v4, "identifier score ");
    v5 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C6B39514((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      *(v8 + 48) = v12;
      v5 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t TagRecommendationsDataServiceResult.Recommendation.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t TagRecommendationsDataServiceResult.Recommendation.tagID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1C6BEF104@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C6B39534(0, v3, 0);
    result = a1;
    v6 = 0;
    v7 = v18;
    v8 = (a1 + 56);
    v17 = a1;
    while (v6 < *(result + 16))
    {
      v9 = *(v8 - 24);
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);
      v12 = *v8;
      v13 = *(v18 + 16);
      v14 = *(v18 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_1C6B39534((v14 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      v15 = v18 + 32 * v13;
      *(v15 + 32) = v9;
      ++v6;
      *(v15 + 40) = v11;
      *(v15 + 48) = v10;
      *(v15 + 56) = v12;
      v8 += 8;
      result = v17;
      if (v3 == v6)
      {

        v2 = a2;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_1C6BEF24C()
{
  result = qword_1EC1D77E0;
  if (!qword_1EC1D77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D77E0);
  }

  return result;
}

uint64_t sub_1C6BEF2AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6BEF2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1C6BEF354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6BEF39C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6BEF400(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C6BEF448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6BEF4E4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return v0;
}

uint64_t sub_1C6BEF53C()
{
  sub_1C6BEF4E4();

  return swift_deallocClassInstance();
}

void sub_1C6BEF570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a3;
  v17[8] = a4;
  v21[4] = sub_1C6BF52D8;
  v21[5] = v17;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1C6BF0328;
  v21[3] = &block_descriptor_3;
  v18 = _Block_copy(v21);
  v19 = a7;

  v20 = a6;

  [v16 fetchSignalsFromBiomeWithSafariBlockoutDuration:a5 maxExternalSignalEventCount:v18 resultsBlock:0.0];
  _Block_release(v18);
}

void sub_1C6BEF6BC(unint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v66 = a7;
  v9 = a2;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B38A60(v11);

  v76 = sub_1C6BF4570(v12, sub_1C6B6916C, sub_1C6BF47B0);
  sub_1C6BF2074(&v76);

  v13 = v76;
  v14 = &unk_1EDCE2000;
  v15 = &unk_1EDCE2000;
  if ((v76 & 0x8000000000000000) != 0 || (v76 & 0x4000000000000000) != 0)
  {
LABEL_75:
    v75 = sub_1C6D79E90();
    if (v75)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v75 = *(v76 + 16);
    if (v75)
    {
LABEL_7:
      if (v14[119] != -1)
      {
LABEL_80:
        swift_once();
      }

      v72 = v15[120];
      sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C6D7EB10;
      if (a1)
      {
        if (a1 >> 62)
        {
          v63 = v16;
          v17 = sub_1C6D79E90();
          v16 = v63;
        }

        else
        {
          v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v17 = 0;
      }

      v15 = MEMORY[0x1E69E6530];
      v18 = MEMORY[0x1E69E65A8];
      *(v16 + 56) = MEMORY[0x1E69E6530];
      *(v16 + 64) = v18;
      *(v16 + 32) = v17;
      if (v9)
      {
        if (v9 >> 62)
        {
          v64 = v16;
          v19 = sub_1C6D79E90();
          v16 = v64;
        }

        else
        {
          v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v19 = 0;
      }

      *(v16 + 96) = v15;
      *(v16 + 104) = v18;
      *(v16 + 72) = v19;
      sub_1C6D79AC0();
      sub_1C6D78D30("TagSuggestionsDataService processing %lu app and %lu web signals", a9, v66);

      v9 = 0;
      v74 = v13 & 0xC000000000000001;
      a1 = MEMORY[0x1E69E7CC0];
      v73 = v13;
      while (1)
      {
        if (v74)
        {
          v23 = MEMORY[0x1CCA56240](v9, v13);
          v15 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v9 >= *(v13 + 16))
          {
            goto LABEL_67;
          }

          v23 = *(v13 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v15 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }
        }

        v24 = [v23 type];
        if ((v24 - 2) < 2)
        {
          if (a6)
          {
            v13 = a6;
            v36 = [v23 content];
            v37 = [v13 tagScoresForBundleID_];

            sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
            v38 = sub_1C6D79490();

            v14 = sub_1C6BEE9DC(v38, 0);

            v39 = v14[2];
            v40 = *(a1 + 16);
            v41 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              goto LABEL_68;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native)
            {
              v43 = *(a1 + 24) >> 1;
              if (v43 >= v41)
              {
                if (v14[2])
                {
                  goto LABEL_44;
                }

LABEL_54:

                if (v39)
                {
                  goto LABEL_69;
                }

                goto LABEL_61;
              }
            }

            if (v40 <= v41)
            {
              v51 = v40 + v39;
            }

            else
            {
              v51 = v40;
            }

            a1 = sub_1C6B663A0(isUniquelyReferenced_nonNull_native, v51, 1, a1);
            v43 = *(a1 + 24) >> 1;
            if (!v14[2])
            {
              goto LABEL_54;
            }

LABEL_44:
            if (v43 - *(a1 + 16) < v39)
            {
              goto LABEL_70;
            }

            sub_1C6BF5804(0, &qword_1EDCDFB18, &type metadata for TagRecommendationsDataServiceResult.Recommendation.Kind);
            swift_arrayInitWithCopy();

            if (v39)
            {
              v44 = *(a1 + 16);
              v34 = __OFADD__(v44, v39);
              v35 = v44 + v39;
              if (v34)
              {
                goto LABEL_73;
              }

              goto LABEL_47;
            }

LABEL_61:
            swift_unknownObjectRelease();

LABEL_62:
            v13 = v73;
            goto LABEL_19;
          }
        }

        else
        {
          if (!v24)
          {
            v14 = sub_1C6D79AA0();
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_1C6D7E630;
            v46 = [v23 content];
            if (!v46)
            {
              __break(1u);

              __break(1u);
              return;
            }

            v47 = v46;
            v48 = sub_1C6D795A0();
            v50 = v49;

            *(v45 + 56) = MEMORY[0x1E69E6158];
            *(v45 + 64) = sub_1C6B2064C();
            *(v45 + 32) = v48;
            *(v45 + 40) = v50;
            sub_1C6D78D30("TagSuggestionsDataService encountered a singal with type none with content %{public}@", 85, 2, &dword_1C6B09000, v72, v14, v45);

            swift_unknownObjectRelease();
            goto LABEL_62;
          }

          if (v24 == 1)
          {
            if (a5)
            {
              v13 = a5;
              v25 = [v23 content];
              v26 = [v13 tagScoresForURL_];

              sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
              v27 = sub_1C6D79490();

              v14 = sub_1C6BEE9DC(v27, 1);

              v28 = v14[2];
              v29 = *(a1 + 16);
              v30 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              v31 = swift_isUniquelyReferenced_nonNull_native();
              if (v31 && (v32 = *(a1 + 24) >> 1, v32 >= v30))
              {
                if (v14[2])
                {
LABEL_34:
                  if (v32 - *(a1 + 16) < v28)
                  {
                    goto LABEL_74;
                  }

                  sub_1C6BF5804(0, &qword_1EDCDFB18, &type metadata for TagRecommendationsDataServiceResult.Recommendation.Kind);
                  swift_arrayInitWithCopy();

                  if (!v28)
                  {
                    goto LABEL_61;
                  }

                  v33 = *(a1 + 16);
                  v34 = __OFADD__(v33, v28);
                  v35 = v33 + v28;
                  if (v34)
                  {
                    __break(1u);
                    goto LABEL_80;
                  }

LABEL_47:
                  *(a1 + 16) = v35;
                  goto LABEL_61;
                }
              }

              else
              {
                if (v29 <= v30)
                {
                  v52 = v29 + v28;
                }

                else
                {
                  v52 = v29;
                }

                a1 = sub_1C6B663A0(v31, v52, 1, a1);
                v32 = *(a1 + 24) >> 1;
                if (v14[2])
                {
                  goto LABEL_34;
                }
              }

              if (v28)
              {
                goto LABEL_72;
              }

              goto LABEL_61;
            }
          }

          else
          {
            v14 = sub_1C6D79AA0();
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_1C6D7E630;
            v76 = 0;
            v77 = 0xE000000000000000;
            [v23 type];
            type metadata accessor for FCPersonalizationExternalSignalType(0);
            sub_1C6D79E60();
            v21 = v76;
            v22 = v77;
            *(v20 + 56) = MEMORY[0x1E69E6158];
            *(v20 + 64) = sub_1C6B2064C();
            *(v20 + 32) = v21;
            *(v20 + 40) = v22;
            sub_1C6D78D30("TagSuggestionsDataService received an external signal with unknown type %{public}@", 82, 2, &dword_1C6B09000, v72, v14, v20);
          }
        }

        swift_unknownObjectRelease();
LABEL_19:
        ++v9;
        if (v15 == v75)
        {

          if (*(a1 + 16))
          {
            sub_1C6BF0054(a1);

            v53 = swift_allocObject();
            *(v53 + 16) = a3;
            *(v53 + 24) = a4;

            v54 = sub_1C6D78210();
            sub_1C6D782B0();

            v55 = swift_allocObject();
            *(v55 + 16) = a8;
            *(v55 + 24) = v65;

            v56 = sub_1C6D78210();
            sub_1C6D782E0();

            return;
          }

          v57 = sub_1C6D79AC0();
          v58 = MEMORY[0x1E69E7CC0];
          sub_1C6D78D30("No available external context, returning no external signal based recommendations", 81, 2, &dword_1C6B09000, v72, v57, MEMORY[0x1E69E7CC0]);
          v59 = v58;
          goto LABEL_79;
        }
      }
    }
  }

  if (v14[119] != -1)
  {
    swift_once();
  }

  v60 = v15[120];
  v61 = sub_1C6D79AC0();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1C6D78D30("TagSuggestionsDataService received no external signals, emitting no recommendations", 83, 2, &dword_1C6B09000, v60, v61, MEMORY[0x1E69E7CC0]);
  v59 = v62;
LABEL_79:
  sub_1C6BEF104(v59, &v76);
  a3(&v76);
}

uint64_t sub_1C6BF0054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D75F80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  if (qword_1EC1D5AA0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC1D85A8;
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6D7EB10;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = MEMORY[0x1E69E6530];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  sub_1C6BF1FBC();
  v13 = sub_1C6D7A0E0();
  v15 = v14;
  *(v10 + 96) = MEMORY[0x1E69E6158];
  *(v10 + 104) = sub_1C6B2064C();
  *(v10 + 72) = v13;
  *(v10 + 80) = v15;
  v16 = sub_1C6D79AC0();
  sub_1C6D78D30("Attempting to fetch tag recommendations with %lu context items using requestID %{public}@", 89, 2, &dword_1C6B09000, v9, v16, v10);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v2;
  sub_1C6BF5394(0);

  sub_1C6D78390();

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C6BF5430;
  *(v18 + 24) = v2;

  v19 = sub_1C6D782B0();

  (*(v5 + 8))(v8, v4);
  return v19;
}

uint64_t sub_1C6BF0328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
    v4 = sub_1C6D79780();
  }

  if (a3)
  {
    sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
    a3 = sub_1C6D79780();
  }

  v5(v4, a3);
}

uint64_t sub_1C6BF03EC(uint64_t a1, uint64_t a2)
{
  sub_1C6BF04CC(a1, a2);
  sub_1C6BF0840(a1, a2);
  sub_1C6B1B3B0(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8);
  swift_allocObject();
  sub_1C6D78350();
  v4 = sub_1C6D78210();
  v5 = sub_1C6D78200();

  return v5;
}

uint64_t sub_1C6BF04CC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 48;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_20;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_24;
    }

    v9 = *v7;
    v7 += 24;
    ++v3;
    if ((v9 & 1) == 0)
    {
      v10 = *(v7 - 5);
      v2 = *(v7 - 4);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B39594(0, v6[2] + 1, 1);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_1C6B39594((v11 > 1), v12 + 1, 1);
      }

      v6[2] = v12 + 1;
      v13 = &v6[3 * v12];
      v13[4] = v10;
      v13[5] = v2;
      *(v13 + 48) = 0;
      v3 = v8;
      goto LABEL_2;
    }
  }

  v14 = v6[2];
  if (v14)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v14, 0);
    v2 = v31;
    v15 = v6 + 5;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v31 + 16);
      v18 = *(v31 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1C6B39280((v18 > 1), v19 + 1, 1);
      }

      *(v31 + 16) = v19 + 1;
      v20 = v31 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC1D5AA0 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  v21 = qword_1EC1D85A8;
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6D7E630;
  v23 = *(v2 + 16);
  v24 = MEMORY[0x1E69E65A8];
  *(v22 + 56) = MEMORY[0x1E69E6530];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  sub_1C6D79AC0();
  sub_1C6D78D30("Fetching tag recommendations with %lu app based context items", a2);

  if (*(v2 + 16))
  {
    MEMORY[0x1EEE9AC00](v25, v26);
    sub_1C6BF54E8(0);
    swift_allocObject();
    v27 = sub_1C6D78350();

    return v27;
  }

  else
  {

    v29 = sub_1C6D79AC0();
    sub_1C6D78D30("App context was empty, returning no tag recommendations from app context", 72, 2, &dword_1C6B09000, v21, v29, MEMORY[0x1E69E7CC0]);
    sub_1C6BF54E8(0);
    swift_allocObject();
    return sub_1C6D78300();
  }
}

uint64_t sub_1C6BF0840(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 48;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v5 + 24 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_20;
    }

    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_24;
    }

    v10 = *v8;
    v8 += 24;
    ++v3;
    if (v10)
    {
      v11 = *(v8 - 5);
      v2 = *(v8 - 4);

      v12 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B39594(0, v7[2] + 1, 1);
      }

      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_1C6B39594((v13 > 1), v14 + 1, 1);
      }

      v7[2] = v14 + 1;
      v15 = &v7[3 * v14];
      v15[4] = v11;
      v15[5] = v2;
      *(v15 + 48) = 1;
      v3 = v9;
      v6 = v12;
      goto LABEL_2;
    }
  }

  v16 = v7[2];
  if (v16)
  {
    sub_1C6B39280(0, v16, 0);
    v2 = v6;
    v17 = v7 + 5;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);

      if (v21 >= v20 >> 1)
      {
        sub_1C6B39280((v20 > 1), v21 + 1, 1);
      }

      *(v6 + 16) = v21 + 1;
      v22 = v6 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v17 += 3;
      --v16;
    }

    while (v16);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC1D5AA0 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  v23 = qword_1EC1D85A8;
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C6D7E630;
  v25 = *(v2 + 16);
  v26 = MEMORY[0x1E69E65A8];
  *(v24 + 56) = MEMORY[0x1E69E6530];
  *(v24 + 64) = v26;
  *(v24 + 32) = v25;
  sub_1C6D79AC0();
  sub_1C6D78D30("Fetching tag recommendations with %lu web based context items", a2);

  if (*(v2 + 16))
  {
    MEMORY[0x1EEE9AC00](v27, v28);
    sub_1C6BF54E8(0);
    swift_allocObject();
    v29 = sub_1C6D78350();

    return v29;
  }

  else
  {

    v31 = sub_1C6D79AC0();
    sub_1C6D78D30("Web context was empty, returning no tag recommendations from web context", 72, 2, &dword_1C6B09000, v23, v31, v6);
    sub_1C6BF54E8(0);
    swift_allocObject();
    return sub_1C6D78300();
  }
}

uint64_t sub_1C6BF0BBC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a5[3];
  v9 = a5[8];
  v10 = a5[9];
  __swift_project_boxed_opaque_existential_1(a5 + 5, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = sub_1C6D703C8(v8, a6, v11 & 1);
  a1(&v13);
}

uint64_t sub_1C6BF0CD0@<X0>(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>)
{
  v4 = sub_1C6BF0F20(a3);
  v5 = *(v4 + 2);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C6B395D4(0, v5, 0);
    v7 = v29;
    v8 = v4 + 48;
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v29 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1C6B395D4((v12 > 1), v13 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 32 * v13;
      *(v14 + 32) = 0;
      *(v14 + 40) = v10;
      *(v14 + 48) = v9;
      *(v14 + 56) = v11;
      v8 += 6;
      --v5;
    }

    while (v5);

    a1 = v27;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1C6BF0F20(a1);
  v16 = *(v15 + 2);
  if (v16)
  {
    v29 = v6;
    sub_1C6B395D4(0, v16, 0);
    v17 = v6;
    v18 = v15 + 48;
    do
    {
      v20 = *(v18 - 2);
      v19 = *(v18 - 1);
      v21 = *v18;
      v29 = v17;
      v23 = v17[2];
      v22 = v17[3];

      if (v23 >= v22 >> 1)
      {
        sub_1C6B395D4((v22 > 1), v23 + 1, 1);
        v17 = v29;
      }

      v17[2] = v23 + 1;
      v24 = &v17[4 * v23];
      *(v24 + 32) = 1;
      v24[5] = v20;
      v24[6] = v19;
      *(v24 + 14) = v21;
      v18 += 6;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v29 = v7;
  sub_1C6B38A78(v17);

  sub_1C6BF20F0(&v29);

  v25 = v29;

  return sub_1C6BEF104(v25, a2);
}

id sub_1C6BF0F20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D78EC0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 136);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1C6D78ED0();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

  v12 = *(v2 + 112);
  v13 = *(v2 + 120);
  __swift_project_boxed_opaque_existential_1((v2 + 88), v12);
  (*(v13 + 8))(v49, 0, v12, v13);
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v14 = sub_1C6D76090();
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v15 = sub_1C6D76080();
  v16 = sub_1C6C22548(v15, v14);
  v17 = [*(v2 + 16) possiblyUnfetchedAppConfiguration];
  result = [v17 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v19 = [v17 deprecatedSportsTopicTagIds];
  swift_unknownObjectRelease();
  if (v19)
  {
    v20 = sub_1C6D79780();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v9 = MEMORY[0x1E69E6158];
  v21 = sub_1C6B1E610(v20);

  v2 = sub_1C6C22548(v21, v16);
  if (qword_1EDCE2380 != -1)
  {
    goto LABEL_33;
  }

LABEL_7:
  v22 = qword_1EDCE2388;
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C6D7EB10;
  v24 = *(a1 + 16);
  v25 = MEMORY[0x1E69E65A8];
  *(v23 + 56) = MEMORY[0x1E69E6530];
  *(v23 + 64) = v25;
  *(v23 + 32) = v24;
  v26 = sub_1C6D79970();
  v28 = v27;
  *(v23 + 96) = v9;
  *(v23 + 104) = sub_1C6B2064C();
  *(v23 + 72) = v26;
  *(v23 + 80) = v28;
  v29 = sub_1C6D79AC0();
  sub_1C6D78D30("Filtering %lu tag suggestions against forbidden tags %{public}@", 63, 2, &dword_1C6B09000, v22, v29, v23);

  if (v24)
  {
    v30 = 0;
    v47 = a1 + 32;
    v31 = v2 + 56;
    a1 = MEMORY[0x1E69E7CC0];
    v46 = v24;
    while (1)
    {
      if (v30 >= v24)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        swift_once();
        goto LABEL_7;
      }

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      v33 = (v47 + 24 * v30);
      v34 = *v33;
      v9 = v33[1];
      v35 = *(v33 + 4);
      ++v30;
      if (*(v2 + 16))
      {
        sub_1C6D7A260();

        sub_1C6D79610();
        v36 = sub_1C6D7A2B0();
        v37 = -1 << *(v2 + 32);
        v38 = v36 & ~v37;
        if ((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          while (1)
          {
            v40 = (*(v2 + 48) + 16 * v38);
            v41 = *v40 == v34 && v40[1] == v9;
            if (v41 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v38 = (v38 + 1) & v39;
            if (((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_10;
        }
      }

      else
      {
      }

LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6B395B4(0, *(a1 + 16) + 1, 1);
        a1 = v48;
      }

      v44 = *(a1 + 16);
      v43 = *(a1 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1C6B395B4((v43 > 1), v44 + 1, 1);
        a1 = v48;
      }

      *(a1 + 16) = v44 + 1;
      v45 = a1 + 24 * v44;
      *(v45 + 32) = v34;
      *(v45 + 40) = v9;
      *(v45 + 48) = v35;
      v24 = v46;
LABEL_10:
      if (v32 == v24)
      {
        goto LABEL_29;
      }
    }
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_29:

  __swift_destroy_boxed_opaque_existential_1(v49);
  return a1;
}

uint64_t sub_1C6BF1430(uint64_t a1)
{
  sub_1C6B1A418(0, &qword_1EDCE5D68, sub_1C6BF512C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1C6D78350();
  sub_1C6B1B3B0(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8);
  swift_allocObject();
  sub_1C6D78350();
  v1 = sub_1C6D78210();
  v2 = sub_1C6D781F0();

  return v2;
}

uint64_t sub_1C6BF154C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5[3];
  v8 = a5[8];
  v9 = a5[9];
  __swift_project_boxed_opaque_existential_1(a5 + 5, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v13[0] = sub_1C6C19594(v7, v10 & 1, a5[16]);
  v13[1] = v11;
  a1(v13);
}

uint64_t sub_1C6BF166C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v9 = *(a2 + 16);
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = v9;
  sub_1C6D79AC0();
  sub_1C6D78D30("Filtering %lu channel and %lu topic tag suggestions", v15, v16);

  v15 = a1;

  sub_1C6BF2248(&v15);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v10 = sub_1C6BF0F20(v15);

    v11 = sub_1C6BEEEB4(v10);

    v15 = a2;

    sub_1C6BF2248(&v15);
    v12 = sub_1C6BF0F20(v15);

    v13 = sub_1C6BEEEB4(v12);

    v15 = v11;
    v16 = v13;
    sub_1C6B1B3B0(0, &qword_1EDCE5DA0, &type metadata for TagSuggestionsDataServiceResult);
    swift_allocObject();
    return sub_1C6D78300();
  }

  return result;
}

uint64_t sub_1C6BF1884()
{
  v1 = v0;
  v2 = sub_1C6D75F80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDCE2388;
  sub_1C6B1A418(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  sub_1C6BF1FBC();
  v9 = sub_1C6D7A0E0();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C6B2064C();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v12 = sub_1C6D79AC0();
  sub_1C6D78D30("Attempting to fetch recipe tag suggestions with requestID %{public}@", 68, 2, &dword_1C6B09000, v7, v12, v8);

  sub_1C6D78390();

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C6BF2030;
  *(v13 + 24) = v1;

  v14 = sub_1C6D782B0();

  (*(v3 + 8))(v6, v2);
  return v14;
}

uint64_t sub_1C6BF1B08(uint64_t a1)
{
  sub_1C6B1B3B0(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6BF1B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = a5[14];
  v15 = a5[15];
  __swift_project_boxed_opaque_existential_1(a5 + 11, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a8;
  *(v16 + 24) = v13;
  v17 = *(v15 + 16);

  v17(a9, v16, v14, v15);
}

uint64_t sub_1C6BF1C58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[8];
  v7 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v6);
  v8 = (*(v7 + 8))(v6, v7);
  result = sub_1C6C4129C(v5, v8 & 1, a1[16]);
  if (!v2)
  {
    v11 = v10;
    v16 = result;

    sub_1C6BF2248(&v16);
    v12 = sub_1C6BF0F20(v16);

    v13 = sub_1C6BEEEB4(v12);

    v16 = v11;

    sub_1C6BF2248(&v16);

    v14 = sub_1C6BF0F20(v16);

    v15 = sub_1C6BEEEB4(v14);

    *a2 = v13;
    a2[1] = v15;
  }

  return result;
}

uint64_t sub_1C6BF1DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1B3B0(0, &unk_1EDCE5D90, &type metadata for TagRecommendationsDataServiceResult);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6BF1E48(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCE2388;
  v4 = sub_1C6D79AC0();
  sub_1C6D78D30("Attempting to fetch tag suggestions", 35, 2, &dword_1C6B09000, v3, v4, MEMORY[0x1E69E7CC0]);
  sub_1C6BF50C0(0);

  sub_1C6D78390();

  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C6BF521C;
  *(v5 + 24) = v2;

  v6 = sub_1C6D782A0();

  return v6;
}

unint64_t sub_1C6BF1FBC()
{
  result = qword_1EDCEA390;
  if (!qword_1EDCEA390)
  {
    sub_1C6D75F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA390);
  }

  return result;
}

uint64_t sub_1C6BF2074(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C6C750C0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C6BF23B0(v6);
  return sub_1C6D79DD0();
}

uint64_t sub_1C6BF20F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73F80(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 11);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v8;
        v12 = v9;
        do
        {
          if (*(v11 - 8) >= *v11)
          {
            break;
          }

          v13 = v11 - 6;
          v15 = *(v11 - 14);
          v14 = *(v11 - 10);
          *(v11 - 8) = *v11;
          v11 -= 8;
          v16 = *(v11 + 8);
          v17 = *(v11 + 2);
          v18 = *(v11 + 3);
          *v13 = v15;
          *(v13 + 1) = v14;
          *(v11 - 24) = v16;
          *(v11 - 2) = v17;
          *(v11 - 1) = v18;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v8 += 8;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6B3B6A4();
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1C6BF3090(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6BF2248(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73F94(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6BF5804(0, &qword_1EDCE6680, MEMORY[0x1E69E6448]);
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1C6BF3648(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1C6BF23B0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C6D7A0C0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6B0F7A8(0, &qword_1EDCDF7F8, &protocolRef_FCPersonalizationExternalSignal);
        v6 = sub_1C6D797F0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1C6BF2710(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1C6BF24C4(0, v2, 1, a1);
  }
}

void sub_1C6BF24C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1C6D75F50();
  MEMORY[0x1EEE9AC00](v38, v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v31 - v13;
  v32 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v36 = (v12 + 8);
    v39 = v15;
    v16 = v15 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v34 = v16;
    v35 = a3;
    v18 = *(v39 + 8 * a3);
    v33 = v17;
    v19 = v17;
    while (1)
    {
      v20 = *v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 date];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      sub_1C6D75F20();

      v23 = [v20 date];
      if (!v23)
      {
        goto LABEL_13;
      }

      v24 = v23;
      v25 = v37;
      sub_1C6D75F20();

      v40 = sub_1C6D75EE0();
      v26 = v19;
      v27 = *v36;
      v28 = v25;
      v29 = v38;
      (*v36)(v28, v38);
      v27(v14, v29);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v40)
      {
        if (!v39)
        {
          goto LABEL_14;
        }

        v30 = *v16;
        v18 = *(v16 + 8);
        *v16 = v18;
        *(v16 + 8) = v30;
        v16 -= 8;
        ++v19;
        if (v26 != -1)
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v16 = v34 + 8;
      v17 = v33 - 1;
      if (v35 + 1 == v32)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1C6BF2710(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v141 = a1;
  v153 = sub_1C6D75F50();
  MEMORY[0x1EEE9AC00](v153, v7);
  v150 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v135 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v144 = &v135 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v145 = &v135 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v136 = &v135 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v137 = &v135 - v25;
  v148 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v27 = 0;
    v152 = (v24 + 8);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = &selRef_adSegmentsOutputName;
    v140 = a4;
    v154 = v12;
    while (1)
    {
      v30 = v27++;
      if (v27 < v26)
      {
        v147 = v26;
        v139 = v28;
        v31 = *v148;
        v32 = *(*v148 + 8 * v27);
        v33 = *(*v148 + 8 * v30);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v34 = [v32 v29[11]];
        if (!v34)
        {
          goto LABEL_139;
        }

        v35 = v34;
        v143 = v31;
        v36 = v137;
        sub_1C6D75F20();

        v37 = [v33 v29[11]];
        if (!v37)
        {
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v38 = v37;
        v39 = v136;
        sub_1C6D75F20();

        LODWORD(v151) = sub_1C6D75EE0();
        v4 = v152;
        v40 = *v152;
        v41 = v39;
        v42 = v36;
        v43 = v153;
        (*v152)(v41, v153);
        v146 = v40;
        v40(v42, v43);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v44 = v30 + 2;
        v138 = v30;
        v142 = 8 * v30;
        v45 = (v143 + 8 * v30 + 16);
        while (1)
        {
          v27 = v147;
          if (v147 == v44)
          {
            break;
          }

          v46 = *(v45 - 1);
          v47 = *v45;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v48 = [v47 v29[11]];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v145;
          sub_1C6D75F20();

          v51 = [v46 v29[11]];
          if (!v51)
          {
            goto LABEL_133;
          }

          v52 = v51;
          v53 = v144;
          sub_1C6D75F20();

          LODWORD(v52) = sub_1C6D75EE0() & 1;
          v54 = v53;
          v55 = v50;
          v56 = v153;
          v4 = v146;
          v146(v54, v153);
          (v4)(v55, v56);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          ++v44;
          ++v45;
          v12 = v154;
          v29 = &selRef_adSegmentsOutputName;
          if ((v151 & 1) != v52)
          {
            v27 = v44 - 1;
            break;
          }
        }

        v30 = v138;
        v28 = v139;
        v57 = v142;
        if (v151)
        {
          if (v27 < v138)
          {
            goto LABEL_126;
          }

          if (v138 < v27)
          {
            v58 = 8 * v27 - 8;
            v59 = v27;
            v60 = v138;
            do
            {
              if (v60 != --v59)
              {
                v61 = *v148;
                if (!*v148)
                {
                  goto LABEL_136;
                }

                v62 = *(v61 + v57);
                *(v61 + v57) = *(v61 + v58);
                *(v61 + v58) = v62;
              }

              ++v60;
              v58 -= 8;
              v57 += 8;
            }

            while (v60 < v59);
          }
        }

        a4 = v140;
      }

      v63 = v148[1];
      if (v27 < v63)
      {
        if (__OFSUB__(v27, v30))
        {
          goto LABEL_125;
        }

        if (v27 - v30 < a4)
        {
          v64 = v30 + a4;
          if (__OFADD__(v30, a4))
          {
            goto LABEL_127;
          }

          if (v64 >= v63)
          {
            v64 = v148[1];
          }

          if (v64 < v30)
          {
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          if (v27 != v64)
          {
            v138 = v30;
            v139 = v28;
            v151 = *v148;
            v65 = v151 + 8 * v27 - 8;
            v66 = v30 - v27;
            v142 = v64;
            do
            {
              v146 = v65;
              v147 = v27;
              v4 = *(v151 + 8 * v27);
              v143 = v66;
              v67 = v65;
              while (1)
              {
                v68 = *v67;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v69 = [v4 v29[11]];
                if (!v69)
                {
                  goto LABEL_131;
                }

                v70 = v69;
                sub_1C6D75F20();

                v71 = [v68 v29[11]];
                if (!v71)
                {
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
LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
LABEL_139:
                  __break(1u);
                  goto LABEL_140;
                }

                v72 = v71;
                v73 = v150;
                sub_1C6D75F20();

                LOBYTE(v72) = sub_1C6D75EE0();
                v74 = v12;
                v75 = *v152;
                v76 = v73;
                v77 = v153;
                (*v152)(v76, v153);
                v75(v74, v77);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if ((v72 & 1) == 0)
                {
                  break;
                }

                if (!v151)
                {
                  goto LABEL_132;
                }

                v78 = *v67;
                v4 = *(v67 + 8);
                *v67 = v4;
                *(v67 + 8) = v78;
                v67 -= 8;
                v79 = __CFADD__(v66++, 1);
                v12 = v154;
                v29 = &selRef_adSegmentsOutputName;
                if (v79)
                {
                  goto LABEL_32;
                }
              }

              v12 = v154;
              v29 = &selRef_adSegmentsOutputName;
LABEL_32:
              v27 = v147 + 1;
              v65 = v146 + 8;
              v66 = v143 - 1;
            }

            while (v147 + 1 != v142);
            v27 = v142;
            v30 = v138;
            v28 = v139;
          }
        }
      }

      if (v27 < v30)
      {
        goto LABEL_124;
      }

      v80 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v28 = v80;
      }

      else
      {
        v28 = sub_1C6B657D0(0, *(v80 + 2) + 1, 1, v80);
      }

      v82 = *(v28 + 2);
      v81 = *(v28 + 3);
      v83 = v82 + 1;
      if (v82 >= v81 >> 1)
      {
        v28 = sub_1C6B657D0((v81 > 1), v82 + 1, 1, v28);
      }

      *(v28 + 2) = v83;
      v84 = &v28[16 * v82];
      *(v84 + 4) = v30;
      *(v84 + 5) = v27;
      v85 = *v141;
      if (!*v141)
      {
        goto LABEL_138;
      }

      if (v82)
      {
        while (1)
        {
          v4 = v83 - 1;
          if (v83 >= 4)
          {
            break;
          }

          if (v83 == 3)
          {
            v86 = *(v28 + 4);
            v87 = *(v28 + 5);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
LABEL_62:
            if (v89)
            {
              goto LABEL_113;
            }

            v102 = &v28[16 * v83];
            v104 = *v102;
            v103 = *(v102 + 1);
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_116;
            }

            v108 = &v28[16 * v4 + 32];
            v110 = *v108;
            v109 = *(v108 + 1);
            v96 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v96)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v106, v111))
            {
              goto LABEL_120;
            }

            if (v106 + v111 >= v88)
            {
              if (v88 < v111)
              {
                v4 = v83 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v112 = &v28[16 * v83];
          v114 = *v112;
          v113 = *(v112 + 1);
          v96 = __OFSUB__(v113, v114);
          v106 = v113 - v114;
          v107 = v96;
LABEL_76:
          if (v107)
          {
            goto LABEL_115;
          }

          v115 = &v28[16 * v4];
          v117 = *(v115 + 4);
          v116 = *(v115 + 5);
          v96 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v96)
          {
            goto LABEL_118;
          }

          if (v118 < v106)
          {
            goto LABEL_3;
          }

LABEL_83:
          v123 = v4 - 1;
          if (v4 - 1 >= v83)
          {
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
            goto LABEL_128;
          }

          if (!*v148)
          {
            goto LABEL_135;
          }

          v124 = v28;
          v125 = *&v28[16 * v123 + 32];
          v30 = *&v28[16 * v4 + 40];
          v126 = v149;
          sub_1C6BF3C00((*v148 + 8 * v125), (*v148 + 8 * *&v28[16 * v4 + 32]), (*v148 + 8 * v30), v85);
          v149 = v126;
          if (v126)
          {
            goto LABEL_107;
          }

          if (v30 < v125)
          {
            goto LABEL_109;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v127 = v124;
          }

          else
          {
            v127 = sub_1C6C73C90(v124);
          }

          v12 = v154;
          if (v123 >= *(v127 + 2))
          {
            goto LABEL_110;
          }

          v128 = &v127[16 * v123];
          *(v128 + 4) = v125;
          *(v128 + 5) = v30;
          v155 = v127;
          sub_1C6C73C04(v4);
          v28 = v155;
          v83 = *(v155 + 2);
          if (v83 <= 1)
          {
            goto LABEL_3;
          }
        }

        v90 = &v28[16 * v83 + 32];
        v91 = *(v90 - 64);
        v92 = *(v90 - 56);
        v96 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v96)
        {
          goto LABEL_111;
        }

        v95 = *(v90 - 48);
        v94 = *(v90 - 40);
        v96 = __OFSUB__(v94, v95);
        v88 = v94 - v95;
        v89 = v96;
        if (v96)
        {
          goto LABEL_112;
        }

        v97 = &v28[16 * v83];
        v99 = *v97;
        v98 = *(v97 + 1);
        v96 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v96)
        {
          goto LABEL_114;
        }

        v96 = __OFADD__(v88, v100);
        v101 = v88 + v100;
        if (v96)
        {
          goto LABEL_117;
        }

        if (v101 >= v93)
        {
          v119 = &v28[16 * v4 + 32];
          v121 = *v119;
          v120 = *(v119 + 1);
          v96 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v96)
          {
            goto LABEL_121;
          }

          if (v88 < v122)
          {
            v4 = v83 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v26 = v148[1];
      a4 = v140;
      if (v27 >= v26)
      {
        goto LABEL_96;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_96:
  v4 = *v141;
  if (*v141)
  {
    v27 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v149;
    if (isUniquelyReferenced_nonNull_native)
    {
      v130 = v27;
    }

    else
    {
LABEL_129:
      v130 = sub_1C6C73C90(v27);
    }

    v155 = v130;
    v27 = *(v130 + 2);
    if (v27 >= 2)
    {
      while (*v148)
      {
        v131 = *&v130[16 * v27];
        v132 = v130;
        v133 = *&v130[16 * v27 + 24];
        sub_1C6BF3C00((*v148 + 8 * v131), (*v148 + 8 * *&v130[16 * v27 + 16]), (*v148 + 8 * v133), v4);
        if (v30)
        {
          goto LABEL_107;
        }

        if (v133 < v131)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_1C6C73C90(v132);
        }

        if ((v27 - 2) >= *(v132 + 2))
        {
          goto LABEL_123;
        }

        v134 = &v132[16 * v27];
        *v134 = v131;
        *(v134 + 1) = v133;
        v155 = v132;
        sub_1C6C73C04(v27 - 1);
        v130 = v155;
        v27 = *(v155 + 2);
        if (v27 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_137;
    }

LABEL_107:
  }

  else
  {
LABEL_141:
    __break(1u);
  }
}

uint64_t sub_1C6BF3090(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v87 = (v8 + 16);
    v88 = *(v8 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v8 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1C6BF411C((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_117;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_118;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_119;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      while (v6 != v14)
      {
        v16 = *(v15 - 8) >= *v15;
        ++v14;
        v15 += 8;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 32 * v7 - 32;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v17);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 8);
            v27 = *(v22 + v11 + 16);
            v28 = *(v22 + v11 + 24);
            if (v11 != v17 || v23 >= v24 + 2)
            {
              v20 = v24[1];
              *v23 = *v24;
              v23[1] = v20;
            }

            v21 = v22 + v17;
            *v21 = v25;
            *(v21 + 8) = v26;
            *(v21 + 16) = v27;
            *(v21 + 24) = v28;
          }

          ++v19;
          v17 -= 32;
          v11 += 32;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v41 = *(v8 + 24);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_1C6B657D0((v41 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v42;
    v43 = v8 + 32;
    v44 = (v8 + 32 + 16 * v5);
    *v44 = v9;
    v44[1] = v7;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v8 + 32);
          v46 = *(v8 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_60:
          if (v48)
          {
            goto LABEL_107;
          }

          v61 = (v8 + 16 * v42);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = (v43 + 16 * v5);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_114;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v42 < 2)
        {
          goto LABEL_115;
        }

        v71 = (v8 + 16 * v42);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_75:
        if (v66)
        {
          goto LABEL_111;
        }

        v74 = (v43 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v42)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v82 = (v43 + 16 * (v5 - 1));
        v83 = *v82;
        v84 = (v43 + 16 * v5);
        v85 = v84[1];
        sub_1C6BF411C((*a3 + 32 * *v82), (*a3 + 32 * *v84), (*a3 + 32 * v85), v96);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v8 + 16);
        if (v5 >= v86)
        {
          goto LABEL_104;
        }

        v42 = v86 - 1;
        result = memmove((v43 + 16 * v5), v84 + 2, 16 * (v86 - 1 - v5));
        *(v8 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v43 + 16 * v42;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_105;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_106;
      }

      v56 = (v8 + 16 * v42);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_108;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_110;
      }

      if (v60 >= v52)
      {
        v78 = (v43 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_116;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v94;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 + 24;
  v31 = v9 - v7;
LABEL_33:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    if (*(v33 - 32) >= *v33)
    {
LABEL_32:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v29)
    {
      break;
    }

    v34 = (v33 - 24);
    v36 = *(v33 - 56);
    v35 = *(v33 - 40);
    *(v33 - 32) = *v33;
    v33 -= 32;
    v37 = *(v33 + 8);
    v38 = *(v33 + 16);
    v39 = *(v33 + 24);
    *v34 = v36;
    v34[1] = v35;
    *(v33 - 24) = v37;
    *(v33 - 16) = v38;
    *(v33 - 8) = v39;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}