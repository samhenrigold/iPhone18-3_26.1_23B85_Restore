@interface AADeviceProvisioningRequest
- (AADeviceProvisioningRequest)initWithDSID:(id)d URLString:(id)string requestData:(id)data;
- (id)urlRequest;
@end

@implementation AADeviceProvisioningRequest

- (AADeviceProvisioningRequest)initWithDSID:(id)d URLString:(id)string requestData:(id)data
{
  dCopy = d;
  stringCopy = string;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = AADeviceProvisioningRequest;
  v12 = [(AADeviceProvisioningRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dsid, d);
    objc_storeStrong(&v13->_url, string);
    objc_storeStrong(&v13->_data, data);
  }

  return v13;
}

- (id)urlRequest
{
  v23[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AADeviceProvisioningRequest;
  urlRequest = [(AARequest *)&v19 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v22[0] = @"clientData";
  v22[1] = @"dsId";
  dsid = self->_dsid;
  v23[0] = v5;
  v23[1] = dsid;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v18 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    [v4 setHTTPBody:v8];
  }

  else
  {
    v11 = _AALogSystem(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v10 localizedDescription];
      *buf = 138412290;
      v21 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = +[AADeviceInfo apnsToken];
  v15 = [v13 initWithData:v14 encoding:4];

  [v4 addValue:@"text/plist" forHTTPHeaderField:@"Content-Type"];
  v16 = +[AADeviceInfo udid];
  [v4 addValue:v16 forHTTPHeaderField:@"Device-UDID"];

  [v4 addValue:v15 forHTTPHeaderField:@"Device-apnsToken"];

  return v4;
}

@end