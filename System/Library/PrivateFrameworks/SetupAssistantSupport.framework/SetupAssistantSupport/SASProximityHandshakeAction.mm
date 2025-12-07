@interface SASProximityHandshakeAction
- (SASProximityHandshakeAction)init;
- (id)responsePayload;
- (void)setResponseFromData:(id)data;
@end

@implementation SASProximityHandshakeAction

- (SASProximityHandshakeAction)init
{
  v5.receiver = self;
  v5.super_class = SASProximityHandshakeAction;
  v2 = [(SASProximityHandshakeAction *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SASProximityHandshake);
    [(SASProximityHandshakeAction *)v2 setHandshake:v3];
  }

  return v2;
}

- (void)setResponseFromData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v21 = 0;
  v10 = [v4 unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v21];

  v11 = v21;
  if (!v10)
  {
    v12 = +[SASLogging facility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to unarchive handshake response payload: %@", buf, 0xCu);
    }
  }

  v13 = MEMORY[0x277CCAAC8];
  v14 = objc_opt_class();
  v15 = [v10 objectForKeyedSubscript:@"handshake"];
  v20 = v11;
  v16 = [v13 unarchivedObjectOfClass:v14 fromData:v15 error:&v20];
  v17 = v20;

  [(SASProximityHandshakeAction *)self setHandshake:v16];
  handshake = [(SASProximityHandshakeAction *)self handshake];

  if (!handshake)
  {
    v19 = +[SASLogging facility];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_22E4D7000, v19, OS_LOG_TYPE_DEFAULT, "Failed to unarchive handshake: %@", buf, 0xCu);
    }
  }
}

- (id)responsePayload
{
  v20 = *MEMORY[0x277D85DE8];
  handshake = [(SASProximityHandshakeAction *)self handshake];
  [handshake loadInformation];

  v4 = MEMORY[0x277CCAAB0];
  handshake2 = [(SASProximityHandshakeAction *)self handshake];
  v15 = 0;
  v6 = [v4 archivedDataWithRootObject:handshake2 requiringSecureCoding:1 error:&v15];
  v7 = v15;

  if (v6)
  {
    v16 = @"handshake";
    v17 = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = v7;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v14];
    v10 = v14;

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = +[SASLogging facility];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&dword_22E4D7000, v12, OS_LOG_TYPE_DEFAULT, "Failed to archive handshake response payload: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = +[SASLogging facility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, "Failed to archive handshake: %@", buf, 0xCu);
    }

    v9 = 0;
    v10 = v7;
  }

  return v9;
}

@end