@interface EKICSImporter
+ (id)allowedImportFileTypes;
- (BOOL)_doITIPFileImport;
- (BOOL)_doImportFiles;
- (BOOL)_isAnyAttendeeAddressFrom:(id)from organizer:(id)organizer equivalentTo:(id)to;
- (BOOL)_message:(id)_message hasNewSelfOrganizedEventForCalendar:(id)calendar;
- (BOOL)_separateICalFilesForITIP;
- (BOOL)_sortFilesByImportCalendar;
- (BOOL)importICalFiles;
- (BOOL)shouldImportContinueGivenDecision:(int)decision eventsAffected:(unint64_t)affected;
- (EKICSImporter)initWithFilePaths:(id)paths calendar:(id)calendar options:(unint64_t)options;
- (id)_existingEventFromICSEvent:(id)event calendar:(id)calendar;
- (id)_findBestEventFromEvents:(id)events;
- (id)_findCalendarForExistingEvent:(id)event;
- (id)_initWithFilePaths:(id)paths eventStore:(id)store calendar:(id)calendar options:(unint64_t)options;
- (id)_matchingAttendeeAddressesFrom:(id)from organizer:(id)organizer inSource:(id)source;
- (id)callbackQueue;
- (id)eventFromDocument:(id)document;
- (id)infoForNewCalendarForFiles:(id)files forITIPFiles:(id)pFiles nonITIPFiles:(id)iPFiles;
- (id)selectCalendarWithTitle:(id)title color:(id)color description:(id)description error:(id *)error;
- (int)countReminders:(id)reminders;
- (unint64_t)_separateFilesForImport:(id)import;
- (void)_createImportHandle;
- (void)_importWithCompletion:(id)completion;
- (void)_separateICalFilesForITIP;
- (void)_sortFilesByImportCalendar;
- (void)asyncImportWithCompletion:(id)completion;
- (void)callCompletionWithSuccess:(BOOL)success;
- (void)callImportDroppedRemindersCallbackIfThereWereReminders;
- (void)importFoundBackupFile:(id)file;
- (void)setImportProgressAsIndeterminate;
- (void)syncImportWithCompletion:(id)completion;
@end

@implementation EKICSImporter

+ (id)allowedImportFileTypes
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.ical.ics"];
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:{@"com.apple.ical.vcs", v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.ical.backup-package"];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (void)_createImportHandle
{
  if (_createImportHandle_onceToken != -1)
  {
    [EKICSImporter _createImportHandle];
  }
}

uint64_t __36__EKICSImporter__createImportHandle__block_invoke()
{
  v0 = os_log_create(ekSubSystem, "ICSImport");
  v1 = EKICSImportHandle;
  EKICSImportHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (EKICSImporter)initWithFilePaths:(id)paths calendar:(id)calendar options:(unint64_t)options
{
  calendarCopy = calendar;
  pathsCopy = paths;
  eventStore = [calendarCopy eventStore];
  v11 = [(EKICSImporter *)self _initWithFilePaths:pathsCopy eventStore:eventStore calendar:calendarCopy options:options];

  return v11;
}

- (id)_initWithFilePaths:(id)paths eventStore:(id)store calendar:(id)calendar options:(unint64_t)options
{
  pathsCopy = paths;
  storeCopy = store;
  calendarCopy = calendar;
  v30.receiver = self;
  v30.super_class = EKICSImporter;
  v14 = [(EKICSImporter *)&v30 init];
  v15 = v14;
  if (v14)
  {
    [(EKICSImporter *)v14 _createImportHandle];
    objc_storeStrong(&v15->_importFilePaths, paths);
    objc_storeStrong(&v15->_calendar, calendar);
    objc_storeStrong(&v15->_eventStore, store);
    v15->_options = options;
    v16 = objc_opt_new();
    nonITIPFiles = v15->_nonITIPFiles;
    v15->_nonITIPFiles = v16;

    v18 = objc_opt_new();
    iTIPFiles = v15->_iTIPFiles;
    v15->_iTIPFiles = v18;

    v20 = objc_opt_new();
    iCalFilesToImport = v15->_iCalFilesToImport;
    v15->_iCalFilesToImport = v20;

    v22 = objc_opt_new();
    existingEventIDs = v15->_existingEventIDs;
    v15->_existingEventIDs = v22;

    v24 = objc_opt_new();
    vCalFilesToImport = v15->_vCalFilesToImport;
    v15->_vCalFilesToImport = v24;

    v26 = objc_opt_new();
    calendarToITIPFiles = v15->_calendarToITIPFiles;
    v15->_calendarToITIPFiles = v26;

    importError = v15->_importError;
    v15->_importError = 0;
  }

  return v15;
}

- (void)asyncImportWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.EventKit.ICSImporter", v5);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__EKICSImporter_asyncImportWithCompletion___block_invoke;
  v8[3] = &unk_1E77FD1A8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

uint64_t __43__EKICSImporter_asyncImportWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAsynchronous:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _importWithCompletion:v3];
}

- (void)syncImportWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EKICSImporter *)self setAsynchronous:0];
  [(EKICSImporter *)self _importWithCompletion:completionCopy];
}

- (void)_importWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EKICSImporter *)self setImportProgressAsIndeterminate];
  [(EKICSImporter *)self setCompletionCallback:completionCopy];

  importFilePaths = [(EKICSImporter *)self importFilePaths];
  v6 = [(EKICSImporter *)self _separateFilesForImport:importFilePaths];

  if (v6)
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        return;
      }

      v7 = EKICSImportHandle;
      if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEFAULT, "We completed the import during the file separation phase.", v11, 2u);
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
    {
      [EKICSImporter _importWithCompletion:];
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if (![(EKICSImporter *)self importICalFiles])
  {
    goto LABEL_15;
  }

  if (![(NSMutableArray *)self->_importedItems count])
  {
    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
    {
      [EKICSImporter _importWithCompletion:];
    }

    importError = [(EKICSImporter *)self importError];

    if (!importError)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:9 userInfo:0];
      [(EKICSImporter *)self setImportError:v10];
    }

    goto LABEL_15;
  }

LABEL_10:
  v8 = 1;
LABEL_16:
  [(EKICSImporter *)self callCompletionWithSuccess:v8];
}

- (BOOL)importICalFiles
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = EKICSImportHandle;
  if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    iCalFilesToImport = [(EKICSImporter *)self iCalFilesToImport];
    allKeys = [iCalFilesToImport allKeys];
    vCalFilesToImport = [(EKICSImporter *)self vCalFilesToImport];
    calendar = [(EKICSImporter *)self calendar];
    v11 = 138412802;
    v12 = allKeys;
    v13 = 2112;
    v14 = vCalFilesToImport;
    v15 = 2112;
    v16 = calendar;
    _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "Importing iCal files (%@) and vCal files (%@) to calendar %@", &v11, 0x20u);
  }

  _separateICalFilesForITIP = [(EKICSImporter *)self _separateICalFilesForITIP];
  if (_separateICalFilesForITIP)
  {
    _separateICalFilesForITIP = [(EKICSImporter *)self _sortFilesByImportCalendar];
    if (_separateICalFilesForITIP)
    {
      _separateICalFilesForITIP = [(EKICSImporter *)self _doImportFiles];
      if (_separateICalFilesForITIP)
      {
        [(EKICSImporter *)self callImportDroppedRemindersCallbackIfThereWereReminders];
        LOBYTE(_separateICalFilesForITIP) = 1;
      }
    }
  }

  return _separateICalFilesForITIP;
}

- (BOOL)_sortFilesByImportCalendar
{
  v126 = *MEMORY[0x1E69E9840];
  calendar = [(EKICSImporter *)self calendar];
  v2 = EKICSImportHandle;
  v3 = os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT);
  if (calendar)
  {
    if (v3)
    {
      v4 = v2;
      objectID = [calendar objectID];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = objectID;
      _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "Importing files to user-specified calendar with identifier(%@)", &buf, 0xCu);
    }

    v6 = MEMORY[0x1E6992FC8];
    iTIPFiles = [(EKICSImporter *)self iTIPFiles];
    allKeys = [iTIPFiles allKeys];
    [v6 addArray:allKeys withKey:calendar toStrongTableOfArrays:&self->_calendarToITIPFiles];

    v9 = MEMORY[0x1E6992FC8];
    nonITIPFiles = [(EKICSImporter *)self nonITIPFiles];
    allKeys2 = [nonITIPFiles allKeys];
    [v9 addArray:allKeys2 withKey:calendar toStrongTableOfArrays:&self->_calendarToICalFiles];

    v12 = MEMORY[0x1E6992FC8];
    vCalFilesToImport = [(EKICSImporter *)self vCalFilesToImport];
    [v12 addArray:vCalFilesToImport withKey:calendar toStrongTableOfArrays:&self->_calendarToVCalFiles];

    goto LABEL_5;
  }

  if (v3)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_DEFAULT, "No destination calendar provided.  Will attempt to choose appropriate calendars.", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v122 = 0x3032000000;
  v123 = __Block_byref_object_copy__10;
  v124 = __Block_byref_object_dispose__10;
  v125 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__EKICSImporter__sortFilesByImportCalendar__block_invoke;
  aBlock[3] = &unk_1E77FE398;
  aBlock[4] = self;
  aBlock[5] = &buf;
  v88 = _Block_copy(aBlock);
  iTIPFiles2 = [(EKICSImporter *)self iTIPFiles];
  p_calendarToITIPFiles = &self->_calendarToITIPFiles;
  v16 = v88[2](v88, iTIPFiles2);

  if (!v16)
  {
    v58 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:10 userInfo:0];
    [(EKICSImporter *)self setImportError:v58];

    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
    {
      [EKICSImporter _sortFilesByImportCalendar];
    }

    goto LABEL_90;
  }

  v17 = *p_calendarToITIPFiles;
  selfCopy2 = self;
  if (*p_calendarToITIPFiles)
  {
    v113 = 0;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    obj = v17;
    v19 = [obj countByEnumeratingWithState:&v109 objects:v120 count:16];
    if (v19)
    {
      v94 = *v110;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v110 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v109 + 1) + 8 * i);
          source = [v21 source];
          constraints = [v21 constraints];
          requiresOutgoingInvitationsInDefaultCalendar = [constraints requiresOutgoingInvitationsInDefaultCalendar];

          if (requiresOutgoingInvitationsInDefaultCalendar)
          {
            v25 = [source calendarsForEntityType:0];
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v26 = v25;
            v27 = [v26 countByEnumeratingWithState:&v105 objects:v119 count:16];
            if (v27)
            {
              v28 = *v106;
LABEL_18:
              v29 = 0;
              while (1)
              {
                if (*v106 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = *(*(&v105 + 1) + 8 * v29);
                if ([v30 isDefaultSchedulingCalendar])
                {
                  break;
                }

                if (v27 == ++v29)
                {
                  v27 = [v26 countByEnumeratingWithState:&v105 objects:v119 count:16];
                  if (v27)
                  {
                    goto LABEL_18;
                  }

                  goto LABEL_24;
                }
              }

              v31 = v30;

              if (!v31)
              {
                goto LABEL_29;
              }

              v32 = [*p_calendarToITIPFiles objectForKey:v21];
              [MEMORY[0x1E6992FC8] addArray:v32 withKey:v31 toStrongTableOfArrays:p_calendarToITIPFiles];
              objectID2 = [v31 objectID];
              objectID3 = [v21 objectID];
              v35 = [objectID2 isEqual:objectID3];

              if ((v35 & 1) == 0)
              {
                [MEMORY[0x1E6992FC8] addObject:v21 toArray:&v113];
              }
            }

            else
            {
LABEL_24:

LABEL_29:
              v36 = EKICSImportHandle;
              if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
              {
                *v117 = 138412290;
                v118 = source;
                _os_log_error_impl(&dword_1A805E000, v36, OS_LOG_TYPE_ERROR, "%@ doesn't have a default calendar to put the items into.", v117, 0xCu);
              }
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v109 objects:v120 count:16];
      }

      while (v19);
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v37 = v113;
    v38 = [v37 countByEnumeratingWithState:&v101 objects:v116 count:16];
    if (v38)
    {
      v39 = *v102;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v102 != v39)
          {
            objc_enumerationMutation(v37);
          }

          [*p_calendarToITIPFiles removeObjectForKey:*(*(&v101 + 1) + 8 * j)];
        }

        v38 = [v37 countByEnumeratingWithState:&v101 objects:v116 count:16];
      }

      while (v38);
    }

    selfCopy2 = self;
  }

  nonITIPFiles2 = [(EKICSImporter *)selfCopy2 nonITIPFiles];
  p_calendarToICalFiles = &selfCopy2->_calendarToICalFiles;
  v42 = v88[2](v88, nonITIPFiles2);

  if ((v42 & 1) == 0)
  {
    v59 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:10 userInfo:0];
    [(EKICSImporter *)self setImportError:v59];

    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
    {
      [EKICSImporter _sortFilesByImportCalendar];
    }

    goto LABEL_90;
  }

  vCalFilesToImport2 = [(EKICSImporter *)self vCalFilesToImport];
  v44 = [vCalFilesToImport2 count] == 0;

  if (!v44)
  {
    v45 = MEMORY[0x1E6992FC8];
    vCalFilesToImport3 = [(EKICSImporter *)self vCalFilesToImport];
    [v45 addArray:vCalFilesToImport3 toArray:*(&buf + 1) + 40];
  }

  if (![*(*(&buf + 1) + 40) count])
  {
    goto LABEL_89;
  }

  selectCalendar = [(EKICSImporter *)self selectCalendar];
  v48 = selectCalendar == 0;

  v49 = EKICSImportHandle;
  if (v48)
  {
    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v117 = 0;
      _os_log_impl(&dword_1A805E000, v49, OS_LOG_TYPE_DEFAULT, "We don't know what calendar to import some files to and we don't have a callback for Calendar selection.  Bailing.", v117, 2u);
    }

    v60 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:3 userInfo:0];
    [(EKICSImporter *)self setImportError:v60];

    goto LABEL_90;
  }

  v50 = EKICSImportHandle;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [*(*(&buf + 1) + 40) count];
    *v117 = 134217984;
    v118 = v51;
    _os_log_impl(&dword_1A805E000, v50, OS_LOG_TYPE_DEFAULT, "No destination calendar provided. We need to ask the user what calendar to import to for %lu files.", v117, 0xCu);
  }

  v52 = *(*(&buf + 1) + 40);
  iTIPFiles3 = [(EKICSImporter *)self iTIPFiles];
  nonITIPFiles3 = [(EKICSImporter *)self nonITIPFiles];
  v89 = [(EKICSImporter *)self infoForNewCalendarForFiles:v52 forITIPFiles:iTIPFiles3 nonITIPFiles:nonITIPFiles3];

  if (!v89)
  {
    v86 = 0;
    x_wr_caldesc = 0;
LABEL_62:
    firstObject = [*(*(&buf + 1) + 40) firstObject];
    lastPathComponent = [firstObject lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v55 = stringByDeletingPathExtension;
    goto LABEL_63;
  }

  x_apple_calendar_color = [v89 x_apple_calendar_color];
  v57 = x_apple_calendar_color;
  if (x_apple_calendar_color)
  {
    [x_apple_calendar_color red];
    [v57 green];
    [v57 blue];
    v86 = CalColorStringRepresentation();
  }

  else
  {
    v86 = 0;
  }

  x_wr_calname = [v89 x_wr_calname];
  x_wr_caldesc = [v89 x_wr_caldesc];

  v55 = x_wr_calname;
  if (!x_wr_calname)
  {
    goto LABEL_62;
  }

LABEL_63:
  v100 = 0;
  v84 = v55;
  v65 = [EKICSImporter selectCalendarWithTitle:"selectCalendarWithTitle:color:description:error:" color:? description:? error:?];
  v85 = 0;
  if (v85)
  {
    v66 = 1;
  }

  else
  {
    v66 = v65 == 0;
  }

  v67 = !v66;
  v83 = v67;
  if (v66)
  {
    v81 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:3 userInfo:0];
    [(EKICSImporter *)self setImportError:v81];

    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
    {
      [EKICSImporter _sortFilesByImportCalendar];
    }
  }

  else
  {
    v68 = EKICSImportHandle;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      objectID4 = [v65 objectID];
      *v117 = 138412290;
      v118 = objectID4;
      _os_log_impl(&dword_1A805E000, v68, OS_LOG_TYPE_DEFAULT, "User selected calendar: UID( %@)", v117, 0xCu);
    }

    v70 = EKICSImportHandle;
    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v117 = 138412290;
      v118 = v65;
      _os_log_impl(&dword_1A805E000, v70, OS_LOG_TYPE_DEFAULT, "User selected calendar %@", v117, 0xCu);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v71 = *(*(&buf + 1) + 40);
    v72 = [v71 countByEnumeratingWithState:&v96 objects:v115 count:16];
    if (v72)
    {
      v73 = *v97;
      do
      {
        for (k = 0; k != v72; ++k)
        {
          if (*v97 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v75 = *(*(&v96 + 1) + 8 * k);
          iTIPFiles4 = [(EKICSImporter *)self iTIPFiles];
          v77 = [iTIPFiles4 objectForKeyedSubscript:v75];

          p_calendarToVCalFiles = &self->_calendarToITIPFiles;
          if (!v77)
          {
            nonITIPFiles4 = [(EKICSImporter *)self nonITIPFiles];
            v80 = [nonITIPFiles4 objectForKeyedSubscript:v75];

            if (v80)
            {
              p_calendarToVCalFiles = p_calendarToICalFiles;
            }

            else
            {
              p_calendarToVCalFiles = &self->_calendarToVCalFiles;
            }
          }

          [MEMORY[0x1E6992FC8] addItem:v75 withKey:v65 toStrongTableOfArrays:p_calendarToVCalFiles];
        }

        v72 = [v71 countByEnumeratingWithState:&v96 objects:v115 count:16];
      }

      while (v72);
    }
  }

  if (!v83)
  {
LABEL_90:

    _Block_object_dispose(&buf, 8);
    v14 = 0;
    goto LABEL_91;
  }

LABEL_89:

  _Block_object_dispose(&buf, 8);
LABEL_5:
  v14 = 1;
LABEL_91:

  return v14;
}

uint64_t __43__EKICSImporter__sortFilesByImportCalendar__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [*(a1 + 32) _findCalendarForExistingEvent:v11];
        if (v12)
        {
          [MEMORY[0x1E6992FC8] addItem:v10 withKey:v12 toStrongTableOfArrays:a3];
        }

        else
        {
          [MEMORY[0x1E6992FC8] addObject:v10 toArray:*(*(a1 + 40) + 8) + 40];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return 1;
}

- (id)infoForNewCalendarForFiles:(id)files forITIPFiles:(id)pFiles nonITIPFiles:(id)iPFiles
{
  v39 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  pFilesCopy = pFiles;
  iPFilesCopy = iPFiles;
  obj = filesCopy;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [filesCopy countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    calendar2 = 0;
    v11 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [pFilesCopy objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [iPFilesCopy objectForKeyedSubscript:v13];
        }

        v17 = v16;

        if (v17)
        {
          v18 = calendar2 == 0;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          calendar = [v17 calendar];
          components = [calendar components];

          v21 = [components countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v34;
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v34 != v23)
                {
                  objc_enumerationMutation(components);
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {

                  calendar2 = [v17 calendar];
                  goto LABEL_24;
                }
              }

              v22 = [components countByEnumeratingWithState:&v33 objects:v38 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          calendar2 = 0;
        }

LABEL_24:
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }

  else
  {
    calendar2 = 0;
  }

  return calendar2;
}

- (unint64_t)_separateFilesForImport:(id)import
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  importCopy = import;
  v5 = [importCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = 0x1E695D000uLL;
    v9 = 0x1E69E3000uLL;
    selfCopy = self;
LABEL_3:
    v10 = 0;
    v27 = v6;
    while (1)
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(importCopy);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      if ([v11 isPathToBackupFile])
      {
        break;
      }

      if ([v11 isPathToICalData])
      {
        v12 = [*(v8 + 3824) dataWithContentsOfFile:v11];
        v13 = [objc_alloc(*(v9 + 3248)) initWithData:v12 options:0 error:0];
        calendar = [v13 calendar];
        if (calendar)
        {
          v15 = calendar;
          [MEMORY[0x1E6992FC8] setValue:v13 withKey:v11 inDictionary:&self->_iCalFilesToImport];
        }

        else
        {
          v16 = importCopy;
          v17 = [objc_alloc(*(v9 + 3248)) initWithData:v12 options:1 error:0];
          calendar2 = [v17 calendar];
          version = [calendar2 version];
          v20 = [version isEqualToString:@"1.0"];

          v21 = EKICSImportHandle;
          if (!v20)
          {
            importCopy = v16;
            if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
            {
              [EKICSImporter _separateFilesForImport:];
            }

            v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:0 userInfo:0];
            [(EKICSImporter *)selfCopy setImportError:v24];

            v22 = 2;
LABEL_31:

            goto LABEL_32;
          }

          importCopy = v16;
          if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A805E000, v21, OS_LOG_TYPE_DEFAULT, "Attempting to open version 1.0 .ics file.  Will treat it as a vcs file and import.", buf, 2u);
          }

          self = selfCopy;
          [MEMORY[0x1E6992FC8] addObject:v11 toArray:&selfCopy->_vCalFilesToImport];

          v8 = 0x1E695D000;
          v9 = 0x1E69E3000;
        }

        v6 = v27;
      }

      else if ([v11 isPathToVCalData])
      {
        [MEMORY[0x1E6992FC8] addObject:v11 toArray:&self->_vCalFilesToImport];
      }

      if (v6 == ++v10)
      {
        v6 = [importCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    if ([importCopy count] >= 2 && os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
    {
      [EKICSImporter _separateFilesForImport:];
    }

    importFoundBackupFile = [(EKICSImporter *)self importFoundBackupFile];

    if (importFoundBackupFile)
    {
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
      [(EKICSImporter *)self importFoundBackupFile:v12];
      v22 = 1;
    }

    else
    {
      if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
      {
        [EKICSImporter _separateFilesForImport:];
      }

      v22 = 2;
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:2 userInfo:0];
      [(EKICSImporter *)self setImportError:v12];
    }

    goto LABEL_31;
  }

LABEL_19:
  v22 = 0;
LABEL_32:

  return v22;
}

- (BOOL)_separateICalFilesForITIP
{
  selfCopy = self;
  v46 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_iCalFilesToImport;
  v32 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v32)
  {
    v31 = *v36;
    p_iTIPFiles = &selfCopy->_iTIPFiles;
    p_nonITIPFiles = &selfCopy->_nonITIPFiles;
    v3 = 0x1E6992000uLL;
    v30 = selfCopy;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * i);
        v6 = [(NSMutableDictionary *)selfCopy->_iCalFilesToImport objectForKeyedSubscript:v5];
        calendar = [v6 calendar];
        if (!calendar)
        {
          v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:0 userInfo:0];
          [(EKICSImporter *)selfCopy setImportError:v24];

          v25 = EKICSImportHandle;
          if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v5;
            _os_log_impl(&dword_1A805E000, v25, OS_LOG_TYPE_DEFAULT, "File %@ has no VCALENDAR.", buf, 0xCu);
          }

          goto LABEL_35;
        }

        v8 = [(EKICSImporter *)selfCopy countReminders:calendar];
        if (v8 >= 1)
        {
          v9 = v8;
          [*(v3 + 4040) addObject:v5 toArray:&selfCopy->_filesWithReminders];
          selfCopy->_droppedReminderCount += v9;
        }

        if ([calendar method] == 1 || !objc_msgSend(calendar, "method"))
        {
          v34 = v6;
          v13 = EKICSImportHandle;
          if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v5;
            _os_log_impl(&dword_1A805E000, v13, OS_LOG_TYPE_DEFAULT, "File %@ has method PUBLISH or NONE.", buf, 0xCu);
          }

          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          components = [calendar components];
          v15 = [components countByEnumeratingWithState:&v39 objects:buf count:16];
          if (v15)
          {
            v16 = v15;
            v17 = 0;
            v18 = *v40;
LABEL_17:
            v19 = 0;
            while (1)
            {
              if (*v40 != v18)
              {
                objc_enumerationMutation(components);
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass & v17)
              {
                break;
              }

              v17 |= isKindOfClass;
              if (v16 == ++v19)
              {
                v16 = [components countByEnumeratingWithState:&v39 objects:buf count:16];
                if (v16)
                {
                  goto LABEL_17;
                }

                v12 = p_nonITIPFiles;
                v6 = v34;
                selfCopy = v30;
                v3 = 0x1E6992000;
                if ((v17 & 1) == 0)
                {
                  goto LABEL_26;
                }

                goto LABEL_28;
              }
            }
          }

          selfCopy = v30;
          v6 = v34;
          v3 = 0x1E6992000uLL;
LABEL_26:
          makeDecision = [(EKICSImporter *)selfCopy makeDecision];

          v12 = p_nonITIPFiles;
          if (makeDecision)
          {
            p_nonITIPFiles = [(EKICSImporter *)selfCopy shouldImportContinueGivenDecision:0 eventsAffected:1, p_nonITIPFiles];
            v12 = p_nonITIPFiles;
            if (!p_nonITIPFiles)
            {
              [(EKICSImporter *)selfCopy setNumInvalidEvents:[(EKICSImporter *)selfCopy numInvalidEvents]+ 1];
              v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:5 userInfo:0];
              [(EKICSImporter *)selfCopy setImportError:v26];

              if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
              {
                [EKICSImporter _separateICalFilesForITIP];
              }

LABEL_35:

              v23 = 0;
              goto LABEL_36;
            }
          }
        }

        else
        {
          v10 = EKICSImportHandle;
          v11 = os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT);
          v12 = p_iTIPFiles;
          if (v11)
          {
            *buf = 138412290;
            v45 = v5;
            _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "File %@ is an iTIP message.", buf, 0xCu);
            v12 = p_iTIPFiles;
          }
        }

LABEL_28:
        [*(v3 + 4040) setValue:v6 withKey:v5 inDictionary:v12];
      }

      v32 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_36:

  return v23;
}

- (BOOL)_message:(id)_message hasNewSelfOrganizedEventForCalendar:(id)calendar
{
  _messageCopy = _message;
  calendarCopy = calendar;
  document = [_messageCopy document];
  v9 = [(EKICSImporter *)self _findCalendarForExistingEvent:document];

  if (v9)
  {
    event = [_messageCopy event];
    organizer = [event organizer];

    value = [organizer value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ownerIdentityAddress = [calendarCopy ownerIdentityAddress];
      value2 = [organizer value];
      v15 = [ownerIdentityAddress isEqual:value2];

      if (v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    ownerIdentityEmail = [calendarCopy ownerIdentityEmail];
    emailAddress = [organizer emailAddress];
    v19 = [ownerIdentityEmail isEqualToString:emailAddress];

    if ((v19 & 1) == 0)
    {
      ownerIdentityPhoneNumber = [calendarCopy ownerIdentityPhoneNumber];
      phoneNumber = [organizer phoneNumber];
      v16 = [ownerIdentityPhoneNumber isEqualToString:phoneNumber];

      goto LABEL_10;
    }

LABEL_8:
    v16 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (BOOL)_doITIPFileImport
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(NSMapTable *)self->_calendarToITIPFiles count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(EKICSImporter *)self calendarToITIPFiles];
    v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v18 = *v26;
      v3 = *MEMORY[0x1E6992E38] | *MEMORY[0x1E6992E28];
      do
      {
        v4 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = v4;
          v5 = *(*(&v25 + 1) + 8 * v4);
          calendarToITIPFiles = [(EKICSImporter *)self calendarToITIPFiles];
          v7 = [calendarToITIPFiles objectForKey:v5];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v22;
            do
            {
              v12 = 0;
              do
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:*(*(&v21 + 1) + 8 * v12)];
                eventStore = [(EKICSImporter *)self eventStore];
                v15 = [eventStore importICSData:v13 intoCalendar:v5 options:v3 | self->_options];

                if (v15)
                {
                  [(NSMutableArray *)self->_importedItems addObjectsFromArray:v15];
                }

                ++v12;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v10);
          }

          v4 = v20 + 1;
        }

        while (v20 + 1 != v19);
        v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }
  }

  return 0;
}

- (BOOL)_doImportFiles
{
  v95 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  importedItems = self->_importedItems;
  self->_importedItems = array;

  if (![(EKICSImporter *)self _doITIPFileImport])
  {
    iTIPFiles = [(EKICSImporter *)self iTIPFiles];
    v6 = [iTIPFiles count];

    if (v6)
    {
      v7 = EKICSImportHandle;
      if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        iTIPFiles2 = [(EKICSImporter *)self iTIPFiles];
        *buf = 138412290;
        v94 = iTIPFiles2;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "We did not import the iTip files [%@].", buf, 0xCu);
      }
    }
  }

  calendarToVCalFiles = [(EKICSImporter *)self calendarToVCalFiles];
  v11 = [calendarToVCalFiles count];

  selfCopy = self;
  if (!v11)
  {
    goto LABEL_34;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [(EKICSImporter *)self calendarToVCalFiles];
  v59 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v59)
  {
    v57 = *v84;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v84 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v83 + 1) + 8 * i);
        calendarToVCalFiles2 = [(EKICSImporter *)self calendarToVCalFiles];
        v17 = [calendarToVCalFiles2 objectForKey:v15];

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v79 objects:v91 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v80;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v80 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:*(*(&v79 + 1) + 8 * j)];
              if (v23)
              {
                [v13 addObject:v23];
                [v12 addObject:v15];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v79 objects:v91 count:16];
          }

          while (v20);
        }

        self = selfCopy;
      }

      v59 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v59);
  }

  eventStore = [(EKICSImporter *)self eventStore];
  v78 = 0;
  eventStore2 = [eventStore importVCSData:v13 intoCalendars:v12 error:&v78];
  v26 = v78;

  if (!eventStore2)
  {
    if (v26)
    {
      [(EKICSImporter *)self setImportError:v26];
    }

    else
    {
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:10 userInfo:0];
      [(EKICSImporter *)self setImportError:v27];
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v28 = eventStore2;
  v29 = [v28 countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v75;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(NSMutableArray *)self->_importedItems addObjectsFromArray:*(*(&v74 + 1) + 8 * k)];
      }

      v30 = [v28 countByEnumeratingWithState:&v74 objects:v90 count:16];
    }

    while (v30);
  }

  if (eventStore2)
  {
LABEL_34:
    calendarToICalFiles = [(EKICSImporter *)self calendarToICalFiles];
    v34 = [calendarToICalFiles count];

    if (v34)
    {
      v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v34];
      v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v34];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obja = [(EKICSImporter *)self calendarToICalFiles];
      v60 = [obja countByEnumeratingWithState:&v70 objects:v89 count:16];
      if (v60)
      {
        v58 = *v71;
        do
        {
          for (m = 0; m != v60; ++m)
          {
            if (*v71 != v58)
            {
              objc_enumerationMutation(obja);
            }

            v38 = *(*(&v70 + 1) + 8 * m);
            calendarToICalFiles2 = [(EKICSImporter *)self calendarToICalFiles];
            v40 = [calendarToICalFiles2 objectForKey:v38];

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v41 = v40;
            v42 = [v41 countByEnumeratingWithState:&v66 objects:v88 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v67;
              do
              {
                for (n = 0; n != v43; ++n)
                {
                  if (*v67 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v46 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:*(*(&v66 + 1) + 8 * n)];
                  if (v46)
                  {
                    [v36 addObject:v46];
                    [v35 addObject:v38];
                  }
                }

                v43 = [v41 countByEnumeratingWithState:&v66 objects:v88 count:16];
              }

              while (v43);
            }

            self = selfCopy;
          }

          v60 = [obja countByEnumeratingWithState:&v70 objects:v89 count:16];
        }

        while (v60);
      }

      eventStore2 = [(EKICSImporter *)self eventStore];
      v47 = [eventStore2 importICSData:v36 intoCalendars:v35 options:*MEMORY[0x1E6992E28] | self->_options];

      LOBYTE(eventStore2) = v47 != 0;
      if (!v47)
      {
        v48 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:10 userInfo:0];
        [(EKICSImporter *)self setImportError:v48];
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v49 = v47;
      v50 = [v49 countByEnumeratingWithState:&v62 objects:v87 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v63;
        do
        {
          for (ii = 0; ii != v51; ++ii)
          {
            if (*v63 != v52)
            {
              objc_enumerationMutation(v49);
            }

            [(NSMutableArray *)self->_importedItems addObjectsFromArray:*(*(&v62 + 1) + 8 * ii)];
          }

          v51 = [v49 countByEnumeratingWithState:&v62 objects:v87 count:16];
        }

        while (v51);
      }
    }

    else
    {
      LOBYTE(eventStore2) = 1;
    }
  }

  return eventStore2;
}

- (id)_existingEventFromICSEvent:(id)event calendar:(id)calendar
{
  eventCopy = event;
  calendarCopy = calendar;
  v8 = [eventCopy uid];
  v9 = *MEMORY[0x1E6993100];
  recurrence_id = [eventCopy recurrence_id];

  v11 = v9;
  if (recurrence_id)
  {
    recurrence_id2 = [eventCopy recurrence_id];
    v11 = COERCE_DOUBLE(CalCreateDateTimeFromICSDate());

    CalDateTimeRelease();
  }

  if (v11 != v9 && v11 != 0.0)
  {
    v13 = CalGetRecurrenceUIDFromRealUID();

    v8 = v13;
  }

  if ([v8 length])
  {
    v14 = [(EKEventStore *)self->_eventStore eventsWithExternalIdentifier:v8 inCalendars:0];
    v15 = [(EKICSImporter *)self _findBestEventFromEvents:v14];
    if (v15)
    {
      existingEventIDs = [(EKICSImporter *)self existingEventIDs];
      objectID = [v15 objectID];
      [existingEventIDs addObject:objectID];

      v18 = v15;
    }

    else
    {
      recurrence_id3 = [eventCopy recurrence_id];

      if (!recurrence_id3)
      {
        v18 = 0;
        goto LABEL_10;
      }

      v21 = [eventCopy uid];

      if (![v21 length])
      {
        v18 = 0;
        v8 = v21;
        goto LABEL_10;
      }

      v22 = [(EKEventStore *)self->_eventStore eventsWithExternalIdentifier:v21 inCalendars:0];

      v18 = [(EKICSImporter *)self _findBestEventFromEvents:v22];
      v8 = v21;
      v14 = v22;
    }

LABEL_10:
    goto LABEL_12;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (id)_findBestEventFromEvents:(id)events
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  eventsCopy = events;
  v4 = [eventsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  do
  {
    v8 = 0;
    do
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(eventsCopy);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      calendar = [v9 calendar];
      if ([calendar allowsContentModifications])
      {
        source = [calendar source];
        if (([source isEnabledForEvents] & 1) == 0)
        {
          goto LABEL_10;
        }

        source2 = [calendar source];
        if ([source2 isDelegate])
        {

LABEL_10:
          goto LABEL_11;
        }

        if ([calendar sharingStatus] == 2)
        {
          allowsScheduling = [calendar allowsScheduling];

          if (!allowsScheduling)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        if ([v9 isSelfOrganized])
        {
          v15 = v9;

          v6 = v15;
          goto LABEL_24;
        }

        if (!v6)
        {
          v6 = v9;
        }
      }

LABEL_11:

      ++v8;
    }

    while (v5 != v8);
    v14 = [eventsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    v5 = v14;
  }

  while (v14);
LABEL_24:

  return v6;
}

- (id)_findCalendarForExistingEvent:(id)event
{
  v16 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = [(EKICSImporter *)self eventFromDocument:eventCopy];
  calendar = [eventCopy calendar];

  v7 = [(EKICSImporter *)self _existingEventFromICSEvent:v5 calendar:calendar];

  if (v7)
  {
    calendar2 = [v7 calendar];
    v9 = EKICSImportHandle;
    v10 = os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT);
    if (calendar2)
    {
      if (v10)
      {
        v11 = v9;
        objectID = [calendar2 objectID];
        v14 = 138412290;
        v15 = objectID;
        _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "Importing pre-existing event.  Will stay on current calendar: objectID(%@)", &v14, 0xCu);
      }
    }

    else if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "Importing a pre-existing event but there were no eligible writeable calendars.", &v14, 2u);
    }
  }

  else
  {
    calendar2 = 0;
  }

  return calendar2;
}

- (BOOL)_isAnyAttendeeAddressFrom:(id)from organizer:(id)organizer equivalentTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  organizerCopy = organizer;
  toCopy = to;
  v10 = toCopy;
  if (toCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__EKICSImporter__isAnyAttendeeAddressFrom_organizer_equivalentTo___block_invoke;
    aBlock[3] = &unk_1E77FE3C0;
    v24 = toCopy;
    v11 = _Block_copy(aBlock);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = fromCopy;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (v11[2](v11, *(*(&v19 + 1) + 8 * i)))
          {

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    if ((v11)[2](v11, organizerCopy))
    {
LABEL_13:
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __66__EKICSImporter__isAnyAttendeeAddressFrom_organizer_equivalentTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = [v3 value];
  if (([*(a1 + 32) compareToLocalURL:v5] & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [v4 emailAddress];
    LOBYTE(v6) = [v6 cal_isEquivalentToEmailAddress:v7];

    if ((v6 & 1) == 0)
    {
      v9 = *(a1 + 32);
      v10 = [v4 phoneNumber];
      LOBYTE(v9) = [v9 cal_isEquivalentToPhoneNumber:v10];

      if (v9)
      {
        goto LABEL_5;
      }

LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }
  }

LABEL_5:
  v8 = 1;
LABEL_8:

  return v8;
}

- (id)_matchingAttendeeAddressesFrom:(id)from organizer:(id)organizer inSource:(id)source
{
  v41 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  organizerCopy = organizer;
  ownerAddresses = [source ownerAddresses];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(ownerAddresses, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = ownerAddresses;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v35 + 1) + 8 * i)];
        if (v15)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__EKICSImporter__matchingAttendeeAddressesFrom_organizer_inSource___block_invoke;
  aBlock[3] = &unk_1E77FE3E8;
  v16 = v9;
  v34 = v16;
  v17 = _Block_copy(aBlock);
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = fromCopy;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = v17[2](v17, *(*(&v28 + 1) + 8 * j));
        if (v23)
        {
          [MEMORY[0x1E6992FC8] addObject:v23 toSet:&v32];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v20);
  }

  v24 = (v17)[2](v17, organizerCopy);
  if (v24)
  {
    [MEMORY[0x1E6992FC8] addObject:v24 toSet:&v32];
  }

  v25 = v32;

  return v25;
}

id __67__EKICSImporter__matchingAttendeeAddressesFrom_organizer_inSource___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = [v4 value];
  v7 = [v5 emailAddress];
  v8 = [v5 phoneNumber];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v10)
  {
    v14 = 1;
    goto LABEL_18;
  }

  v11 = v10;
  v12 = *v18;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v2 = *(*(&v17 + 1) + 8 * i);
      if ([v6 compareToLocalURL:{v2, v17}])
      {
        v15 = [v6 absoluteString];
LABEL_17:
        v2 = v15;
        v14 = 0;
        goto LABEL_18;
      }

      if ([v2 cal_isEquivalentToEmailAddress:v7])
      {
        v15 = v7;
        goto LABEL_17;
      }

      if ([v2 cal_isEquivalentToPhoneNumber:v8])
      {
        v15 = v8;
        goto LABEL_17;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v14 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_18:

  if (v14)
  {
LABEL_19:
    v2 = 0;
  }

  return v2;
}

- (id)eventFromDocument:(id)document
{
  v18 = *MEMORY[0x1E69E9840];
  calendar = [document calendar];
  componentKeys = [calendar componentKeys];
  if ([componentKeys count] == 1)
  {
    v5 = [componentKeys objectAtIndexedSubscript:0];
    v6 = [calendar componentForKey:v5];

    if (!v6)
    {
      v13 = [componentKeys objectAtIndexedSubscript:0];
      v14 = [calendar componentOccurrencesForKey:v13];

      if (![v14 count])
      {

        v6 = 0;
        goto LABEL_14;
      }

      v6 = [v14 objectAtIndexedSubscript:0];

      if (!v6)
      {
        goto LABEL_14;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = EKICSImportHandle;
      if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v16 = 138412290;
        v17 = objc_opt_class();
        v9 = v17;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Expected an event but got %@", &v16, 0xCu);
      }

      v10 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v6 = v6;
    v10 = v6;
LABEL_15:

    goto LABEL_16;
  }

  v11 = EKICSImportHandle;
  if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v16 = 134217984;
    v17 = [componentKeys count];
    _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_DEFAULT, "ICS calendar expected to contain a single item, but instead it contained %lu", &v16, 0xCu);
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (int)countReminders:(id)reminders
{
  v17 = *MEMORY[0x1E69E9840];
  remindersCopy = reminders;
  componentKeys = [remindersCopy componentKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [componentKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(componentKeys);
        }

        v10 = [remindersCopy componentForKey:*(*(&v12 + 1) + 8 * i)];
        objc_opt_class();
        v7 += objc_opt_isKindOfClass() & 1;
      }

      v6 = [componentKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)callbackQueue
{
  async_queue = self->_async_queue;
  if (async_queue)
  {
    v3 = async_queue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

- (void)callCompletionWithSuccess:(BOOL)success
{
  _getImportedCalendarItems = [(EKICSImporter *)self _getImportedCalendarItems];
  numInvalidEvents = [(EKICSImporter *)self numInvalidEvents];
  importError = [(EKICSImporter *)self importError];
  if (!success)
  {
    v8 = EKICSImportHandle;
    if (os_log_type_enabled(EKICSImportHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKICSImporter *)v8 callCompletionWithSuccess:importError];
    }
  }

  completionCallback = [(EKICSImporter *)self completionCallback];

  if (completionCallback)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__EKICSImporter_callCompletionWithSuccess___block_invoke;
    aBlock[3] = &unk_1E77FE410;
    aBlock[4] = self;
    successCopy = success;
    v13 = _getImportedCalendarItems;
    v15 = numInvalidEvents;
    v14 = importError;
    v10 = _Block_copy(aBlock);
    if ([(EKICSImporter *)self asynchronous])
    {
      callbackQueue = [(EKICSImporter *)self callbackQueue];
      dispatch_sync(callbackQueue, v10);
    }

    else
    {
      v10[2](v10);
    }

    [(EKICSImporter *)self setCompletionCallback:0];
  }
}

void __43__EKICSImporter_callCompletionWithSuccess___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionCallback];
  (*(v2 + 2))(v2, *(a1 + 64), *(a1 + 40), *(a1 + 56), *(a1 + 48));
}

- (id)selectCalendarWithTitle:(id)title color:(id)color description:(id)description error:(id *)error
{
  titleCopy = title;
  colorCopy = color;
  descriptionCopy = description;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__10;
  v38 = __Block_byref_object_dispose__10;
  v39 = 0;
  selectCalendar = [(EKICSImporter *)self selectCalendar];

  if (selectCalendar)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__10;
    v32 = __Block_byref_object_dispose__10;
    v33 = 0;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __65__EKICSImporter_selectCalendarWithTitle_color_description_error___block_invoke;
    v21 = &unk_1E77FE438;
    v26 = &v34;
    selfCopy = self;
    v23 = titleCopy;
    v24 = colorCopy;
    v25 = descriptionCopy;
    v27 = &v28;
    v14 = _Block_copy(&v18);
    if ([(EKICSImporter *)self asynchronous:v18])
    {
      callbackQueue = [(EKICSImporter *)self callbackQueue];
      dispatch_sync(callbackQueue, v14);
    }

    else
    {
      v14[2](v14);
    }

    if (error)
    {
      *error = v29[5];
    }

    _Block_object_dispose(&v28, 8);
  }

  v16 = v35[5];
  _Block_object_dispose(&v34, 8);

  return v16;
}

void __65__EKICSImporter_selectCalendarWithTitle_color_description_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectCalendar];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 72) + 8);
  obj = *(v6 + 40);
  v7 = (v2)[2](v2, v3, v4, v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)importFoundBackupFile:(id)file
{
  fileCopy = file;
  importFoundBackupFile = [(EKICSImporter *)self importFoundBackupFile];

  if (importFoundBackupFile)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __39__EKICSImporter_importFoundBackupFile___block_invoke;
    v11 = &unk_1E77FD580;
    selfCopy = self;
    v13 = fileCopy;
    v6 = _Block_copy(&v8);
    if ([(EKICSImporter *)self asynchronous:v8])
    {
      callbackQueue = [(EKICSImporter *)self callbackQueue];
      dispatch_sync(callbackQueue, v6);
    }

    else
    {
      v6[2](v6);
    }
  }
}

void __39__EKICSImporter_importFoundBackupFile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) importFoundBackupFile];
  v2[2](v2, *(a1 + 40));
}

- (void)setImportProgressAsIndeterminate
{
  importSetProgressAsIndeterminate = [(EKICSImporter *)self importSetProgressAsIndeterminate];

  if (importSetProgressAsIndeterminate)
  {
    if ([(EKICSImporter *)self asynchronous])
    {
      queue = [(EKICSImporter *)self callbackQueue];
      importSetProgressAsIndeterminate2 = [(EKICSImporter *)self importSetProgressAsIndeterminate];
      dispatch_sync(queue, importSetProgressAsIndeterminate2);
    }

    else
    {
      queue = [(EKICSImporter *)self importSetProgressAsIndeterminate];
      (queue[2].isa)();
    }
  }
}

- (BOOL)shouldImportContinueGivenDecision:(int)decision eventsAffected:(unint64_t)affected
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  makeDecision = [(EKICSImporter *)self makeDecision];

  if (makeDecision)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__EKICSImporter_shouldImportContinueGivenDecision_eventsAffected___block_invoke;
    v12[3] = &unk_1E77FE460;
    v12[4] = self;
    v12[5] = &v14;
    v12[6] = affected;
    decisionCopy = decision;
    v8 = _Block_copy(v12);
    if ([(EKICSImporter *)self asynchronous])
    {
      callbackQueue = [(EKICSImporter *)self callbackQueue];
      dispatch_sync(callbackQueue, v8);
    }

    else
    {
      v8[2](v8);
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void __66__EKICSImporter_shouldImportContinueGivenDecision_eventsAffected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) makeDecision];
  *(*(*(a1 + 40) + 8) + 24) = (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 56));
}

- (void)callImportDroppedRemindersCallbackIfThereWereReminders
{
  importDroppedReminders = [(EKICSImporter *)self importDroppedReminders];
  if (importDroppedReminders)
  {
    droppedReminderCount = self->_droppedReminderCount;

    if (droppedReminderCount)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__EKICSImporter_callImportDroppedRemindersCallbackIfThereWereReminders__block_invoke;
      aBlock[3] = &unk_1E77FD418;
      aBlock[4] = self;
      v5 = _Block_copy(aBlock);
      if ([(EKICSImporter *)self asynchronous])
      {
        callbackQueue = [(EKICSImporter *)self callbackQueue];
        dispatch_sync(callbackQueue, v5);
      }

      else
      {
        v5[2](v5);
      }
    }
  }
}

void __71__EKICSImporter_callImportDroppedRemindersCallbackIfThereWereReminders__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) importDroppedReminders];
  (*(v2 + 2))(v2, *(*(a1 + 32) + 192), *(*(a1 + 32) + 184));
}

- (void)_importWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "We 'succeeded' at importing 0 items. Going to treat this as an error.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_importWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "We failed to figure out the different types of files we were trying to import. Aborting import.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_sortFilesByImportCalendar
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "User didn't select calendar, instead cancelled, returning. [%@]");
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_separateFilesForImport:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "Couldn't read calendar data from file %@.  Aborting open.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_separateFilesForImport:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "Found a calendar archive among multiple files to import. Ignoring the other files.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_separateFilesForImport:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "Found a calendar archive to import but no method for restoring from the backup file.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_separateICalFilesForITIP
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "Not importing file %@ because it has either zero or more than one ICSEvent");
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)callCompletionWithSuccess:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 importFilePaths];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&dword_1A805E000, v5, OS_LOG_TYPE_ERROR, "Import of [%@] failed with error [%@]", v7, 0x16u);
}

@end