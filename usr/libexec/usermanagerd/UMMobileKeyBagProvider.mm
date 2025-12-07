@interface UMMobileKeyBagProvider
- (int)createPersonaKeyForUser:(unsigned int)user personaUUID:(id)d passcode:(id)passcode homeDir:(id)dir;
- (int)removePersonaKeyForUser:(unsigned int)user personaUUID:(id)d volumeUUID:(id)iD;
- (int)setVolumePath:(id)path forPersona:(id)persona;
@end

@implementation UMMobileKeyBagProvider

- (int)createPersonaKeyForUser:(unsigned int)user personaUUID:(id)d passcode:(id)passcode homeDir:(id)dir
{
  dCopy = d;
  dirCopy = dir;
  PersonaKeyForUser = MKBUserSessionCreatePersonaKeyForUser();
  if (PersonaKeyForUser)
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v11 = qword_1000EB4D0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v12 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v20 = 67109890;
        userCopy2 = user;
        v22 = 2114;
        v23 = dCopy;
        v24 = 2114;
        v25 = dirCopy;
        v26 = 1024;
        v27 = PersonaKeyForUser;
        v14 = _os_log_send_and_compose_impl(v13, &v19, 0, 0, &_mh_execute_header, v11, 16, "MKBUserSessionCreatePersonaKeyForUser(%u, %{public}@, %{public}@) failed: %{darwin.errno}d", &v20, 34);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v11 = qword_1000EB4D0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v20 = 67109634;
        userCopy2 = user;
        v22 = 2114;
        v23 = dCopy;
        v24 = 2114;
        v25 = dirCopy;
        v14 = _os_log_send_and_compose_impl(v16, &v19, 0, 0, &_mh_execute_header, v11, 0, "Created MKB persona key for user %u, persona: %{public}@, homeDir: %{public}@", &v20, 28);
LABEL_18:
        v17 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }

        goto LABEL_21;
      }

LABEL_20:
      v17 = 0;
LABEL_21:
      free(v17);
    }
  }

  return PersonaKeyForUser;
}

- (int)removePersonaKeyForUser:(unsigned int)user personaUUID:(id)d volumeUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = iDCopy;
  if (iDCopy)
  {
    v29 = @"MKBUserSessionVolumeUUID";
    v30 = iDCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = MKBUserSessionRemovePersonaKeyForUser();
  if (v11)
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986E8();
    }

    v12 = qword_1000EB4D0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v13 = sub_1000011A8(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v21 = 67109890;
        userCopy2 = user;
        v23 = 2114;
        v24 = dCopy;
        v25 = 2114;
        v26 = v9;
        v27 = 1024;
        v28 = v11;
        v15 = _os_log_send_and_compose_impl(v14, &v20, 0, 0, &_mh_execute_header, v12, 16, "MKBUserSessionRemovePersonaKeyForUser(%u, %{public}@, %{public}@) failed: %{darwin.errno}d", &v21, 34);
        goto LABEL_21;
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986E8();
    }

    v12 = qword_1000EB4D0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v21 = 67109634;
        userCopy2 = user;
        v23 = 2114;
        v24 = dCopy;
        v25 = 2114;
        v26 = v9;
        v15 = _os_log_send_and_compose_impl(v17, &v20, 0, 0, &_mh_execute_header, v12, 0, "Removed MKB persona key for user %u, persona: %{public}@, volumeUUID: %{public}@", &v21, 28);
LABEL_21:
        v18 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_24;
      }

LABEL_23:
      v18 = 0;
LABEL_24:
      free(v18);
    }
  }

  return v11;
}

- (int)setVolumePath:(id)path forPersona:(id)persona
{
  pathCopy = path;
  personaCopy = persona;
  v7 = MKBUserSessionSetVolumeToPersona();
  if (v7)
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v8 = qword_1000EB4D0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
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
        v17 = 138543874;
        v18 = pathCopy;
        v19 = 2114;
        v20 = personaCopy;
        v21 = 1024;
        v22 = v7;
        v11 = _os_log_send_and_compose_impl(v10, &v16, 0, 0, &_mh_execute_header, v8, 16, "MKBUserSessionSetVolumeToPersona(%{public}@, %{public}@) failed: %d", &v17, 28);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB4D8 != -1)
    {
      sub_1000986D4();
    }

    v8 = qword_1000EB4D0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = 0;
      v12 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v17 = 138543618;
        v18 = pathCopy;
        v19 = 2114;
        v20 = personaCopy;
        v11 = _os_log_send_and_compose_impl(v13, &v16, 0, 0, &_mh_execute_header, v8, 2, "MKBUserSessionSetVolumeToPersona(%{public}@, %{public}@)", &v17, 22);
LABEL_18:
        v14 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
LABEL_21:
      free(v14);
    }
  }

  return v7;
}

@end