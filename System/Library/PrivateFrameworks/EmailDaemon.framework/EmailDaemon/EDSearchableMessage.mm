@interface EDSearchableMessage
+ (NSString)userHandle;
+ (id)peopleFromCommentedAddresses:(id)addresses;
- (EDSearchableMessage)init;
- (EDSearchableMessage)initWithSubjectWithoutPrefix:(id)prefix dateSent:(id)sent dateReceived:(id)received isEncrypted:(BOOL)encrypted priority:(id)priority senders:(id)senders to:(id)to cc:(id)self0 bcc:(id)self1 allHeaders:(id)self2 htmlContent:(id)self3 summary:(id)self4 messageID:(id)self5 notificationID:(id)self6 isPartOfExistingThread:(BOOL)self7 hasCompleteData:(BOOL)self8 accountIdentifier:(id)self9 accountIsManaged:(BOOL)managed accountType:(id)type accountEmailAddresses:(id)addresses update:(id)update attachments:(id)attachments category:(id)category;
- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier;
@end

@implementation EDSearchableMessage

+ (NSString)userHandle
{
  if (qword_1EDC93E38 != -1)
  {
    swift_once();
  }

  v2 = sub_1C645C844();

  return v2;
}

+ (id)peopleFromCommentedAddresses:(id)addresses
{
  v3 = sub_1C645CA14();
  sub_1C643361C(v3);

  sub_1C6401D00(0, &qword_1EDC93598, 0x1E6964E50);
  v4 = sub_1C645CA04();

  return v4;
}

- (EDSearchableMessage)initWithSubjectWithoutPrefix:(id)prefix dateSent:(id)sent dateReceived:(id)received isEncrypted:(BOOL)encrypted priority:(id)priority senders:(id)senders to:(id)to cc:(id)self0 bcc:(id)self1 allHeaders:(id)self2 htmlContent:(id)self3 summary:(id)self4 messageID:(id)self5 notificationID:(id)self6 isPartOfExistingThread:(BOOL)self7 hasCompleteData:(BOOL)self8 accountIdentifier:(id)self9 accountIsManaged:(BOOL)managed accountType:(id)type accountEmailAddresses:(id)addresses update:(id)update attachments:(id)attachments category:(id)category
{
  encryptedCopy = encrypted;
  selfCopy = self;
  priorityCopy = priority;
  attachmentsCopy = attachments;
  updateCopy = update;
  categoryCopy = category;
  typeCopy = type;
  identifierCopy = identifier;
  iDCopy = iD;
  addressesCopy = addresses;
  dCopy = d;
  summaryCopy = summary;
  contentCopy = content;
  v25 = sub_1C645C674();
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v61[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v61[-v29];
  v31 = sub_1C645C874();
  v83 = v32;
  v84 = v31;
  v85 = v30;
  sub_1C645C654();
  v86 = v28;
  sub_1C645C654();
  v82 = sub_1C645CA14();
  v81 = sub_1C645CA14();
  v79 = sub_1C645CA14();
  v78 = sub_1C645CA14();
  if (headers)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4450, &qword_1C6473900);
    v77 = sub_1C645C7E4();
  }

  else
  {
    v77 = 0;
  }

  v66 = typeCopy;
  addressesCopy = addressesCopy;
  updateCopy = updateCopy;
  categoryCopy = categoryCopy;
  attachmentsCopy = attachmentsCopy;
  v33 = identifierCopy;
  v34 = iDCopy;
  v35 = dCopy;
  v36 = summaryCopy;
  priorityCopy = priorityCopy;
  if (contentCopy)
  {
    v37 = contentCopy;
    v38 = sub_1C645C594();
    typeCopy = v39;
    contentCopy = v38;

    if (v36)
    {
      goto LABEL_6;
    }
  }

  else
  {
    typeCopy = 0xF000000000000000;
    contentCopy = 0;
    if (v36)
    {
LABEL_6:
      summaryCopy = sub_1C645C874();
      v65 = v40;

      if (v35)
      {
        goto LABEL_7;
      }

LABEL_11:
      dCopy = 0;
      v64 = 0;
      if (v34)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  summaryCopy = 0;
  v65 = 0;
  if (!v35)
  {
    goto LABEL_11;
  }

LABEL_7:
  dCopy = sub_1C645C874();
  v64 = v41;

  if (v34)
  {
LABEL_8:
    iDCopy = sub_1C645C874();
    v63 = v42;

    goto LABEL_13;
  }

LABEL_12:
  iDCopy = 0;
  v63 = 0;
LABEL_13:
  threadCopy = thread;
  if (v33)
  {
    v43 = sub_1C645C874();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = v66;
  v47 = sub_1C645C874();
  v49 = v48;

  v50 = addressesCopy;
  v51 = sub_1C645CA14();

  v52 = categoryCopy;
  v53 = attachmentsCopy;
  v54 = updateCopy;
  v60 = v47;
  v55 = typeCopy;
  v56 = contentCopy;
  v57 = priorityCopy;
  v58 = sub_1C6433808(v84, v83, v85, v86, encryptedCopy, priorityCopy, v82, v81, v79, v78, v77, contentCopy, typeCopy, summaryCopy, v65, dCopy, v64, iDCopy, v63, threadCopy, data, v43, v45, managed, v60, v49, v51, updateCopy, attachmentsCopy, categoryCopy);

  sub_1C641711C(v56, v55);
  return v58;
}

- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier
{
  v6 = type metadata accessor for SearchableMessage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C645C874();
  v11 = v10;
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessage__underlying, v14);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C643C638(attributesCopy, v9, v11);

  sub_1C6434174(v8, type metadata accessor for SearchableMessage);
}

- (EDSearchableMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end