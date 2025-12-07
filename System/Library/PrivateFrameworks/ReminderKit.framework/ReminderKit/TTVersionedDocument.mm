@interface TTVersionedDocument
- (TTVersionedDocument)initWithArchive:(const void *)archive;
- (TTVersionedDocument)initWithData:(id)data;
- (id)serialize;
- (unint64_t)mergeWithVersionedDocument:(id)document;
- (unsigned)maxDocumentVersion;
- (void)dealloc;
- (void)loadData:(id)data;
- (void)loadDocumentArchive:(void *)archive;
- (void)saveCurrentVersion:(void *)version;
- (void)saveToArchive:(void *)archive;
@end

@implementation TTVersionedDocument

- (TTVersionedDocument)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = TTVersionedDocument;
  v5 = [(TTVersionedDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TTVersionedDocument *)v5 loadData:dataCopy];
  }

  return v6;
}

- (TTVersionedDocument)initWithArchive:(const void *)archive
{
  v7.receiver = self;
  v7.super_class = TTVersionedDocument;
  v4 = [(TTVersionedDocument *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TTVersionedDocument *)v4 loadArchive:archive];
  }

  return v5;
}

- (void)loadData:(id)data
{
  v4 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  operator new();
}

- (void)loadDocumentArchive:(void *)archive
{
  v49 = *MEMORY[0x1E69E9840];
  serializationVersion = [objc_opt_class() serializationVersion];
  v6 = *(archive + 12);
  if (!v6)
  {
    v10 = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  v7 = serializationVersion;
  v8 = 0;
  v9 = -1;
  LODWORD(v10) = -1;
  do
  {
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(archive + 40, v8);
    versioned_document::Version::Version(v39, v11);
    if (v10 >= 0 || v40 > v7)
    {
      v10 = v10;
    }

    else
    {
      v10 = v8;
    }

    if (v40 < v7)
    {
      if (v9 < 0)
      {
        v9 = v8;
      }

      versioned_document::Version::~Version(v39);
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_35:
      v22 = +[REMLog crdt];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(TTVersionedDocument *)v22 loadDocumentArchive:v23, v24, v25, v26, v27, v28, v29];
      }

      goto LABEL_38;
    }

    if (v41 <= v7)
    {
      v9 = v8;
    }

    versioned_document::Version::~Version(v39);
    ++v8;
  }

  while (v6 != v8);
  if (v9 < 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  if (v9 >= v6)
  {
LABEL_38:
    if ((v10 & 0x80000000) != 0)
    {
      return;
    }

    goto LABEL_39;
  }

  *&v13 = 67109632;
  v38 = v13;
  while (1)
  {
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(archive + 40, v9);
    versioned_document::Version::Version(v39, v14);
    v15 = v42;
    v16 = *(v42 + 23);
    if (v16 < 0)
    {
      v15 = *v42;
      v16 = v42[1];
    }

    v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v15 length:v16 freeWhenDone:{0, v38}];
    if (v40 < v7)
    {
      v18 = +[REMLog crdt];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v44 = v40;
        v45 = 1024;
        v46 = v7;
        v19 = v18;
        v20 = "Loading old version %d < %d";
        v21 = 14;
LABEL_32:
        _os_log_debug_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_DEBUG, v20, buf, v21);
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    if (v40 != v7)
    {
      break;
    }

    v18 = +[REMLog crdt];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v44 = v7;
      v19 = v18;
      v20 = "Loading current version %d";
      v21 = 8;
      goto LABEL_32;
    }

LABEL_33:

    [(TTVersionedDocument *)self mergeVersion:v40 fromData:v17];
    versioned_document::Version::~Version(v39);
    if (v6 == ++v9)
    {
      goto LABEL_38;
    }
  }

  if (v41 <= v7)
  {
    v18 = +[REMLog crdt];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = v38;
      v44 = v40;
      v45 = 1024;
      v46 = v7;
      v47 = 1024;
      v48 = v41;
      v19 = v18;
      v20 = "Loading future version %d > %d where min-supported %d";
      v21 = 20;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v30 = +[REMLog crdt];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(TTVersionedDocument *)v30 loadDocumentArchive:v31, v32, v33, v34, v35, v36, v37];
  }

  versioned_document::Version::~Version(v39);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_39:
    google::protobuf::RepeatedPtrField<versioned_document::Version>::DeleteSubrange((archive + 40), v10, *(archive + 12) - v10);
  }
}

- (void)dealloc
{
  documentArchive = self->_documentArchive;
  if (documentArchive)
  {
    (*(*documentArchive + 8))(documentArchive, a2);
  }

  v4.receiver = self;
  v4.super_class = TTVersionedDocument;
  [(TTVersionedDocument *)&v4 dealloc];
}

- (void)saveCurrentVersion:(void *)version
{
  minimumSupportedVersion = [objc_opt_class() minimumSupportedVersion];
  v8 = 0;
  v6 = [(TTVersionedDocument *)self serializeCurrentVersion:&v8];
  v7 = v8;
  *(version + 8) |= 3u;
  *(version + 10) = v7;
  *(version + 11) = minimumSupportedVersion;
  [v6 bytes];
  [v6 length];
  *(version + 8) |= 4u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  if (*(version + 6) == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  MEMORY[0x19A8FCFF0]();
}

- (unint64_t)mergeWithVersionedDocument:(id)document
{
  documentCopy = document;
  documentArchive = [(TTVersionedDocument *)self documentArchive];
  documentArchive2 = [documentCopy documentArchive];
  if (documentArchive2 != documentArchive)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(&documentArchive[5]);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(documentArchive + 5, documentArchive2 + 5);
  }

  return 1;
}

- (unsigned)maxDocumentVersion
{
  if (*([(TTVersionedDocument *)self documentArchive]+ 48) < 1)
  {
    v6 = objc_opt_class();

    return [v6 serializationVersion];
  }

  else
  {
    documentArchive = [(TTVersionedDocument *)self documentArchive];
    if (documentArchive[12] <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
      google::protobuf::internal::LogFinisher::operator=(&v7, v4);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    return *(**(documentArchive + 5) + 40);
  }
}

- (id)serialize
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[REMLog crdt];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    serializationVersion = [objc_opt_class() serializationVersion];
    [[(TTVersionedDocument *)self documentArchive] serialize];
  }

  documentArchive = [(TTVersionedDocument *)self documentArchive];
  v6 = +[TTVersionedDocument versionedDocumentSerializationVersion];
  documentArchive[8] |= 1u;
  documentArchive[16] = v6;
  documentArchive2 = [(TTVersionedDocument *)self documentArchive];
  v8 = documentArchive2[13];
  v9 = documentArchive2[12];
  if (v9 >= v8)
  {
    if (v8 == documentArchive2[14])
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(documentArchive2 + 10, v8 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
  }

  v10 = *(documentArchive2 + 5);
  documentArchive2[12] = v9 + 1;
  [(TTVersionedDocument *)self saveCurrentVersion:*(v10 + 8 * v9)];
  v11 = objc_alloc(MEMORY[0x1E695DF88]);
  documentArchive3 = [(TTVersionedDocument *)self documentArchive];
  v13 = [v11 initWithLength:(*(*documentArchive3 + 72))(documentArchive3)];
  documentArchive4 = [(TTVersionedDocument *)self documentArchive];
  v15 = v13;
  google::protobuf::MessageLite::SerializeToArray(documentArchive4, [v13 mutableBytes], objc_msgSend(v13, "length"));
  documentArchive5 = [(TTVersionedDocument *)self documentArchive];
  v17 = documentArchive5;
  v18 = documentArchive5[12];
  if (v18 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 913);
    v19 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, v19);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    v18 = v17[12];
  }

  v20 = *(v17 + 5);
  v21 = v18 - 1;
  v17[12] = v21;
  (*(**(v20 + 8 * v21) + 32))(*(v20 + 8 * v21));
  tT_gzipDeflate = [v13 TT_gzipDeflate];

  return tT_gzipDeflate;
}

- (void)saveToArchive:(void *)archive
{
  v12[3] = *MEMORY[0x1E69E9840];
  v5 = +[REMLog crdt];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    serializationVersion = [objc_opt_class() serializationVersion];
    [[(TTVersionedDocument *)self documentArchive] serialize];
  }

  v7 = +[TTVersionedDocument versionedDocumentSerializationVersion];
  *(archive + 8) |= 1u;
  *(archive + 16) = v7;
  documentArchive = [(TTVersionedDocument *)self documentArchive];
  if (documentArchive != archive)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(archive + 40);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(archive + 5, documentArchive + 5);
  }

  v9 = *(archive + 13);
  v10 = *(archive + 12);
  if (v10 >= v9)
  {
    if (v9 == *(archive + 14))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 10, v9 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
  }

  v11 = *(archive + 5);
  *(archive + 12) = v10 + 1;
  [(TTVersionedDocument *)self saveCurrentVersion:*(v11 + 8 * v10)];
}

- (void)loadData:(int)a3 .cold.1(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_error_impl(&dword_19A0DB000, log, OS_LOG_TYPE_ERROR, "TTVersionedDocument is wrong versionedDocumentSerializationVersion %d != %d.", buf, 0xEu);
}

@end