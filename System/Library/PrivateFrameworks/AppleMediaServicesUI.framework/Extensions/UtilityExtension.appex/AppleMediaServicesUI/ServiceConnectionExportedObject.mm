@interface ServiceConnectionExportedObject
- (void)bootstrapWithAccount:(id)account bagData:(id)data clientInfo:(id)info mediaClientData:(id)clientData metricsContextData:(id)contextData url:(id)url completion:(id)completion;
- (void)performWithRequestData:(id)data completion:(id)completion;
- (void)updateWithAccount:(id)account completion:(id)completion;
@end

@implementation ServiceConnectionExportedObject

- (void)bootstrapWithAccount:(id)account bagData:(id)data clientInfo:(id)info mediaClientData:(id)clientData metricsContextData:(id)contextData url:(id)url completion:(id)completion
{
  accountCopy = account;
  selfCopy = self;
  v15 = sub_100043B7C();
  v37 = *(v15 - 8);
  v38 = v15;
  __chkstk_darwin(v15);
  v17 = &selfCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(completion);
  accountCopy2 = account;
  dataCopy = data;
  infoCopy = info;
  clientDataCopy = clientData;
  contextDataCopy = contextData;
  urlCopy = url;

  v23 = sub_100043BAC();
  v25 = v24;

  v26 = sub_100043BAC();
  v28 = v27;

  v29 = sub_100043BAC();
  v31 = v30;

  sub_100043B3C();
  _Block_copy(v18);
  v32 = infoCopy;
  sub_10003E72C(accountCopy, v23, v25, infoCopy, v26, v28, v29, v31, v17, selfCopy, v18);
  _Block_release(v18);
  sub_100023364(v29, v31);
  sub_100023364(v26, v28);
  sub_100023364(v23, v25);

  (*(v37 + 8))(v17, v38);
}

- (void)performWithRequestData:(id)data completion:(id)completion
{
  v6 = _Block_copy(completion);
  dataCopy = data;

  v8 = sub_100043BAC();
  v10 = v9;

  _Block_copy(v6);
  sub_10003FED4(v8, v10, self, v6);
  _Block_release(v6);
  sub_100023364(v8, v10);
}

- (void)updateWithAccount:(id)account completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  accountCopy = account;

  sub_100040DD8(account, self, v6);
  _Block_release(v6);
}

@end