@interface FudPersonalizer
- (BOOL)personalizeWithServer:(id)server;
- (FudPersonalizer)initWithDelegate:(id)delegate;
- (__CFDictionary)createPersonalizationManifestCFDict:(id)dict;
- (__CFDictionary)createPersonalizationObjectCFDict:(id)dict;
- (void)dealloc;
- (void)doPersonalization:(id)personalization;
- (void)freePersonalizationData;
- (void)overrideServerURL:(id)l;
@end

@implementation FudPersonalizer

- (FudPersonalizer)initWithDelegate:(id)delegate
{
  if (delegate)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.fud.personalizer", v5);
    self->_personalizationQueue = v6;
    if (v6)
    {
      v9.receiver = self;
      v9.super_class = FudPersonalizer;
      v7 = [(FudPersonalizer *)&v9 init];
      self = v7;
      if (v7)
      {
        v7->_delegate = delegate;
        *&v7->_manifestDict = 0u;
        *&v7->_serverRequestDict = 0u;
        *&v7->_responseData = 0u;
        *&v7->_amai = 0u;
        v7->_overrideSecurityDomain = 0;
      }

      else
      {
        sub_1000134C0();
      }
    }

    else
    {
      sub_1000134F8();
    }
  }

  else
  {
    sub_100013530();
  }

  return self;
}

- (void)freePersonalizationData
{
  manifestDict = self->_manifestDict;
  if (manifestDict)
  {
    CFRelease(manifestDict);
    self->_manifestDict = 0;
  }

  objectsDict = self->_objectsDict;
  if (objectsDict)
  {
    CFRelease(objectsDict);
    self->_objectsDict = 0;
  }

  serverRequestDict = self->_serverRequestDict;
  if (serverRequestDict)
  {
    CFRelease(serverRequestDict);
    self->_serverRequestDict = 0;
  }

  serverResponseDict = self->_serverResponseDict;
  if (serverResponseDict)
  {
    CFRelease(serverResponseDict);
    self->_serverResponseDict = 0;
  }

  responseData = self->_responseData;
  if (responseData)
  {
    CFRelease(responseData);
    self->_responseData = 0;
  }

  amai = self->_amai;
  if (amai)
  {
    CFRelease(amai);
    self->_amai = 0;
  }

  ticketName = self->_ticketName;
  if (ticketName)
  {
    CFRelease(ticketName);
    self->_ticketName = 0;
  }
}

- (void)dealloc
{
  personalizationQueue = self->_personalizationQueue;
  if (personalizationQueue)
  {
    dispatch_release(personalizationQueue);
  }

  [(FudPersonalizer *)self freePersonalizationData];
  serverURL = self->_serverURL;
  if (serverURL)
  {
    CFRelease(serverURL);
    self->_serverURL = 0;
  }

  v5.receiver = self;
  v5.super_class = FudPersonalizer;
  [(FudPersonalizer *)&v5 dealloc];
}

- (void)overrideServerURL:(id)l
{
  serverURL = self->_serverURL;
  if (serverURL)
  {
    CFRelease(serverURL);
    self->_serverURL = 0;
  }

  if (l)
  {
    v6 = CFRetain(l);
  }

  else
  {
    v6 = 0;
  }

  self->_serverURL = v6;
}

- (void)doPersonalization:(id)personalization
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_100001C74;
  v15 = sub_100001C84;
  v16 = 0;
  if (self->_delegate)
  {
    if (self->_personalizationQueue)
    {
      if (personalization)
      {
        if ([personalization responseFormat] > 2)
        {
          v7 = @"Invalid response format";
        }

        else if ([personalization responseFormat] && !objc_msgSend(personalization, "payload"))
        {
          v7 = @"Response format requires payload";
        }

        else
        {
          if ([personalization responseFormat] == 1 || !objc_msgSend(personalization, "responseAlignment"))
          {
            [(FudPersonalizer *)self freePersonalizationData];
            personalizationCopy = personalization;
            v12[5] = personalizationCopy;
            personalizationQueue = self->_personalizationQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100001C90;
            block[3] = &unk_10002C830;
            block[5] = personalization;
            block[6] = &v11;
            block[4] = self;
            dispatch_async(personalizationQueue, block);
            goto LABEL_10;
          }

          v7 = @"Response format doesn't support alignment";
        }
      }

      else
      {
        v7 = @"Personalization request=nil";
      }
    }

    else
    {
      v7 = @"Personalization queue=nil";
    }
  }

  else
  {
    v7 = @"Personalization delegate=nil";
  }

  v8 = FUDError();
  FudLog();
  delegate = self->_delegate;
  if (delegate)
  {
    [(FudPersonalizerDelegate *)delegate personalizationDone:personalization response:0 error:v8, "[FudPersonalizer doPersonalization:]", v7];
  }

LABEL_10:
  _Block_object_dispose(&v11, 8);
}

- (__CFDictionary)createPersonalizationObjectCFDict:(id)dict
{
  if (![dict objectTag])
  {
    sub_100013610();
    return 0;
  }

  if (![dict digest])
  {
    sub_1000135D8();
    return 0;
  }

  if (([dict isEffectiveProductionModeSet] & 1) == 0)
  {
    sub_100013568();
    return 0;
  }

  if (([dict isEffectiveSecurityModeSet] & 1) == 0)
  {
    v12 = "[FudPersonalizer createPersonalizationObjectCFDict:]";
    FudLog();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if ([dict isEffectiveSecurityModeSet])
    {
      effectiveSecurityMode = [dict effectiveSecurityMode];
      v6 = &kCFBooleanTrue;
      if (!effectiveSecurityMode)
      {
        v6 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(Mutable, @"ESEC", *v6);
    }

    if ([dict isEffectiveProductionModeSet])
    {
      effectiveProductionMode = [dict effectiveProductionMode];
      v8 = &kCFBooleanTrue;
      if (!effectiveProductionMode)
      {
        v8 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(Mutable, @"EPRO", *v8);
    }

    if ([dict isTrustedSet])
    {
      trusted = [dict trusted];
      v10 = &kCFBooleanTrue;
      if (!trusted)
      {
        v10 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(Mutable, @"Trusted", *v10);
    }

    CFDictionarySetValue(Mutable, @"Digest", [dict digest]);
  }

  else
  {
    sub_1000135A0();
  }

  return Mutable;
}

- (__CFDictionary)createPersonalizationManifestCFDict:(id)dict
{
  if (![dict requestName])
  {
    v26 = @"%s(): name=nil\n";
LABEL_55:
    sub_100013648(v26);
    return 0;
  }

  if (![dict chipID])
  {
    v26 = @"%s(): chipID=0\n";
    goto LABEL_55;
  }

  if (![dict ecID] && !objc_msgSend(dict, "extEcID") && !objc_msgSend(dict, "globalSigning"))
  {
    v26 = @"%s(): ecID/globalSigning invalid\n";
    goto LABEL_55;
  }

  if (![dict isProductionModeSet])
  {
    v26 = @"%s(): cpro not set\n";
    goto LABEL_55;
  }

  if (![dict nonceHash])
  {
    v26 = @"%s(): nonceHash=nil\n";
    goto LABEL_55;
  }

  if (![dict objectList])
  {
    v26 = @"%s(): objectList=nil\n";
    goto LABEL_55;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v26 = @"%s(): error creating cfdict\n";
    goto LABEL_55;
  }

  v6 = Mutable;
  if ([dict requestPrefix])
  {
    v7 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryBuildKeySetTag(v8, @"ApBoardID", [dict requestPrefix], @"BoardID");
    CFDictionaryBuildKeySetTag(v8, @"ApChipID", [dict requestPrefix], @"ChipID");
    CFDictionaryBuildKeySetTag(v8, @"ApECID", [dict requestPrefix], @"ECID");
    CFDictionaryBuildKeySetTag(v8, @"ApSecurityDomain", [dict requestPrefix], @"SecurityDomain");
    CFDictionaryBuildKeySetTag(v8, @"ApProductionMode", [dict requestPrefix], @"ProductionMode");
    CFDictionaryBuildKeySetTag(v8, @"ApManifestEpoch", [dict requestPrefix], @"ManifestEpoch");
    if ([dict isSecurityModeSet])
    {
      CFDictionaryBuildKeySetTag(v8, @"ApSecurityMode", [dict requestPrefix], @"SecurityMode");
    }

    CFDictionaryBuildKeySetTag(v8, @"ApNonce", [dict requestPrefix], @"Nonce");
    v9 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    CFStringAppendFormat(v9, 0, @"@%@", @"ApImg4Ticket");
    CFDictionaryBuildKeySetTicket(v8, v9, [dict requestPrefix], @"Ticket");
    CFRelease(v9);
    CFStringAppendFormat(v7, 0, @"%@,%@", [dict requestPrefix], @"Ticket");
    self->_ticketName = v7;
    FudLog();
    CFDictionarySetValue(v6, @"APTagOverrides", v8);
    CFRelease(v8);
  }

  else
  {
    self->_ticketName = CFStringCreateCopy(kCFAllocatorDefault, @"ApImg4Ticket");
  }

  v10 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(v10, 0, @"@%@", @"ApImg4Ticket");
  CFDictionarySetValue(v6, v10, kCFBooleanTrue);
  CFRelease(v10);
  CFDictionaryBuildKeySetInt32(v6, @"ApBoardID", [dict boardID]);
  CFDictionaryBuildKeySetInt32(v6, @"ApChipID", [dict chipID]);
  if ([dict globalSigning])
  {
    v11 = @"UseGlobalSigning";
    v12 = v6;
    extEcID = kCFBooleanTrue;
  }

  else
  {
    if (![dict extEcID])
    {
      CFDictionaryBuildKeySetInt64(v6, @"ApECID", [dict ecID]);
      goto LABEL_20;
    }

    extEcID = [dict extEcID];
    v11 = @"ApECID";
    v12 = v6;
  }

  CFDictionarySetValue(v12, v11, extEcID);
LABEL_20:
  if (self->_overrideSecurityDomain)
  {
    securityDomain = 1;
  }

  else
  {
    securityDomain = [dict securityDomain];
  }

  CFDictionaryBuildKeySetInt32(v6, @"ApSecurityDomain", securityDomain);
  if ([dict productionMode])
  {
    v15 = kCFBooleanTrue;
  }

  else
  {
    v15 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v6, @"ApProductionMode", v15);
  if ([dict isSecurityModeSet])
  {
    if ([dict securityMode])
    {
      v16 = kCFBooleanTrue;
    }

    else
    {
      v16 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v6, @"ApSecurityMode", v16);
  }

  CFDictionarySetValue(v6, @"ApNonce", [dict nonceHash]);
  if ([dict isChipEpochSet])
  {
    CFDictionaryBuildKeySetInt32(v6, @"ApManifestEpoch", [dict chipEpoch]);
  }

  if ([dict enableMixMatch])
  {
    if ([dict enableMixMatch])
    {
      v17 = kCFBooleanTrue;
    }

    else
    {
      v17 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v6, @"ApAllowMixAndMatch", v17);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  objectList = [dict objectList];
  v19 = [objectList countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(objectList);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        v24 = [(FudPersonalizer *)self createPersonalizationObjectCFDict:v23];
        if (v24)
        {
          CFDictionarySetValue(v6, [v23 objectTag], v24);
        }
      }

      v20 = [objectList countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  return v6;
}

- (BOOL)personalizeWithServer:(id)server
{
  v5 = [(FudPersonalizer *)self createPersonalizationManifestCFDict:?];
  self->_manifestDict = v5;
  if (!v5)
  {
    v29 = 2;
    v30 = @"Failed to build manifest dictionary";
    goto LABEL_37;
  }

  v34 = v5;
  FudLog();
  if (!self->_amai)
  {
    v6 = AMAuthInstallCreate();
    self->_amai = v6;
    if (!v6)
    {
      v29 = 1;
      v30 = @"Failed to create Signing Request";
      goto LABEL_37;
    }

    if ([server useSSOCredentials])
    {
      if (AMAuthInstallSsoInitialize())
      {
        FudLog();
      }

      else
      {
        if (AMAuthInstallSsoEnable())
        {
          v29 = 1;
          v30 = @"Failed to enable SSO";
          goto LABEL_37;
        }

        if (self->_serverURL)
        {
          serverURL = self->_serverURL;
        }

        else
        {
          serverURL = @"https://gs.apple.com:443/";
        }

        CFURLCreateWithString(kCFAllocatorDefault, serverURL, 0);
        if (AMAuthInstallSetSigningServerURL())
        {
          v29 = 1;
          v30 = @"Failed to set Signing Server URL";
          goto LABEL_37;
        }
      }
    }

    else
    {
      v7 = self->_serverURL;
      if (v7)
      {
        CFURLCreateWithString(kCFAllocatorDefault, v7, 0);
        AMAuthInstallSetSigningServerURL();
      }
    }

    AMAuthInstallLogSetHandler();
  }

  v9 = self->_serverURL;
  if (v9)
  {
    CFStringGetCStringPtr(v9, 0x8000100u);
    FudLog();
  }

  if (AMAuthInstallApSetParameters())
  {
    v29 = 1;
    v30 = @"Failed to add manifest properties to Signing Request";
    goto LABEL_37;
  }

  Count = CFDictionaryGetCount(self->_manifestDict);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count, self->_manifestDict);
  self->_serverRequestDict = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, @"APTagOverrides");
  PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
  v13 = PersonalizedResponse;
  v35 = PersonalizedResponse;
  FudLog();
  if (v13 == 3194 && ([server useSSOCredentials] & 1) == 0)
  {
    [server setUseSSOCredentials:1];
    return 0;
  }

  serverResponseDict = self->_serverResponseDict;
  if (!serverResponseDict)
  {
    v29 = 3;
    v30 = @"Failed to generate signed manifest";
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(serverResponseDict, self->_ticketName);
  if (!Value)
  {
    v29 = 3;
    v30 = @"Failed to retrieve signed manifest";
    goto LABEL_37;
  }

  v16 = Value;
  responseFormat = [server responseFormat];
  if (responseFormat)
  {
    if (responseFormat == 2)
    {
      responseFormat2 = [server responseFormat];
      FudLog();
      CFGetAllocator(self->_amai);
      [server payload];
      StitchTicket = AMAuthInstallApImg4CreateStitchTicket();
      self->_responseData = StitchTicket;
      if (!StitchTicket)
      {
        v29 = 4;
        v30 = @"Failed to stitch img4 response";
        goto LABEL_37;
      }
    }

    else
    {
      if (responseFormat != 1)
      {
        v29 = 2;
        v30 = @"Invalid response format";
        goto LABEL_37;
      }

      payload = [server payload];
      Length = CFDataGetLength(payload);
      v20 = CFDataGetLength(v16);
      v21 = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, payload);
      responseFormat3 = [server responseFormat];
      FudLog();
      BytePtr = CFDataGetBytePtr(v16);
      CFDataAppendBytes(v21, BytePtr, v20);
      MutableBytePtr = CFDataGetMutableBytePtr(v21);
      *(MutableBytePtr + 4) = Length;
      *(MutableBytePtr + 5) = v20;
      if ([server chipID] == 8194)
      {
        *(MutableBytePtr + 1) = 0x1234567898765432;
      }

      if ([server responseAlignment])
      {
        responseAlignment = [server responseAlignment];
        responseAlignment2 = [server responseAlignment];
        CFDataIncreaseLength(v21, (responseAlignment + (v20 + Length) / responseAlignment2 * responseAlignment2 - (v20 + Length)) % [server responseAlignment]);
      }

      v26 = CFDataGetBytePtr(v21);
      v27 = CFDataGetLength(v21);
      StitchTicket = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v26, v27, kCFAllocatorDefault);
      self->_responseData = StitchTicket;
      if (!StitchTicket)
      {
        v29 = 4;
        v30 = @"Failed to stitch ftab response";
LABEL_37:
        sub_10001367C(v29, v30, self, server);
        return 1;
      }
    }

    [(FudPersonalizerDelegate *)self->_delegate personalizationDone:server response:StitchTicket error:0, v33, v37];
  }

  else
  {
    responseFormat4 = [server responseFormat];
    FudLog();
    v32 = CFRetain(v16);
    self->_responseData = v32;
    [(FudPersonalizerDelegate *)self->_delegate personalizationDone:server response:v32 error:0, "[FudPersonalizer personalizeWithServer:]", responseFormat4];
  }

  return 1;
}

@end