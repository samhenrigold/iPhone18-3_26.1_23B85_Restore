@interface CHIPAccessoriesRecord
- (BOOL)createAccessoryMetadata:(id)metadata;
- (CHIPAccessoriesRecord)initWithCKRecord:(id)record;
@end

@implementation CHIPAccessoriesRecord

- (CHIPAccessoriesRecord)initWithCKRecord:(id)record
{
  recordCopy = record;
  if (recordCopy && ((v20.receiver = self, v20.super_class = CHIPAccessoriesRecord, (self = -[CHIPAccessoriesRecord init](&v20, sel_init)) == 0) || (v5 = os_log_create("com.apple.accessoryupdater.uarp", "iCloudAssetManager"), log = self->_log, self->_log = v5, log, [recordCopy recordType], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"CHIPAccessory"), v7, v8) && (objc_msgSend(recordCopy, "objectForKey:", @"signatureV2"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "copy"), accessoryListSignature = self->_accessoryListSignature, self->_accessoryListSignature = v10, accessoryListSignature, v9, self->_accessoryListSignature) && (objc_msgSend(recordCopy, "objectForKey:", @"verificationCertificateKey"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "copy"), stonehengeCertificateID = self->_stonehengeCertificateID, self->_stonehengeCertificateID = v13, stonehengeCertificateID, v12, self->_stonehengeCertificateID) && (objc_msgSend(recordCopy, "objectForKey:", @"accessoryInstallationGuideURL"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "copy"), installationGuideURLString = self->_installationGuideURLString, self->_installationGuideURLString = v16, installationGuideURLString, v15, -[CHIPAccessoriesRecord createAccessoryMetadata:](self, "createAccessoryMetadata:", recordCopy)) && self->_accessoryMetadata))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)createAccessoryMetadata:(id)metadata
{
  metadataCopy = metadata;
  recordID = [metadataCopy recordID];
  recordName = [recordID recordName];
  v7 = [recordName componentsSeparatedByString:@"-"];

  v8 = [v7 count];
  if (v8 == 2)
  {
    firstObject = [v7 firstObject];
    lastObject = [v7 lastObject];
    v11 = [objc_alloc(MEMORY[0x277D02610]) initWithProductGroup:firstObject productNumber:lastObject];
    accessoryMetadata = self->_accessoryMetadata;
    self->_accessoryMetadata = v11;

    v13 = [metadataCopy objectForKey:@"accessoryCategoryNumber"];
    -[UARPAccessoryMetadata setAccessoryCategoryNumber:](self->_accessoryMetadata, "setAccessoryCategoryNumber:", [v13 unsignedLongLongValue]);

    v14 = [metadataCopy objectForKey:@"accessoryMarketingName"];
    [(UARPAccessoryMetadata *)self->_accessoryMetadata setAccessoryMarketingName:v14];

    v15 = [metadataCopy objectForKey:@"accessoryProductLabelV2"];
    [(UARPAccessoryMetadata *)self->_accessoryMetadata setAccessoryProductLabel:v15];

    v16 = [metadataCopy objectForKey:@"vendorName"];
    [(UARPAccessoryMetadata *)self->_accessoryMetadata setVendorName:v16];

    v17 = [metadataCopy objectForKey:@"companyLegalName"];
    [(UARPAccessoryMetadata *)self->_accessoryMetadata setCompanyLegalName:v17];

    v18 = [metadataCopy objectForKey:@"companyPreferredName"];
    [(UARPAccessoryMetadata *)self->_accessoryMetadata setCompanyPreferredName:v18];

    [(UARPAccessoryMetadata *)self->_accessoryMetadata setAccessoryCapability:16];
    if (self->_installationGuideURLString)
    {
      v19 = [MEMORY[0x277CBEBC0] URLWithString:?];
      [(UARPAccessoryMetadata *)self->_accessoryMetadata setAccessoryInstallationGuideURL:v19];
    }
  }

  return v8 == 2;
}

@end