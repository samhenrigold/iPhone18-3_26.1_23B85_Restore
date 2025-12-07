@interface EPScalablePipeManagerManagerFactory
+ (id)sharedPipeManagerManagerFactory;
- (EPScalablePipeManagerManagerFactory)init;
- (id)pipeManagerManagerWithName:(id)name type:(int64_t)type priority:(int64_t)priority;
@end

@implementation EPScalablePipeManagerManagerFactory

+ (id)sharedPipeManagerManagerFactory
{
  if (qword_1001B3A68 != -1)
  {
    sub_100103678();
  }

  v3 = qword_1001B3A60;

  return v3;
}

- (EPScalablePipeManagerManagerFactory)init
{
  v6.receiver = self;
  v6.super_class = EPScalablePipeManagerManagerFactory;
  v2 = [(EPScalablePipeManagerManagerFactory *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    pipeManagers = v2->_pipeManagers;
    v2->_pipeManagers = v3;
  }

  return v2;
}

- (id)pipeManagerManagerWithName:(id)name type:(int64_t)type priority:(int64_t)priority
{
  nameCopy = name;
  v9 = [(NSMapTable *)self->_pipeManagers objectForKey:nameCopy];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000A98C0(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_10;
    }

    v14 = sub_1000A98C0(v13);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v20 = 134218242;
    v21 = v10;
    v22 = 2112;
    v23 = nameCopy;
    v15 = "EPScalablePipeManagerManagerFactory: Reusing existing EPScalablePipeManagerManager %p to manage pipe %@";
    goto LABEL_8;
  }

  v10 = [[EPScalablePipeManagerManager alloc] initWithName:nameCopy type:type priority:priority];
  v16 = sub_1000A98C0([(NSMapTable *)self->_pipeManagers setObject:v10 forKey:nameCopy]);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (!v17)
  {
    goto LABEL_10;
  }

  v14 = sub_1000A98C0(v18);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218242;
    v21 = v10;
    v22 = 2112;
    v23 = nameCopy;
    v15 = "EPScalablePipeManagerManagerFactory: Created new EPScalablePipeManagerManager %p to manage pipe %@";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v20, 0x16u);
  }

LABEL_9:

LABEL_10:

  return v10;
}

@end