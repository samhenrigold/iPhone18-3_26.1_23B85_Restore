@interface AirshipInterface
- (BOOL)start:(id *)start;
- (BOOL)write:(id)write;
- (id)read:(unint64_t)read;
- (void)dealloc;
- (void)stop;
@end

@implementation AirshipInterface

- (void)dealloc
{
  if (self->_interface)
  {
    sub_10002B2E4(self);
    [(AirshipInterface *)v2 start:v3, v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AirshipInterface;
    [(AirshipInterface *)&v5 dealloc];
  }
}

- (BOOL)start:(id *)start
{
  if (self->_interface)
  {
    *start = @"alreadyStarted";
    v19 = sub_100025204(self);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002B394();
    }

    goto LABEL_17;
  }

  v6 = sub_100025204(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v25 = v7;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: creating interface", buf, 0x16u);
  }

  v9 = airship_ch_interface_create();
  self->_interface = v9;
  if (!v9)
  {
    *start = @"createFailure";
    v19 = sub_100025204(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002B434();
    }

    goto LABEL_17;
  }

  v10 = airship_ch_interface_set_ring_sizes();
  v11 = sub_100025204(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    *buf = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: opening interface", buf, 0x16u);
  }

  v14 = airship_ch_interface_open();
  if (v14)
  {
    v20 = v14;
    v21 = [NSString stringWithFormat:@"openFailure:0x%08x", v14];
    *start = v21;
    v19 = sub_100025204(v21);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [objc_opt_class() description];
      v23 = NSStringFromSelector(a2);
      *buf = 138543874;
      v25 = v22;
      v26 = 2114;
      v27 = v23;
      v28 = 1024;
      v29 = v20;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to open interface: 0x%x", buf, 0x1Cu);
    }

LABEL_17:

    [(AirshipInterface *)self stop];
    return 0;
  }

  v15 = sub_100025204(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [objc_opt_class() description];
    v17 = NSStringFromSelector(a2);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", buf, 0x16u);
  }

  return 1;
}

- (void)stop
{
  if (self->_interface)
  {
    v4 = sub_100025204(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: closing interface", &v15, 0x16u);
    }

    v7 = airship_ch_interface_close();
    v8 = sub_100025204(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: destroying interface", &v15, 0x16u);
    }

    v11 = airship_ch_interface_destroy();
    self->_interface = 0;
    v12 = sub_100025204(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_opt_class() description];
      v14 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: interface destroyed", &v15, 0x16u);
    }
  }
}

- (BOOL)write:(id)write
{
  writeCopy = write;
  v6 = writeCopy;
  if (!self->_interface)
  {
    v14 = sub_100025204(writeCopy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002B4D4();
    }

    goto LABEL_16;
  }

  v7 = [writeCopy length];
  if (!v7 || (v7 = [v6 length], HIDWORD(v7)))
  {
    v14 = sub_100025204(v7);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v18 = 0;
      goto LABEL_10;
    }

    v20 = [objc_opt_class() description];
    v21 = NSStringFromSelector(a2);
    v25 = 138543874;
    v26 = v20;
    v27 = 2114;
    v28 = v21;
    v29 = 2048;
    v30 = [v6 length];
    v22 = "%{public}@::%{public}@: invalid data length %lu";
    v23 = v14;
    v24 = 32;
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, &v25, v24);

    goto LABEL_16;
  }

  v8 = sub_100025204(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v25 = 138543874;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    v29 = 2048;
    v30 = [v6 length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: writing %lu bytes", &v25, 0x20u);
  }

  [v6 bytes];
  [v6 length];
  v11 = airship_ch_interface_write();
  v12 = v11;
  v13 = sub_100025204(v11);
  v14 = v13;
  if (v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v20 = [objc_opt_class() description];
    v21 = NSStringFromSelector(a2);
    v25 = 138543874;
    v26 = v20;
    v27 = 2114;
    v28 = v21;
    v29 = 1024;
    LODWORD(v30) = v12;
    v22 = "%{public}@::%{public}@: failed to write: 0x%x";
    v23 = v14;
    v24 = 28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    v17 = [v6 length];
    v25 = 138543874;
    v26 = v15;
    v27 = 2114;
    v28 = v16;
    v29 = 2048;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: wrote %lu bytes", &v25, 0x20u);
  }

  v18 = 1;
LABEL_10:

  return v18;
}

- (id)read:(unint64_t)read
{
  if (self->_interface)
  {
    v6 = read - 0x100000000;
    v7 = sub_100025204(self);
    v8 = v7;
    if (v6 <= 0xFFFFFFFF00000000)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v23 = [objc_opt_class() description];
        v24 = NSStringFromSelector(a2);
        *buf = 138543874;
        v26 = v23;
        v27 = 2114;
        v28 = v24;
        v29 = 2048;
        v30[0] = read;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid maximum size %lu", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [objc_opt_class() description];
        v10 = NSStringFromSelector(a2);
        *buf = 138543874;
        v26 = v9;
        v27 = 2114;
        v28 = v10;
        v29 = 2048;
        v30[0] = read;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: reading up to %lu bytes", buf, 0x20u);
      }

      v11 = malloc_type_calloc(1uLL, read, 0xB72CCBCuLL);
      if (v11)
      {
        v12 = v11;
        v13 = airship_ch_interface_read();
        if (v13)
        {
          v19 = v13;
          v20 = sub_100025204(v13);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [objc_opt_class() description];
            v22 = NSStringFromSelector(a2);
            *buf = 138543874;
            v26 = v21;
            v27 = 2114;
            v28 = v22;
            v29 = 1024;
            LODWORD(v30[0]) = v19;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to read: 0x%x", buf, 0x1Cu);
          }
        }

        else
        {
          v14 = sub_100025204(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [objc_opt_class() description];
            v16 = NSStringFromSelector(a2);
            *buf = 138543874;
            v26 = v15;
            v27 = 2114;
            v28 = v16;
            v29 = 1024;
            LODWORD(v30[0]) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: received %u bytes", buf, 0x1Cu);
          }

          v17 = [NSData dataWithBytes:v12 length:0];
          if (v17)
          {
            goto LABEL_10;
          }

          v20 = sub_100025204(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10002B574();
          }
        }

        v17 = 0;
LABEL_10:
        free(v12);
        goto LABEL_11;
      }

      sub_10002B614(self);
    }
  }

  else
  {
    sub_10002B6DC(self);
  }

  v17 = 0;
LABEL_11:

  return v17;
}

@end