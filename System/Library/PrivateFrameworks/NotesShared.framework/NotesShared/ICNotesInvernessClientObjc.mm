@interface ICNotesInvernessClientObjc
- (ICNotesInvernessClientObjc)init;
- (ICNotesInvernessClientObjc)initWithContainer:(id)container environment:(int64_t)environment localURLString:(id)string;
- (NSString)localURLString;
- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)number previousVersion:(id)version currentBuildNumber:(id)buildNumber currentVersion:(id)currentVersion platformName:(id)name continuationToken:(id)token callback:(id)callback;
- (void)runGarbageCollectorWithProgress:(id)progress callback:(id)callback;
- (void)sendMentionNotificationWithRecipientUserId:(id)id senderName:(id)name noteTitle:(id)title mentionSnippet:(id)snippet shareRecordName:(id)recordName shareOwnerUserId:(id)userId noteRecordName:(id)noteRecordName inlineAttachmentRecordName:(id)self0 callback:(id)self1;
@end

@implementation ICNotesInvernessClientObjc

- (NSString)localURLString
{

  v2 = sub_2150A4A90();

  return v2;
}

- (ICNotesInvernessClientObjc)initWithContainer:(id)container environment:(int64_t)environment localURLString:(id)string
{
  v8 = sub_2150A4AD0();
  *(self + OBJC_IVAR___ICNotesInvernessClientObjc_container) = container;
  *(self + OBJC_IVAR___ICNotesInvernessClientObjc_environment) = environment;
  v9 = (self + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString);
  *v9 = v8;
  v9[1] = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for NotesInvernessClient();
  containerCopy = container;
  return [(ICNotesInvernessClientObjc *)&v13 init];
}

- (void)sendMentionNotificationWithRecipientUserId:(id)id senderName:(id)name noteTitle:(id)title mentionSnippet:(id)snippet shareRecordName:(id)recordName shareOwnerUserId:(id)userId noteRecordName:(id)noteRecordName inlineAttachmentRecordName:(id)self0 callback:(id)self1
{
  selfCopy = self;
  attachmentRecordNameCopy = attachmentRecordName;
  v47 = type metadata accessor for MentionNotificationRequestV2(0);
  MEMORY[0x28223BE20](v47, v11);
  v48 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _Block_copy(callback);
  v43 = sub_2150A4AD0();
  v14 = v13;
  v40 = sub_2150A4AD0();
  v16 = v15;
  v41 = v15;
  v39 = sub_2150A4AD0();
  v18 = v17;
  v42 = v17;
  v38 = sub_2150A4AD0();
  v20 = v19;
  v44 = v19;
  v37 = sub_2150A4AD0();
  v22 = v21;
  v36 = sub_2150A4AD0();
  v24 = v23;
  v35 = sub_2150A4AD0();
  v26 = v25;
  v27 = sub_2150A4AD0();
  v29 = v28;
  attachmentRecordNameCopy = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = v45;
  v50 = v43;
  v51 = v14;
  v52 = v40;
  v53 = v16;
  v54 = v39;
  v55 = v18;
  v56 = v38;
  v57 = v20;
  v58 = v37;
  v59 = v22;
  v60 = v36;
  v61 = v24;
  v62 = v35;
  v63 = v26;
  v64 = v27;
  v65 = v29;
  sub_215007384(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2, &protocol conformance descriptor for MentionNotificationRequestV2);
  v31 = selfCopy;
  v32 = v48;
  sub_2150A3DB0();

  sub_215006640();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_215008AD8;
  *(v33 + 24) = v30;

  sub_214FC97AC(v32, sub_215008AD4, v33);

  sub_215008A3C(v32, type metadata accessor for MentionNotificationRequestV2);
}

- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)number previousVersion:(id)version currentBuildNumber:(id)buildNumber currentVersion:(id)currentVersion platformName:(id)name continuationToken:(id)token callback:(id)callback
{
  selfCopy = self;
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  MEMORY[0x28223BE20](updated, v10);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _Block_copy(callback);
  v35 = sub_2150A4AD0();
  v13 = v12;
  v34 = sub_2150A4AD0();
  v15 = v14;
  v33 = sub_2150A4AD0();
  v17 = v16;
  v18 = sub_2150A4AD0();
  v20 = v19;
  v21 = sub_2150A4AD0();
  v23 = v22;
  tokenCopy = token;
  v37 = selfCopy;
  v25 = sub_2150A37B0();
  selfCopy = v25;
  v27 = v26;

  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = v36;
  v41 = v29;
  v42 = v13;
  v43 = v34;
  v44 = v15;
  v45 = v18;
  v46 = v20;
  v47 = v33;
  v48 = v17;
  v49 = v21;
  v50 = v23;
  v51 = v25;
  v52 = v27;
  sub_215007384(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest, &protocol conformance descriptor for DidCompleteInstallOrUpdateRequest);
  v30 = v40;
  sub_2150A3DB0();

  v31 = v37;
  sub_215006640();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2150088A8;
  *(v32 + 24) = v28;

  sub_214FC9984(v30, sub_215008AD0, v32);

  sub_214F7EDE4(selfCopy, v27);
  sub_215008A3C(v30, type metadata accessor for DidCompleteInstallOrUpdateRequest);
}

- (void)runGarbageCollectorWithProgress:(id)progress callback:(id)callback
{
  v6 = _Block_copy(callback);
  _Block_copy(v6);
  progressCopy = progress;
  selfCopy = self;
  sub_2150085D4(progress, 0, 0xF000000000000000, selfCopy, v6);
  _Block_release(v6);

  _Block_release(v6);
}

- (ICNotesInvernessClientObjc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end