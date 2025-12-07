@interface ICASCloudErrorData
- (ICASCloudErrorData)initWithErrorStatus:(id)status;
- (id)toDict;
@end

@implementation ICASCloudErrorData

- (ICASCloudErrorData)initWithErrorStatus:(id)status
{
  statusCopy = status;
  v9.receiver = self;
  v9.super_class = ICASCloudErrorData;
  v6 = [(ICASCloudErrorData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errorStatus, status);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"errorStatus";
  errorStatus = [(ICASCloudErrorData *)self errorStatus];
  if (errorStatus)
  {
    errorStatus2 = [(ICASCloudErrorData *)self errorStatus];
  }

  else
  {
    errorStatus2 = objc_opt_new();
  }

  v5 = errorStatus2;
  v9[0] = errorStatus2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end