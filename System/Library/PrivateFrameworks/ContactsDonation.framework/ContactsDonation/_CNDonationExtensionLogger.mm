@interface _CNDonationExtensionLogger
- (_CNDonationExtensionLogger)init;
- (void)couldNotLoadDonorExtensionForIdentifier:(id)identifier error:(id)error;
- (void)couldNotRedonateValuesWithReason:(unint64_t)reason error:(id)error;
- (void)couldNotRenewDonation:(id)donation error:(id)error;
- (void)didExpireDonation:(id)donation withError:(id)error;
- (void)didRedonateValuesWithReason:(unint64_t)reason;
- (void)didRenewDonation:(id)donation untilDate:(id)date;
- (void)loadedDonorExtension:(id)extension forIdentifier:(id)identifier;
- (void)willRedonateValuesWithReason:(unint64_t)reason;
- (void)willRenewDonation:(id)donation;
@end

@implementation _CNDonationExtensionLogger

- (_CNDonationExtensionLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationExtensionLogger;
  v2 = [(_CNDonationExtensionLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "extensions");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)loadedDonorExtension:(id)extension forIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  identifierCopy = identifier;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = identifierCopy;
    v11 = 2114;
    v12 = extensionCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Loaded extension for donor '%{public}@': %{public}@", &v9, 0x16u);
  }
}

- (void)couldNotLoadDonorExtensionForIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationExtensionLogger *)identifierCopy couldNotLoadDonorExtensionForIdentifier:errorCopy error:log_t];
  }
}

- (void)willRenewDonation:(id)donation
{
  v8 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = donationCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will renew donation %{public}@", &v6, 0xCu);
  }
}

- (void)didRenewDonation:(id)donation untilDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  dateCopy = date;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = donationCopy;
    v11 = 2114;
    v12 = dateCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Donation %{public}@ renewed until %{public}@", &v9, 0x16u);
  }
}

- (void)didExpireDonation:(id)donation withError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = donationCopy;
    v11 = 2114;
    v12 = errorCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will not renew donation %{public}@: %{public}@", &v9, 0x16u);
  }
}

- (void)couldNotRenewDonation:(id)donation error:(id)error
{
  donationCopy = donation;
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationExtensionLogger couldNotRenewDonation:error:];
  }
}

- (void)willRedonateValuesWithReason:(unint64_t)reason
{
  v8 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will redonate values (reason %{public}@)", &v6, 0xCu);
  }
}

- (void)didRedonateValuesWithReason:(unint64_t)reason
{
  v8 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did redonate values (reason %{public}@)", &v6, 0xCu);
  }
}

- (void)couldNotRedonateValuesWithReason:(unint64_t)reason error:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationExtensionLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationExtensionLogger *)reason couldNotRedonateValuesWithReason:errorCopy error:log_t];
  }
}

- (void)couldNotLoadDonorExtensionForIdentifier:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_2258E5000, a2, a3, "Could not load extension for donor '%{public}@' : %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)couldNotRedonateValuesWithReason:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0_0();
  v7 = a2;
  _os_log_error_impl(&dword_2258E5000, a3, OS_LOG_TYPE_ERROR, "Could not redonate values (reason %{public}@): %{public}@", v6, 0x16u);
}

@end