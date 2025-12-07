@interface FMDCipherKeychainItemAdaptor
- (FMDCipherKeychainItemAdaptor)initWithCipher:(id)cipher;
- (FMDCipherKeychainItemAdaptor)initWithKeychainItem:(id)item;
@end

@implementation FMDCipherKeychainItemAdaptor

- (FMDCipherKeychainItemAdaptor)initWithKeychainItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = FMDCipherKeychainItemAdaptor;
  v5 = [(FMDCipherKeychainItemAdaptor *)&v17 init];
  if (v5)
  {
    creationDate = [itemCopy creationDate];
    [(FMDCipherKeychainItemAdaptor *)v5 setCreationDate:creationDate];

    lastModifyDate = [itemCopy lastModifyDate];
    [(FMDCipherKeychainItemAdaptor *)v5 setLastModifyDate:lastModifyDate];

    rawData = [itemCopy rawData];
    [(FMDCipherKeychainItemAdaptor *)v5 setRawData:rawData];
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    v16 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:rawData error:&v16];
    v12 = v16;
    v13 = v12;
    if (v12)
    {
      v14 = sub_100002880(v12);
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        sub_10022E96C(v13, &v14->super);
      }
    }

    else
    {
      v14 = [[FMDOneShotCipher alloc] initWithDictionary:v11];
      [(FMDCipherKeychainItemAdaptor *)v5 setCipher:v14];
    }
  }

  return v5;
}

- (FMDCipherKeychainItemAdaptor)initWithCipher:(id)cipher
{
  cipherCopy = cipher;
  v16.receiver = self;
  v16.super_class = FMDCipherKeychainItemAdaptor;
  v5 = [(FMDCipherKeychainItemAdaptor *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(FMDCipherKeychainItemAdaptor *)v5 setCipher:cipherCopy];
    v7 = +[NSDate date];
    [(FMDCipherKeychainItemAdaptor *)v6 setCreationDate:v7];

    creationDate = [(FMDCipherKeychainItemAdaptor *)v6 creationDate];
    [(FMDCipherKeychainItemAdaptor *)v6 setLastModifyDate:creationDate];

    dictionaryValue = [cipherCopy dictionaryValue];
    v15 = 0;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:dictionaryValue requiringSecureCoding:1 error:&v15];
    v11 = v15;
    v12 = v11;
    if (v11)
    {
      v13 = sub_100002880(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10022E9E4(v12, v13);
      }
    }

    [(FMDCipherKeychainItemAdaptor *)v6 setRawData:v10];
  }

  return v6;
}

@end