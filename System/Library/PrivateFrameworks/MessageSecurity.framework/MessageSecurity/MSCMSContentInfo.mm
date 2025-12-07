@interface MSCMSContentInfo
+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error;
- (MSCMSContentInfo)initWithDataContent:(id)content;
- (MSCMSContentInfo)initWithEmbeddedContent:(id)content;
- (id)encodeMessageSecurityObject:(id *)object;
@end

@implementation MSCMSContentInfo

- (id)encodeMessageSecurityObject:(id *)object
{
  v44[1] = *MEMORY[0x277D85DE8];
  if (object && *object)
  {
    v5 = [*object copy];
  }

  else
  {
    v5 = 0;
  }

  asn1OID = 0;
  v39 = 0;
  v40 = 0;
  v36 = 0;
  bytes = 0;
  contentType = self->_contentType;
  if (!contentType)
  {
    goto LABEL_38;
  }

  embeddedContent = self->_embeddedContent;
  p_content = &self->_content;
  if (!self->_content)
  {
    if (embeddedContent)
    {
      asn1OID = 0;
      v39 = 0;
      v40 = &v36;
      goto LABEL_14;
    }

LABEL_38:
    [(MSCMSContentInfo *)v5 encodeMessageSecurityObject:v34];
    v15 = 0;
    v22 = 0;
    v16 = v34[0];
    goto LABEL_32;
  }

  asn1OID = 0;
  v39 = 0;
  v40 = &v36;
  if (!embeddedContent)
  {
    if (![(MSOID *)contentType isEqualToString:@"1.2.840.113549.1.7.1"])
    {
      v15 = *p_content;
LABEL_24:
      v16 = v5;
      goto LABEL_25;
    }

    v34[0] = [(NSData *)*p_content length];
    v34[1] = [(NSData *)*p_content bytes];
    v33 = 0;
    v9 = length_DataContent(v34);
    v10 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    if (v10)
    {
      v11 = v10;
      v12 = encode_DataContent([v10 mutableBytes] + v9 - 1, v9, v34, &v33);
      if (!v12)
      {
        if (v9 != v33)
        {
          goto LABEL_41;
        }

        goto LABEL_22;
      }

      v13 = v12;

      v14 = v13;
    }

    else
    {
      v14 = 12;
    }

    if (object)
    {
      v17 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44[0] = @"Failed encoding type DataContent";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *object = [v17 errorWithDomain:@"com.apple.HeimASN1" code:v14 userInfo:v18];
    }

    v11 = 0;
LABEL_22:
    if (![v11 length])
    {

      v15 = 0;
      goto LABEL_30;
    }

    v15 = [MEMORY[0x277CBEA90] dataWithData:v11];

    goto LABEL_24;
  }

LABEL_14:
  v35 = v5;
  v15 = [(MSCMSMessage *)embeddedContent encodeMessageSecurityObject:&v35];
  v16 = v35;

  if (!v15)
  {
    v22 = 0;
    goto LABEL_32;
  }

  objc_storeStrong(&self->_content, v15);
LABEL_25:
  bytes = [(NSData *)v15 bytes];
  v36 = [(NSData *)v15 length];
  asn1OID = [(MSOID *)self->_contentType Asn1OID];
  v39 = v19;
  v34[0] = 0;
  v20 = length_ContentInfo(&asn1OID);
  v21 = [MEMORY[0x277CBEB28] dataWithLength:v20];
  if (!v21)
  {
    v25 = 12;
    goto LABEL_29;
  }

  v22 = v21;
  v23 = encode_ContentInfo([v21 mutableBytes] + v20 - 1, v20, &asn1OID, v34);
  if (v23)
  {
    v24 = v23;

    v25 = v24;
LABEL_29:
    v26 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42 = @"Failed encoding type ContentInfo";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v5 = [v26 errorWithDomain:@"com.apple.HeimASN1" code:v25 userInfo:v27];

LABEL_30:
    v22 = 0;
    v16 = v5;
    goto LABEL_32;
  }

  if (v20 != v34[0])
  {
LABEL_41:
    v30 = asn1_abort();
    return [(MSCMSContentInfo *)v30 initWithEmbeddedContent:v31, v32];
  }

LABEL_32:
  if (object && v16)
  {
    v28 = v16;
    *object = v16;
  }

  return v22;
}

- (MSCMSContentInfo)initWithEmbeddedContent:(id)content
{
  contentCopy = content;
  v11.receiver = self;
  v11.super_class = MSCMSContentInfo;
  v6 = [(MSCMSContentInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embeddedContent, content);
    type = [contentCopy type];
    contentType = v7->_contentType;
    v7->_contentType = type;
  }

  return v7;
}

- (MSCMSContentInfo)initWithDataContent:(id)content
{
  contentCopy = content;
  v11.receiver = self;
  v11.super_class = MSCMSContentInfo;
  v6 = [(MSCMSContentInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, content);
    v8 = [MSOID OIDWithString:@"1.2.840.113549.1.7.1" error:0];
    contentType = v7->_contentType;
    v7->_contentType = v8;
  }

  return v7;
}

+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error
{
  objectCopy = object;
  optionsCopy = options;
  if (error && *error)
  {
    v9 = [*error copy];
  }

  else
  {
    v9 = 0;
  }

  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v10 = nsheim_decode_ContentInfo(objectCopy, v29);
  if (v10)
  {
    v11 = MSErrorASN1Domain[0];
    v12 = v10;
    if (objectCopy)
    {
      v13 = [objectCopy length];
    }

    else
    {
      v13 = -1;
    }

    v18 = [MSError MSErrorWithDomain:v11 code:v12 underlyingError:v9 description:@"unable to decode content info (%ld bytes)", v13];

    dumpNSData("ContentInfo", objectCopy);
    v19 = 0;
    v14 = 0;
    v16 = 0;
LABEL_14:
    v20 = 0;
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v28 = v9;
  v14 = [MSOID OIDWithAsn1OID:v29 error:&v28];
  v15 = v28;

  v16 = NSDataFromAny(v30);
  if (v16)
  {
    if ([v14 isEqualToString:@"1.2.840.113549.1.7.1"])
    {
      v25 = 0;
      v26 = 0;
      v17 = nsheim_decode_DataContent(v16, &v25);
      if (v17)
      {
        v18 = +[MSError MSErrorWithDomain:code:underlyingError:description:](MSError, "MSErrorWithDomain:code:underlyingError:description:", MSErrorASN1Domain[0], v17, v15, @"unable to decode data content (%ld bytes)", [v16 length]);

        dumpNSData("DataContent", v16);
        v19 = 0;
        goto LABEL_14;
      }

      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:v25];

      free_DataContent(&v25);
      v20 = 0;
      v16 = v21;
    }

    else
    {
      v27 = v15;
      v20 = decodeEmbeddedCMSContent(v14, v16, optionsCopy, &v27);
      v18 = v27;

      if (!v20)
      {
        v19 = 0;
        if (!error)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v15 = v18;
    }
  }

  else
  {
    v20 = 0;
  }

  v19 = [MSCMSContentInfo alloc];
  [(MSCMSContentInfo *)v19 setContentType:v14];
  [(MSCMSContentInfo *)v19 setContent:v16];
  if (v20)
  {
    [(MSCMSContentInfo *)v19 setEmbeddedContent:v20];
  }

  v18 = v15;
  if (error)
  {
LABEL_23:
    if (v18)
    {
      v22 = v18;
      *error = v18;
    }
  }

LABEL_25:
  free_ContentInfo(v29);
  v23 = v19;

  return v23;
}

- (void)encodeMessageSecurityObject:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:a1 description:@"Unable to encode content info: missing content type or content"];
}

@end