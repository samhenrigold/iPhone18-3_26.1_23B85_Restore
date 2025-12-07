@interface TSPDatabaseUnarchiver
- (TSPDatabaseUnarchiver)initWithMessageType:(unsigned int)type unarchiveClass:(Class)class message:()unique_ptr<google:(std:(int64_t)google :()unique_ptr<TSP:(std:(unint64_t)p :(id)a9 default_delete<TSP:(BOOL)self0 :(id)self1 IdentifierMap<BOOL>>>)a7 :(id)self2 IdentifierMap<BOOL> default_delete<google:(id)self3 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:;
- (TSPDatabaseUnarchiver)initWithMessageType:(unsigned int)type unarchiveClass:(Class)class message:()unique_ptr<google:(std:(int64_t)google :()unique_ptr<TSP:(std:(unint64_t)p :(id)a9 default_delete<TSP:(id)self0 :(id)self1 IdentifierMap<BOOL>>>)a7 :IdentifierMap<BOOL> default_delete<google::protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:databaseVersion:objectDelegate:lazyReferenceDelegate:delegate:;
- (void)filterIdentifiers:(const void *)identifiers;
@end

@implementation TSPDatabaseUnarchiver

- (TSPDatabaseUnarchiver)initWithMessageType:(unsigned int)type unarchiveClass:(Class)class message:()unique_ptr<google:(std:(int64_t)google :()unique_ptr<TSP:(std:(unint64_t)p :(id)a9 default_delete<TSP:(BOOL)self0 :(id)self1 IdentifierMap<BOOL>>>)a7 :(id)self2 IdentifierMap<BOOL> default_delete<google:(id)self3 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:
{
  v13 = a9;
  v14 = a11;
  v15 = a12;
  v16 = a13;
  v17 = MEMORY[0x277D81150];
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPDatabaseUnarchiver initWithMessageType:unarchiveClass:message:identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:]");
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseUnarchiver.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 29, 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  v25 = MEMORY[0x277CBEAD8];
  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s: %s", "Do not call method", "[TSPDatabaseUnarchiver initWithMessageType:unarchiveClass:message:identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v25, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (TSPDatabaseUnarchiver)initWithMessageType:(unsigned int)type unarchiveClass:(Class)class message:()unique_ptr<google:(std:(int64_t)google :()unique_ptr<TSP:(std:(unint64_t)p :(id)a9 default_delete<TSP:(id)self0 :(id)self1 IdentifierMap<BOOL>>>)a7 :IdentifierMap<BOOL> default_delete<google::protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:databaseVersion:objectDelegate:lazyReferenceDelegate:delegate:
{
  v16 = *&type;
  v18 = a9;
  sPCopy = sP;
  v20 = a11;
  var0 = a5.__ptr_->var0;
  a5.__ptr_->var0 = 0;
  v22 = *a7.__ptr_;
  *a7.__ptr_ = 0;
  v28 = v22;
  v29 = var0;
  v27.receiver = self;
  v27.super_class = TSPDatabaseUnarchiver;
  v26 = 0;
  v23 = [(TSPUnarchiver *)&v27 initWithMessageType:v16 unarchiveClass:class message:&v29 identifier:google strongReferences:&v28 messageVersion:0 unknownContent:0 hasAlternateMessages:v26 objectDelegate:v18 lazyReferenceDelegate:sPCopy delegate:v20];
  sub_276A519D8(&v28);
  v24 = v29;
  v29 = 0;
  if (v24)
  {
    (*(*v24 + 1))(v24);
  }

  if (v23)
  {
    v23->_databaseVersion = p;
  }

  return v23;
}

- (void)filterIdentifiers:(const void *)identifiers
{
  v4 = objc_msgSend_delegate(self, a2, identifiers);
  v6 = objc_msgSend_filterIdentifiers_(v4, v5, identifiers);

  if (!v6)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v7, @"TSPUnarchiveException", @"Problem filtering identifiers");
  }

  return v6;
}

@end