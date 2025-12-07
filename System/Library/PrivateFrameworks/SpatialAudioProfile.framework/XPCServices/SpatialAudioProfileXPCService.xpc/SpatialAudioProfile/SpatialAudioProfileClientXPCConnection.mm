@interface SpatialAudioProfileClientXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)fetchSpatialAudioProfileRecordForClient:(id)client WithCompletion:(id)completion;
- (void)xpcConnectionInvalidated;
@end

@implementation SpatialAudioProfileClientXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.SpatialAudioProfile"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  v9 = [(NSXPCConnection *)*p_xpcCnx cuValueForEntitlementNoCache:@"com.apple.developer.spatial-audio.profile-access"];
  v10 = [v9 isEqual:&__kCFBooleanTrue];

  if ((v8 & 1) != 0 || v10)
  {
    result = 1;
    self->_entitled = 1;
  }

  else
  {
    if (dword_100008860 > 90)
    {
      goto LABEL_11;
    }

    if (dword_100008860 != -1 || _LogCategory_Initialize())
    {
      sub_100001C48(p_xpcCnx);
    }

    if (dword_100008860 <= 90 && (dword_100008860 != -1 || _LogCategory_Initialize()))
    {
      sub_100001C98(p_xpcCnx);
      if (error)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_11:
      if (error)
      {
LABEL_12:
        v11 = NSErrorF(NSOSStatusErrorDomain, 4294896128, "Missing entitlement '%@' or '%@'", @"com.apple.SpatialAudioProfile", @"com.apple.developer.spatial-audio.profile-access");
        v12 = v11;
        result = 0;
        *error = v11;
        return result;
      }
    }

    return 0;
  }

  return result;
}

- (void)xpcConnectionInvalidated
{
  v4 = self->_spatialAudioProfileClient;
  spatialAudioProfileClient = self->_spatialAudioProfileClient;
  self->_spatialAudioProfileClient = 0;

  if (self->_spatialAudioProfileClient)
  {
    if (dword_100008860 <= 30 && (dword_100008860 != -1 || _LogCategory_Initialize()))
    {
      sub_100001CE8(v4);
    }

    [(SpatialAudioProfileClient *)v4 invalidate];
  }
}

- (void)fetchSpatialAudioProfileRecordForClient:(id)client WithCompletion:(id)completion
{
  clientCopy = client;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000015F8;
  v24 = sub_100001608;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001610;
  v17[3] = &unk_1000041D0;
  v19 = &v20;
  completionCopy = completion;
  v18 = completionCopy;
  v9 = objc_retainBlock(v17);
  if (dword_100008860 <= 30 && (dword_100008860 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100008860, "[SpatialAudioProfileClientXPCConnection fetchSpatialAudioProfileRecordForClient:WithCompletion:]", 30, "Fetching spatial sound profile for client: %@", clientCopy);
  }

  v10 = (v21 + 5);
  obj = v21[5];
  v11 = [(SpatialAudioProfileClientXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    objc_storeStrong(&self->_spatialAudioProfileClient, client);
    if (_os_feature_enabled_impl())
    {
      if (completionCopy)
      {
        v12 = objc_alloc_init(BTCloudServicesClient);
        [v12 setDispatchQueue:self->_dispatchQueue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000016EC;
        v14[3] = &unk_1000041F8;
        v15 = completionCopy;
        [v12 fetchSoundProfileRecordWithCompletion:v14];

LABEL_9:
        goto LABEL_10;
      }

      v13 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "No completion provided");
    }

    else
    {
      v13 = NSErrorF(NSOSStatusErrorDomain, 4294960561, "Feature flag disabled");
    }

    v12 = v21[5];
    v21[5] = v13;
    goto LABEL_9;
  }

LABEL_10:
  (v9[2])(v9);

  _Block_object_dispose(&v20, 8);
}

@end