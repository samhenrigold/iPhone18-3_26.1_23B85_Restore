id sub_29C8E11A0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29C8E11F8()
{
  v0 = sub_29C8E1700();
  sub_29C8E167C(v0, qword_2A1796CE8);
  sub_29C8E1644(v0, qword_2A1796CE8);
  return sub_29C8E16F0();
}

void sub_29C8E1278(void *a1, int a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_19;
  }

  v6 = [a1 accountType];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 identifier];

  if (!v8)
  {
LABEL_19:
    sub_29C8E1710();
    goto LABEL_20;
  }

  v9 = sub_29C8E1710();
  v11 = v10;

  v12 = sub_29C8E1710();
  if (!v11)
  {
LABEL_20:

    return;
  }

  if (v9 == v12 && v11 == v13)
  {

    if (a2 != 2)
    {
LABEL_11:
      if (a2 == 1)
      {
        if (qword_2A1796CE0 != -1)
        {
          swift_once();
        }

        v16 = sub_29C8E1700();
        sub_29C8E1644(v16, qword_2A1796CE8);
        v17 = sub_29C8E16E0();
        v18 = sub_29C8E1720();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_29C8E0000, v17, v18, "LockdownModeAccountNotificationPlugin: account added", v19, 2u);
          MEMORY[0x29ED4A040](v19, -1, -1);
        }

        notify_post("com.apple.LockdownMode.accountChanged");
      }

      return;
    }
  }

  else
  {
    v15 = sub_29C8E1730();

    if ((v15 & 1) == 0)
    {
      return;
    }

    if (a2 != 2)
    {
      goto LABEL_11;
    }
  }

  if (a3)
  {
    v20 = objc_opt_self();
    v30 = a1;
    v31 = a3;
    v21 = [v20 sharedInstance];
    v22 = [v21 securityLevelForAccount_];

    if (v22 == 4 || (v23 = [v20 sharedInstance], v24 = objc_msgSend(v23, sel_securityLevelForAccount_, v30), v23, v24 != 4))
    {

      v29 = v30;
    }

    else
    {
      if (qword_2A1796CE0 != -1)
      {
        swift_once();
      }

      v25 = sub_29C8E1700();
      sub_29C8E1644(v25, qword_2A1796CE8);
      v26 = sub_29C8E16E0();
      v27 = sub_29C8E1720();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_29C8E0000, v26, v27, "LockdownModeAccountNotificationPlugin: account is now eligible", v28, 2u);
        MEMORY[0x29ED4A040](v28, -1, -1);
      }

      notify_post("com.apple.LockdownMode.accountChanged");
      v29 = v31;
    }
  }
}

uint64_t sub_29C8E1644(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_29C8E167C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}