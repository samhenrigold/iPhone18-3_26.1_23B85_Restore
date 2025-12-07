@interface DIConvertManager
- (BOOL)runWithError:(id *)error;
- (BOOL)validateFormatsWithDiskImage:(void *)image error:(id *)error;
- (DIBaseParams)outputParams;
- (DIConvertManager)initWithParams:(id)params;
- (void)convertUserDataWithDiskImage:(void *)image destination:(void *)destination;
- (void)dealloc;
@end

@implementation DIConvertManager

- (DIConvertManager)initWithParams:(id)params
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = DIConvertManager;
  v6 = [(DIConvertManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_convertParams, params);
    v8 = [NSProgress progressWithTotalUnitCount:100];
    progress = v7->_progress;
    v7->_progress = v8;
  }

  return v7;
}

- (DIBaseParams)outputParams
{
  convertParams = [(DIConvertManager *)self convertParams];
  if ([convertParams inPlaceConversion])
  {
    convertParams2 = [(DIConvertManager *)self convertParams];
  }

  else
  {
    convertParams3 = [(DIConvertManager *)self convertParams];
    convertParams2 = [convertParams3 outputParams];
  }

  return convertParams2;
}

- (BOOL)validateFormatsWithDiskImage:(void *)image error:(id *)error
{
  convertParams = [(DIConvertManager *)self convertParams];
  inPlaceConversion = [convertParams inPlaceConversion];

  if (!inPlaceConversion)
  {
    return 1;
  }

  convertParams2 = [(DIConvertManager *)self convertParams];
  outputFormat = [convertParams2 outputFormat];
  if ((outputFormat - 3) >= 4 && outputFormat != 8)
  {

    v13 = @"In-place conversion to this image format is not supported";
    goto LABEL_16;
  }

  if (!image)
  {
    goto LABEL_10;
  }

  if (!v11)
  {
    if (v12 && v12[152] != 1)
    {
      goto LABEL_11;
    }

LABEL_10:
    v13 = @"In-place conversion from this image format is not supported";
LABEL_16:

    return [DIError failWithPOSIXCode:22 description:v13 error:error];
  }

  if (!v12)
  {
LABEL_12:
    {
      v13 = @"Cannot convert in-place with a shadow file";
      goto LABEL_16;
    }

    return 1;
  }

LABEL_11:
  if (v12[153])
  {
    goto LABEL_12;
  }

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot convert this image in-place error:as it contains unordered UDIF runs", error];
}

- (void)convertUserDataWithDiskImage:(void *)image destination:(void *)destination
{
  v7 = *__error();
  v8 = sub_1000E044C();
  if (v8)
  {
    v17 = 0;
    v10 = sub_1000E03D8(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *buf = 68157954;
    *&buf[4] = 61;
    v19 = 2080;
    v20 = "[DIConvertManager convertUserDataWithDiskImage:destination:]";
    LODWORD(v16) = 18;
    v12 = _os_log_send_and_compose_impl(v11, &v17, 0, 0, &_mh_execute_header, v10, 0, "%.*s: Converting user data", buf, v16);

    if (v12)
    {
      fprintf(__stderrp, "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = sub_1000E03D8(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 61;
      v19 = 2080;
      v20 = "[DIConvertManager convertUserDataWithDiskImage:destination:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Converting user data", buf, 0x12u);
    }
  }

  *__error() = v7;
  convertParams = [(DIConvertManager *)self convertParams];
  outputFormat = [convertParams outputFormat];
  if ((outputFormat - 3) < 4 || outputFormat == 8)
  {
  }

  else
  {

    (*(**image + 112))(buf);
    if (CFDictionaryGetCount(*buf))
    {
      (*(**destination + 120))(*destination, *buf);
    }

    sub_10000C8E0(buf);
  }
}

- (BOOL)runWithError:(id *)error
{
  v47 = 0;
  convertParams = [(DIConvertManager *)self convertParams];
  diskImageParamsXPC = [convertParams diskImageParamsXPC];
  outputParams = [(DIConvertManager *)self outputParams];
  shadowChain = [outputParams shadowChain];
  [shadowChain shouldValidate];
  if (diskImageParamsXPC)
  {
    objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC);
    v9 = *buf;
  }

  else
  {
    v9 = 0;
  }

  v47 = v9;
  *buf = 0;

  outputParams2 = [(DIConvertManager *)self outputParams];
  diskImageParamsXPC2 = [outputParams2 diskImageParamsXPC];
  v12 = [diskImageParamsXPC2 lockBackendsWithError:error];

  if (v12)
  {
    convertParams2 = [(DIConvertManager *)self convertParams];
    if ([convertParams2 inPlaceConversion])
    {
    }

    else
    {
      convertParams3 = [(DIConvertManager *)self convertParams];
      diskImageParamsXPC3 = [convertParams3 diskImageParamsXPC];
      v16 = [diskImageParamsXPC3 lockBackendsWithError:error];

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v17 = *__error();
    v18 = sub_1000E044C();
    if (v18)
    {
      v56[0] = 0;
      v20 = sub_1000E03D8(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      convertParams4 = [(DIConvertManager *)self convertParams];
      v23 = +[DIHelpers stringWithImageFormat:](DIHelpers, "stringWithImageFormat:", [convertParams4 outputFormat]);
      *buf = 68158210;
      *&buf[4] = 33;
      *v49 = 2080;
      *&v49[2] = "[DIConvertManager runWithError:]";
      *&v49[10] = 2114;
      *&v49[12] = v23;
      v24 = _os_log_send_and_compose_impl(v21, v56, 0, 0, &_mh_execute_header, v20, 0, "%.*s: Converting to %{public}@", buf, 28);

      if (v24)
      {
        fprintf(__stderrp, "%s\n", v24);
        free(v24);
      }
    }

    else
    {
      v25 = sub_1000E03D8(v18, v19);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        convertParams5 = [(DIConvertManager *)self convertParams];
        v27 = +[DIHelpers stringWithImageFormat:](DIHelpers, "stringWithImageFormat:", [convertParams5 outputFormat]);
        *buf = 0x2104100302;
        *v49 = 2080;
        *&v49[2] = "[DIConvertManager runWithError:]";
        *&v49[10] = 2114;
        *&v49[12] = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: Converting to %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v17;
    if ([(DIConvertManager *)self validateFormatsWithDiskImage:v47 error:error])
    {
      progress = [(DIConvertManager *)self progress];
      v56[0] = off_100202948;
      v56[1] = progress;
      v56[3] = v56;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10000FC78;
      v42[3] = &unk_1002026F8;
      v42[4] = &v43;
      [progress setCancellationHandler:v42];
      *buf = &v47;
      convertParams6 = [(DIConvertManager *)self convertParams];
      *v49 = [convertParams6 outputFormat];
      outputParams3 = [(DIConvertManager *)self outputParams];
      v31 = outputParams3;
      if (outputParams3)
      {
        objc_msgSend_backend(outputParams3);
      }

      else
      {
        *&v49[8] = 0uLL;
      }

      convertParams7 = [(DIConvertManager *)self convertParams];
      blockSize = [convertParams7 blockSize];
      convertParams8 = [(DIConvertManager *)self convertParams];
      maxRawUDIFRunSize = [convertParams8 maxRawUDIFRunSize];
      convertParams9 = [(DIConvertManager *)self convertParams];
      blockSize2 = [convertParams9 blockSize];
      convertParams10 = [(DIConvertManager *)self convertParams];
      conversionMethod = [convertParams10 conversionMethod];
      v54 = 0;
      sub_100010DFC(v55, v56);
      v55[4] = v44 + 3;

      convertParams11 = [(DIConvertManager *)self convertParams];
      useFormatMappingInfo = [convertParams11 useFormatMappingInfo];

      if (useFormatMappingInfo)
      {
        v54 |= 1u;
      }

      outputParams4 = [(DIConvertManager *)self outputParams];
      hasUnlockedBackend = [outputParams4 hasUnlockedBackend];

      if (hasUnlockedBackend)
      {
        v54 |= 2u;
      }

      sub_100126E34(buf);
    }
  }

LABEL_20:
  v32 = v47;
  v47 = 0;
  if (v32)
  {
    (*(*v32 + 16))(v32);
  }

  return 0;
}

- (void)dealloc
{
  outputParams = [(DIConvertManager *)self outputParams];
  v4 = outputParams;
  if (outputParams)
  {
    objc_msgSend_backend(outputParams);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  sub_10019A824(&v8, &lpsrc);
  if (v9)
  {
    sub_10000367C(v9);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 8))(v5);
      if (v6)
      {
        sub_10000367C(v6);
      }
    }
  }

  if (v11)
  {
    sub_10000367C(v11);
  }

  v7.receiver = self;
  v7.super_class = DIConvertManager;
  [(DIConvertManager *)&v7 dealloc];
}

@end