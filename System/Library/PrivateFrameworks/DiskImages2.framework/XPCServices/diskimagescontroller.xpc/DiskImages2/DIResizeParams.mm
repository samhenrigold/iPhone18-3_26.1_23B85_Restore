@interface DIResizeParams
- (BOOL)resizeWithError:(id *)error;
- (DIResizeParams)initWithCoder:(id)coder;
- (DIResizeParams)initWithExistingParams:(id)params size:(unint64_t)size error:(id *)error;
- (DIResizeParams)initWithURL:(id)l size:(unint64_t)size error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIResizeParams

- (DIResizeParams)initWithURL:(id)l size:(unint64_t)size error:(id *)error
{
  v7.receiver = self;
  v7.super_class = DIResizeParams;
  result = [(DIBaseParams *)&v7 initWithURL:l error:error];
  if (result)
  {
    result->_size = size;
  }

  return result;
}

- (DIResizeParams)initWithExistingParams:(id)params size:(unint64_t)size error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v18.receiver = self;
  v18.super_class = DIResizeParams;
  v10 = [(DIBaseParams *)&v18 initWithURL:inputURL error:error];

  if (v10 && (v10->_size = size, [paramsCopy diskImageParamsXPC], v11 = objc_claimAutoreleasedReturnValue(), -[DIBaseParams setDiskImageParamsXPC:](v10, "setDiskImageParamsXPC:", v11), v11, -[DIBaseParams shadowChain](v10, "shadowChain"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(paramsCopy, "shadowChain"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "nodes"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v12, "addShadowNodes:error:", v14, error), v14, v13, v12, (v15 & 1) == 0))
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  return v16;
}

- (DIResizeParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DIResizeParams;
  v5 = [(DIBaseParams *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_size = [coderCopy decodeInt64ForKey:@"size"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = DIResizeParams;
  [(DIBaseParams *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[DIResizeParams size](self forKey:{"size"), @"size"}];
}

- (BOOL)resizeWithError:(id *)error
{
  if ([(DIResizeParams *)self openExistingImageWithError:?])
  {
    v5 = *__error();
    v6 = sub_1000E044C();
    if (v6)
    {
      v47 = 0;
      v8 = sub_1000E03D8(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 34;
      v49 = 2080;
      v50 = "[DIResizeParams resizeWithError:]";
      v51 = 2114;
      selfCopy2 = self;
      v10 = _os_log_send_and_compose_impl(v9, &v47, 0, 0, &_mh_execute_header, v8, 0, "%.*s: entry: %{public}@", buf, 28);

      if (v10)
      {
        fprintf(__stderrp, "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v12 = sub_1000E03D8(v6, v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x2204100302;
        v49 = 2080;
        v50 = "[DIResizeParams resizeWithError:]";
        v51 = 2114;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v5;
    v13 = objc_alloc_init(DIClient2Controller_XPCHandler);
    if (![(DIClient2Controller_XPCHandler *)v13 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v13 fileMode:1 error:error])
    {
      v11 = 0;
LABEL_35:

      return v11;
    }

    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    shadowChain = [(DIBaseParams *)self shadowChain];
    [shadowChain shouldValidate];
    if (diskImageParamsXPC)
    {
      objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC);
      v16 = *buf;
    }

    else
    {
      v16 = 0;
    }

    *buf = 0;

    if ((*(*v16 + 40))(v16))
    {
      v17 = [(DIResizeParams *)self size];
      v18 = (*(*v16 + 24))(v16);
      v19 = (*(*v16 + 32))(v16);
      v20 = (v17 + v18 - 1) / v18 * v18;
      if ((*(*v16 + 24))(v16) * v19 == v20)
      {
        v21 = *__error();
        v22 = sub_1000E044C();
        if (v22)
        {
          v47 = 0;
          v24 = sub_1000E03D8(v22, v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 3;
          }

          else
          {
            v25 = 2;
          }

          *buf = 68157954;
          *&buf[4] = 34;
          v49 = 2080;
          v50 = "[DIResizeParams resizeWithError:]";
          LODWORD(v45) = 18;
          v26 = _os_log_send_and_compose_impl(v25, &v47, 0, 0, &_mh_execute_header, v24, 0, "%.*s: New disk image size is the same as previous", buf, v45);

          if (v26)
          {
            fprintf(__stderrp, "%s\n", v26);
            free(v26);
          }
        }

        else
        {
          v30 = sub_1000E03D8(v22, v23);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            *&buf[4] = 34;
            v49 = 2080;
            v50 = "[DIResizeParams resizeWithError:]";
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%.*s: New disk image size is the same as previous", buf, 0x12u);
          }
        }

        *__error() = v21;
        v11 = 1;
        goto LABEL_34;
      }

      diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
      v29 = [diskImageParamsXPC2 setSizeWithDiskImage:v16 newSize:v20];

      if (!v29)
      {
        v32 = (*(*v16 + 32))(v16);
        [(DIResizeParams *)self setSize:(*(*v16 + 24))(v16) * v32];
        v33 = *__error();
        v34 = sub_1000E044C();
        if (v34)
        {
          v47 = 0;
          v36 = sub_1000E03D8(v34, v35);
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          v38 = [(DIResizeParams *)self size];
          if (v37)
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          *buf = 68158210;
          *&buf[4] = 34;
          v49 = 2080;
          v50 = "[DIResizeParams resizeWithError:]";
          v51 = 2048;
          selfCopy2 = v38;
          LODWORD(v45) = 28;
          v40 = _os_log_send_and_compose_impl(v39, &v47, 0, 0, &_mh_execute_header, v36, 0, "%.*s: Disk image resized to %llu bytes", buf, v45, v46);

          if (v40)
          {
            fprintf(__stderrp, "%s\n", v40);
            free(v40);
          }
        }

        else
        {
          v41 = sub_1000E03D8(v34, v35);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [(DIResizeParams *)self size];
            *buf = 68158210;
            *&buf[4] = 34;
            v49 = 2080;
            v50 = "[DIResizeParams resizeWithError:]";
            v51 = 2048;
            selfCopy2 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image resized to %llu bytes", buf, 0x1Cu);
          }
        }

        *__error() = v33;
        v43 = (*(*v16 + 144))(v16);
        v44 = sub_10000FE1C(v43);
        if (v44)
        {
          v11 = [DIError failWithPOSIXCode:v44 error:error];
        }

        else
        {
          v11 = 1;
        }

        if (v43)
        {
          (*(*v43 + 40))(v43);
        }

        goto LABEL_34;
      }

      v27 = [DIError failWithPOSIXCode:v29 verboseInfo:@"Failed to resize the image" error:error];
    }

    else
    {
      v27 = [DIError failWithPOSIXCode:45 verboseInfo:@"Image doesn't support resizing" error:error];
    }

    v11 = v27;
LABEL_34:
    (*(*v16 + 16))(v16);
    goto LABEL_35;
  }

  return 0;
}

@end