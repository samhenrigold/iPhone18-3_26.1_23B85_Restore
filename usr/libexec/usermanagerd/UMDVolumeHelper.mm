@interface UMDVolumeHelper
- (BOOL)createVolumeWithSession:(id)session size:(int64_t)size userName:(id)name error:(int *)error forPersona:(BOOL)persona userDataVolume:(BOOL)volume;
- (BOOL)deleteVolumeWithSession:(id)session error:(int *)error;
- (BOOL)isVolumeMountedWithSession:(id)session fsid:(fsid *)fsid;
- (BOOL)mountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error forPersona:(BOOL)persona;
- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error;
- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error force:(BOOL)force;
- (void)createVolumeMountsDir:(id)dir;
@end

@implementation UMDVolumeHelper

- (void)createVolumeMountsDir:(id)dir
{
  dirCopy = dir;
  v5 = [(UMDVolumeHelper *)self se];
  v6 = sub_1000013A0(v5);
  v7 = [v6 fileExistsAtPath:dirCopy isDirectory:0];

  if (!v7)
  {
    v12 = [(UMDVolumeHelper *)self se];
    v13 = sub_1000013A0(v12);
    v14 = [v13 makePath:dirCopy mode:511 error:0];

    if (v14)
    {
      v15 = [(UMDVolumeHelper *)self se];
      v16 = sub_1000013A0(v15);
      v17 = [v16 chmodPath:dirCopy withMode:511 error:0];

      if (v17)
      {
        if (qword_1000EB498 != -1)
        {
          sub_10009865C();
        }

        v8 = qword_1000EB490;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v25 = 0;
        v18 = sub_1000011A8(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (!v19)
        {
          goto LABEL_38;
        }

        v26 = 138543362;
        v27 = dirCopy;
        v11 = _os_log_send_and_compose_impl(v19, &v25, 0, 0, &_mh_execute_header, v8, 0, "Created volume mounts directory %{public}@", &v26, 12);
      }

      else
      {
        if (qword_1000EB498 != -1)
        {
          sub_10009865C();
        }

        v8 = qword_1000EB490;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        v25 = 0;
        v22 = sub_1000011A8(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (!v23)
        {
          goto LABEL_38;
        }

        v26 = 138543362;
        v27 = dirCopy;
        v11 = _os_log_send_and_compose_impl(v23, &v25, 0, 0, &_mh_execute_header, v8, 16, "Failed to set permissions on volume mounts directory %{public}@", &v26, 12);
      }
    }

    else
    {
      if (qword_1000EB498 != -1)
      {
        sub_10009865C();
      }

      v8 = qword_1000EB490;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      v25 = 0;
      v20 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (!v21)
      {
        goto LABEL_38;
      }

      v26 = 138543362;
      v27 = dirCopy;
      v11 = _os_log_send_and_compose_impl(v21, &v25, 0, 0, &_mh_execute_header, v8, 16, "Failed to create volume mounts directory %{public}@", &v26, 12);
    }

LABEL_36:
    v24 = v11;
    if (v11)
    {
      sub_100002A8C(v11);
    }

    goto LABEL_39;
  }

  if (qword_1000EB498 != -1)
  {
    sub_10009865C();
  }

  v8 = qword_1000EB490;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v25 = 0;
    v9 = sub_1000011A8(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v26 = 138543362;
      v27 = dirCopy;
      v11 = _os_log_send_and_compose_impl(v10, &v25, 0, 0, &_mh_execute_header, v8, 1, "Volume mounts directory %{public}@ exists", &v26, 12);
      goto LABEL_36;
    }

LABEL_38:
    v24 = 0;
LABEL_39:
    free(v24);
  }

LABEL_40:
}

- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error
{
  sessionCopy = session;
  pathCopy = path;
  v31 = 0;
  if (error)
  {
    *error = 0;
  }

  v10 = pathCopy;
  v11 = v10;
  if (!v10)
  {
    v11 = sub_100098ECC(sessionCopy, @"MKBUserSessionHomeDir");
  }

  if ([(UMDVolumeHelper *)self unmountVolumeWithSession:sessionCopy mountPath:v10 error:&v31 force:0])
  {
    goto LABEL_18;
  }

  if (qword_1000EB498 != -1)
  {
    sub_100098670();
  }

  v12 = qword_1000EB490;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 0;
    v13 = sub_1000011A8(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v32 = 138412546;
      v33 = v11;
      v34 = 1024;
      v35 = v31;
      v15 = _os_log_send_and_compose_impl(v14, &v30, 0, 0, &_mh_execute_header, v12, 0, "Failed to unmount volume at %@ (%d), retrying with force unmount", &v32, 18);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  if ([(UMDVolumeHelper *)self unmountVolumeWithSession:sessionCopy mountPath:v10 error:&v31 force:1])
  {
LABEL_18:
    if (qword_1000EB498 != -1)
    {
      sub_100098670();
    }

    v17 = qword_1000EB490;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v32 = 138412290;
        v33 = v11;
        LODWORD(v29) = 12;
        v20 = _os_log_send_and_compose_impl(v19, &v30, 0, 0, &_mh_execute_header, v17, 0, "Unmounted volume at %@", &v32, v29);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v27 = 1;
  }

  else
  {
    if (qword_1000EB498 != -1)
    {
      sub_100098670();
    }

    v22 = qword_1000EB490;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v23 = sub_1000011A8(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v32 = 138412546;
        v33 = v11;
        v34 = 1024;
        v35 = v31;
        LODWORD(v29) = 18;
        v25 = _os_log_send_and_compose_impl(v24, &v30, 0, 0, &_mh_execute_header, v22, 0, "Failed to force unmount volume at %@ (%d)", &v32, v29);
        v26 = v25;
        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v26 = 0;
      }

      free(v26);
    }

    v27 = 0;
    if (error)
    {
      *error = v31;
    }
  }

  return v27;
}

- (BOOL)createVolumeWithSession:(id)session size:(int64_t)size userName:(id)name error:(int *)error forPersona:(BOOL)persona userDataVolume:(BOOL)volume
{
  sessionCopy = session;
  nameCopy = name;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)deleteVolumeWithSession:(id)session error:(int *)error
{
  sessionCopy = session;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)mountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error forPersona:(BOOL)persona
{
  sessionCopy = session;
  pathCopy = path;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error force:(BOOL)force
{
  sessionCopy = session;
  pathCopy = path;
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)isVolumeMountedWithSession:(id)session fsid:(fsid *)fsid
{
  sessionCopy = session;
  result = _os_crash();
  __break(1u);
  return result;
}

@end