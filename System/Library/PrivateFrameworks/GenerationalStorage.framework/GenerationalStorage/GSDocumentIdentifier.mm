@interface GSDocumentIdentifier
- (BOOL)isEqual:(id)equal;
- (GSDocumentIdentifier)initWithCoder:(id)coder;
- (GSDocumentIdentifier)initWithDocumentIdentifier:(id)identifier;
- (GSDocumentIdentifier)initWithFileDescriptor:(int)descriptor forItemAtURL:(id)l allocateIfNone:(BOOL)none error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GSDocumentIdentifier

- (GSDocumentIdentifier)initWithDocumentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = GSDocumentIdentifier;
  v5 = [(GSDocumentIdentifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = *(identifierCopy + 8);
    *(v5 + 3) = *(identifierCopy + 3);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithDocumentIdentifier:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:self->volumeUUID length:16 forKey:@"u"];
  [coderCopy encodeInt64:self->documentID forKey:@"i"];
}

- (GSDocumentIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GSDocumentIdentifier;
  v9 = 0;
  v5 = [(GSDocumentIdentifier *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeBytesForKey:@"u" returnedLength:&v9];
    if (v6 && v9 == 16)
    {
      *(v5 + 8) = *v6;
    }

    *(v5 + 3) = [coderCopy decodeInt64ForKey:@"i"];
  }

  return v5;
}

- (unint64_t)hash
{
  memset(&v4, 0, sizeof(v4));
  CC_SHA256_Init(&v4);
  CC_SHA256_Update(&v4, self->volumeUUID, 0x10u);
  CC_SHA256_Update(&v4, &self->documentID, 8u);
  CC_SHA256_Final(md, &v4);
  return *md;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && (*self->volumeUUID == *equalCopy->volumeUUID ? (v5 = *&self->volumeUUID[8] == *&equalCopy->volumeUUID[8]) : (v5 = 0), v5) && self->documentID == equalCopy->documentID;
  }

  return v6;
}

- (id)description
{
  v3 = [[NSUUID alloc] initWithUUIDBytes:self->volumeUUID];
  documentID = self->documentID;
  uUIDString = [v3 UUIDString];
  v6 = [NSString stringWithFormat:@"docid:%lld on device %@", documentID, uUIDString];

  return v6;
}

- (GSDocumentIdentifier)initWithFileDescriptor:(int)descriptor forItemAtURL:(id)l allocateIfNone:(BOOL)none error:(id *)error
{
  noneCopy = none;
  v8 = *&descriptor;
  lCopy = l;
  v26.receiver = self;
  v26.super_class = GSDocumentIdentifier;
  v11 = [(GSDocumentIdentifier *)&v26 init];
  if (v11)
  {
    memset(&v27, 0, 512);
    v25 = 0;
    if (fstatfs(v8, &v27) < 0)
    {
      lCopy = [NSString stringWithFormat:@"statfs(%@) failed", lCopy];
      v16 = __error();
      v17 = *v16;
      v18 = sub_100003164(v16);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (![GSStorageManager _isPermanentStorageSupportedForStatFSInfo:&v27 error:error])
      {
LABEL_19:

        v11 = 0;
        goto LABEL_20;
      }

      if (sub_100008F80(v27.f_mntonname, v11->volumeUUID))
      {
        v12 = sub_1000092B0(v8, &v25);
        v13 = v12;
        v11->documentID = v12;
        if (v12 || !noneCopy)
        {
          goto LABEL_9;
        }

        if (([GSStorageManager _isPermanentStorageSupportedForFD:v8 error:error]& 1) != 0)
        {
          v14 = sub_100009364(v8, v25);
          v13 = v14;
          v11->documentID = v14;
          if (v14)
          {
LABEL_9:
            if (v13)
            {
              v11->deviceID = v27.f_fsid.val[0];
              goto LABEL_20;
            }

            lCopy = [NSString stringWithFormat:@"no storage for %@", lCopy];
            v23 = sub_100003164(lCopy);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              sub_10002525C();
            }

            if (!error)
            {
              goto LABEL_18;
            }

            v20 = sub_10000F0F8(102, lCopy, 0);
            goto LABEL_17;
          }

          lCopy = [NSString stringWithFormat:@"unable to acquire document ID for %@", lCopy];
          v24 = __error();
          v17 = *v24;
          v18 = sub_100003164(v24);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_22;
          }
        }

        else
        {
          lCopy = [NSString stringWithFormat:@"permanent storage not supported for %@", lCopy];
          v22 = __error();
          v17 = *v22;
          v18 = sub_100003164(v22);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
LABEL_22:
            sub_1000251E0();
          }
        }

LABEL_15:

        if (!error)
        {
LABEL_18:

          goto LABEL_19;
        }

        v20 = sub_10000F37C(v17, lCopy);
LABEL_17:
        *error = v20;
        goto LABEL_18;
      }

      lCopy = [NSString stringWithFormat:@"unable to get device uuid for %s", v27.f_mntonname];
      v19 = __error();
      v17 = *v19;
      v18 = sub_100003164(v19);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }
    }

    sub_1000251E0();
    goto LABEL_15;
  }

LABEL_20:

  return v11;
}

@end