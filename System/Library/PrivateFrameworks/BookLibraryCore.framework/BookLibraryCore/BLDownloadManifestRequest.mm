@interface BLDownloadManifestRequest
- (BLDownloadManifestRequest)initWithCoder:(id)coder;
- (BLDownloadManifestRequest)initWithURLRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
- (void)startWithManifestResponseBlock:(id)block;
@end

@implementation BLDownloadManifestRequest

- (BLDownloadManifestRequest)initWithURLRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = BLDownloadManifestRequest;
  v5 = [(BLDownloadManifestRequest *)&v9 init];
  if (v5)
  {
    v6 = [requestCopy copy];
    urlRequest = v5->_urlRequest;
    v5->_urlRequest = v6;
  }

  return v5;
}

- (void)startWithManifestResponseBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = BLServiceLog(blockCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uRLRequest = [(BLDownloadManifestRequest *)self URLRequest];
    *buf = 134218242;
    selfCopy = self;
    v13 = 2112;
    v14 = uRLRequest;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadManifestRequest] Start download manifest request %p: urlRequest=%@", buf, 0x16u);
  }

  v7 = +[BLDownloadQueueNonUI sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D4E20C;
  v9[3] = &unk_278D179B8;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 addDownloadsWithManifestRequest:self completion:v9];
}

- (BLDownloadManifestRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = BLDownloadManifestRequest;
  v5 = [(BLDownloadManifestRequest *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLRequest"];
    [(BLDownloadManifestRequest *)v5 setURLRequest:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uRLRequest = [(BLDownloadManifestRequest *)self URLRequest];
  [coderCopy encodeObject:uRLRequest forKey:@"URLRequest"];
}

@end