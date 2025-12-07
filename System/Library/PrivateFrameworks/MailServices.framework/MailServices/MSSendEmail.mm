@interface MSSendEmail
+ (id)sendEmail:(id)email playSound:(BOOL)sound completionBlock:(id)block;
+ (id)sendEmail:(id)email playSound:(BOOL)sound timeout:(double)timeout error:(id *)error;
+ (id)sendMessageData:(id)data autosaveIdentifier:(id)identifier isHMEMessage:(BOOL)message sendLaterDate:(id)date completionBlock:(id)block;
- (void)_sendEmail:(id)email playSound:(BOOL)sound completionBlock:(id)block;
- (void)_sendMessageData:(id)data autosaveIdentifier:(id)identifier isHMEMessage:(BOOL)message sendLaterDate:(id)date completionBlock:(id)block;
- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback;
@end

@implementation MSSendEmail

+ (id)sendMessageData:(id)data autosaveIdentifier:(id)identifier isHMEMessage:(BOOL)message sendLaterDate:(id)date completionBlock:(id)block
{
  messageCopy = message;
  dataCopy = data;
  identifierCopy = identifier;
  dateCopy = date;
  blockCopy = block;
  v15 = objc_alloc_init(MSSendEmail);
  [(MSSendEmail *)v15 _sendMessageData:dataCopy autosaveIdentifier:identifierCopy isHMEMessage:messageCopy sendLaterDate:dateCopy completionBlock:blockCopy];

  return v15;
}

+ (id)sendEmail:(id)email playSound:(BOOL)sound completionBlock:(id)block
{
  soundCopy = sound;
  emailCopy = email;
  blockCopy = block;
  v9 = objc_alloc_init(MSSendEmail);
  [(MSSendEmail *)v9 _sendEmail:emailCopy playSound:soundCopy completionBlock:blockCopy];

  return v9;
}

+ (id)sendEmail:(id)email playSound:(BOOL)sound timeout:(double)timeout error:(id *)error
{
  soundCopy = sound;
  emailCopy = email;
  v10 = objc_alloc_init(MSSendEmail);
  promise = [MEMORY[0x1E699B868] promise];
  completionHandlerAdapter = [promise completionHandlerAdapter];
  [(MSSendEmail *)v10 _sendEmail:emailCopy playSound:soundCopy completionBlock:completionHandlerAdapter];

  future = [promise future];
  v14 = [future resultWithTimeout:error error:timeout];

  if (!v14 && [*error ef_isTimeoutError])
  {
    [(MSService *)v10 cancel];
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MailServices" code:1505 userInfo:0];
  }

  return v14;
}

- (void)_sendEmail:(id)email playSound:(BOOL)sound completionBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  emailCopy = email;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:emailCopy requiringSecureCoding:1 error:0];
  v11 = v10;
  if (v10)
  {
    v16[0] = @"email";
    v16[1] = @"playSound";
    v17[0] = v10;
    v17[1] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MSSendEmail__sendEmail_playSound_completionBlock___block_invoke;
    v14[3] = &unk_1E855E998;
    v15 = blockCopy;
    [(MSService *)self _callServicesMethod:@"SendEmail" arguments:v12 callback:v14];
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = [0 length];
      _os_log_impl(&dword_1D876A000, v13, OS_LOG_TYPE_DEFAULT, "#Warning Unable to unarchive model data with length %lu", buf, 0xCu);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v12);
  }

  objc_autoreleasePoolPop(v9);
}

void __52__MSSendEmail__sendEmail_playSound_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 objectForKey:@"messageid"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_sendMessageData:(id)data autosaveIdentifier:(id)identifier isHMEMessage:(BOOL)message sendLaterDate:(id)date completionBlock:(id)block
{
  messageCopy = message;
  v27[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  dateCopy = date;
  blockCopy = block;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSSendEmail.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"messageData"}];
  }

  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v26[0] = @"RFC822Data";
  v26[1] = @"HideMyEmailMessage";
  v27[0] = dataCopy;
  v19 = [MEMORY[0x1E696AD98] numberWithBool:messageCopy];
  v27[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v21 = [v18 initWithDictionary:v20];

  [v21 ef_setOptionalObject:dateCopy forKey:@"SendLaterDate"];
  [v21 ef_setOptionalObject:identifierCopy forKey:@"autosaveIdentifier"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __94__MSSendEmail__sendMessageData_autosaveIdentifier_isHMEMessage_sendLaterDate_completionBlock___block_invoke;
  v24[3] = &unk_1E855E998;
  v22 = blockCopy;
  v25 = v22;
  [(MSService *)self _callServicesMethod:@"MailSendMessage" arguments:v21 callback:v24];

  objc_autoreleasePoolPop(v17);
}

void __94__MSSendEmail__sendMessageData_autosaveIdentifier_isHMEMessage_sendLaterDate_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [v8 objectForKey:@"success"];
    [v6 BOOLValue];

    v7 = [v8 objectForKey:@"inAirplaneMode"];
    [v7 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback
{
  v14[2] = *MEMORY[0x1E69E9840];
  methodCopy = method;
  argumentsCopy = arguments;
  callbackCopy = callback;
  if ([methodCopy isEqualToString:@"MailSendMessage"])
  {
    v13[0] = @"success";
    v13[1] = @"inAirplaneMode";
    v14[0] = &unk_1F541F2D8;
    v14[1] = &unk_1F541F2F0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    callbackCopy[2](callbackCopy, v11, 0);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MSSendEmail;
    [(MSService *)&v12 _simulateServicesMethod:methodCopy arguments:argumentsCopy callback:callbackCopy];
  }
}

@end