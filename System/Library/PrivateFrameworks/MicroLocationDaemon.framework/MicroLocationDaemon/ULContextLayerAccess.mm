@interface ULContextLayerAccess
- (ULContextLayerAccess)initWithSingleAccess:(id)access;
- (ULContextLayerAccess)initWithWriter:(id)writer readers:(id)readers;
@end

@implementation ULContextLayerAccess

- (ULContextLayerAccess)initWithWriter:(id)writer readers:(id)readers
{
  v58 = *MEMORY[0x277D85DE8];
  writerCopy = writer;
  readersCopy = readers;
  v47.receiver = self;
  v47.super_class = ULContextLayerAccess;
  v7 = [(ULContextLayerAccess *)&v47 init];
  v8 = v7;
  if (v7)
  {
    [(ULContextLayerAccess *)v7 setWriter:0];
    if (writerCopy)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:writerCopy];
      [(ULContextLayerAccess *)v8 setWriter:v9];

      writer = [(ULContextLayerAccess *)v8 writer];
      v11 = writer == 0;

      if (v11)
      {
        v32 = _CLLogObjectForCategory_MicroLocation_Default(v12);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          v33 = writerCopy;
          uTF8String = [writerCopy UTF8String];
          buf = 68289795;
          v50 = 2082;
          v51 = "";
          v52 = 2081;
          v53 = uTF8String;
          v54 = 2082;
          v55 = "assert";
          v56 = 2081;
          v57 = "self.writer";
          _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:invalid writer UUID, writer:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
        }

        v36 = _CLLogObjectForCategory_MicroLocation_Default(v35);
        if (os_signpost_enabled(v36))
        {
          v37 = writerCopy;
          uTF8String2 = [writerCopy UTF8String];
          buf = 68289795;
          v50 = 2082;
          v51 = "";
          v52 = 2081;
          v53 = uTF8String2;
          v54 = 2082;
          v55 = "assert";
          v56 = 2081;
          v57 = "self.writer";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid writer UUID", "{msg%{public}.0s:invalid writer UUID, writer:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
        }

        v40 = _CLLogObjectForCategory_MicroLocation_Default(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = writerCopy;
          -[ULContextLayerAccess initWithWriter:readers:].cold.1([writerCopy UTF8String], &buf);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ServiceManager/ULContextLayerAccess.mm", 26, "[ULContextLayerAccess initWithWriter:readers:]");
LABEL_29:
        __break(1u);
      }
    }

    [(ULContextLayerAccess *)v8 setReaders:0];
    if (readersCopy)
    {
      v13 = [MEMORY[0x277CBEB58] set];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v14 = readersCopy;
      v15 = [v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = *v44;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
          if (!v19)
          {
            v22 = _CLLogObjectForCategory_MicroLocation_Default(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              v23 = v18;
              uTF8String3 = [v18 UTF8String];
              buf = 68289795;
              v50 = 2082;
              v51 = "";
              v52 = 2081;
              v53 = uTF8String3;
              v54 = 2082;
              v55 = "assert";
              v56 = 2081;
              v57 = "uuid";
              _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:invalid reader UUID, reader:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
            }

            v26 = _CLLogObjectForCategory_MicroLocation_Default(v25);
            if (os_signpost_enabled(v26))
            {
              v27 = v18;
              uTF8String4 = [v18 UTF8String];
              buf = 68289795;
              v50 = 2082;
              v51 = "";
              v52 = 2081;
              v53 = uTF8String4;
              v54 = 2082;
              v55 = "assert";
              v56 = 2081;
              v57 = "uuid";
              _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid reader UUID", "{msg%{public}.0s:invalid reader UUID, reader:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x30u);
            }

            v30 = _CLLogObjectForCategory_MicroLocation_Default(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = v18;
              -[ULContextLayerAccess initWithWriter:readers:].cold.2([v18 UTF8String], &buf);
            }

            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ServiceManager/ULContextLayerAccess.mm", 34, "[ULContextLayerAccess initWithWriter:readers:]");
            goto LABEL_29;
          }

          [v13 addObject:v19];
        }

        v15 = [v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (!v15)
        {
LABEL_13:

          v20 = [v13 copy];
          [(ULContextLayerAccess *)v8 setReaders:v20];

          break;
        }
      }
    }
  }

  return v8;
}

- (ULContextLayerAccess)initWithSingleAccess:(id)access
{
  accessCopy = access;
  if (accessCopy)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:accessCopy];
    v6 = [(ULContextLayerAccess *)self initWithWriter:accessCopy readers:v5];
  }

  else
  {
    v6 = [(ULContextLayerAccess *)self initWithWriter:0 readers:0];
  }

  return v6;
}

- (void)initWithWriter:(uint64_t)a1 readers:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_1_4(v2, v3);
  *(v4 + 28) = v5;
  *(v4 + 30) = "assert";
  *(v4 + 38) = v6;
  *(v4 + 40) = "self.writer";
  _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalid writer UUID, writer:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x30u);
}

- (void)initWithWriter:(uint64_t)a1 readers:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0(1.7165e-36, a1, a2);
  OUTLINED_FUNCTION_1_4(v2, v3);
  *(v4 + 28) = v5;
  *(v4 + 30) = "assert";
  *(v4 + 38) = v6;
  *(v4 + 40) = "uuid";
  _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalid reader UUID, reader:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x30u);
}

@end