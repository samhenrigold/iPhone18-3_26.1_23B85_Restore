@interface CSDConversationABTestConfiguration
- (CSDConversationABTestConfiguration)initWithGroupUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_generateABTestConfiguration;
@end

@implementation CSDConversationABTestConfiguration

- (CSDConversationABTestConfiguration)initWithGroupUUID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CSDConversationABTestConfiguration;
  v6 = [(CSDConversationABTestConfiguration *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v6->_serverBag;
    v6->_serverBag = v7;

    objc_storeStrong(&v6->_groupUUID, d);
    serverBag = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_authTagSampleRate = [serverBag uPlusOneAuthTagSampleRate];

    serverBag2 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_TLESampleRate = [serverBag2 groupFaceTimeTLESampleRate];

    serverBag3 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_isShortMKIEnabled = [serverBag3 isShortMKIEnabled];

    serverBag4 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_isTLEUPlusOneEnabled = [serverBag4 isTLEUPlusOneEnabled];

    serverBag5 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_TLEUPlusOneSampleRate = [serverBag5 uPlusOneTLESampleRate];

    [(CSDConversationABTestConfiguration *)v6 _generateABTestConfiguration];
  }

  return v6;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  groupUUID = [(CSDConversationABTestConfiguration *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", groupUUID];

  if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@" isShortMKIEnabled=%@", v5];
  if ([(CSDConversationABTestConfiguration *)self isAuthTagEnabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@" isAuthTagEnabled=%@", v6];
  if ([(CSDConversationABTestConfiguration *)self isTLEEnabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@" isTLEEnabled=%@", v7];
  [v3 appendFormat:@" TLESampleRate=%lu", -[CSDConversationABTestConfiguration TLESampleRate](self, "TLESampleRate")];
  [v3 appendFormat:@" authTagSampleRate=%lu", -[CSDConversationABTestConfiguration authTagSampleRate](self, "authTagSampleRate")];
  if ([(CSDConversationABTestConfiguration *)self isTLEUPlusOneEnabled])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@" isTLEUPlusOneEnabled=%@", v8];
  [v3 appendFormat:@" TLEUPlusOneSampleRate=%lu", -[CSDConversationABTestConfiguration TLEUPlusOneSampleRate](self, "TLEUPlusOneSampleRate")];
  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  groupUUID = [(CSDConversationABTestConfiguration *)self groupUUID];
  v6 = v4[3];
  v4[3] = groupUUID;

  *(v4 + 8) = [(CSDConversationABTestConfiguration *)self isShortMKIEnabled];
  *(v4 + 9) = [(CSDConversationABTestConfiguration *)self isAuthTagEnabled];
  *(v4 + 10) = [(CSDConversationABTestConfiguration *)self isTLEEnabled];
  v4[5] = [(CSDConversationABTestConfiguration *)self TLESampleRate];
  v4[4] = [(CSDConversationABTestConfiguration *)self authTagSampleRate];
  *(v4 + 11) = [(CSDConversationABTestConfiguration *)self isTLEUPlusOneEnabled];
  v4[6] = [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate];
  return v4;
}

- (void)_generateABTestConfiguration
{
  groupUUID = [(CSDConversationABTestConfiguration *)self groupUUID];
  v4 = [groupUUID hash];

  if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
  {
    v5 = [(CSDConversationABTestConfiguration *)self authTagSampleRate]== 100 || [(CSDConversationABTestConfiguration *)self authTagSampleRate]>= v4 % 0x64;
  }

  else
  {
    v5 = 0;
  }

  [(CSDConversationABTestConfiguration *)self setIsAuthTagEnabled:v5];
  if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
  {
    v6 = [(CSDConversationABTestConfiguration *)self TLESampleRate]== 100 || [(CSDConversationABTestConfiguration *)self TLESampleRate]>= v4 % 0x64;
  }

  else
  {
    v6 = 0;
  }

  [(CSDConversationABTestConfiguration *)self setIsTLEEnabled:v6];
  if ([(CSDConversationABTestConfiguration *)self isTLEEnabled])
  {
    v7 = [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate]== 100 || [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate]>= v4 % 0x64;
  }

  else
  {
    v7 = 0;
  }

  [(CSDConversationABTestConfiguration *)self setIsTLEUPlusOneEnabled:v7];
  isTLEEnabled = [(CSDConversationABTestConfiguration *)self isTLEEnabled];
  if ((isTLEEnabled & 1) == 0)
  {
    isTLEEnabled = [(CSDConversationABTestConfiguration *)self isAuthTagEnabled];
    if ((isTLEEnabled & 1) == 0)
    {
      isTLEEnabled = [(CSDConversationABTestConfiguration *)self isShortMKIEnabled];
      if (isTLEEnabled)
      {
        v9 = sub_100004778([(CSDConversationABTestConfiguration *)self setIsShortMKIEnabled:0]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "set isShortMKIEnabled to NO since both isTLEEnabled and isAuthTagEnabled are false", &v19, 2u);
        }
      }
    }
  }

  v10 = sub_100004778(isTLEEnabled);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"YES";
    if ([(CSDConversationABTestConfiguration *)self isTLEEnabled])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if ([(CSDConversationABTestConfiguration *)self isAuthTagEnabled])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if (![(CSDConversationABTestConfiguration *)self isTLEUPlusOneEnabled])
    {
      v11 = @"NO";
    }

    v15 = v4;
    authTagSampleRate = [(CSDConversationABTestConfiguration *)self authTagSampleRate];
    tLESampleRate = [(CSDConversationABTestConfiguration *)self TLESampleRate];
    tLEUPlusOneSampleRate = [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate];
    v19 = 138414082;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = v15;
    v29 = 2048;
    v30 = authTagSampleRate;
    v31 = 2048;
    v32 = tLESampleRate;
    v33 = 2048;
    v34 = tLEUPlusOneSampleRate;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "isTLEEnabled: %@, isShortMKIEnabled: %@, isAuthTagEnabled: %@, isTLEUPlusOneEnabled: %@, hashValue: %lu, authTagSampleRate: %lu, TLESampleRate: %lu, TLEUPlusOneSampleRate: %lu", &v19, 0x52u);
  }
}

@end