@interface ICASCloudOperationData
- (ICASCloudOperationData)initWithOperationID:(id)d operationType:(id)type operationGroupName:(id)name;
- (id)toDict;
@end

@implementation ICASCloudOperationData

- (ICASCloudOperationData)initWithOperationID:(id)d operationType:(id)type operationGroupName:(id)name
{
  dCopy = d;
  typeCopy = type;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = ICASCloudOperationData;
  v12 = [(ICASCloudOperationData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationID, d);
    objc_storeStrong(&v13->_operationType, type);
    objc_storeStrong(&v13->_operationGroupName, name);
  }

  return v13;
}

- (id)toDict
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"operationID";
  operationID = [(ICASCloudOperationData *)self operationID];
  if (operationID)
  {
    operationID2 = [(ICASCloudOperationData *)self operationID];
  }

  else
  {
    operationID2 = objc_opt_new();
  }

  v5 = operationID2;
  v15[0] = operationID2;
  v14[1] = @"operationType";
  operationType = [(ICASCloudOperationData *)self operationType];
  if (operationType)
  {
    operationType2 = [(ICASCloudOperationData *)self operationType];
  }

  else
  {
    operationType2 = objc_opt_new();
  }

  v8 = operationType2;
  v15[1] = operationType2;
  v14[2] = @"operationGroupName";
  operationGroupName = [(ICASCloudOperationData *)self operationGroupName];
  if (operationGroupName)
  {
    operationGroupName2 = [(ICASCloudOperationData *)self operationGroupName];
  }

  else
  {
    operationGroupName2 = objc_opt_new();
  }

  v11 = operationGroupName2;
  v15[2] = operationGroupName2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end