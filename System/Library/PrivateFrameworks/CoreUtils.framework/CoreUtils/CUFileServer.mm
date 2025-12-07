@interface CUFileServer
- (CUFileServer)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleKeepAlive:(id)alive responseHandler:(id)handler;
- (void)_handleQuery:(id)query responseHandler:(id)handler;
- (void)_handleQuery:(id)query session:(id)session;
- (void)_handleRequestFiles:(id)files responseHandler:(id)handler;
- (void)_handleSessionStart:(id)start responseHandler:(id)handler;
- (void)_handleSessionStop:(id)stop responseHandler:(id)handler;
- (void)_invalidate;
- (void)_invalidated;
- (void)_sessionInvalidate:(id)invalidate;
- (void)_sessionTimerFired;
- (void)_update;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation CUFileServer

- (void)_handleRequestFiles:(id)files responseHandler:(id)handler
{
  filesCopy = files;
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2972;
  v31 = __Block_byref_object_dispose__2973;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __52__CUFileServer__handleRequestFiles_responseHandler___block_invoke;
  v23 = &unk_1E73A3FA0;
  v26 = &v27;
  selfCopy = self;
  v8 = handlerCopy;
  v25 = v8;
  v9 = _Block_copy(&aBlock);
  v10 = NSDictionaryGetNSNumber(filesCopy, @"sid", 0);
  if (!v10)
  {
    v17 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID");
    v15 = v28[5];
    v28[5] = v17;
    goto LABEL_8;
  }

  v15 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v10];
  if (!v15)
  {
    v18 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v10, aBlock, v21, v22, v23, selfCopy);
    v19 = v28[5];
    v28[5] = v18;

    v15 = 0;
    goto LABEL_8;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleRequestFiles:responseHandler:]", 30, "RequestFiles: ID %@", v11, v12, v13, v14, v10);
  }

LABEL_7:
  [v15 setLastRequestTicks:mach_absolute_time()];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
LABEL_8:

  v9[2](v9);
  _Block_object_dispose(&v27, 8);
}

void *__52__CUFileServer__handleRequestFiles_responseHandler___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(result[6] + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(result[4] + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleRequestFiles:responseHandler:]_block_invoke", 90, "### Keep alive failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

- (void)_handleQuery:(id)query session:(id)session
{
  queryCopy = query;
  sessionCopy = session;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__2972;
  v59 = __Block_byref_object_dispose__2973;
  v60 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__CUFileServer__handleQuery_session___block_invoke;
  aBlock[3] = &unk_1E73A32B8;
  v54 = &v55;
  aBlock[4] = self;
  v7 = queryCopy;
  v53 = v7;
  v44 = _Block_copy(aBlock);
  v45 = v7;
  path = [v7 path];
  v43 = path;
  if (path)
  {
    v9 = [(NSURL *)self->_rootDirectoryURL URLByAppendingPathComponent:path isDirectory:0];
    *__error() = 0;
    v10 = realpath_DARWIN_EXTSN([v9 fileSystemRepresentation], sessionCopy + 8);
    v11 = v10;
    if (!v10)
    {
      v38 = __error();
      v34 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "realpath failed: %d", *v38);
      goto LABEL_46;
    }

    v12 = self->_rootPath[0];
    if (self->_rootPath[0])
    {
      v13 = &self->_rootPath[1];
      v14 = v10;
      do
      {
        if (*v14 != v12)
        {
          v34 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "Path outside root");
          goto LABEL_46;
        }

        ++v14;
        v15 = *v13++;
        v12 = v15;
      }

      while (v15);
    }

    dirStream = [sessionCopy dirStream];
    if (dirStream)
    {
      closedir(dirStream);
    }

    v17 = opendir(v11);
    if (!v17)
    {
      v39 = __error();
      v34 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "opendir failed: %d", *v39);
      goto LABEL_46;
    }

    [sessionCopy setDirStream:v17];
  }

  dirStream2 = [sessionCopy dirStream];
  if (!dirStream2)
  {
    dirStream2 = opendir(self->_rootPath);
    if (!dirStream2)
    {
      v41 = __error();
      v42 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "opendir failed: %d", *v41);
      v9 = v56[5];
      v56[5] = v42;
      goto LABEL_49;
    }

    [sessionCopy setDirStream:dirStream2];
    strlcpy(sessionCopy + 8, self->_rootPath, 0x400uLL);
  }

  v9 = 0;
  v19 = 500;
  while (1)
  {
    *__error() = 0;
    v20 = readdir(dirStream2);
    if (!v20)
    {
      break;
    }

    d_name = v20->d_name;
    if (v20->d_name[0] != 46 || v20->d_name[1] && (v20->d_name[1] != 46 || v20->d_name[2]))
    {
      v51 = 0;
      asprintf(&v51, "%s/%s", sessionCopy + 8, v20->d_name);
      if (!v51)
      {
        v34 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "entry path failed");
        goto LABEL_46;
      }

      memset(&v50, 0, sizeof(v50));
      if (lstat(v51, &v50))
      {
        if (!*__error())
        {
          free(v51);
          v22 = -6700;
LABEL_45:
          v34 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "stat failed: %d", v22);
          goto LABEL_46;
        }

        v22 = *__error();
        free(v51);
        if (v22)
        {
          goto LABEL_45;
        }
      }

      else
      {
        free(v51);
      }

      v23 = v50.st_mode & 0xF000;
      switch(v23)
      {
        case 40960:
          v24 = 3;
          goto LABEL_32;
        case 32768:
          v24 = 1;
          goto LABEL_32;
        case 16384:
          v24 = 2;
LABEL_32:
          v25 = objc_alloc_init(CUFileItem);
          v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:d_name];
          [(CUFileItem *)v25 setName:v26];

          [(CUFileItem *)v25 setType:v24];
          if ((v50.st_mode & 0xF000) == 0x8000)
          {
            [(CUFileItem *)v25 setSize:v50.st_size];
          }

          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v9 addObject:v25];

          break;
      }
    }

    if (!--v19)
    {
      v27 = 0;
      goto LABEL_41;
    }
  }

  if (!*__error())
  {
    v27 = 1;
LABEL_41:
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
        goto LABEL_43;
      }

      if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        ucat = self->_ucat;
LABEL_43:
        v29 = [v9 count];
        LogPrintF(ucat, "[CUFileServer _handleQuery:session:]", 30, "Query response: %d item(s)", v30, v31, v32, v33, v29);
      }
    }

    v36 = objc_alloc_init(CUFileResponse);
    [(CUFileResponse *)v36 setFileItems:v9];
    [(CUFileResponse *)v36 setFlags:v27];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CUFileServer__handleQuery_session___block_invoke_3;
    block[3] = &unk_1E73A49F0;
    v48 = v45;
    v49 = v36;
    dispatch_async(dispatchQueue, block);

    goto LABEL_49;
  }

  v40 = __error();
  v34 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "readdir failed: %d", *v40);
LABEL_46:
  v35 = v56[5];
  v56[5] = v34;

LABEL_49:
  v44[2](v44);

  _Block_object_dispose(&v55, 8);
}

void __37__CUFileServer__handleQuery_session___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(*(a1 + 48) + 8) + 40);
  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 1088);
    if (*v11 <= 90)
    {
      if (*v11 == -1)
      {
        v12 = _LogCategory_Initialize(v11, 0x5Au);
        v10 = *(a1 + 32);
        if (!v12)
        {
          goto LABEL_6;
        }

        v11 = *(v10 + 1088);
        v8 = *(*(*(a1 + 48) + 8) + 40);
      }

      LogPrintF(v11, "[CUFileServer _handleQuery:session:]_block_invoke", 90, "### Query failed: %{error}", a5, a6, a7, a8, v8);
      v10 = *(a1 + 32);
    }

LABEL_6:
    v13 = *(v10 + 1096);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CUFileServer__handleQuery_session___block_invoke_2;
    block[3] = &unk_1E73A3290;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = v14;
    v18 = v15;
    dispatch_async(v13, block);
  }
}

void __37__CUFileServer__handleQuery_session___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

void __37__CUFileServer__handleQuery_session___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, 0, *(*(*(a1 + 40) + 8) + 40));
}

- (void)_handleQuery:(id)query responseHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__2972;
  v55 = __Block_byref_object_dispose__2973;
  v56 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__CUFileServer__handleQuery_responseHandler___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v50 = &v51;
  aBlock[4] = self;
  v8 = handlerCopy;
  v49 = v8;
  v9 = _Block_copy(aBlock);
  v10 = NSDictionaryGetNSNumber(queryCopy, @"sid", 0);
  if (!v10)
  {
    v37 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID");
    v11 = v52[5];
    v52[5] = v37;
    goto LABEL_14;
  }

  v11 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v10];
  if (!v11)
  {
    v38 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v10);
    v13 = v52[5];
    v52[5] = v38;
    goto LABEL_13;
  }

  TypeID = CFDictionaryGetTypeID();
  v13 = CFDictionaryGetTypedValue(queryCopy, @"fQry", TypeID, 0);
  if (v13)
  {
    v14 = [CUFileQuery alloc];
    v15 = v52;
    obj = v52[5];
    v16 = [(CUFileQuery *)v14 initWithDictionary:v13 error:&obj];
    objc_storeStrong(v15 + 5, obj);
    if (v16)
    {
      [v11 setLastRequestTicks:mach_absolute_time()];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __45__CUFileServer__handleQuery_responseHandler___block_invoke_2;
      v45[3] = &unk_1E73A3268;
      v46 = v8;
      [(CUFileQuery *)v16 setCompletionHandler:v45];
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x1Eu))
          {
            goto LABEL_9;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUFileServer _handleQuery:responseHandler:]", 30, "Query start: ID %@, %@", v17, v18, v19, v20, v10);
      }

LABEL_9:
      v41 = v13;
      v22 = v10;
      v23 = v8;
      v31 = self->_ioQueue;
      if (!v31)
      {
        v40 = v9;
        v32 = NSPrintF("%s-IO", v24, v25, v26, v27, v28, v29, v30, self->_ucat->var4);
        uTF8String = [v32 UTF8String];

        v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v31 = dispatch_queue_create(uTF8String, v34);

        objc_storeStrong(&self->_ioQueue, v31);
        v9 = v40;
      }

      ioQueue = self->_ioQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__CUFileServer__handleQuery_responseHandler___block_invoke_3;
      block[3] = &unk_1E73A37D8;
      block[4] = self;
      v36 = v16;
      v43 = v36;
      v44 = v11;
      dispatch_async(ioQueue, block);

      v8 = v23;
      v10 = v22;
      v13 = v41;
      goto LABEL_12;
    }

    v36 = 0;
  }

  else
  {
    v39 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No query");
    v36 = v52[5];
    v52[5] = v39;
  }

LABEL_12:

LABEL_13:
LABEL_14:

  v9[2](v9);
  _Block_object_dispose(&v51, 8);
}

void *__45__CUFileServer__handleQuery_responseHandler___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(result[6] + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(result[4] + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleQuery:responseHandler:]_block_invoke", 90, "### Query failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

void __45__CUFileServer__handleQuery_responseHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 encodeWithDictionary:v5];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_handleKeepAlive:(id)alive responseHandler:(id)handler
{
  aliveCopy = alive;
  handlerCopy = handler;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2972;
  v28 = __Block_byref_object_dispose__2973;
  v29 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CUFileServer__handleKeepAlive_responseHandler___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v23 = &v24;
  aBlock[4] = self;
  v8 = handlerCopy;
  v22 = v8;
  v9 = _Block_copy(aBlock);
  v10 = NSDictionaryGetNSNumber(aliveCopy, @"sid", 0);
  if (!v10)
  {
    v18 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID");
    v11 = v25[5];
    v25[5] = v18;
    goto LABEL_8;
  }

  v11 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v10];
  if (!v11)
  {
    v19 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v10);
    v20 = v25[5];
    v25[5] = v19;

    v11 = 0;
    goto LABEL_8;
  }

  v12 = mach_absolute_time();
  UpTicksToSeconds(v12 - [v11 lastRequestTicks]);
  ucat = self->_ucat;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x14u))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleKeepAlive:responseHandler:]", 20, "Keep alive: ID %@, %llu seconds", v13, v14, v15, v16, v10);
  }

LABEL_7:
  [v11 setLastRequestTicks:mach_absolute_time()];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
LABEL_8:

  v9[2](v9);
  _Block_object_dispose(&v24, 8);
}

void *__49__CUFileServer__handleKeepAlive_responseHandler___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(result[6] + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(result[4] + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleKeepAlive:responseHandler:]_block_invoke", 90, "### Keep alive failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

- (void)_handleSessionStop:(id)stop responseHandler:(id)handler
{
  stopCopy = stop;
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2972;
  v31 = __Block_byref_object_dispose__2973;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __51__CUFileServer__handleSessionStop_responseHandler___block_invoke;
  v23 = &unk_1E73A3FA0;
  v26 = &v27;
  selfCopy = self;
  v8 = handlerCopy;
  v25 = v8;
  v9 = _Block_copy(&aBlock);
  v10 = NSDictionaryGetNSNumber(stopCopy, @"sid", 0);
  if (!v10)
  {
    v17 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No session ID");
    v15 = v28[5];
    v28[5] = v17;
    goto LABEL_8;
  }

  v15 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v10];
  if (!v15)
  {
    v18 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "Session not found: ID %@", v10, aBlock, v21, v22, v23, selfCopy);
    v19 = v28[5];
    v28[5] = v18;

    v15 = 0;
    goto LABEL_8;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleSessionStop:responseHandler:]", 30, "Session stop: ID %@", v11, v12, v13, v14, v10);
  }

LABEL_7:
  [(NSMutableDictionary *)self->_sessionMap setObject:0 forKeyedSubscript:v10];
  [(CUFileServer *)self _sessionInvalidate:v15];
  [(CUFileServer *)self _update];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
LABEL_8:

  v9[2](v9);
  _Block_object_dispose(&v27, 8);
}

void *__51__CUFileServer__handleSessionStop_responseHandler___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(result[6] + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(result[4] + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _handleSessionStop:responseHandler:]_block_invoke", 90, "### Session stop failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

- (void)_handleSessionStart:(id)start responseHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = [(NSMutableDictionary *)self->_sessionMap count];
  if (v6 < 0x1E)
  {
    v11 = objc_alloc_init(CUFileServerSession);
    [(CUFileServerSession *)v11 setLastRequestTicks:mach_absolute_time()];
    v13 = self->_lastSessionID + 1;
    self->_lastSessionID = v13;
    [(CUFileServerSession *)v11 setSessionID:v13];
    if (!self->_sessionMap)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      sessionMap = self->_sessionMap;
      self->_sessionMap = v14;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
    [(NSMutableDictionary *)self->_sessionMap setObject:v11 forKeyedSubscript:v16];
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _handleSessionStart:responseHandler:]", 30, "Session start: ID %llu", v17, v18, v19, v20, v13);
LABEL_13:
    [(CUFileServer *)self _update];
    v23 = @"sid";
    v24[0] = v16;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    (*(handlerCopy + 2))(handlerCopy, v22, 0, 0);

    goto LABEL_14;
  }

  v11 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896146, "Too many sessions: %d", v6);
  v12 = self->_ucat;
  if (v12->var0 <= 90)
  {
    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize(v12, 0x5Au))
      {
        goto LABEL_11;
      }

      v12 = self->_ucat;
    }

    LogPrintF(v12, "[CUFileServer _handleSessionStart:responseHandler:]", 90, "### Session start failed: %{error}", v7, v8, v9, v10, v11);
  }

LABEL_11:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v11);
LABEL_14:
}

- (void)_update
{
  v3 = [(NSMutableDictionary *)self->_sessionMap count];
  sessionTimer = self->_sessionTimer;
  if (v3)
  {
    if (sessionTimer)
    {
      return;
    }

    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v6 = self->_sessionTimer;
    self->_sessionTimer = v5;

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __23__CUFileServer__update__block_invoke;
    v20[3] = &unk_1E73A49F0;
    v20[4] = v5;
    v20[5] = self;
    dispatch_source_set_event_handler(v5, v20);
    v7 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v5, v7, 0x37E11D600uLL, 0x3B9ACA00uLL);
    dispatch_activate(v5);
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _update]", 30, "Session timer started", v8, v9, v10, v11, v20[0]);
LABEL_13:

    return;
  }

  if (sessionTimer)
  {
    v13 = sessionTimer;
    dispatch_source_cancel(v13);
    v14 = self->_sessionTimer;
    self->_sessionTimer = 0;

    v19 = self->_ucat;
    if (v19->var0 <= 30)
    {
      if (v19->var0 == -1)
      {
        if (!_LogCategory_Initialize(v19, 0x1Eu))
        {
          return;
        }

        v19 = self->_ucat;
      }

      LogPrintF(v19, "[CUFileServer _update]", 30, "Session timer stopped", v15, v16, v17, v18, v22);
    }
  }
}

void *__23__CUFileServer__update__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[135])
  {
    return [result _sessionTimerFired];
  }

  return result;
}

- (void)_sessionTimerFired
{
  v28 = *MEMORY[0x1E69E9840];
  ucat = self->_ucat;
  if (ucat->var0 > 20)
  {
    goto LABEL_5;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize(ucat, 0x14u))
    {
      goto LABEL_5;
    }

    ucat = self->_ucat;
  }

  LogPrintF(ucat, "[CUFileServer _sessionTimerFired]", 20, "Session timer fired", v2, v3, v4, v5, v22);
LABEL_5:
  v8 = mach_absolute_time();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [(NSMutableDictionary *)self->_sessionMap allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *v24;
  do
  {
    v13 = 0;
    do
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(allKeys);
      }

      v14 = *(*(&v23 + 1) + 8 * v13);
      v15 = [(NSMutableDictionary *)self->_sessionMap objectForKeyedSubscript:v14];
      if (UpTicksToSeconds(v8 - [v15 lastRequestTicks]) >= 0x1E)
      {
        v20 = self->_ucat;
        if (v20->var0 <= 30)
        {
          if (v20->var0 != -1)
          {
            goto LABEL_13;
          }

          if (_LogCategory_Initialize(v20, 0x1Eu))
          {
            v20 = self->_ucat;
LABEL_13:
            LogPrintF(v20, "[CUFileServer _sessionTimerFired]", 30, "Session stale: ID %@, %llu seconds", v16, v17, v18, v19, v14);
          }
        }

        [(NSMutableDictionary *)self->_sessionMap setObject:0 forKeyedSubscript:v14];
        [(CUFileServer *)self _sessionInvalidate:v15];
      }

      ++v13;
    }

    while (v11 != v13);
    v21 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    v11 = v21;
  }

  while (v21);
LABEL_20:
}

- (void)_sessionInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  dirStream = [invalidateCopy dirStream];
  if (dirStream)
  {
    closedir(dirStream);
    [invalidateCopy setDirStream:0];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled || self->_invalidateDone || self->_clinkClient)
  {
    return;
  }

  v11 = _Block_copy(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v8 = v11;
  if (v11)
  {
    v11[2](v11);
    v8 = v11;
  }

  self->_invalidateDone = 1;
  ucat = self->_ucat;
  if (*ucat <= 30)
  {
    if (*ucat == -1)
    {
      ucat = _LogCategory_Initialize(ucat, 0x1Eu);
      v8 = v11;
      if (!ucat)
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    ucat = LogPrintF(ucat, "[CUFileServer _invalidated]", 30, "Invalidated", v4, v5, v6, v7, v10);
    v8 = v11;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](ucat, v8);
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUFileServer _invalidate]", 30, "Invalidate", v2, v3, v4, v5, v13);
  }

LABEL_6:
  [(RPCompanionLinkClient *)self->_clinkClient invalidate];
  sessionTimer = self->_sessionTimer;
  if (sessionTimer)
  {
    v9 = sessionTimer;
    dispatch_source_cancel(v9);
    v10 = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  sessionMap = self->_sessionMap;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__CUFileServer__invalidate__block_invoke;
  v14[3] = &unk_1E73A3240;
  v14[4] = self;
  [(NSMutableDictionary *)sessionMap enumerateKeysAndObjectsUsingBlock:v14];
  [(NSMutableDictionary *)self->_sessionMap removeAllObjects];
  v12 = self->_sessionMap;
  self->_sessionMap = 0;

  [(CUFileServer *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CUFileServer_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__2972;
  v73 = __Block_byref_object_dispose__2973;
  v74 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CUFileServer__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_1E73A3FA0;
  v68 = &v69;
  aBlock[4] = self;
  v5 = completionCopy;
  v67 = v5;
  v10 = _Block_copy(aBlock);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUFileServer _activateWithCompletion:]", 30, "Activate", v6, v7, v8, v9, v57);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = self->_rootDirectoryURL;
  if (!v12)
  {
    v55 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No root directory URL");
LABEL_11:
    v14 = v70[5];
    v70[5] = v55;
    goto LABEL_8;
  }

  *__error() = 0;
  if (!realpath_DARWIN_EXTSN([(NSURL *)v12 fileSystemRepresentation], self->_rootPath))
  {
    v56 = __error();
    v55 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "Bad root directory: error %d", *v56);
    goto LABEL_11;
  }

  invalidate = [(RPCompanionLinkClient *)self->_clinkClient invalidate];
  v14 = objc_alloc_init(getRPCompanionLinkClientClass(invalidate));
  objc_storeStrong(&self->_clinkClient, v14);
  [v14 setDispatchQueue:self->_dispatchQueue];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __40__CUFileServer__activateWithCompletion___block_invoke_2;
  v65[3] = &unk_1E73A49F0;
  v65[4] = v14;
  v65[5] = self;
  [v14 setInvalidationHandler:v65];
  v22 = NSPrintF("FSSr:%@", v15, v16, v17, v18, v19, v20, v21, self->_serviceType);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __40__CUFileServer__activateWithCompletion___block_invoke_3;
  v64[3] = &unk_1E73A31F0;
  v64[4] = self;
  [v14 registerRequestID:v22 options:0 handler:v64];

  v30 = NSPrintF("FSSp:%@", v23, v24, v25, v26, v27, v28, v29, self->_serviceType);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __40__CUFileServer__activateWithCompletion___block_invoke_4;
  v63[3] = &unk_1E73A31F0;
  v63[4] = self;
  [v14 registerRequestID:v30 options:0 handler:v63];

  v38 = NSPrintF("FSQy:%@", v31, v32, v33, v34, v35, v36, v37, self->_serviceType);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __40__CUFileServer__activateWithCompletion___block_invoke_5;
  v62[3] = &unk_1E73A31F0;
  v62[4] = self;
  [v14 registerRequestID:v38 options:0 handler:v62];

  v46 = NSPrintF("FSRF:%@", v39, v40, v41, v42, v43, v44, v45, self->_serviceType);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __40__CUFileServer__activateWithCompletion___block_invoke_6;
  v61[3] = &unk_1E73A31F0;
  v61[4] = self;
  [v14 registerRequestID:v46 options:0 handler:v61];

  v54 = NSPrintF("FSKA:%@", v47, v48, v49, v50, v51, v52, v53, self->_serviceType);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __40__CUFileServer__activateWithCompletion___block_invoke_7;
  v60[3] = &unk_1E73A31F0;
  v60[4] = self;
  [v14 registerRequestID:v54 options:0 handler:v60];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __40__CUFileServer__activateWithCompletion___block_invoke_8;
  v58[3] = &unk_1E73A3218;
  v58[4] = self;
  v59 = v5;
  [v14 activateWithCompletion:v58];

LABEL_8:
  v10[2](v10);

  _Block_object_dispose(&v69, 8);
}

void *__40__CUFileServer__activateWithCompletion___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(result[6] + 8) + 40);
  if (!v8)
  {
    return result;
  }

  v9 = result;
  v10 = *(result[4] + 1088);
  if (*v10 <= 90)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x5Au))
      {
        goto LABEL_7;
      }

      v10 = *(v9[4] + 1088);
      v8 = *(*(v9[6] + 8) + 40);
    }

    LogPrintF(v10, "[CUFileServer _activateWithCompletion:]_block_invoke", 90, "### Activate failed: %{error}", a5, a6, a7, a8, v8);
  }

LABEL_7:
  v11 = *(v9[5] + 16);

  return v11();
}

void *__40__CUFileServer__activateWithCompletion___block_invoke_2(void *result)
{
  v2 = result[5];
  v3 = *(v2 + 16);
  if (result[4] == v3)
  {
    v4 = result;
    *(v2 + 16) = 0;

    v5 = v4[5];

    return [v5 _invalidated];
  }

  return result;
}

void __40__CUFileServer__activateWithCompletion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(*(a1 + 32) + 1088);
  v9 = *v8;
  v12 = v3;
  if (!v3)
  {
    if (v9 > 30)
    {
      goto LABEL_11;
    }

    if (v9 == -1)
    {
      if (!_LogCategory_Initialize(v8, 0x1Eu))
      {
        goto LABEL_11;
      }

      v8 = *(*(a1 + 32) + 1088);
    }

    LogPrintF(v8, "[CUFileServer _activateWithCompletion:]_block_invoke_8", 30, "CLink activated", v4, v5, v6, v7, v11);
    goto LABEL_11;
  }

  if (v9 > 90)
  {
    goto LABEL_11;
  }

  if (v9 != -1)
  {
    goto LABEL_4;
  }

  v10 = _LogCategory_Initialize(v8, 0x5Au);
  v3 = v12;
  if (v10)
  {
    v8 = *(*(a1 + 32) + 1088);
LABEL_4:
    LogPrintF(v8, "[CUFileServer _activateWithCompletion:]_block_invoke_8", 90, "### CLink activate failed: %{error}", v4, v5, v6, v7, v3);
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CUFileServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __39__CUFileServer_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960575, "Activate already called");
    v8 = *(*(a1 + 32) + 1088);
    v12 = v3;
    if (*v8 <= 90)
    {
      if (*v8 == -1)
      {
        v11 = _LogCategory_Initialize(v8, 0x5Au);
        v3 = v12;
        if (!v11)
        {
          goto LABEL_9;
        }

        v8 = *(*(a1 + 32) + 1088);
      }

      LogPrintF(v8, "[CUFileServer activateWithCompletion:]_block_invoke", 90, "### Activate failed: %{error}", v4, v5, v6, v7, v3);
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();

    return;
  }

  *(v2 + 8) = 1;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  [v9 _activateWithCompletion:v10];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE9728;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUFileServer;
  [(CUFileServer *)&v4 dealloc];
}

- (CUFileServer)init
{
  v6.receiver = self;
  v6.super_class = CUFileServer;
  v2 = [(CUFileServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUFileServer;
    v4 = v3;
  }

  return v3;
}

@end