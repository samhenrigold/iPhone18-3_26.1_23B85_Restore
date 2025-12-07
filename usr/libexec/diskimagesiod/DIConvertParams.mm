@interface DIConvertParams
- (BOOL)onConvertCompletionWithInError:(id)error outError:(id *)outError;
- (BOOL)openExistingImageWithError:(id *)error;
- (BOOL)prepareParamsForSquashWithError:(id *)error;
- (BOOL)prepareParamsWithError:(id *)error;
- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error;
- (BOOL)shouldPerformInplaceSquash;
- (BOOL)shouldValidateShadows;
- (BOOL)validateDeserializationWithError:(id *)error;
- (BOOL)validateFileWithURL:(id)l error:(id *)error;
- (BOOL)validateSquashFormats;
- (DIConvertParams)initWithCoder:(id)coder;
- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL error:(id *)error;
- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL shadowURLs:(id)ls error:(id *)error;
- (id)convertWithCompletionBlock:(id)block;
- (id)copyUpdatedOutputURLWithError:(id *)error;
- (id)initForInplaceWithExistingParams:(id)params error:(id *)error;
- (id)initForInplaceWithURL:(id)l error:(id *)error;
- (id)prepareConvertWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setShouldValidateShadows:(BOOL)shadows;
@end

@implementation DIConvertParams

- (BOOL)validateFileWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if ([lCopy isFileURL] && (stat(objc_msgSend(lCopy, "fileSystemRepresentation"), &v8) || !sub_100151E40(&v8)))
  {
    v6 = 1;
  }

  else
  {
    v6 = [DIError failWithPOSIXCode:22 description:@"Output of disk image conversion must be a file" error:error];
  }

  return v6;
}

- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v10 = +[NSArray array];
  v11 = [(DIConvertParams *)self initWithInputURL:lCopy outputURL:rLCopy shadowURLs:v10 error:error];

  return v11;
}

- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL shadowURLs:(id)ls error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  lsCopy = ls;
  v13 = [(DIBaseParams *)self initWithURL:lCopy error:error];
  v14 = v13;
  if (v13)
  {
    if (![(DIConvertParams *)v13 validateFileWithURL:rLCopy error:error])
    {
      v17 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v14->_shadowURLs, ls);
    v15 = [DIURL newDIURLWithNSURL:rLCopy];
    outputURL = v14->_outputURL;
    v14->_outputURL = v15;

    v14->_sparseBundleBandSize = 0x4000000;
  }

  v17 = v14;
LABEL_6:

  return v17;
}

- (id)initForInplaceWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [(DIBaseParams *)self initWithURL:lCopy error:error];
  v8 = v7;
  if (v7)
  {
    if (![(DIConvertParams *)v7 validateFileWithURL:lCopy error:error])
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(DIConvertParams *)v8 setConversionMethod:1];
  }

  v9 = v8;
LABEL_6:

  return v9;
}

- (id)initForInplaceWithExistingParams:(id)params error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v14.receiver = self;
  v14.super_class = DIConvertParams;
  v8 = [(DIBaseParams *)&v14 initWithURL:inputURL error:error];

  if (v8)
  {
    inputURL2 = [paramsCopy inputURL];
    v10 = [(DIConvertParams *)v8 validateFileWithURL:inputURL2 error:error];

    if ((v10 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_6;
    }

    diskImageParamsXPC = [paramsCopy diskImageParamsXPC];
    [(DIBaseParams *)v8 setDiskImageParamsXPC:diskImageParamsXPC];

    [(DIConvertParams *)v8 setConversionMethod:1];
  }

  v12 = v8;
LABEL_6:

  return v12;
}

- (BOOL)validateSquashFormats
{
  outputFormat = [(DIConvertParams *)self outputFormat];
  if (outputFormat == 2 || outputFormat == 1)
  {
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)shouldPerformInplaceSquash
{
  if ([(DIConvertParams *)self validateSquashFormats])
  {
    outputURL = [(DIConvertParams *)self outputURL];
    uRLByDeletingLastPathComponent = [outputURL URLByDeletingLastPathComponent];

    sub_100010B0C(&__p, [uRLByDeletingLastPathComponent fileSystemRepresentation]);
    v5 = sub_100150D40(&__p, 0);
    sub_100056CC8(&v8, v5, 0, 0);
  }

  return 0;
}

- (BOOL)prepareParamsForSquashWithError:(id *)error
{
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v44 = 0;
    v8 = sub_1000E957C(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    *buf = 68157954;
    v46 = 51;
    v47 = 2080;
    v48 = "[DIConvertParams prepareParamsForSquashWithError:]";
    LODWORD(v43) = 18;
    v10 = _os_log_send_and_compose_impl(v9, &v44, 0, 0, &_mh_execute_header, v8, 0, "%.*s: Performing in-place squash optimization", buf, v43);

    if (v10)
    {
      fprintf(__stderrp, "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v46 = 51;
      v47 = 2080;
      v48 = "[DIConvertParams prepareParamsForSquashWithError:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Performing in-place squash optimization", buf, 0x12u);
    }
  }

  *__error() = v5;
  v12 = [(DIConvertParams *)self copyUpdatedOutputURLWithError:error];
  if (!v12)
  {
    goto LABEL_18;
  }

  if (![DICreateParams eraseIfExistingWithURL:v12 error:error])
  {
    v30 = *__error();
    v31 = sub_1000E95F0();
    if (!v31)
    {
      v36 = sub_1000E957C(v31, v32);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v46 = 51;
        v47 = 2080;
        v48 = "[DIConvertParams prepareParamsForSquashWithError:]";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%.*s: Failed to erase output URL", buf, 0x12u);
      }

      goto LABEL_38;
    }

    v44 = 0;
    v33 = sub_1000E957C(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *buf = 68157954;
    v46 = 51;
    v47 = 2080;
    v48 = "[DIConvertParams prepareParamsForSquashWithError:]";
    LODWORD(v43) = 18;
    v35 = _os_log_send_and_compose_impl(v34, &v44, 0, 0, &_mh_execute_header, v33, 16, "%.*s: Failed to erase output URL", buf, v43);

    if (v35)
    {
LABEL_34:
      fprintf(__stderrp, "%s\n", v35);
      free(v35);
    }

LABEL_38:
    v29 = 0;
    *__error() = v30;
    goto LABEL_39;
  }

  v13 = +[NSFileManager defaultManager];
  inputURL = [(DIBaseParams *)self inputURL];
  v15 = [v13 copyItemAtURL:inputURL toURL:v12 error:error];

  if ((v15 & 1) == 0)
  {
    v30 = *__error();
    v37 = sub_1000E95F0();
    if (!v37)
    {
      v41 = sub_1000E957C(v37, v38);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v46 = 51;
        v47 = 2080;
        v48 = "[DIConvertParams prepareParamsForSquashWithError:]";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%.*s: Failed to copy source disk image to temporary URL", buf, 0x12u);
      }

      goto LABEL_38;
    }

    v44 = 0;
    v39 = sub_1000E957C(v37, v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    *buf = 68157954;
    v46 = 51;
    v47 = 2080;
    v48 = "[DIConvertParams prepareParamsForSquashWithError:]";
    LODWORD(v43) = 18;
    v35 = _os_log_send_and_compose_impl(v40, &v44, 0, 0, &_mh_execute_header, v39, 16, "%.*s: Failed to copy source disk image to temporary URL", buf, v43);

    if (v35)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v16 = [[DIBaseParams alloc] initWithURL:v12 error:error];
  [(DIConvertParams *)self setOutputParams:v16];

  outputParams = [(DIConvertParams *)self outputParams];
  v18 = [outputParams openExistingImageWithFlags:2 error:error];

  if ((v18 & 1) == 0)
  {
LABEL_18:
    v29 = 0;
    goto LABEL_39;
  }

  v19 = [(NSArray *)self->_shadowURLs objectAtIndex:0];
  v20 = [DIURL newDIURLWithNSURL:v19];
  [(DIBaseParams *)self setInputURL:v20];

  inputURL2 = [(DIBaseParams *)self inputURL];
  path = [inputURL2 path];
  if (!path)
  {

    goto LABEL_41;
  }

  inputURL3 = [(DIBaseParams *)self inputURL];
  v24 = [NSURLComponents componentsWithURL:inputURL3 resolvingAgainstBaseURL:1];
  v25 = v24 == 0;

  if (v25)
  {
LABEL_41:
    v29 = [DIError failWithPOSIXCode:22 description:@"Malformed URL format" error:error];
    goto LABEL_39;
  }

  v26 = [NSMutableArray arrayWithArray:self->_shadowURLs];
  [v26 removeObjectAtIndex:0];
  shadowChain = [(DIBaseParams *)self shadowChain];
  v28 = [shadowChain addShadowURLs:v26 error:error];

  if (v28)
  {
    [(DIBaseParams *)self setDiskImageParamsXPC:0];
    v29 = [(DIBaseParams *)self openExistingImageWithFlags:0 error:error];
  }

  else
  {
    v29 = 0;
  }

LABEL_39:
  return v29;
}

- (BOOL)prepareParamsWithError:(id *)error
{
  v5 = [(DIConvertParams *)self openExistingImageWithError:?];
  if (v5)
  {
    if ([(DIConvertParams *)self inPlaceConversion])
    {
LABEL_3:
      LOBYTE(v5) = 1;
      return v5;
    }

    if ([(DIConvertParams *)self shouldPerformInplaceSquash])
    {
      [(DIConvertParams *)self setConversionMethod:2];

      LOBYTE(v5) = [(DIConvertParams *)self prepareParamsForSquashWithError:error];
    }

    else
    {
      [(DIConvertParams *)self setConversionMethod:0];
      shadowChain = [(DIBaseParams *)self shadowChain];
      v7 = [shadowChain addShadowURLs:self->_shadowURLs error:error];

      if (v7)
      {
        goto LABEL_3;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (DIConvertParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DIConvertParams;
  v5 = [(DIBaseParams *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_conversionMethod = [coderCopy decodeIntegerForKey:@"conversionMethod"];
    v5->_outputFormat = [coderCopy decodeIntegerForKey:@"outputFormat"];
    v5->_maxRawUDIFRunSize = [coderCopy decodeIntegerForKey:@"maxRawUDIFRunSize"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputParams"];
    outputParams = v5->_outputParams;
    v5->_outputParams = v6;

    v5->_useFormatMappingInfo = [coderCopy decodeBoolForKey:@"useFormatMappingInfo"];
  }

  return v5;
}

- (BOOL)shouldValidateShadows
{
  shadowChain = [(DIBaseParams *)self shadowChain];
  shouldValidate = [shadowChain shouldValidate];

  return shouldValidate;
}

- (void)setShouldValidateShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  shadowChain = [(DIBaseParams *)self shadowChain];
  [shadowChain setShouldValidate:shadowsCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DIConvertParams;
  [(DIBaseParams *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[DIConvertParams conversionMethod](self forKey:{"conversionMethod"), @"conversionMethod"}];
  [coderCopy encodeInteger:-[DIConvertParams outputFormat](self forKey:{"outputFormat"), @"outputFormat"}];
  [coderCopy encodeInteger:-[DIConvertParams maxRawUDIFRunSize](self forKey:{"maxRawUDIFRunSize"), @"maxRawUDIFRunSize"}];
  outputParams = [(DIConvertParams *)self outputParams];
  [coderCopy encodeObject:outputParams forKey:@"outputParams"];

  [coderCopy encodeBool:-[DIConvertParams useFormatMappingInfo](self forKey:{"useFormatMappingInfo"), @"useFormatMappingInfo"}];
}

- (BOOL)validateDeserializationWithError:(id *)error
{
  v10.receiver = self;
  v10.super_class = DIConvertParams;
  if ([(DIBaseParams *)&v10 validateDeserializationWithError:?])
  {
    outputParams = [(DIConvertParams *)self outputParams];
    if (outputParams)
    {
      v6 = outputParams;
      outputParams2 = [(DIConvertParams *)self outputParams];
      v8 = [outputParams2 validateDeserializationWithError:error];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)copyUpdatedOutputURLWithError:(id *)error
{
  inputURL = [(DIBaseParams *)self inputURL];
  if ([inputURL isFileURL])
  {
    outputURL = [(DIConvertParams *)self outputURL];
    v6 = access([outputURL fileSystemRepresentation], 0);

    if (!v6)
    {
      [(DIConvertParams *)self outputURL];
      fileSystemRepresentation = [objc_claimAutoreleasedReturnValue() fileSystemRepresentation];
      v8 = sub_100010B0C(buf, fileSystemRepresentation);
      v9 = sub_100150D40(v8, 0);
      sub_100056CC8(&v11, v9, 0, 0);
    }
  }

  else
  {
  }

  [(DIConvertParams *)self outputURL];
  return objc_claimAutoreleasedReturnValue();
}

- (BOOL)onConvertCompletionWithInError:(id)error outError:(id *)outError
{
  errorCopy = error;
  if (errorCopy)
  {
    outputParams = [(DIConvertParams *)self outputParams];

    if (outputParams)
    {
      v8 = *__error();
      v9 = sub_1000E95F0();
      if (v9)
      {
        v57 = 0;
        v11 = sub_1000E957C(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        *buf = 68157954;
        v59 = 59;
        v60 = 2080;
        v61 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
        LODWORD(v55) = 18;
        v13 = _os_log_send_and_compose_impl(v12, &v57, 0, 0, &_mh_execute_header, v11, 16, "%.*s: Due to the conversion error, erasing the output file", buf, v55);

        if (v13)
        {
          fprintf(__stderrp, "%s\n", v13);
          free(v13);
        }
      }

      else
      {
        v20 = sub_1000E957C(v9, v10);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v59 = 59;
          v60 = 2080;
          v61 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%.*s: Due to the conversion error, erasing the output file", buf, 0x12u);
        }
      }

      *__error() = v8;
      outputParams2 = [(DIConvertParams *)self outputParams];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        outputParams3 = [(DIConvertParams *)self outputParams];
        [outputParams3 onErrorCleanup];
LABEL_20:

        goto LABEL_21;
      }

      outputURL = [(DIConvertParams *)self outputURL];
      outputParams4 = [(DIConvertParams *)self outputParams];
      inputURL = [outputParams4 inputURL];
      v27 = [outputURL isEqual:inputURL];

      if ((v27 & 1) == 0)
      {
        outputParams3 = +[NSFileManager defaultManager];
        outputParams5 = [(DIConvertParams *)self outputParams];
        inputURL2 = [outputParams5 inputURL];
        [outputParams3 removeItemAtURL:inputURL2 error:0];

        goto LABEL_20;
      }
    }

LABEL_21:
    v19 = [DIError failWithInError:errorCopy outError:outError];
    goto LABEL_22;
  }

  if ([(DIConvertParams *)self inPlaceConversion])
  {
    goto LABEL_12;
  }

  outputParams6 = [(DIConvertParams *)self outputParams];

  if (!outputParams6)
  {
    goto LABEL_12;
  }

  outputURL2 = [(DIConvertParams *)self outputURL];
  outputParams7 = [(DIConvertParams *)self outputParams];
  inputURL3 = [outputParams7 inputURL];
  v18 = [outputURL2 isEqual:inputURL3];

  if (v18)
  {
    goto LABEL_12;
  }

  v56 = *__error();
  v31 = sub_1000E95F0();
  if (v31)
  {
    v57 = 0;
    v33 = sub_1000E957C(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    outputParams8 = [(DIConvertParams *)self outputParams];
    inputURL4 = [outputParams8 inputURL];
    path = [inputURL4 path];
    outputURL3 = [(DIConvertParams *)self outputURL];
    path2 = [outputURL3 path];
    *buf = 68158467;
    v59 = 59;
    v60 = 2080;
    v61 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
    v62 = 2113;
    v63 = path;
    v64 = 2113;
    v65 = path2;
    v40 = _os_log_send_and_compose_impl(v34, &v57, 0, 0, &_mh_execute_header, v33, 0, "%.*s: Moving %{private}@ to %{private}@", buf, 38);

    if (v40)
    {
      fprintf(__stderrp, "%s\n", v40);
      free(v40);
    }
  }

  else
  {
    v41 = sub_1000E957C(v31, v32);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      outputParams9 = [(DIConvertParams *)self outputParams];
      inputURL5 = [outputParams9 inputURL];
      path3 = [inputURL5 path];
      outputURL4 = [(DIConvertParams *)self outputURL];
      path4 = [outputURL4 path];
      *buf = 68158467;
      v59 = 59;
      v60 = 2080;
      v61 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
      v62 = 2113;
      v63 = path3;
      v64 = 2113;
      v65 = path4;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%.*s: Moving %{private}@ to %{private}@", buf, 0x26u);
    }
  }

  *__error() = v56;
  v47 = +[NSFileManager defaultManager];
  outputURL5 = [(DIConvertParams *)self outputURL];
  v49 = [v47 removeItemAtURL:outputURL5 error:outError];

  if (v49 & 1) != 0 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v50 = objc_claimAutoreleasedReturnValue(), -[DIConvertParams outputParams](self, "outputParams"), v51 = objc_claimAutoreleasedReturnValue(), [v51 inputURL], v52 = objc_claimAutoreleasedReturnValue(), -[DIConvertParams outputURL](self, "outputURL"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v50, "moveItemAtURL:toURL:error:", v52, v53, outError), v53, v52, v51, v50, (v54))
  {
LABEL_12:
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (id)prepareConvertWithError:(id *)error
{
  if (![(DIConvertParams *)self prepareParamsWithError:?])
  {
    v6 = 0;
    goto LABEL_7;
  }

  if ([(DIConvertParams *)self outputFormat]< 1 || [(DIConvertParams *)self outputFormat]> 12)
  {
    v5 = @"Invalid output format argument";
LABEL_5:
    v6 = [DIError nilWithPOSIXCode:22 verboseInfo:v5 error:error];
    goto LABEL_7;
  }

  if ([(DIConvertParams *)self maxRawUDIFRunSize]&& [(DIConvertParams *)self maxRawUDIFRunSize]< 0x100000)
  {
    v5 = @"Invalid raw UDIF run size limit";
    goto LABEL_5;
  }

  if ([(DIConvertParams *)self inPlaceConversion]&& [(DIConvertParams *)self encryptionMethod])
  {
    v5 = @"In-place conversion maintains the encryption passphrase and method. It's not allowed to specify encryption arguments";
    goto LABEL_5;
  }

  v9 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v10 = *__error();
  v11 = sub_1000E95F0();
  if (v11)
  {
    v28 = 0;
    v13 = sub_1000E957C(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *buf = 68158210;
    v30 = 43;
    v31 = 2080;
    v32 = "[DIConvertParams prepareConvertWithError:]";
    v33 = 2114;
    selfCopy2 = self;
    v15 = _os_log_send_and_compose_impl(v14, &v28, 0, 0, &_mh_execute_header, v13, 0, "%.*s: entry: %{public}@", buf, 28);

    if (v15)
    {
      fprintf(__stderrp, "%s\n", v15);
      free(v15);
    }
  }

  else
  {
    v16 = sub_1000E957C(v11, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v30 = 43;
      v31 = 2080;
      v32 = "[DIConvertParams prepareConvertWithError:]";
      v33 = 2114;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v10;
  if (![(DIClient2Controller_XPCHandler *)v9 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v9 fileMode:2 error:error])
  {
    goto LABEL_33;
  }

  if (![(DIConvertParams *)self conversionMethod])
  {
    v17 = [(DIConvertParams *)self copyUpdatedOutputURLWithError:error];
    if (v17)
    {
      if ([(DIConvertParams *)self outputFormat]== 9)
      {
        v18 = [(DICreateParams *)[DICreateUDSBParams alloc] initWithURL:v17 error:error];
        if (!v18)
        {
          goto LABEL_45;
        }

        [(DICreateUDSBParams *)v18 setSparseBundleBandSize:[(DIConvertParams *)self sparseBundleBandSize]];
      }

      else
      {
        if ([(DIConvertParams *)self outputFormat]== 2)
        {
          v19 = [(DICreateParams *)[DICreateASIFParams alloc] initWithURL:v17 error:error];
        }

        else
        {
          v19 = [(DICreateParams *)[DICreateRAWParams alloc] initWithURL:v17 error:error];
        }

        v18 = v19;
        if (!v19)
        {
          goto LABEL_45;
        }
      }

      [(DICreateParams *)v18 setEncryptionMethod:[(DIConvertParams *)self encryptionMethod]];
      [(DIBaseParams *)v18 setReadPassphraseFlags:[(DIBaseParams *)self readPassphraseFlags]];
      shouldValidateShadows = [(DIConvertParams *)self shouldValidateShadows];
      shadowChain = [(DIBaseParams *)v18 shadowChain];
      [shadowChain setShouldValidate:shouldValidateShadows];

      [(DICreateParams *)v18 setPassphrase:[(DIConvertParams *)self passphrase]];
      publicKey = [(DIConvertParams *)self publicKey];
      [(DICreateParams *)v18 setPublicKey:publicKey];

      certificate = [(DIConvertParams *)self certificate];
      [(DICreateParams *)v18 setCertificate:certificate];

      [(DIBaseParams *)v18 setBlockSize:[(DIBaseParams *)self blockSize]];
      temporaryPassphrase = [(DIConvertParams *)self temporaryPassphrase];
      if (!temporaryPassphrase || (-[DIConvertParams temporaryPassphrase](self, "temporaryPassphrase"), v25 = objc_claimAutoreleasedReturnValue(), v26 = -[DICreateParams setPassphrase:encryptionMethod:error:](v18, "setPassphrase:encryptionMethod:error:", [v25 buf], -[DIConvertParams encryptionMethod](self, "encryptionMethod"), error), v25, temporaryPassphrase, (v26 & 1) != 0))
      {
        temporaryPassphrase = self->_temporaryPassphrase;
        self->_temporaryPassphrase = 0;

        if (![(DICreateParams *)v18 validateBlockSizeSupport])
        {
          v6 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Cannot create target image format with the block size of the source image" error:error];
          goto LABEL_47;
        }

        if ([(DICreateParams *)v18 createDiskImageParamsWithError:error]&& [(DICreateParams *)v18 createEncryptionWithXPCHandler:v9 error:error])
        {
          [(DIConvertParams *)self setOutputParams:v18];

          goto LABEL_28;
        }
      }

LABEL_45:
      v6 = 0;
LABEL_47:

      goto LABEL_34;
    }

LABEL_33:
    v6 = 0;
    goto LABEL_34;
  }

LABEL_28:
  v6 = v9;
LABEL_34:

LABEL_7:
  v7 = self->_temporaryPassphrase;
  self->_temporaryPassphrase = 0;

  return v6;
}

- (id)convertWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = [NSProgress progressWithTotalUnitCount:100];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005666C;
  v11[3] = &unk_1001FCB70;
  v11[4] = self;
  v6 = blockCopy;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  if (sub_1000F0DBC())
  {
    (v8[2])(v8);
  }

  else
  {
    v9 = dispatch_queue_create("DiskImageConvert", 0);
    dispatch_async(v9, v8);
  }

  return v7;
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = DIConvertParams;
  [(DIBaseParams *)&v5 invalidate];
  outputParams = [(DIConvertParams *)self outputParams];

  if (outputParams)
  {
    outputParams2 = [(DIConvertParams *)self outputParams];
    [outputParams2 invalidate];
  }
}

- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error
{
  if (passphrase)
  {
    v8 = [[DITemporaryPassphrase alloc] initWithPassphrase:passphrase];
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = v8;

    self->_encryptionMethod = method;
    return 1;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 error:error];
  }
}

- (BOOL)openExistingImageWithError:(id *)error
{
  if ([(DIConvertParams *)self inPlaceConversion])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return [(DIBaseParams *)self openExistingImageWithFlags:v5 error:error];
}

@end