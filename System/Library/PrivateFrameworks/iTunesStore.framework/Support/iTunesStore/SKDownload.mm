@interface SKDownload
- (BOOL)isEqual:(id)equal;
- (SKDownload)init;
- (SKDownload)initWithXPCEncoding:(id)encoding;
- (SKPaymentTransaction)transaction;
- (id)copyXPCEncoding;
- (void)_applyChangeset:(id)changeset;
- (void)_setContentIdentifier:(id)identifier;
- (void)_setContentLength:(id)length;
- (void)_setContentURL:(id)l;
- (void)_setDownloadID:(id)d;
- (void)_setError:(id)error;
- (void)_setTransaction:(id)transaction;
- (void)_setVersion:(id)version;
@end

@implementation SKDownload

- (SKDownload)init
{
  v6.receiver = self;
  v6.super_class = SKDownload;
  v2 = [(SKDownload *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKDownloadInternal);
    internal = v2->_internal;
    v2->_internal = v3;

    *(v2->_internal + 7) = SKDownloadTimeRemainingUnknown;
  }

  return v2;
}

- (SKPaymentTransaction)transaction
{
  WeakRetained = objc_loadWeakRetained(self->_internal + 10);

  return WeakRetained;
}

- (void)_applyChangeset:(id)changeset
{
  changesetCopy = changeset;
  contentLength = [changesetCopy contentLength];
  if (contentLength)
  {
    [(SKDownload *)self _setContentLength:contentLength];
  }

  contentURL = [changesetCopy contentURL];

  if (contentURL)
  {
    [(SKDownload *)self _setContentURL:contentURL];
  }

  downloadState = [changesetCopy downloadState];

  if (downloadState)
  {
    -[SKDownload _setDownloadState:](self, "_setDownloadState:", [downloadState integerValue]);
  }

  error = [changesetCopy error];

  if (error)
  {
    [(SKDownload *)self _setError:error];
  }

  progress = [changesetCopy progress];

  if (progress)
  {
    [progress floatValue];
    [(SKDownload *)self _setProgress:?];
  }

  timeRemaining = [changesetCopy timeRemaining];

  if (timeRemaining)
  {
    [timeRemaining doubleValue];
    [(SKDownload *)self _setTimeRemaining:?];
  }
}

- (void)_setDownloadID:(id)d
{
  v4 = [d copy];
  internal = self->_internal;
  v6 = internal[1];
  internal[1] = v4;

  _objc_release_x1(v4, v6);
}

- (void)_setContentIdentifier:(id)identifier
{
  v4 = [identifier copy];
  internal = self->_internal;
  v6 = internal[2];
  internal[2] = v4;

  _objc_release_x1(v4, v6);
}

- (void)_setContentLength:(id)length
{
  objc_storeStrong(self->_internal + 8, length);
  lengthCopy = length;
}

- (void)_setContentURL:(id)l
{
  v4 = [l copy];
  internal = self->_internal;
  v6 = internal[6];
  internal[6] = v4;

  _objc_release_x1(v4, v6);
}

- (void)_setError:(id)error
{
  v4 = [error copy];
  internal = self->_internal;
  v6 = internal[5];
  internal[5] = v4;

  _objc_release_x1(v4, v6);
}

- (void)_setTransaction:(id)transaction
{
  internal = self->_internal;
  transactionCopy = transaction;
  objc_storeWeak(internal + 10, transactionCopy);
  payment = [transactionCopy payment];

  productIdentifier = [payment productIdentifier];
  [(SKDownload *)self _setContentIdentifier:productIdentifier];
}

- (void)_setVersion:(id)version
{
  v4 = [version copy];
  internal = self->_internal;
  v6 = internal[9];
  internal[9] = v4;

  _objc_release_x1(v4, v6);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _downloadID = [(SKDownload *)self _downloadID];
    _downloadID2 = [v5 _downloadID];
    if ([_downloadID isEqual:_downloadID2])
    {
      contentIdentifier = [(SKDownload *)self contentIdentifier];
      contentIdentifier2 = [v5 contentIdentifier];
      v10 = [contentIdentifier isEqual:contentIdentifier2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SKDownload)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && xpc_get_type(encodingCopy) == &_xpc_type_dictionary)
  {
    v6 = [(SKDownload *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = [NSNumber numberWithLongLong:xpc_dictionary_get_int64(v5, "0")];
    internal = v6->_internal;
    v10 = internal[8];
    internal[8] = v8;

    v11 = objc_opt_class();
    v12 = sub_10018E3FC(v5, "2", v11);
    v13 = v6->_internal;
    v14 = v13[1];
    v13[1] = v12;

    *(v6->_internal + 3) = xpc_dictionary_get_int64(v5, "3");
    v15 = xpc_dictionary_get_double(v5, "5");
    *(v6->_internal + 8) = v15;
    v16 = objc_opt_class();
    v17 = sub_10018E3FC(v5, "7", v16);
    v18 = v6->_internal;
    v19 = v18[9];
    v18[9] = v17;

    v20 = xpc_dictionary_get_value(v5, "6");
    self = v20;
    if (v20 && xpc_get_type(v20) == &_xpc_type_double)
    {
      value = xpc_double_get_value(self);
    }

    else
    {
      value = SKDownloadTimeRemainingUnknown;
    }

    *(v6->_internal + 7) = value;
    v22 = objc_opt_class();
    v23 = sub_10018E3FC(v5, "1", v22);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v25 = [[NSURL alloc] initWithString:v23];
    }

    else
    {
      v25 = 0;
    }

    objc_storeStrong(v6->_internal + 6, v25);
    if (isKindOfClass)
    {
    }

    v26 = objc_opt_class();
    v27 = sub_10018E3FC(v5, "4", v26);

    if (v27)
    {
      v28 = sub_10018DAD8(v27);
      v29 = v6->_internal;
      v30 = v29[5];
      v29[5] = v28;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", [*(self->_internal + 8) longLongValue]);
  sub_10018E448(v3, "1", [*(self->_internal + 6) absoluteString]);
  sub_10018E448(v3, "2", *(self->_internal + 1));
  xpc_dictionary_set_int64(v3, "3", *(self->_internal + 3));
  v4 = sub_10018D55C(*(self->_internal + 5));
  sub_10018E448(v3, "4", v4);
  xpc_dictionary_set_double(v3, "5", *(self->_internal + 8));
  xpc_dictionary_set_double(v3, "6", *(self->_internal + 7));
  sub_10018E448(v3, "7", *(self->_internal + 9));
  return v3;
}

@end