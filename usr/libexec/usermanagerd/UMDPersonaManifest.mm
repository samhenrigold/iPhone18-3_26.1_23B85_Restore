@interface UMDPersonaManifest
+ (id)dataForPersonaSet:(id)set;
+ (id)dictForUserSet:(id)set;
+ (id)manifest;
+ (id)manifestFromData:(id)data;
+ (id)personaSetFromData:(id)data;
+ (id)userSetFromDict:(id)dict;
+ (unsigned)currentVersion;
- (NSData)dataValue;
- (UMDPersonaManifest)init;
@end

@implementation UMDPersonaManifest

+ (unsigned)currentVersion
{
  platformClass = [self platformClass];

  return [platformClass currentVersion];
}

+ (id)manifest
{
  platformClass = [self platformClass];

  return [platformClass manifest];
}

+ (id)manifestFromData:(id)data
{
  dataCopy = data;
  v5 = [objc_msgSend(self "platformClass")];

  return v5;
}

- (UMDPersonaManifest)init
{
  v7.receiver = self;
  v7.super_class = UMDPersonaManifest;
  v2 = [(UMDPersonaManifest *)&v7 init];
  if (!v2)
  {
    sub_100088DDC();
  }

  v3 = v2;
  v4 = +[NSSet set];
  users = v3->_users;
  v3->_users = v4;

  return v3;
}

- (NSData)dataValue
{
  if (qword_1000EB458 != -1)
  {
    sub_100097EE8();
  }

  v2 = qword_1000EB450;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v3 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v8 = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v9, 0, 0, &_mh_execute_header, v2, 16, "-dataValue called on UMDPersonaManifest", &v8, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return 0;
}

+ (id)personaSetFromData:(id)data
{
  v3 = sub_10009950C(data);
  v4 = v3;
  if (!v3)
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v5 = qword_1000EB450;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      v24 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v49[0]) = 0;
        v26 = _os_log_send_and_compose_impl(v25, v51, 0, 0, &_mh_execute_header, v5, 16, "Failed to parse persona manifest persona list: data is invalid", v49, 2);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v19 = 0;
    goto LABEL_99;
  }

  v5 = [v3 objectForKeyedSubscript:@"NUMENT"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v6 = qword_1000EB450;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      v20 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LOWORD(v49[0]) = 0;
        v22 = _os_log_send_and_compose_impl(v21, v51, 0, 0, &_mh_execute_header, v6, 16, "Failed to parse persona manifest persona list: entry count is invalid", v49, 2);
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    v19 = 0;
    goto LABEL_98;
  }

  v6 = [v4 objectForKeyedSubscript:@"BLOB"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v8 = qword_1000EB450;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      v28 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        LOWORD(v49[0]) = 0;
        v30 = _os_log_send_and_compose_impl(v29, v51, 0, 0, &_mh_execute_header, v8, 16, "Failed to parse persona manifest persona list: data blob is invalid", v49, 2);
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    v19 = 0;
    goto LABEL_97;
  }

  v7 = sub_100099704(v6);
  v8 = v7;
  if (!v7)
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v10 = qword_1000EB450;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_95;
    }

    *v51 = 0;
    v32 = sub_1000011A8(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (v33)
    {
      LOWORD(v49[0]) = 0;
      v34 = _os_log_send_and_compose_impl(v33, v51, 0, 0, &_mh_execute_header, v10, 16, "Failed to parse persona manifest persona list: persona list is invalid", v49, 2);
      if (!v34)
      {
        goto LABEL_83;
      }

      goto LABEL_71;
    }

LABEL_82:
    v34 = 0;
    goto LABEL_83;
  }

  v9 = [v7 count];
  if (v9 != [v5 unsignedLongValue])
  {
    if (qword_1000EB458 != -1)
    {
      sub_100097EE8();
    }

    v10 = qword_1000EB450;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_95;
    }

    v49[0] = 0;
    LODWORD(v35) = sub_1000011A8(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v35 = v35;
    }

    else
    {
      v35 = v35 & 0xFFFFFFFE;
    }

    if (v35)
    {
      v36 = v10;
      *v51 = 134218240;
      *&v51[4] = [v8 count];
      v52 = 2048;
      unsignedLongValue = [v5 unsignedLongValue];
      v34 = _os_log_send_and_compose_impl(v35, v49, 0, 0, &_mh_execute_header, v36, 16, "Failed to parse persona manifest persona list: entry count mismatch: %lu != %lu", v51, 22);

      if (!v34)
      {
LABEL_83:
        free(v34);
LABEL_95:
        v19 = 0;
        goto LABEL_96;
      }

LABEL_71:
      sub_100002A8C(v34);
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v10 = +[NSMutableSet set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = *v46;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v46 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v45 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v37 = qword_1000EB450;
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *v51 = 0;
        v38 = sub_1000011A8(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (v39)
        {
          LOWORD(v49[0]) = 0;
          v40 = _os_log_send_and_compose_impl(v39, v51, 0, 0, &_mh_execute_header, v37, 16, "Failed to parse persona manifest persona list: persona is invalid", v49, 2, v45);
          goto LABEL_80;
        }

LABEL_92:
        v41 = 0;
LABEL_93:
        free(v41);
LABEL_94:

        goto LABEL_95;
      }

      v17 = sub_100096310(UMDPersonaManifestPersona, v16);
      if (!v17)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v37 = qword_1000EB450;
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_94;
        }

        *v51 = 0;
        v42 = sub_1000011A8(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (v43)
        {
          LOWORD(v49[0]) = 0;
          v40 = _os_log_send_and_compose_impl(v43, v51, 0, 0, &_mh_execute_header, v37, 16, "Failed to parse persona manifest persona list: failed to parse persona", v49, 2, v45);
LABEL_80:
          v41 = v40;
          if (v40)
          {
            sub_100002A8C(v40);
          }

          goto LABEL_93;
        }

        goto LABEL_92;
      }

      v18 = v17;
      [v10 addObject:v17];
    }

    v13 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v10 = v10;
  v19 = v10;
LABEL_96:

LABEL_97:
LABEL_98:

LABEL_99:

  return v19;
}

+ (id)dataForPersonaSet:(id)set
{
  setCopy = set;
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = setCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = sub_100096838(*(*(&v16 + 1) + 8 * i));
        [v5 addObject:{v11, v16}];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
  [v4 setObject:v12 forKeyedSubscript:@"NUMENT"];

  v13 = sub_1000993D0(v5);
  [v4 setObject:v13 forKeyedSubscript:@"BLOB"];

  v14 = sub_100099294(v4);

  return v14;
}

+ (id)userSetFromDict:(id)dict
{
  dictCopy = dict;
  v5 = +[NSMutableSet set];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v6 = dictCopy;
  v7 = [v6 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v62;
    v10 = &MGCopyAnswer_ptr;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v62 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v61 + 1) + 8 * v11);
      v13 = sub_100016954(v10[439], v12);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = [v6 objectForKeyedSubscript:v12];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v41 = qword_1000EB450;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v65 = 0;
          v42 = sub_1000011A8(0);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v43 = v42;
          }

          else
          {
            v43 = v42 & 0xFFFFFFFE;
          }

          if (v43)
          {
            LOWORD(v60[0]) = 0;
            v44 = _os_log_send_and_compose_impl(v43, v65, 0, 0, &_mh_execute_header, v41, 16, "Failed to parse persona manifest user list: user value is invalid", v60, 2);
            v45 = v44;
            if (v44)
            {
              sub_100002A8C(v44);
            }
          }

          else
          {
            v45 = 0;
          }

          free(v45);
        }

        goto LABEL_37;
      }

      v16 = [self personaSetFromData:v15];
      v17 = v16;
      if (!v16)
      {
        if (qword_1000EB458 != -1)
        {
          sub_100097EFC();
        }

        v18 = qword_1000EB450;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v65 = 0;
          v46 = sub_1000011A8(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v47 = v46;
          }

          else
          {
            v47 = v46 & 0xFFFFFFFE;
          }

          if (v47)
          {
            LOWORD(v60[0]) = 0;
            v48 = _os_log_send_and_compose_impl(v47, v65, 0, 0, &_mh_execute_header, v18, 16, "Failed to parse persona manifest user list: failed to parse user personas", v60, 2);
            v49 = v48;
            if (v48)
            {
              sub_100002A8C(v48);
            }
          }

          else
          {
            v49 = 0;
          }

          free(v49);
        }

LABEL_36:

LABEL_37:
LABEL_38:

        v29 = 0;
        goto LABEL_39;
      }

      v50 = v11;
      v51 = v9;
      selfCopy = self;
      v53 = v15;
      v54 = v6;
      v55 = v5;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v57;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v57 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v56 + 1) + 8 * i);
            if (v23)
            {
              v24 = *(v23 + 128);
              if (v24)
              {
                v25 = v24;
                v26 = [*(v23 + 128) isEqual:v14];

                if ((v26 & 1) == 0)
                {
                  if (qword_1000EB458 != -1)
                  {
                    sub_100097EFC();
                  }

                  v6 = v54;
                  v5 = v55;
                  v15 = v53;
                  v30 = qword_1000EB450;
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v60[0] = 0;
                    v31 = sub_1000011A8(0);
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      v32 = v31;
                    }

                    else
                    {
                      v32 = v31 & 0xFFFFFFFE;
                    }

                    if (v32)
                    {
                      v33 = *(v23 + 128);
                      *v65 = 138543618;
                      *&v65[4] = v33;
                      v66 = 2114;
                      v67 = v14;
                      v34 = v30;
                      v35 = _os_log_send_and_compose_impl(v32, v60, 0, 0, &_mh_execute_header, v34, 16, "Failed to parse persona manifest user list: persona user UUID mismatch: %{public}@ != %{public}@", v65, 22);

                      if (v35)
                      {
                        sub_100002A8C(v35);
                      }
                    }

                    else
                    {
                      v35 = 0;
                    }

                    free(v35);
                  }

                  goto LABEL_36;
                }
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v27 = objc_alloc_init(UMDPersonaManifestUser);
      sub_1000897B8(v27, v14);
      if (v27)
      {
        objc_setProperty_nonatomic_copy(v27, v28, v18, 16);
      }

      v5 = v55;
      [v55 addObject:v27];

      v9 = v51;
      v11 = v50 + 1;
      v6 = v54;
      self = selfCopy;
      v10 = &MGCopyAnswer_ptr;
      if ((v50 + 1) == v8)
      {
        v8 = [v54 countByEnumeratingWithState:&v61 objects:v69 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    if (qword_1000EB458 != -1)
    {
      sub_100097EFC();
    }

    v14 = qword_1000EB450;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v60[0] = 0;
      v37 = sub_1000011A8(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        *v65 = 138543362;
        *&v65[4] = v12;
        v39 = _os_log_send_and_compose_impl(v38, v60, 0, 0, &_mh_execute_header, v14, 16, "Failed to parse persona manifest user list: invalid UUID: %{public}@", v65, 12);
        v40 = v39;
        if (v39)
        {
          sub_100002A8C(v39);
        }
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }

    goto LABEL_38;
  }

LABEL_23:

  v29 = v5;
LABEL_39:

  return v29;
}

+ (id)dictForUserSet:(id)set
{
  setCopy = set;
  v4 = +[NSMutableDictionary dictionary];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = setCopy;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v6)
  {
    v7 = *v46;
    v38 = v5;
    v39 = v4;
    v36 = *v46;
    while (2)
    {
      v37 = v6;
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v45 + 1) + 8 * i);
        if (!v9 || !*(v9 + 24))
        {
          if (qword_1000EB458 != -1)
          {
            sub_100097EFC();
          }

          v10 = qword_1000EB450;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v49 = 0;
            v32 = sub_1000011A8(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v33 = v32;
            }

            else
            {
              v33 = v32 & 0xFFFFFFFE;
            }

            if (v33)
            {
              LOWORD(v40[0]) = 0;
              v34 = _os_log_send_and_compose_impl(v33, v49, 0, 0, &_mh_execute_header, v10, 16, "Failed to generate dict for persona manifest user: missing user UUID", v40, 2);
              v35 = v34;
              if (v34)
              {
                sub_100002A8C(v34);
              }
            }

            else
            {
              v35 = 0;
            }

            free(v35);
          }

LABEL_35:

          v23 = 0;
          goto LABEL_36;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v10 = *(v9 + 16);
        v11 = [v10 countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v42;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v42 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v41 + 1) + 8 * j);
              if (v15)
              {
                v16 = *(v15 + 128);
                if (v16)
                {
                  v17 = v16;
                  v18 = *(v9 + 24);
                  v19 = *(v15 + 128);
                  LOBYTE(v18) = [v19 isEqual:v18];

                  if ((v18 & 1) == 0)
                  {
                    if (qword_1000EB458 != -1)
                    {
                      sub_100097EFC();
                    }

                    v5 = v38;
                    v24 = qword_1000EB450;
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      v40[0] = 0;
                      LODWORD(v25) = sub_1000011A8(0);
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                      {
                        v25 = v25;
                      }

                      else
                      {
                        v25 = v25 & 0xFFFFFFFE;
                      }

                      if (v25)
                      {
                        v26 = *(v15 + 128);
                        v27 = *(v9 + 24);
                        *v49 = 138543618;
                        *&v49[4] = v26;
                        v50 = 2114;
                        v51 = v27;
                        v28 = v26;
                        v29 = v24;
                        v30 = _os_log_send_and_compose_impl(v25, v40, 0, 0, &_mh_execute_header, v29, 16, "Failed to generate dict for persona manifest user: persona user UUID mismatch: %{public}@ != %{public}@", v49, 22);

                        if (v30)
                        {
                          sub_100002A8C(v30);
                        }
                      }

                      else
                      {
                        v30 = 0;
                      }

                      free(v30);
                    }

                    v4 = v39;
                    goto LABEL_35;
                  }
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v41 objects:v52 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = v38;
        v4 = v39;
        v20 = *(v9 + 16);
        v21 = [UMDPersonaManifest dataForPersonaSet:v20];
        uUIDString = [*(v9 + 24) UUIDString];
        [v39 setObject:v21 forKeyedSubscript:uUIDString];

        v7 = v36;
      }

      v6 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v23 = v4;
LABEL_36:

  return v23;
}

@end