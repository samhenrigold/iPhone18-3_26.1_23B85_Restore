@interface LPLocalMetadataArchiverDelegate
- (id)archiver:(id)archiver willEncodeObject:(id)object;
@end

@implementation LPLocalMetadataArchiverDelegate

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  archiverCopy = archiver;
  objectCopy = object;
  if (([archiverCopy _lp_coderOptions] & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v7 = objc_msgSend(objectCopy, "_canEncodeWithoutComputation"), (v7 & 1) == 0))
  {
    v16 = LPLogChannelSerialization(v7, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE886000, v16, OS_LOG_TYPE_DEFAULT, "Low fidelity encoder: dropping image, can't encode without computation", buf, 2u);
    }

    v12 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_8:
      v12 = objectCopy;
      goto LABEL_18;
    }

    v9 = objectCopy;
    if ([v9 _encodedSize] <= 0x100000)
    {
      [v9 _pixelSize];
      if (sizeFitsWithinSize(v10, v11, 1600.0, 1600.0))
      {

        goto LABEL_8;
      }
    }

    _lp_coderOptions = [archiverCopy _lp_coderOptions];
    if (_lp_coderOptions)
    {
      v15 = LPLogChannelSerialization(_lp_coderOptions, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1AE886000, v15, OS_LOG_TYPE_DEFAULT, "Low fidelity encoder: dropping image, requires resampling", v18, 2u);
      }

      v12 = 0;
    }

    else
    {
      v12 = fitImageInSizeSync(v9, 1024.0, 1024.0);
    }
  }

LABEL_18:

  return v12;
}

@end