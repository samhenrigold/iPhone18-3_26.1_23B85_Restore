@interface MBPeerKeychainTransferResponse
- (MBPeerKeychainTransferResponse)initWithDictionary:(id)dictionary error:(id *)error;
- (MBPeerKeychainTransferResponse)initWithKeyBag:(id)bag password:(id)password keychainFileName:(id)name;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerKeychainTransferResponse

- (MBPeerKeychainTransferResponse)initWithKeyBag:(id)bag password:(id)password keychainFileName:(id)name
{
  bagCopy = bag;
  passwordCopy = password;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = MBPeerKeychainTransferResponse;
  v12 = [(MBPeerKeychainTransferResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passwordData, password);
    objc_storeStrong(&v13->_keybagData, bag);
    objc_storeStrong(&v13->_keychainFileName, name);
  }

  return v13;
}

- (MBPeerKeychainTransferResponse)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MBPeerKeychainTransferResponse;
  v7 = [(MBPeerKeychainTransferResponse *)&v16 init];
  if (!v7 || ([dictionaryCopy objectForKeyedSubscript:@"MBKeyBag"], v8 = objc_claimAutoreleasedReturnValue(), keybagData = v7->_keybagData, v7->_keybagData = v8, keybagData, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"MBKeyBagPassword"), v10 = objc_claimAutoreleasedReturnValue(), passwordData = v7->_passwordData, v7->_passwordData = v10, passwordData, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"MBKeychainFileName"), v12 = objc_claimAutoreleasedReturnValue(), keychainFileName = v7->_keychainFileName, v7->_keychainFileName = v12, keychainFileName, v7->_keybagData) && v7->_passwordData && v7->_keychainFileName)
  {
    v14 = v7;
  }

  else if (error)
  {
    [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", dictionaryCopy];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)dictionaryRepresentation
{
  v8[0] = @"MBKeyBag";
  keybagData = [(MBPeerKeychainTransferResponse *)self keybagData];
  v9[0] = keybagData;
  v8[1] = @"MBKeyBagPassword";
  passwordData = [(MBPeerKeychainTransferResponse *)self passwordData];
  v9[1] = passwordData;
  v8[2] = @"MBKeychainFileName";
  keychainFileName = [(MBPeerKeychainTransferResponse *)self keychainFileName];
  v9[2] = keychainFileName;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end