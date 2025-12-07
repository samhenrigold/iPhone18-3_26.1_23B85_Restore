@interface EDSMIMEAnalyticsCollector
- (EDSMIMEAnalyticsCollector)initWithAnalyticsCollector:(id)collector smimeConfigurationProvider:(id)provider messagePersistence:(id)persistence;
- (id)coreAnalyticsPeriodicEvent;
@end

@implementation EDSMIMEAnalyticsCollector

- (EDSMIMEAnalyticsCollector)initWithAnalyticsCollector:(id)collector smimeConfigurationProvider:(id)provider messagePersistence:(id)persistence
{
  collectorCopy = collector;
  providerCopy = provider;
  persistenceCopy = persistence;
  v15.receiver = self;
  v15.super_class = EDSMIMEAnalyticsCollector;
  v11 = [(EDSMIMEAnalyticsCollector *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_smimeConfigurationProvider, provider);
    objc_storeStrong(&v12->_messagePersistence, persistence);
    v13 = [collectorCopy registerForLogEventsWithPeriodicDataProvider:v12];
  }

  return v12;
}

- (id)coreAnalyticsPeriodicEvent
{
  v67[3] = *MEMORY[0x1E69E9840];
  v56 = [MEMORY[0x1E695DF00] ef_midnightNdaysAgo:30];
  v3 = [MEMORY[0x1E699B8C8] column:@"date_received"];
  v4 = MEMORY[0x1E696AD98];
  v50 = v3;
  [v56 timeIntervalSince1970];
  v5 = [v4 numberWithDouble:?];
  v62 = [v3 greaterThan:v5];

  messagePersistence = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  mailboxPersistence = [messagePersistence mailboxPersistence];
  v55 = [mailboxPersistence mailboxObjectIDsForMailboxType:4];

  messagePersistence2 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  mailboxPersistence2 = [messagePersistence2 mailboxPersistence];
  v54 = [mailboxPersistence2 mailboxDatabaseIDsForMailboxObjectIDs:v55 createIfNecessary:0];

  v10 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v61 = [v10 in:v54];

  v11 = objc_alloc(MEMORY[0x1E699B948]);
  v12 = [MEMORY[0x1E699B890] count:0];
  v13 = +[EDMessagePersistence messagesTableName];
  v59 = [v11 initWithResult:v12 table:v13];

  v14 = MEMORY[0x1E699B8B8];
  v15 = [MEMORY[0x1E699B8C8] column:@"flags"];
  v16 = [MEMORY[0x1E699B8B8] leftShift:&unk_1F45E6AD8 by:&unk_1F45E6AF0];
  v60 = [v14 and:v15 with:v16];

  v17 = objc_alloc(MEMORY[0x1E699B898]);
  v67[0] = v60;
  v67[1] = v62;
  v67[2] = v61;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
  v53 = [v17 initWithExpressions:v18];

  [v59 setWhere:v53];
  v19 = objc_alloc(MEMORY[0x1E699B948]);
  v20 = [MEMORY[0x1E699B890] count:0];
  v21 = +[EDMessagePersistence messagesTableName];
  v57 = [v19 initWithResult:v20 table:v21];

  v22 = MEMORY[0x1E699B8B8];
  v23 = [MEMORY[0x1E699B8C8] column:@"flags"];
  v24 = [MEMORY[0x1E699B8B8] leftShift:&unk_1F45E6AD8 by:&unk_1F45E6B08];
  v58 = [v22 and:v23 with:v24];

  v25 = objc_alloc(MEMORY[0x1E699B898]);
  v66[0] = v58;
  v66[1] = v62;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v52 = [v25 initWithExpressions:v26];

  [v57 setWhere:v52];
  v27 = objc_alloc(MEMORY[0x1E699B948]);
  v28 = [MEMORY[0x1E699B890] count:0];
  v29 = +[EDMessagePersistence messagesTableName];
  v30 = [v27 initWithResult:v28 table:v29];

  v51 = [objc_alloc(MEMORY[0x1E699B918]) initWithExpression:v60];
  v31 = objc_alloc(MEMORY[0x1E699B898]);
  v65[0] = v58;
  v65[1] = v51;
  v65[2] = v62;
  v65[3] = v61;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
  v33 = [v31 initWithExpressions:v32];

  [v30 setWhere:v33];
  messagePersistence3 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v35 = [messagePersistence3 countOfMessageStatement:v59];

  messagePersistence4 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v37 = [messagePersistence4 countOfMessageStatement:v57];

  messagePersistence5 = [(EDSMIMEAnalyticsCollector *)self messagePersistence];
  v39 = [messagePersistence5 countOfMessageStatement:v30];

  smimeConfigurationProvider = [(EDSMIMEAnalyticsCollector *)self smimeConfigurationProvider];
  LODWORD(messagePersistence5) = [smimeConfigurationProvider signingIsConfigured];
  encryptionIsConfigured = [smimeConfigurationProvider encryptionIsConfigured];
  LODWORD(v22) = [smimeConfigurationProvider signingEnabledByDefault];
  v42 = messagePersistence5 & v22 | encryptionIsConfigured & [smimeConfigurationProvider encryptionIsEnabledByDefault];
  if ((v35 < 1) | messagePersistence5 & 1)
  {
    v43 = (v37 > 0) & (encryptionIsConfigured ^ 1u);
  }

  else
  {
    v43 = 1;
  }

  v63[0] = @"usesSMIME";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:v42 & 1];
  v64[0] = v44;
  v63[1] = @"usesSMIMEButNotOnThisDevice";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:v43];
  v64[1] = v45;
  v63[2] = @"sendsEncryptedNotSignedMessages";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:v39 > 0];
  v64[2] = v46;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];

  v48 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.smime.usage" collectionData:v47];

  return v48;
}

@end