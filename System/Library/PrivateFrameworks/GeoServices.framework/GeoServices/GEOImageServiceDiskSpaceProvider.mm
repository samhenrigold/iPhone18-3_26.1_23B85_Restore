@interface GEOImageServiceDiskSpaceProvider
- (BOOL)_shouldPurgeForUrgency:(int)urgency;
- (int)minimumUregency;
- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency;
- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency;
@end

@implementation GEOImageServiceDiskSpaceProvider

- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency
{
  v4 = *&urgency;
  if (![(GEOImageServiceDiskSpaceProvider *)self _shouldPurgeForUrgency:*&urgency])
  {
    return 0;
  }

  v7 = [(GEODaemon *)self->_daemon startServerClassIfNecessary:objc_opt_class()];
  if (!self->_persistence)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _persistence != ((void *)0)", v12, 2u);
    }

    return 0;
  }

  v8 = [(GEOImageServiceDiskSpaceProvider *)self purgableDiskSpaceForUrgency:v4];
  if (v8 >= space)
  {
    v9 = v8 - space;
  }

  else
  {
    v9 = 0;
  }

  persistence = self->_persistence;

  return [(GEOImageServicePersistence *)persistence shrinkToSize:v9];
}

- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency
{
  if (![(GEOImageServiceDiskSpaceProvider *)self _shouldPurgeForUrgency:*&urgency])
  {
    return 0;
  }

  v4 = [(GEODaemon *)self->_daemon startServerClassIfNecessary:objc_opt_class()];
  persistence = self->_persistence;
  if (!persistence)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _persistence != ((void *)0)", v7, 2u);
    }

    return 0;
  }

  return [(GEOImageServicePersistence *)persistence calculateFreeableSize];
}

- (BOOL)_shouldPurgeForUrgency:(int)urgency
{
  if ([(GEOImageServiceDiskSpaceProvider *)self minimumUregency]> urgency)
  {
    goto LABEL_2;
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [GEOFilePaths pathFor:28];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (qword_100096058 != -1)
  {
    dispatch_once(&qword_100096058, &stru_1000822E8);
  }

  v7 = qword_100096050;
  v3 = os_log_type_enabled(qword_100096050, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ImageService DB does not exist. Nothing to purge.", v9, 2u);
LABEL_2:
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int)minimumUregency
{
  if (GEOConfigGetBOOL())
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

@end