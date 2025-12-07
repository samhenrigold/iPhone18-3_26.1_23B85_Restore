@interface EDAMNoteAttributes
+ (id)structFields;
@end

@implementation EDAMNoteAttributes

+ (id)structFields
{
  v30[22] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1524;
  if (!structFields_structFields_1524)
  {
    v29 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"subjectDate"];
    v30[0] = v29;
    v28 = [FATField fieldWithIndex:10 type:4 optional:1 name:@"latitude"];
    v30[1] = v28;
    v27 = [FATField fieldWithIndex:11 type:4 optional:1 name:@"longitude"];
    v30[2] = v27;
    v26 = [FATField fieldWithIndex:12 type:4 optional:1 name:@"altitude"];
    v30[3] = v26;
    v25 = [FATField fieldWithIndex:13 type:11 optional:1 name:@"author"];
    v30[4] = v25;
    v24 = [FATField fieldWithIndex:14 type:11 optional:1 name:@"source"];
    v30[5] = v24;
    v23 = [FATField fieldWithIndex:15 type:11 optional:1 name:@"sourceURL"];
    v30[6] = v23;
    v22 = [FATField fieldWithIndex:16 type:11 optional:1 name:@"sourceApplication"];
    v30[7] = v22;
    v21 = [FATField fieldWithIndex:17 type:10 optional:1 name:@"shareDate"];
    v30[8] = v21;
    v20 = [FATField fieldWithIndex:18 type:10 optional:1 name:@"reminderOrder"];
    v30[9] = v20;
    v19 = [FATField fieldWithIndex:19 type:10 optional:1 name:@"reminderDoneTime"];
    v30[10] = v19;
    v18 = [FATField fieldWithIndex:20 type:10 optional:1 name:@"reminderTime"];
    v30[11] = v18;
    v17 = [FATField fieldWithIndex:21 type:11 optional:1 name:@"placeName"];
    v30[12] = v17;
    v16 = [FATField fieldWithIndex:22 type:11 optional:1 name:@"contentClass"];
    v30[13] = v16;
    v3 = [FATField fieldWithIndex:23 type:12 optional:1 name:@"applicationData" structClass:objc_opt_class()];
    v30[14] = v3;
    v4 = [FATField fieldWithIndex:24 type:11 optional:1 name:@"lastEditedBy"];
    v30[15] = v4;
    v5 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v6 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v7 = [FATField fieldWithIndex:26 type:13 optional:1 name:@"classifications" keyField:v5 valueField:v6];
    v30[16] = v7;
    v8 = [FATField fieldWithIndex:27 type:8 optional:1 name:@"creatorId"];
    v30[17] = v8;
    v9 = [FATField fieldWithIndex:28 type:8 optional:1 name:@"lastEditorId"];
    v30[18] = v9;
    v10 = [FATField fieldWithIndex:29 type:2 optional:1 name:@"sharedWithBusiness"];
    v30[19] = v10;
    v11 = [FATField fieldWithIndex:30 type:11 optional:1 name:@"conflictSourceNoteGuid"];
    v30[20] = v11;
    v12 = [FATField fieldWithIndex:31 type:8 optional:1 name:@"noteTitleQuality"];
    v30[21] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:22];
    v14 = structFields_structFields_1524;
    structFields_structFields_1524 = v13;

    v2 = structFields_structFields_1524;
  }

  return v2;
}

@end