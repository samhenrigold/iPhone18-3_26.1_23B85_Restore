@interface DYInOrderInstructionFilesVisitor
- (BOOL)_openFilenames:(id)filenames store:(id)store filesArray:(id)array;
- (BOOL)_openFiles:(id)files;
- (void)_closeFiles;
- (void)_performVisit:(id)visit;
- (void)visitCaptureStore:(id)store;
@end

@implementation DYInOrderInstructionFilesVisitor

- (BOOL)_openFilenames:(id)filenames store:(id)store filesArray:(id)array
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [filenames countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(filenames);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v15 = 0;
      v13 = [store openFileWithFilename:v12 error:&v15];
      if (!v13)
      {
        break;
      }

      [array addObject:v13];
      if (v9 == ++v11)
      {
        v9 = [filenames countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)_openFiles:(id)files
{
  v29[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", *MEMORY[0x277D0B1A8], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v6 = *MEMORY[0x277D0B1A0];
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", *MEMORY[0x277D0B1A0], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v7 = *MEMORY[0x277D0B1B0];
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", *MEMORY[0x277D0B1B0], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v8 = *MEMORY[0x277D0B180];
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", *MEMORY[0x277D0B180], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  if ([(DYCaptureVisitor *)self visitUnusedResoures])
  {
    [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", *MEMORY[0x277D0B1C0], v8, context), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  }

  v9 = objc_opt_new();
  v10 = [(DYInOrderInstructionFilesVisitor *)self _openFilenames:v5 store:files filesArray:v9];
  self->_initialPhaseFiles = v9;

  if (!v10)
  {
    goto LABEL_13;
  }

  if (self->_unsorted)
  {
    v11 = [files filenamesWithPrefix:*MEMORY[0x277D0B1B8] error:0];
    if ([v11 count])
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277D0B190];
  }

  else
  {
    v12 = MEMORY[0x277D0B170];
  }

  v11 = [files filenamesWithPrefix:*v12 error:0];
LABEL_9:
  if ([v11 count] != 1)
  {
    DYLog(*MEMORY[0x277D0B240], "Error: only one capture file can be present but there are %lu capture files", [v11 count]);
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA050];
    v28 = *MEMORY[0x277CCA450];
    v21 = v28;
    v29[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Capture file names: %@", v11];
    v22 = [v19 errorWithDomain:v20 code:256 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1)}];
    v23 = *MEMORY[0x277CCA7E8];
    v26[0] = v21;
    v26[1] = v23;
    v27[0] = @"The gputrace is invalid because it contains multiple capture archives.";
    v27[1] = v22;
    -[DYCaptureVisitor setVisitCaptureArchiveError:](self, "setVisitCaptureArchiveError:", [MEMORY[0x277CCA9B8] errorWithDomain:v20 code:256 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v27, v26, 2)}]);
    goto LABEL_13;
  }

  v13 = objc_opt_new();
  v14 = -[DYInOrderInstructionFilesVisitor _openFilenames:store:filesArray:](self, "_openFilenames:store:filesArray:", [v11 sortedArrayUsingSelector:sel_dy_numericCompare_], files, v13);
  self->_captureFiles = v13;
  if (!v14)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v15 = objc_opt_new();
  v16 = *MEMORY[0x277D0B178];
  [v15 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", *MEMORY[0x277D0B178], v6), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  [v15 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v16, v7), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  [v15 addObjectsFromArray:{objc_msgSend(objc_msgSend(files, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v16, v8), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v17 = objc_opt_new();
  v18 = [(DYInOrderInstructionFilesVisitor *)self _openFilenames:v15 store:files filesArray:v17];
  self->_deltaFiles = v17;

LABEL_14:
  objc_autoreleasePoolPop(context);
  return v18;
}

- (void)_closeFiles
{
  self->_initialPhaseFiles = 0;

  self->_deltaFiles = 0;
  self->_captureFiles = 0;
}

- (void)visitCaptureStore:(id)store
{
  if ([(DYInOrderInstructionFilesVisitor *)self _openFiles:?])
  {
    [(DYInOrderInstructionFilesVisitor *)self _performVisit:store];
  }

  [(DYInOrderInstructionFilesVisitor *)self _closeFiles];
}

- (void)_performVisit:(id)visit
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  performPreVisitActions = [(DYInOrderInstructionFilesVisitor *)self performPreVisitActions];
  if (!self->super._abort)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    initialPhaseFiles = self->_initialPhaseFiles;
    v8 = OUTLINED_FUNCTION_0_0(performPreVisitActions, v6, &v40, v46);
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(initialPhaseFiles);
        }

        v12 = [*(*(&v40 + 1) + 8 * v11) acceptCaptureVisitor:self];
        if (self->super._abort)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = OUTLINED_FUNCTION_0_0(v12, v13, &v40, v46);
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      performPreCaptureVisitActions = [(DYInOrderInstructionFilesVisitor *)self performPreCaptureVisitActions];
      if (!self->super._abort)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        captureFiles = self->_captureFiles;
        v17 = OUTLINED_FUNCTION_0_0(performPreCaptureVisitActions, v15, &v36, v45);
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
LABEL_13:
          v20 = 0;
          while (1)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(captureFiles);
            }

            v21 = [*(*(&v36 + 1) + 8 * v20) acceptCaptureVisitor:self];
            if (self->super._abort)
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = OUTLINED_FUNCTION_0_0(v21, v22, &v36, v45);
              if (v18)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
LABEL_19:
          performPostCaptureVisitActions = [(DYInOrderInstructionFilesVisitor *)self performPostCaptureVisitActions];
          if (!self->super._abort && self->_visitDeltaFiles)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            deltaFiles = self->_deltaFiles;
            v26 = OUTLINED_FUNCTION_0_0(performPostCaptureVisitActions, v24, &v32, v44);
            if (v26)
            {
              v27 = v26;
              v28 = *v33;
LABEL_23:
              v29 = 0;
              while (1)
              {
                if (*v33 != v28)
                {
                  objc_enumerationMutation(deltaFiles);
                }

                v30 = [*(*(&v32 + 1) + 8 * v29) acceptCaptureVisitor:self];
                if (self->super._abort)
                {
                  break;
                }

                if (v27 == ++v29)
                {
                  v27 = OUTLINED_FUNCTION_0_0(v30, v31, &v32, v44);
                  if (v27)
                  {
                    goto LABEL_23;
                  }

                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

@end