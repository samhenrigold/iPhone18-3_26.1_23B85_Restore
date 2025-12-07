@interface DYFSStreamer
+ (id)streamItem:(id)item withTransport:(id)transport destinationName:(id)name;
+ (void)denyTransfer:(id)transfer transport:(id)transport;
- (BOOL)_createDirectoryWithAttributes:(id)attributes error:(id *)error;
- (BOOL)_createOrUpdateFileWithData:(id)data attributes:(id)attributes error:(id *)error;
- (BOOL)_createSymlinkWithAttributes:(id)attributes error:(id *)error;
- (BOOL)_sendCreateDirectoryMessage:(id)message error:(id *)error;
- (BOOL)_sendCreateSymlinkMessage:(id)message destination:(id)destination error:(id *)error;
- (BOOL)_sendFileAtURL:(id)l relativePath:(id)path error:(id *)error;
- (DYFSStreamer)initWithURL:(id)l transport:(id)transport asSender:(BOOL)sender;
- (id)_resolveRelativePath:(id)path error:(id *)error;
- (id)description;
- (id)initiateTransfer;
- (id)receiveTransfer:(id)transfer;
- (void)_invalidate;
- (void)_sendAbortMessageInReplyTo:(id)to becauseOfError:(id)error;
- (void)dealloc;
- (void)denyTransfer:(id)transfer;
- (void)setDestinationName:(id)name;
- (void)setFilenameFilter:(id)filter;
- (void)setOwner:(id)owner;
@end

@implementation DYFSStreamer

+ (id)streamItem:(id)item withTransport:(id)transport destinationName:(id)name
{
  v6 = [[DYFSStreamer alloc] initWithURL:item transport:transport asSender:1];
  v7 = v6;
  if (name)
  {
    [(DYFSStreamer *)v6 setDestinationName:name];
  }

  initiateTransfer = [(DYFSStreamer *)v7 initiateTransfer];

  return initiateTransfer;
}

+ (void)denyTransfer:(id)transfer transport:(id)transport
{
  v6 = [MEMORY[0x277D0AFE0] messageWithKind:2305 objectPayload:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];

  [transport send:v6 inReplyTo:transfer error:0];
}

- (DYFSStreamer)initWithURL:(id)l transport:(id)transport asSender:(BOOL)sender
{
  v13.receiver = self;
  v13.super_class = DYFSStreamer;
  v8 = [(DYFSStreamer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v8)), v8), "UTF8String"];
    v9->_queue = dispatch_queue_create(v10, 0);
    filePathURL = [l filePathURL];
    v9->_url = filePathURL;
    if (filePathURL)
    {
      v9->_path = [(NSURL *)filePathURL path];
      v9->_isSender = sender;
      v9->_transport = transport;
      v9->_fileManager = objc_opt_new();
      if (!v9->_isSender)
      {
        v9->_fileHandles = objc_opt_new();
      }

      v9->_destinationName = [(NSURL *)v9->_url lastPathComponent];
      v9->_urls = objc_opt_new();
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = DYFSStreamer;
  [(DYFSStreamer *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = DYFSStreamer;
  v4 = [(DYFSStreamer *)&v7 description];
  if (self->_isSender)
  {
    v5 = @"sender";
  }

  else
  {
    v5 = @"receiver";
  }

  return [v3 stringWithFormat:@"%@: mode=%@ path=%@", v4, v5, -[DYFSStreamer path](self, "path")];
}

- (void)_sendAbortMessageInReplyTo:(id)to becauseOfError:(id)error
{
  v6 = [error description];
  if (!v6 || (v7 = [MEMORY[0x277D0AFE0] messageWithKind:2309 stringPayload:v6]) == 0)
  {
    v7 = [MEMORY[0x277D0AFE0] messageWithKind:2309];
  }

  [(DYTransport *)self->_transport send:v7 inReplyTo:to error:0];
  ++self->_messages;
  self->_bytes += [v7 transportSize];
}

- (BOOL)_sendFileAtURL:(id)l relativePath:(id)path error:(id *)error
{
  v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:error];
  if (v8)
  {
    v9 = v8;
    [v8 seekToFileOffset:0];
    v24 = 0;
    LODWORD(v8) = [l getResourceValue:&v24 forKey:*MEMORY[0x277CBE838] error:error];
    if (v8)
    {
      lCopy = l;
      unsignedIntegerValue = [v24 unsignedIntegerValue];
      v11 = 0;
      v22 = *MEMORY[0x277D0B160];
      v12 = *MEMORY[0x277D0B158];
      v13 = *MEMORY[0x277D0B168];
      while (1)
      {
        v14 = unsignedIntegerValue - v11 >= 0x80000 ? 0x80000 : unsignedIntegerValue - v11;
        v15 = [v9 readDataOfLength:v14];
        v16 = MEMORY[0x277CBEAC0];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
        v18 = [v16 dictionaryWithObjectsAndKeys:{path, v22, v17, v12, v24, v13, @"file", @"kind", 0}];
        v19 = [MEMORY[0x277D0AFE0] messageWithKind:2306 attributes:v18 payload:v15];
        LODWORD(v16) = [(DYTransport *)self->_transport send:v19 inReplyTo:self->_initTransferAckMessage error:error];
        ++self->_messages;
        self->_bytes += [v19 transportSize];
        if (!v16)
        {
          break;
        }

        v11 += v14;
        if (v11 >= unsignedIntegerValue)
        {
          ++self->_files;
          [(NSMutableArray *)self->_urls addObject:lCopy];
          LOBYTE(v8) = 1;
          return v8;
        }
      }

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)_sendCreateDirectoryMessage:(id)message error:(id *)error
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{message, *MEMORY[0x277D0B160], @"directory", @"kind", 0}];
  v7 = [MEMORY[0x277D0AFE0] messageWithKind:2306 attributes:v6 payload:0];
  LOBYTE(error) = [(DYTransport *)self->_transport send:v7 inReplyTo:self->_initTransferAckMessage error:error];
  ++self->_messages;
  self->_bytes += [v7 transportSize];
  return error;
}

- (BOOL)_sendCreateSymlinkMessage:(id)message destination:(id)destination error:(id *)error
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{message, *MEMORY[0x277D0B160], destination, @"destination", @"symlink", @"kind", 0}];
  v8 = [MEMORY[0x277D0AFE0] messageWithKind:2306 attributes:v7 payload:0];
  LOBYTE(error) = [(DYTransport *)self->_transport send:v8 inReplyTo:self->_initTransferAckMessage error:error];
  ++self->_messages;
  self->_bytes += [v8 transportSize];
  return error;
}

- (id)initiateTransfer
{
  self->_didInitiate = 1;
  future = [MEMORY[0x277D0AFC8] future];
  if (![(NSFileManager *)self->_fileManager fileExistsAtPath:self->_path isDirectory:&self->_itemIsDirectory])
  {
    [future setError:{objc_msgSend(MEMORY[0x277D0AFC0], "errorWithDomain:code:userInfo:", *MEMORY[0x277D0AFB8], 1, 0)}];
    v10 = future;
    v9 = 0;
    goto LABEL_5;
  }

  v4 = [MEMORY[0x277D0AFE0] messageWithKind:2304 stringPayload:self->_destinationName];
  v14 = 0;
  transport = self->_transport;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__DYFSStreamer_initiateTransfer__block_invoke;
  v13[3] = &unk_279309BE8;
  v13[4] = self;
  v13[5] = future;
  v7 = [(DYTransport *)transport send:v4 error:&v14 replyQueue:queue timeout:0 handler:v13];
  ++self->_messages;
  self->_bytes += [v4 transportSize];
  if ((v7 & 1) == 0)
  {
    v8 = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __32__DYFSStreamer_initiateTransfer__block_invoke_4;
    v12[3] = &unk_279309890;
    v12[4] = self;
    dispatch_sync(v8, v12);
    [future setError:v14];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v10 = future;
LABEL_5:
    [v10 setResult:v9];
  }

  return future;
}

uint64_t __32__DYFSStreamer_initiateTransfer__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 83))
  {
    return 0;
  }

  if (!a2)
  {
    [*(a1 + 40) setError:?];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    _DYOLog();
    [*(a1 + 32) _invalidate];
    return 0;
  }

  ++*(v3 + 144);
  *(*(a1 + 32) + 136) += [a2 transportSize];
  if ([a2 kind] != 2305)
  {
    v8 = *(a1 + 40);
    v9 = MEMORY[0x277D0AFC0];
    v10 = *MEMORY[0x277D0AFB8];
    v11 = 43;
    goto LABEL_12;
  }

  if (([objc_msgSend(a2 "objectPayload")] & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = MEMORY[0x277D0AFC0];
    v10 = *MEMORY[0x277D0AFB8];
    v11 = 42;
LABEL_12:
    [v8 setError:{objc_msgSend(v9, "errorWithDomain:code:userInfo:", v10, v11, 0)}];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    [*(a1 + 32) _invalidate];
    return 0;
  }

  *(*(a1 + 32) + 32) = a2;
  v53 = 0;
  v6 = *(a1 + 32);
  if (*(v6 + 81) != 1)
  {
    v13 = [*(v6 + 88) lastPathComponent];
    v14 = *(a1 + 32);
    if (*(v14 + 112))
    {
      if (![*(v14 + 112) evaluateWithObject:v13])
      {
        goto LABEL_19;
      }

      v14 = *(a1 + 32);
    }

    if ([v14 _sendFileAtURL:*(v14 + 88) relativePath:v13 error:&v53])
    {
LABEL_19:
      v15 = [MEMORY[0x277D0AFE0] messageWithKind:2307];
      v41[0] = MEMORY[0x277D85DD0];
      v16 = *(a1 + 32);
      v17 = *(a1 + 32);
      v18 = *(v17 + 24);
      v19 = *(v17 + 8);
      v41[1] = 3221225472;
      v41[2] = __32__DYFSStreamer_initiateTransfer__block_invoke_3;
      v41[3] = &unk_279309BE8;
      v42 = v16;
      [v18 send:v15 inReplyTo:a2 error:0 replyQueue:v19 timeout:0 handler:v41];
      ++*(*(a1 + 32) + 144);
      *(*(a1 + 32) + 136) += [v15 transportSize];
      return 0;
    }

    goto LABEL_40;
  }

  if (*(v6 + 84) == 1)
  {
    if ([v6 _sendCreateSymlinkMessage:objc_msgSend(*(v6 + 88) destination:"lastPathComponent") error:{objc_msgSend(*(*(a1 + 32) + 88), "path"), &v53}])
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

  if (([*(a1 + 32) _sendCreateDirectoryMessage:*(v6 + 104) error:&v53] & 1) == 0)
  {
LABEL_40:
    [*(a1 + 32) _sendAbortMessageInReplyTo:*(*(a1 + 32) + 32) becauseOfError:v53];
    [*(a1 + 32) _invalidate];
    [*(a1 + 40) setError:v53];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    return 0;
  }

  v20 = *MEMORY[0x277CBE8E8];
  v38 = *MEMORY[0x277CBE8B0];
  v39 = *MEMORY[0x277CBE868];
  v40 = *MEMORY[0x277CBE8A8];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE8A8], *MEMORY[0x277CBE868], *MEMORY[0x277CBE8B0], *MEMORY[0x277CBE838], 0}];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v22 = *(a1 + 32);
  v23 = *(a1 + 32);
  v24 = *(v23 + 16);
  v25 = *(v23 + 88);
  v51[2] = __32__DYFSStreamer_initiateTransfer__block_invoke_2;
  v51[3] = &unk_279309BC0;
  v52 = v22;
  v26 = [v24 enumeratorAtURL:v25 includingPropertiesForKeys:v21 options:0 errorHandler:v51];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (!v27)
  {
    goto LABEL_38;
  }

  v28 = v27;
  v29 = *v48;
  while (2)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v48 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v47 + 1) + 8 * i);
      v46 = 0;
      [v31 getResourceValue:&v46 forKey:v20 error:&v53];
      v32 = *(*(a1 + 32) + 112);
      if (!v32 || ([v32 evaluateWithObject:v46] & 1) != 0)
      {
        v44 = 0;
        v45 = 0;
        v43 = 0;
        [v31 getResourceValue:&v45 forKey:v40 error:&v53];
        [v31 getResourceValue:&v44 forKey:v39 error:&v53];
        [v31 getResourceValue:&v43 forKey:v38 error:&v53];
        v33 = [v31 pathComponents];
        v34 = [v26 level];
        v35 = [*(*(a1 + 32) + 104) stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(v33, "subarrayWithRange:", objc_msgSend(v33, "count") - v34, v34), "componentsJoinedByString:", @"/"}];
        if ([v45 BOOLValue])
        {
          if (([*(a1 + 32) _sendFileAtURL:v31 relativePath:v35 error:&v53] & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (![v43 BOOLValue])
          {
            if ([v44 BOOLValue])
            {
              if ([*(a1 + 32) _sendCreateDirectoryMessage:v35 error:&v53])
              {
                continue;
              }

LABEL_41:
              v36 = v53;
            }

            else
            {
              v36 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:46 userInfo:0];
              v53 = v36;
            }

            [*(a1 + 32) _sendAbortMessageInReplyTo:*(*(a1 + 32) + 32) becauseOfError:v36];
            [*(a1 + 32) _invalidate];
            [*(a1 + 40) setError:v53];
            [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
            [v26 setValue:0 forKey:@"errorHandler"];
            return 0;
          }

          if (([*(a1 + 32) _sendCreateSymlinkMessage:v35 destination:objc_msgSend(v31 error:{"lastPathComponent"), &v53}] & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v28 = [v26 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_38:
  [v26 setValue:0 forKey:@"errorHandler"];
  if ((*(*(a1 + 32) + 83) & 1) == 0)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t __32__DYFSStreamer_initiateTransfer__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _sendAbortMessageInReplyTo:*(*(a1 + 32) + 32) becauseOfError:a3];
  [*(a1 + 32) _invalidate];
  [*(a1 + 40) setError:a3];
  [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  return 0;
}

uint64_t __32__DYFSStreamer_initiateTransfer__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if ((v4[83] & 1) == 0)
  {
    [v4 _invalidate];
    if (a2)
    {
      ++*(*(a1 + 32) + 144);
      *(*(a1 + 32) + 136) += [a2 transportSize];
      if ([a2 kind] == 2309)
      {
        v7 = *(a1 + 40);
        v8 = MEMORY[0x277D0AFC0];
        v9 = *MEMORY[0x277D0AFB8];
        v10 = MEMORY[0x277CBEAC0];
        v11 = [a2 stringPayload];
        v12 = [v8 errorWithDomain:v9 code:45 userInfo:{objc_msgSend(v10, "dictionaryWithObjectsAndKeys:", v11, *MEMORY[0x277CCA450], 0)}];
        v13 = v7;
      }

      else
      {
        v14 = [a2 kind];
        v15 = *(a1 + 40);
        if (v14 == 2308)
        {
          v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v17 = v15;
LABEL_10:
          [v17 setResult:v16];
          return 0;
        }

        v12 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:43 userInfo:0];
        v13 = v15;
      }

      [v13 setError:v12];
      v18 = *(a1 + 40);
      v16 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v17 = v18;
      goto LABEL_10;
    }

    [*(a1 + 40) setError:a3];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    _DYOLog();
  }

  return 0;
}

- (void)setFilenameFilter:(id)filter
{
  if (!self->_isSender)
  {
    [DYFSStreamer setFilenameFilter:];
  }

  if (self->_didInitiate)
  {
    [DYFSStreamer setFilenameFilter:];
  }

  filenameFilter = self->_filenameFilter;
  if (filenameFilter != filter)
  {

    self->_filenameFilter = filter;
  }
}

- (id)_resolveRelativePath:(id)path error:(id *)error
{
  if (!path)
  {
    if (error)
    {
      v7 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  standardizedURL = [[(NSURL *)self->_url URLByAppendingPathComponent:?] standardizedURL];
  if (![(NSString *)[(NSURL *)standardizedURL path] hasPrefix:[(NSURL *)self->_url path]])
  {
    if (error)
    {
      v7 = 44;
LABEL_7:
      standardizedURL = 0;
      *error = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:v7 userInfo:0];
      return standardizedURL;
    }

    return 0;
  }

  return standardizedURL;
}

- (BOOL)_createOrUpdateFileWithData:(id)data attributes:(id)attributes error:(id *)error
{
  v9 = -[DYFSStreamer _resolveRelativePath:error:](self, "_resolveRelativePath:error:", [attributes objectForKey:*MEMORY[0x277D0B160]], error);
  if (!v9)
  {
    return v9;
  }

  v10 = v9;
  v11 = [objc_msgSend(attributes objectForKey:{*MEMORY[0x277D0B168]), "unsignedIntegerValue"}];
  v12 = [(NSMutableDictionary *)self->_fileHandles objectForKey:v10];
  if (!v12)
  {
    [(NSFileManager *)self->_fileManager removeItemAtURL:v10 error:error];
    v21 = open([objc_msgSend(v10 "path")], 2561, 384);
    if (v21 == -1)
    {
      if (!error)
      {
        goto LABEL_29;
      }

      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      LOBYTE(v9) = 0;
      *error = v23;
      return v9;
    }

    v14 = v21;
    if (ftruncate(v21, v11) == -1)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      }
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v14 closeOnDealloc:1];
      if (v22)
      {
        v13 = v22;
        if (fchown(v14, self->_ownerUID, 0xFFFFFFFF) == -1)
        {

          v24 = MEMORY[0x277CCACA8];
          v25 = __error();
          [v24 stringWithUTF8String:strerror(*v25)];
          _DYOLog();
          goto LABEL_29;
        }

        [(NSMutableDictionary *)self->_fileHandles setObject:v13 forKey:v10];

        ++self->_files;
        [(NSMutableArray *)self->_urls addObject:v10];
        goto LABEL_4;
      }
    }

    close(v14);
    goto LABEL_29;
  }

  v13 = v12;
  LODWORD(v14) = [v12 fileDescriptor];
LABEL_4:
  v15 = [objc_msgSend(attributes objectForKey:{*MEMORY[0x277D0B158]), "unsignedLongValue"}];
  if (v15 != lseek(v14, 0, 1))
  {
    v26 = dy_abort("discontiguous file data chunk");
    LOBYTE(v9) = [(DYFSStreamer *)v26 _createDirectoryWithAttributes:v27 error:v28, v29];
    return v9;
  }

  bytes = [data bytes];
  v17 = [data length];
  if (v17 < 1)
  {
    v19 = 0;
LABEL_18:
    if (v19 + v15 == v11)
    {
      [v13 closeFile];
      [(NSMutableDictionary *)self->_fileHandles removeObjectForKey:v10];
    }

    objc_opt_self();
    LOBYTE(v9) = 1;
    return v9;
  }

  v18 = v17;
  v19 = 0;
  while (1)
  {
    v20 = write(v14, (v19 + bytes), v18 - v19);
    if (v20 == -1)
    {
      break;
    }

    v19 += v20;
LABEL_10:
    if (v19 >= v18)
    {
      goto LABEL_18;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_10;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  [v13 closeFile];
  [(NSMutableDictionary *)self->_fileHandles removeObjectForKey:v10];
LABEL_29:
  LOBYTE(v9) = 0;
  return v9;
}

- (BOOL)_createDirectoryWithAttributes:(id)attributes error:(id *)error
{
  v6 = -[DYFSStreamer _resolveRelativePath:error:](self, "_resolveRelativePath:error:", [attributes objectForKey:*MEMORY[0x277D0B160]], error);
  if (v6)
  {
    v7 = v6;
    [(NSFileManager *)self->_fileManager removeItemAtURL:v6 error:0];
    path = [v7 path];
    fileManager = self->_fileManager;
    directoryAttributes = self->_directoryAttributes;

    LOBYTE(v6) = [(NSFileManager *)fileManager createDirectoryAtPath:path withIntermediateDirectories:0 attributes:directoryAttributes error:error];
  }

  return v6;
}

- (BOOL)_createSymlinkWithAttributes:(id)attributes error:(id *)error
{
  v7 = -[DYFSStreamer _resolveRelativePath:error:](self, "_resolveRelativePath:error:", [attributes objectForKey:*MEMORY[0x277D0B160]], error);
  if (v7)
  {
    v8 = v7;
    v9 = [attributes objectForKey:@"destination"];
    v10 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x277CCA900], "URLQueryAllowedCharacterSet")}];
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    [(NSFileManager *)self->_fileManager removeItemAtURL:v8 error:error];
    LOBYTE(v7) = [(NSFileManager *)self->_fileManager createSymbolicLinkAtURL:v8 withDestinationURL:v11 error:error];
    ++self->_files;
  }

  return v7;
}

- (void)setOwner:(id)owner
{
  if (self->_isSender)
  {
    [DYFSStreamer setOwner:];
  }

  if (self->_didInitiate)
  {
    [DYFSStreamer setOwner:];
  }

  owner = self->_owner;
  if (owner != owner)
  {

    self->_owner = [owner copy];
  }
}

- (void)setDestinationName:(id)name
{
  if (!self->_isSender)
  {
    [DYFSStreamer setDestinationName:];
  }

  if (self->_didInitiate)
  {
    [DYFSStreamer setDestinationName:];
  }

  if (!name)
  {
    [DYFSStreamer setDestinationName:];
  }

  destinationName = self->_destinationName;
  if (destinationName != name)
  {

    self->_destinationName = [name copy];
  }
}

- (id)receiveTransfer:(id)transfer
{
  future = [MEMORY[0x277D0AFC8] future];
  if (self->_owner)
  {
    *__error() = 0;
    v6 = getpwnam([(NSString *)self->_owner UTF8String]);
    if (!v6)
    {
      v18 = __error();
      v19 = *v18;
      if (v19)
      {
        owner = [MEMORY[0x277CCACA8] stringWithUTF8String:strerror(*v18)];
      }

      else
      {
        owner = self->_owner;
      }

      _DYOLog();
      [(DYFSStreamer *)self denyTransfer:transfer, owner];
      [future setError:{objc_msgSend(MEMORY[0x277D0AFC0], "errorWithDomain:code:userInfo:", *MEMORY[0x277CCA5B8], v19, 0)}];
      v20 = MEMORY[0x277CCABB0];
      goto LABEL_15;
    }

    pw_uid = v6->pw_uid;
  }

  else
  {
    pw_uid = -1;
  }

  self->_ownerUID = pw_uid;
  v8 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_ownerUID];
  v10 = *MEMORY[0x277CCA158];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:448];
  v12 = [v8 initWithObjectsAndKeys:{v9, v10, v11, *MEMORY[0x277CCA180], 0}];
  self->_directoryAttributes = v12;
  v26 = 0;
  if (![(NSFileManager *)self->_fileManager createDirectoryAtPath:self->_path withIntermediateDirectories:0 attributes:v12 error:&v26]&& (DYFSDirectoryExists() & 1) == 0)
  {
    v23 = v26;
    _DYOLog();
    [(DYFSStreamer *)self denyTransfer:transfer, v23];
    goto LABEL_12;
  }

  self->_didInitiate = 1;
  v13 = [MEMORY[0x277D0AFE0] messageWithKind:2305 objectPayload:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1)}];
  transport = self->_transport;
  queue = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __32__DYFSStreamer_receiveTransfer___block_invoke;
  v25[3] = &unk_279309BE8;
  v25[4] = self;
  v25[5] = future;
  v16 = [(DYTransport *)transport send:v13 inReplyTo:transfer error:&v26 replyQueue:queue timeout:10000000000 handler:v25];
  ++self->_messages;
  self->_bytes += [v13 transportSize];
  if ((v16 & 1) == 0)
  {
    _DYOLog();
    v17 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__DYFSStreamer_receiveTransfer___block_invoke_2;
    block[3] = &unk_279309890;
    block[4] = self;
    dispatch_sync(v17, block);
LABEL_12:
    [future setError:v26];
    v20 = MEMORY[0x277CCABB0];
LABEL_15:
    [future setResult:{objc_msgSend(v20, "numberWithBool:", 0)}];
  }

  return future;
}

uint64_t __32__DYFSStreamer_receiveTransfer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  if (!a2)
  {
    _DYOLog();
    [*(a1 + 32) _invalidate];
    v8 = *(a1 + 40);
    v9 = a3;
    goto LABEL_8;
  }

  ++*(v4 + 144);
  *(*(a1 + 32) + 136) += [a2 transportSize];
  if ([a2 kind] != 2306)
  {
    if ([a2 kind] == 2307)
    {
      v10 = *(a1 + 32);
      if (*(v10 + 83) == 1)
      {
        [v10 _sendAbortMessageInReplyTo:a2 becauseOfError:*(v10 + 48)];
      }

      else
      {
        v11 = [MEMORY[0x277D0AFE0] messageWithKind:2308];
        [*(*(a1 + 32) + 24) send:v11 inReplyTo:a2 error:0];
        ++*(*(a1 + 32) + 144);
        *(*(a1 + 32) + 136) += [v11 transportSize];

        *(*(a1 + 32) + 48) = 0;
      }

      [*(a1 + 40) setError:*(*(a1 + 32) + 48)];
      [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", (*(*(a1 + 32) + 83) & 1) == 0)}];
      [*(a1 + 32) _invalidate];
      return 0;
    }

    if ([a2 kind] != 2309)
    {
      [*(a1 + 32) _invalidate];
      *(*(a1 + 32) + 48) = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:43 userInfo:0];
      goto LABEL_25;
    }

    v15 = [a2 stringPayload];
    _DYOLog();
    [*(a1 + 32) _invalidate];
    v9 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:45 userInfo:0];
    v8 = *(a1 + 40);
LABEL_8:
    [v8 setError:v9];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
    return 0;
  }

  if ((*(*(a1 + 32) + 83) & 1) == 0)
  {
    v6 = [a2 attributeForKey:@"kind"];
    if ([v6 isEqualToString:@"file"])
    {
      if ([*(a1 + 32) _createOrUpdateFileWithData:objc_msgSend(a2 attributes:"payload") error:{objc_msgSend(a2, "attributes"), *(a1 + 32) + 48}])
      {
        goto LABEL_23;
      }
    }

    else if ([v6 isEqualToString:@"directory"])
    {
      if ([*(a1 + 32) _createDirectoryWithAttributes:objc_msgSend(a2 error:{"attributes"), *(a1 + 32) + 48}])
      {
LABEL_23:
        *(*(a1 + 32) + 48) = 0;
        return 1;
      }
    }

    else if ([v6 isEqualToString:@"symlink"] && (objc_msgSend(*(a1 + 32), "_createSymlinkWithAttributes:error:", objc_msgSend(a2, "attributes"), *(a1 + 32) + 48) & 1) != 0)
    {
      goto LABEL_23;
    }

    v16 = [a2 attributes];
    v17 = *(*(a1 + 32) + 48);
    _DYOLog();
    v13 = *(*(a1 + 32) + 48);
    [*(a1 + 32) _invalidate];
LABEL_25:
    [*(a1 + 40) setError:*(*(a1 + 32) + 48)];
    [*(a1 + 40) setResult:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  }

  return 1;
}

- (void)denyTransfer:(id)transfer
{
  self->_didInitiate = 1;
  v5 = [MEMORY[0x277D0AFE0] messageWithKind:2305 objectPayload:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  [(DYTransport *)self->_transport send:v5 inReplyTo:transfer error:0];
  ++self->_messages;
  self->_bytes += [v5 transportSize];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DYFSStreamer_denyTransfer___block_invoke;
  block[3] = &unk_279309890;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invalidate
{
  if (!self->_invalid)
  {
    [-[NSMutableDictionary allValues](self->_fileHandles "allValues")];
    [(NSMutableDictionary *)self->_fileHandles removeAllObjects];
    self->_invalid = 1;
  }
}

@end