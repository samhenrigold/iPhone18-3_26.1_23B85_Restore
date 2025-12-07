@interface BCSParsingServiceConnection
- (NSXPCConnection)parsingServiceConnection;
- (void)dealloc;
- (void)decodeAppClipCodeURLWithEncodedData:(id)data codingVersion:(unint64_t)version requiresAuthorization:(BOOL)authorization withReply:(id)reply;
- (void)parseQRCodeFeature:(id)feature withReply:(id)reply;
- (void)parseQRCodeMetadata:(id)metadata withReply:(id)reply;
- (void)parseQRCodeString:(id)string withReply:(id)reply;
- (void)setPreferredBundleIdentifier:(id)identifier forURL:(id)l;
@end

@implementation BCSParsingServiceConnection

- (void)dealloc
{
  [(NSXPCConnection *)self->_parsingServiceConnection invalidate];
  v3.receiver = self;
  v3.super_class = BCSParsingServiceConnection;
  [(BCSParsingServiceConnection *)&v3 dealloc];
}

- (void)parseQRCodeString:(id)string withReply:(id)reply
{
  replyCopy = reply;
  stringCopy = string;
  parsingServiceConnection = [(BCSParsingServiceConnection *)self parsingServiceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke;
  v14[3] = &unk_278CFED28;
  v9 = replyCopy;
  v15 = v9;
  v10 = [parsingServiceConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke_1;
  v12[3] = &unk_278CFF1C0;
  v13 = v9;
  v11 = v9;
  [v10 parseQRCodeString:stringCopy withReply:v12];
}

void __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)parseQRCodeMetadata:(id)metadata withReply:(id)reply
{
  replyCopy = reply;
  metadataCopy = metadata;
  parsingServiceConnection = [(BCSParsingServiceConnection *)self parsingServiceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__BCSParsingServiceConnection_parseQRCodeMetadata_withReply___block_invoke;
  v14[3] = &unk_278CFED28;
  v9 = replyCopy;
  v15 = v9;
  v10 = [parsingServiceConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__BCSParsingServiceConnection_parseQRCodeMetadata_withReply___block_invoke_3;
  v12[3] = &unk_278CFF1C0;
  v13 = v9;
  v11 = v9;
  [v10 parseQRCodeMetadata:metadataCopy withReply:v12];
}

void __61__BCSParsingServiceConnection_parseQRCodeMetadata_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)parseQRCodeFeature:(id)feature withReply:(id)reply
{
  replyCopy = reply;
  featureCopy = feature;
  parsingServiceConnection = [(BCSParsingServiceConnection *)self parsingServiceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__BCSParsingServiceConnection_parseQRCodeFeature_withReply___block_invoke;
  v14[3] = &unk_278CFED28;
  v9 = replyCopy;
  v15 = v9;
  v10 = [parsingServiceConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__BCSParsingServiceConnection_parseQRCodeFeature_withReply___block_invoke_4;
  v12[3] = &unk_278CFF1C0;
  v13 = v9;
  v11 = v9;
  [v10 parseQRCodeFeature:featureCopy withReply:v12];
}

void __60__BCSParsingServiceConnection_parseQRCodeFeature_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)decodeAppClipCodeURLWithEncodedData:(id)data codingVersion:(unint64_t)version requiresAuthorization:(BOOL)authorization withReply:(id)reply
{
  authorizationCopy = authorization;
  replyCopy = reply;
  dataCopy = data;
  parsingServiceConnection = [(BCSParsingServiceConnection *)self parsingServiceConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__BCSParsingServiceConnection_decodeAppClipCodeURLWithEncodedData_codingVersion_requiresAuthorization_withReply___block_invoke;
  v18[3] = &unk_278CFED28;
  v13 = replyCopy;
  v19 = v13;
  v14 = [parsingServiceConnection remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__BCSParsingServiceConnection_decodeAppClipCodeURLWithEncodedData_codingVersion_requiresAuthorization_withReply___block_invoke_5;
  v16[3] = &unk_278CFF1E8;
  v17 = v13;
  v15 = v13;
  [v14 decodeAppClipCodeURLWithEncodedData:dataCopy codingVersion:version requiresAuthorization:authorizationCopy withReply:v16];
}

void __113__BCSParsingServiceConnection_decodeAppClipCodeURLWithEncodedData_codingVersion_requiresAuthorization_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setPreferredBundleIdentifier:(id)identifier forURL:(id)l
{
  lCopy = l;
  identifierCopy = identifier;
  parsingServiceConnection = [(BCSParsingServiceConnection *)self parsingServiceConnection];
  v8 = [parsingServiceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  [v8 setPreferredBundleIdentifier:identifierCopy forURL:lCopy];
}

void __67__BCSParsingServiceConnection_setPreferredBundleIdentifier_forURL___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke_cold_1(a2);
  }
}

- (NSXPCConnection)parsingServiceConnection
{
  v15[8] = *MEMORY[0x277D85DE8];
  parsingServiceConnection = self->_parsingServiceConnection;
  if (parsingServiceConnection)
  {
    v3 = parsingServiceConnection;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.BarcodeSupport.ParsingService"];
    v6 = self->_parsingServiceConnection;
    self->_parsingServiceConnection = v5;

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853A8C08];
    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v15[5] = objc_opt_class();
    v15[6] = objc_opt_class();
    v15[7] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];
    v10 = [v8 setWithArray:v9];

    [v7 setClasses:v10 forSelector:sel_parseQRCodeString_withReply_ argumentIndex:0 ofReply:1];
    [v7 setClasses:v10 forSelector:sel_parseQRCodeMetadata_withReply_ argumentIndex:0 ofReply:1];
    [v7 setClasses:v10 forSelector:sel_parseQRCodeFeature_withReply_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)self->_parsingServiceConnection setRemoteObjectInterface:v7];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__BCSParsingServiceConnection_parsingServiceConnection__block_invoke;
    v12[3] = &unk_278CFEA78;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_parsingServiceConnection setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_parsingServiceConnection resume];
    v3 = self->_parsingServiceConnection;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __55__BCSParsingServiceConnection_parsingServiceConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setParsingServiceConnection:0];
}

void __59__BCSParsingServiceConnection_parseQRCodeString_withReply___block_invoke_cold_1(void *a1)
{
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241993000, MEMORY[0x277D86220], v2, "BCSParsingServiceConnection: Error getting remote object proxy: %{public}@", v3, v4, v5, v6);
}

@end