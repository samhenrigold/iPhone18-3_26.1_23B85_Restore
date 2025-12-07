void _os_eventlink_dispose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    free(*(a1 + 16));
  }

  if (*(a1 + 32) && *(a1 + 32) != -1)
  {
    mach_port_deallocate(mach_task_self_, *(a1 + 32));
  }

  if (*(a1 + 36))
  {
    if (*(a1 + 36) != -1)
    {
      mach_port_deallocate(mach_task_self_, *(a1 + 36));
    }
  }
}

void *_os_eventlink_create_internal(const char *a1)
{
  v3 = _os_object_alloc(_OS_os_eventlink_vtable, 0x30uLL);
  if (v3)
  {
    if (a1)
    {
      v2 = _dispatch_strdup_if_mutable(a1);
      if (v2 != a1)
      {
        v3[3] |= 1uLL;
      }

      v3[2] = v2;
    }

    return v3;
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    return 0;
  }
}

uint64_t os_eventlink_activate(uint64_t a1)
{
  v6 = a1;
  v5 = 0;
  if (!*(a1 + 32) || *(v6 + 32) == -1)
  {
    if (_os_eventlink_is_cancelled(*(v6 + 24)))
    {
      v5 = 89;
      v8 = 1;
      v9 = 1;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
      return v5;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      v3 = mach_eventlink_create();
      if (v3)
      {
        return _mach_error_to_errno(v3);
      }

      v1 = 0;
      atomic_compare_exchange_strong_explicit((v6 + 32), &v1, __b[4], memory_order_relaxed, memory_order_relaxed);
      if (!v1)
      {
        return _mach_error_to_errno(v3);
      }

      else
      {
        if (LODWORD(__b[4]) && LODWORD(__b[4]) != -1)
        {
          mach_port_deallocate(mach_task_self_, __b[4]);
        }

        if (HIDWORD(__b[4]) && HIDWORD(__b[4]) != -1)
        {
          mach_port_deallocate(mach_task_self_, HIDWORD(__b[4]));
        }

        return 22;
      }
    }
  }

  else
  {
    return v5;
  }
}

uint64_t _mach_error_to_errno(int a1)
{
  switch(a1)
  {
    case 0:
      v2 = 0;
      goto LABEL_15;
    case 4:
      v2 = 22;
      goto LABEL_15;
    case 13:
      v2 = 37;
LABEL_15:
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = v2;
      return v2;
    case 14:
      v2 = 53;
      goto LABEL_15;
    case 15:
    case 37:
      v2 = 89;
      goto LABEL_15;
    case 49:
      v2 = 60;
      goto LABEL_15;
  }

  return -1;
}

uint64_t os_eventlink_extract_remote_port(uint64_t a1, unsigned int *a2)
{
  if (!_os_eventlink_inactive(*(a1 + 32)))
  {
    if (_os_eventlink_is_cancelled(*(a1 + 24)))
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
      return 89;
    }

    v3 = __swp(0, (a1 + 36));
    if (v3 && v3 != -1)
    {
      *a2 = v3;
      return 0;
    }
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  return 22;
}

void *os_eventlink_create_with_port(const char *a1, mach_port_name_t a2)
{
  internal = _os_eventlink_create_internal(a1);
  if (!internal)
  {
    return 0;
  }

  if (mach_port_mod_refs(mach_task_self_, a2, 0, 1))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (*(internal + 8))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  *(internal + 8) = a2;
  return internal;
}

void *os_eventlink_create_remote_with_eventlink(const char *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  name = 0;
  v4 = os_eventlink_extract_remote_port(a2, &name);
  if (v4)
  {
    v9 = 1;
    v10 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(StatusReg + 8) = v4;
    return 0;
  }

  else
  {
    v3 = os_eventlink_create_with_port(v7, name);
    mach_port_mod_refs(mach_task_self_, name, 0, -1);
    return v3;
  }
}

uint64_t os_eventlink_associate(uint64_t a1, uint64_t a2)
{
  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    if (a2 != 1)
    {
      _dispatch_thread_getspecific(3);
    }

    v3 = mach_eventlink_associate();
    return _mach_error_to_errno(v3);
  }
}

uint64_t os_eventlink_disassociate(uint64_t a1)
{
  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    return 0;
  }

  else
  {
    v2 = mach_eventlink_disassociate();
    if (v2 == 37)
    {
      return 0;
    }

    else
    {
      return _mach_error_to_errno(v2);
    }
  }
}

uint64_t os_eventlink_wait_until(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = _os_clockid_normalize_to_machabs(a2, a3);
  v4 = mach_absolute_time();
  return os_eventlink_wait_until_internal(a1, a2, v4 + v6, a4);
}

uint64_t _os_clockid_normalize_to_machabs(int a1, uint64_t a2)
{
  v3 = 0;
  if (a1 == 32)
  {
    return a2;
  }

  return v3;
}

uint64_t os_eventlink_wait_until_internal(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = mach_eventlink_wait_until();
    if (v6 || !a4)
    {
      if (v6 == 15 && !_os_eventlink_is_cancelled(*(a1 + 24)))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }
    }

    else
    {
      *a4 = *(a1 + 40) - v5;
    }

    return _mach_error_to_errno(v6);
  }
}

uint64_t os_eventlink_signal(uint64_t a1)
{
  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    v2 = mach_eventlink_signal();
    return _mach_error_to_errno(v2);
  }
}

uint64_t os_eventlink_signal_and_wait_until_internal(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2 != 32)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (_os_eventlink_inactive(*(a1 + 32)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 22;
  }

  else if (_os_eventlink_is_cancelled(*(a1 + 24)))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 89;
    return 89;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = mach_eventlink_signal_wait_until();
    if (v6 || !a4)
    {
      if (v6 == 15 && !_os_eventlink_is_cancelled(*(a1 + 24)))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }
    }

    else
    {
      *a4 = *(a1 + 40) - v5;
    }

    return _mach_error_to_errno(v6);
  }
}

uint64_t os_eventlink_signal_and_wait_until(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = _os_clockid_normalize_to_machabs(a2, a3);
  v4 = mach_absolute_time();
  return os_eventlink_signal_and_wait_until_internal(a1, a2, v4 + v6, a4);
}

uint64_t os_eventlink_cancel(uint64_t a1)
{
  result = _os_eventlink_is_cancelled(*(a1 + 24));
  if ((result & 1) == 0)
  {
    atomic_fetch_or_explicit((a1 + 24), 2uLL, memory_order_relaxed);
    name = *(a1 + 32);
    if (name)
    {
      if (name != -1)
      {
        if (mach_port_mod_refs(mach_task_self_, name, 0, 1))
        {
          _os_assert_log();
          _os_crash();
          __break(1u);
        }

        return mach_eventlink_destroy();
      }
    }
  }

  return result;
}

void _os_workgroup_xref_dispose(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v1[1](*v1);
    free(v1);
  }
}

uint64_t _os_workgroup_interval_xref_dispose(uint64_t result)
{
  if ((*(result + 24) & 8) != 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x1FF0);
  }

  return result;
}

void _os_workgroup_dispose(uint64_t a1)
{
  if (*(a1 + 60))
  {
    _dispatch_abort(165, *(a1 + 60) == 0);
  }

  v1 = *(a1 + 24);
  if (_os_workgroup_has_backing_workinterval(a1))
  {
    if (mach_port_mod_refs(mach_task_self_, *(a1 + 40), 0, -1))
    {
      _os_assumes_log();
    }

    if (_os_workgroup_is_configurable(v1) && work_interval_destroy())
    {
      _os_assumes_log();
    }
  }

  if ((v1 & 4) != 0)
  {
    free(*(a1 + 16));
  }
}

uint64_t _os_workgroup_tsd_cleanup(uint64_t result)
{
  if (result)
  {
    __snprintf_chk(v1, 0x200uLL, 0, 0x200uLL, "BUG IN CLIENT: Thread exiting without leaving workgroup '%s'", *(result + 16));
    _os_crash();
    __break(1u);
    JUMPOUT(0x2248);
  }

  return result;
}

void _os_workgroup_join_token_tsd_cleanup(void *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    _os_workgroup_leave_update_wg(a1[2]);
    free(a1);
  }
}

void _os_workgroup_leave_update_wg(uint64_t a1)
{
  if (_os_workgroup_get_current() != a1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!atomic_fetch_add_explicit((a1 + 60), 0xFFFFFFFF, memory_order_relaxed))
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Joined count underflowed";
    __break(1u);
  }

  _os_workgroup_set_current(0);
}

uint64_t _os_workgroup_get_backing_workinterval(uint64_t a1)
{
  if (a1 && _os_workgroup_has_backing_workinterval(a1))
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t os_workgroup_interval_data_set_flags(_DWORD *a1, int a2)
{
  v3 = 0;
  if (!_os_workgroup_client_interval_data_is_valid(a1) || (a2 & 0xFFFFFFFE) != 0)
  {
    return 22;
  }

  else
  {
    a1[1] = a2;
  }

  return v3;
}

BOOL _os_workgroup_client_interval_data_is_valid(_DWORD *a1)
{
  v2 = 0;
  if (a1)
  {
    return _os_workgroup_client_interval_data_initialized(a1);
  }

  return v2;
}

uint64_t os_workgroup_interval_data_set_complexity(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  if (_os_workgroup_client_interval_data_is_valid(a1))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        *(a1 + 24) = 1;
      }

      else if (a2 == 2)
      {
        *(a1 + 24) = a3;
      }

      else
      {
        return 22;
      }
    }

    else
    {
      *(a1 + 24) = 0;
    }

    return v4;
  }

  else
  {
    return 22;
  }
}

uint64_t os_workgroup_interval_data_set_telemetry(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  if (_os_workgroup_telemetry_flavor_is_valid(a2) && (a2 != 1 || a4 == 40))
  {
    *(a1 + 16) = a2;
    *(a1 + 8) = a3;
    *(a1 + 18) = a4;
    return 0;
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

uint64_t os_workgroup_attr_set_interval_type(uint64_t a1, unsigned __int16 a2)
{
  v3 = 0;
  if (_os_workgroup_client_attr_is_valid(a1) && _os_workgroup_type_is_interval_type(a2))
  {
    *(a1 + 8) = a2;
  }

  else
  {
    return 22;
  }

  return v3;
}

BOOL _os_workgroup_client_attr_is_valid(_DWORD *a1)
{
  v2 = 0;
  if (a1)
  {
    return _os_workgroup_client_attr_initialized(a1);
  }

  return v2;
}

BOOL _os_workgroup_type_is_interval_type(unsigned __int16 a1)
{
  v2 = 0;
  if (a1)
  {
    return a1 <= 0xAu;
  }

  return v2;
}

uint64_t os_workgroup_attr_set_flags(_DWORD *a1, int a2)
{
  v3 = 0;
  if (_os_workgroup_client_attr_is_valid(a1))
  {
    a1[1] = a2;
  }

  else
  {
    return 22;
  }

  return v3;
}

uint64_t os_workgroup_attr_set_telemetry_flavor(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (_os_workgroup_client_attr_is_valid(a1) && _os_workgroup_telemetry_flavor_is_valid(a2))
  {
    *(a1 + 10) = a2;
  }

  else
  {
    return 22;
  }

  return v3;
}

unsigned __int16 *os_workgroup_interval_copy_current_4AudioToolbox()
{
  object = _os_workgroup_get_current();
  if (object)
  {
    if (_os_workgroup_type_is_audio_type(object[28]))
    {
      return os_retain(object);
    }

    else
    {
      return 0;
    }
  }

  return object;
}

BOOL _os_workgroup_type_is_audio_type(__int16 a1)
{
  v2 = 1;
  if (a1 != 4)
  {
    return a1 == 3;
  }

  return v2;
}

void *os_workgroup_create(const char *a1, _DWORD *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  work_interval = 0;
  memset(__b, 0, sizeof(__b));
  v7 = _os_workgroup_client_attr_resolve(__b, v7, &_os_workgroup_attr_default);
  if (v7)
  {
    if (_os_workgroup_type_is_default_type(*(v7 + 4)))
    {
      if (_os_workgroup_attr_is_propagating(v7))
      {
        v12 = 1;
        v15 = 1;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(StatusReg + 8) = 45;
        return 0;
      }

      else if (_os_workgroup_attr_has_telemetry_enabled(v7))
      {
        v13 = 1;
        v14 = 1;
        v21 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v21 + 8) = 45;
        return 0;
      }

      else
      {
        v3 = 0;
        work_interval = _os_workgroup_create_work_interval(v7, &v3);
        if (work_interval)
        {
          v6 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL);
          v6[4] = work_interval;
          *(v6 + 10) = v3;
          v6[3] = 1;
          *(v6 + 28) = *(v7 + 4);
          _os_workgroup_set_name(v6, v8);
          return v6;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v11 = 1;
      v16 = 1;
      v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v19 + 8) = 22;
      return 0;
    }
  }

  else
  {
    v10 = 1;
    v17 = 1;
    v18 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v18 + 8) = 22;
    return 0;
  }
}

_DWORD *_os_workgroup_client_attr_resolve(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a2)
  {
    if (!_os_workgroup_client_attr_is_valid(a2))
    {
      return 0;
    }

    memcpy(a1, a2, 0x40uLL);
    if (*a1 == 799564724)
    {
      if (!a1[1])
      {
        a1[1] = *(a3 + 4);
      }

      if (!*(a1 + 4))
      {
        *(a1 + 4) = *(a3 + 8);
      }
    }

    else if (*a1 != 799564740)
    {
      return 0;
    }

    *a1 = 2015762650;
  }

  else
  {
    memcpy(a1, a3, 0x40uLL);
  }

  if (!_os_workgroup_attr_is_resolved(a1))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    JUMPOUT(0x2D20);
  }

  return a1;
}

uint64_t _os_workgroup_create_work_interval(uint64_t a1, uint64_t a2)
{
  _wg_type_to_wi_flags(*(a1 + 8));
  _os_workgroup_attr_is_differentiated(a1);
  _os_workgroup_attr_has_workload_id(a1);
  _os_workgroup_attr_has_telemetry_enabled(a1);
  *&v3[8] = 0;
  *v3 = work_interval_create();
  if (*v3)
  {
    return 0;
  }

  if ((work_interval_copy_port() & 0x80000000) == 0)
  {
    return *&v3[4];
  }

  work_interval_destroy();
  return 0;
}

void _os_workgroup_set_name(uint64_t a1, const char *a2)
{
  v4 = a2;
  if (a2)
  {
    v3 = _dispatch_strdup_if_mutable(a2);
    if (v3 != v4)
    {
      *(a1 + 24) |= 4uLL;
      v4 = v3;
    }
  }

  *(a1 + 16) = v4;
  v2 = *(a1 + 24);
  if (_os_workgroup_has_backing_workinterval(a1) && _os_workgroup_is_configurable(v2))
  {
    _os_workgroup_set_work_interval_name(a1, v4);
  }
}

void *os_workgroup_interval_create(const char *a1, int a2, unsigned __int16 *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  work_interval = 0;
  memset(__b, 0, sizeof(__b));
  v8 = _os_workgroup_client_attr_resolve(__b, v8, &_os_workgroup_interval_attr_default);
  if (v8)
  {
    if (_os_workgroup_type_is_interval_type(*(v8 + 4)))
    {
      if (_os_workgroup_attr_is_differentiated(v8))
      {
        if (_os_workgroup_attr_is_propagating(v8))
        {
          v15 = 1;
          v16 = 1;
          StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          **(StatusReg + 8) = 45;
          return 0;
        }

        else
        {
          v4 = 0;
          work_interval = _os_workgroup_create_work_interval(v8, &v4);
          if (work_interval)
          {
            v7 = _os_object_alloc(_OS_os_workgroup_interval_vtable, 0x50uLL);
            v7[4] = work_interval;
            *(v7 + 10) = v4;
            *(v7 + 16) = v9;
            v7[9] = work_interval_instance_alloc();
            *(v7 + 17) = 0;
            *(v7 + 28) = *(v8 + 4);
            v7[3] = 1;
            *(v7 + 22) = *(v8 + 5);
            _os_workgroup_set_name(v7, v10);
            return v7;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v14 = 1;
        v17 = 1;
        v22 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v22 + 8) = 22;
        return 0;
      }
    }

    else
    {
      v13 = 1;
      v18 = 1;
      v21 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v21 + 8) = 22;
      return 0;
    }
  }

  else
  {
    v12 = 1;
    v19 = 1;
    v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v20 + 8) = 22;
    return 0;
  }
}

void *os_workgroup_create_with_workload_id(const char *a1, const char *a2, __int16 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  work_interval = 0;
  v6 = &_os_workgroup_with_workload_id_attr_default;
  memset(__b, 0, sizeof(__b));
  v9 = _os_workgroup_client_attr_resolve(__b, v9, &_os_workgroup_with_workload_id_attr_default);
  if (v9)
  {
    v9 = _os_workgroup_workload_id_attr_resolve(v10, v9, v6);
    if (v9)
    {
      if (v9[1] == v6[1])
      {
        if (_os_workgroup_type_is_default_type(*(v9 + 4)))
        {
          if (_os_workgroup_attr_is_propagating(v9))
          {
            _dispatch_log("BUG IN CLIENT of %s: Unsupported attribute flags: 0x%x", "os_workgroup_create_with_workload_id", v9[1]);
            v17 = 1;
            v20 = 1;
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            **(StatusReg + 8) = 45;
            return 0;
          }

          else if (_os_workgroup_attr_has_telemetry_enabled(v9))
          {
            v18 = 1;
            v19 = 1;
            v30 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            **(v30 + 8) = 45;
            return 0;
          }

          else
          {
            v4 = 0;
            work_interval = _os_workgroup_create_work_interval(v9, &v4);
            if (work_interval)
            {
              v8 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL);
              v8[4] = work_interval;
              *(v8 + 10) = v4;
              v8[3] = 1;
              *(v8 + 28) = *(v9 + 4);
              if (_os_workgroup_set_work_interval_workload_id(v8, v10, v9[3]))
              {
                _os_object_release(v8);
                return 0;
              }

              else
              {
                _os_workgroup_set_name(v8, v11);
                return v8;
              }
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
          _dispatch_log("BUG IN CLIENT of %s: Non-default workload type: %s (%hd)", "os_workgroup_create_with_workload_id", v10, *(v9 + 4));
          v16 = 1;
          v21 = 1;
          v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          **(v28 + 8) = 22;
          return 0;
        }
      }

      else
      {
        _dispatch_log("BUG IN CLIENT of %s: Non-default attribute flags: 0x%x", "os_workgroup_create_with_workload_id", v9[1]);
        v15 = 1;
        v22 = 1;
        v27 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v27 + 8) = 22;
        return 0;
      }
    }

    else
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", "os_workgroup_create_with_workload_id", v10, LOWORD(__b[2]));
      v14 = 1;
      v23 = 1;
      v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v26 + 8) = 22;
      return 0;
    }
  }

  else
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid attribute pointer", "os_workgroup_create_with_workload_id");
    v13 = 1;
    v24 = 1;
    v25 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v25 + 8) = 22;
    return 0;
  }
}

uint64_t _os_workgroup_workload_id_attr_resolve(const char *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = _os_workgroup_lookup_type_from_workload_id(a1, (a2 + 12), &v5);
  if (!_os_workgroup_type_is_default_type(v4))
  {
    if (*(v7 + 8) == *(v6 + 8))
    {
      *(v7 + 8) = v4;
    }

    else if (*(v7 + 8) == v5)
    {
      *(v7 + 8) = v4;
    }

    else if (v4 != *(v7 + 8))
    {
      return 0;
    }

    return v7;
  }

  return v7;
}

uint64_t _os_workgroup_set_work_interval_workload_id(uint64_t a1, const char *a2, int a3)
{
  if (!*(a1 + 40) || *(a1 + 40) == -1)
  {
    v3 = *(a1 + 40);
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid workgroup port";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x372CLL);
  }

  if (a3)
  {
    v6 = a3 & 0xFFFFFFFE;
    __strlcpy_chk();
    _wg_type_to_wi_flags(*(a1 + 56));
    v5 = __work_interval_ctl();
    if (v5 == -1)
    {
      v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v5)
      {
        _dispatch_bug(586, v5);
      }
    }

    if (v5 || (v6 & 1) != 0)
    {
      if (v5)
      {
        _dispatch_log("BUG IN CLIENT of %s: Unable to set kernel workload ID: %s (0x%x) -> %d (0x%x)", "_os_workgroup_set_work_interval_workload_id", a2, v6, v5, 0);
      }

      else
      {
        _dispatch_log("BUG IN CLIENT of %s: Unable to set kernel workload ID: %s (0x%x) -> %d (0x%x)", "_os_workgroup_set_work_interval_workload_id", a2, v6, 0, v6);
      }

      if (!v5)
      {
        return 37;
      }
    }

    else
    {
      *(a1 + 24) |= 0x10uLL;
    }

    return v5;
  }

  else
  {
    return 0;
  }
}

void *os_workgroup_interval_create_with_workload_id(const char *a1, const char *a2, int a3, int *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  work_interval = 0;
  v7 = &_os_workgroup_interval_attr_default;
  memset(__b, 0, sizeof(__b));
  v10 = _os_workgroup_client_attr_resolve(__b, v10, &_os_workgroup_interval_attr_default);
  if (v10)
  {
    v10 = _os_workgroup_workload_id_attr_resolve(v12, v10, v7);
    if (v10)
    {
      if (v10[1] == v7[1])
      {
        if (_os_workgroup_type_is_interval_type(*(v10 + 4)))
        {
          if (_os_workgroup_attr_is_differentiated(v10))
          {
            if (_os_workgroup_attr_is_propagating(v10))
            {
              _dispatch_log("BUG IN CLIENT of %s: Unsupported attribute flags: 0x%x", "os_workgroup_interval_create_with_workload_id", v10[1]);
              v20 = 1;
              v21 = 1;
              StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              **(StatusReg + 8) = 45;
              return 0;
            }

            else
            {
              v5 = 0;
              work_interval = _os_workgroup_create_work_interval(v10, &v5);
              if (work_interval)
              {
                v9 = _os_object_alloc(_OS_os_workgroup_interval_vtable, 0x50uLL);
                v9[4] = work_interval;
                *(v9 + 10) = v5;
                *(v9 + 16) = v11;
                v9[9] = work_interval_instance_alloc();
                *(v9 + 17) = 0;
                *(v9 + 28) = *(v10 + 4);
                v9[3] = 1;
                *(v9 + 22) = *(v10 + 5);
                if (_os_workgroup_set_work_interval_workload_id(v9, v12, v10[3]))
                {
                  _os_object_release(v9);
                  return 0;
                }

                else
                {
                  _os_workgroup_set_name(v9, v13);
                  return v9;
                }
              }

              else
              {
                return 0;
              }
            }
          }

          else
          {
            _dispatch_log("BUG IN CLIENT of %s: Invalid attribute flags: 0x%x", "os_workgroup_interval_create_with_workload_id", v10[1]);
            v19 = 1;
            v22 = 1;
            v31 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            **(v31 + 8) = 22;
            return 0;
          }
        }

        else
        {
          _dispatch_log("BUG IN CLIENT of %s: Invalid workload interval type: %s (%hd)", "os_workgroup_interval_create_with_workload_id", v12, *(v10 + 4));
          v18 = 1;
          v23 = 1;
          v30 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          **(v30 + 8) = 22;
          return 0;
        }
      }

      else
      {
        _dispatch_log("BUG IN CLIENT of %s: Non-default attribute flags: 0x%x", "os_workgroup_interval_create_with_workload_id", v10[1]);
        v17 = 1;
        v24 = 1;
        v29 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(v29 + 8) = 22;
        return 0;
      }
    }

    else
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", "os_workgroup_interval_create_with_workload_id", v12, LOWORD(__b[2]));
      v16 = 1;
      v25 = 1;
      v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v28 + 8) = 22;
      return 0;
    }
  }

  else
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid attribute pointer", "os_workgroup_interval_create_with_workload_id");
    v15 = 1;
    v26 = 1;
    v27 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v27 + 8) = 22;
    return 0;
  }
}

int os_workgroup_join(os_workgroup_t wg, os_workgroup_join_token_t token_out)
{
  if (_os_workgroup_get_current())
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 37;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else
  {
    v4 = *(wg + 3);
    if ((v4 & 2) != 0)
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }

    else
    {
      v3 = 0;
      if (_os_workgroup_has_backing_workinterval(wg))
      {
        if (_os_workgroup_is_configurable(v4))
        {
          v3 = work_interval_join();
        }

        else
        {
          v3 = work_interval_join_port();
        }
      }

      if (v3)
      {
        return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        _os_workgroup_join_update_wg(wg, token_out);
        return 0;
      }
    }
  }
}

void os_workgroup_leave(os_workgroup_t wg, os_workgroup_join_token_t token)
{
  if (!_os_workgroup_join_token_initialized(token))
  {
    _os_crash();
    __break(1u);
  }

  v2 = *token->opaque;
  if (v2 != _dispatch_thread_getspecific(3))
  {
    _os_crash();
    __break(1u);
  }

  current = _os_workgroup_get_current();
  if (*&token->opaque[12] != current || current != wg)
  {
    _os_crash();
    __break(1u);
  }

  if (*&token->opaque[4])
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (_os_workgroup_has_backing_workinterval(wg) && work_interval_leave())
  {
    _dispatch_bug(1734, 0);
  }

  _os_workgroup_leave_update_wg(wg);
}

os_workgroup_parallel_t os_workgroup_parallel_create(const char *name, os_workgroup_attr_t attr)
{
  v6 = name;
  __src = attr;
  v4 = 0;
  memset(__b, 0, sizeof(__b));
  if (__src)
  {
    if (!_os_workgroup_client_attr_is_valid(__src))
    {
      v8 = 1;
      v17 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(StatusReg + 8) = 22;
      return 0;
    }

    memcpy(__b, __src, sizeof(__b));
    __src = __b;
    if (__b[0] == 799564724)
    {
      if (!*(__src + 1))
      {
        *(__src + 1) = 6;
      }

      if (!*(__src + 4))
      {
        *(__src + 4) = 64;
      }
    }

    else if (__b[0] != 799564740)
    {
      v9 = 1;
      v16 = 1;
      v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v19 + 8) = 22;
      return 0;
    }

    *__src = 2015762650;
  }

  else
  {
    memcpy(__b, &_os_workgroup_parallel_attr_default, sizeof(__b));
    __src = __b;
  }

  if (!_os_workgroup_attr_is_resolved(__src))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    JUMPOUT(0x4350);
  }

  if (_os_workgroup_type_is_parallel_type(*(__src + 4)))
  {
    if (_os_workgroup_attr_is_propagating(__src))
    {
      v11 = 1;
      v14 = 1;
      v21 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v21 + 8) = 45;
      return 0;
    }

    else if (_os_workgroup_attr_has_telemetry_enabled(__src))
    {
      v12 = 1;
      v13 = 1;
      v22 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(v22 + 8) = 45;
      return 0;
    }

    else
    {
      v4 = _os_object_alloc(_OS_os_workgroup_parallel_vtable, 0x40uLL);
      v4[4] = 0;
      v4[3] = 1;
      *(v4 + 28) = *(__src + 4);
      _os_workgroup_set_name(v4, v6);
      return v4;
    }
  }

  else
  {
    v10 = 1;
    v15 = 1;
    v20 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(v20 + 8) = 22;
    return 0;
  }
}

int os_workgroup_copy_port(os_workgroup_t wg, mach_port_t *mach_port_out)
{
  if (!wg)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!mach_port_out)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  *mach_port_out = 0;
  if ((*(wg + 3) & 2) != 0)
  {
    return 22;
  }

  if (!_os_workgroup_has_backing_workinterval(wg))
  {
    return 22;
  }

  if (mach_port_mod_refs(mach_task_self_, *(wg + 10), 0, 1))
  {
    _dispatch_bug(1467, 0);
    return 12;
  }

  else
  {
    *mach_port_out = *(wg + 10);
    return 0;
  }
}

os_workgroup_t os_workgroup_create_with_port(const char *name, mach_port_t mach_port)
{
  v7 = name;
  namea = mach_port;
  if (mach_port && namea != -1)
  {
    v5 = 0;
    if (_os_workgroup_get_wg_wi_types_from_port(namea, &v5, 0))
    {
      return 0;
    }

    else
    {
      v4 = mach_port_mod_refs(mach_task_self_, namea, 0, 1) == 0;
      v10 = v4;
      v9 = 1491;
      if (v4)
      {
        v3 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL);
        *(v3 + 10) = namea;
        *(v3 + 28) = v5;
        _os_workgroup_set_name(v3, v7);
        return v3;
      }

      else
      {
        _dispatch_bug(v9, v10);
        return 0;
      }
    }
  }

  else
  {
    v11 = 1;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0;
  }
}

uint64_t _os_workgroup_get_wg_wi_types_from_port(unsigned int a1, _WORD *a2, _DWORD *a3)
{
  flags_from_port = work_interval_get_flags_from_port();
  if (flags_from_port)
  {
    return flags_from_port;
  }

  else
  {
    v6 = _wi_flags_to_wg_type(0);
    v5 = _wi_flags_to_wi_type(0);
    if (a2)
    {
      *a2 = v6;
    }

    if (a3)
    {
      *a3 = v5;
    }

    return 0;
  }
}

void *os_workgroup_create_with_workload_id_and_port(const char *a1, const char *a2, mach_port_name_t a3)
{
  v12 = a1;
  v11 = a2;
  name = a3;
  if (a3 && name != -1)
  {
    v9 = 0;
    v8 = 0;
    wg_wi_types_from_port = _os_workgroup_get_wg_wi_types_from_port(name, &v9, &v8);
    if (wg_wi_types_from_port)
    {
      _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", "os_workgroup_create_with_workload_id_and_port", name);
      return 0;
    }

    else
    {
      v6 = 0;
      if (_os_workgroup_workload_id_is_valid_for_wi_type(v11, v8, &v6))
      {
        v5 = mach_port_mod_refs(mach_task_self_, name, 0, 1) == 0;
        v15 = v5;
        v14 = 1536;
        if (v5)
        {
          v4 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL);
          *(v4 + 10) = name;
          *(v4 + 28) = v9;
          wg_wi_types_from_port = _os_workgroup_set_work_interval_workload_id(v4, v11, v6);
          if (!wg_wi_types_from_port || wg_wi_types_from_port == 37)
          {
            _os_workgroup_set_name(v4, v12);
            return v4;
          }

          else
          {
            _os_object_release(v4);
            return 0;
          }
        }

        else
        {
          _dispatch_bug(v14, v15);
          _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", "os_workgroup_create_with_workload_id_and_port", name);
          return 0;
        }
      }

      else
      {
        _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and port interval type: %s vs %hd", "os_workgroup_create_with_workload_id_and_port", v11, v9);
        v17 = 1;
        v18 = 1;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        **(StatusReg + 8) = 22;
        return 0;
      }
    }
  }

  else
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", "os_workgroup_create_with_workload_id_and_port", name);
    v16 = 1;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0;
  }
}

BOOL _os_workgroup_workload_id_is_valid_for_wi_type(const char *a1, int a2, unsigned int *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = _os_workgroup_lookup_type_from_workload_id(a1, a3, &v5);
  return _os_workgroup_type_is_default_type(v4) || _wg_type_to_wi_type(v5) == v7 || _wg_type_to_wi_type(v4) == v7;
}

os_workgroup_t os_workgroup_create_with_workgroup(const char *name, os_workgroup_t wg)
{
  if ((*(wg + 3) & 2) == 0)
  {
    v3 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL);
    *(v3 + 28) = *(wg + 28);
    if (_os_workgroup_has_backing_workinterval(wg))
    {
      if (mach_port_mod_refs(mach_task_self_, *(wg + 10), 0, 1))
      {
        free(v3);
        return 0;
      }

      *(v3 + 10) = *(wg + 10);
    }

    _os_workgroup_set_name(v3, name);
    return v3;
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  return 0;
}

_WORD *os_workgroup_create_with_workload_id_and_workgroup(const char *a1, const char *a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v10 = *(a3 + 24);
  v11 = v10;
  v9 = v10;
  v12 = v10;
  if ((v10 & 2) != 0)
  {
    _dispatch_log("BUG IN CLIENT of %s: Workgroup already cancelled", "os_workgroup_create_with_workload_id_and_workgroup");
    v17 = 1;
    v20 = 1;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return 0;
  }

  else
  {
    v8 = 0;
    v5 = v14;
    v3 = _wg_type_to_wi_type(*(v13 + 56));
    if (_os_workgroup_workload_id_is_valid_for_wi_type(v5, v3, &v8))
    {
      v7 = _os_object_alloc(_OS_os_workgroup_vtable, 0x40uLL);
      *(v7 + 28) = *(v13 + 56);
      if (_os_workgroup_has_backing_workinterval(v13))
      {
        if (mach_port_mod_refs(mach_task_self_, *(v13 + 40), 0, 1))
        {
          _dispatch_log("BUG IN CLIENT of %s: Invalid workgroup port 0x%x", "os_workgroup_create_with_workload_id_and_workgroup", *(v13 + 40));
          free(v7);
          return 0;
        }

        *(v7 + 10) = *(v13 + 40);
        v6 = _os_workgroup_set_work_interval_workload_id(v7, v14, v8);
        if (v6 && v6 != 37)
        {
          _os_object_release(v7);
          return 0;
        }
      }

      _os_workgroup_set_name(v7, v15);
      return v7;
    }

    _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and workgroup interval type: %s vs %hd", "os_workgroup_create_with_workload_id_and_workgroup", v14, *(v13 + 56));
    v18 = 1;
    v19 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(StatusReg + 8) = 22;
    return 0;
  }
}

int os_workgroup_max_parallel_threads(os_workgroup_t wg, os_workgroup_mpt_attr_t attr)
{
  if (!wg)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (*(wg + 28) != 4 && *(wg + 28) != 3)
  {
    return pthread_qos_max_parallelism();
  }

  else
  {
    return pthread_time_constraint_max_parallelism();
  }
}

void _os_workgroup_join_update_wg(uint64_t a1, uint64_t a2)
{
  if (_os_workgroup_get_current())
  {
    __assert_rtn("_os_workgroup_join_update_wg", "workgroup.c", 1701, "cur_wg == NULL");
  }

  atomic_fetch_add_explicit((a1 + 60), 1u, memory_order_relaxed);
  __memset_chk();
  *a2 = 1298094680;
  *(a2 + 4) = _dispatch_thread_getspecific(3);
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  _os_workgroup_set_current(a1);
}

void _os_workgroup_set_current(uint64_t a1)
{
  if (a1)
  {
    _os_object_retain_internal(a1);
  }

  current = _os_workgroup_get_current();
  _dispatch_thread_setspecific(116, a1);
  if (current)
  {
    _os_object_release_internal(current);
  }
}

uint64_t os_workgroup_set_working_arena(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!is_mul_ok(4uLL, a3) || 4 * a3 >= 0xFFFFFFFFFFFFFFE8 || (v18 = malloc_type_calloc()) == 0)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else
  {
    v18[4] = a3;
    *v18 = a2;
    *(v18 + 1) = a4;
    v16 = 0;
    v15 = 0;
    v17 = *(a1 + 48);
    do
    {
      if (_wg_joined_cnt(v17, *(&v17 + 1)))
      {
        break;
      }

      _wg_arena(v17, *(&v17 + 1));
      v16 = v4;
      _X1 = *(&v17 + 1);
      _X2 = v18;
      __asm { CASP            X0, X1, X2, X3, [X8] }

      *&v12 = _X0;
      *(&v12 + 1) = *(&v17 + 1);
      v14 = _X0 == v17;
      if (_X0 != v17)
      {
        v17 = v12;
      }

      v15 = v14;
    }

    while (!v14);
    if (v15)
    {
      if (v16)
      {
        v16[1](*v16);
        free(v16);
      }

      return 0;
    }

    else
    {
      free(v18);
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }
}

__n128 _wg_arena(unint64_t a1, unint64_t a2)
{
  result.n128_u64[0] = a1;
  result.n128_u64[1] = a2;
  return result;
}

uint64_t os_workgroup_get_working_arena(uint64_t a1, unsigned int *a2)
{
  if (_os_workgroup_get_current() != a1)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x5718);
  }

  if (!*(a1 + 60))
  {
    _dispatch_abort(1813, *(a1 + 60) != 0);
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    return 0;
  }

  if (a2 && !*(v7 + 16))
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x57C0);
  }

  if (a2)
  {
    add_explicit = 0;
    v5 = 0;
    for (i = 0; i < *(v7 + 16); ++i)
    {
      v3 = *(v7 + 24 + 4 * i);
      if (v3 == _dispatch_thread_getspecific(3))
      {
        add_explicit = i;
        v5 = 1;
        break;
      }
    }

    if ((v5 & 1) == 0)
    {
      add_explicit = atomic_fetch_add_explicit((v7 + 20), 1u, memory_order_relaxed);
      if (add_explicit >= *(v7 + 16))
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x58C8);
      }

      *(v7 + 24 + 4 * add_explicit) = _dispatch_thread_getspecific(3);
    }

    *a2 = add_explicit;
  }

  return *v7;
}

int os_workgroup_interval_start(os_workgroup_interval_t wg, uint64_t start, uint64_t deadline, os_workgroup_interval_data_t data)
{
  if (_os_workgroup_get_current() != wg)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x5A20);
  }

  if (!_os_workgroup_interval_invalid_telemetry_request(wg, data) && deadline >= start && _start_time_is_in_past(*(wg + 16), start))
  {
    if (os_unfair_lock_trylock(wg + 17))
    {
      v10 = _os_workgroup_interval_data_complexity(data);
      v8 = 0;
      v7 = *(wg + 3);
      while (1)
      {
        if ((v7 & 0xA) != 0)
        {
          v8 = 22;
          goto LABEL_21;
        }

        if (!_os_workgroup_is_configurable(v7))
        {
          v8 = 1;
          goto LABEL_21;
        }

        if (v10 && !_os_workgroup_has_workload_id(v7))
        {
          break;
        }

        v4 = v7;
        v5 = v7;
        atomic_compare_exchange_strong_explicit((wg + 24), &v5, v7 | 8, memory_order_relaxed, memory_order_relaxed);
        if (v5 != v4)
        {
          v7 = v5;
        }

        if (v5 == v4)
        {
          goto LABEL_21;
        }
      }

      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
LABEL_21:
      if (v8)
      {
        os_unfair_lock_unlock(wg + 17);
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = v8;
        return v8;
      }

      else
      {
        work_interval_instance_clear();
        work_interval_instance_set_start();
        work_interval_instance_set_deadline();
        work_interval_instance_set_complexity();
        v9 = work_interval_instance_start();
        if (v9)
        {
          atomic_fetch_and_explicit((wg + 24), 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
        }

        else if (_os_workgroup_interval_data_telemetry_requested(data))
        {
          _os_workgroup_interval_copy_telemetry_data(wg, data);
        }

        os_unfair_lock_unlock(wg + 17);
        return v9;
      }
    }

    else
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

BOOL _os_workgroup_interval_invalid_telemetry_request(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (_os_workgroup_interval_data_telemetry_requested(a2))
  {
    return *(a2 + 16) != *(a1 + 44);
  }

  return v3;
}

BOOL _start_time_is_in_past(int a1, uint64_t a2)
{
  if (a1 == 32)
  {
    return a2 <= mach_absolute_time();
  }

  return v3;
}

uint64_t _os_workgroup_interval_data_complexity(uint64_t a1)
{
  v2 = 0;
  if (_os_workgroup_client_interval_data_is_valid(a1))
  {
    if (*(a1 + 4))
    {
      return 1;
    }

    else
    {
      return *(a1 + 24);
    }
  }

  return v2;
}

BOOL _os_workgroup_interval_data_telemetry_requested(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    return _os_workgroup_telemetry_flavor_is_valid(*(a1 + 16));
  }

  return v2;
}

uint64_t _os_workgroup_interval_copy_telemetry_data(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  memset(__b, 0, sizeof(__b));
  result = work_interval_instance_get_telemetry_data();
  if (*(v5 + 16) == 1)
  {
    v3 = *(v5 + 8);
    *v3 = __b[0];
    v3[3] = __b[3];
    v3[4] = __b[4];
    v3[1] = __b[1];
    v3[2] = __b[2];
  }

  return result;
}

int os_workgroup_interval_update(os_workgroup_interval_t wg, uint64_t deadline, os_workgroup_interval_data_t data)
{
  if (_os_workgroup_get_current() != wg)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x60F8);
  }

  if (_os_workgroup_interval_invalid_telemetry_request(wg, data))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else if (os_unfair_lock_trylock(wg + 17))
  {
    v6 = _os_workgroup_interval_data_complexity(data);
    v5 = *(wg + 3);
    if (_os_workgroup_is_configurable(v5))
    {
      if ((!v6 || _os_workgroup_has_workload_id(v5)) && (v5 & 8) != 0)
      {
        work_interval_instance_set_deadline();
        work_interval_instance_set_complexity();
        v4 = work_interval_instance_update();
        if (v4)
        {
          v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        }

        else if (_os_workgroup_interval_data_telemetry_requested(data))
        {
          _os_workgroup_interval_copy_telemetry_data(wg, data);
        }

        os_unfair_lock_unlock(wg + 17);
        return v4;
      }

      else
      {
        os_unfair_lock_unlock(wg + 17);
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
        return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }
    }

    else
    {
      os_unfair_lock_unlock(wg + 17);
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 1;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

int os_workgroup_interval_finish(os_workgroup_interval_t wg, os_workgroup_interval_data_t data)
{
  if (_os_workgroup_get_current() != wg)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x64C0);
  }

  if (_os_workgroup_interval_invalid_telemetry_request(wg, data))
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }

  else if (os_unfair_lock_trylock(wg + 17))
  {
    v5 = _os_workgroup_interval_data_complexity(data);
    v4 = *(wg + 3);
    if (_os_workgroup_is_configurable(v4))
    {
      if ((!v5 || _os_workgroup_has_workload_id(v4)) && (v4 & 8) != 0)
      {
        if (*(wg + 16) == 32)
        {
          mach_absolute_time();
        }

        work_interval_instance_set_finish();
        work_interval_instance_set_complexity();
        v3 = work_interval_instance_finish();
        if (v3)
        {
          v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        }

        else
        {
          atomic_fetch_and_explicit((wg + 24), 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
          if (_os_workgroup_interval_data_telemetry_requested(data))
          {
            _os_workgroup_interval_copy_telemetry_data(wg, data);
          }
        }

        os_unfair_lock_unlock(wg + 17);
        return v3;
      }

      else
      {
        os_unfair_lock_unlock(wg + 17);
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
        return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }
    }

    else
    {
      os_unfair_lock_unlock(wg + 17);
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 1;
      return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 16;
    return **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  }
}

uint64_t _os_workgroup_pthread_create_with_workgroup(pthread_t *a1, uint64_t a2, const pthread_attr_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = _dispatch_calloc_typed(1, 24, 0xA00402214FCE6);
  _os_object_retain_internal(a2);
  *v7 = a2;
  v7[1] = a4;
  v7[2] = a5;
  v6 = pthread_create(a1, a3, _os_workgroup_pthread_start, v7);
  if (v6)
  {
    _os_object_release_internal(a2);
    free(v7);
  }

  return v6;
}

uint64_t _os_workgroup_pthread_start(os_workgroup_t *a1)
{
  v9 = a1;
  v8 = a1;
  v7 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  free(a1);
  memset(&token_out, 0, sizeof(token_out));
  v3 = os_workgroup_join(v7, &token_out);
  if (v3)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: pthread_start os_workgroup_join failed";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x6A30);
  }

  v2 = v6(v5);
  os_workgroup_leave(v7, &token_out);
  _os_object_release_internal(v7);
  return v2;
}

BOOL _os_workgroup_client_attr_initialized(_DWORD *a1)
{
  v2 = 1;
  if (*a1 != 799564724)
  {
    return *a1 == 799564740;
  }

  return v2;
}

uint64_t _wg_type_to_wi_flags(__int16 a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        return 4;
      case 2:
        return 805306372;
      case 3:
        return 268435484;
      case 4:
        return 268435480;
      case 5:
        return 0x20000000;
      case 6:
        return 536870976;
      case 7:
        return 0x40000000;
      case 8:
        return 1342177344;
      case 9:
        return 1610612800;
      case 10:
        return 1879048256;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x6C68);
    }
  }

  else
  {
    return 4;
  }
}

void _os_workgroup_set_work_interval_name(uint64_t result, uint64_t a2)
{
  if (!*(result + 40) || *(result + 40) == -1)
  {
    v2 = *(result + 40);
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid workgroup port";
    qword_E42C0 = v2;
    __break(1u);
    JUMPOUT(0x6D20);
  }

  if (a2)
  {
    v3 = __strlcpy_chk();
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    if (__work_interval_ctl() == -1)
    {
      v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v4)
      {
        _dispatch_bug(544, v4);
      }
    }
  }
}

uint64_t _os_workgroup_lookup_type_from_workload_id(const char *a1, unsigned int *a2, __int16 *a3)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (!a1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Workload identifier must not be NULL";
    __break(1u);
    JUMPOUT(0x6EACLL);
  }

  for (i = 0; i < 4; ++i)
  {
    if (!strcasecmp(a1, (&_os_workgroup_workload_id_table)[2 * i]))
    {
      v7 = (&_os_workgroup_workload_id_table)[2 * i + 1];
      v6 = *(&_os_workgroup_workload_id_table + 8 * i + 5);
      if (_os_workgroup_type_is_default_type(v6))
      {
        v6 = v7;
      }

      v5 = *(&_os_workgroup_workload_id_table + 4 * i + 3) & 0xFFFFFFFA | 1;
      if (_os_workgroup_type_is_default_type(v7))
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Invalid workload ID type";
        qword_E42C0 = i;
        __break(1u);
        JUMPOUT(0x6FBCLL);
      }

      break;
    }
  }

  if (!v5)
  {
    v5 = 1;
  }

  *a2 = v5;
  *a3 = v6;
  return v7;
}

uint64_t _wi_flags_to_wg_type(int a1)
{
  v4 = (a1 & 4) != 0;
  v3 = _wi_flags_to_wi_type(a1);
  if (v3)
  {
    switch(v3)
    {
      case 268435456:
        if (v4)
        {
          return 3;
        }

        else
        {
          return 4;
        }

      case 536870912:
        return 5;
      case 805306368:
        return 2;
      case 1073741824:
        return 7;
      case 1342177280:
        return 8;
      case 1610612736:
        return 9;
      case 1879048192:
        return 10;
      default:
        __snprintf_chk(v7, 0x200uLL, 0, 0x200uLL, "BUG IN DISPATCH: Invalid wi flags = %u", a1);
        _os_crash();
        __break(1u);
        JUMPOUT(0x71A4);
    }
  }

  else
  {
    return 0;
  }
}

void dispatch_atfork_child()
{
  _os_object_atfork_prepare();
  _voucher_atfork_child();
  _dispatch_event_loop_atfork_child();
  if (_dispatch_unsafe_fork)
  {
    _dispatch_child_of_unsafe_fork = 1;
  }

  _dispatch_queue_atfork_child();
  _dispatch_unsafe_fork = 0;
}

uint64_t _dispatch_sigmask()
{
  v2[9] = 4;
  v2[8] = 5;
  v2[7] = 7;
  v2[6] = 8;
  v2[5] = 10;
  v2[4] = 11;
  v2[3] = 12;
  v2[2] = 13;
  v2[1] = 27;
  v2[0] = -67116761;
  v1 = pthread_sigmask(1, v2, 0);
  v4 = v1;
  v3 = 108;
  if (v1)
  {
    _dispatch_bug(v3, v4);
  }

  return v1;
}

dispatch_queue_t dispatch_get_current_queue(void)
{
  v2 = _dispatch_thread_getspecific(20);
  if (v2)
  {
    return v2;
  }

  else
  {
    return &off_E0680;
  }
}

unint64_t _dispatch_queue_attr_to_info(uint64_t *a1)
{
  v5 = 0;
  if (a1)
  {
    if (a1 < &_dispatch_queue_attr_concurrent || a1 >= qword_DCA78)
    {
      v3 = 0;
      if (*a1)
      {
        v3 = *a1;
      }

      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid queue attribute";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x7818);
    }

    HIWORD(v6) = (((((a1 - &_dispatch_queue_attr_concurrent) >> 4) & 1) << 21) | (((((a1 - &_dispatch_queue_attr_concurrent) >> 4) & 2) == 0) << 20)) >> 16;
    BYTE1(v6) = -((((a1 - &_dispatch_queue_attr_concurrent) >> 4) >> 2) & 0xF);
    v4 = ((a1 - &_dispatch_queue_attr_concurrent) >> 4) >> 6;
    v1 = (v4 * 0x2492492492492493uLL) >> 64;
    LOBYTE(v6) = v4 - 7 * ((v1 + ((v4 - v1) >> 1)) >> 2);
    v4 /= 7uLL;
    return v6 & 0xFFF0FFFF | ((v4 - (((v4 / 3) & 0x7FFFFFFF) + 2 * (v4 / 3))) << 18) | (((v4 / 3) - (((v4 / 3 / 3) & 0x7FFFFFFF) + 2 * (v4 / 3 / 3))) << 16);
  }

  return v5;
}

dispatch_queue_attr_t dispatch_queue_attr_make_with_qos_class(dispatch_queue_attr_t attr, dispatch_qos_class_t qos_class, int relative_priority)
{
  v6 = relative_priority;
  if (qos_class == QOS_CLASS_UNSPECIFIED || qos_class == 5 || qos_class == QOS_CLASS_BACKGROUND || qos_class == QOS_CLASS_UTILITY || qos_class == QOS_CLASS_DEFAULT || qos_class == QOS_CLASS_USER_INITIATED || qos_class == QOS_CLASS_USER_INTERACTIVE)
  {
    v4 = 0;
    if (relative_priority >= -15)
    {
      v4 = relative_priority <= 0;
    }

    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return attr;
  }

  v5 = _dispatch_queue_attr_to_info(attr);
  switch(qos_class)
  {
    case 5u:
      v10 = 1;
      break;
    case 9u:
      v10 = 2;
      break;
    case 0x11u:
      v10 = 3;
      break;
    case 0x15u:
      v10 = 4;
      break;
    case 0x19u:
      v10 = 5;
      break;
    case 0x21u:
      v10 = 6;
      break;
    default:
      v10 = 0;
      break;
  }

  return _dispatch_queue_attr_from_info(v5 & 0xFFFF0000 | v10 | (v6 << 8));
}

char *dispatch_queue_attr_make_with_overcommit(uint64_t *a1, char a2)
{
  v3 = _dispatch_queue_attr_to_info(a1);
  if (a2)
  {
    v4 = v3 & 0xFFFCFFFF | 0x10000;
  }

  else
  {
    v4 = v3 & 0xFFFCFFFF | 0x20000;
  }

  return _dispatch_queue_attr_from_info(v4);
}

void _dispatch_object_no_invoke(uint64_t *a1)
{
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  v1 = *(v2 + 16);
  qword_E4290 = "BUG IN LIBDISPATCH: do_invoke called";
  qword_E42C0 = v1;
  __break(1u);
}

void _dispatch_object_no_dispose(uint64_t *a1)
{
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  v1 = *(v2 + 16);
  qword_E4290 = "BUG IN LIBDISPATCH: do_dispose called";
  qword_E42C0 = v1;
  __break(1u);
}

void _dispatch_queue_no_activate(uint64_t *a1)
{
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  v1 = *(v2 + 16);
  qword_E4290 = "BUG IN LIBDISPATCH: dq_activate called";
  qword_E42C0 = v1;
  __break(1u);
}

BOOL _dispatch_parse_BOOL(const char *a1)
{
  v2 = 1;
  if (strcasecmp(a1, "YES"))
  {
    v2 = 1;
    if (strcasecmp(a1, "Y"))
    {
      v2 = 1;
      if (strcasecmp(a1, "TRUE"))
      {
        return atoi(a1) != 0;
      }
    }
  }

  return v2;
}

BOOL _dispatch_getenv_BOOL(const char *a1, char a2)
{
  *&v3[4] = getenv(a1);
  if (*&v3[4])
  {
    *v3 = _dispatch_parse_BOOL(*&v3[4]);
  }

  else
  {
    *v3 = a2 & 1;
  }

  return *v3 != 0;
}

uint64_t _dispatch_build_init(size_t a1)
{
  v2[1] = a1;
  *v3 = 0x4100000001;
  v2[0] = 16;
  return sysctl(v3, 2u, _dispatch_build, v2, 0, 0);
}

uint64_t _dispatch_continuation_get_function_symbol(uint64_t a1)
{
  if ((*a1 & 0x20) != 0)
  {
    v13 = *(a1 + 40);
    v10 = _Block_get_invoke_fn(v13);
    v11 = 0;
    if (v10)
    {
      v11 = v10;
    }

    if (v11 == _dispatch_block_special_invoke)
    {
      if (*(v13 + 32) != 3512316172)
      {
        v1 = *(v13 + 32);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
        qword_E42C0 = v1;
        __break(1u);
        JUMPOUT(0x83A8);
      }

      v14 = v13 + 32;
    }

    else
    {
      v14 = 0;
    }

    v8 = _Block_get_invoke_fn(*(v14 + 40));
    v9 = 0;
    if (v8)
    {
      v9 = v8;
    }

    v7 = 0;
    if (v9)
    {
      return v9;
    }

    return v7;
  }

  else if ((*a1 & 0x10) != 0)
  {
    v5 = _Block_get_invoke_fn(*(a1 + 40));
    v6 = 0;
    if (v5)
    {
      v6 = v5;
    }

    v4 = 0;
    if (v6)
    {
      return v6;
    }

    return v4;
  }

  else
  {
    v3 = 0;
    if (*(a1 + 32))
    {
      return *(a1 + 32);
    }

    return v3;
  }
}

uint64_t _Block_get_invoke_fn(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v2 = 0;
  if (v3)
  {
    return v3;
  }

  return v2;
}

void _dispatch_debugv(uint64_t *a1, const char *a2, va_list a3)
{
  v8 = _dispatch_uptime() - dispatch_log_basetime;
  v3 = _dispatch_thread_getspecific(0);
  v10 = __snprintf_chk(v17, 0x800uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%llu\t\t%p\t", v8, v3);
  if (v10 < 0)
  {
    v7 = 0;
  }

  else
  {
    if (v10 <= 0x800)
    {
      v6 = v10;
    }

    else
    {
      v6 = 2048;
    }

    v7 = v6;
  }

  if (a1)
  {
    v12 = v7 + _dispatch_object_debug2(a1, &v17[v7], 2048 - v7);
    if ((v12 + 2) >= 0x800)
    {
      _dispatch_abort(1447, (v12 + 2) < 0x800);
    }

    v17[v12] = 58;
    v4 = v12 + 1;
    v13 = v12 + 2;
    v17[v4] = 32;
    v17[v13] = 0;
  }

  else
  {
    v13 = v7 + __strlcpy_chk();
  }

  v11 = __vsnprintf_chk(&v17[v13], 2048 - v13, 0, 0xFFFFFFFFFFFFFFFFLL, a2, a3);
  if (v11 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v11;
  }

  v9 = v13 + v5;
  if ((v13 + v5) > 0x7FF)
  {
    v9 = 2047;
  }

  if (_dispatch_logv_pred != -1)
  {
    dispatch_once_f(&_dispatch_logv_pred, 0, _dispatch_logv_init);
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if (dispatch_logfile == -1)
    {
      _dispatch_syslog(v17);
    }

    else
    {
      _dispatch_log_file(v17, v9);
    }
  }
}

uint64_t _dispatch_calloc_typed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = malloc_type_calloc();
    if (v4)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  return v4;
}

const char *_dispatch_strdup_if_mutable(const char *a1)
{
  strlen(a1);
  if (_dyld_is_memory_immutable())
  {
    return a1;
  }

  v2 = malloc_type_malloc();
  if (v2)
  {
    __memcpy_chk();
  }

  else
  {
    _dispatch_bug(1541, 0);
  }

  return v2;
}

void *_dispatch_Block_copy(const void *a1)
{
  if (!a1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: NULL was passed where a block should have been";
    __break(1u);
    JUMPOUT(0x8C28);
  }

  while (1)
  {
    v2 = _Block_copy(a1);
    if (v2)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  return v2;
}

void *_os_objc_alloc(uint64_t a1, unint64_t a2)
{
  if (a2 < 8)
  {
    _dispatch_abort(1719, a2 >= 8);
  }

  while (1)
  {
    v4 = malloc_type_calloc();
    if (v4)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  v3 = 0;
  if (a1)
  {
    v3 = a1;
  }

  *v4 = v3;
  return v4;
}

void *_os_object_alloc_realized(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x10)
  {
    _dispatch_abort(1737, a2 >= 0x10);
  }

  result = _os_objc_alloc(a1, a2);
  *(result + 2) = 1;
  *(result + 3) = 1;
  return result;
}

void *_os_object_alloc(void *a1, unint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    v3 = &_os_object_vtable;
  }

  return _os_object_alloc_realized(v3, a2);
}

void _os_object_xref_dispose(uint64_t a1)
{
  atomic_load_explicit((a1 + 12), memory_order_acquire);
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  if (*v2)
  {
    v1 = 0;
    if (*a1)
    {
      v1 = *a1;
    }

    (*v1)(a1);
  }

  else
  {
    _os_object_release_internal(a1);
  }
}

void _os_object_dispose(uint64_t *a1)
{
  atomic_load_explicit((a1 + 1), memory_order_acquire);
  v2 = 0;
  if (*a1)
  {
    v2 = *a1;
  }

  if (*(v2 + 8))
  {
    v1 = 0;
    if (*a1)
    {
      v1 = *a1;
    }

    (*(v1 + 8))(a1);
  }

  else
  {
    _os_object_dealloc(a1);
  }
}

void *__cdecl os_retain(void *object)
{
  if (object)
  {
    return _os_object_retain(object);
  }

  else
  {
    return 0;
  }
}

void os_release(void *object)
{
  if (object)
  {
    _os_object_release(object);
  }
}

uint64_t _dispatch_autorelease_pool_push()
{
  v1 = 0;
  if (_dispatch_begin_NSAutoReleasePool)
  {
    return _dispatch_begin_NSAutoReleasePool();
  }

  return v1;
}

uint64_t _dispatch_autorelease_pool_pop(uint64_t result)
{
  if (_dispatch_end_NSAutoReleasePool)
  {
    return _dispatch_end_NSAutoReleasePool(result);
  }

  return result;
}

uint64_t _dispatch_last_resort_autorelease_pool_push(uint64_t a1)
{
  result = _dispatch_autorelease_pool_push();
  *(a1 + 24) = result;
  return result;
}

uint64_t _dispatch_last_resort_autorelease_pool_pop(uint64_t a1)
{
  result = _dispatch_autorelease_pool_pop(*(a1 + 24));
  *(a1 + 24) = 0;
  return result;
}

uint64_t dispatch_mach_msg_get_context(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + ((*(a1 + 4) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (*(v3 + 4) >= 0x3Cu)
  {
    return *(v3 + 52);
  }

  return v2;
}

void _dispatch_mach_notify_port_destroyed(uint64_t a1, unsigned int a2)
{
  qword_E4290 = "BUG IN LIBDISPATCH: unexpected receipt of port-destroyed";
  qword_E42C0 = a2;
  __break(1u);
}

void _dispatch_mach_notify_no_senders(uint64_t a1, unsigned int a2)
{
  qword_E4290 = "BUG IN LIBDISPATCH: unexpected receipt of no-more-senders";
  qword_E42C0 = a2;
  __break(1u);
}

void _dispatch_mach_default_async_reply_handler()
{
  qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: _dispatch_mach_default_async_reply_handler called";
  qword_E42C0 = _dispatch_mach_xpc_hooks;
  __break(1u);
}

uint64_t _dispatch_logv_init(uint64_t a1)
{
  v10 = a1;
  v9 = 1;
  result = getenv("LIBDISPATCH_LOG");
  __s1 = result;
  if (result)
  {
    result = strcmp(__s1, "YES");
    if (result)
    {
      result = strcmp(__s1, "NO");
      if (result)
      {
        result = strcmp(__s1, "syslog");
        if (result)
        {
          result = strcmp(__s1, "file");
          if (result)
          {
            result = strcmp(__s1, "stderr");
            if (!result)
            {
              v9 = 1;
              dispatch_logfile = 2;
            }
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        dispatch_log_disabled = 1;
      }
    }
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if ((v9 & 1) != 0 && dispatch_logfile == -1)
    {
      v2 = getpid();
      __snprintf_chk(v11, 0x400uLL, 0, 0x400uLL, "/var/tmp/libdispatch.%d.log", v2);
      result = open_NOCANCEL();
      dispatch_logfile = result;
    }

    if (dispatch_logfile != -1)
    {
      v7.tv_sec = 0;
      *&v7.tv_usec = 0;
      gettimeofday(&v7, 0);
      dispatch_log_basetime = _dispatch_uptime();
      v5 = dispatch_logfile;
      v6 = getprogname();
      if (v6)
      {
        v4 = v6;
      }

      else
      {
        v4 = &unk_BBE5B;
      }

      v3 = getpid();
      return dprintf(v5, "=== log file opened for %s[%u] at %ld.%06u ===\n", v4, v3, v7.tv_sec, v7.tv_usec);
    }
  }

  return result;
}

uint64_t _dispatch_log_file(uint64_t a1, uint64_t a2)
{
  *(a1 + a2) = 10;
  do
  {
    result = write_NOCANCEL();
  }

  while (result == -1 && **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) == 4);
  return result;
}

uint64_t _dispatch_logv_file(const char *a1, va_list a2)
{
  v2 = _dispatch_uptime();
  v6 = __snprintf_chk(v10, 0x800uLL, 0, 0xFFFFFFFFFFFFFFFFLL, "%llu\t", v2 - dispatch_log_basetime);
  if (v6 < 0)
  {
    v5 = 0;
  }

  else
  {
    if (v6 <= 0x800)
    {
      v4 = v6;
    }

    else
    {
      v4 = 2048;
    }

    v5 = v4;
  }

  result = __vsnprintf_chk(&v10[v5], 2048 - v5, 0, 0xFFFFFFFFFFFFFFFFLL, a1, a2);
  if ((result & 0x80000000) == 0)
  {
    v7 = v5 + result;
    if (v7 > 0x7FF)
    {
      v7 = 2047;
    }

    return _dispatch_log_file(v10, v7);
  }

  return result;
}

void _dispatch_vsyslog(char *a1, char *a2)
{
  v2[2] = a1;
  v2[1] = a2;
  v2[0] = 0;
  vasprintf(v2, a1, a2);
  if (v2[0])
  {
    _dispatch_syslog(v2[0]);
    free(v2[0]);
  }
}

uint64_t _dispatch_object_debug2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (*a1)
  {
    v4 = *a1;
  }

  return (*(v4 + 40))(a1, a2, a3);
}

uint64_t _os_object_retain_internal(uint64_t result)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0x9DC8);
  }

  return result;
}

uint64_t _os_object_retain_internal_n(uint64_t result, unsigned __int16 a2)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), a2, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0x9EB4);
  }

  return result;
}

void _os_object_release_internal(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 0x7FFFFFFF)
  {
    v2 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v2 < 1)
  {
    if (v2 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x9FE8);
    }

    v1 = *(a1 + 12);
    if (v1 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0xA038);
    }

    _os_object_dispose(a1);
  }
}

void _os_object_release_internal_n(uint64_t a1, unsigned __int16 a2)
{
  v3 = *(a1 + 8);
  if (v3 != 0x7FFFFFFF)
  {
    v3 = atomic_fetch_add_explicit((a1 + 8), -a2, memory_order_release) - a2;
  }

  if (v3 < 1)
  {
    if (v3 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA17CLL);
    }

    v2 = *(a1 + 12);
    if (v2 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0xA1CCLL);
    }

    _os_object_dispose(a1);
  }
}

uint64_t _os_object_retain(uint64_t result)
{
  add_explicit = *(result + 12);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 12), 1u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0xA2B4);
  }

  return result;
}

uint64_t _os_object_retain_with_resurrect(uint64_t a1)
{
  add_explicit = *(a1 + 12);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((a1 + 12), 1u, memory_order_relaxed);
  }

  if ((add_explicit + 1) <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an over-released object";
    __break(1u);
    JUMPOUT(0xA3A4);
  }

  if (!add_explicit)
  {
    _os_object_retain_internal(a1);
  }

  return a1;
}

void _os_object_release(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    if (v1 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA4FCLL);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 == 1)
  {
    _os_object_xref_dispose(result);
  }
}

void _os_object_release_without_xref_dispose(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((a1 + 12), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    if (v1 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA658);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 == 1)
  {
    _os_object_release_internal(a1);
  }
}

void dispatch_release(dispatch_object_t object)
{
  v1 = *(object + 3);
  if (v1 != 0x7FFFFFFF)
  {
    v1 = atomic_fetch_add_explicit((object + 12), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v1 < 1)
  {
    if (v1 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xA84CLL);
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 == 1)
  {
    atomic_load_explicit((object + 12), memory_order_acquire);
    _dispatch_xref_dispose(object);
  }
}

void _dispatch_xref_dispose(uint64_t *a1)
{
  v10 = 0;
  if (*a1)
  {
    v10 = *a1;
  }

  if ((*(v10 + 16) & 0xF0) == 0x10)
  {
    _dispatch_queue_xref_dispose(a1);
    v9 = 0;
    if (*a1)
    {
      v9 = *a1;
    }

    v8 = *(v9 + 16);
    switch(v8)
    {
      case 275:
        _dispatch_source_xref_dispose(a1);
        break;
      case 531:
        _dispatch_channel_xref_dispose(a1);
        break;
      case 787:
        if ((*(a1 + 58) & 0x10) != 0)
        {
          *(a1[11] + 48) = 195952365;
        }

        break;
      case 395025:
        _dispatch_runloop_queue_xref_dispose(a1, v1, v2, v3, v4, v5, v6, v7);
        break;
    }
  }

  _dispatch_release_tailcall(a1);
}

void _dispatch_dispose(uint64_t *a1)
{
  v9 = a1;
  v8 = a1[3];
  v10 = a1;
  v4 = 0;
  if (a1[5])
  {
    v4 = a1[5];
  }

  v7 = v4;
  v6 = v9[4];
  v5 = 1;
  if (v9[2] != -1985229329)
  {
    v1 = v9[2];
    qword_E4290 = "BUG IN LIBDISPATCH: Release while enqueued";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0xAB58);
  }

  v3 = 0;
  if (v8)
  {
    v3 = v8[8] == (&dword_14 + 2);
  }

  if (v3)
  {
    v13 = 4;
    v12 = 0;
    v11 = 0;
    v8 = &off_E0600;
  }

  v2 = 0;
  if (*v9)
  {
    v2 = *v9;
  }

  (*(v2 + 32))(v9, &v5);
  if (v5)
  {
    _dispatch_object_finalize();
    _dispatch_object_dealloc(v9);
  }

  if (v7 && v6)
  {
    dispatch_channel_async_f(v8, v6, v7);
  }

  if (v8)
  {
    _dispatch_release_tailcall(v8);
  }
}

void *__cdecl dispatch_get_context(dispatch_object_t object)
{
  v2 = 0;
  if (*object)
  {
    v2 = *object;
  }

  if ((*(v2 + 16) & 0x40000) != 0)
  {
    return 0;
  }

  else
  {
    return *(object + 4);
  }
}

void dispatch_set_context(dispatch_object_t object, void *context)
{
  v2 = 0;
  if (*object)
  {
    v2 = *object;
  }

  if ((*(v2 + 16) & 0x40000) == 0)
  {
    *(object + 4) = context;
  }
}

void dispatch_set_finalizer_f(dispatch_object_t object, dispatch_function_t finalizer)
{
  v3 = 0;
  if (*object)
  {
    v3 = *object;
  }

  if ((*(v3 + 16) & 0x40000) == 0)
  {
    v2 = 0;
    if (finalizer)
    {
      v2 = finalizer;
    }

    *(object + 5) = v2;
  }
}

void dispatch_set_target_queue(dispatch_object_t object, dispatch_queue_t queue)
{
  v13 = queue;
  v12 = 1;
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v11 = 0;
    if (*object)
    {
      v11 = *object;
    }

    LOBYTE(v10) = 1;
    if ((*(v11 + 18) & 1) == 0)
    {
      v9 = 0;
      if (*object)
      {
        v9 = *object;
      }

      v10 = (*(v9 + 18) >> 1) & 1;
    }

    v12 = v10;
  }

  if ((v12 & 1) == 0)
  {
    v8 = 0;
    if (queue)
    {
      v8 = 0;
      if ((*(queue + 87) & 8) != 0)
      {
        if (*object >= 0x1000uLL)
        {
          v7 = 0;
          if (*object)
          {
            v7 = *object;
          }

          v6 = 1;
          if (*(v7 + 16) != 1)
          {
            v5 = 0;
            if (*object)
            {
              v5 = *object;
            }

            is_timer = 0;
            if (*(v5 + 16) == 19)
            {
              is_timer = _dispatch_source_is_timer(object);
            }

            v6 = is_timer;
          }

          v15 = v6 & 1;
        }

        else
        {
          v15 = 1;
        }

        v8 = v15 ^ 1;
      }
    }

    if (v8)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Cannot target the cooperative root queue - not implemented";
      qword_E42C0 = object;
      __break(1u);
      JUMPOUT(0xB26CLL);
    }

    v3 = 0;
    if (*object)
    {
      v3 = *object;
    }

    if ((*(v3 + 16) & 0xF0) == 0x10)
    {
      _dispatch_lane_set_target_queue(object, v13);
    }

    else
    {
      v2 = 0;
      if (*object)
      {
        v2 = *object;
      }

      if (*(v2 + 16) == 4)
      {
        _dispatch_io_set_target_queue(object, v13);
      }

      else
      {
        if (!v13)
        {
          v13 = &off_E0600;
        }

        _dispatch_retain(v13);
        v16 = atomic_exchange_explicit((object + 24), v13, memory_order_release);
        if (v16)
        {
          _dispatch_release(v16);
        }
      }
    }
  }
}

void dispatch_activate(dispatch_object_t object)
{
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v2 = 0;
    if (*object)
    {
      v2 = *object;
    }

    if (*(v2 + 16) == 18)
    {
      _dispatch_workloop_activate(object);
    }

    else
    {
      v1 = 0;
      if (*object)
      {
        v1 = *object;
      }

      if ((*(v1 + 16) & 0xF0) == 0x10)
      {
        _dispatch_lane_resume(object, 1);
      }
    }
  }
}

void dispatch_suspend(dispatch_object_t object)
{
  v7 = 1;
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v6 = 0;
    if (*object)
    {
      v6 = *object;
    }

    LOBYTE(v5) = 1;
    if ((*(v6 + 18) & 1) == 0)
    {
      v4 = 0;
      if (*object)
      {
        v4 = *object;
      }

      v5 = (*(v4 + 18) >> 1) & 1;
    }

    v7 = v5;
  }

  if ((v7 & 1) == 0)
  {
    v3 = 0;
    if (*object)
    {
      v3 = *object;
    }

    if ((*(v3 + 16) & 0xF0) == 0x10)
    {
      v2 = 0;
      if (*object)
      {
        v2 = *object;
      }

      v1 = 0;
      if (*(v2 + 16) == 18)
      {
        v1 = _dispatch_workloop_uses_bound_thread(object);
      }

      if (v1)
      {
        qword_E4290 = "API MISUSE: Object type does not support suspension";
        __break(1u);
        JUMPOUT(0xB794);
      }

      _dispatch_lane_suspend(object);
    }
  }
}

void dispatch_resume(dispatch_object_t object)
{
  v7 = 1;
  if (*(object + 2) != 0x7FFFFFFF)
  {
    v6 = 0;
    if (*object)
    {
      v6 = *object;
    }

    LOBYTE(v5) = 1;
    if ((*(v6 + 18) & 1) == 0)
    {
      v4 = 0;
      if (*object)
      {
        v4 = *object;
      }

      v5 = (*(v4 + 18) >> 1) & 1;
    }

    v7 = v5;
  }

  if ((v7 & 1) == 0)
  {
    v3 = 0;
    if (*object)
    {
      v3 = *object;
    }

    if ((*(v3 + 16) & 0xF0) == 0x10)
    {
      v2 = 0;
      if (*object)
      {
        v2 = *object;
      }

      v1 = 0;
      if (*(v2 + 16) == 18)
      {
        v1 = _dispatch_workloop_uses_bound_thread(object);
      }

      if (v1)
      {
        qword_E4290 = "API MISUSE: Object type does not support resume";
        __break(1u);
        JUMPOUT(0xBA00);
      }

      _dispatch_lane_resume(object, 0);
    }
  }
}

uint64_t _dispatch_retain(uint64_t result)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0xBB04);
  }

  return result;
}

void _dispatch_release(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 0x7FFFFFFF)
  {
    v2 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v2 < 1)
  {
    if (v2 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0xBC34);
    }

    v1 = *(a1 + 12);
    if (v1 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0xBC84);
    }

    _os_object_dispose(a1);
  }
}

void *_dispatch_block_create(uint64_t a1, void *a2, uint64_t a3, const void *a4)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v37 = v20;
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v46 = v20;
  v45 = a1;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v20[0] = 0;
  v20[1] = a1;
  v21 = 0;
  v22 = 0;
  v23 = a3;
  v24 = a2;
  v25 = a4;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = _NSConcreteStackBlock;
  v7 = 1174405120;
  v8 = 0;
  v9 = ___dispatch_block_create_block_invoke;
  v10 = &__block_descriptor_tmp_1;
  v39 = v11;
  v38 = v20;
  v48 = v11;
  v47 = v20;
  v49 = v11;
  v11[0] = 3512316172;
  v11[1] = a1;
  v12 = 0;
  v13 = 0;
  v14 = a3;
  v15 = a2;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (a2 && v15 != -1)
  {
    voucher_retain(v15);
  }

  if (v47[5])
  {
    v16 = _dispatch_Block_copy(v47[5]);
  }

  if (*v47)
  {
    v17 = _dispatch_group_create_and_enter();
  }

  v5 = _dispatch_Block_copy(&v6);
  v41 = v11;
  v50 = v11;
  v51 = v11;
  if (v11[0] == 3512316172)
  {
    if (v17)
    {
      if (!v13)
      {
        dispatch_group_leave(v17);
      }

      _os_object_release_without_xref_dispose(v17);
    }

    if (v18)
    {
      _os_object_release_internal_n(v18, 2u);
    }

    if (v16)
    {
      _Block_release(v16);
    }

    if (v15 && v15 != -1)
    {
      voucher_release(v15);
    }
  }

  v40 = v20;
  v52 = v20;
  v53 = v20;
  if (v20[0] == 3512316172)
  {
    if (v26)
    {
      if (!v22)
      {
        dispatch_group_leave(v26);
      }

      _os_object_release_without_xref_dispose(v26);
    }

    if (v27)
    {
      _os_object_release_internal_n(v27, 2u);
    }

    if (v25)
    {
      _Block_release(v25);
    }

    if (v24 && v24 != -1)
    {
      voucher_release(v24);
    }
  }

  return v5;
}

void *__copy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s(void *result, void *a2)
{
  v3 = a2 + 4;
  v2 = result + 4;
  result[4] = 3512316172;
  result[5] = a2[5];
  *(result + 12) = 0;
  *(result + 13) = 0;
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  *(result + 24) = 0;
  if (result[8] && result[8] != -1)
  {
    result = voucher_retain(result[8]);
  }

  if (v3[5])
  {
    result = _dispatch_Block_copy(v3[5]);
    v2[5] = result;
  }

  if (*v3)
  {
    result = _dispatch_group_create_and_enter();
    v2[6] = result;
  }

  return result;
}

void __destroy_helper_block_8_32c35_ZTS29dispatch_block_private_data_s(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(a1 + 32) == 3512316172)
  {
    if (*(a1 + 80))
    {
      if (!*(a1 + 52))
      {
        dispatch_group_leave(*(a1 + 80));
      }

      _os_object_release_without_xref_dispose(*(v1 + 48));
    }

    if (*(v1 + 56))
    {
      _os_object_release_internal_n(*(v1 + 56), 2u);
    }

    if (*(v1 + 40))
    {
      _Block_release(*(v1 + 40));
    }

    if (*(v1 + 32))
    {
      if (*(v1 + 32) != -1)
      {
        voucher_release(*(v1 + 32));
      }
    }
  }
}

void _dispatch_sema4_create_slow(atomic_uint *result, int a2)
{
  v8 = result;
  policy = a2;
  semaphore = 0;
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  if (policy)
  {
    v4 = semaphore_create(mach_task_self_, &semaphore, policy, 0);
    if (v4 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xC558);
    }

    if (v4 == 15)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xC5A4);
    }

    if (v4)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0xC5ECLL);
    }

    v3 = 0;
    atomic_compare_exchange_strong_explicit(v8, &v3, semaphore, memory_order_relaxed, memory_order_relaxed);
    if (v3)
    {
      v5 = semaphore_destroy(mach_task_self_, semaphore);
      if (v5 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0xC6E8);
      }

      if (v5 == 15)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
        qword_E42C0 = 15;
        __break(1u);
        JUMPOUT(0xC734);
      }

      if (v5)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
        qword_E42C0 = v5;
        __break(1u);
        JUMPOUT(0xC77CLL);
      }
    }
  }

  else
  {
    v9 = 0;
    v14 = 9;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = *(StatusReg + 72);
    if (v9)
    {
      v18 = 9;
      v17 = 0;
      v19 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *(v19 + 72) = 0;
      v10 = v9;
    }

    else
    {
      v10 = _os_semaphore_create();
    }

    semaphore = v10;
    v2 = 0;
    atomic_compare_exchange_strong_explicit(v8, &v2, v10, memory_order_relaxed, memory_order_relaxed);
    if (v2)
    {
      v12 = semaphore;
      v11 = 0;
      v13 = 9;
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72);
      v16 = 9;
      v15 = semaphore;
      *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72) = semaphore;
      if (v11)
      {
        _os_semaphore_dispose();
      }
    }
  }
}

semaphore_t *_dispatch_sema4_dispose_slow(semaphore_t *result, int a2)
{
  semaphore = *result;
  *result = -1;
  if (a2)
  {
    result = semaphore_destroy(mach_task_self_, semaphore);
    if (result == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xC8B8);
    }

    if (result == 15)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xC904);
    }

    if (result)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
      qword_E42C0 = result;
      __break(1u);
      JUMPOUT(0xC94CLL);
    }
  }

  else
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72);
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 72) = semaphore;
    if (v3)
    {
      return _os_semaphore_dispose();
    }
  }

  return result;
}

uint64_t _dispatch_sema4_signal(semaphore_t *a1, uint64_t a2)
{
  do
  {
    result = semaphore_signal(*a1);
    if (result == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xC9DCLL);
    }

    if (result == 15)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xCA28);
    }

    if (result)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
      qword_E42C0 = result;
      __break(1u);
      JUMPOUT(0xCA70);
    }

    --a2;
  }

  while (a2);
  return result;
}

uint64_t _dispatch_sema4_wait(semaphore_t *a1)
{
  do
  {
    result = semaphore_wait(*a1);
  }

  while (result == 14);
  if (result == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0xCB30);
  }

  if (result == 15)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
    qword_E42C0 = 15;
    __break(1u);
    JUMPOUT(0xCB7CLL);
  }

  if (result)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0xCBC4);
  }

  return result;
}

uint64_t _dispatch_sema4_timedwait(semaphore_t *a1, unint64_t a2)
{
  do
  {
    v4 = _dispatch_timeout(a2);
    v6.tv_sec = v4 / 0x3B9ACA00;
    v6.tv_nsec = v4 % 0x3B9ACA00;
    v2 = v6;
    v5 = semaphore_timedwait(*a1, v2);
  }

  while (v5 == 14);
  switch(v5)
  {
    case 49:
      return 1;
    case -301:
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0xCCECLL);
    case 15:
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Use-after-free of dispatch_semaphore_t or dispatch_group_t";
      qword_E42C0 = 15;
      __break(1u);
      JUMPOUT(0xCD38);
    default:
      if (v5)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: mach semaphore API failure";
        qword_E42C0 = v5;
        __break(1u);
        JUMPOUT(0xCD80);
      }

      return 0;
  }
}

uint64_t _dispatch_wait_on_address(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  v9 = _dispatch_timeout(a3);
  if (v9)
  {
    if (v9 == -1)
    {
      return _dispatch_ulock_wait(a1, a2, 0, a4);
    }

    else
    {
      do
      {
        if (v9 % 0x3E8)
        {
          v6 = v9 / 0x3E8 + 1;
        }

        else
        {
          v6 = v9 / 0x3E8;
        }

        v8 = v6;
        if (v6 > 0xFFFFFFFF)
        {
          v8 = 0xFFFFFFFFLL;
        }

        v7 = _dispatch_ulock_wait(a1, a2, v8, a4);
        v5 = 0;
        if (v8 == 0xFFFFFFFFLL)
        {
          v5 = 0;
          if (v7 == 60)
          {
            v9 = _dispatch_timeout(a3);
            v5 = v9 != 0;
          }
        }
      }

      while (v5);
      return v7;
    }
  }

  else
  {
    return 60;
  }
}

BOOL _dispatch_thread_event_wait_slow(_BOOL8 result)
{
  v4 = result;
  while (1)
  {
    explicit = atomic_load_explicit(v4, memory_order_acquire);
    if (!explicit)
    {
      break;
    }

    if (explicit != -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt thread event value";
      qword_E42C0 = explicit;
      __break(1u);
      JUMPOUT(0xD0A0);
    }

    v2 = _dispatch_ulock_wait(v4, 0xFFFFFFFF, 0, 0);
    v1 = 1;
    if (v2)
    {
      v1 = 1;
      if (v2 != 14)
      {
        v1 = v2 == 4;
      }
    }

    result = v1;
    if (!v1)
    {
      _dispatch_abort(559, v1);
    }
  }

  return result;
}

uint64_t _dispatch_unfair_lock_lock_slow(atomic_uint *a1, int a2)
{
  result = _dispatch_thread_getspecific(3);
  v8 = result & 0xFFFFFFFC;
  v5 = result & 0xFFFFFFFC;
  while (1)
  {
    for (i = *a1; ; i = v4)
    {
      if ((i & 0xFFFFFFFC) != 0)
      {
        v6 = i | 1;
        if ((i | 1) == i)
        {
          break;
        }
      }

      else
      {
        v6 = v5;
      }

      v3 = i;
      v4 = i;
      atomic_compare_exchange_strong_explicit(a1, &v4, v6, memory_order_acquire, memory_order_acquire);
      if (v4 == v3)
      {
        break;
      }
    }

    if (((i ^ v8) & 0xFFFFFFFC) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: trying to lock recursively";
      __break(1u);
      JUMPOUT(0xD2B4);
    }

    if (v6 == v5)
    {
      return result;
    }

    result = _dispatch_unfair_lock_wait(a1, v6, 0, a2);
    if (result == 66)
    {
      v5 |= 1u;
    }
  }
}

uint64_t _dispatch_unfair_lock_unlock_slow(uint64_t a1, unsigned int a2)
{
  result = _dispatch_thread_getspecific(3);
  if (((a2 ^ result) & 0xFFFFFFFC) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: lock not owned by current thread";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0xD3DCLL);
  }

  if (a2)
  {
    return _dispatch_unfair_lock_wake(a1, 0);
  }

  return result;
}

uint64_t _dispatch_once_wait(atomic_ullong *a1)
{
  result = _dispatch_thread_getspecific(3);
  v6 = result & 0xFFFFFFFC;
LABEL_2:
  for (i = *a1; i != -1; i = v3)
  {
    if ((i & 3) == 2)
    {
      __dmb(9u);
      if ((4 * MEMORY[0xFFFFFC180] - i + 2) >= 0x10)
      {
        *a1 = -1;
      }

      return result;
    }

    v4 = i | 1;
    if ((i | 1) != i)
    {
      v2 = i;
      v3 = i;
      atomic_compare_exchange_strong_explicit(a1, &v3, v4, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        continue;
      }
    }

    if (((i ^ v6) & 0xFFFFFFFC) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: trying to lock recursively";
      __break(1u);
      JUMPOUT(0xD640);
    }

    result = _dispatch_unfair_lock_wait(a1, v4, 0, 0);
    goto LABEL_2;
  }

  return result;
}

uint64_t _dispatch_gate_broadcast_slow(uint64_t a1, unsigned int a2)
{
  if (((a2 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: lock not owned by current thread";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0xD6ECLL);
  }

  return _dispatch_unfair_lock_wake(a1, 256);
}

uint64_t _dlock_wait(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  while (1)
  {
    v6 = __ulock_wait();
    if (v6 >= 1)
    {
      return 66;
    }

    v5 = -v6;
    if (!v6)
    {
      return 0;
    }

    if (v5 != 4)
    {
      break;
    }

    if (a3)
    {
      return -v6;
    }
  }

  if (v5 != 14 && v5 != 60)
  {
    if (v5 != 105)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: ulock_wait() failed";
      qword_E42C0 = -v6;
      __break(1u);
      JUMPOUT(0xD8B8);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Owner in ulock is unknown - possible memory corruption";
    qword_E42C0 = a2;
    __break(1u);
    JUMPOUT(0xD86CLL);
  }

  return -v6;
}

uint64_t _dlock_wake(uint64_t a1, int a2)
{
  result = __ulock_wake();
  if (result && result != -2)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: ulock_wake() failed";
    qword_E42C0 = -result;
    __break(1u);
    JUMPOUT(0xD968);
  }

  return result;
}

dispatch_semaphore_t dispatch_semaphore_create(intptr_t value)
{
  if (value < 0)
  {
    return 0;
  }

  v1 = _dispatch_object_alloc(_OS_dispatch_semaphore_vtable, 0x48uLL);
  v1[2] = -1985229329;
  v1[3] = &off_E0600;
  v1[6] = value;
  *(v1 + 16) = 0;
  v1[7] = value;
  return v1;
}

semaphore_t *_dispatch_semaphore_dispose(semaphore_t *result)
{
  if (*(result + 6) < *(result + 7))
  {
    v1 = *(result + 7) - *(result + 6);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Semaphore object deallocated while in use (current value < original value)";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0xDA94);
  }

  if (result[16])
  {
    return _dispatch_sema4_dispose_slow(result + 16, 0);
  }

  return result;
}

uint64_t _dispatch_semaphore_signal_slow(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    _dispatch_sema4_create_slow((a1 + 64), 0);
  }

  _dispatch_sema4_signal((a1 + 64), 1);
  return 1;
}

intptr_t dispatch_semaphore_signal(dispatch_semaphore_t dsema)
{
  add_explicit = atomic_fetch_add_explicit((dsema + 48), 1uLL, memory_order_release);
  if ((add_explicit + 1) >= 1)
  {
    return 0;
  }

  if (add_explicit == 0x7FFFFFFFFFFFFFFFLL)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unbalanced call to dispatch_semaphore_signal()";
    qword_E42C0 = 0x8000000000000000;
    __break(1u);
    JUMPOUT(0xDC28);
  }

  return _dispatch_semaphore_signal_slow(dsema);
}

intptr_t dispatch_semaphore_wait(dispatch_semaphore_t dsema, dispatch_time_t timeout)
{
  if ((atomic_fetch_add_explicit((dsema + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_acquire) - 1) < 0)
  {
    return _dispatch_semaphore_wait_slow(dsema, timeout);
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_semaphore_wait_slow(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 64))
  {
    _dispatch_sema4_create_slow((a1 + 64), 0);
  }

  if (a2 != -1)
  {
    if (a2 && (_dispatch_sema4_timedwait((a1 + 64), a2) & 1) == 0)
    {
      return 0;
    }

    v6 = *(a1 + 48);
    while (v6 < 0)
    {
      v5 = v6;
      v2 = v6;
      v3 = v6;
      atomic_compare_exchange_strong_explicit((a1 + 48), &v3, v6 + 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        v5 = v3;
      }

      v6 = v5;
      if (v3 == v2)
      {
        return 49;
      }
    }
  }

  _dispatch_sema4_wait((a1 + 64));
  return 0;
}

dispatch_group_t dispatch_group_create(void)
{
  v1 = _dispatch_object_alloc(_OS_dispatch_group_vtable, 0x48uLL);
  *(v1 + 2) = -1985229329;
  *(v1 + 3) = &off_E0600;
  return v1;
}

void *_dispatch_group_create_and_enter()
{
  v1 = _dispatch_object_alloc(_OS_dispatch_group_vtable, 0x48uLL);
  v1[2] = -1985229329;
  v1[3] = &off_E0600;
  *(v1 + 12) = -4;
  _dispatch_retain(v1);
  return v1;
}

uint64_t _dispatch_group_dispose(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Group object deallocated while in use";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0xE068);
  }

  return result;
}

intptr_t dispatch_group_wait(dispatch_group_t group, dispatch_time_t timeout)
{
  v6 = *(group + 6);
  do
  {
    if ((v6 & 0xFFFFFFFC) == 0)
    {
      __dmb(9u);
      return 0;
    }

    if (!timeout)
    {
      return 49;
    }

    v5 = v6 | 1;
    if (v6)
    {
      break;
    }

    v2 = v6;
    v3 = v6;
    atomic_compare_exchange_strong_explicit((group + 48), &v3, v5, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      v6 = v3;
    }
  }

  while (v3 != v2);
  return _dispatch_group_wait_slow(group, HIDWORD(v5), timeout);
}

uint64_t _dispatch_group_wait_slow(uint64_t a1, unsigned int a2, unint64_t a3)
{
  do
  {
    v4 = _dispatch_wait_on_address(a1 + 52, a2, a3, 0);
    if (a2 != atomic_load_explicit((a1 + 52), memory_order_acquire))
    {
      return 0;
    }
  }

  while (v4 != 60);
  return 49;
}

void dispatch_group_leave(dispatch_group_t group)
{
  add_explicit = atomic_fetch_add_explicit((group + 48), 4uLL, memory_order_release);
  if ((add_explicit & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v5 = add_explicit + 4;
    do
    {
      if ((v5 & 0xFFFFFFFC) != 0)
      {
        v6 = v5 & 0xFFFFFFFFFFFFFFFDLL;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      }

      if (v5 == v6)
      {
        break;
      }

      v3 = v5;
      v1 = v5;
      v2 = v5;
      atomic_compare_exchange_strong_explicit((group + 48), &v2, v6, memory_order_relaxed, memory_order_relaxed);
      if (v2 != v1)
      {
        v3 = v2;
      }

      v5 = v3;
    }

    while (v2 != v1);
    _dispatch_group_wake(group, v5, 1);
  }

  else if ((add_explicit & 0xFFFFFFFC) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unbalanced call to dispatch_group_leave()";
    qword_E42C0 = 0;
    __break(1u);
    JUMPOUT(0xE450);
  }
}

void _dispatch_group_wake(uint64_t a1, char a2, char a3)
{
  v13 = (a3 & 1) != 0;
  if ((a2 & 2) != 0)
  {
    v10 = *(a1 + 56);
    if (!v10)
    {
      v10 = _dispatch_wait_for_enqueuer((a1 + 56), a1 + 64);
    }

    *(a1 + 56) = 0;
    v11 = atomic_exchange_explicit((a1 + 64), 0, memory_order_release) & 0xFFFFFFFFFFFFFFF8;
    v12 = v10;
    do
    {
      v9 = v12[6];
      v8 = 0;
      if (v12 != v11)
      {
        v7 = v12[2];
        if (!v7)
        {
          v7 = _dispatch_wait_for_enqueuer(v12 + 2, 0);
        }

        v8 = v7;
      }

      v3 = (v12[1] & 0x3FFF00uLL) >> 8;
      v4 = __clz(__rbit32(v3));
      if (v3)
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = 0;
      }

      v6 = 0;
      if (*v9)
      {
        v6 = *v9;
      }

      (*(v6 + 72))(v9, v12, v5);
      _dispatch_release(v9);
      v12 = v8;
    }

    while (v8);
    ++v13;
  }

  if (a2)
  {
    _dispatch_wake_by_address(a1 + 52);
  }

  if (v13)
  {
    _dispatch_release_n(a1, v13);
  }
}

void dispatch_group_enter(dispatch_group_t group)
{
  add_explicit = atomic_fetch_add_explicit((group + 48), 0xFFFFFFFC, memory_order_acquire);
  if ((add_explicit & 0xFFFFFFFC) == 0)
  {
    _dispatch_retain(group);
  }

  if ((add_explicit & 0xFFFFFFFC) == 4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Too many nested calls to dispatch_group_enter()";
    qword_E42C0 = add_explicit;
    __break(1u);
    JUMPOUT(0xE89CLL);
  }
}

void dispatch_group_notify_f(dispatch_group_t group, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v15 = _dispatch_thread_getspecific(22);
  if (v15)
  {
    _dispatch_thread_setspecific(22, *(v15 + 16));
    v11 = v15;
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  *v11 = 260;
  v11[4] = work;
  v11[5] = context;
  v17 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v17 <= 0x10FF)
  {
    v18 = v17;
  }

  else
  {
    v18 = 4351;
  }

  v19 = _dispatch_thread_getspecific(28);
  if (v19)
  {
    os_retain(v19);
  }

  v11[3] = v19;
  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v4, v11[3], v11);
  if (v11[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v16 = v18;
  if (v18 && (*(queue + 21) & 0x40000000) == 0 && (*(queue + 21) & 0xFFF) != 0)
  {
    v16 = 0;
  }

  v11[1] = v16;
  v11[6] = queue;
  _dispatch_retain(queue);
  v11[2] = 0;
  _dispatch_thread_setspecific(122, group + 64);
  v12 = atomic_exchange_explicit((group + 64), v11, memory_order_release);
  if (v12)
  {
    *(v12 + 16) = v11;
  }

  else
  {
    _dispatch_retain(group);
    *(group + 7) = v11;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v12)
  {
    v14 = *(group + 6);
    while (1)
    {
      v13 = v14 | 2;
      if (!v14)
      {
        break;
      }

      v5 = v14;
      v6 = v14;
      atomic_compare_exchange_strong_explicit((group + 48), &v6, v13, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        v14 = v6;
      }

      if (v6 == v5)
      {
        return;
      }
    }

    _dispatch_group_wake(group, v13, 0);
  }
}

void dispatch_group_notify(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  v16 = _dispatch_thread_getspecific(22);
  if (v16)
  {
    _dispatch_thread_setspecific(22, *(v16 + 16));
    v11 = v16;
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  v15 = _dispatch_Block_copy(block);
  v6 = _Block_get_invoke_fn(block);
  v7 = 0;
  if (v6)
  {
    v7 = v6;
  }

  if (v7 == _dispatch_block_special_invoke)
  {
    *v11 = 276;
    v11[5] = v15;
    _dispatch_continuation_init_slow(v11, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v11 = 276;
    v11[4] = _dispatch_call_block_and_release;
    v11[5] = v15;
    v18 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v18 <= 0x10FF)
    {
      v19 = v18;
    }

    else
    {
      v19 = 4351;
    }

    v20 = _dispatch_thread_getspecific(28);
    if (v20)
    {
      os_retain(v20);
    }

    v11[3] = v20;
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v11[3], v11);
    if (v11[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v17 = v19;
    if (v19 && (*(queue + 21) & 0x40000000) == 0 && (*(queue + 21) & 0xFFF) != 0)
    {
      v17 = 0;
    }

    v11[1] = v17;
  }

  v11[6] = queue;
  _dispatch_retain(queue);
  v11[2] = 0;
  _dispatch_thread_setspecific(122, group + 64);
  v12 = atomic_exchange_explicit((group + 64), v11, memory_order_release);
  if (v12)
  {
    *(v12 + 16) = v11;
  }

  else
  {
    _dispatch_retain(group);
    *(group + 7) = v11;
  }

  _dispatch_thread_setspecific(122, 0);
  if (!v12)
  {
    v14 = *(group + 6);
    while (1)
    {
      v13 = v14 | 2;
      if (!v14)
      {
        break;
      }

      v4 = v14;
      v5 = v14;
      atomic_compare_exchange_strong_explicit((group + 48), &v5, v13, memory_order_release, memory_order_relaxed);
      if (v5 != v4)
      {
        v14 = v5;
      }

      if (v5 == v4)
      {
        return;
      }
    }

    _dispatch_group_wake(group, v13, 0);
  }
}

void dispatch_group_async_f(dispatch_group_t group, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v14 = _dispatch_thread_getspecific(22);
  if (v14)
  {
    _dispatch_thread_setspecific(22, *(v14 + 16));
    v13 = v14;
  }

  else
  {
    v13 = _dispatch_continuation_alloc_from_heap();
  }

  *v13 = 268;
  v13[4] = work;
  v13[5] = context;
  v17 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v17 <= 0x10FF)
  {
    v18 = v17;
  }

  else
  {
    v18 = 4351;
  }

  v19 = _dispatch_thread_getspecific(28);
  if (v19)
  {
    os_retain(v19);
  }

  v13[3] = v19;
  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v4, v13[3], v13);
  if (v13[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v16 = v18;
  v15 = 0;
  if (v18)
  {
    if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
    {
      v5 = v18 >> 8;
      v6 = __clz(__rbit32(v5));
      if (v5)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = 0;
      }

      v15 = v7;
    }

    else
    {
      v16 = 0;
    }
  }

  v13[1] = v16;
  dispatch_group_enter(group);
  v13[6] = group;
  v8 = 0;
  if (*queue)
  {
    v8 = *queue;
  }

  (*(v8 + 72))(queue, v13, v15);
}

void dispatch_group_async(dispatch_group_t group, dispatch_queue_t queue, dispatch_block_t block)
{
  v16 = _dispatch_thread_getspecific(22);
  if (v16)
  {
    _dispatch_thread_setspecific(22, *(v16 + 16));
    v13 = v16;
  }

  else
  {
    v13 = _dispatch_continuation_alloc_from_heap();
  }

  v14 = _dispatch_Block_copy(block);
  v8 = _Block_get_invoke_fn(block);
  v9 = 0;
  if (v8)
  {
    v9 = v8;
  }

  if (v9 == _dispatch_block_special_invoke)
  {
    *v13 = 284;
    v13[5] = v14;
    inited = _dispatch_continuation_init_slow(v13, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v13 = 284;
    v13[4] = _dispatch_call_block_and_release;
    v13[5] = v14;
    v19 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v19 <= 0x10FF)
    {
      v20 = v19;
    }

    else
    {
      v20 = 4351;
    }

    v21 = _dispatch_thread_getspecific(28);
    if (v21)
    {
      os_retain(v21);
    }

    v13[3] = v21;
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v13[3], v13);
    if (v13[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v18 = v20;
    v17 = 0;
    if (v20)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v4 = v20 >> 8;
        v5 = __clz(__rbit32(v4));
        if (v4)
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = 0;
        }

        v17 = v6;
      }

      else
      {
        v18 = 0;
      }
    }

    v13[1] = v18;
    inited = v17;
  }

  dispatch_group_enter(group);
  v13[6] = group;
  v7 = 0;
  if (*queue)
  {
    v7 = *queue;
  }

  (*(v7 + 72))(queue, v13, inited);
}

void _dispatch_release_n(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (v3 != 0x7FFFFFFF)
  {
    v3 = atomic_fetch_add_explicit((a1 + 8), -a2, memory_order_release) - a2;
  }

  if (v3 < 1)
  {
    if (v3 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x10638);
    }

    v2 = *(a1 + 12);
    if (v2 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x10688);
    }

    _os_object_dispose(a1);
  }
}

void dispatch_once(dispatch_once_t *predicate, dispatch_block_t block)
{
  v4 = _Block_get_invoke_fn(block);
  function = 0;
  if (v4)
  {
    function = v4;
  }

  dispatch_once_f(predicate, block, function);
}

void dispatch_once_f(dispatch_once_t *predicate, void *context, dispatch_function_t function)
{
  explicit = atomic_load_explicit(predicate, memory_order_acquire);
  if (explicit != -1)
  {
    if ((explicit & 3) == 2)
    {
      if (4 * MEMORY[0xFFFFFC180] + 2 - explicit >= 0x10)
      {
        *predicate = -1;
      }
    }

    else
    {
      v8 = _dispatch_thread_getspecific(3) & 0xFFFFFFFCLL;
      v3 = 0;
      atomic_compare_exchange_strong_explicit(predicate, &v3, v8, memory_order_relaxed, memory_order_relaxed);
      if (v3)
      {
        _dispatch_once_wait(predicate);
      }

      else
      {
        _dispatch_once_callout(predicate, context, function);
      }
    }
  }
}

uint64_t _dispatch_once_callout(atomic_ullong *a1, uint64_t a2, void (*a3)(void (**a1)(void)))
{
  if (a3 == _dispatch_call_block_and_release && a2)
  {
    _Block_get_invoke_fn(a2);
  }

  _dispatch_client_callout(a2, a3);
  result = _dispatch_thread_getspecific(3);
  v7 = atomic_exchange_explicit(a1, 4 * MEMORY[0xFFFFFC180] + 2, memory_order_release);
  if (v7 != (result & 0xFFFFFFFC))
  {
    return _dispatch_gate_broadcast_slow(a1, v7);
  }

  return result;
}

void dispatch_assert_queue_V2(dispatch_queue_t queue)
{
  v2 = 0;
  if (*queue)
  {
    v2 = *queue;
  }

  v3 = *(v2 + 16);
  v1 = 0;
  if (v3 != 17)
  {
    v1 = v3 != 18;
  }

  if (v1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue()";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x10C7CLL);
  }

  v9 = *(queue + 7);
  if (((v9 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    v7 = queue;
    v6 = 0;
    v5 = 0;
    v10 = &v5;
    _dispatch_thread_getspecific_pair(20, &v5, 21, &v6);
    while (v5)
    {
      if (v5 == v7)
      {
        v8 = 1;
        goto LABEL_20;
      }

      v14 = &v5;
      v13 = v6;
      v12 = v5;
      if (v6)
      {
        v11 = *(v12 + 3);
        if (v11)
        {
          *v14 = v11;
          if (v12 == *v13)
          {
            v14[1] = v13[1];
          }
        }

        else
        {
          *v14 = *v13;
          v14[1] = v13[1];
        }
      }

      else
      {
        *v14 = *(v12 + 3);
      }
    }

    v8 = 0;
LABEL_20:
    if (!v8)
    {
      _dispatch_assert_queue_fail(queue, 1);
    }
  }
}

void _dispatch_assert_queue_fail(void *a1, char a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v2 = &unk_BBE5B;
  if ((a2 & 1) == 0)
  {
    v2 = "not ";
  }

  v3 = v7[9];
  if (v3)
  {
    asprintf(&v5, "%sBlock was %sexpected to execute on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v2, v3, v7);
  }

  else
  {
    asprintf(&v5, "%sBlock was %sexpected to execute on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v2, &unk_BBE5B, v7);
  }

  v4 = v5;
  _dispatch_log("%s", v5);
  qword_E4290 = v4;
  __break(1u);
}

void dispatch_assert_queue_not_V2(dispatch_queue_t queue)
{
  v2 = 0;
  if (*queue)
  {
    v2 = *queue;
  }

  v3 = *(v2 + 16);
  v1 = 0;
  if (v3 != 17)
  {
    v1 = v3 != 18;
  }

  if (v1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_assert_queue_not()";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x11028);
  }

  v9 = *(queue + 7);
  if (((v9 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0)
  {
    _dispatch_assert_queue_fail(queue, 0);
  }

  v7 = queue;
  v6 = 0;
  v5 = 0;
  v10 = &v5;
  _dispatch_thread_getspecific_pair(20, &v5, 21, &v6);
  while (v5)
  {
    if (v5 == v7)
    {
      v8 = 1;
      goto LABEL_21;
    }

    v14 = &v5;
    v13 = v6;
    v12 = v5;
    if (v6)
    {
      v11 = *(v12 + 3);
      if (v11)
      {
        *v14 = v11;
        if (v12 == *v13)
        {
          v14[1] = v13[1];
        }
      }

      else
      {
        *v14 = *v13;
        v14[1] = v13[1];
      }
    }

    else
    {
      *v14 = *(v12 + 3);
    }
  }

  v8 = 0;
LABEL_21:
  if (v8)
  {
    _dispatch_assert_queue_fail(queue, 0);
  }
}

void dispatch_assert_queue_barrier(dispatch_queue_t queue)
{
  dispatch_assert_queue_V2(queue);
  if (*(queue + 40) != 1 && (!*(queue + 3) || (*(queue + 7) & 0x40000000000000) == 0))
  {
    _dispatch_assert_queue_barrier_fail(queue);
  }
}

void _dispatch_assert_queue_barrier_fail(void *a1)
{
  v4 = a1;
  v3 = 0;
  v1 = a1[9];
  if (v1)
  {
    asprintf(&v3, "%sBlock was expected to act as a barrier on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", v1, v4);
  }

  else
  {
    asprintf(&v3, "%sBlock was expected to act as a barrier on queue [%s (%p)]", "BUG IN CLIENT OF LIBDISPATCH: Assertion failed: ", &unk_BBE5B, v4);
  }

  v2 = v3;
  _dispatch_log("%s", v3);
  qword_E4290 = v2;
  __break(1u);
}

BOOL dispatch_verify_current_queue_4swiftonly(void *a1)
{
  v3 = 0;
  if (*a1)
  {
    v3 = *a1;
  }

  v4 = *(v3 + 16);
  v2 = 0;
  if (v4 != 17)
  {
    v2 = v4 != 18;
  }

  if (v2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: invalid queue passed to dispatch_am_i_on_queue_4swiftonly()";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x11458);
  }

  v11 = a1[7];
  if (((v11 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) != 0)
  {
    v9 = a1;
    v8 = 0;
    v7 = 0;
    v12 = &v7;
    _dispatch_thread_getspecific_pair(20, &v7, 21, &v8);
    while (v7)
    {
      if (v7 == v9)
      {
        v10 = 1;
        return v10 != 0;
      }

      v16 = &v7;
      v15 = v8;
      v14 = v7;
      if (v8)
      {
        v13 = v14[3];
        if (v13)
        {
          *v16 = v13;
          if (v14 == *v15)
          {
            v16[1] = v15[1];
          }
        }

        else
        {
          *v16 = *v15;
          v16[1] = v15[1];
        }
      }

      else
      {
        *v16 = v14[3];
      }
    }

    v10 = 0;
    return v10 != 0;
  }

  else
  {
    return 1;
  }
}

void _dispatch_set_priority_and_mach_voucher_slow(uint64_t a1, unsigned int a2)
{
  v7 = a1;
  v5 = 0;
  if (a1)
  {
    if (_dispatch_set_qos_class_enabled)
    {
      v4 = _dispatch_thread_getspecific(4);
      if (v7 != v4)
      {
        if ((v4 & 0x1000000) != 0)
        {
          v5 = 16;
          v7 |= _dispatch_thread_getspecific(25) & 0x80000000;
        }

        else
        {
          v7 |= v4 & 0x88000000;
        }

        if ((v4 & 0xFFFFFF) != 0)
        {
          v5 |= 1u;
        }

        v2 = qword_E0138;
        if (((v2 ^ _dispatch_thread_getspecific(3)) & 0xFFFFFFFC) == 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Changing the QoS while on the manager queue";
          qword_E42C0 = v7;
          __break(1u);
          JUMPOUT(0x11850);
        }

        if ((BYTE3(v7) >> 1))
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Cannot raise oneself to manager";
          qword_E42C0 = v7;
          __break(1u);
          JUMPOUT(0x1189CLL);
        }

        if ((v4 & 0x2000000) != 0)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Cannot turn a manager thread into a normal one";
          qword_E42C0 = v4;
          __break(1u);
          JUMPOUT(0x118E4);
        }
      }
    }
  }

  if (a2 != -1)
  {
    v5 |= 2u;
  }

  v8 = _dispatch_thread_getspecific(29);
  if (v8)
  {
    _dispatch_abort(453, (v8 & 1) == 0);
  }

  if (v8 && (*(v8 + 53) & 2) != 0)
  {
    _dispatch_event_loop_drain(1u);
  }

  if (v5)
  {
    v3 = _pthread_set_properties_self();
    if (v3 == 22)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: _pthread_set_properties_self failed";
      qword_E42C0 = v7;
      __break(1u);
      JUMPOUT(0x119F0);
    }

    if (v3)
    {
      _dispatch_bug(230, v3);
    }
  }
}

uint64_t _dispatch_set_priority_and_voucher_slow(uint64_t a1, _DWORD *a2, char a3)
{
  v10 = -1;
  v9 = -1;
  if (a2 != -1)
  {
    v8 = (a3 & 4) != 0;
    v10 = _dispatch_thread_getspecific(28);
    if (v10 == a2 && (a3 & 2) != 0)
    {
      if (v8 && a2)
      {
        os_release(a2);
      }

      v10 = -1;
    }

    else
    {
      if (!v8 && a2)
      {
        os_retain(a2);
      }

      if (v10 == a2)
      {
        v14 = -1;
      }

      else
      {
        _dispatch_thread_setspecific(28, a2);
        v3 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", 400, v3, a2, v10);
        if (a2)
        {
          v7 = a2[8];
        }

        else
        {
          v7 = 0;
        }

        if (v10)
        {
          v6 = *(v10 + 32);
        }

        else
        {
          v6 = 0;
        }

        if (v7 == v6)
        {
          v5 = -1;
        }

        else
        {
          v5 = v7;
        }

        v14 = v5;
      }

      v9 = v14;
    }
  }

  if ((a3 & 8) == 0)
  {
    _dispatch_set_priority_and_mach_voucher_slow(a1, v9);
  }

  if (v10 != -1 && (a3 & 2) != 0)
  {
    if (v10)
    {
      os_release(v10);
    }

    return -1;
  }

  return v10;
}

void _dispatch_async_redirect_invoke(void *a1, uint64_t a2, unsigned int a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0uLL;
  v22 = a1[7];
  v21 = a1[5];
  v14 = 0;
  if (a1[4])
  {
    v14 = a1[4];
  }

  v20 = v26[6];
  if (v21)
  {
    v24 = v24 & 0xFCFFFFFF | v21;
  }

  v18 = _dispatch_thread_getspecific(20);
  if (v14)
  {
    v96 = v14;
    v95 = _dispatch_thread_getspecific(25);
    v13 = 0;
    if (*v14)
    {
      v13 = *v14;
    }

    v98 = *(v13 + 16) & 0x10000;
    v97 = 1954;
    if (!v98)
    {
      _dispatch_abort(v97, 0);
    }

    v118 = *(v96 + 21);
    v117 = _dispatch_thread_getspecific(25);
    v118 = v118 & 0xFFF0FFFF | v117 & 0xF0000;
    _dispatch_thread_setspecific(25, v118);
    v94 = v96;
    v99 = v96;
    _dispatch_thread_setspecific(20, v96);
    v17 = v95;
    v109 = *(v20 + 84);
    v108 = _dispatch_thread_getspecific(25);
    v107 = v108;
    if (v108)
    {
      if ((v109 & 0xFFF) != 0)
      {
        v107 &= 0x880F0000;
        if ((v108 & 0xFFF) > (v109 & 0xFFFu))
        {
          v12 = v108 & 0xFFF;
        }

        else
        {
          v12 = v109 & 0xFFF;
        }

        v107 |= v12;
        v111 = v109 & 0xF000;
        v113 = v107 & 0xF00;
        if (v111 >> 12 > v113 >> 8)
        {
          v109 &= 0x4400F000u;
        }

        else
        {
          v109 &= 0x40000000u;
        }

        v107 |= v109;
      }

      else
      {
        if ((v107 & 0xFFF) != 0)
        {
          v107 |= 0x40000000u;
        }

        v110 = v109 & 0xF000;
        v112 = v107 & 0xF00;
        if (v110 >> 12 > v112 >> 8)
        {
          v107 = v107 & 0xFFFF0FFF | v109 & 0x400F000;
        }
      }
    }

    else
    {
      v107 = v109 & 0xFFF0FFFF;
    }

    _dispatch_thread_setspecific(25, v107);
  }

  else
  {
    v102 = *(v20 + 84);
    v101 = _dispatch_thread_getspecific(25);
    v100 = v101;
    if (v101)
    {
      if ((v102 & 0xFFF) != 0)
      {
        v100 &= 0x880F0000;
        if ((v101 & 0xFFF) > (v102 & 0xFFFu))
        {
          v11 = v101 & 0xFFF;
        }

        else
        {
          v11 = v102 & 0xFFF;
        }

        v100 |= v11;
        v104 = v102 & 0xF000;
        v106 = v100 & 0xF00;
        if (v104 >> 12 > v106 >> 8)
        {
          v102 &= 0x4400F000u;
        }

        else
        {
          v102 &= 0x40000000u;
        }

        v100 |= v102;
      }

      else
      {
        if ((v100 & 0xFFF) != 0)
        {
          v100 |= 0x40000000u;
        }

        v103 = v102 & 0xF000;
        v105 = v100 & 0xF00;
        if (v103 >> 12 > v105 >> 8)
        {
          v100 = v100 & 0xFFFF0FFF | v102 & 0x400F000;
        }
      }
    }

    else
    {
      v100 = v102 & 0xFFF0FFFF;
    }

    _dispatch_thread_setspecific(25, v100);
    v17 = v101;
  }

  v115 = v20;
  v114 = &v23;
  v121 = &v23;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v23);
  _dispatch_thread_setspecific_pair(20, v115, 21, v114);
  v16 = v26;
  v32 = v26;
  v31 = 516;
  v30 = v26[3];
  v29 = 4;
  v54 = 1;
  v53 = 600;
  v26[3] = -1;
  if (v30 != -1)
  {
    v47 = 771817480;
    v46 = v30;
    v45 = v32;
    if (v30)
    {
      v10 = v46[8];
    }

    else
    {
      v10 = 0;
    }

    v44 = v10;
    v52 = v47;
    v51 = v10;
    v50 = v45;
    v49 = 0;
    v48 = 0;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v3, v30, v32);
  }

  v36 = v32[1];
  v35 = v30;
  v34 = v29 | 2;
  v33 = 0;
  if (v36 != -1)
  {
    v83 = v36;
    v82 = v34;
    v81 = _dispatch_thread_getspecific(25);
    v89 = v81;
    v90 = v81 & 0xF00;
    v88 = v90 >> 8;
    v87 = v81;
    if (v90 >> 8)
    {
      v87 |= 1 << (v88 + 7);
    }

    v80 = v87;
    v91 = v87;
    v79 = v87 & 0xFFFFFF00;
    v9 = 1;
    if ((v82 & 1) == 0)
    {
      v9 = (v83 & 0x10000000) != 0;
    }

    v78 = v9;
    v85 = v83;
    v83 &= 0xFFFFFFu;
    if (v83)
    {
      if (v83 >= v79)
      {
        if (v78 || (v81 & 0x44000000) != 0)
        {
          v84 = v83;
        }

        else
        {
          v84 = v80;
        }
      }

      else
      {
        v84 = v80;
      }
    }

    else
    {
      v86 = v81 & 0xF000;
      v77 = v86 >> 12;
      if (v86 >> 12)
      {
        v93 = v77;
        v92 = 1 << (v77 + 7);
        v8 = v92 | 0xFF;
      }

      else
      {
        v8 = v80;
      }

      v84 = v8;
    }

    v33 = v84;
  }

  v40 = v33;
  v39 = v35;
  v38 = v34;
  v63 = v33;
  v76 = v33 != -1;
  v75 = 2409;
  if (v33 == -1)
  {
    _dispatch_abort(v75, v76);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v74 = v63;
    v73 = 4261412863;
    v72 = 0;
    v63 &= 0xFFFFFFFF02FFFFFFLL;
    v65 = _dispatch_thread_getspecific(4);
    v62 = v65;
    v61 = 0x1000000;
    v60 = 2281701376;
    if ((v65 & 0x1000000) != 0)
    {
      if (v63)
      {
        v7 = v63;
      }

      else
      {
        v71 = v62;
        v70 = v61;
        v69 = 0;
        v7 = v62 & (~v61 | 0xFFFFFF);
      }

      v64 = v7;
    }

    else
    {
      v68 = v62;
      v67 = v60;
      v66 = 0;
      v62 &= ~v60 | 0xFFFFFF;
      if (v63 == v62)
      {
        v64 = 0;
      }

      else
      {
        v64 = v63;
      }
    }
  }

  else
  {
    v64 = 0;
  }

  v40 = v64;
  if (v64)
  {
    goto LABEL_89;
  }

  if (v39 == -1)
  {
    v41 = -1;
    goto LABEL_90;
  }

  v6 = v39;
  if (v6 != _dispatch_thread_getspecific(28))
  {
LABEL_89:
    v41 = _dispatch_set_priority_and_voucher_slow(v40, v39, v38);
  }

  else
  {
    v37 = (v38 & 4) != 0;
    if ((v38 & 2) != 0)
    {
      if (v37 && v39)
      {
        object = v39;
        os_release(v39);
      }

      v39 = -1;
    }

    else if (!v37 && v39)
    {
      v43 = v39;
      os_retain(v39);
    }

    v41 = v39;
  }

LABEL_90:
  v57 = v16;
  v56 = _dispatch_thread_getspecific(22);
  if (v56)
  {
    v5 = *(v56 + 8) + 1;
  }

  else
  {
    v5 = 1;
  }

  v55 = v5;
  if (v5 <= _dispatch_continuation_cache_limit)
  {
    *(v57 + 16) = v56;
    *(v57 + 8) = v55;
    _dispatch_thread_setspecific(22, v57);
    v58 = 0;
  }

  else
  {
    v58 = v57;
  }

  v15 = v58;
  _dispatch_continuation_pop(v22, v25, v24, v20);
  if (v15)
  {
    _dispatch_continuation_free_to_cache_limit(v15);
  }

  v116 = &v23;
  _dispatch_thread_setspecific_packed_pair(20, 21, &v23);
  if (v14)
  {
    v59 = v18;
    _dispatch_thread_setspecific(20, v18);
  }

  v120 = v17;
  v119 = _dispatch_thread_getspecific(25);
  v120 &= 0xFFF0FFFF;
  v120 |= v119 & 0xF0000;
  _dispatch_thread_setspecific(25, v120);
  for (i = *(v20 + 24); ; i = *(i + 24))
  {
    v4 = 0;
    if (*(i + 24))
    {
      v4 = i != v18;
    }

    if (!v4)
    {
      break;
    }

    v27 = i;
    v28 = i;
    _dispatch_lane_non_barrier_complete(i, 0);
  }

  _dispatch_lane_non_barrier_complete(v20, 1u);
}

uint64_t _dispatch_workloop_stealer_invoke(void *a1, uint64_t a2, int a3)
{
  v14 = a1[3];
  a1[3] = -1;
  if (v14 != -1)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v3, v14, a1);
  }

  v17 = a1[1];
  v16 = 0;
  if (v17 != -1)
  {
    v24 = _dispatch_thread_getspecific(25);
    v27 = (v24 & 0xF00) >> 8;
    v26 = v24;
    if (v27)
    {
      v26 = v24 | (1 << (v27 + 7));
    }

    if ((v17 & 0xFFFFFF) != 0)
    {
      if ((v17 & 0xFFFFFFuLL) >= (v26 & 0xFFFFFF00))
      {
        if ((v17 & 0x10000000) != 0 || (v24 & 0x44000000) != 0)
        {
          v25 = v17 & 0xFFFFFF;
        }

        else
        {
          v25 = v26;
        }
      }

      else
      {
        v25 = v26;
      }
    }

    else
    {
      v23 = (v24 & 0xF000) >> 12;
      if (v23)
      {
        v8 = (1 << (v23 + 7)) | 0xFF;
      }

      else
      {
        v8 = v26;
      }

      v25 = v8;
    }

    v16 = v25;
  }

  if (v16 == -1)
  {
    _dispatch_abort(2409, 0);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v21 = v16 & 0xFFFFFFFF02FFFFFFLL;
    v20 = _dispatch_thread_getspecific(4);
    if ((v20 & 0x1000000) != 0)
    {
      if (v21)
      {
        v7 = v16 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v7 = v20 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v22 = v7;
    }

    else if (v21 == (v20 & 0xFFFFFFFF77FFFFFFLL))
    {
      v22 = 0;
    }

    else
    {
      v22 = v16 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    goto LABEL_38;
  }

  if (v14 == -1)
  {
    goto LABEL_39;
  }

  if (v14 != _dispatch_thread_getspecific(28))
  {
LABEL_38:
    _dispatch_set_priority_and_voucher_slow(v22, v14, 6);
  }

  else if (v14)
  {
    os_release(v14);
  }

LABEL_39:
  v18 = _dispatch_thread_getspecific(22);
  if (v18)
  {
    v6 = *(v18 + 8) + 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6 <= _dispatch_continuation_cache_limit)
  {
    a1[2] = v18;
    *(a1 + 2) = v6;
    _dispatch_thread_setspecific(22, a1);
    v19 = 0;
  }

  else
  {
    v19 = a1;
  }

  v9 = a1[6];
  v5 = 0;
  if (*v9)
  {
    v5 = *v9;
  }

  result = (*(v5 + 48))(v9, a2, a3 | 1u);
  if (v19)
  {
    return _dispatch_continuation_free_to_cache_limit(v19);
  }

  return result;
}

uint64_t _dispatch_queue_override_invoke(void *a1, uint64_t a2, unsigned int a3)
{
  v22 = _dispatch_thread_getspecific(20);
  v20 = 4;
  v21 = a1[6];
  v62 = a1[7];
  v61 = _dispatch_thread_getspecific(25);
  v19 = 0;
  if (*v62)
  {
    v19 = *v62;
  }

  if ((*(v19 + 16) & 0x10000) == 0)
  {
    _dispatch_abort(1954, 0);
  }

  v63 = *(v62 + 84);
  v64 = v63 & 0xFFF0FFFF | _dispatch_thread_getspecific(25) & 0xF0000;
  _dispatch_thread_setspecific(25, v64);
  _dispatch_thread_setspecific(20, v62);
  v18 = 0;
  if (*a1)
  {
    v18 = *a1;
  }

  if (*(v18 + 16) == 1792)
  {
    a3 |= 1u;
    v20 = 516;
  }

  v26 = a1[3];
  a1[3] = -1;
  if (v26 != -1)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v3, v26, a1);
  }

  v28 = a1[1];
  v27 = 0;
  if (v28 != -1)
  {
    v55 = _dispatch_thread_getspecific(25);
    v58 = (v55 & 0xF00) >> 8;
    v57 = v55;
    if (v58)
    {
      v57 = v55 | (1 << (v58 + 7));
    }

    if ((v28 & 0xFFFFFF) != 0)
    {
      if ((v28 & 0xFFFFFF) >= (v57 & 0xFFFFFF00))
      {
        if ((v28 & 0x10000000) != 0 || (v55 & 0x44000000) != 0)
        {
          v56 = v28 & 0xFFFFFF;
        }

        else
        {
          v56 = v57;
        }
      }

      else
      {
        v56 = v57;
      }
    }

    else
    {
      v54 = (v55 & 0xF000) >> 12;
      if (v54)
      {
        v17 = (1 << (v54 + 7)) | 0xFF;
      }

      else
      {
        v17 = v57;
      }

      v56 = v17;
    }

    v27 = v56;
  }

  if (v27 == -1)
  {
    _dispatch_abort(2409, 0);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v49 = v27 & 0xFFFFFFFF02FFFFFFLL;
    v48 = _dispatch_thread_getspecific(4);
    if ((v48 & 0x1000000) != 0)
    {
      if (v49)
      {
        v16 = v27 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v16 = v48 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v50 = v16;
    }

    else if (v49 == (v48 & 0xFFFFFFFF77FFFFFFLL))
    {
      v50 = 0;
    }

    else
    {
      v50 = v27 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    goto LABEL_46;
  }

  if (v26 == -1)
  {
    goto LABEL_47;
  }

  if (v26 != _dispatch_thread_getspecific(28))
  {
LABEL_46:
    _dispatch_set_priority_and_voucher_slow(v50, v26, v20 & 4 | 2);
  }

  else if (v26)
  {
    os_release(v26);
  }

LABEL_47:
  v29 = _dispatch_thread_getspecific(22);
  if (v29)
  {
    v15 = *(v29 + 8) + 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15 <= _dispatch_continuation_cache_limit)
  {
    a1[2] = v29;
    *(a1 + 2) = v15;
    _dispatch_thread_setspecific(22, a1);
    v30 = 0;
  }

  else
  {
    v30 = a1;
  }

  if (*v21 >= 0x1000uLL)
  {
    v14 = 0;
    if (*v21)
    {
      v14 = *v21;
    }

    if (*(v14 + 16) == 1)
    {
      v13 = 0;
      if (*v21)
      {
        v13 = *v21;
      }

      (*(v13 + 24))(v21, 0, (a3 >> 21) & 1);
    }

    else
    {
      v12 = 0;
      if (*v21)
      {
        v12 = *v21;
      }

      (*(v12 + 48))(v21, a2, a3);
    }

    goto LABEL_137;
  }

  v32 = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v32 = _dispatch_autorelease_pool_push();
  }

  v31 = *v21;
  v37 = v21[3];
  v36 = *v21 & 4;
  if (v36)
  {
    v21[3] = -1;
  }

  if (v37 != -1)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v4 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v4, v37, v21);
  }

  v39 = v21[1];
  v38 = 0;
  if (v39 != -1)
  {
    v52 = _dispatch_thread_getspecific(25);
    v60 = (v52 & 0xF00) >> 8;
    v59 = v52;
    if (v60)
    {
      v59 = v52 | (1 << (v60 + 7));
    }

    if ((v39 & 0xFFFFFF) != 0)
    {
      if ((v39 & 0xFFFFFF) >= (v59 & 0xFFFFFF00))
      {
        if ((v39 & 0x10000000) != 0 || (v52 & 0x44000000) != 0)
        {
          v53 = v39 & 0xFFFFFF;
        }

        else
        {
          v53 = v59;
        }
      }

      else
      {
        v53 = v59;
      }
    }

    else
    {
      v51 = (v52 & 0xF000) >> 12;
      if (v51)
      {
        v11 = (1 << (v51 + 7)) | 0xFF;
      }

      else
      {
        v11 = v59;
      }

      v53 = v11;
    }

    v38 = v53;
  }

  if (v38 == -1)
  {
    _dispatch_abort(2409, 0);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v46 = v38 & 0xFFFFFFFF02FFFFFFLL;
    v45 = _dispatch_thread_getspecific(4);
    if ((v45 & 0x1000000) != 0)
    {
      if (v46)
      {
        v10 = v38 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v10 = v45 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v47 = v10;
    }

    else if (v46 == (v45 & 0xFFFFFFFF77FFFFFFLL))
    {
      v47 = 0;
    }

    else
    {
      v47 = v38 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v47 = 0;
  }

  if (v47)
  {
LABEL_105:
    _dispatch_set_priority_and_voucher_slow(v47, v37, v36 | 2);
    goto LABEL_106;
  }

  if (v37 != -1)
  {
    if (v37 == _dispatch_thread_getspecific(28))
    {
      if ((v36 & 4) != 0 && v37)
      {
        os_release(v37);
      }

      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_106:
  if ((v31 & 4) != 0)
  {
    v40 = _dispatch_thread_getspecific(22);
    if (v40)
    {
      v9 = *(v40 + 8) + 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9 <= _dispatch_continuation_cache_limit)
    {
      v21[2] = v40;
      *(v21 + 2) = v9;
      _dispatch_thread_setspecific(22, v21);
      v41 = 0;
    }

    else
    {
      v41 = v21;
    }

    v33 = v41;
  }

  else
  {
    v33 = 0;
  }

  if ((v31 & 8) != 0)
  {
    group = v21[6];
    v8 = 0;
    if (*group)
    {
      v8 = *group;
    }

    if (*(v8 + 16) != 514)
    {
      v7 = 0;
      if (*group)
      {
        v7 = *group;
      }

      v5 = *(v7 + 16);
      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected object type";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x159B4);
    }

    v44 = v21[5];
    v43 = v21[4];
    if (v43 == _dispatch_call_block_and_release && v44)
    {
      _Block_get_invoke_fn(v44);
    }

    _dispatch_client_callout(v44, v43);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    dispatch_group_leave(group);
  }

  else
  {
    v35 = v21[5];
    v34 = v21[4];
    if (v34 == _dispatch_call_block_and_release && v35)
    {
      _Block_get_invoke_fn(v35);
    }

    _dispatch_client_callout(v35, v34);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  if (v33)
  {
    _dispatch_continuation_free_to_cache_limit(v33);
  }

  if (v32)
  {
    _dispatch_autorelease_pool_pop(v32);
  }

LABEL_137:
  if ((v20 & 0x200) == 0 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if (v30)
  {
    _dispatch_continuation_free_to_cache_limit(v30);
  }

  v65 = _dispatch_thread_getspecific(25);
  _dispatch_thread_setspecific(25, v61 & 0xFFF0FFFF | v65 & 0xF0000);
  return _dispatch_thread_setspecific(20, v22);
}

uint64_t _dispatch_continuation_free_to_cache_limit(void *a1)
{
  _dispatch_continuation_free_to_heap(a1);
  result = _dispatch_thread_getspecific(22);
  v5 = result;
  if (result)
  {
    v3 = *(result + 8) - _dispatch_continuation_cache_limit;
    if (v3 > 0)
    {
      do
      {
        v4 = v5[2];
        _dispatch_continuation_free_to_heap(v5);
        --v3;
        v2 = 0;
        if (v3)
        {
          v5 = v4;
          v2 = v4 != 0;
        }
      }

      while (v2);
      return _dispatch_thread_setspecific(22, v4);
    }
  }

  return result;
}

void _dispatch_continuation_pop_inline(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = HIWORD(a3);
  v14 = _dispatch_thread_getspecific(24);
  if (v14)
  {
    (*v14)(a4);
  }

  v15 = v16 << 16;
  if (*a1 >= 0x1000uLL)
  {
    v13 = 0;
    if (*a1)
    {
      v13 = *a1;
    }

    if (*(v13 + 16) == 1)
    {
      v12 = 0;
      if (*a1)
      {
        v12 = *a1;
      }

      (*(v12 + 24))(a1, 0, (v15 >> 21) & 1);
    }

    else
    {
      v11 = 0;
      if (*a1)
      {
        v11 = *a1;
      }

      (*(v11 + 48))(a1, a2, v15);
    }

    goto LABEL_87;
  }

  v21 = 0;
  if ((v15 & 0x1000000) != 0)
  {
    v21 = _dispatch_autorelease_pool_push();
  }

  v20 = *a1;
  v26 = a1[3];
  v25 = *a1 & 4;
  if (v25)
  {
    a1[3] = -1;
  }

  if (v26 != -1)
  {
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v4 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] adopt", 607, v4, v26, a1);
  }

  v28 = a1[1];
  v27 = 0;
  if (v28 != -1)
  {
    v38 = _dispatch_thread_getspecific(25);
    v41 = (v38 & 0xF00) >> 8;
    v40 = v38;
    if (v41)
    {
      v40 = v38 | (1 << (v41 + 7));
    }

    if ((v28 & 0xFFFFFF) != 0)
    {
      if ((v28 & 0xFFFFFFuLL) >= (v40 & 0xFFFFFF00))
      {
        if ((v28 & 0x10000000) != 0 || (v38 & 0x44000000) != 0)
        {
          v39 = v28 & 0xFFFFFF;
        }

        else
        {
          v39 = v40;
        }
      }

      else
      {
        v39 = v40;
      }
    }

    else
    {
      v37 = (v38 & 0xF000) >> 12;
      if (v37)
      {
        v10 = (1 << (v37 + 7)) | 0xFF;
      }

      else
      {
        v10 = v40;
      }

      v39 = v10;
    }

    v27 = v39;
  }

  if (v27 == -1)
  {
    _dispatch_abort(2409, 0);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v35 = v27 & 0xFFFFFFFF02FFFFFFLL;
    v34 = _dispatch_thread_getspecific(4);
    if ((v34 & 0x1000000) != 0)
    {
      if (v35)
      {
        v9 = v27 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v9 = v34 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v36 = v9;
    }

    else if (v35 == (v34 & 0xFFFFFFFF77FFFFFFLL))
    {
      v36 = 0;
    }

    else
    {
      v36 = v27 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
LABEL_55:
    _dispatch_set_priority_and_voucher_slow(v36, v26, v25 | 2);
    goto LABEL_56;
  }

  if (v26 != -1)
  {
    if (v26 == _dispatch_thread_getspecific(28))
    {
      if ((v25 & 4) != 0 && v26)
      {
        os_release(v26);
      }

      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_56:
  if ((v20 & 4) != 0)
  {
    v29 = _dispatch_thread_getspecific(22);
    if (v29)
    {
      v8 = *(v29 + 8) + 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 <= _dispatch_continuation_cache_limit)
    {
      a1[2] = v29;
      *(a1 + 2) = v8;
      _dispatch_thread_setspecific(22, a1);
      v30 = 0;
    }

    else
    {
      v30 = a1;
    }

    v22 = v30;
  }

  else
  {
    v22 = 0;
  }

  if ((v20 & 8) != 0)
  {
    group = a1[6];
    v7 = 0;
    if (*group)
    {
      v7 = *group;
    }

    if (*(v7 + 16) != 514)
    {
      v6 = 0;
      if (*group)
      {
        v6 = *group;
      }

      v5 = *(v6 + 16);
      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected object type";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x16F3CLL);
    }

    v33 = a1[5];
    v32 = a1[4];
    if (v32 == _dispatch_call_block_and_release && v33)
    {
      _Block_get_invoke_fn(v33);
    }

    _dispatch_client_callout(v33, v32);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    dispatch_group_leave(group);
  }

  else
  {
    v24 = a1[5];
    v23 = a1[4];
    if (v23 == _dispatch_call_block_and_release && v24)
    {
      _Block_get_invoke_fn(v24);
    }

    _dispatch_client_callout(v24, v23);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  if (v22)
  {
    _dispatch_continuation_free_to_cache_limit(v22);
  }

  if (v21)
  {
    _dispatch_autorelease_pool_pop(v21);
  }

LABEL_87:
  if (v14)
  {
    v14[1](a4);
  }
}

dispatch_block_t dispatch_block_create(dispatch_block_flags_t flags, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  else
  {
    return _dispatch_block_create_with_voucher_and_priority(flags, 0, 0, block);
  }
}

void *_dispatch_block_create_with_voucher_and_priority(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v13 = a1;
  if ((a1 & 0xA) != 0)
  {
    v13 = a1 | 0x40000000;
  }

  if ((v13 & 0x20) != 0)
  {
    v13 &= ~0x10uLL;
  }

  v12 = v13;
  if ((v13 & 0x80000000) == 0)
  {
    if ((v13 & 2) != 0)
    {
      a2 = 0;
      v12 = v13 | 0x80000000;
    }

    else if ((v13 & 0x40) != 0)
    {
      a2 = -1;
      v12 = v13 | 0x80000000;
    }

    else if ((v13 & 4) != 0)
    {
      a2 = -3;
      v12 = v13 | 0x80000000;
    }
  }

  if (a2 == -3)
  {
    a2 = _dispatch_thread_getspecific(28);
  }

  if ((v13 & 4) != 0 && (v12 & 0x40000000) == 0)
  {
    v15 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v15 <= 0x10FF)
    {
      v16 = v15;
    }

    else
    {
      v16 = 4351;
    }

    a3 = v16;
    v12 |= 0x40000000uLL;
  }

  v8 = _dispatch_block_create(v12, a2, a3, a4);
  v6 = _Block_get_invoke_fn(v8);
  v7 = 0;
  if (v6)
  {
    v7 = v6;
  }

  if (v7 == _dispatch_block_special_invoke)
  {
    if (v8[4] != 3512316172)
    {
      v4 = v8[4];
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v4;
      __break(1u);
      JUMPOUT(0x175ECLL);
    }

    v14 = (v8 + 4);
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    _dispatch_abort(429, 0);
  }

  _Block_get_invoke_fn(a4);
  _dispatch_thread_getspecific(4);
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  return v8;
}

dispatch_block_t dispatch_block_create_with_qos_class(dispatch_block_flags_t flags, dispatch_qos_class_t qos_class, int relative_priority, dispatch_block_t block)
{
  if ((flags & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  if (qos_class == QOS_CLASS_UNSPECIFIED || qos_class == 5 || qos_class == QOS_CLASS_BACKGROUND || qos_class == QOS_CLASS_UTILITY || qos_class == QOS_CLASS_DEFAULT || qos_class == QOS_CLASS_USER_INITIATED || qos_class == QOS_CLASS_USER_INTERACTIVE)
  {
    v6 = 0;
    if (relative_priority >= -15)
    {
      v6 = relative_priority <= 0;
    }

    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    return 0;
  }

  v4 = _pthread_qos_class_encode();
  return _dispatch_block_create_with_voucher_and_priority(flags | 0x40000000, 0, v4, block);
}

void *dispatch_block_create_with_voucher(uint64_t a1, uint64_t a2, const void *a3)
{
  if ((a1 & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  else
  {
    return _dispatch_block_create_with_voucher_and_priority(a1 & 0xFFFFFFFF7FFFFFBFLL | 0x80000000, a2, 0, a3);
  }
}

void *dispatch_block_create_with_voucher_and_qos_class(uint64_t a1, uint64_t a2, unsigned int a3, int a4, const void *a5)
{
  if ((a1 & 0xFFFFFF00) != 0)
  {
    return 0;
  }

  if (!a3 || a3 == 5 || a3 == 9 || a3 == 17 || a3 == 21 || a3 == 25 || a3 == 33)
  {
    v7 = 0;
    if (a4 >= -15)
    {
      v7 = a4 <= 0;
    }

    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    return 0;
  }

  v5 = _pthread_qos_class_encode();
  return _dispatch_block_create_with_voucher_and_priority(a1 & 0xFFFFFFFF3FFFFFB7 | 0xC0000000, a2, v5, a5);
}

void dispatch_block_perform(dispatch_block_flags_t flags, dispatch_block_t block)
{
  v9 = flags;
  v8 = block;
  v10 = flags;
  if ((flags & 0xFFFFFF00) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid flags passed to dispatch_block_perform()";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x17BB0);
  }

  v11 = v9;
  if ((v9 & 0xA) != 0)
  {
    v11 |= 0x40000000uLL;
  }

  if ((v11 & 0x20) != 0)
  {
    v11 &= ~0x10uLL;
  }

  v9 = v11;
  v7 = -1;
  if ((v11 & 2) != 0)
  {
    v7 = 0;
    v9 |= 0x80000000uLL;
  }

  v6 = 0;
  v2[0] = 0xD159B10CuLL;
  *(&v2[0] + 1) = v9;
  v2[1] = 8uLL;
  v3 = v7;
  v4 = v8;
  v5 = 0uLL;
  _dispatch_block_invoke_direct(v2);
}

void _dispatch_block_invoke_direct(uint64_t a1)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 >> 2))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0x17D24);
  }

  if (v8)
  {
    goto LABEL_56;
  }

  v7 = 0;
  v11 = 0;
  if ((v9 & 0x40000000) != 0 && ((v9 & 0x20) != 0 || (v9 & 0x10) == 0))
  {
    v12 = *(a1 + 24) & 0xFFFFFFLL;
    v13 = _dispatch_thread_getspecific(4);
    if ((v13 & 0xFFFFFF) != 0 && (v13 & 0xFFFFFF) < v12)
    {
      v11 = v13 & 0xFFFFFF;
    }
  }

  if (v11)
  {
    v7 = *(a1 + 24);
  }

  v6 = -1;
  if ((v9 & 0x80000000) != 0)
  {
    v6 = *(a1 + 32);
  }

  if (v7 == -1)
  {
    _dispatch_abort(2409, 0);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v18 = v7 & 0xFFFFFFFF02FFFFFFLL;
    v17 = _dispatch_thread_getspecific(4);
    if ((v17 & 0x1000000) != 0)
    {
      if (v18)
      {
        v5 = v7 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v5 = v17 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v19 = v5;
    }

    else if (v18 == (v17 & 0xFFFFFFFF77FFFFFFLL))
    {
      v19 = 0;
    }

    else
    {
      v19 = v7 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    goto LABEL_33;
  }

  if (v6 == -1)
  {
    v14 = -1;
    goto LABEL_34;
  }

  if (v6 != _dispatch_thread_getspecific(28))
  {
LABEL_33:
    v14 = _dispatch_set_priority_and_voucher_slow(v19, v6, 0);
  }

  else
  {
    if (v6)
    {
      os_retain(v6);
    }

    v14 = v6;
  }

LABEL_34:
  *(a1 + 64) = _dispatch_thread_getspecific(3);
  v2 = *(a1 + 40);
  v3 = _Block_get_invoke_fn(v2);
  v4 = 0;
  if (v3)
  {
    v4 = v3;
  }

  if (v4 == _dispatch_call_block_and_release && v2)
  {
    _Block_get_invoke_fn(v2);
  }

  _dispatch_client_callout(v2, v4);
  if (_dispatch_set_qos_class_enabled)
  {
    v15 = _dispatch_thread_getspecific(4);
    if ((v15 & 0x1000000) != 0)
    {
      if ((v11 & 0x2FFFFFF) != 0)
      {
        v1 = v11 & 0x2FFFFFF;
      }

      else
      {
        v1 = v15 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v16 = v1;
    }

    else if ((v11 & 0x2FFFFFF) == (v15 & 0xFFFFFFFF77FFFFFFLL))
    {
      v16 = 0;
    }

    else
    {
      v16 = v11 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    goto LABEL_55;
  }

  if (v14 == -1)
  {
    goto LABEL_56;
  }

  if (v14 != _dispatch_thread_getspecific(28))
  {
LABEL_55:
    _dispatch_set_priority_and_voucher_slow(v16, v14, 6);
    goto LABEL_56;
  }

  if (v14)
  {
    os_release(v14);
  }

LABEL_56:
  if ((v8 & 8) == 0 && !atomic_fetch_add_explicit((a1 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void _dispatch_block_sync_invoke(uint64_t a1)
{
  v4 = _Block_get_invoke_fn(a1);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  if (v5 == _dispatch_block_special_invoke)
  {
    if (*(a1 + 32) != 3512316172)
    {
      v1 = *(a1 + 32);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x187C0);
    }

    v10 = a1 + 32;
  }

  else
  {
    v10 = 0;
  }

  v8 = *(v10 + 16);
  if ((v8 >> 2))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0x18834);
  }

  if (v8)
  {
    goto LABEL_50;
  }

  v7 = -1;
  if ((*(v10 + 8) & 0x80000000) != 0)
  {
    v11 = *(v10 + 32);
    v19 = _dispatch_thread_getspecific(25);
    v21 = (v19 & 0xF00) >> 8;
    v20 = v19;
    if (v21)
    {
      v20 = v19 | (1 << (v21 + 7));
    }

    v18 = (v19 & 0xF000) >> 12;
    if (v18)
    {
      v3 = (1 << (v18 + 7)) | 0xFF;
    }

    else
    {
      v3 = v20;
    }

    if (v3 == -1)
    {
      _dispatch_abort(2409, 0);
    }

    if (_dispatch_set_qos_class_enabled)
    {
      v16 = v3 & 0xFFFFFFFF02FFFFFFLL;
      v15 = _dispatch_thread_getspecific(4);
      if ((v15 & 0x1000000) != 0)
      {
        if (v16)
        {
          v2 = v3 & 0xFFFFFFFF02FFFFFFLL;
        }

        else
        {
          v2 = v15 & 0xFFFFFFFFFEFFFFFFLL;
        }

        v17 = v2;
      }

      else if (v16 == (v15 & 0xFFFFFFFF77FFFFFFLL))
      {
        v17 = 0;
      }

      else
      {
        v17 = v3 & 0xFFFFFFFF02FFFFFFLL;
      }
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      if (v11 == -1)
      {
        v12 = -1;
LABEL_37:
        v7 = v12;
        goto LABEL_38;
      }

      if (v11 == _dispatch_thread_getspecific(28))
      {
        if (v11)
        {
          os_retain(v11);
        }

        v12 = v11;
        goto LABEL_37;
      }
    }

    v12 = _dispatch_set_priority_and_voucher_slow(v17, v11, 0);
    goto LABEL_37;
  }

LABEL_38:
  (*(*(v10 + 40) + 16))();
  if (_dispatch_set_qos_class_enabled)
  {
    v13 = _dispatch_thread_getspecific(4);
    if ((v13 & 0x1000000) != 0)
    {
      v14 = v13 & 0xFFFFFFFFFEFFFFFFLL;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    goto LABEL_49;
  }

  if (v7 == -1)
  {
    goto LABEL_50;
  }

  if (v7 != _dispatch_thread_getspecific(28))
  {
LABEL_49:
    _dispatch_set_priority_and_voucher_slow(v14, v7, 6);
    goto LABEL_50;
  }

  if (v7)
  {
    os_release(v7);
  }

LABEL_50:
  if ((v8 & 8) == 0 && !atomic_fetch_add_explicit((v10 + 20), 1u, memory_order_relaxed))
  {
    dispatch_group_leave(*(v10 + 48));
  }

  v6 = __swp(0, (v10 + 56));
  if (v6)
  {
    _dispatch_release_2(v6);
  }
}

void _dispatch_release_2(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 0x7FFFFFFF)
  {
    v2 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFE, memory_order_release) - 2;
  }

  if (v2 < 1)
  {
    if (v2 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x19234);
    }

    v1 = *(a1 + 12);
    if (v1 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x19284);
    }

    _os_object_dispose(a1);
  }
}

void dispatch_block_cancel(dispatch_block_t block)
{
  v2 = _Block_get_invoke_fn(block);
  v3 = 0;
  if (v2)
  {
    v3 = v2;
  }

  if (v3 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v1 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x193A8);
    }

    v5 = block + 32;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_cancel()";
    __break(1u);
    JUMPOUT(0x193F0);
  }

  atomic_fetch_or_explicit((v5 + 16), 1u, memory_order_relaxed);
}

intptr_t dispatch_block_testcancel(dispatch_block_t block)
{
  v3 = _Block_get_invoke_fn(block);
  v4 = 0;
  if (v3)
  {
    v4 = v3;
  }

  if (v4 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v1 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x19570);
    }

    v6 = block + 32;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_testcancel()";
    __break(1u);
    JUMPOUT(0x195B8);
  }

  return *(v6 + 4) & 1;
}

intptr_t dispatch_block_wait(dispatch_block_t block, dispatch_time_t timeout)
{
  v10 = _Block_get_invoke_fn(block);
  v11 = 0;
  if (v10)
  {
    v11 = v10;
  }

  if (v11 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v2 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x196F0);
    }

    v20 = block + 32;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_wait()";
    __break(1u);
    JUMPOUT(0x19738);
  }

  v17 = atomic_fetch_or_explicit((v20 + 16), 2u, memory_order_relaxed);
  if ((v17 & 6) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be waited for more than once";
    qword_E42C0 = v17;
    __break(1u);
    JUMPOUT(0x197C8);
  }

  v16 = _dispatch_thread_getspecific(4);
  v15 = __swp(0, v20 + 14);
  if (v15)
  {
    v9 = 0;
    if (*v15)
    {
      v9 = *v15;
    }

    v3 = (v16 & 0x3FFF00uLL) >> 8;
    v4 = __clz(__rbit32(v3));
    if (v3)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    (*(v9 + 64))(v15, v5, 9);
  }

  v14 = *(v20 + 16);
  if (v14 && (_dispatch_set_qos_class_enabled & 1) != 0)
  {
    _pthread_qos_override_start_direct();
  }

  v13 = *(v20 + 5);
  v8 = 1;
  if (v13 <= 1)
  {
    v7 = 0;
    if (v14)
    {
      v7 = v15 != 0;
    }

    v8 = v7;
  }

  if (v8)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and waited for";
    qword_E42C0 = v13;
    __break(1u);
    JUMPOUT(0x199FCLL);
  }

  v12 = dispatch_group_wait(*(v20 + 6), timeout);
  if (v14 && (_dispatch_set_qos_class_enabled & 1) != 0)
  {
    _pthread_qos_override_end_direct();
  }

  if (v12)
  {
    atomic_fetch_and_explicit((v20 + 16), 0xFFFFFFFD, memory_order_relaxed);
  }

  else
  {
    atomic_fetch_or_explicit((v20 + 16), 4u, memory_order_relaxed);
  }

  return v12;
}

void dispatch_block_notify(dispatch_block_t block, dispatch_queue_t queue, dispatch_block_t notification_block)
{
  v4 = _Block_get_invoke_fn(block);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  if (v5 == _dispatch_block_special_invoke)
  {
    if (*(block + 4) != 3512316172)
    {
      v3 = *(block + 4);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x19C64);
    }

    v11 = block + 32;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid block object passed to dispatch_block_notify()";
    qword_E42C0 = block;
    __break(1u);
    JUMPOUT(0x19CBCLL);
  }

  v6 = *(v11 + 5);
  if (v6 >= 2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: A block object may not be both run more than once and observed";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x19D2CLL);
  }

  dispatch_group_notify(*(v11 + 6), queue, notification_block);
}

uint64_t _dispatch_continuation_init_slow(uint64_t *a1, unint64_t a2, int a3)
{
  v20 = a1[5];
  v10 = _Block_get_invoke_fn(v20);
  v11 = 0;
  if (v10)
  {
    v11 = v10;
  }

  if (v11 == _dispatch_block_special_invoke)
  {
    if (*(v20 + 32) != 3512316172)
    {
      v3 = *(v20 + 32);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x19E6CLL);
    }

    v21 = v20 + 32;
  }

  else
  {
    v21 = 0;
  }

  v15 = *(v21 + 8);
  v14 = *a1;
  _dispatch_retain_2(a2);
  v4 = 0;
  atomic_compare_exchange_strong_explicit((v21 + 56), &v4, a2, memory_order_relaxed, memory_order_relaxed);
  if (v4)
  {
    _dispatch_release_2(a2);
  }

  if ((v14 & 4) != 0)
  {
    a1[4] = _dispatch_block_async_invoke_and_release;
  }

  else
  {
    a1[4] = _dispatch_block_async_invoke;
  }

  v17 = a3 | v15;
  if ((v15 & 0x40000000) != 0)
  {
    v13 = *(v21 + 24) & 0xFFFFFFLL;
  }

  else if ((v17 & 0x40000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v26 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v26 <= 0x10FF)
    {
      v27 = v26;
    }

    else
    {
      v27 = 4351;
    }

    v13 = v27;
  }

  v23 = v13;
  if (v13)
  {
    if ((v17 & 0x20) != 0)
    {
      v23 = v13 | 0x10000000;
    }

    else if ((*(a2 + 84) & 0x40000000) == 0 && (*(a2 + 84) & 0xFFF) != 0)
    {
      v23 = 0;
    }
  }

  a1[1] = v23;
  if (v15)
  {
    v14 |= 2uLL;
  }

  if ((v15 & 0x80000000) != 0)
  {
    v12 = *(v21 + 32);
    if (!v12 || v12 == -1)
    {
      v9 = *(v21 + 32);
    }

    else
    {
      os_retain(v12);
      v9 = v12;
    }

    a1[3] = v9;
    v5 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 770, v5, a1[3], a1);
    v24 = a1[3];
    if (v24 != -1 && MEMORY[0xFFFFFC100])
    {
LABEL_45:
      kdebug_trace();
    }
  }

  else
  {
    v25 = 0;
    if (v17 < 0)
    {
      _dispatch_abort(583, v17 >= 0);
    }

    if ((v17 & 0x40) == 0)
    {
      v28 = _dispatch_thread_getspecific(28);
      if (v28)
      {
        os_retain(v28);
      }

      v25 = v28;
    }

    a1[3] = v25;
    v6 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v6, a1[3], a1);
    if (a1[3] != -1 && MEMORY[0xFFFFFC100])
    {
      goto LABEL_45;
    }
  }

  *a1 = v14 | 0x20;
  v22 = (a1[1] & 0x3FFF00uLL) >> 8;
  v7 = __clz(__rbit32(v22));
  if (v22)
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

void dispatch_barrier_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v11 = _dispatch_thread_getspecific(22);
  if (v11)
  {
    _dispatch_thread_setspecific(22, v11[2]);
    *v11 = 262;
    v11[4] = work;
    v11[5] = context;
    v14 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v14 <= 0x10FF)
    {
      v15 = v14;
    }

    else
    {
      v15 = 4351;
    }

    v16 = _dispatch_thread_getspecific(28);
    if (v16)
    {
      os_retain(v16);
    }

    v11[3] = v16;
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v11[3], v11);
    if (v11[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v13 = v15;
    v12 = 0;
    if (v15)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v4 = v15 >> 8;
        v5 = __clz(__rbit32(v4));
        if (v4)
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = 0;
        }

        v12 = v6;
      }

      else
      {
        v13 = 0;
      }
    }

    v11[1] = v13;
    v7 = 0;
    if (*queue)
    {
      v7 = *queue;
    }

    (*(v7 + 72))(queue, v11, v12);
  }

  else
  {
    _dispatch_async_f_slow(queue, context, work, 0, 6);
  }
}

uint64_t _dispatch_async_f_slow(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v14 = _dispatch_continuation_alloc_from_heap();
  v20 = 0;
  *v14 = a5 | 0x100;
  v14[4] = a3;
  v14[5] = a2;
  if ((a4 & 0x40000000) == 0)
  {
    v24 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v24 <= 0x10FF)
    {
      v25 = v24;
    }

    else
    {
      v25 = 4351;
    }

    v20 = v25;
  }

  v23 = 0;
  if (a4 < 0)
  {
    _dispatch_abort(583, a4 >= 0);
  }

  if ((a4 & 0x40) == 0)
  {
    v26 = _dispatch_thread_getspecific(28);
    if (v26)
    {
      os_retain(v26);
    }

    v23 = v26;
  }

  v14[3] = v23;
  v5 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v5, v14[3], v14);
  if (v14[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v22 = v20;
  v21 = 0;
  if (v20)
  {
    if ((a4 & 0x20) != 0)
    {
      v22 = v20 | 0x10000000;
      v6 = (v20 | 0x10000000) >> 8;
      v7 = __clz(__rbit32(v6));
      if (v6)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = 0;
      }

      v21 = v8;
    }

    else if ((*(a1 + 21) & 0x40000000) != 0 || (*(a1 + 21) & 0xFFF) == 0)
    {
      v9 = v20 >> 8;
      v10 = __clz(__rbit32(v9));
      if (v9)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = 0;
      }

      v21 = v11;
    }

    else
    {
      v22 = 0;
    }
  }

  v14[1] = v22;
  v13 = 0;
  if (*a1)
  {
    v13 = *a1;
  }

  return (*(v13 + 72))(a1, v14, v21);
}

uint64_t _dispatch_barrier_async_detached_f(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = _dispatch_thread_getspecific(22);
  if (v12)
  {
    _dispatch_thread_setspecific(22, *(v12 + 16));
    v11 = v12;
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  *v11 = 262;
  v11[4] = a3;
  v11[5] = a2;
  v11[3] = -1;
  v11[1] = -1;
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  return (*(v7 + 72))(a1, v11, 0, v3, v4, v5);
}

void dispatch_barrier_async(dispatch_queue_t queue, dispatch_block_t block)
{
  v12 = _dispatch_thread_getspecific(22);
  if (v12)
  {
    _dispatch_thread_setspecific(22, *(v12 + 16));
    v11 = v12;
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  v13 = _dispatch_Block_copy(block);
  v7 = _Block_get_invoke_fn(block);
  v8 = 0;
  if (v7)
  {
    v8 = v7;
  }

  if (v8 == _dispatch_block_special_invoke)
  {
    *v11 = 278;
    v11[5] = v13;
    inited = _dispatch_continuation_init_slow(v11, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v11 = 278;
    v11[4] = _dispatch_call_block_and_release;
    v11[5] = v13;
    v17 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v17 <= 0x10FF)
    {
      v18 = v17;
    }

    else
    {
      v18 = 4351;
    }

    v19 = _dispatch_thread_getspecific(28);
    if (v19)
    {
      os_retain(v19);
    }

    v11[3] = v19;
    v2 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v2, v11[3], v11);
    if (v11[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v16 = v18;
    v15 = 0;
    if (v18)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v3 = v18 >> 8;
        v4 = __clz(__rbit32(v3));
        if (v3)
        {
          v5 = v4 + 1;
        }

        else
        {
          v5 = 0;
        }

        v15 = v5;
      }

      else
      {
        v16 = 0;
      }
    }

    v11[1] = v16;
    inited = v15;
  }

  v6 = 0;
  if (*queue)
  {
    v6 = *queue;
  }

  (*(v6 + 72))(queue, v11, inited);
}

void dispatch_channel_async_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v11 = _dispatch_thread_getspecific(22);
  if (v11)
  {
    _dispatch_thread_setspecific(22, v11[2]);
    *v11 = 260;
    v11[4] = work;
    v11[5] = context;
    v14 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v14 <= 0x10FF)
    {
      v15 = v14;
    }

    else
    {
      v15 = 4351;
    }

    v16 = _dispatch_thread_getspecific(28);
    if (v16)
    {
      os_retain(v16);
    }

    v11[3] = v16;
    v3 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v3, v11[3], v11);
    if (v11[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v13 = v15;
    v12 = 0;
    if (v15)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v4 = v15 >> 8;
        v5 = __clz(__rbit32(v4));
        if (v4)
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = 0;
        }

        v12 = v6;
      }

      else
      {
        v13 = 0;
      }
    }

    v11[1] = v13;
    v7 = 0;
    if (*queue)
    {
      v7 = *queue;
    }

    (*(v7 + 72))(queue, v11, v12);
  }

  else
  {
    _dispatch_async_f_slow(queue, context, work, 0, 4);
  }
}

uint64_t dispatch_async_enforce_qos_class_f(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = _dispatch_thread_getspecific(22);
  if (!v12)
  {
    return _dispatch_async_f_slow(a1, a2, a3, 32, 4);
  }

  _dispatch_thread_setspecific(22, v12[2]);
  *v12 = 260;
  v12[4] = a3;
  v12[5] = a2;
  v15 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
  if (v15 <= 0x10FF)
  {
    v16 = v15;
  }

  else
  {
    v16 = 4351;
  }

  v17 = _dispatch_thread_getspecific(28);
  if (v17)
  {
    os_retain(v17);
  }

  v12[3] = v17;
  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v4, v12[3], v12);
  if (v12[3] != -1 && MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v14 = v16;
  v13 = 0;
  if (v16)
  {
    v14 = v16 | 0x10000000;
    v5 = (v16 | 0x10000000uLL) >> 8;
    v6 = __clz(__rbit32(v5));
    if (v5)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
  }

  v12[1] = v14;
  v8 = 0;
  if (*a1)
  {
    v8 = *a1;
  }

  return (*(v8 + 72))(a1, v12, v13);
}

void dispatch_channel_async(dispatch_queue_t queue, dispatch_block_t block)
{
  v12 = _dispatch_thread_getspecific(22);
  if (v12)
  {
    _dispatch_thread_setspecific(22, *(v12 + 16));
    v11 = v12;
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  v13 = _dispatch_Block_copy(block);
  v7 = _Block_get_invoke_fn(block);
  v8 = 0;
  if (v7)
  {
    v8 = v7;
  }

  if (v8 == _dispatch_block_special_invoke)
  {
    *v11 = 276;
    v11[5] = v13;
    inited = _dispatch_continuation_init_slow(v11, queue, 0);
  }

  else
  {
    _Block_get_invoke_fn(block);
    *v11 = 276;
    v11[4] = _dispatch_call_block_and_release;
    v11[5] = v13;
    v17 = _dispatch_thread_getspecific(4) & 0xFFFFFF;
    if (v17 <= 0x10FF)
    {
      v18 = v17;
    }

    else
    {
      v18 = 4351;
    }

    v19 = _dispatch_thread_getspecific(28);
    if (v19)
    {
      os_retain(v19);
    }

    v11[3] = v19;
    v2 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: continuation[%p] set", 589, v2, v11[3], v11);
    if (v11[3] != -1 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    v16 = v18;
    v15 = 0;
    if (v18)
    {
      if ((*(queue + 21) & 0x40000000) != 0 || (*(queue + 21) & 0xFFF) == 0)
      {
        v3 = v18 >> 8;
        v4 = __clz(__rbit32(v3));
        if (v3)
        {
          v5 = v4 + 1;
        }

        else
        {
          v5 = 0;
        }

        v15 = v5;
      }

      else
      {
        v16 = 0;
      }
    }

    v11[1] = v16;
    inited = v15;
  }

  v6 = 0;
  if (*queue)
  {
    v6 = *queue;
  }

  (*(v6 + 72))(queue, v11, inited);
}

uint64_t _dispatch_barrier_trysync_or_async_f(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), char a4)
{
  v7 = _dispatch_thread_getspecific(3);
  v14 = (4096 - *(a1 + 80)) << 41;
  v12 = 0;
  v13 = *(a1 + 56);
  do
  {
    if (v13 != (v14 | v13 & 0x3000000000))
    {
      break;
    }

    v4 = v13;
    v5 = v13;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v5, v7 & 0xFFFFFFFC | 0x60000000000002 | (((a4 & 1) != 0) << 58) | v13 & 0x3000000000, memory_order_acquire, memory_order_acquire);
    if (v5 != v4)
    {
      v13 = v5;
    }

    v12 = v5 == v4;
  }

  while (v5 != v4);
  if (!v12)
  {
    return _dispatch_barrier_async_detached_f(a1, a2, a3);
  }

  if (a4)
  {
    _dispatch_retain_2(a1);
  }

  return _dispatch_barrier_trysync_or_async_f_complete(a1, a2, a3, a4);
}

uint64_t _dispatch_retain_2(uint64_t result)
{
  add_explicit = *(result + 8);
  if (add_explicit != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit((result + 8), 2u, memory_order_relaxed);
  }

  if (add_explicit <= 0)
  {
    qword_E4290 = "API MISUSE: Resurrection of an object";
    __break(1u);
    JUMPOUT(0x1D268);
  }

  return result;
}

uint64_t _dispatch_barrier_trysync_or_async_f_complete(uint64_t *a1, uint64_t a2, void (*a3)(void (**a1)(void)), char a4)
{
  v10 = 4;
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0uLL;
  v29 = a1;
  v28 = &v13;
  v31 = &v13;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v13);
  _dispatch_thread_setspecific_pair(20, v29, 21, v28);
  v23 = v15;
  v22 = v14;
  if (v14 == _dispatch_call_block_and_release && v23)
  {
    v8 = _Block_get_invoke_fn(v23);
    v9 = 0;
    if (v8)
    {
      v9 = v8;
    }

    v7 = v9;
  }

  else
  {
    v7 = v22;
  }

  v21 = v7;
  v25 = v23;
  v24 = v7;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  _dispatch_client_callout(v23, v22);
  v27 = v23;
  v26 = v21;
  v30 = &v13;
  v4 = _dispatch_thread_setspecific_packed_pair(20, 21, &v13);
  if ((a4 & 1) != 0 && ((atomic_fetch_add_explicit((a1 + 7), 0xFC00000000000000, memory_order_relaxed) - 0x400000000000000) & 0xFF80000000000000) == 0)
  {
    v10 = 5;
  }

  v6 = 0;
  if (*a1)
  {
    v6 = *a1;
  }

  return (*(v6 + 64))(a1, 0, v10, v4);
}

void dispatch_barrier_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  *&v7[8] = 0;
  *v7 = _dispatch_thread_getspecific(3);
  v6 = 0;
  if (*queue)
  {
    v6 = *queue;
  }

  if (*(v6 + 16) != 17)
  {
    goto LABEL_7;
  }

  LOBYTE(v5) = 0;
  if ((*(queue + 20) & 0x1000000) != 0)
  {
    v5 = (BYTE2(*(queue + 20)) >> 2) & 1;
  }

  if ((v5 & 1) == 0)
  {
    v11 = 1;
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  if ((v11 & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
    JUMPOUT(0x1D7C0);
  }

  v14 = (4096 - *(queue + 40)) << 41;
  v12 = 0;
  v13 = *(queue + 7);
  do
  {
    if (v13 != (v14 | v13 & 0x3000000000))
    {
      break;
    }

    v3 = v13;
    v4 = v13;
    atomic_compare_exchange_strong_explicit((queue + 56), &v4, *v7 & 0xFFFFFFFC | 0x60000000000002 | v13 & 0x3000000000, memory_order_acquire, memory_order_acquire);
    if (v4 != v3)
    {
      v13 = v4;
    }

    v12 = v4 == v3;
  }

  while (v4 != v3);
  if (v12)
  {
    if (*(*(queue + 3) + 24))
    {
      _dispatch_sync_recurse(queue, context, work, *&v7[4] | 2);
    }

    else
    {
      _dispatch_lane_barrier_sync_invoke_and_complete(queue, context, work, 0);
    }
  }

  else
  {
    _dispatch_sync_f_slow(queue, context, work, 2, queue, *&v7[4] | 2);
  }
}

void dispatch_sync_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue + 40) == 1)
  {
    _dispatch_barrier_sync_f(queue, context, work, 0);
  }

  else
  {
    v6 = 0;
    if (*queue)
    {
      v6 = *queue;
    }

    if (*(v6 + 16) != 17)
    {
      goto LABEL_9;
    }

    LOBYTE(v5) = 0;
    if ((*(queue + 20) & 0x1000000) != 0)
    {
      v5 = (BYTE2(*(queue + 20)) >> 2) & 1;
    }

    if ((v5 & 1) == 0)
    {
      v7 = 1;
    }

    else
    {
LABEL_9:
      v7 = 0;
    }

    if ((v7 & 1) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
      __break(1u);
      JUMPOUT(0x1DBE8);
    }

    if (*(queue + 6))
    {
      v9 = 0;
    }

    else
    {
      for (i = *(queue + 7); ; i = v4)
      {
        if (i >> 54 || (i & 0x8000000000) != 0 || (i & 0x10000000000) != 0)
        {
          v9 = 0;
          goto LABEL_23;
        }

        v3 = i;
        v4 = i;
        atomic_compare_exchange_strong_explicit((queue + 56), &v4, i + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        if (v4 == v3)
        {
          break;
        }
      }

      v9 = 1;
    }

LABEL_23:
    if (v9)
    {
      if (*(*(queue + 3) + 24))
      {
        _dispatch_sync_recurse(queue, context, work, 0);
      }

      else
      {
        _dispatch_sync_invoke_and_complete(queue, context, work, 0);
      }
    }

    else
    {
      _dispatch_sync_f_slow(queue, context, work, 0, queue, 0);
    }
  }
}

void dispatch_barrier_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v4 = _Block_get_invoke_fn(block);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  if (v5 == _dispatch_block_special_invoke)
  {
    _dispatch_sync_block_with_privdata(queue, block, 18);
  }

  else
  {
    v2 = _Block_get_invoke_fn(block);
    v3 = 0;
    if (v2)
    {
      v3 = v2;
    }

    _dispatch_barrier_sync_f(queue, block, v3, 18);
  }
}

void _dispatch_sync_block_with_privdata(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = _Block_get_invoke_fn(a2);
  v8 = 0;
  if (v7)
  {
    v8 = v7;
  }

  if (v8 == _dispatch_block_special_invoke)
  {
    if (*(a2 + 32) != 3512316172)
    {
      v3 = *(a2 + 32);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption of dispatch block object";
      qword_E42C0 = v3;
      __break(1u);
      JUMPOUT(0x1E06CLL);
    }

    v21 = a2 + 32;
  }

  else
  {
    v21 = 0;
  }

  v11 = 0;
  v10 = *(v21 + 8);
  if (v10)
  {
    v13 = a3 | 0x22;
  }

  else
  {
    v13 = a3 | 0x20;
  }

  v16 = 0;
  if ((v10 & 0x40000000) != 0 && ((v10 & 0x20) != 0 || (v10 & 0x10) == 0))
  {
    v17 = *(v21 + 24) & 0xFFFFFFLL;
    v18 = _dispatch_thread_getspecific(4);
    if ((v18 & 0xFFFFFF) != 0 && (v18 & 0xFFFFFF) < v17)
    {
      v16 = v18 & 0xFFFFFF;
    }
  }

  if (v16)
  {
    v11 = *(v21 + 24);
  }

  v9 = -1;
  if ((v10 & 0x80000000) != 0)
  {
    v9 = *(v21 + 32);
  }

  if (v11 == -1)
  {
    _dispatch_abort(2409, 0);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v25 = v11 & 0xFFFFFFFF02FFFFFFLL;
    v24 = _dispatch_thread_getspecific(4);
    if ((v24 & 0x1000000) != 0)
    {
      if (v25)
      {
        v6 = v11 & 0xFFFFFFFF02FFFFFFLL;
      }

      else
      {
        v6 = v24 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v26 = v6;
    }

    else if (v25 == (v24 & 0xFFFFFFFF77FFFFFFLL))
    {
      v26 = 0;
    }

    else
    {
      v26 = v11 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
LABEL_40:
    v19 = _dispatch_set_priority_and_voucher_slow(v26, v9, 0);
    goto LABEL_41;
  }

  if (v9 != -1)
  {
    if (v9 == _dispatch_thread_getspecific(28))
    {
      if (v9)
      {
        os_retain(v9);
      }

      v19 = v9;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v19 = -1;
LABEL_41:
  _dispatch_retain_2(a1);
  v4 = 0;
  atomic_compare_exchange_strong_explicit((v21 + 56), &v4, a1, memory_order_relaxed, memory_order_relaxed);
  if (v4)
  {
    _dispatch_release_2(a1);
  }

  if ((v13 & 2) != 0)
  {
    _dispatch_barrier_sync_f(a1, a2, _dispatch_block_sync_invoke, v13);
  }

  else
  {
    _dispatch_sync_f(a1, a2, _dispatch_block_sync_invoke, v13);
  }

  if (_dispatch_set_qos_class_enabled)
  {
    v22 = _dispatch_thread_getspecific(4);
    if ((v22 & 0x1000000) != 0)
    {
      if ((v16 & 0x2FFFFFF) != 0)
      {
        v5 = v16 & 0x2FFFFFF;
      }

      else
      {
        v5 = v22 & 0xFFFFFFFFFEFFFFFFLL;
      }

      v23 = v5;
    }

    else if ((v16 & 0x2FFFFFF) == (v22 & 0xFFFFFFFF77FFFFFFLL))
    {
      v23 = 0;
    }

    else
    {
      v23 = v16 & 0xFFFFFFFF02FFFFFFLL;
    }
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    goto LABEL_62;
  }

  if (v19 == -1)
  {
    return;
  }

  if (v19 != _dispatch_thread_getspecific(28))
  {
LABEL_62:
    _dispatch_set_priority_and_voucher_slow(v23, v19, 6);
  }

  else if (v19)
  {
    os_release(v19);
  }
}

void _dispatch_barrier_sync_f(uint64_t *a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4)
{
  v8 = _dispatch_thread_getspecific(3);
  v7 = 0;
  if (*a1)
  {
    v7 = *a1;
  }

  if (*(v7 + 16) != 17)
  {
    goto LABEL_7;
  }

  LOBYTE(v6) = 0;
  if ((a1[10] & 0x1000000) != 0)
  {
    v6 = (BYTE2(*(a1 + 20)) >> 2) & 1;
  }

  if ((v6 & 1) == 0)
  {
    v13 = 1;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  if ((v13 & 1) == 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
    __break(1u);
    JUMPOUT(0x1EA20);
  }

  v16 = (4096 - *(a1 + 40)) << 41;
  v14 = 0;
  v15 = a1[7];
  do
  {
    if (v15 != (v16 | v15 & 0x3000000000))
    {
      break;
    }

    v4 = v15;
    v5 = v15;
    atomic_compare_exchange_strong_explicit((a1 + 7), &v5, v8 & 0xFFFFFFFC | 0x60000000000002 | v15 & 0x3000000000, memory_order_acquire, memory_order_acquire);
    if (v5 != v4)
    {
      v15 = v5;
    }

    v14 = v5 == v4;
  }

  while (v5 != v4);
  if (v14)
  {
    if (*(a1[3] + 24))
    {
      _dispatch_sync_recurse(a1, a2, a3, a4 | 2);
    }

    else
    {
      _dispatch_lane_barrier_sync_invoke_and_complete(a1, a2, a3, 0);
    }
  }

  else
  {
    _dispatch_sync_f_slow(a1, a2, a3, 2, a1, a4 | 2);
  }
}

void dispatch_sync(dispatch_queue_t queue, dispatch_block_t block)
{
  v4 = _Block_get_invoke_fn(block);
  v5 = 0;
  if (v4)
  {
    v5 = v4;
  }

  if (v5 == _dispatch_block_special_invoke)
  {
    _dispatch_sync_block_with_privdata(queue, block, 16);
  }

  else
  {
    v2 = _Block_get_invoke_fn(block);
    v3 = 0;
    if (v2)
    {
      v3 = v2;
    }

    _dispatch_sync_f(queue, block, v3, 16);
  }
}

void _dispatch_sync_f(uint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)), uint64_t a4)
{
  if (*(a1 + 80) == 1)
  {
    _dispatch_barrier_sync_f(a1, a2, a3, a4);
  }

  else
  {
    v7 = 0;
    if (*a1)
    {
      v7 = *a1;
    }

    if (*(v7 + 16) != 17)
    {
      goto LABEL_9;
    }

    LOBYTE(v6) = 0;
    if ((*(a1 + 80) & 0x1000000) != 0)
    {
      v6 = (BYTE2(*(a1 + 80)) >> 2) & 1;
    }

    if ((v6 & 1) == 0)
    {
      v8 = 1;
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

    if ((v8 & 1) == 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Queue type doesn't support dispatch_sync";
      __break(1u);
      JUMPOUT(0x1EF74);
    }

    if (*(a1 + 48))
    {
      v10 = 0;
    }

    else
    {
      for (i = *(a1 + 56); ; i = v5)
      {
        if (i >> 54 || (i & 0x8000000000) != 0 || (i & 0x10000000000) != 0)
        {
          v10 = 0;
          goto LABEL_23;
        }

        v4 = i;
        v5 = i;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v5, i + 0x20000000000, memory_order_relaxed, memory_order_relaxed);
        if (v5 == v4)
        {
          break;
        }
      }

      v10 = 1;
    }

LABEL_23:
    if (v10)
    {
      if (*(*(a1 + 24) + 24))
      {
        _dispatch_sync_recurse(a1, a2, a3, a4);
      }

      else
      {
        _dispatch_sync_invoke_and_complete(a1, a2, a3, 0);
      }
    }

    else
    {
      _dispatch_sync_f_slow(a1, a2, a3, 0, a1, a4);
    }
  }
}

void dispatch_async_and_wait_f(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (*(queue + 3))
  {
    v3 = 128;
    if (*(queue + 40) == 1)
    {
      v3 = 130;
    }

    _dispatch_async_and_wait_f(queue, context, work, v3);
  }

  else
  {
    _dispatch_sync_function_invoke(queue, context, work);
  }
}

double _dispatch_sync_function_invoke(unint64_t a1, uint64_t a2, void (*a3)(void (**a1)(void)))
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0uLL;
  v23 = a1;
  v22 = &v7;
  v25 = &v7;
  _dispatch_thread_getspecific_packed_pair(20, 21, &v7);
  _dispatch_thread_setspecific_pair(20, v23, 21, v22);
  v17 = v9;
  v16 = v8;
  if (v8 == _dispatch_call_block_and_release && v17)
  {
    v5 = _Block_get_invoke_fn(v17);
    v6 = 0;
    if (v5)
    {
      v6 = v5;
    }

    v4 = v6;
  }

  else
  {
    v4 = v16;
  }

  v15 = v4;
  v19 = v17;
  v18 = v4;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  _dispatch_client_callout(v17, v16);
  v21 = v17;
  v20 = v15;
  v24 = &v7;
  *&result = _dispatch_thread_setspecific_packed_pair(20, 21, &v7).n128_u64[0];
  return result;
}