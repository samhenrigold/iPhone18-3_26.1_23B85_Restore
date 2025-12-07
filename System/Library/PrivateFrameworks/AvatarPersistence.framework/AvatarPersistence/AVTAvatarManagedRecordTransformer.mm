@interface AVTAvatarManagedRecordTransformer
- (id)managedRecordIdentifierForIdentifier:(id)identifier;
- (id)recordWithManagedRecord:(id)record error:(id *)error;
- (void)updateManagedRecord:(id)record withRecord:(id)withRecord;
@end

@implementation AVTAvatarManagedRecordTransformer

- (id)managedRecordIdentifierForIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithUUIDString:identifierCopy];

  return v5;
}

- (void)updateManagedRecord:(id)record withRecord:(id)withRecord
{
  withRecordCopy = withRecord;
  recordCopy = record;
  identifier = [withRecordCopy identifier];
  v9 = [(AVTAvatarManagedRecordTransformer *)self managedRecordIdentifierForIdentifier:identifier];
  [recordCopy setIdentifier:v9];

  avatarData = [withRecordCopy avatarData];
  [recordCopy setAvatarData:avatarData];

  orderDate = [withRecordCopy orderDate];

  [recordCopy setOrderDate:orderDate];
}

- (id)recordWithManagedRecord:(id)record error:(id *)error
{
  v26[2] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  identifier = [recordCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!error)
    {
      v16 = 0;
      goto LABEL_14;
    }

    v25[0] = *MEMORY[0x277CCA470];
    v25[1] = @"InvalidClass";
    v26[0] = @"Record identifier is not of type NSUUID";
    v17 = MEMORY[0x277CCACA8];
    identifier2 = [recordCopy identifier];
    v18 = [objc_opt_class() description];
    v19 = [v17 stringWithFormat:@"%@", v18];
    v26[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    *error = [AVTError errorWithCode:703 userInfo:v20];

    goto LABEL_12;
  }

  identifier3 = [recordCopy identifier];
  identifier2 = [(AVTAvatarManagedRecordTransformer *)self identifierForManagedRecordIdentifier:identifier3];

  if (!identifier2)
  {
    if (error)
    {
      v23 = *MEMORY[0x277CCA470];
      v24 = @"Record has a nil identifier";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *error = [AVTError errorWithCode:701 userInfo:v21];
    }

    goto LABEL_12;
  }

  avatarData = [recordCopy avatarData];
  v12 = [AVTAvatarRecord canLoadAvatarWithData:avatarData];

  if (!v12)
  {
    if (error)
    {
      [AVTError errorWithCode:702 userInfo:0];
      *error = v16 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v13 = [AVTAvatarRecord alloc];
  avatarData2 = [recordCopy avatarData];
  orderDate = [recordCopy orderDate];
  v16 = [(AVTAvatarRecord *)v13 initWithAvatarData:avatarData2 identifier:identifier2 orderDate:orderDate];

LABEL_13:
LABEL_14:

  return v16;
}

@end