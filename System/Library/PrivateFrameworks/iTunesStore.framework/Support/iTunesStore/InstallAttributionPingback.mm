@interface InstallAttributionPingback
- (BOOL)isEqual:(id)equal;
- (InstallAttributionPingback)initWithAppAdamId:(id)id transactionId:(id)transactionId campaignId:(id)campaignId adNetworkId:(id)networkId attributionSignature:(id)signature pingbackUrl:(id)url retryCount:(int64_t)count localTimestamp:(id)self0;
@end

@implementation InstallAttributionPingback

- (InstallAttributionPingback)initWithAppAdamId:(id)id transactionId:(id)transactionId campaignId:(id)campaignId adNetworkId:(id)networkId attributionSignature:(id)signature pingbackUrl:(id)url retryCount:(int64_t)count localTimestamp:(id)self0
{
  idCopy = id;
  transactionIdCopy = transactionId;
  campaignIdCopy = campaignId;
  networkIdCopy = networkId;
  signatureCopy = signature;
  urlCopy = url;
  timestampCopy = timestamp;
  v51.receiver = self;
  v51.super_class = InstallAttributionPingback;
  v22 = [(InstallAttributionPingback *)&v51 init];
  if (v22)
  {
    v23 = [idCopy copy];
    appAdamId = v22->_appAdamId;
    v22->_appAdamId = v23;

    v25 = [transactionIdCopy copy];
    transactionId = v22->_transactionId;
    v22->_transactionId = v25;

    v27 = [campaignIdCopy copy];
    campaignId = v22->_campaignId;
    v22->_campaignId = v27;

    v29 = [networkIdCopy copy];
    adNetworkId = v22->_adNetworkId;
    v22->_adNetworkId = v29;

    v31 = [signatureCopy copy];
    attributionSignature = v22->_attributionSignature;
    v22->_attributionSignature = v31;

    v33 = [urlCopy copy];
    pingbackUrl = v22->_pingbackUrl;
    v22->_pingbackUrl = v33;

    v22->_retryCount = count;
    v35 = [timestampCopy copy];
    localTimestamp = v22->_localTimestamp;
    v22->_localTimestamp = v35;

    if (!v22->_appAdamId || !v22->_transactionId || !v22->_campaignId || !v22->_adNetworkId || !v22->_attributionSignature || !timestampCopy || !v22->_pingbackUrl)
    {
      v49 = idCopy;
      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v38) = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        LODWORD(v38) = v38 | 2;
      }

      oSLogObject = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v38 = v38;
      }

      else
      {
        v38 &= 2u;
      }

      if (v38)
      {
        v40 = urlCopy;
        v41 = signatureCopy;
        v42 = transactionIdCopy;
        v43 = objc_opt_class();
        v47 = v43;
        [(InstallAttributionPingback *)v22 description];
        v44 = v48 = networkIdCopy;
        v52 = 138543618;
        v53 = v43;
        transactionIdCopy = v42;
        signatureCopy = v41;
        urlCopy = v40;
        v54 = 2112;
        v55 = v44;
        v45 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: One or more initializer arguments was nil: %@", &v52, 22);

        networkIdCopy = v48;
        if (!v45)
        {
LABEL_20:

          v22 = 0;
          idCopy = v49;
          goto LABEL_21;
        }

        oSLogObject = [NSString stringWithCString:v45 encoding:4];
        free(v45);
        SSFileLog();
      }

      goto LABEL_20;
    }
  }

LABEL_21:

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    appAdamId = [(InstallAttributionPingback *)self appAdamId];
    appAdamId2 = [v5 appAdamId];
    if ([appAdamId isEqual:appAdamId2])
    {
      adNetworkId = [(InstallAttributionPingback *)self adNetworkId];
      adNetworkId2 = [v5 adNetworkId];
      if ([adNetworkId isEqual:adNetworkId2])
      {
        campaignId = [(InstallAttributionPingback *)self campaignId];
        campaignId2 = [v5 campaignId];
        if ([campaignId isEqual:campaignId2])
        {
          pingbackUrl = [(InstallAttributionPingback *)self pingbackUrl];
          pingbackUrl2 = [v5 pingbackUrl];
          v27 = pingbackUrl;
          if ([pingbackUrl isEqual:pingbackUrl2])
          {
            transactionId = [(InstallAttributionPingback *)self transactionId];
            transactionId2 = [v5 transactionId];
            v25 = transactionId;
            if ([transactionId isEqual:transactionId2])
            {
              attributionSignature = [(InstallAttributionPingback *)self attributionSignature];
              attributionSignature2 = [v5 attributionSignature];
              v23 = attributionSignature;
              v16 = attributionSignature;
              v17 = attributionSignature2;
              if ([v16 isEqual:attributionSignature2] && (v21 = -[InstallAttributionPingback retryCount](self, "retryCount"), v21 == objc_msgSend(v5, "retryCount")))
              {
                localTimestamp = [(InstallAttributionPingback *)self localTimestamp];
                localTimestamp2 = [v5 localTimestamp];
                v18 = [localTimestamp isEqual:localTimestamp2];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end