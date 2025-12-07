@interface INNotebookDomainLoadIntentDescriptionIfNeeded
@end

@implementation INNotebookDomainLoadIntentDescriptionIfNeeded

void ___INNotebookDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v120[8] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v106 = [[INIntentSlotDescription alloc] initWithName:@"taskReference" tag:8 facadePropertyName:@"taskReference" dataPropertyName:@"taskReference" isExtended:0 isPrivate:1 valueType:136 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9CD8 provideOptionsSelectorStrings:&unk_1F02D9CF0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTaskReferenceForAddTasks_withCompletion_, sel_resolveTaskReferenceForAddTasks_completion_, 0];
  v119[0] = v106;
  v105 = [[INIntentSlotDescription alloc] initWithName:@"targetTaskListMembers" tag:10 facadePropertyName:@"targetTaskListMembers" dataPropertyName:@"targetTaskListMembers" isExtended:0 isPrivate:1 valueType:10 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9D08 provideOptionsSelectorStrings:&unk_1F02D9D20 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTaskListMembersForAddTasks_withCompletion_, sel_resolveTargetTaskListMembersForAddTasks_completion_, 0];
  v119[1] = v105;
  v104 = [[INIntentSlotDescription alloc] initWithName:@"targetTaskList" tag:2 facadePropertyName:@"targetTaskList" dataPropertyName:@"targetTaskList" isExtended:0 isPrivate:0 valueType:135 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9D38 provideOptionsSelectorStrings:&unk_1F02D9D50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTaskListForAddTasks_completion_, sel_resolveTargetTaskListForAddTasks_withCompletion_, 0];
  v119[2] = v104;
  v103 = [[INIntentSlotDescription alloc] initWithName:@"taskTitles" tag:3 facadePropertyName:@"taskTitles" dataPropertyName:@"taskTitles" isExtended:0 isPrivate:0 valueType:12 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9D68 provideOptionsSelectorStrings:&unk_1F02D9D80 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTaskTitlesForAddTasks_withCompletion_, sel_resolveTaskTitlesForAddTasks_completion_, 0];
  v119[3] = v103;
  v102 = [[INIntentSlotDescription alloc] initWithName:@"spatialEventTrigger" tag:5 facadePropertyName:@"spatialEventTrigger" dataPropertyName:@"spatialEventTrigger" isExtended:0 isPrivate:0 valueType:138 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9D98 provideOptionsSelectorStrings:&unk_1F02D9DB0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSpatialEventTriggerForAddTasks_withCompletion_, sel_resolveSpatialEventTriggerForAddTasks_completion_, 0];
  v119[4] = v102;
  v101 = [[INIntentSlotDescription alloc] initWithName:@"temporalEventTrigger" tag:6 facadePropertyName:@"temporalEventTrigger" dataPropertyName:@"temporalEventTrigger" isExtended:0 isPrivate:0 valueType:137 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9DC8 provideOptionsSelectorStrings:&unk_1F02D9DE0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemporalEventTriggerForAddTasks_completion_, sel_resolveTemporalEventTriggerForAddTasks_withCompletion_, 0];
  v119[5] = v101;
  v100 = [[INIntentSlotDescription alloc] initWithName:@"priority" tag:11 facadePropertyName:@"priority" dataPropertyName:@"priority" isExtended:0 isPrivate:0 valueType:141 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9DF8 provideOptionsSelectorStrings:&unk_1F02D9E10 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePriorityForAddTasks_withCompletion_, sel_resolvePriorityForAddTasks_completion_, 0];
  v119[6] = v100;
  v99 = [[INIntentSlotDescription alloc] initWithName:@"contactEventTrigger" tag:7 facadePropertyName:@"contactEventTrigger" dataPropertyName:@"contactEventTrigger" isExtended:0 isPrivate:1 valueType:139 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9E28 provideOptionsSelectorStrings:&unk_1F02D9E40 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactEventTriggerForAddTasks_withCompletion_, sel_resolveContactEventTriggerForAddTasks_completion_, 0];
  v119[7] = v99;
  v98 = [[INIntentSlotDescription alloc] initWithName:@"intent" tag:9 facadePropertyName:@"intent" dataPropertyName:@"intent" isExtended:0 isPrivate:1 valueType:37 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v119[8] = v98;
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:9];
  v96 = _INIntentSchemaBuildIntentSlotDescriptionMap(v97);
  v95 = [(INIntentDescription *)v0 initWithName:@"AddTasksIntent" responseName:@"AddTasksIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.notes.AddTasksIntent" isPrivate:0 handleSelector:sel_handleAddTasks_completion_ confirmSelector:sel_confirmAddTasks_completion_ slotsByName:v96];
  v120[0] = v95;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v94 = [[INIntentSlotDescription alloc] initWithName:@"targetNote" tag:2 facadePropertyName:@"targetNote" dataPropertyName:@"targetNote" isExtended:0 isPrivate:0 valueType:133 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9E58 provideOptionsSelectorStrings:&unk_1F02D9E70 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetNoteForAppendToNote_withCompletion_, sel_resolveTargetNoteForAppendToNote_completion_, 0];
  v118[0] = v94;
  v93 = [[INIntentSlotDescription alloc] initWithName:@"content" tag:3 facadePropertyName:@"content" dataPropertyName:@"content" isExtended:0 isPrivate:0 valueType:132 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9E88 provideOptionsSelectorStrings:&unk_1F02D9EA0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContentForAppendToNote_withCompletion_, sel_resolveContentForAppendToNote_completion_, 0];
  v118[1] = v93;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
  v91 = _INIntentSchemaBuildIntentSlotDescriptionMap(v92);
  v90 = [(INIntentDescription *)v3 initWithName:@"AppendToNoteIntent" responseName:@"AppendToNoteIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.notes.AppendToNoteIntent" isPrivate:0 handleSelector:sel_handleAppendToNote_completion_ confirmSelector:sel_confirmAppendToNote_completion_ slotsByName:v91];
  v120[1] = v90;
  v83 = [INIntentDescription alloc];
  v81 = objc_opt_class();
  v79 = objc_opt_class();
  v89 = [[INIntentSlotDescription alloc] initWithName:@"title" tag:2 facadePropertyName:@"title" dataPropertyName:@"title" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9EB8 provideOptionsSelectorStrings:&unk_1F02D9ED0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTitleForCreateNote_withCompletion_, sel_resolveTitleForCreateNote_completion_, 0];
  v117[0] = v89;
  v88 = [[INIntentSlotDescription alloc] initWithName:@"content" tag:3 facadePropertyName:@"content" dataPropertyName:@"content" isExtended:0 isPrivate:0 valueType:132 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9EE8 provideOptionsSelectorStrings:&unk_1F02D9F00 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContentForCreateNote_withCompletion_, sel_resolveContentForCreateNote_completion_, 0];
  v117[1] = v88;
  v87 = [[INIntentSlotDescription alloc] initWithName:@"groupName" tag:4 facadePropertyName:@"groupName" dataPropertyName:@"groupName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9F18 provideOptionsSelectorStrings:&unk_1F02D9F30 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGroupNameForCreateNote_withCompletion_, sel_resolveGroupNameForCreateNote_completion_, 0];
  v117[2] = v87;
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
  v85 = _INIntentSchemaBuildIntentSlotDescriptionMap(v86);
  v84 = [(INIntentDescription *)v83 initWithName:@"CreateNoteIntent" responseName:@"CreateNoteIntentResponse" facadeClass:v81 dataClass:v79 type:@"sirikit.intent.notes.CreateNoteIntent" isPrivate:0 handleSelector:sel_handleCreateNote_completion_ confirmSelector:sel_confirmCreateNote_completion_ slotsByName:v85];
  v120[2] = v84;
  v74 = [INIntentDescription alloc];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v82 = [[INIntentSlotDescription alloc] initWithName:@"title" tag:2 facadePropertyName:@"title" dataPropertyName:@"title" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9F48 provideOptionsSelectorStrings:&unk_1F02D9F60 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTitleForCreateTaskList_withCompletion_, sel_resolveTitleForCreateTaskList_completion_, 0];
  v116[0] = v82;
  v80 = [[INIntentSlotDescription alloc] initWithName:@"taskTitles" tag:3 facadePropertyName:@"taskTitles" dataPropertyName:@"taskTitles" isExtended:0 isPrivate:0 valueType:12 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9F78 provideOptionsSelectorStrings:&unk_1F02D9F90 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTaskTitlesForCreateTaskList_withCompletion_, sel_resolveTaskTitlesForCreateTaskList_completion_, 0];
  v116[1] = v80;
  v78 = [[INIntentSlotDescription alloc] initWithName:@"groupName" tag:4 facadePropertyName:@"groupName" dataPropertyName:@"groupName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9FA8 provideOptionsSelectorStrings:&unk_1F02D9FC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGroupNameForCreateTaskList_withCompletion_, sel_resolveGroupNameForCreateTaskList_completion_, 0];
  v116[2] = v78;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
  v76 = _INIntentSchemaBuildIntentSlotDescriptionMap(v77);
  v75 = [(INIntentDescription *)v74 initWithName:@"CreateTaskListIntent" responseName:@"CreateTaskListIntentResponse" facadeClass:v6 dataClass:v7 type:@"sirikit.intent.notes.CreateTaskListIntent" isPrivate:0 handleSelector:sel_handleCreateTaskList_completion_ confirmSelector:sel_confirmCreateTaskList_completion_ slotsByName:v76];
  v120[3] = v75;
  v8 = [INIntentDescription alloc];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v73 = [[INIntentSlotDescription alloc] initWithName:@"taskList" tag:2 facadePropertyName:@"taskList" dataPropertyName:@"taskList" isExtended:0 isPrivate:0 valueType:135 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9FD8 provideOptionsSelectorStrings:&unk_1F02D9FF0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTaskListForDeleteTasks_withCompletion_, sel_resolveTaskListForDeleteTasks_completion_, 0];
  v115[0] = v73;
  v72 = [[INIntentSlotDescription alloc] initWithName:@"tasks" tag:3 facadePropertyName:@"tasks" dataPropertyName:@"tasks" isExtended:0 isPrivate:0 valueType:134 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DA008 provideOptionsSelectorStrings:&unk_1F02DA020 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTasksForDeleteTasks_withCompletion_, sel_resolveTasksForDeleteTasks_completion_, 0];
  v115[1] = v72;
  v71 = [[INIntentSlotDescription alloc] initWithName:@"all" tag:4 facadePropertyName:@"all" dataPropertyName:@"all" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v115[2] = v71;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
  v69 = _INIntentSchemaBuildIntentSlotDescriptionMap(v70);
  v68 = [(INIntentDescription *)v8 initWithName:@"DeleteTasksIntent" responseName:@"DeleteTasksIntentResponse" facadeClass:v9 dataClass:v10 type:@"sirikit.intent.notes.DeleteTasksIntent" isPrivate:0 handleSelector:sel_handleDeleteTasks_completion_ confirmSelector:sel_confirmDeleteTasks_completion_ slotsByName:v69];
  v120[4] = v68;
  v51 = [INIntentDescription alloc];
  v49 = objc_opt_class();
  v11 = objc_opt_class();
  v67 = [[INIntentSlotDescription alloc] initWithName:@"title" tag:2 facadePropertyName:@"title" dataPropertyName:@"title" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA038 provideOptionsSelectorStrings:&unk_1F02DA050 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTitleForSearchForNotebookItems_withCompletion_, sel_resolveTitleForSearchForNotebookItems_completion_, 0];
  v114[0] = v67;
  v66 = [[INIntentSlotDescription alloc] initWithName:@"content" tag:3 facadePropertyName:@"content" dataPropertyName:@"content" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA068 provideOptionsSelectorStrings:&unk_1F02DA080 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContentForSearchForNotebookItems_withCompletion_, sel_resolveContentForSearchForNotebookItems_completion_, 0];
  v114[1] = v66;
  v65 = [[INIntentSlotDescription alloc] initWithName:@"itemType" tag:4 facadePropertyName:@"itemType" dataPropertyName:@"itemType" isExtended:0 isPrivate:0 valueType:129 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA098 provideOptionsSelectorStrings:&unk_1F02DA0B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveItemTypeForSearchForNotebookItems_withCompletion_, sel_resolveItemTypeForSearchForNotebookItems_completion_, 0];
  v114[2] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"status" tag:5 facadePropertyName:@"status" dataPropertyName:@"status" isExtended:0 isPrivate:0 valueType:128 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA0C8 provideOptionsSelectorStrings:&unk_1F02DA0E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveStatusForSearchForNotebookItems_withCompletion_, sel_resolveStatusForSearchForNotebookItems_completion_, 0];
  v114[3] = v64;
  v63 = [[INIntentSlotDescription alloc] initWithName:@"location" tag:6 facadePropertyName:@"location" dataPropertyName:@"location" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA0F8 provideOptionsSelectorStrings:&unk_1F02DA110 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLocationForSearchForNotebookItems_withCompletion_, sel_resolveLocationForSearchForNotebookItems_completion_, 0];
  v114[4] = v63;
  v62 = [[INIntentSlotDescription alloc] initWithName:@"locationSearchType" tag:7 facadePropertyName:@"locationSearchType" dataPropertyName:@"locationSearchType" isExtended:0 isPrivate:0 valueType:127 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA128 provideOptionsSelectorStrings:&unk_1F02DA140 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLocationSearchTypeForSearchForNotebookItems_withCompletion_, sel_resolveLocationSearchTypeForSearchForNotebookItems_completion_, 0];
  v114[5] = v62;
  v61 = [[INIntentSlotDescription alloc] initWithName:@"dateTime" tag:8 facadePropertyName:@"dateTime" dataPropertyName:@"dateTime" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA158 provideOptionsSelectorStrings:&unk_1F02DA170 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateTimeForSearchForNotebookItems_withCompletion_, sel_resolveDateTimeForSearchForNotebookItems_completion_, 0];
  v114[6] = v61;
  v60 = [[INIntentSlotDescription alloc] initWithName:@"dateSearchType" tag:9 facadePropertyName:@"dateSearchType" dataPropertyName:@"dateSearchType" isExtended:0 isPrivate:0 valueType:126 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA188 provideOptionsSelectorStrings:&unk_1F02DA1A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDateSearchTypeForSearchForNotebookItems_withCompletion_, sel_resolveDateSearchTypeForSearchForNotebookItems_completion_, 0];
  v114[7] = v60;
  v59 = [[INIntentSlotDescription alloc] initWithName:@"temporalEventTriggerType" tag:11 facadePropertyName:@"temporalEventTriggerTypes" dataPropertyName:@"temporalEventTriggerTypes" isExtended:0 isPrivate:0 valueType:140 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DA1B8 provideOptionsSelectorStrings:&unk_1F02DA1D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemporalEventTriggerTypesForSearchForNotebookItems_withCompletion_, sel_resolveTemporalEventTriggerTypesForSearchForNotebookItems_completion_, 0];
  v114[8] = v59;
  v58 = [[INIntentSlotDescription alloc] initWithName:@"taskPriority" tag:12 facadePropertyName:@"taskPriority" dataPropertyName:@"taskPriority" isExtended:0 isPrivate:0 valueType:141 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA1E8 provideOptionsSelectorStrings:&unk_1F02DA200 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTaskPriorityForSearchForNotebookItems_withCompletion_, sel_resolveTaskPriorityForSearchForNotebookItems_completion_, 0];
  v114[9] = v58;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"groupName" tag:50 facadePropertyName:@"groupName" dataPropertyName:@"groupName" isExtended:0 isPrivate:1 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA218 provideOptionsSelectorStrings:&unk_1F02DA230 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGroupNameForSearchForNotebookItems_withCompletion_, sel_resolveGroupNameForSearchForNotebookItems_completion_, 0];
  v114[10] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"includeAllNoteContents" tag:51 facadePropertyName:@"includeAllNoteContents" dataPropertyName:@"includeAllNoteContents" isExtended:0 isPrivate:1 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v114[11] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"notebookItemIdentifier" tag:10 facadePropertyName:@"notebookItemIdentifier" dataPropertyName:@"notebookItemIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v114[12] = v55;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:13];
  v53 = _INIntentSchemaBuildIntentSlotDescriptionMap(v54);
  v52 = [(INIntentDescription *)v51 initWithName:@"SearchForNotebookItemsIntent" responseName:@"SearchForNotebookItemsIntentResponse" facadeClass:v49 dataClass:v11 type:@"sirikit.intent.notes.SearchForNotebookItemsIntent" isPrivate:0 handleSelector:sel_handleSearchForNotebookItems_completion_ confirmSelector:sel_confirmSearchForNotebookItems_completion_ slotsByName:v53];
  v120[5] = v52;
  v43 = [INIntentDescription alloc];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v50 = [[INIntentSlotDescription alloc] initWithName:@"targetTask" tag:2 facadePropertyName:@"targetTask" dataPropertyName:@"targetTask" isExtended:0 isPrivate:0 valueType:134 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA248 provideOptionsSelectorStrings:&unk_1F02DA260 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTaskForSetTaskAttribute_withCompletion_, sel_resolveTargetTaskForSetTaskAttribute_completion_, 0];
  v113[0] = v50;
  v48 = [[INIntentSlotDescription alloc] initWithName:@"taskTitle" tag:9 facadePropertyName:@"taskTitle" dataPropertyName:@"taskTitle" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA278 provideOptionsSelectorStrings:&unk_1F02DA290 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTaskTitleForSetTaskAttribute_withCompletion_, sel_resolveTaskTitleForSetTaskAttribute_completion_, 0];
  v113[1] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"status" tag:3 facadePropertyName:@"status" dataPropertyName:@"status" isExtended:0 isPrivate:0 valueType:128 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA2A8 provideOptionsSelectorStrings:&unk_1F02DA2C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveStatusForSetTaskAttribute_withCompletion_, sel_resolveStatusForSetTaskAttribute_completion_, 0];
  v113[2] = v47;
  v46 = [[INIntentSlotDescription alloc] initWithName:@"priority" tag:8 facadePropertyName:@"priority" dataPropertyName:@"priority" isExtended:0 isPrivate:0 valueType:141 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA2D8 provideOptionsSelectorStrings:&unk_1F02DA2F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePriorityForSetTaskAttribute_withCompletion_, sel_resolvePriorityForSetTaskAttribute_completion_, 0];
  v113[3] = v46;
  v45 = [[INIntentSlotDescription alloc] initWithName:@"spatialEventTrigger" tag:5 facadePropertyName:@"spatialEventTrigger" dataPropertyName:@"spatialEventTrigger" isExtended:0 isPrivate:0 valueType:138 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA308 provideOptionsSelectorStrings:&unk_1F02DA320 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSpatialEventTriggerForSetTaskAttribute_withCompletion_, sel_resolveSpatialEventTriggerForSetTaskAttribute_completion_, 0];
  v113[4] = v45;
  v42 = [[INIntentSlotDescription alloc] initWithName:@"temporalEventTrigger" tag:6 facadePropertyName:@"temporalEventTrigger" dataPropertyName:@"temporalEventTrigger" isExtended:0 isPrivate:0 valueType:137 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA338 provideOptionsSelectorStrings:&unk_1F02DA350 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemporalEventTriggerForSetTaskAttribute_completion_, sel_resolveTemporalEventTriggerForSetTaskAttribute_withCompletion_, 0];
  v113[5] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"contactEventTrigger" tag:7 facadePropertyName:@"contactEventTrigger" dataPropertyName:@"contactEventTrigger" isExtended:0 isPrivate:1 valueType:139 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA368 provideOptionsSelectorStrings:&unk_1F02DA380 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveContactEventTriggerForSetTaskAttribute_withCompletion_, sel_resolveContactEventTriggerForSetTaskAttribute_completion_, 0];
  v113[6] = v41;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:7];
  v39 = _INIntentSchemaBuildIntentSlotDescriptionMap(v40);
  v14 = [(INIntentDescription *)v43 initWithName:@"SetTaskAttributeIntent" responseName:@"SetTaskAttributeIntentResponse" facadeClass:v12 dataClass:v13 type:@"sirikit.intent.notes.SetTaskAttributeIntent" isPrivate:0 handleSelector:sel_handleSetTaskAttribute_completion_ confirmSelector:sel_confirmSetTaskAttribute_completion_ slotsByName:v39];
  v120[6] = v14;
  v44 = [INIntentDescription alloc];
  v38 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [[INIntentSlotDescription alloc] initWithName:@"tasks" tag:2 facadePropertyName:@"tasks" dataPropertyName:@"tasks" isExtended:0 isPrivate:0 valueType:134 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DA398 provideOptionsSelectorStrings:&unk_1F02DA3B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTasksForSnoozeTasks_withCompletion_, sel_resolveTasksForSnoozeTasks_completion_, 0];
  v112[0] = v16;
  v17 = [[INIntentSlotDescription alloc] initWithName:@"nextTriggerTime" tag:3 facadePropertyName:@"nextTriggerTime" dataPropertyName:@"nextTriggerTime" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA3C8 provideOptionsSelectorStrings:&unk_1F02DA3E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveNextTriggerTimeForSnoozeTasks_withCompletion_, sel_resolveNextTriggerTimeForSnoozeTasks_completion_, 0];
  v112[1] = v17;
  v18 = [[INIntentSlotDescription alloc] initWithName:@"all" tag:4 facadePropertyName:@"all" dataPropertyName:@"all" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v112[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:3];
  v20 = _INIntentSchemaBuildIntentSlotDescriptionMap(v19);
  v21 = [(INIntentDescription *)v44 initWithName:@"SnoozeTasksIntent" responseName:@"SnoozeTasksIntentResponse" facadeClass:v38 dataClass:v15 type:@"sirikit.intent.notes.SnoozeTasksIntent" isPrivate:0 handleSelector:sel_handleSnoozeTasks_completion_ confirmSelector:sel_confirmSnoozeTasks_completion_ slotsByName:v20];
  v120[7] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:8];

  v23 = [v22 count];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v26 = v22;
  v27 = [v26 countByEnumeratingWithState:&v107 objects:v111 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v108;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v108 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v107 + 1) + 8 * i);
        v32 = [v31 name];
        [v24 setObject:v31 forKey:v32];

        v33 = [v31 type];
        [v25 setObject:v31 forKey:v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v107 objects:v111 count:16];
    }

    while (v28);
  }

  v34 = [v24 copy];
  v35 = sNotebookDomain_intentDescsByName;
  sNotebookDomain_intentDescsByName = v34;

  v36 = [v25 copy];
  v37 = sNotebookDomain_intentDescsByType;
  sNotebookDomain_intentDescsByType = v36;
}

@end