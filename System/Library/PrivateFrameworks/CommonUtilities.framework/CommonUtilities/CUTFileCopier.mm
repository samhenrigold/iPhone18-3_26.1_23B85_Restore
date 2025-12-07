@interface CUTFileCopier
- (CUTFileCopier)initWithInputURL:(id)l outputURL:(id)rL identifier:(id)identifier operation:(unsigned int)operation delegate:(id)delegate;
- (CUTFileCopierDelegate)delegate;
- (id)_temporaryCopierPath;
- (void)_fillOutputURLFromInputURL;
- (void)_main_copierFinishedWithResult:(id)result;
- (void)_worker_doCopy;
- (void)cancel;
- (void)cleanup;
- (void)dealloc;
- (void)start;
@end

@implementation CUTFileCopier

- (CUTFileCopier)initWithInputURL:(id)l outputURL:(id)rL identifier:(id)identifier operation:(unsigned int)operation delegate:(id)delegate
{
  lCopy = l;
  rLCopy = rL;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = CUTFileCopier;
  v18 = [(CUTFileCopier *)&v28 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(lCopy, v16, v17);
    inputURL = v18->_inputURL;
    v18->_inputURL = v19;

    v23 = objc_msgSend_copy(rLCopy, v21, v22);
    outputURL = v18->_outputURL;
    v18->_outputURL = v23;

    objc_storeStrong(&v18->_identifier, identifier);
    if (!v18->_outputURL)
    {
      objc_msgSend__fillOutputURLFromInputURL(v18, v25, v26);
    }

    v18->_operation = operation;
    objc_storeWeak(&v18->_delegate, delegateCopy);
  }

  return v18;
}

- (void)dealloc
{
  if (self->_BOMCopier)
  {
    if (self->_inProgress)
    {
      BOMCopierCancelCopy();
    }

    BOMCopierFree();
  }

  v3.receiver = self;
  v3.super_class = CUTFileCopier;
  [(CUTFileCopier *)&v3 dealloc];
}

- (id)_temporaryCopierPath
{
  v2 = CUTTemporaryPath();
  v4 = objc_msgSend_stringByAppendingPathComponent_(v2, v3, @"CUTFileCopier");

  return v4;
}

- (void)_fillOutputURLFromInputURL
{
  v4 = objc_msgSend_inputURL(self, a2, v2);
  v7 = objc_msgSend_path(v4, v5, v6);
  v36 = objc_msgSend_lastPathComponent(v7, v8, v9);

  if (objc_msgSend_length(v36, v10, v11))
  {
    v13 = v36;
  }

  else
  {

    v13 = @"Archive";
  }

  v37 = v13;
  v14 = objc_msgSend_stringByAppendingPathExtension_(v13, v12, @"zip");
  v17 = objc_msgSend__temporaryCopierPath(self, v15, v16);
  v20 = objc_msgSend_cutStringGUID(MEMORY[0x1E696AEC0], v18, v19);
  v22 = objc_msgSend_stringByAppendingPathComponent_(v17, v21, v20);

  v25 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v23, v24);
  LOBYTE(v20) = objc_msgSend_fileExistsAtPath_(v25, v26, v22);

  if ((v20 & 1) == 0)
  {
    v29 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v27, v28);
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v29, v30, v22, 1, 0, 0);
  }

  v31 = objc_msgSend_stringByAppendingPathComponent_(v22, v27, v14);

  v32 = objc_alloc(MEMORY[0x1E695DFF8]);
  inited = objc_msgSend_initFileURLWithPath_(v32, v33, v31);
  outputURL = self->_outputURL;
  self->_outputURL = inited;
}

- (void)start
{
  if (!self->_inProgress)
  {
    v5 = objc_msgSend_delegate(self, a2, v2);
    objc_msgSend_fileCopierDidStart_(v5, v6, self);

    self->_inProgress = 1;
    v7 = MEMORY[0x1E696AF00];

    MEMORY[0x1EEE66B58](v7, sel_detachNewThreadSelector_toTarget_withObject_, sel__worker_doCopy);
  }
}

- (void)cancel
{
  if (!self->_shouldCancel)
  {
    self->_shouldCancel = 1;
    if (self->_BOMCopier)
    {
      if (self->_inProgress)
      {
        BOMCopierCancelCopy();
      }
    }
  }
}

- (void)cleanup
{
  if (self->_inProgress)
  {

    objc_msgSend_cancel(self, a2, v2);
  }

  else
  {
    v13 = objc_msgSend_path(self->_outputURL, a2, v2);
    v6 = objc_msgSend__temporaryCopierPath(self, v4, v5);
    hasPrefix = objc_msgSend_hasPrefix_(v13, v7, v6);

    if (hasPrefix)
    {
      v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10);
      objc_msgSend_removeItemAtPath_error_(v11, v12, v13, 0);
    }
  }
}

- (void)_main_copierFinishedWithResult:(id)result
{
  v4 = objc_msgSend_BOOLValue(result, a2, result);
  shouldCancel = self->_shouldCancel;
  if (!v4)
  {
    *&self->_didErrorOccur = !shouldCancel;
    if (!shouldCancel)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&self->_didErrorOccur = 0;
  if (shouldCancel)
  {
LABEL_5:
    objc_msgSend_cleanup(self, v5, v6);
  }

LABEL_6:
  v9 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_fileCopierDidFinish_(v9, v8, self);
}

- (void)_worker_doCopy
{
  v3 = objc_autoreleasePoolPush();
  v4 = BOMCopierNew();
  self->_BOMCopier = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_12;
  }

  BOMCopierSetUserData();
  BOMCopierSetCopyFileStartedHandler();
  BOMCopierSetFileErrorHandler();
  BOMCopierSetFileConflictErrorHandler();
  BOMCopierSetFatalErrorHandler();
  BOMCopierSetFatalFileErrorHandler();
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v5;
  operation = self->_operation;
  switch(operation)
  {
    case 0u:
      v10 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(v5, @"createCPIO", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v8, @"sequesterResources", v10);
      CFDictionarySetValue(v8, @"createPKZip", v10);
      CFDictionarySetValue(v8, @"keepParent", v10);
      v11 = @"copyResources";
      goto LABEL_9;
    case 1u:
      v13 = *MEMORY[0x1E695E4D0];
      v11 = @"extractPKZip";
LABEL_10:
      CFDictionarySetValue(v5, v11, v13);
      break;
    case 2u:
      v10 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(v5, @"createCPIO", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v8, @"sequesterResources", v10);
      v11 = @"createPKZip";
LABEL_9:
      v5 = v8;
      v13 = v10;
      goto LABEL_10;
  }

  v14 = objc_msgSend_inputURL(self, v6, v7);
  v17 = objc_msgSend_path(v14, v15, v16);
  v18 = v17;
  objc_msgSend_fileSystemRepresentation(v18, v19, v20);

  v23 = objc_msgSend_outputURL(self, v21, v22);
  v26 = objc_msgSend_path(v23, v24, v25);
  v27 = v26;
  objc_msgSend_fileSystemRepresentation(v27, v28, v29);

  v12 = BOMCopierCopyWithOptions() == 0;
  BOMCopierSetUserData();

LABEL_12:
  v30 = objc_alloc(MEMORY[0x1E696AD98]);
  v32 = objc_msgSend_initWithBool_(v30, v31, v12);
  objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v33, sel__main_copierFinishedWithResult_, v32, 0);

  objc_autoreleasePoolPop(v3);
}

- (CUTFileCopierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end