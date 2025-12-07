@interface EDSearchableAttachment
- (EDSearchableAttachment)init;
- (EDSearchableAttachment)initWithContentURL:(id)l contentType:(id)type name:(id)name accountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d messageIDHeader:(id)header dateSent:(id)self0 dateReceived:(id)self1 sender:(id)self2 recipients:(id)self3 downloadDate:(id)self4;
- (NSString)displayName;
- (NSURL)contentURL;
- (void)addToAttributes:(id)attributes;
@end

@implementation EDSearchableAttachment

- (EDSearchableAttachment)initWithContentURL:(id)l contentType:(id)type name:(id)name accountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d messageIDHeader:(id)header dateSent:(id)self0 dateReceived:(id)self1 sender:(id)self2 recipients:(id)self3 downloadDate:(id)self4
{
  identifierCopy = identifier;
  selfCopy = self;
  dateCopy = date;
  receivedCopy = received;
  recipientsCopy = recipients;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v74 = &senderCopy - v19;
  v20 = sub_1C645C674();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v71 = &senderCopy - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &senderCopy - v23;
  v24 = sub_1C645C794();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &senderCopy - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C645C514();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v68 = &senderCopy - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C645C474();
  typeCopy = type;
  nameCopy = name;
  identifiersCopy = identifiers;
  dCopy = d;
  headerCopy = header;
  sentCopy = sent;
  v34 = receivedCopy;
  v62 = recipientsCopy;
  v35 = identifierCopy;
  senderCopy = sender;
  senderCopy2 = sender;
  v61 = dateCopy;
  identifierCopy = v26;
  sub_1C645C784();

  v37 = sub_1C645C874();
  receivedCopy = v38;
  recipientsCopy = v37;

  if (v35)
  {
    v39 = sub_1C645C874();
    v63 = v40;
    v64 = v39;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v41 = sub_1C645CA14();

  v42 = sub_1C645C874();
  v44 = v43;

  v45 = v70;
  sub_1C645C654();

  v46 = v71;
  sub_1C645C654();

  if (senderCopy2)
  {
    v47 = sub_1C645C874();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = v62;
  v51 = sub_1C645CA14();

  v52 = v61;
  if (v61)
  {
    v53 = v74;
    sub_1C645C654();

    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v74;
  }

  (*(v72 + 56))(v53, v54, 1, v73);
  v59 = v53;
  commentedAddress._countAndFlagsBits = v47;
  commentedAddress._object = v49;
  v55 = dCopy;
  v56 = sub_1C64230E8(v68, identifierCopy, recipientsCopy, receivedCopy, v64, v63, v41, dCopy, v42, v44, v45, v46, commentedAddress, v51, v59);

  return v56;
}

- (NSURL)contentURL
{
  v3 = type metadata accessor for SearchableAttachment(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C645C514();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableAttachment__underlying, v13);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v5, v6);
  sub_1C642308C(v5, v10);
  v11 = sub_1C645C444();
  (*(v7 + 8))(v9, v6);

  return v11;
}

- (NSString)displayName
{
  v3 = type metadata accessor for SearchableAttachment(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableAttachment__underlying, v9);
  swift_dynamicCast();

  sub_1C642308C(v5, v6);
  v7 = sub_1C645C844();

  return v7;
}

- (void)addToAttributes:(id)attributes
{
  v5 = type metadata accessor for SearchableAttachment(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableAttachment__underlying, v11);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C6438E80(attributesCopy);

  sub_1C642308C(v7, v10);
}

- (EDSearchableAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end