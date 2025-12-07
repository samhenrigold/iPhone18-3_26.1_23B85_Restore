@interface HAPAccessoryPairingRequest
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HAPAccessoryPairingRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[HAPAccessoryPairingRequest pairingIdentity](self, "pairingIdentity"), v7 = objc_claimAutoreleasedReturnValue(), [v6 pairingIdentity], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9) && (v10 = -[HAPAccessoryPairingRequest requiresUserConsent](self, "requiresUserConsent"), v10 == objc_msgSend(v6, "requiresUserConsent")) && (-[HAPAccessoryPairingRequest ownershipToken](self, "ownershipToken"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "ownershipToken"), v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(), v12, v11, v13) && (-[HAPAccessoryPairingRequest ssid](self, "ssid"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "ssid"), v15 = objc_claimAutoreleasedReturnValue(), v16 = HMFEqualObjects(), v15, v14, v16) && (-[HAPAccessoryPairingRequest psk](self, "psk"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "psk"), v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v17, v19) && (-[HAPAccessoryPairingRequest isoCountryCode](self, "isoCountryCode"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "isoCountryCode"), v21 = objc_claimAutoreleasedReturnValue(), v22 = HMFEqualObjects(), v21, v20, v22))
  {
    chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
    chipFabricIndex2 = [v6 chipFabricIndex];
    v25 = HMFEqualObjects();
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (unint64_t)hash
{
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  v4 = [pairingIdentity hash];

  requiresUserConsent = [(HAPAccessoryPairingRequest *)self requiresUserConsent];
  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  v7 = v4 ^ [ownershipToken hash] ^ requiresUserConsent;

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  v9 = [ssid hash];

  v10 = [(HAPAccessoryPairingRequest *)self psk];
  v11 = v9 ^ [v10 hash];

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  v13 = v7 ^ v11 ^ [isoCountryCode hash];

  chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
  v15 = [chipFabricIndex hash];

  return v13 ^ v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HAPAccessoryPairingRequest allocWithZone:?]];
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  [(HAPAccessoryPairingRequest *)v4 setPairingIdentity:pairingIdentity];

  [(HAPAccessoryPairingRequest *)v4 setRequiresUserConsent:[(HAPAccessoryPairingRequest *)self requiresUserConsent]];
  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  [(HAPAccessoryPairingRequest *)v4 setOwnershipToken:ownershipToken];

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  [(HAPAccessoryPairingRequest *)v4 setSsid:ssid];

  v8 = [(HAPAccessoryPairingRequest *)self psk];
  [(HAPAccessoryPairingRequest *)v4 setPsk:v8];

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  [(HAPAccessoryPairingRequest *)v4 setIsoCountryCode:isoCountryCode];

  chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
  [(HAPAccessoryPairingRequest *)v4 setChipFabricIndex:chipFabricIndex];

  return v4;
}

- (id)attributeDescriptions
{
  v3 = +[NSMutableArray array];
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];

  if (pairingIdentity)
  {
    v5 = [HMFAttributeDescription alloc];
    pairingIdentity2 = [(HAPAccessoryPairingRequest *)self pairingIdentity];
    v7 = [v5 initWithName:@"Pairing Identity" value:pairingIdentity2];
    [v3 addObject:v7];
  }

  if ([(HAPAccessoryPairingRequest *)self requiresUserConsent])
  {
    v8 = [HMFAttributeDescription alloc];
    [(HAPAccessoryPairingRequest *)self requiresUserConsent];
    v9 = HMFBooleanToString();
    v10 = [v8 initWithName:@"Requires User Consent" value:v9];
    [v3 addObject:v10];
  }

  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];

  if (ownershipToken)
  {
    v12 = [HMFAttributeDescription alloc];
    ownershipToken2 = [(HAPAccessoryPairingRequest *)self ownershipToken];
    v14 = [v12 initWithName:@"Ownership Token" value:ownershipToken2];
    [v3 addObject:v14];
  }

  ssid = [(HAPAccessoryPairingRequest *)self ssid];

  if (ssid)
  {
    v16 = [HMFAttributeDescription alloc];
    ssid2 = [(HAPAccessoryPairingRequest *)self ssid];
    v18 = [v16 initWithName:@"SSID" value:ssid2];
    [v3 addObject:v18];
  }

  v19 = [(HAPAccessoryPairingRequest *)self psk];

  if (v19)
  {
    v20 = [HMFAttributeDescription alloc];
    v21 = [(HAPAccessoryPairingRequest *)self psk];
    v22 = [v20 initWithName:@"PSK" value:v21];
    [v3 addObject:v22];
  }

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];

  if (isoCountryCode)
  {
    v24 = [HMFAttributeDescription alloc];
    isoCountryCode2 = [(HAPAccessoryPairingRequest *)self isoCountryCode];
    v26 = [v24 initWithName:@"ISO Country Code" value:isoCountryCode2];
    [v3 addObject:v26];
  }

  chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];

  if (chipFabricIndex)
  {
    v28 = [HMFAttributeDescription alloc];
    chipFabricIndex2 = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
    v30 = [v28 initWithName:@"CHIP Fabric Index" value:chipFabricIndex2];
    [v3 addObject:v30];
  }

  v31 = [v3 copy];

  return v31;
}

@end