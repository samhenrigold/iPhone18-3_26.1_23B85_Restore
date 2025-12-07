@interface CCSetStoreUpdateServiceExported
- (BOOL)_setupAdminConnection;
- (BOOL)_setupDonateConnectionWithItemType:(unsigned __int16)type;
- (CCSetStoreUpdateServiceExported)initWithQueue:(id)queue process:(id)process connection:(id)connection writeAccess:(id)access donateConnectionFactory:(id)factory;
- (id)useCase;
- (void)beginSetDonationWithItemType:(unsigned __int16)type encodedDescriptors:(id)descriptors sourceVersion:(unint64_t)version sourceValidity:(id)validity options:(unsigned __int16)options completion:(id)completion;
- (void)performMaintenanceOnAllSets:(id)sets completion:(id)completion;
- (void)removeAllSets:(id)sets completion:(id)completion;
- (void)useCase;
@end

@implementation CCSetStoreUpdateServiceExported

- (id)useCase
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_remoteUseCase = [currentConnection bm_remoteUseCase];

  useCase = self->_useCase;
  p_useCase = &self->_useCase;
  v5 = useCase;
  if (useCase)
  {
    if (bm_remoteUseCase && ([(NSString *)v5 isEqual:bm_remoteUseCase]& 1) == 0)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CCSetStoreUpdateServiceExported *)p_useCase useCase];
      }
    }

    v9 = *p_useCase;
  }

  else
  {
    objc_storeStrong(p_useCase, bm_remoteUseCase);
    v9 = bm_remoteUseCase;
  }

  v10 = v9;

  return v9;
}

- (CCSetStoreUpdateServiceExported)initWithQueue:(id)queue process:(id)process connection:(id)connection writeAccess:(id)access donateConnectionFactory:(id)factory
{
  queueCopy = queue;
  processCopy = process;
  connectionCopy = connection;
  accessCopy = access;
  factoryCopy = factory;
  v21.receiver = self;
  v21.super_class = CCSetStoreUpdateServiceExported;
  v17 = [(CCSetStoreUpdateServiceExported *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_process, process);
    objc_storeStrong(&v18->_writeAccess, access);
    objc_storeStrong(&v18->_donateConnectionFactory, factory);
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_connection, connection);
  }

  return v18;
}

- (BOOL)_setupDonateConnectionWithItemType:(unsigned __int16)type
{
  typeCopy = type;
  v5 = MEMORY[0x1E698E970];
  process = self->_process;
  useCase = [(CCSetStoreUpdateServiceExported *)self useCase];
  v8 = [v5 policyForProcess:process connectionFlags:0 useCase:useCase];

  v9 = CCTypeIdentifierRegistryBridge();
  v10 = [v9 setIdentifierForItemType:typeCopy];

  if (!v10)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CCSetStoreUpdateServiceExported _setupDonateConnectionWithItemType:v8];
    }

    goto LABEL_10;
  }

  if (([v8 allowsAccessToSetStoreUpdateServiceForSet:v10] & 1) == 0)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCSetStoreUpdateServiceExported _setupDonateConnectionWithItemType:v8];
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v11 = [(CCDonateConnectionFactory *)self->_donateConnectionFactory makeXPCConnection:self->_connection];
  donateConnection = self->_donateConnection;
  self->_donateConnection = v11;

  v13 = 1;
LABEL_11:

  return v13;
}

- (void)beginSetDonationWithItemType:(unsigned __int16)type encodedDescriptors:(id)descriptors sourceVersion:(unint64_t)version sourceValidity:(id)validity options:(unsigned __int16)options completion:(id)completion
{
  optionsCopy = options;
  typeCopy = type;
  descriptorsCopy = descriptors;
  validityCopy = validity;
  completionCopy = completion;
  if ([(CCSetStoreUpdateServiceExported *)self _setupDonateConnectionWithItemType:typeCopy])
  {
    [(CCDonateConnection *)self->_donateConnection beginSetDonationWithItemType:typeCopy encodedDescriptors:descriptorsCopy sourceVersion:version sourceValidity:validityCopy options:optionsCopy completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 5, 0, 0);
  }
}

- (BOOL)_setupAdminConnection
{
  v3 = MEMORY[0x1E698E970];
  process = self->_process;
  useCase = [(CCSetStoreUpdateServiceExported *)self useCase];
  v6 = [v3 policyForProcess:process connectionFlags:0 useCase:useCase];

  v7 = [v6 allowsAccessToAllSetsWithMode:3];
  if (v7)
  {
    v8 = [[CCSetStoreAdminConnection alloc] initWithConnection:self->_connection writeAccess:self->_writeAccess];
    adminConnection = self->_adminConnection;
    self->_adminConnection = v8;
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CCSetStoreUpdateServiceExported *)v10 _setupAdminConnection];
    }
  }

  return v7;
}

- (void)performMaintenanceOnAllSets:(id)sets completion:(id)completion
{
  setsCopy = sets;
  completionCopy = completion;
  if ([(CCSetStoreUpdateServiceExported *)self _setupAdminConnection])
  {
    [(CCSetStoreAdminConnection *)self->_adminConnection performMaintenanceOnAllSets:setsCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 2);
  }
}

- (void)removeAllSets:(id)sets completion:(id)completion
{
  setsCopy = sets;
  completionCopy = completion;
  if ([(CCSetStoreUpdateServiceExported *)self _setupAdminConnection])
  {
    [(CCSetStoreAdminConnection *)self->_adminConnection removeAllSets:setsCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 2);
  }
}

- (void)useCase
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1DA444000, log, OS_LOG_TYPE_FAULT, "CCSetDonationServerExported - Ignoring use-case change from %@ to %@", &v4, 0x16u);
}

- (void)_setupDonateConnectionWithItemType:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 descriptionOfProcessAndUseCase];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_setupDonateConnectionWithItemType:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 descriptionOfProcessAndUseCase];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

@end