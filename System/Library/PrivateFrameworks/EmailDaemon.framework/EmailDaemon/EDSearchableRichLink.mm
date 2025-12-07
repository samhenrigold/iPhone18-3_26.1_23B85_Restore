@interface EDSearchableRichLink
+ (NSString)idAttributeKey;
+ (NSString)titleAttributeKey;
+ (NSString)urlAttributeKey;
- (EDSearchableRichLink)init;
- (EDSearchableRichLink)initWithAccountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d id:(id)id title:(id)title url:(id)url dateSent:(id)sent dateReceived:(id)self0 sender:(id)self1 recipients:(id)self2;
- (void)addToAttributes:(id)attributes;
@end

@implementation EDSearchableRichLink

+ (NSString)idAttributeKey
{
  v2 = sub_1C645C844();

  return v2;
}

+ (NSString)titleAttributeKey
{
  v2 = sub_1C645C844();

  return v2;
}

+ (NSString)urlAttributeKey
{
  v2 = sub_1C645C844();

  return v2;
}

- (EDSearchableRichLink)initWithAccountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d id:(id)id title:(id)title url:(id)url dateSent:(id)sent dateReceived:(id)self0 sender:(id)self1 recipients:(id)self2
{
  dCopy = d;
  idCopy = id;
  selfCopy = self;
  receivedCopy = received;
  v14 = sub_1C645C674();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &recipientsCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &recipientsCopy - v18;
  if (identifier)
  {
    v20 = sub_1C645C874();
    v40 = v21;
    v41 = v20;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  senderCopy = sender;
  recipientsCopy = recipients;
  v38 = sub_1C645CA14();
  if (title)
  {
    v23 = sub_1C645C874();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = sub_1C645C874();
  v28 = v27;
  sub_1C645C654();
  sub_1C645C654();
  if (sender)
  {
    senderCopy = sub_1C645C874();
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = dCopy;
  v32 = idCopy;
  v33 = sub_1C645CA14();
  v36._object = v30;
  v36._countAndFlagsBits = senderCopy;
  v34 = sub_1C643690C(v41, v40, v38, v31, v32, v23, v25, v26, v28, v19, v17, v36, v33);

  return v34;
}

- (void)addToAttributes:(id)attributes
{
  v5 = type metadata accessor for SearchableRichLink(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableRichLink__underlying, v11);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C6443AE0(attributesCopy);

  sub_1C64368B0(v7, v10);
}

- (EDSearchableRichLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end