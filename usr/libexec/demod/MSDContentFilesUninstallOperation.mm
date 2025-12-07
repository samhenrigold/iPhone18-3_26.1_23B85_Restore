@interface MSDContentFilesUninstallOperation
- (BOOL)_clearDataContainer:(id)container ofType:(id)type;
- (BOOL)_removeContentFiles;
- (id)methodSelectors;
@end

@implementation MSDContentFilesUninstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_removeContentFiles"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_removeContentFiles
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  containerType = [context2 containerType];

  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = identifier;
    v13 = 2114;
    v14 = containerType;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting content files from container %{public}@ of type %{public}@", &v11, 0x16u);
  }

  v9 = [(MSDContentFilesUninstallOperation *)self _clearDataContainer:identifier ofType:containerType];
  return v9;
}

- (BOOL)_clearDataContainer:(id)container ofType:(id)type
{
  containerCopy = container;
  typeCopy = type;
  v7 = [typeCopy isEqualToString:@"AppData"];
  if ((v7 & 1) == 0)
  {
    v7 = [typeCopy isEqualToString:@"GroupData"];
    if ((v7 & 1) == 0)
    {
      v7 = [typeCopy isEqualToString:@"ExtensionData"];
      if ((v7 & 1) == 0)
      {
        v11 = sub_100063A54(v7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000EB2E4(typeCopy, v11);
        }

        goto LABEL_14;
      }
    }
  }

  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = containerCopy;
    v15 = 2114;
    v16 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing data container: %{public}@ (%{public}@)", buf, 0x16u);
  }

  [containerCopy cStringUsingEncoding:4];
  if (!container_create_or_lookup_for_current_user())
  {
    sub_1000EB404(containerCopy);
LABEL_14:
    v9 = 0;
    goto LABEL_10;
  }

  v12 = container_delete_all_container_content();
  v9 = v12 == 1;
  if (v12 != 1)
  {
    sub_1000EB35C(containerCopy);
  }

  container_free_object();
LABEL_10:

  return v9;
}

@end