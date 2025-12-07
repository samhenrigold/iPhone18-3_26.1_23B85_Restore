@interface KTIDSIdentity
- (BOOL)isEqual:(id)equal;
- (KTIDSIdentity)initWithCoder:(id)coder;
- (KTIDSIdentity)initWithPushToken:(id)token ktLoggableData:(id)data signature:(id)signature ktCapable:(BOOL)capable conditionalEnforcement:(BOOL)enforcement;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTIDSIdentity

- (KTIDSIdentity)initWithPushToken:(id)token ktLoggableData:(id)data signature:(id)signature ktCapable:(BOOL)capable conditionalEnforcement:(BOOL)enforcement
{
  enforcementCopy = enforcement;
  capableCopy = capable;
  tokenCopy = token;
  dataCopy = data;
  signatureCopy = signature;
  v19.receiver = self;
  v19.super_class = KTIDSIdentity;
  v15 = [(KTIDSIdentity *)&v19 init];
  v16 = v15;
  if (v15)
  {
    [(KTIDSIdentity *)v15 setPushToken:tokenCopy];
    [(KTIDSIdentity *)v16 setKtLoggableData:dataCopy];
    [(KTIDSIdentity *)v16 setSignature:signatureCopy];
    [(KTIDSIdentity *)v16 setKtCapable:capableCopy];
    [(KTIDSIdentity *)v16 setSupportConditionalEnforcement:enforcementCopy];
    v17 = v16;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pushToken = [(KTIDSIdentity *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"pushToken"];

  ktLoggableData = [(KTIDSIdentity *)self ktLoggableData];
  [coderCopy encodeObject:ktLoggableData forKey:@"ktLoggableData"];

  signature = [(KTIDSIdentity *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  [coderCopy encodeBool:-[KTIDSIdentity ktCapable](self forKey:{"ktCapable"), @"ktCapable"}];
  [coderCopy encodeBool:-[KTIDSIdentity supportConditionalEnforcement](self forKey:{"supportConditionalEnforcement"), @"conditionalEnforcement"}];
}

- (KTIDSIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ktLoggableData"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    self = -[KTIDSIdentity initWithPushToken:ktLoggableData:signature:ktCapable:conditionalEnforcement:](self, "initWithPushToken:ktLoggableData:signature:ktCapable:conditionalEnforcement:", v5, v6, v7, [coderCopy decodeBoolForKey:@"ktCapable"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"conditionalEnforcement"));

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      pushToken = [(KTIDSIdentity *)self pushToken];
      pushToken2 = [(KTIDSIdentity *)v5 pushToken];
      v8 = [pushToken isEqual:pushToken2];

      if (v8)
      {
        ktLoggableData = [(KTIDSIdentity *)self ktLoggableData];
        ktLoggableData2 = [(KTIDSIdentity *)v5 ktLoggableData];
        v11 = ktLoggableData2;
        if (ktLoggableData == ktLoggableData2)
        {
        }

        else
        {
          ktLoggableData3 = [(KTIDSIdentity *)self ktLoggableData];
          ktLoggableData4 = [(KTIDSIdentity *)v5 ktLoggableData];
          v14 = [ktLoggableData3 isEqual:ktLoggableData4];

          if (!v14)
          {
            goto LABEL_15;
          }
        }

        signature = [(KTIDSIdentity *)self signature];
        signature2 = [(KTIDSIdentity *)v5 signature];
        v18 = signature2;
        if (signature == signature2)
        {
        }

        else
        {
          signature3 = [(KTIDSIdentity *)self signature];
          signature4 = [(KTIDSIdentity *)v5 signature];
          v21 = [signature3 isEqual:signature4];

          if (!v21)
          {
            goto LABEL_15;
          }
        }

        ktCapable = [(KTIDSIdentity *)self ktCapable];
        if (ktCapable == [(KTIDSIdentity *)v5 ktCapable])
        {
          supportConditionalEnforcement = [(KTIDSIdentity *)self supportConditionalEnforcement];
          v15 = supportConditionalEnforcement ^ [(KTIDSIdentity *)v5 supportConditionalEnforcement]^ 1;
          goto LABEL_16;
        }
      }

LABEL_15:
      LOBYTE(v15) = 0;
LABEL_16:

      goto LABEL_17;
    }

    LOBYTE(v15) = 0;
  }

LABEL_17:

  return v15;
}

@end