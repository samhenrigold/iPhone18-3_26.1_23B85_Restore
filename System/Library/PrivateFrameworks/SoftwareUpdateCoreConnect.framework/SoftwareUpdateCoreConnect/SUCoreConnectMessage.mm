@interface SUCoreConnectMessage
+ (id)nameForMessageType:(int64_t)type;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientConnectionAuditToken;
- (BOOL)isBoostable;
- (SUCoreConnectMessage)initWithCoder:(id)coder;
- (SUCoreConnectMessage)initWithType:(int64_t)type messageName:(id)name clientID:(id)d version:(id)version message:(id)message;
- (id)description;
- (id)summary;
- (id)xpcBoost;
- (void)encodeWithCoder:(id)coder;
- (void)setBoostable:(BOOL)boostable;
- (void)setClientConnectionAuditToken:(id *)token;
@end

@implementation SUCoreConnectMessage

- (id)description
{
  selfCopy = self;
  v49 = *MEMORY[0x277D85DE8];
  message = [(SUCoreConnectMessage *)self message];
  v4 = @"[>>>\n";
  if (!message)
  {
    v4 = 0;
  }

  v5 = v4;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(SUCoreConnectMessage *)selfCopy message];
  v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v37)
  {
    v6 = *v44;
    v33 = *v44;
    v34 = selfCopy;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        message2 = [(SUCoreConnectMessage *)selfCopy message];
        v10 = [message2 objectForKey:v8];

        objc_opt_class();
        v38 = v10;
        if (objc_opt_isKindOfClass())
        {
          v36 = v5;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v40;
            message3 = @"{\n";
            do
            {
              v16 = 0;
              v17 = message3;
              do
              {
                if (*v40 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v18 = *(*(&v39 + 1) + 8 * v16);
                v19 = [v11 objectForKey:v18];
                message3 = [(__CFString *)v17 stringByAppendingFormat:@"\t\t%@: %@\n", v18, v19];

                ++v16;
                v17 = message3;
              }

              while (v13 != v16);
              v13 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v13);
          }

          else
          {
            message3 = @"{\n";
          }

          v20 = v36;
          v5 = [(__CFString *)v36 stringByAppendingFormat:@"\t%@: %@\n\t}\n", v8, message3];
          v6 = v33;
          selfCopy = v34;
        }

        else
        {
          message3 = [(SUCoreConnectMessage *)selfCopy message];
          v20 = [(__CFString *)message3 objectForKey:v8];
          v21 = [(__CFString *)v5 stringByAppendingFormat:@"\t%@: %@\n", v8, v20];

          v5 = v21;
        }
      }

      v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v37);
  }

  if (v5)
  {
    v22 = [(__CFString *)v5 stringByAppendingString:@"<<<]"];
  }

  else
  {
    v22 = 0;
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = [SUCoreConnectMessage nameForMessageType:[(SUCoreConnectMessage *)selfCopy messageType]];
  messageName = [(SUCoreConnectMessage *)selfCopy messageName];
  clientID = [(SUCoreConnectMessage *)selfCopy clientID];
  clientIDRaw = [(SUCoreConnectMessage *)selfCopy clientIDRaw];
  clientProcessIdentifier = [(SUCoreConnectMessage *)selfCopy clientProcessIdentifier];
  version = [(SUCoreConnectMessage *)selfCopy version];
  error = [(SUCoreConnectMessage *)selfCopy error];
  v31 = [v23 stringWithFormat:@"SUCoreConnectMessage(type:%@|name:%@|clientID:%@|clientIDRaw:%@|clientProcessIdentifier:%d|version:%@|error:%@|message:%@)", v24, messageName, clientID, clientIDRaw, clientProcessIdentifier, version, error, v22];

  return v31;
}

- (id)summary
{
  v3 = MEMORY[0x277CCACA8];
  clientID = [(SUCoreConnectMessage *)self clientID];
  v5 = [SUCoreConnectMessage nameForMessageType:[(SUCoreConnectMessage *)self messageType]];
  messageName = [(SUCoreConnectMessage *)self messageName];
  v7 = [v3 stringWithFormat:@"SUCoreConnectMessage(clientID:%@|type:%@|name:%@)", clientID, v5, messageName];

  return v7;
}

- (SUCoreConnectMessage)initWithType:(int64_t)type messageName:(id)name clientID:(id)d version:(id)version message:(id)message
{
  nameCopy = name;
  dCopy = d;
  versionCopy = version;
  messageCopy = message;
  if (!nameCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v27 = mEMORY[0x277D64428];
    v28 = @"SUCoreConnectMessage requires a non-nil messageName";
LABEL_10:
    [mEMORY[0x277D64428] trackAnomaly:@"SUCoreConnectMessage" forReason:v28 withResult:8102 withError:0];

    selfCopy = 0;
    goto LABEL_11;
  }

  if (!dCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v27 = mEMORY[0x277D64428];
    v28 = @"SUCoreConnectMessage requires a non-nil clientID";
    goto LABEL_10;
  }

  if (![SUCoreConnectMessage validateMessageDictionary:messageCopy])
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v27 = mEMORY[0x277D64428];
    v28 = @"SUCoreConnectMessage requires a valid message dictionary";
    goto LABEL_10;
  }

  v30.receiver = self;
  v30.super_class = SUCoreConnectMessage;
  v17 = [(SUCoreConnectMessage *)&v30 init];
  v18 = v17;
  if (v17)
  {
    v17->_stateLock._os_unfair_lock_opaque = 0;
    v17->_messageType = type;
    objc_storeStrong(&v17->_messageName, name);
    v19 = MEMORY[0x277CCACA8];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v21 = [v19 stringWithFormat:@"%@.<%d>", dCopy, objc_msgSend(processInfo, "processIdentifier")];
    clientID = v18->_clientID;
    v18->_clientID = v21;

    objc_storeStrong(&v18->_clientIDRaw, d);
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    v18->_clientProcessIdentifier = [processInfo2 processIdentifier];

    objc_storeStrong(&v18->_version, version);
    error = v18->_error;
    v18->_error = 0;

    objc_storeStrong(&v18->_message, message);
  }

  self = v18;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SUCoreConnectMessage messageType](self forKey:{"messageType"), @"MessageType"}];
  messageName = [(SUCoreConnectMessage *)self messageName];
  [coderCopy encodeObject:messageName forKey:@"MessageName"];

  clientID = [(SUCoreConnectMessage *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"ClientID"];

  clientIDRaw = [(SUCoreConnectMessage *)self clientIDRaw];
  [coderCopy encodeObject:clientIDRaw forKey:@"ClientIDRaw"];

  [coderCopy encodeInt:-[SUCoreConnectMessage clientProcessIdentifier](self forKey:{"clientProcessIdentifier"), @"ClientProcessIdentifier"}];
  version = [(SUCoreConnectMessage *)self version];
  [coderCopy encodeObject:version forKey:@"Version"];

  error = [(SUCoreConnectMessage *)self error];
  [coderCopy encodeObject:error forKey:@"Error"];

  message = [(SUCoreConnectMessage *)self message];
  [coderCopy encodeObject:message forKey:@"Message"];
}

- (SUCoreConnectMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = SUCoreConnectMessage;
  v5 = [(SUCoreConnectMessage *)&v40 init];
  v6 = v5;
  if (v5)
  {
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v5->_messageType = [coderCopy decodeIntegerForKey:@"MessageType"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MessageName"];
    messageName = v6->_messageName;
    v6->_messageName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClientID"];
    clientID = v6->_clientID;
    v6->_clientID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClientIDRaw"];
    clientIDRaw = v6->_clientIDRaw;
    v6->_clientIDRaw = v11;

    v6->_clientProcessIdentifier = [coderCopy decodeIntForKey:@"ClientProcessIdentifier"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
    version = v6->_version;
    v6->_version = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
    error = v6->_error;
    v6->_error = v15;

    messageType = v6->_messageType;
    if (messageType == 2)
    {
      v18 = [SUCoreConnectClientPolicy getAllowlistedClassesForKey:v6->_messageName];
      if (v18)
      {
LABEL_7:
        v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"Message"];
        message = v6->_message;
        v6->_message = v19;

LABEL_13:
        goto LABEL_14;
      }

      mEMORY[0x277D64428]2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"client policy does not define allowlisted classes for key: %@", v6->_messageName];
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v36 = [mEMORY[0x277D643F8] buildError:8902 underlying:v6->_error description:mEMORY[0x277D64428]2];
      v37 = v6->_error;
      v6->_error = v36;

      v38 = v6->_message;
      v6->_message = 0;

      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      v31 = mEMORY[0x277D64428];
      v32 = v6->_error;
      v33 = mEMORY[0x277D64428]2;
      v34 = 8902;
    }

    else
    {
      if (messageType != 1)
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no connect policy type could be determined for message with type: %ld", v6->_messageType];
        mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
        v22 = [mEMORY[0x277D643F8]2 buildError:8901 underlying:v6->_error description:v18];
        v23 = v6->_error;
        v6->_error = v22;

        v24 = v6->_message;
        v6->_message = 0;

        mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
        [mEMORY[0x277D64428]2 trackError:@"SUCoreConnectMessageDecode" forReason:v18 withResult:8901 withError:v6->_error];
LABEL_12:

        goto LABEL_13;
      }

      v18 = [SUCoreConnectServerPolicy getAllowlistedClassesForKey:v6->_messageName];
      if (v18)
      {
        goto LABEL_7;
      }

      mEMORY[0x277D64428]2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"server policy does not define allowlisted classes for key: %@", v6->_messageName];
      mEMORY[0x277D643F8]3 = [MEMORY[0x277D643F8] sharedCore];
      v27 = [mEMORY[0x277D643F8]3 buildError:8904 underlying:v6->_error description:mEMORY[0x277D64428]2];
      v28 = v6->_error;
      v6->_error = v27;

      v29 = v6->_message;
      v6->_message = 0;

      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      v31 = mEMORY[0x277D64428];
      v32 = v6->_error;
      v33 = mEMORY[0x277D64428]2;
      v34 = 8904;
    }

    [mEMORY[0x277D64428] trackError:@"SUCoreConnectMessageDecode" forReason:v33 withResult:v34 withError:v32];

    goto LABEL_12;
  }

LABEL_14:

  return v6;
}

+ (id)nameForMessageType:(int64_t)type
{
  if (type == 1)
  {
    type = @"CLIENT_MESSAGE";
  }

  else if (type == 2)
  {
    type = @"SERVER_MESSAGE";
  }

  else
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"UNKNOWN_TYPE(%lu)", type];
  }

  return type;
}

- (BOOL)isBoostable
{
  os_unfair_lock_lock(&self->_stateLock);
  boostable = self->_boostable;
  os_unfair_lock_unlock(&self->_stateLock);
  return boostable;
}

- (void)setBoostable:(BOOL)boostable
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_boostable = boostable;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)xpcBoost
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_boostable)
  {
    v3 = [[SUCoreConnectBoost alloc] initWithMessage:self];
    self->_boostable = 0;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientConnectionAuditToken
{
  v3 = *&self[3].var0[2];
  *retstr->var0 = *&self[2].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setClientConnectionAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_clientConnectionAuditToken.val[4] = *&token->var0[4];
  *self->_clientConnectionAuditToken.val = v3;
}

@end