id sub_E70(uint64_t a1)
{
  if (qword_8548 != -1)
  {
    sub_15F8();
  }

  v2 = qword_8540;

  return v2;
}

void sub_1024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1044(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = sub_E70(WeakRetained);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "removed";
      if (a3)
      {
        v9 = "added";
      }

      v19 = 136315394;
      v20 = v9;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Display device %s: %{public}@", &v19, 0x16u);
    }

    v10 = [v5 propertyForKey:@"UniqueID"];
    if (a3)
    {
      v11 = [[HIDDisplayPresetInterface alloc] initWithMatching:v7[2]];
      if (v11)
      {
        [v7 setPresetIndexForDevice:v11 uniqueID:v10];
      }

      else
      {
        v12 = sub_E70(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_160C(v7 + 2, v12, v13, v14, v15, v16, v17, v18);
        }
      }
    }

    else
    {
      v11 = v7;
      objc_sync_enter(v11);
      [v11[3] removeObject:v10];
      objc_sync_exit(v11);
    }
  }
}

void sub_1554(id a1)
{
  qword_8540 = os_log_create("com.apple.iohid", "HIDDisplaySessionFilter");

  _objc_release_x1();
}

void sub_1598(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_160C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_1598(&dword_0, a2, a3, "No valid HID device for matching %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_167C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1598(&dword_0, a2, a3, "Failed to set active preset to factory default preset with error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_16E8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1598(&dword_0, a2, a3, "Failed to get active preset index with %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1754(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1598(&dword_0, a2, a3, "Failed to get factory default preset index with %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

v31, v32);
    }

    v10 = v12;
    goto LABEL_15;
  }

  if (v8 != v11)
  {
    v14 = sub_E70(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v43 = v11;
      v44 = 2048;
      v45 = v8;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Setting active preset index (%ld) to factory default preset index (%ld)", buf, 0x16u);
    }

    v39 = v12;
    v15 = [v6 setActivePresetIndex:v8 error:&v39];
    v10 = v39;

    if (v15)
    {
      goto LABEL_8;
    }

    v20 = sub_E70(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_167C(v10, v20, v33, v34, v35, v36, v37, v38);
    }

LABEL_15:

    objc_sync_enter(self);
    v18 = 0;
    goto LABEL_9;
  }

  v10 = v12;
LABEL_8:
  v17 = self;
  objc_sync_enter(v17);
  [(NSMutableArray *)v17->_debugInfo addObject:v7];
  v18 = 1;
LABEL_9:
  objc_sync_exit(self);

  return v18;
}

@end