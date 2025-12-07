@interface DADClientSubscribedCalendarJunkReportDelegate
- (id)_createURLRequestForSubscriptionCalendarURL:(id)l;
- (id)_findCalendarURLFromAccount:(id)account;
- (id)_generateBodyWithURL:(id)l;
- (void)finishWithError:(id)error;
- (void)reportSubscribedCalendarAsJunk:(id)junk;
@end

@implementation DADClientSubscribedCalendarJunkReportDelegate

- (void)reportSubscribedCalendarAsJunk:(id)junk
{
  v14 = *MEMORY[0x277D85DE8];
  junkCopy = junk;
  v5 = [(DADClientSubscribedCalendarJunkReportDelegate *)self _createURLRequestForSubscriptionCalendarURL:junkCopy];
  if (v5)
  {
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
    hTTPBody = [v5 HTTPBody];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__DADClientSubscribedCalendarJunkReportDelegate_reportSubscribedCalendarAsJunk___block_invoke;
    v10[3] = &unk_278F1D340;
    v11 = junkCopy;
    v8 = [mEMORY[0x277CCAD30] uploadTaskWithRequest:v5 fromData:hTTPBody completionHandler:v10];

    [v8 resume];
  }

  else
  {
    mEMORY[0x277CCAD30] = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(mEMORY[0x277CCAD30], v9))
    {
      *buf = 138412290;
      v13 = junkCopy;
      _os_log_impl(&dword_248524000, mEMORY[0x277CCAD30], v9, "Report subscribed calendar as junk failed. Unable to create a URL request. Calendar URL = %@", buf, 0xCu);
    }
  }
}

void __80__DADClientSubscribedCalendarJunkReportDelegate_reportSubscribedCalendarAsJunk___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    if ([v8 statusCode]== 200)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(a1 + 32);
        v21 = 138412290;
        v22 = v11;
        v12 = "Reporting subscribed calendar as junk successful: %@";
        v13 = v9;
        v14 = v10;
        v15 = 12;
LABEL_8:
        _os_log_impl(&dword_248524000, v13, v14, v12, &v21, v15);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v8)
    {
      v9 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v9, v16))
      {
        v17 = [v8 statusCode];
        v18 = *(a1 + 32);
        v21 = 138412802;
        v22 = v7;
        v23 = 2048;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v12 = "Report subscribed calendar as junk failed. Error = %@  Response status code = %ld  Calendar URL = %@";
        v13 = v9;
        v14 = v16;
        v15 = 32;
        goto LABEL_8;
      }

LABEL_9:

      goto LABEL_12;
    }
  }

  v8 = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v8, v19))
  {
    v20 = *(a1 + 32);
    v21 = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v20;
    _os_log_impl(&dword_248524000, v8, v19, "Report subscribed calendar as junk failed. Error = %@  Calendar URL = %@", &v21, 0x16u);
  }

LABEL_12:
}

- (void)finishWithError:(id)error
{
  v8 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&dword_248524000, v4, v5, "Report subscribed calendar as junk -finishWithError: called with error %@", &v6, 0xCu);
  }
}

- (id)_createURLRequestForSubscriptionCalendarURL:(id)l
{
  lCopy = l;
  v5 = sharedDAAccountStore();
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v7 = [(DADClientSubscribedCalendarJunkReportDelegate *)self _findCalendarURLFromAccount:aa_primaryAppleAccount];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v7];
      [v8 setPath:@"/subscribe/reportjunk"];
      v9 = [v8 URL];

      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_6:
  v10 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:@"https://caldav.icloud.com"];
  [v10 setPath:@"/subscribe/reportjunk"];
  v11 = [v10 URL];
  v12 = objc_alloc(MEMORY[0x277CCAB70]);
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = [v12 initWithURL:v13];
  [v14 setHTTPMethod:@"POST"];
  v15 = [MEMORY[0x277CBEBC0] URLWithString:@"/subscribe/reportjunk"];
  [v14 setMainDocumentURL:v15];

  [v14 aa_addDeviceIDHeader];
  [v14 addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"content-type"];
  v16 = [(DADClientSubscribedCalendarJunkReportDelegate *)self _generateBodyWithURL:lCopy];

  [v14 setHTTPBody:v16];
  if (v9 && ([v14 aa_addAuthTokenOrBasicAuthHeaderWithAccount:aa_primaryAppleAccount preferUsingPassword:0] & 1) == 0)
  {
    [v14 setURL:v11];
    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v17, v18))
    {
      *v20 = 0;
      _os_log_impl(&dword_248524000, v17, v18, "Unable to add authentication headers. Sending subscribed calendar report without it.", v20, 2u);
    }
  }

  return v14;
}

- (id)_generateBodyWithURL:(id)l
{
  v3 = MEMORY[0x277CFDCA0];
  lCopy = l;
  v5 = objc_alloc_init(v3);
  v6 = *MEMORY[0x277CFDE60];
  v7 = *MEMORY[0x277CFDE90];
  [v5 startElement:*MEMORY[0x277CFDE60] inNamespace:*MEMORY[0x277CFDE90] withAttributes:0];
  v8 = *MEMORY[0x277CFDF38];
  v9 = *MEMORY[0x277CFDEF8];
  absoluteString = [lCopy absoluteString];

  [v5 appendElement:v8 inNamespace:v9 withStringContent:absoluteString withAttributeNamesAndValues:0];
  [v5 endElement:v6 inNamespace:v7];
  data = [v5 data];

  return data;
}

- (id)_findCalendarURLFromAccount:(id)account
{
  v3 = [account calSyncingAccountUsingChildAccounts:0];
  v4 = [objc_alloc(MEMORY[0x277D03720]) initWithBackingAccountInfo:v3];
  v5 = [v4 urlFromDataclassPropertiesForDataclass:*MEMORY[0x277CB8958]];
  absoluteString = [v5 absoluteString];

  return absoluteString;
}

@end