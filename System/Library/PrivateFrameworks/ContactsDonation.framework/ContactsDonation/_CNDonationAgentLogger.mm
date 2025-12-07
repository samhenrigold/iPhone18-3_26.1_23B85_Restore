@interface _CNDonationAgentLogger
- (_CNDonationAgentLogger)init;
- (void)acceptingConnectionFromProcess:(int)process;
- (void)acceptingDonations:(id)donations;
- (void)agentDidHandleRequest:(SEL)request;
- (void)agentDidStart;
- (void)agentWillHandleRequest:(SEL)request;
- (void)agentWillStart;
- (void)agentWillStop;
- (void)beginRestorePersistedState;
- (void)contactsChangedNotificationEmailAddressesChanged:(BOOL)changed;
- (void)contactsChangedNotificationFoundName:(BOOL)name nameChanged:(BOOL)changed;
- (void)couldNotRejectClusterIdentifier:(id)identifier error:(id)error;
- (void)couldNotRejectDonationIdentifier:(id)identifier error:(id)error;
- (void)couldNotRejectUnknownClusterIdentifier:(id)identifier;
- (void)couldNotRejectUnknownDonationIdentifier:(id)identifier;
- (void)couldNotRenewBecauseDonorError:(id)error;
- (void)couldNotRenewBecauseLoadingError:(id)error;
- (void)couldNotRenewBecauseNotADonorExtension:(id)extension;
- (void)denyingRequestFromProcess:(int)process;
- (void)didDiscoverExtension:(id)extension;
- (void)didDiscoverExtensions;
- (void)didDiscoverUnexpectedExtensionType:(id)type;
- (void)didFailToDiscoverExtensions:(id)extensions;
- (void)didListRejections;
- (void)didRejectClusterIdentifier:(id)identifier;
- (void)didRejectDonationIdentifier:(id)identifier;
- (void)didRemoveAllRejections;
- (void)didRenewValue:(id)value untilDate:(id)date;
- (void)donationServiceDidStart;
- (void)donationServiceWillStart;
- (void)donationServiceWillStop;
- (void)endRestorePersistedState;
- (void)featureDidDisable;
- (void)featureDidEnable;
- (void)featureNotEnabled:(SEL)enabled;
- (void)featureWillDisable;
- (void)featureWillEnable;
- (void)foundUnhashableValue:(id)value;
- (void)maintenanceServiceDidStart;
- (void)maintenanceServiceWillStart;
- (void)maintenanceServiceWillStop;
- (void)preExpiredDonations:(id)donations;
- (void)willDiscoverExtensions;
- (void)willListRejections;
- (void)willLoadExtensionVersions;
- (void)willRejectClusterIdentifier:(id)identifier;
- (void)willRejectDonationIdentifier:(id)identifier;
- (void)willRemoveAllRejections;
- (void)willRenewValues:(id)values withDonor:(id)donor;
- (void)willSaveExtensionVersions;
@end

@implementation _CNDonationAgentLogger

- (_CNDonationAgentLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationAgentLogger;
  v2 = [(_CNDonationAgentLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "agent");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)agentWillStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will start agent", v3, 2u);
  }
}

- (void)agentDidStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did start agent", v3, 2u);
  }
}

- (void)agentWillStop
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will stop agent", v3, 2u);
  }
}

- (void)donationServiceWillStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will start donation service", v3, 2u);
  }
}

- (void)donationServiceDidStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did start donation service", v3, 2u);
  }
}

- (void)donationServiceWillStop
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will stop donation service", v3, 2u);
  }
}

- (void)maintenanceServiceWillStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will start maintenance service", v3, 2u);
  }
}

- (void)maintenanceServiceDidStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did start maintenance service", v3, 2u);
  }
}

- (void)maintenanceServiceWillStop
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "maintenance service stopping", v3, 2u);
  }
}

- (void)beginRestorePersistedState
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will restore persisted state", v3, 2u);
  }
}

- (void)endRestorePersistedState
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did restore persisted state", v3, 2u);
  }
}

- (void)acceptingConnectionFromProcess:(int)process
{
  v6 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = process;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Accepting connection from process %d", v5, 8u);
  }
}

- (void)denyingRequestFromProcess:(int)process
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationAgentLogger *)process denyingRequestFromProcess:log_t];
  }
}

- (void)acceptingDonations:(id)donations
{
  v20 = *MEMORY[0x277D85DE8];
  donationsCopy = donations;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [donationsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    *&v6 = 138543362;
    v12 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(donationsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        log_t = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v12;
          v18 = v10;
          _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Accepting donation: %{public}@", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [donationsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)preExpiredDonations:(id)donations
{
  v20 = *MEMORY[0x277D85DE8];
  donationsCopy = donations;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [donationsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    *&v6 = 138412290;
    v12 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(donationsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        log_t = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
        {
          *buf = v12;
          v18 = v10;
          _os_log_error_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_ERROR, "Donation (%@) already expired. Asking the extension to renew. In the future, this value will not be persisted and you will not be asked to renew it.", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [donationsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)agentWillHandleRequest:(SEL)request
{
  v8 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(request);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will handle request: %@", &v6, 0xCu);
  }
}

- (void)agentDidHandleRequest:(SEL)request
{
  v8 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(request);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did handle request: %@", &v6, 0xCu);
  }
}

- (void)featureNotEnabled:(SEL)enabled
{
  v8 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(enabled);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Could not handle request because feature not enabled: %@", &v6, 0xCu);
  }
}

- (void)featureWillDisable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will disable feature", v3, 2u);
  }
}

- (void)featureDidDisable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did disable feature", v3, 2u);
  }
}

- (void)featureWillEnable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will enable feature", v3, 2u);
  }
}

- (void)featureDidEnable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did enable feature", v3, 2u);
  }
}

- (void)contactsChangedNotificationFoundName:(BOOL)name nameChanged:(BOOL)changed
{
  changedCopy = changed;
  nameCopy = name;
  v10 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109376;
    v7[1] = nameCopy;
    v8 = 1024;
    v9 = changedCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Notified of contacts change. Found name: %u. Changed name: %u.", v7, 0xEu);
  }
}

- (void)contactsChangedNotificationEmailAddressesChanged:(BOOL)changed
{
  changedCopy = changed;
  v6 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = changedCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Notified of contacts change. Email addresses changed: %u.", v5, 8u);
  }
}

- (void)willDiscoverExtensions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will discover extensions", v3, 2u);
  }
}

- (void)didDiscoverExtension:(id)extension
{
  v8 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = extensionCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did discover extension: %{public}@", &v6, 0xCu);
  }
}

- (void)didDiscoverUnexpectedExtensionType:(id)type
{
  typeCopy = type;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger didDiscoverUnexpectedExtensionType:];
  }
}

- (void)didDiscoverExtensions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did discover extensions", v3, 2u);
  }
}

- (void)didFailToDiscoverExtensions:(id)extensions
{
  extensionsCopy = extensions;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger didFailToDiscoverExtensions:];
  }
}

- (void)willLoadExtensionVersions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will load extension versions", v3, 2u);
  }
}

- (void)willSaveExtensionVersions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will save extension versions", v3, 2u);
  }
}

- (void)willRejectDonationIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will reject donation with identifier '%{public}@'", &v6, 0xCu);
  }
}

- (void)didRejectDonationIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did reject donation with identifier '%{public}@'", &v6, 0xCu);
  }
}

- (void)couldNotRejectUnknownDonationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectUnknownDonationIdentifier:];
  }
}

- (void)couldNotRejectDonationIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectDonationIdentifier:error:];
  }
}

- (void)willRejectClusterIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will reject donations with cluster identifier '%@'", &v6, 0xCu);
  }
}

- (void)didRejectClusterIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will reject donations with cluster identifier '%@'", &v6, 0xCu);
  }
}

- (void)couldNotRejectUnknownClusterIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Could not reject cluster with unknown identifier '%@'", &v6, 0xCu);
  }
}

- (void)couldNotRejectClusterIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectClusterIdentifier:error:];
  }
}

- (void)willListRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will list rejections", v3, 2u);
  }
}

- (void)didListRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did list rejections", v3, 2u);
  }
}

- (void)willRemoveAllRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will remove all rejections", v3, 2u);
  }
}

- (void)didRemoveAllRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did remove all rejections", v3, 2u);
  }
}

- (void)foundUnhashableValue:(id)value
{
  valueCopy = value;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger foundUnhashableValue:];
  }
}

- (void)couldNotRenewBecauseDonorError:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseDonorError:];
  }
}

- (void)couldNotRenewBecauseLoadingError:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseLoadingError:];
  }
}

- (void)couldNotRenewBecauseNotADonorExtension:(id)extension
{
  extensionCopy = extension;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseNotADonorExtension:];
  }
}

- (void)didRenewValue:(id)value untilDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dateCopy = date;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    origin = [valueCopy origin];
    donationIdentifier = [origin donationIdentifier];
    v11 = 138543618;
    v12 = donationIdentifier;
    v13 = 2114;
    v14 = dateCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Donation %{public}@ has been renewed until %{public}@", &v11, 0x16u);
  }
}

- (void)willRenewValues:(id)values withDonor:(id)donor
{
  v27 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  donorCopy = donor;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [valuesCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    *&v9 = 138543618;
    v17 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        log_t = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
        {
          origin = [v13 origin];
          donationIdentifier = [origin donationIdentifier];
          *buf = v17;
          v23 = donationIdentifier;
          v24 = 2114;
          v25 = donorCopy;
          _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will renew donation %{public}@ with donor %{public}@", buf, 0x16u);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [valuesCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }
}

- (void)denyingRequestFromProcess:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2258E5000, a2, OS_LOG_TYPE_ERROR, "Denying request lacking authorization from process %d", v2, 8u);
}

@end