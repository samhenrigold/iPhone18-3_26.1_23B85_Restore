uint64_t sub_F38()
{
  v1 = OBJC_IVAR____TtC35AccountSuggestionNotificationPlugin35AccountSuggestionNotificationPlugin____lazy_storage___manager;
  if (*(v0 + OBJC_IVAR____TtC35AccountSuggestionNotificationPlugin35AccountSuggestionNotificationPlugin____lazy_storage___manager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC35AccountSuggestionNotificationPlugin35AccountSuggestionNotificationPlugin____lazy_storage___manager);
  }

  else
  {
    v3 = v0;
    sub_165C();
    swift_allocObject();
    v2 = sub_162C();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSuggestionNotificationPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1114(void *a1, int a2, void *a3)
{
  v39 = a3;
  v40 = a1;
  v4 = sub_167C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  sub_165C();
  if (sub_15FC())
  {
    if (MKBDeviceUnlockedSinceBoot())
    {
      sub_161C();
      v20 = sub_166C();
      v21 = sub_168C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = a2;
        _os_log_impl(&dword_0, v20, v21, "AccountSuggestionNotificationPlugin called with changeType %u", v22, 8u);
      }

      v23 = *(v5 + 8);
      v23(v14, v4);
      switch(a2)
      {
        case 3:
          if (v39)
          {
            v24 = v39;
            sub_F38();
            sub_163C();
            goto LABEL_21;
          }

          break;
        case 2:
          if (v40)
          {
            v24 = v40;
            sub_F38();
            sub_164C();
            goto LABEL_21;
          }

          break;
        case 1:
          if (v40)
          {
            v24 = v40;
            sub_F38();
            sub_160C();
LABEL_21:
          }

          break;
        default:
          sub_161C();
          v32 = sub_166C();
          v33 = sub_168C();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_0, v32, v33, "unknown change type??", v34, 2u);
          }

          v23(v11, v4);
          break;
      }

      sub_161C();
      v35 = sub_166C();
      v36 = sub_168C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "AccountSuggestionNotificationPlugin finished", v37, 2u);
      }

      return (v23)(v8, v4);
    }

    sub_161C();
    v29 = sub_166C();
    v30 = sub_168C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Not unlocked since first boot, we can't do anything", v31, 2u);
    }

    return (*(v5 + 8))(v17, v4);
  }

  else
  {
    sub_161C();
    v25 = sub_166C();
    v26 = sub_168C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Feature disabled", v27, 2u);
    }

    return (*(v5 + 8))(v19, v4);
  }
}