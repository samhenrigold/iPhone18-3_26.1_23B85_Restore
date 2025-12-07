@interface EDSearchableMessageUpdate
- (EDSearchableMessageUpdate)init;
- (EDSearchableMessageUpdate)initWithConversationIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers gmailLabels:(id)labels isLikelyJunk:(id)junk dateLastViewed:(id)viewed flags:(id)flags authenticationState:(id)state messageID:(id)self0 messageIDHeader:(id)self1 subjectWithoutPrefix:(id)self2;
- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier;
@end

@implementation EDSearchableMessageUpdate

- (EDSearchableMessageUpdate)initWithConversationIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers gmailLabels:(id)labels isLikelyJunk:(id)junk dateLastViewed:(id)viewed flags:(id)flags authenticationState:(id)state messageID:(id)self0 messageIDHeader:(id)self1 subjectWithoutPrefix:(id)self2
{
  selfCopy = self;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_1C645C874();
  v40 = v19;
  v41 = v18;
  v39 = sub_1C645CA14();
  sub_1C6401D00(0, &qword_1EDC93590, 0x1E696AD98);
  v38 = sub_1C645CA14();
  if (viewed)
  {
    sub_1C645C654();
    v20 = sub_1C645C674();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  }

  else
  {
    v21 = sub_1C645C674();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  headerCopy = header;
  if (d)
  {
    v37 = sub_1C645C874();
    v24 = v23;
    if (header)
    {
LABEL_6:
      headerCopy = sub_1C645C874();
      v26 = v25;
      goto LABEL_9;
    }
  }

  else
  {
    v37 = 0;
    v24 = 0;
    if (header)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
LABEL_9:
  junkCopy = junk;
  flagsCopy = flags;
  stateCopy = state;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v31 = prefixCopy;
    v32 = sub_1C645C874();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = sub_1C64351A8(v41, v40, v39, v38, junkCopy, v17, flagsCopy, stateCopy, v37, v24, headerCopy, v26, v32, v34);

  return v35;
}

- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier
{
  v6 = type metadata accessor for SearchableMessageUpdate(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C645C874();
  v11 = v10;
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageUpdate__underlying, v14);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C6441998(attributesCopy, v9, v11);

  sub_1C643514C(v8);
}

- (EDSearchableMessageUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end