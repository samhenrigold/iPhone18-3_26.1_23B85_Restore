@interface SSVMediaSocialPostDescription
- (SSVMediaSocialPostDescription)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
@end

@implementation SSVMediaSocialPostDescription

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAccountIdentifier:self->_accountIdentifier];
  [v4 setAttachments:self->_attachments];
  [v4 setAttributed:self->_attributed];
  [v4 setAuthorIdentifier:self->_authorIdentifier];
  [v4 setAuthorType:self->_authorType];
  [v4 setContentItems:self->_contentItems];
  [v4 setExternalServiceDestinations:self->_externalServiceDestinations];
  [v4 setSourceApplicationIdentifier:self->_sourceApplicationIdentifier];
  [v4 setText:self->_text];
  return v4;
}

- (SSVMediaSocialPostDescription)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSVMediaSocialPostDescription *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = xpc_dictionary_get_value(v5, "1");
    v9 = objc_opt_class();
    v10 = SSXPCCreateNSArrayFromXPCEncodedArray(v8, v9);

    v11 = [v10 copy];
    attachments = v6->_attachments;
    v6->_attachments = v11;

    v6->_attributed = xpc_dictionary_get_BOOL(v5, "8");
    v13 = objc_opt_class();
    v14 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0", v13);
    accountIdentifier = v6->_accountIdentifier;
    v6->_accountIdentifier = v14;

    v16 = objc_opt_class();
    v17 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2", v16);
    authorIdentifier = v6->_authorIdentifier;
    v6->_authorIdentifier = v17;

    v19 = objc_opt_class();
    v20 = SSXPCDictionaryCopyCFObjectWithClass(v5, "3", v19);
    authorType = v6->_authorType;
    v6->_authorType = v20;

    v22 = xpc_dictionary_get_value(v5, "4");
    v23 = objc_opt_class();
    v24 = SSXPCCreateNSArrayFromXPCEncodedArray(v22, v23);

    v25 = [v24 copy];
    contentItems = v6->_contentItems;
    v6->_contentItems = v25;

    v27 = xpc_dictionary_get_value(v5, "5");
    v28 = objc_opt_class();
    self = SSXPCCreateNSArrayFromXPCEncodedArray(v27, v28);

    v29 = [(SSVMediaSocialPostDescription *)self copy];
    externalServiceDestinations = v6->_externalServiceDestinations;
    v6->_externalServiceDestinations = v29;

    v31 = objc_opt_class();
    v32 = SSXPCDictionaryCopyCFObjectWithClass(v5, "6", v31);
    sourceApplicationIdentifier = v6->_sourceApplicationIdentifier;
    v6->_sourceApplicationIdentifier = v32;

    v34 = objc_opt_class();
    v35 = SSXPCDictionaryCopyCFObjectWithClass(v5, "7", v34);
    text = v6->_text;
    v6->_text = v35;
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accountIdentifier);
  SSXPCDictionarySetObject(v3, "1", self->_attachments);
  xpc_dictionary_set_BOOL(v3, "8", self->_attributed);
  SSXPCDictionarySetObject(v3, "2", self->_authorIdentifier);
  SSXPCDictionarySetObject(v3, "3", self->_authorType);
  SSXPCDictionarySetObject(v3, "4", self->_contentItems);
  SSXPCDictionarySetObject(v3, "5", self->_externalServiceDestinations);
  SSXPCDictionarySetObject(v3, "6", self->_sourceApplicationIdentifier);
  SSXPCDictionarySetObject(v3, "7", self->_text);
  return v3;
}

@end