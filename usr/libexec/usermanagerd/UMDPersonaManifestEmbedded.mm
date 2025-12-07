@interface UMDPersonaManifestEmbedded
+ (id)manifest;
+ (id)manifestFromData:(id)data;
- (id)dataValue;
@end

@implementation UMDPersonaManifestEmbedded

+ (id)manifest
{
  v3 = objc_alloc_init(self);
  [v3 setVersion:{objc_msgSend(self, "currentVersion")}];

  return v3;
}

+ (id)manifestFromData:(id)data
{
  dataCopy = data;
  v5 = sub_10009950C(dataCopy);
  v6 = v5;
  if (!v5)
  {
    if (qword_1000EB3D8 != -1)
    {
      sub_10008BDB0();
    }

    v7 = qword_1000EB3D0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v10 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LOWORD(v23[0]) = 0;
        v12 = _os_log_send_and_compose_impl(v11, &v22, 0, 0, &_mh_execute_header, v7, 16, "Failed to parse persona manifest: manifest data is invalid", v23, 2);
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    goto LABEL_41;
  }

  v7 = [v5 objectForKeyedSubscript:@"UsePersonaManifestVersion"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1000EB3D8 != -1)
      {
        sub_10008BDB0();
      }

      v14 = qword_1000EB3D0;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      v22 = 0;
      v15 = sub_1000011A8(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LOWORD(v23[0]) = 0;
        v17 = _os_log_send_and_compose_impl(v16, &v22, 0, 0, &_mh_execute_header, v14, 16, "Failed to parse persona manifest: manifest version is invalid", v23, 2);
        if (!v17)
        {
          goto LABEL_39;
        }

        goto LABEL_35;
      }

LABEL_38:
      v17 = 0;
      goto LABEL_39;
    }
  }

  unsignedIntValue = [v7 unsignedIntValue];
  if (unsignedIntValue == 1)
  {
    v9 = sub_100055B28(self, v6);
    goto LABEL_26;
  }

  if (!unsignedIntValue)
  {
    v9 = sub_1000557E4(self, dataCopy);
LABEL_26:
    v18 = v9;
    goto LABEL_42;
  }

  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDB0();
  }

  v14 = qword_1000EB3D0;
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_40;
  }

  v22 = 0;
  LODWORD(v19) = sub_1000011A8(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v19 = v19;
  }

  else
  {
    v19 = v19 & 0xFFFFFFFE;
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  v20 = v14;
  v23[0] = 67109120;
  v23[1] = [v7 unsignedIntValue];
  v17 = _os_log_send_and_compose_impl(v19, &v22, 0, 0, &_mh_execute_header, v20, 16, "Failed to parse persona manifest: unknown manifest version: %u", v23);

  if (v17)
  {
LABEL_35:
    sub_100002A8C(v17);
  }

LABEL_39:
  free(v17);
LABEL_40:

LABEL_41:
  v18 = 0;
LABEL_42:

  return v18;
}

- (id)dataValue
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&off_1000E1678 forKeyedSubscript:@"UsePersonaManifestVersion"];
  v4 = [NSNumber numberWithUnsignedLongLong:[(UMDPersonaManifest *)self generation]];
  [v3 setObject:v4 forKeyedSubscript:@"UsePersonaGenerationID"];

  users = [(UMDPersonaManifest *)self users];
  v6 = [UMDPersonaManifest dictForUserSet:users];

  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"UserPersonaDictionary"];
    v7 = sub_100099294(v3);
  }

  else
  {
    if (qword_1000EB3D8 != -1)
    {
      sub_10008BDB0();
    }

    v8 = qword_1000EB3D0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v14 = 0;
        v11 = _os_log_send_and_compose_impl(v10, &v15, 0, 0, &_mh_execute_header, v8, 16, "Failed to generate data for persona manifest: failed to build user dict", &v14, 2);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v7 = 0;
  }

  return v7;
}

@end