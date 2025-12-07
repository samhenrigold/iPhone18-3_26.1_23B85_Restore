@interface AAMessagingDestination
- (AAMessagingDestination)initWithEmail:(id)email;
- (AAMessagingDestination)initWithHandle:(id)handle;
- (AAMessagingDestination)initWithPhoneNumber:(id)number;
- (id)copyWithZone:(_NSZone *)zone;
- (void)isRegisteredToiMessageWithCompletion:(id)completion;
@end

@implementation AAMessagingDestination

- (AAMessagingDestination)initWithEmail:(id)email
{
  emailCopy = email;
  v12.receiver = self;
  v12.super_class = AAMessagingDestination;
  v5 = [(AAMessagingDestination *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_destinationType = 1;
    v7 = [emailCopy copy];
    destination = v6->_destination;
    v6->_destination = v7;

    v9 = _SIDSCopyIDForEmailAddress(emailCopy);
    destinationURI = v6->_destinationURI;
    v6->_destinationURI = v9;
  }

  return v6;
}

- (AAMessagingDestination)initWithPhoneNumber:(id)number
{
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = AAMessagingDestination;
  v5 = [(AAMessagingDestination *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_destinationType = 2;
    v7 = [numberCopy copy];
    destination = v6->_destination;
    v6->_destination = v7;

    v9 = _SIDSCopyIDForPhoneNumberWithOptions(numberCopy, 0, 0);
    destinationURI = v6->_destinationURI;
    v6->_destinationURI = v9;
  }

  return v6;
}

- (AAMessagingDestination)initWithHandle:(id)handle
{
  handleCopy = handle;
  v66.receiver = self;
  v66.super_class = AAMessagingDestination;
  v5 = [(AAMessagingDestination *)&v66 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [handleCopy hasPrefix:@"mailto:"];
  if (v6)
  {
    v7 = _AALogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v7 initWithHandle:v8, v9, v10, v11, v12, v13, v14];
    }

    v5->_destinationType = 1;
    v15 = IDSCopyRawAddressForDestination();
    destination = v5->_destination;
    v5->_destination = v15;

    goto LABEL_16;
  }

  v17 = [handleCopy hasPrefix:@"tel:"];
  if (v17)
  {
    v18 = _AALogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v18 initWithHandle:v19, v20, v21, v22, v23, v24, v25];
    }

    v26 = 2;
LABEL_15:
    v5->_destinationType = v26;
LABEL_16:
    v36 = [handleCopy copy];
LABEL_17:
    destinationURI = v5->_destinationURI;
    v5->_destinationURI = v36;

LABEL_18:
    v38 = dispatch_get_global_queue(33, 0);
    idsQueue = v5->_idsQueue;
    v5->_idsQueue = v38;

    v40 = v5;
    goto LABEL_19;
  }

  v27 = [handleCopy hasPrefix:@"token:"];
  if ((v27 & 1) != 0 || (v27 = [handleCopy hasPrefix:@"self-token:"], v27))
  {
    v28 = _AALogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v28 initWithHandle:v29, v30, v31, v32, v33, v34, v35];
    }

    v26 = 3;
    goto LABEL_15;
  }

  aa_appearsToBeEmail = [handleCopy aa_appearsToBeEmail];
  if (aa_appearsToBeEmail)
  {
    v43 = _AALogSystem(aa_appearsToBeEmail);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [(AAMessagingDestination *)v43 initWithHandle:v44, v45, v46, v47, v48, v49, v50];
    }

    v5->_destinationType = 1;
    v51 = [handleCopy copy];
    v52 = v5->_destination;
    v5->_destination = v51;

    v36 = _SIDSCopyIDForEmailAddress(handleCopy);
    goto LABEL_17;
  }

  aa_appearsToBePhoneNumber = [handleCopy aa_appearsToBePhoneNumber];
  v54 = aa_appearsToBePhoneNumber;
  v55 = _AALogSystem(aa_appearsToBePhoneNumber);
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
  if (v54)
  {
    if (v56)
    {
      [(AAMessagingDestination *)v55 initWithHandle:v57, v58, v59, v60, v61, v62, v63];
    }

    v5->_destinationType = 2;
    v64 = [handleCopy copy];
    v65 = v5->_destination;
    v5->_destination = v64;

    v36 = _SIDSCopyIDForPhoneNumberWithOptions(handleCopy, 0, 0);
    goto LABEL_17;
  }

  if (v56)
  {
    [(AAMessagingDestination *)handleCopy initWithHandle:v55];
  }

  v40 = 0;
LABEL_19:

  return v40;
}

- (void)isRegisteredToiMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedInstance = [getIDSIDQueryControllerClass() sharedInstance];
  v6 = _AALogSystem(sharedInstance);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AAMessagingDestination *)self isRegisteredToiMessageWithCompletion:v6];
  }

  objc_initWeak(&location, self);
  destinationURI = self->_destinationURI;
  v8 = getIDSServiceNameiMessage();
  v9 = getIDSServiceNameiMessage();
  idsQueue = self->_idsQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke;
  v13[3] = &unk_1E7C9D918;
  objc_copyWeak(&v17, &location);
  v11 = sharedInstance;
  v14 = v11;
  v12 = completionCopy;
  selfCopy = self;
  v16 = v12;
  [v11 currentIDStatusForDestination:destinationURI service:v8 listenerID:v9 queue:idsQueue completionBlock:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = _AALogSystem(WeakRetained);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v6)
    {
      __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), a2 == 1);
  }

  else
  {
    if (v6)
    {
      __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_cold_2(v5);
    }

    v7 = *(a1 + 32);
    v8 = WeakRetained[4];
    v9 = getIDSServiceNameiMessage();
    v10 = getIDSServiceNameiMessage();
    v11 = WeakRetained[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_43;
    v13[3] = &unk_1E7C9D8F0;
    v14 = WeakRetained;
    v12 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = v12;
    [v7 refreshIDStatusForDestination:v8 service:v9 listenerID:v10 queue:v11 completionBlock:v13];
  }
}

uint64_t __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_43(uint64_t a1, uint64_t a2)
{
  v4 = _AALogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__AAMessagingDestination_isRegisteredToiMessageWithCompletion___block_invoke_43_cold_1();
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a2 == 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_destination copy];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)initWithHandle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[AAMessagingDestination initWithHandle:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "%s unable to initialize with handle %@", &v2, 0x16u);
}

- (void)initWithHandle:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AAMessagingDestination initWithHandle:]";
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with phone number", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithHandle:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AAMessagingDestination initWithHandle:]";
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with email", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithHandle:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AAMessagingDestination initWithHandle:]";
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with token handle", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithHandle:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AAMessagingDestination initWithHandle:]";
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with phone number uri", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithHandle:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[AAMessagingDestination initWithHandle:]";
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initializing with email uri", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isRegisteredToiMessageWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 destinationURI];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Checking if %@ is reachable via iMessage.", &v4, 0xCu);
}

@end