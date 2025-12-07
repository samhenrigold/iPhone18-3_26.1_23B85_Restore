@interface IOUSBHostPipe
- (id)receive:(unint64_t)receive timeout:(id)timeout;
- (unint64_t)send:(id)send timeout:(id)timeout;
@end

@implementation IOUSBHostPipe

- (unint64_t)send:(id)send timeout:(id)timeout
{
  timeoutCopy = timeout;
  v7 = [NSMutableData dataWithData:send];
  if (timeoutCopy)
  {
    [timeoutCopy doubleValue];
  }

  else
  {
    v8 = 5.0;
  }

  v15 = 0;
  v16 = 0;
  v9 = [(IOUSBHostPipe *)self sendIORequestWithData:v7 bytesTransferred:&v16 completionTimeout:&v15 error:v8];
  v10 = v15;

  if ((v9 & 1) == 0)
  {
    v12 = sub_100001170(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000143FC();
    }
  }

  v13 = v16;

  return v13;
}

- (id)receive:(unint64_t)receive timeout:(id)timeout
{
  timeoutCopy = timeout;
  endpointType = [(IOUSBHostPipe *)self endpointType];
  v8 = [NSMutableData dataWithLength:receive];
  if (timeoutCopy)
  {
    [timeoutCopy doubleValue];
  }

  else
  {
    v9 = 5.0;
  }

  v16 = 0;
  v17 = 0;
  v10 = [(IOUSBHostPipe *)self sendIORequestWithData:v8 bytesTransferred:&v17 completionTimeout:&v16 error:v9];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = [v8 subdataWithRange:{0, v17}];
  }

  else
  {
    if (endpointType != 3)
    {
      v14 = sub_100001170(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10001446C();
      }
    }

    v13 = 0;
  }

  return v13;
}

@end