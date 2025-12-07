@interface NPKVehicleConnectivityCoordinator
+ (id)_secureElementPassMatchingAID:(id)d subcredentialIdentifier:(id)identifier;
+ (id)_subcredentialIdentifierForPass:(id)pass;
- (BOOL)isVehicleConnectedForPass:(id)pass;
- (NPKVehicleConnectivityCoordinator)init;
- (NPKVehicleConnectivityCoordinator)initWithDistributedNotificationCenter:(id)center;
- (NPKVehicleConnectivityCoordinatorDelegate)delegate;
- (void)_handleCarKeyVehicleStatusChangeNotification:(id)notification;
- (void)_parseVehicleStatusChangeNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outSubcredentialIdentifier:(id *)subcredentialIdentifier;
@end

@implementation NPKVehicleConnectivityCoordinator

- (NPKVehicleConnectivityCoordinator)init
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = [(NPKVehicleConnectivityCoordinator *)self initWithDistributedNotificationCenter:defaultCenter];

  return v4;
}

- (NPKVehicleConnectivityCoordinator)initWithDistributedNotificationCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = NPKVehicleConnectivityCoordinator;
  v6 = [(NPKVehicleConnectivityCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distributedNotificationCenter, center);
    [(NPKVehicleConnectivityCoordinator *)v7 _registerObservers];
  }

  return v7;
}

- (BOOL)isVehicleConnectedForPass:(id)pass
{
  v30 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  isCarKeyPass = [passCopy isCarKeyPass];
  if (!isCarKeyPass || (isCarKeyPass = [passCopy npkSupportsBluetooth], (isCarKeyPass & 1) == 0))
  {
    v5 = pk_General_log(isCarKeyPass);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v25 = "[NPKVehicleConnectivityCoordinator isVehicleConnectedForPass:]";
        v26 = 2082;
        v27 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKVehicleConnectivityCoordinator.m";
        v28 = 2048;
        v29 = 43;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to check vehicle connected state for any pass other than UWB capable car keys!)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v23 = 0;
  v9 = [PKGetClassNFDigitalCarKeySession() getVehicleReports:&v23];
  v10 = v23;
  v11 = v10;
  if (!v10)
  {
    v15 = [objc_opt_class() _subcredentialIdentifierForPass:passCopy];
    v16 = [v9 objectForKeyedSubscript:v15];
    LOBYTE(v13) = v16 != 0;
    v17 = pk_General_log(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_General_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [passCopy uniqueID];
        *buf = 138412546;
        v25 = uniqueID;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKVehicleConnectivityCoordinator: Vehicle report for pass %@ is %@", buf, 0x16u);
      }
    }

    goto LABEL_18;
  }

  v12 = pk_General_log(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if (v13)
  {
    v15 = pk_General_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: NPKVehicleConnectivityCoordinator: Unable to fetch vehicle report! %@", buf, 0xCu);
    }

    LOBYTE(v13) = 0;
LABEL_18:
  }

  return v13;
}

- (void)_handleCarKeyVehicleStatusChangeNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  v18 = 0;
  v19 = 0;
  [(NPKVehicleConnectivityCoordinator *)self _parseVehicleStatusChangeNotificationObject:object outApplicationIdentifier:&v19 outSubcredentialIdentifier:&v18];
  v6 = v19;
  v7 = v18;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = notificationCopy;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKVehicleConnectivityCoordinator: Received car key vehicle status change notification: %@ for AID: %@ subcredential ID: %@", buf, 0x20u);
    }
  }

  v13 = [objc_opt_class() _secureElementPassMatchingAID:v6 subcredentialIdentifier:v7];
  if (v13)
  {
    delegate = [(NPKVehicleConnectivityCoordinator *)self delegate];
    [delegate vehicleConnectivityCoordinator:self didUpdateVehicleStatusForPass:v13];
  }

  else
  {
    v15 = pk_General_log(0);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (!v16)
    {
      goto LABEL_8;
    }

    delegate = pk_General_log(v17);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_25B300000, delegate, OS_LOG_TYPE_DEFAULT, "Notice: NPKVehicleConnectivityCoordinator: Unable to identify pass for subcredential: %@", buf, 0xCu);
    }
  }

LABEL_8:
}

- (void)_parseVehicleStatusChangeNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outSubcredentialIdentifier:(id *)subcredentialIdentifier
{
  isKindOfClass = object;
  v8 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v9 = [v8 componentsSeparatedByString:@":"];
    *identifier = [v9 firstObject];
    if ([v9 count] == 2)
    {
      lastObject = [v9 lastObject];
      *subcredentialIdentifier = lastObject;
    }

    else
    {
      *subcredentialIdentifier = 0;
    }
  }

  else
  {
    v11 = pk_General_log(isKindOfClass);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Expected to be provided a notification object, but instead found nil!", v15, 2u);
      }
    }
  }
}

+ (id)_secureElementPassMatchingAID:(id)d subcredentialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  v7 = [mEMORY[0x277D37FC0] passesOfType:1];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __91__NPKVehicleConnectivityCoordinator__secureElementPassMatchingAID_subcredentialIdentifier___block_invoke;
  v16 = &unk_279944ED8;
  v17 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  v9 = [v7 pk_objectsPassingTest:&v13];

  firstObject = [v9 firstObject];
  secureElementPass = [firstObject secureElementPass];

  return secureElementPass;
}

uint64_t __91__NPKVehicleConnectivityCoordinator__secureElementPassMatchingAID_subcredentialIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v7 = [a2 secureElementPass];
  v8 = [v6 _subcredentialIdentifierForPass:v7];

  v9 = [v8 isEqualToString:*(a1 + 32)];
  *a4 = v9;

  return v9;
}

+ (id)_subcredentialIdentifierForPass:(id)pass
{
  secureElementPass = [pass secureElementPass];
  devicePrimaryContactlessPaymentApplication = [secureElementPass devicePrimaryContactlessPaymentApplication];

  subcredentials = [devicePrimaryContactlessPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];

  identifier = [anyObject identifier];

  return identifier;
}

- (NPKVehicleConnectivityCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end