@interface CKDProtobufResponseBodyParser
- (BOOL)_parseObjectFromData:(id)data rawData:(id)rawData group:(id)group;
- (BOOL)_parseObjects:(BOOL)objects group:(id)group;
- (CKDProtobufResponseBodyParser)initWithQoS:(int64_t)s messageClass:(Class)class parsingStandaloneMessage:(BOOL)message;
- (void)finishWithCompletion:(id)completion;
- (void)processData:(id)data completionHandler:(id)handler;
@end

@implementation CKDProtobufResponseBodyParser

- (CKDProtobufResponseBodyParser)initWithQoS:(int64_t)s messageClass:(Class)class parsingStandaloneMessage:(BOOL)message
{
  v10.receiver = self;
  v10.super_class = CKDProtobufResponseBodyParser;
  v7 = [(CKDResponseBodyParser *)&v10 initWithQoS:s];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_messageClass, class);
    v8->_parsingStandaloneMessage = message;
  }

  return v8;
}

- (BOOL)_parseObjectFromData:(id)data rawData:(id)rawData group:(id)group
{
  v63 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  rawDataCopy = rawData;
  groupCopy = group;
  v12 = objc_alloc(MEMORY[0x277D43170]);
  v14 = objc_msgSend_initWithData_(v12, v13, dataCopy);
  if (!objc_msgSend_messageClass(self, v15, v16))
  {
    v49 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v52, a2, self, @"CKDProtobufResponseBodyParser.m", 41, @"You can't use %@ without setting a message class", v51);
  }

  v19 = objc_alloc_init(objc_msgSend_messageClass(self, v17, v18));
  v23 = objc_msgSend_readFrom_(v19, v20, v14);
  if (v23)
  {
    v24 = objc_msgSend_objectParsedBlock(self, v21, v22);

    v25 = *MEMORY[0x277CBC878];
    if (v24)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v44 = v26;
        *buf = 138412546;
        v58 = objc_msgSend_messageClass(self, v45, v46);
        v59 = 2048;
        v60 = objc_msgSend_length(dataCopy, v47, v48);
        _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Successfully parsed message %@ (%tu)", buf, 0x16u);
      }

      dispatch_group_enter(groupCopy);
      v29 = objc_msgSend_objectParsedBlock(self, v27, v28);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_2253E7F54;
      v55[3] = &unk_278545A00;
      v30 = groupCopy;
      v56 = v30;
      (v29)[2](v29, v19, rawDataCopy, v55);

      if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_testRepeatedParseResults(self, v31, v32))
      {
        dispatch_group_enter(v30);
        v35 = objc_msgSend_objectParsedBlock(self, v33, v34);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = sub_2253E7F5C;
        v53[3] = &unk_278545A00;
        v54 = v30;
        (v35)[2](v35, v19, rawDataCopy, v53);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v42 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "If an object is parsed in the woods and no one is there to hear it, was it really parsed? You're leaking objects on the floor. Set up a parser callback block", buf, 2u);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      v40 = objc_msgSend_messageClass(self, v38, v39);
      v41 = NSStringFromClass(v40);
      *buf = 138543875;
      v58 = v41;
      v59 = 2112;
      v60 = dataCopy;
      v61 = 2113;
      v62 = rawDataCopy;
      _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Error parsing message of class %{public}@ from data %@. Raw data is %{private}@", buf, 0x20u);
    }
  }

  return v23;
}

- (BOOL)_parseObjects:(BOOL)objects group:(id)group
{
  objectsCopy = objects;
  v84 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v80 = objectsCopy;
  if (objectsCopy)
  {
    v8 = 1;
  }

  else if (objc_msgSend_parsingStandaloneMessage(self, v6, v7))
  {
    v8 = 0x7FFFFFFFLL;
  }

  else
  {
    v8 = 10;
  }

  v9 = objc_msgSend_parserData(self, v6, v7);
  v12 = objc_msgSend_length(v9, v10, v11);

  v13 = *MEMORY[0x277CBC120];
  do
  {
    v16 = objc_autoreleasePoolPush();
    if (v12 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, v13, 1005, @"_parserData has insane length %tu", v12);
      objc_msgSend_setParserError_(self, v18, v17);

      v19 = 0;
      v20 = 0;
LABEL_9:
      v21 = 1;
      goto LABEL_32;
    }

    if (v12 < v8)
    {
      v21 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_32;
    }

    if (objc_msgSend_parsingStandaloneMessage(self, v14, v15))
    {
      v20 = objc_msgSend_data(MEMORY[0x277CBEA90], v22, v23);
      v19 = objc_msgSend_parserData(self, v24, v25);
    }

    else
    {
      v35 = objc_msgSend_parserData(self, v22, v23);
      v38 = objc_msgSend_length(v35, v36, v37);
      if (v38 >= 0xA)
      {
        objc_msgSend_getBytes_length_(v35, v39, buf, 10);
      }

      else
      {
        objc_msgSend_getBytes_length_(v35, v39, buf, v38);
      }

      VarIntBuf = PBReaderReadVarIntBuf();

      if ((VarIntBuf & 1) == 0)
      {
        v43 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v41, v13, 1005, @"Couldn't read the size of the next object from the server");
        objc_msgSend_setParserError_(self, v44, v43);

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v45 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Warn: Couldn't read length from input stream", buf, 2u);
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_31;
      }

      v63 = objc_msgSend_parserData(self, v41, v42);
      v20 = objc_msgSend_subdataWithRange_(v63, v64, 0, 0);

      v67 = objc_msgSend_parserData(self, v65, v66);
      v19 = objc_msgSend_subdataWithRange_(v67, v68, 0, 0);
    }

    v21 = 0;
    if (v20 && v19)
    {
      if (objc_msgSend_length(v19, v26, v27) >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = MEMORY[0x277CBC560];
        v31 = objc_msgSend_length(v19, v28, v29);
        v33 = objc_msgSend_errorWithDomain_code_format_(v30, v32, v13, 1005, @"messageData has insane length %lu", v31);
        objc_msgSend_setParserError_(self, v34, v33);

        goto LABEL_9;
      }

      v46 = objc_msgSend_ck_dataByAppendingData_(v20, v28, v19);
      if ((objc_msgSend__parseObjectFromData_rawData_group_(self, v47, v19, v46, groupCopy) & 1) == 0)
      {
        v60 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v48, v13, 1005, @"Couldn't parse an object from the server");
        objc_msgSend_setParserError_(self, v61, v60);

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v62 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "Failed to parse object from input stream", buf, 2u);
        }

LABEL_31:
        v21 = 1;
        goto LABEL_32;
      }

      v12 -= objc_msgSend_length(v46, v48, v49);
      if (v12)
      {
        v79 = objc_msgSend_parserData(self, v50, v51);
        v54 = objc_msgSend_length(v46, v52, v53);
        v56 = objc_msgSend_subdataWithRange_(v79, v55, v54, v12);
        objc_msgSend_setParserData_(self, v57, v56);
      }

      else
      {
        objc_msgSend_setParserData_(self, v50, 0);
      }

      v21 = 0;
    }

LABEL_32:

    objc_autoreleasePoolPop(v16);
  }

  while ((v21 & 1) == 0 && v12 >= v8);
  if (v80)
  {
    if (v12)
    {
      v69 = objc_msgSend_parserError(self, v58, v59);

      if (!v69)
      {
        v70 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v58, v13, 1005, @"Parser had %tu additional unparsed bytes remaining", v12);
        objc_msgSend_setParserError_(self, v71, v70);
      }
    }
  }

  v72 = objc_msgSend_parserError(self, v58, v59);

  if (v72)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v73 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v74 = v73;
      v77 = objc_msgSend_parserError(self, v75, v76);
      *buf = 138412290;
      v83 = v77;
      _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "Warn: Parser encountered an error: %@", buf, 0xCu);
    }
  }

  return v72 == 0;
}

- (void)processData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v10 = objc_msgSend_parseQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253E86A4;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = dataCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = dataCopy;
  dispatch_async(v10, block);
}

- (void)finishWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_parseQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2253E8950;
  v9[3] = &unk_278546550;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

@end