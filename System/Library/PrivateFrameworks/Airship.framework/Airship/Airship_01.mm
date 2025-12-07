void ashp::direct_monitor::set_queue(os_unfair_lock_s *this, NSObject *a2)
{
  os_unfair_lock_lock(this + 16);
  if (LOBYTE(this[20]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("direct_monitor.cpp", 0x20, "set_queue", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active monitor", "direct_monitor.cpp", 0x20, "set_queue", v6);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::async_notifier::set_queue(this + 22, a2, v4, v5);
    LOBYTE(this[34]._os_unfair_lock_opaque) = a2 != 0;

    os_unfair_lock_unlock(this + 16);
  }
}

void ashp::driver_client::acipc_get_health_status(ashp::driver_client *this, unsigned int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::base::log_pre_crash_message("BUG in Airship: Attempted to perform a health check in driver_client", "driver_client.cpp", 0xBB, "acipc_get_health_status", a5);
  _os_crash();
  __break(1u);
}

void ashp::driver_client::create_cr_controller(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to create cr_controller in driver_client", "driver_client.cpp", 0xA9, "create_cr_controller", a5);
  _os_crash();
  __break(1u);
}

void ashp::driver_client::create_tr_controller(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to create tr_controller in direct_client", "driver_client.cpp", 0xA3, "create_tr_controller", a5);
  _os_crash();
  __break(1u);
}

void ashp::driver_client::destroy(ashp::driver_client *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (this)
  {
    ashp::driver_client::~driver_client(this, a2, a3, a4, a5);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

void ashp::driver_client::~driver_client(ashp::driver_client *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  *this = &unk_28515CD38;
  if (*(this + 32))
  {
    ashp::driver_object_termination_list::~driver_object_termination_list((this + 64), a2, a3, a4, a5);
    v9 = (this + 40);
    v8 = *(this + 5);
    if (v8)
    {
      do
      {
        ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_resource,ashp::intrusive_list_link<ashp::driver_resource>,&ashp::driver_resource::_owner_link>::remove(this + 40, v8, v6, v7);
        v8 = *v9;
      }

      while (*v9);
    }

    ashp::intrusive_list_link<ashp::driver_resource>::~intrusive_list_link(this + 40, v8, v6, v7);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 3, v10, v11, v12);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_client.cpp", 0x1A, "~driver_client", a5);
    _os_crash();
    __break(1u);
  }
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_resource,ashp::intrusive_list_link<ashp::driver_resource>,&ashp::driver_resource::_owner_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2 && a2[6] == result)
  {
    v4 = a2[4];
    v5 = a2[5];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 32;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[4] = 0;
    a2[5] = 0;
    a2[6] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::intrusive_list_link<ashp::driver_resource>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::driver_client::terminate(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if ((this[8]._os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(this[8]._os_unfair_lock_opaque) = 1;
    (*(*&this->_os_unfair_lock_opaque + 56))(this);
    ashp::driver_object_termination_list::terminate_all(this + 16);
    os_unfair_lock_assert_owner(this + 2);
    while (1)
    {
      v4 = *(*&this[12]._os_unfair_lock_opaque + 8);
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_resource,ashp::intrusive_list_link<ashp::driver_resource>,&ashp::driver_resource::_owner_link>::remove(&this[10], *v4, v2, v3);
      ashp::driver_resource::release(v5, this, v6, v7, v8);
    }
  }

  os_unfair_lock_unlock(this + 2);
}

void ashp::driver_client::bind_active_object(const os_unfair_lock *this, ashp::driver_object *a2)
{
  os_unfair_lock_assert_owner(this + 2);
  if (LOBYTE(this[8]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "driver_client.cpp", 0x2F, "bind_active_object", v4);
    _os_crash();
    __break(1u);
  }

  else
  {

    ashp::driver_object_termination_list::insert(&this[16], a2);
  }
}

void ashp::driver_client::acquire_resource(ashp::boxed::string,unsigned int)::$_1::operator()<>(ashp::detail::logging *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v3 = "driver_client.cpp";
      v4 = 1024;
      v5 = 77;
      v6 = 2082;
      v7 = "acquire_resource";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to get resource", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to get resource", "driver_client.cpp", 77, "acquire_resource");
  }
}

uint64_t ashp::driver_client::get_owned_resource(uint64_t a1, const __CFString *a2, int a3)
{
  os_unfair_lock_assert_owner((a1 + 8));
  for (i = *(a1 + 40); i; i = *(i + 32))
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((i + 8), v6, v7, v8);
    v10 = *(i + 8);
    if (v10)
    {
      v11 = a2 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2 == 0;
      }

      if (v12)
      {
LABEL_13:
        if (*(i + 16) == a3)
        {
          return i;
        }
      }
    }

    else if (CFStringCompare(v10, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_13;
    }
  }

  return i;
}

void ashp::driver_client::create_resource_monitor(ashp::boxed::string,unsigned int)::$_0::operator()<>(ashp::detail::logging *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v3 = "driver_client.cpp";
      v4 = 1024;
      v5 = 102;
      v6 = 2082;
      v7 = "create_resource_monitor";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to get resource", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to get resource", "driver_client.cpp", 102, "create_resource_monitor");
  }
}

void sub_23EC9C1A8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3);
  if (*(v2 + 312) == 1)
  {
    *(v2 + 312) = 0;
  }

  ashp::intrusive_list_link<ashp::monitor>::~intrusive_list_link(v4, v6, v7, v8);
  if (*(v2 + 272) == 1)
  {
    *(v2 + 272) = 0;
  }

  ashp::driver_object::~driver_object(v2, v9, v10, v11, v12);
  MEMORY[0x23EF204E0](v2, v1);
  _Unwind_Resume(a1);
}

atomic_ullong *ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(atomic_ullong *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*result)
  {
    v4 = result;
    result = ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>::release((*result + 8), a2, a3, a4);
    *v4 = 0;
  }

  return result;
}

void ashp::acipc::doorbell_controller::handle_terminate(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 24);
  if (BYTE1(this[52]._os_unfair_lock_opaque) == 1)
  {
    ashp::acipc::doorbell_participant::deregister_doorbell(&this[26], v2, v3, v4, v5);
    BYTE1(this[52]._os_unfair_lock_opaque) = 0;
  }

  os_unfair_lock_unlock(this + 24);
}

void ashp::acipc::doorbell_controller::destroy(ashp::acipc::doorbell_controller *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this)
  {
    *this = &unk_28515CD88;
    ashp::driver_object::terminate(this);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 23, v6, v7, v8);
    ashp::intrusive_list_link<ashp::acipc::doorbell_participant>::~intrusive_list_link(this + 152, v9, v10, v11);
    ashp::driver_object::~driver_object(this, v12, v13, v14, v15);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

uint64_t ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 48))
  {
    return a1 + 8;
  }

  ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp_log_helper::log(os_unfair_lock_t lock, const char *a2, ...)
{
  va_start(va, a2);
  v9 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v7 = mach_continuous_time();
  if (vsnprintf(v8, 0x80uLL, a2, va) < 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "logging.cpp", 0x2C, "log", v6);
    _os_crash();
    __break(1u);
  }

  ashp::driver_debug_object<ashp_log_info>::append_record(lock + 2, &v7, v4, v5);
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }
}

void sub_23EC9C498(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::driver_debug_object<ashp_log_info>::append_record(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[1]._os_unfair_lock_opaque)
  {
    os_unfair_lock_opaque = lock[2]._os_unfair_lock_opaque;
    if (*&lock[6]._os_unfair_lock_opaque <= os_unfair_lock_opaque)
    {
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v17);
      _os_crash();
      __break(1u);
      return;
    }

    v7 = *&lock[10]._os_unfair_lock_opaque + 136 * os_unfair_lock_opaque;
    *v7 = *a2;
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 64);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 64) = v10;
    *(v7 + 16) = v8;
    *(v7 + 32) = v9;
    v11 = *(a2 + 80);
    v12 = *(a2 + 96);
    v13 = *(a2 + 112);
    *(v7 + 128) = *(a2 + 128);
    *(v7 + 96) = v12;
    *(v7 + 112) = v13;
    *(v7 + 80) = v11;
    LODWORD(v7) = lock[2];
    v14 = __CFADD__(v7, 1);
    v15 = v7 + 1;
    if (v14)
    {
      v16 = lock[1]._os_unfair_lock_opaque;
    }

    else
    {
      v16 = 0;
    }

    lock[2]._os_unfair_lock_opaque = (v15 - v16) % lock[1]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(lock);
}

void ashp_log_helper::hexdump(os_unfair_lock_t lock, unsigned __int8 *a2, unint64_t a3, const char *a4, ...)
{
  va_start(va, a4);
  v27 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  v25 = mach_continuous_time();
  v8 = vsnprintf(v26, 0x80uLL, a4, va);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v24 = lock;
  v12 = 0;
  v13 = 0;
  if (v8 >= 0x80)
  {
    v14 = 128;
  }

  else
  {
    v14 = v8;
  }

  v15 = 512;
  if (a3 < 0x200)
  {
    v15 = a3;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  do
  {
    if ((v12 & 0xF) == 0)
    {
      if (v12)
      {
        ashp::driver_debug_object<ashp_log_info>::append_record(v24 + 2, &v25, v9, v10);
      }

      v17 = snprintf(&v26[v14], 128 - v14, "0x%08x:", v12);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      if (v17 >= 128 - v14)
      {
        v19 = 128 - v14;
      }

      else
      {
        v19 = v17;
      }

      v13 = v19 + v14;
    }

    v20 = snprintf(&v26[v13], 128 - v13, " %02x", a2[v12]);
    if ((v20 & 0x80000000) != 0)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "logging.cpp", 0x51, "hexdump", v21);
      _os_crash();
      __break(1u);
LABEL_30:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "logging.cpp", 0x52, "hexdump", v21);
      _os_crash();
      __break(1u);
LABEL_31:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "logging.cpp", 0x4D, "hexdump", v18);
      _os_crash();
      __break(1u);
LABEL_32:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "logging.cpp", 0x3D, "hexdump", v11);
      _os_crash();
      __break(1u);
    }

    if (v20 >= 128 - v13)
    {
      v22 = 128 - v13;
    }

    else
    {
      v22 = v20;
    }

    v23 = __CFADD__(v13, v22);
    v13 += v22;
    if (v23)
    {
      goto LABEL_30;
    }

    ++v12;
  }

  while (v16 != v12);
  ashp::driver_debug_object<ashp_log_info>::append_record(v24 + 2, &v25, v9, v10);
  if (v24)
  {
    os_unfair_lock_unlock(v24);
  }
}

void sub_23EC9C818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    os_unfair_lock_unlock(v10);
  }

  _Unwind_Resume(exception_object);
}

ashp::detail::logging::ktrace_helper *ashp::detail::logging::ktrace_helper::ktrace_helper(ashp::detail::logging::ktrace_helper *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (kdebug_is_enabled())
  {
    kdebug_trace();
  }

  return this;
}

void ashp::detail::logging::ktrace_helper::~ktrace_helper(ashp::detail::logging::ktrace_helper *this)
{
  if (kdebug_is_enabled())
  {
    kdebug_trace();
  }
}

uint64_t ashp::detail::logging::get_log_level(ashp::detail::logging *this)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4ashp6detail7logging13get_log_levelEv_block_invoke;
  block[3] = &__block_descriptor_tmp_197;
  if (ashp::detail::logging::get_log_level(void)::once != -1)
  {
    dispatch_once(&ashp::detail::logging::get_log_level(void)::once, block);
  }

  return airship_log_level;
}

uint64_t ___ZN4ashp6detail7logging13get_log_levelEv_block_invoke()
{
  result = os_parse_boot_arg_int();
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = 3;
  }

  airship_log_level = v1;
  return result;
}

dispatch_object_t *ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(dispatch_object_t *a1, NSObject *a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  if (a2)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    dispatch_retain(*a1);
  }

  return a1;
}

void ___ZN4ashp5acipc12ring_managerC2EPNS0_12acipc_driverEP16dispatch_queue_s_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  os_unfair_lock_lock(v2);
  v4 = *(*(a1 + 40) + 8);
  if (v4)
  {
    if (v3)
    {
      os_unfair_lock_lock(v3);
      v4 = *(*(a1 + 40) + 8);
    }

    os_unfair_lock_assert_owner(v4);
    v5 = *(v4 + 496);
    if (v5)
    {
      v6 = 0;
      do
      {
        v6 |= ashp::acipc::ring_manager::finalize_tr_settlement_if_ready(v4, v5);
        v5 = *(v5 + 1);
      }

      while (v5);
      if (v6)
      {
        ashp::acipc::ring_manager::recompute_closed_ring_availability(v4);
      }
    }

    if (v3)
    {
      os_unfair_lock_unlock(v3);
    }
  }

  os_unfair_lock_unlock(v2);
}

void sub_23EC9CAD0(_Unwind_Exception *a1)
{
  if (v2)
  {
    os_unfair_lock_unlock(v2);
  }

  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

void ___ZN4ashp5acipc12ring_managerC2EPNS0_12acipc_driverEP16dispatch_queue_s_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 32))
  {
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::cr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::cr_context>,&ashp::acipc::detail::ring_manager::cr_context::manager_link>::~intrusive_list_impl(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::cr_context>::~intrusive_list_link(a1, i, a3, a4);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::~intrusive_list_impl(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>::~intrusive_list_link(a1, i, a3, a4);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2 && a2[3] == result)
  {
    v4 = a2[1];
    v5 = a2[2];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 8;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::cr_context>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::ring_manager::finalize_tr_settlement_if_ready(os_unfair_lock_s *this, ashp::acipc::detail::ring_manager::tr_context *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  if (__PAIR64__(*(a2 + 36), *(a2 + 8)) != 0x100000000)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 1);
  v4 = *(a2 + 37);
  os_unfair_lock_unlock(this + 1);
  if ((v4 & 1) == 0)
  {
    *(a2 + 36) = 0;
    for (i = *&this[130]._os_unfair_lock_opaque; i; i = *(i + 8))
    {
      is_cr_completion_context_for_tr = ashp::acipc::ring_manager::is_cr_completion_context_for_tr(this, i, a2);
      if (is_cr_completion_context_for_tr)
      {
        log_level = ashp::detail::logging::get_log_level(is_cr_completion_context_for_tr);
        if (log_level >= 4)
        {
          log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (log_level)
          {
            v8 = *(i + 96);
            v9 = *(a2 + 48);
            *buf = 136447234;
            *&buf[4] = "ring_manager.cpp";
            v44 = 1024;
            v45 = 688;
            v46 = 2082;
            v47 = "finalize_tr_settlement_if_ready";
            v48 = 1024;
            v49 = v8;
            v50 = 1024;
            v51 = v9;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] notifying crid %hu that trid %hu is settled", buf, 0x28u);
          }
        }

        if (ashp::detail::logging::get_log_level(log_level))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] notifying crid %hu that trid %hu is settled", "ring_manager.cpp", 688, "finalize_tr_settlement_if_ready", *(i + 96), *(a2 + 48));
        }

        v10 = *i;
        v11 = *a2;
        os_unfair_lock_lock((*i + 16));
        if ((v10[126]._os_unfair_lock_opaque & 0x100) == 0)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x21F, "transfer_ring_settled", v15);
          _os_crash();
          __break(1u);
LABEL_39:
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22B, "erase", v21);
          ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22B, "erase", v39);
          _os_crash();
          __break(1u);
LABEL_40:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x234, "transfer_ring_settled", v15);
          _os_crash();
          __break(1u);
LABEL_41:
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x22C, "erase", v21);
          ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x22C, "erase", v40);
          _os_crash();
          __break(1u);
        }

        if ((v10[8]._os_unfair_lock_opaque & 1) == 0)
        {
          v16 = *&v10[290]._os_unfair_lock_opaque;
          if (v16)
          {
            v17 = 0;
            v18 = v10 + 290;
            v19 = *&v10[294]._os_unfair_lock_opaque;
            while (*v19 != v11)
            {
              ++v17;
              v19 += 2;
              if (v16 == v17)
              {
                goto LABEL_18;
              }
            }

            *buf = v17;
            buf[8] = 1;
            ashp::optional<unsigned long long,void>::value(buf, v12, v13, v14);
            v23 = *buf;
            v24 = *buf + 1;
            if (*buf == -1)
            {
              goto LABEL_39;
            }

            if (*&v18->_os_unfair_lock_opaque < v24)
            {
              goto LABEL_41;
            }

            if (*&v18->_os_unfair_lock_opaque > v24)
            {
              v25 = 16 * *buf;
              do
              {
                v29 = v23 + 1;
                v26 = (*&v10[294]._os_unfair_lock_opaque + v25);
                v27 = *v26;
                *v26 = v26[1];
                v26[1] = v27;
                v25 += 16;
                v28 = v23 + 2;
                ++v23;
              }

              while (v28 < *&v10[290]._os_unfair_lock_opaque);
            }

            else
            {
              v29 = *buf;
            }

            ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(&v10[290]._os_unfair_lock_opaque, v29, v20, v21, v22);
          }

          else
          {
LABEL_18:
            buf[8] = 0;
          }

          v30 = *&v10[296]._os_unfair_lock_opaque;
          if (v30)
          {
            v31 = 0;
            v32 = *&v10[300]._os_unfair_lock_opaque;
            while (*v32 != v11)
            {
              ++v31;
              v32 += 2;
              if (v30 == v31)
              {
                goto LABEL_33;
              }
            }

            v41 = v31;
            v42 = 1;
            if ((buf[8] & 1) == 0)
            {
              goto LABEL_40;
            }

            ashp::acipc::tr_controller::completion_ring_did_flush(v11, v10);
            ashp::optional<unsigned long long,void>::value(&v41, v33, v34, v35);
            ashp::dynamic_array<ashp::acipc::cr_controller::flush_tracker>::erase<int,0>(&v10[296]._os_unfair_lock_opaque, v41, v41 + 1, v36, v37);
          }
        }

LABEL_33:
        os_unfair_lock_unlock(v10 + 4);
      }
    }
  }

  return v4 ^ 1u;
}

void ashp::acipc::ring_manager::recompute_closed_ring_availability(os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this);
  for (i = *&this[124]._os_unfair_lock_opaque; i; i = *(i + 8))
  {
    os_unfair_lock_assert_owner(this);
    if (!*(i + 32) && (*(i + 36) & 1) == 0)
    {
      ashp::acipc::ring_manager::recompute_tr_availability(this, i);
    }
  }

  for (j = *&this[130]._os_unfair_lock_opaque; j; j = *(j + 8))
  {
    os_unfair_lock_assert_owner(this);
    if (!*(j + 32))
    {
      ashp::acipc::ring_manager::recompute_cr_availability(this, j);
    }
  }
}

void ashp::acipc::ring_manager::recompute_tr_availability(const os_unfair_lock *this, ashp::acipc::detail::ring_manager::tr_context *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  if (this[8]._os_unfair_lock_opaque)
  {
    v4 = 1;
    goto LABEL_109;
  }

  v4 = !ashp::acipc::ring_manager::is_tr_supported_in_current_exec_stage(this, a2);
  if ((v4 & 1) == 0)
  {
    os_unfair_lock_assert_owner(this);
    for (i = *&this[124]._os_unfair_lock_opaque; i; i = *(i + 8))
    {
      if (i != a2)
      {
        os_unfair_lock_assert_owner(this);
        if (*(i + 32) || *(i + 36) == 1)
        {
          v8 = *(a2 + 7);
          v9 = *(i + 56);
          v10 = (v8 | v9) == 0;
          if (v8 && v9)
          {
            v10 = CFStringCompare(v8, v9, 0) == kCFCompareEqualTo;
          }

          if (v10 && *(a2 + 16) == *(i + 64))
          {
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v9, v6, v7);
            CStringPtr = *(a2 + 7);
            if (CStringPtr)
            {
              CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
              if (CStringPtr)
              {
                v32 = CStringPtr;
              }

              else
              {
                v32 = "???";
              }
            }

            else
            {
              v32 = "(nil)";
            }

            log_level = ashp::detail::logging::get_log_level(CStringPtr);
            if (log_level >= 2)
            {
              log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (log_level)
              {
                v55 = *(a2 + 48);
                v56 = *(i + 96);
                *buf = 136447490;
                *&buf[4] = "ring_manager.cpp";
                v85 = 1024;
                v86 = 818;
                v87 = 2082;
                v88 = "does_tr_conflict_with_any_open_tr";
                v89 = 2080;
                *v90 = v32;
                *&v90[8] = 1024;
                *&v90[10] = v55;
                *&v90[14] = 1024;
                *&v90[16] = v56;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tr name %s is shared by trid %hu and trid %hu", buf, 0x32u);
              }
            }

            if (ashp::detail::logging::get_log_level(log_level))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tr name %s is shared by trid %hu and trid %hu", "ring_manager.cpp", 818, "does_tr_conflict_with_any_open_tr", v32, *(a2 + 48), *(i + 96));
            }

            goto LABEL_97;
          }

          if (*(a2 + 48) == *(i + 96))
          {
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v9, v6, v7);
            v36 = *(a2 + 7);
            if (v36)
            {
              v37 = CFStringGetCStringPtr(v36, 0x8000100u);
              if (v37)
              {
                v38 = v37;
              }

              else
              {
                v38 = "???";
              }
            }

            else
            {
              v38 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((i + 56), v33, v34, v35);
            v57 = *(i + 56);
            if (v57)
            {
              v57 = CFStringGetCStringPtr(v57, 0x8000100u);
              if (v57)
              {
                v58 = v57;
              }

              else
              {
                v58 = "???";
              }
            }

            else
            {
              v58 = "(nil)";
            }

            v59 = ashp::detail::logging::get_log_level(v57);
            if (v59 >= 2)
            {
              v59 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v59)
              {
                v60 = *(a2 + 48);
                *buf = 136447490;
                *&buf[4] = "ring_manager.cpp";
                v85 = 1024;
                v86 = 824;
                v87 = 2082;
                v88 = "does_tr_conflict_with_any_open_tr";
                v89 = 1024;
                *v90 = v60;
                *&v90[4] = 2080;
                *&v90[6] = v38;
                *&v90[14] = 2080;
                *&v90[16] = v58;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu is shared by tr %s and tr %s", buf, 0x36u);
              }
            }

            if (ashp::detail::logging::get_log_level(v59))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu is shared by tr %s and tr %s", "ring_manager.cpp", 824, "does_tr_conflict_with_any_open_tr", *(a2 + 48), v38, v58);
            }

            goto LABEL_97;
          }

          if (*(a2 + 49) == *(i + 98))
          {
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v9, v6, v7);
            v42 = *(a2 + 7);
            if (v42)
            {
              v43 = CFStringGetCStringPtr(v42, 0x8000100u);
              if (v43)
              {
                v44 = v43;
              }

              else
              {
                v44 = "???";
              }
            }

            else
            {
              v44 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((i + 56), v39, v40, v41);
            v61 = *(i + 56);
            if (v61)
            {
              v61 = CFStringGetCStringPtr(v61, 0x8000100u);
              if (v61)
              {
                v62 = v61;
              }

              else
              {
                v62 = "???";
              }
            }

            else
            {
              v62 = "(nil)";
            }

            v63 = ashp::detail::logging::get_log_level(v61);
            if (v63 >= 2)
            {
              v63 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v63)
              {
                v64 = *(a2 + 49);
                *buf = 136447490;
                *&buf[4] = "ring_manager.cpp";
                v85 = 1024;
                v86 = 830;
                v87 = 2082;
                v88 = "does_tr_conflict_with_any_open_tr";
                v89 = 1024;
                *v90 = v64;
                *&v90[4] = 2080;
                *&v90[6] = v44;
                *&v90[14] = 2080;
                *&v90[16] = v62;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tr index array vector %hu is shared by tr %s and tr %s", buf, 0x36u);
              }
            }

            if (ashp::detail::logging::get_log_level(v63))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tr index array vector %hu is shared by tr %s and tr %s", "ring_manager.cpp", 830, "does_tr_conflict_with_any_open_tr", *(a2 + 49), v44, v62);
            }

            goto LABEL_97;
          }

          if (*(a2 + 120) == 1 && ashp::operator==<int,0>(a2 + 104, i + 104, v6, v7))
          {
            ashp::optional<ashp::acipc::name_and_selector,void>::value(a2 + 104, v12, v13, v14);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 13, v45, v46, v47);
            v51 = *(a2 + 13);
            if (v51)
            {
              v52 = CFStringGetCStringPtr(v51, 0x8000100u);
              if (v52)
              {
                v53 = v52;
              }

              else
              {
                v53 = "???";
              }
            }

            else
            {
              v53 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v48, v49, v50);
            v68 = *(a2 + 7);
            if (v68)
            {
              v69 = CFStringGetCStringPtr(v68, 0x8000100u);
              if (v69)
              {
                v70 = v69;
              }

              else
              {
                v70 = "???";
              }
            }

            else
            {
              v70 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((i + 56), v65, v66, v67);
            v71 = *(i + 56);
            if (v71)
            {
              v71 = CFStringGetCStringPtr(v71, 0x8000100u);
              if (v71)
              {
                v72 = v71;
              }

              else
              {
                v72 = "???";
              }
            }

            else
            {
              v72 = "(nil)";
            }

            v73 = ashp::detail::logging::get_log_level(v71);
            if (v73 >= 2)
            {
              v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v73)
              {
                *buf = 136447490;
                *&buf[4] = "ring_manager.cpp";
                v85 = 1024;
                v86 = 836;
                v87 = 2082;
                v88 = "does_tr_conflict_with_any_open_tr";
                v89 = 2080;
                *v90 = v53;
                *&v90[8] = 2080;
                *&v90[10] = v70;
                *&v90[18] = 2080;
                *&v90[20] = v72;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tr exclusive doorbell %s is shared by tr %s and tr %s", buf, 0x3Au);
              }
            }

            if (ashp::detail::logging::get_log_level(v73))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tr exclusive doorbell %s is shared by tr %s and tr %s", "ring_manager.cpp", 836, "does_tr_conflict_with_any_open_tr", v53, v70, v72);
            }

            goto LABEL_97;
          }
        }
      }
    }

    os_unfair_lock_assert_owner(this);
    v15 = *&this[130]._os_unfair_lock_opaque;
    if (v15)
    {
      while (1)
      {
        os_unfair_lock_assert_owner(this);
        if (*(v15 + 32))
        {
          if (*(a2 + 120) == 1 && (ashp::operator==<int,0>(a2 + 104, v15 + 104, v16, v17) & 1) != 0)
          {
            break;
          }

          if (*(a2 + 144) == 1)
          {
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v82, *(v15 + 56), v16, v17);
            v83 = *(v15 + 64);
            BYTE2(v86) = 0;
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v18, v19, v20);
            v21 = v82;
            v82 = 0;
            *buf = v21;
            *&buf[8] = v83;
            BYTE2(v86) = 1;
            v24 = ashp::operator==<int,0>(a2 + 128, buf, v22, v23);
            ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(buf, v25, v26, v27);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v82, v28, v29, v30);
            if (v24)
            {
              if (*(v15 + 144))
              {
                break;
              }
            }
          }
        }

        v15 = *(v15 + 8);
        if (!v15)
        {
          goto LABEL_98;
        }
      }

LABEL_97:
      LODWORD(v15) = 2;
    }

LABEL_98:
    os_unfair_lock_assert_owner(this);
    if ((*(a2 + 144) & 1) != 0 || *(a2 + 168) == 1)
    {
      if ((this[8]._os_unfair_lock_opaque & 1) != 0 || (v74 = *&this[130]._os_unfair_lock_opaque) == 0)
      {
LABEL_106:
        v75 = 4;
LABEL_108:
        v4 |= v15 | v75;
        goto LABEL_109;
      }

      while (1)
      {
        if (ashp::acipc::ring_manager::is_cr_completion_context_for_tr(this, v74, a2))
        {
          os_unfair_lock_assert_owner(this);
          if (*(v74 + 32) == 2 && *(v74 + 36) != 1)
          {
            break;
          }
        }

        v74 = *(v74 + 8);
        if (!v74)
        {
          goto LABEL_106;
        }
      }
    }

    v75 = 0;
    goto LABEL_108;
  }

LABEL_109:
  *(a2 + 11) = v4;
  v76 = *a2;
  os_unfair_lock_lock((v76 + 16));
  if ((*(v76 + 632) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x222, "set_availability_blockers", v78);
    _os_crash();
    __break(1u);
    goto LABEL_118;
  }

  v79 = ashp::detail::logging::get_log_level(v77);
  if (v79 >= 4)
  {
    v79 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v79)
    {
      v80 = *(v76 + 208);
      *buf = 136447234;
      *&buf[4] = "tr_controller.cpp";
      v86 = 547;
      v87 = 2082;
      v85 = 1024;
      v88 = "set_availability_blockers";
      v89 = 1024;
      *v90 = v80;
      *&v90[4] = 1024;
      *&v90[6] = v4;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) new availability blockers 0x%08x", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v79))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_115:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (trid %hu) new availability blockers 0x%08x", "tr_controller.cpp", 547, "set_availability_blockers", *(v76 + 208), v4);
      goto LABEL_116;
    }

LABEL_118:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_115;
  }

LABEL_116:
  *(v76 + 652) = v4;
  v81 = ashp::acipc::ring_controller::compute_state((v76 + 648));
  ashp::acipc::tr_controller::update_state_monitor_target(v76, v81);
  os_unfair_lock_unlock((v76 + 16));
}

void ashp::acipc::ring_manager::recompute_cr_availability(const os_unfair_lock *this, ashp::acipc::detail::ring_manager::cr_context *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  if (this[8]._os_unfair_lock_opaque)
  {
    v4 = 1;
    goto LABEL_96;
  }

  v4 = !ashp::acipc::ring_manager::is_tr_supported_in_current_exec_stage(this, a2);
  if ((v4 & 1) == 0)
  {
    os_unfair_lock_assert_owner(this);
    for (i = *&this[124]._os_unfair_lock_opaque; i; i = *(i + 8))
    {
      os_unfair_lock_assert_owner(this);
      if (*(i + 32) || *(i + 36) == 1) && *(a2 + 120) == 1 && (ashp::operator==<int,0>(a2 + 104, i + 104, v6, v7))
      {
        goto LABEL_94;
      }
    }

    os_unfair_lock_assert_owner(this);
    v8 = *&this[130]._os_unfair_lock_opaque;
    if (!v8)
    {
LABEL_25:
      v18 = 0;
      goto LABEL_95;
    }

    while (1)
    {
      if (v8 != a2)
      {
        os_unfair_lock_assert_owner(this);
        if (*(v8 + 32))
        {
          v11 = *(a2 + 7);
          v12 = *(v8 + 56);
          v13 = (v11 | v12) == 0;
          if (v11 && v12)
          {
            v13 = CFStringCompare(v11, v12, 0) == kCFCompareEqualTo;
          }

          if (v13 && *(a2 + 16) == *(v8 + 64))
          {
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v12, v9, v10);
            CStringPtr = *(a2 + 7);
            if (CStringPtr)
            {
              CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
              if (CStringPtr)
              {
                v20 = CStringPtr;
              }

              else
              {
                v20 = "???";
              }
            }

            else
            {
              v20 = "(nil)";
            }

            log_level = ashp::detail::logging::get_log_level(CStringPtr);
            if (log_level >= 2)
            {
              log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (log_level)
              {
                v43 = *(a2 + 16);
                *buf = 136447234;
                v74 = "ring_manager.cpp";
                v75 = 1024;
                v76 = 909;
                v77 = 2082;
                v78 = "does_cr_conflict_with_any_open_cr";
                v79 = 2080;
                *v80 = v20;
                *&v80[8] = 1024;
                *&v80[10] = v43;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cr %s[%u] already exists in a non-closed state", buf, 0x2Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(log_level))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] cr %s[%u] already exists in a non-closed state", "ring_manager.cpp", 909, "does_cr_conflict_with_any_open_cr", v20, *(a2 + 16));
            }

LABEL_94:
            v18 = 2;
LABEL_95:
            v4 |= v18;
            break;
          }

          if (*(a2 + 48) == *(v8 + 96))
          {
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v12, v9, v10);
            v24 = *(a2 + 7);
            if (v24)
            {
              v25 = CFStringGetCStringPtr(v24, 0x8000100u);
              if (v25)
              {
                v26 = v25;
              }

              else
              {
                v26 = "???";
              }
            }

            else
            {
              v26 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v8 + 56), v21, v22, v23);
            v44 = *(v8 + 56);
            if (v44)
            {
              v44 = CFStringGetCStringPtr(v44, 0x8000100u);
              if (v44)
              {
                v45 = v44;
              }

              else
              {
                v45 = "???";
              }
            }

            else
            {
              v45 = "(nil)";
            }

            v46 = ashp::detail::logging::get_log_level(v44);
            if (v46 >= 2)
            {
              v46 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v46)
              {
                v47 = *(a2 + 48);
                v48 = *(a2 + 16);
                v49 = *(v8 + 64);
                *buf = 136448002;
                v74 = "ring_manager.cpp";
                v75 = 1024;
                v76 = 915;
                v77 = 2082;
                v78 = "does_cr_conflict_with_any_open_cr";
                v79 = 1024;
                *v80 = v47;
                *&v80[4] = 2080;
                *&v80[6] = v26;
                *&v80[14] = 1024;
                *&v80[16] = v48;
                LOWORD(v81) = 2080;
                *(&v81 + 2) = v45;
                WORD5(v81) = 1024;
                HIDWORD(v81) = v49;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu is shared by %s[%u] and non-closed %s[%u]", buf, 0x42u);
              }
            }

            if (ashp::detail::logging::get_log_level(v46))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu is shared by %s[%u] and non-closed %s[%u]", "ring_manager.cpp", 915, "does_cr_conflict_with_any_open_cr", *(a2 + 48), v26, *(a2 + 16), v45, *(v8 + 64));
            }

            goto LABEL_94;
          }

          if (*(a2 + 49) == *(v8 + 98))
          {
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v12, v9, v10);
            v30 = *(a2 + 7);
            if (v30)
            {
              v31 = CFStringGetCStringPtr(v30, 0x8000100u);
              if (v31)
              {
                v32 = v31;
              }

              else
              {
                v32 = "???";
              }
            }

            else
            {
              v32 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v8 + 56), v27, v28, v29);
            v50 = *(v8 + 56);
            if (v50)
            {
              v50 = CFStringGetCStringPtr(v50, 0x8000100u);
              if (v50)
              {
                v51 = v50;
              }

              else
              {
                v51 = "???";
              }
            }

            else
            {
              v51 = "(nil)";
            }

            v52 = ashp::detail::logging::get_log_level(v50);
            if (v52 >= 2)
            {
              v52 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v52)
              {
                v53 = *(a2 + 48);
                v54 = *(a2 + 16);
                v55 = *(v8 + 64);
                *buf = 136448002;
                v74 = "ring_manager.cpp";
                v75 = 1024;
                v76 = 921;
                v77 = 2082;
                v78 = "does_cr_conflict_with_any_open_cr";
                v79 = 1024;
                *v80 = v53;
                *&v80[4] = 2080;
                *&v80[6] = v32;
                *&v80[14] = 1024;
                *&v80[16] = v54;
                LOWORD(v81) = 2080;
                *(&v81 + 2) = v51;
                WORD5(v81) = 1024;
                HIDWORD(v81) = v55;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cr index array vector %u is shared by %s[%u] and non-closed %s[%u]", buf, 0x42u);
              }
            }

            if (ashp::detail::logging::get_log_level(v52))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] cr index array vector %u is shared by %s[%u] and non-closed %s[%u]", "ring_manager.cpp", 921, "does_cr_conflict_with_any_open_cr", *(a2 + 48), v32, *(a2 + 16), v51, *(v8 + 64));
            }

            goto LABEL_94;
          }

          if (*(a2 + 120) == 1 && ashp::operator==<int,0>(a2 + 104, v8 + 104, v9, v10))
          {
            ashp::optional<ashp::acipc::name_and_selector,void>::value(a2 + 104, v15, v16, v17);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 13, v33, v34, v35);
            v39 = *(a2 + 13);
            if (v39)
            {
              v40 = CFStringGetCStringPtr(v39, 0x8000100u);
              if (v40)
              {
                v41 = v40;
              }

              else
              {
                v41 = "???";
              }
            }

            else
            {
              v41 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2 + 7, v36, v37, v38);
            v59 = *(a2 + 7);
            if (v59)
            {
              v60 = CFStringGetCStringPtr(v59, 0x8000100u);
              if (v60)
              {
                v61 = v60;
              }

              else
              {
                v61 = "???";
              }
            }

            else
            {
              v61 = "(nil)";
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v8 + 56), v56, v57, v58);
            v62 = *(v8 + 56);
            if (v62)
            {
              v62 = CFStringGetCStringPtr(v62, 0x8000100u);
              if (v62)
              {
                v63 = v62;
              }

              else
              {
                v63 = "???";
              }
            }

            else
            {
              v63 = "(nil)";
            }

            v64 = ashp::detail::logging::get_log_level(v62);
            if (v64 >= 2)
            {
              v64 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v64)
              {
                v65 = *(a2 + 16);
                v66 = *(v8 + 64);
                *buf = 136448002;
                v74 = "ring_manager.cpp";
                v75 = 1024;
                v76 = 927;
                v77 = 2082;
                v78 = "does_cr_conflict_with_any_open_cr";
                v79 = 2080;
                *v80 = v41;
                *&v80[8] = 2080;
                *&v80[10] = v61;
                *&v80[18] = 1024;
                LODWORD(v81) = v65;
                WORD2(v81) = 2080;
                *(&v81 + 6) = v63;
                HIWORD(v81) = 1024;
                v82 = v66;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cr exclusive doorbell %s is shared by %s[%u] and %s[%u]", buf, 0x46u);
              }
            }

            if (ashp::detail::logging::get_log_level(v64))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] cr exclusive doorbell %s is shared by %s[%u] and %s[%u]", "ring_manager.cpp", 927, "does_cr_conflict_with_any_open_cr", v41, v61, *(a2 + 16), v63, *(v8 + 64));
            }

            goto LABEL_94;
          }
        }
      }

      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_96:
  *(a2 + 10) = v4;
  v67 = *a2;
  os_unfair_lock_lock((v67 + 16));
  if ((*(v67 + 505) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x19A, "set_availability_blockers", v69);
    _os_crash();
    __break(1u);
    goto LABEL_105;
  }

  v70 = ashp::detail::logging::get_log_level(v68);
  if (v70 >= 4)
  {
    v70 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v70)
    {
      v71 = *(v67 + 208);
      *buf = 136447234;
      v74 = "cr_controller.cpp";
      v76 = 411;
      v77 = 2082;
      v75 = 1024;
      v78 = "set_availability_blockers";
      v79 = 1024;
      *v80 = v71;
      *&v80[4] = 1024;
      *&v80[6] = v4;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) new availability blockers 0x%08x", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v70))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_102:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) new availability blockers 0x%08x", "cr_controller.cpp", 411, "set_availability_blockers", *(v67 + 208), v4);
      goto LABEL_103;
    }

LABEL_105:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_102;
  }

LABEL_103:
  *(v67 + 524) = v4;
  v72 = ashp::acipc::ring_controller::compute_state((v67 + 520));
  ashp::acipc::cr_controller::update_state_monitor_target(v67, v72);
  os_unfair_lock_unlock((v67 + 16));
}

BOOL ashp::acipc::ring_manager::is_tr_supported_in_current_exec_stage(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(a1);
  if (!*(a1 + 488))
  {
    return 0;
  }

  if (*(a2 + 49))
  {
    return 1;
  }

  v8 = *(a2 + 72);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a2 + 88);
  v10 = 8 * v8 - 8;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v9, v4, v5, v6);
    v11 = *v9;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 488), v12, v13, v14);
    v4 = *(a1 + 488);
    result = (v11 | v4) == 0;
    if (v11)
    {
      v15 = v4 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      result = CFStringCompare(v11, v4, 0) == kCFCompareEqualTo;
    }

    if (result)
    {
      break;
    }

    ++v9;
    v16 = v10;
    v10 -= 8;
  }

  while (v16);
  return result;
}

uint64_t ashp::acipc::ring_manager::is_cr_completion_context_for_tr(const os_unfair_lock *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_assert_owner(a1);
  if (*(a3 + 144) == 1)
  {
    if (!*(a3 + 168))
    {
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v22, *(a2 + 56), v5, v6);
      v23 = *(a2 + 64);
      v26 = 0;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v24, v8, v9, v10);
      v11 = v22;
      v22 = 0;
      v24 = v11;
      v25 = v23;
      v26 = 1;
      v14 = ashp::operator==<int,0>(a3 + 128, &v24, v12, v13);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v24, v15, v16, v17);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v22, v18, v19, v20);
      return v14;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x3AC, "is_cr_completion_context_for_tr", v7);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (!*(a3 + 168))
    {
      return 0;
    }

    return ashp::operator==<int,0>(a3 + 152, a2 + 128, v5, v6);
  }

  return result;
}

void sub_23EC9E7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(va1, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, v6, v7, v8);
  _Unwind_Resume(a1);
}

void ashp::acipc::ring_manager::~ring_manager(ashp::acipc::ring_manager *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 65))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x2A, "~ring_manager", a5);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (*(this + 62))
  {
LABEL_13:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x2B, "~ring_manager", a5);
    _os_crash();
    __break(1u);
    return;
  }

  os_unfair_lock_lock(*(this + 68));
  v6 = *(this + 68);
  *(v6 + 8) = 0;
  os_unfair_lock_unlock(v6);
  *(this + 68) = 0;
  ashp::async_notifier::cancel(this + 138, v7, v8, v9);
  ashp::async_notifier::~async_notifier(this + 138, v10, v11, v12);
  ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::cr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::cr_context>,&ashp::acipc::detail::ring_manager::cr_context::manager_link>::~intrusive_list_impl(this + 65, v13, v14, v15);
  ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::~intrusive_list_impl(this + 62, v16, v17, v18);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 61, v19, v20, v21);
  if (*(this + 480) == 1)
  {
    *(this + 480) = 0;
    ashp::acipc::index_array_signaler::~index_array_signaler((this + 296), v22, v23, v24);
  }

  if (*(this + 288) == 1)
  {
    *(this + 288) = 0;
  }

  if (*(this + 256) == 1)
  {
    *(this + 256) = 0;
    ashp::acipc::index_array_signaler::~index_array_signaler((this + 72), v22, v23, v24);
  }

  if (*(this + 64) == 1)
  {
    *(this + 64) = 0;
  }

  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(this + 3, v22, v23, v24);
}

void ashp::acipc::ring_manager::stop_tr(const os_unfair_lock *a1, uint64_t *a2, const char *a3)
{
  LODWORD(v5) = a3;
  v32 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  if ((*(a2 + 39) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x21C, "stop_tr", v8);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v10 = *(a2 + 48);
      *buf = 136447234;
      v23 = "ring_manager.cpp";
      v25 = 541;
      v26 = 2082;
      v24 = 1024;
      v27 = "stop_tr";
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping trid %hu for reason %u", buf, 0x28u);
    }
  }

  v4 = 0x27E384000uLL;
  v3 = 0x27E384000uLL;
  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_8;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    ashp_log_helper::log(*(v3 + 2648), "[%s:%d:%s] stopping trid %hu for reason %u", "ring_manager.cpp", 541, "stop_tr", *(a2 + 48), v5);
LABEL_8:
    *(a2 + 39) = 0;
    a2 = *a2;
    os_unfair_lock_lock(a2 + 4);
    if (a2[79])
    {
      break;
    }

LABEL_18:
    v5 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x218, "stop", v12);
    _os_crash();
    __break(1u);
LABEL_19:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  v13 = ashp::detail::logging::get_log_level(v11);
  if (v13 >= 4)
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      v14 = *(a2 + 104);
      *buf = 136446978;
      v23 = "tr_controller.cpp";
      v24 = 1024;
      v25 = 537;
      v26 = 2082;
      v27 = "stop";
      v28 = 1024;
      v29 = v14;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (trid %hu) stopping controller", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v13))
  {
    if (*(v4 + 2728) != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(*(v3 + 2648), "[%s:%d:%s] (trid %hu) stopping controller", "tr_controller.cpp", 537, "stop", *(a2 + 104));
  }

  ashp::acipc::ring_controller::stop((a2 + 81), v5, v15, v16, v17);
  ashp::acipc::doorbell_participant::deregister_doorbell((a2 + 169), v18, v19, v20, v21);
  os_unfair_lock_unlock(a2 + 4);
}

void ashp::acipc::ring_manager::set_tr_closed(const os_unfair_lock *this, os_unfair_lock_s **a2)
{
  v3 = this;
  v100 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v6 = *(a2 + 48);
      *buf = 136446978;
      v91 = "ring_manager.cpp";
      v92 = 1024;
      v93 = 550;
      v94 = 2082;
      v95 = "set_tr_closed";
      v96 = 1024;
      v97 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting trid %hu closed", buf, 0x22u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_7;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting trid %hu closed", "ring_manager.cpp", 550, "set_tr_closed", *(a2 + 48));
LABEL_7:
    if (!*(a2 + 8))
    {
      goto LABEL_118;
    }

    *(a2 + 8) = 0;
    os_unfair_lock_assert_owner(v3);
    os_unfair_lock_lock(v3 + 1);
    LOBYTE(v3[150]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v3 + 1);
    os_unfair_lock_assert_owner(v3);
    if (*(a2 + 8))
    {
LABEL_119:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x28F, "setup_tr_settlement_tracking", v8);
      _os_crash();
      __break(1u);
LABEL_120:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x290, "setup_tr_settlement_tracking", v8);
      _os_crash();
      __break(1u);
LABEL_121:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x291, "setup_tr_settlement_tracking", v8);
      _os_crash();
      __break(1u);
      goto LABEL_122;
    }

    if (*(a2 + 36) == 1)
    {
      goto LABEL_120;
    }

    if (*(a2 + 37) == 1)
    {
      goto LABEL_121;
    }

    *(a2 + 18) = 257;
    if (*(a2 + 40) == 1)
    {
      *(a2 + 40) = 0;
      v9 = *&v3[130]._os_unfair_lock_opaque;
      if (v9)
      {
        while (1)
        {
          is_cr_completion_context_for_tr = ashp::acipc::ring_manager::is_cr_completion_context_for_tr(v3, v9, a2);
          if (is_cr_completion_context_for_tr)
          {
            break;
          }

LABEL_48:
          v9 = *(v9 + 8);
          if (!v9)
          {
            goto LABEL_107;
          }
        }

        v11 = ashp::detail::logging::get_log_level(is_cr_completion_context_for_tr);
        if (v11 >= 4)
        {
          v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            v12 = *(v9 + 96);
            v13 = *(a2 + 48);
            *buf = 136447234;
            v91 = "ring_manager.cpp";
            v92 = 1024;
            v93 = 666;
            v94 = 2082;
            v95 = "setup_tr_settlement_tracking";
            v96 = 1024;
            v97 = v12;
            v98 = 1024;
            v99 = v13;
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] adding crid %hu flush tracking for trid %hu", buf, 0x28u);
          }
        }

        if (ashp::detail::logging::get_log_level(v11))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] adding crid %hu flush tracking for trid %hu", "ring_manager.cpp", 666, "setup_tr_settlement_tracking", *(v9 + 96), *(a2 + 48));
        }

        v14 = *a2;
        v15 = *v9;
        v16 = *a2 + 4;
        os_unfair_lock_lock(v16);
        if ((*(v14 + 632) & 1) == 0)
        {
          goto LABEL_110;
        }

        if (!*(v14 + 648))
        {
          goto LABEL_111;
        }

        v19 = *(v14 + 1432);
        v20 = v19 + 1;
        if (v19 == -1)
        {
          goto LABEL_112;
        }

        v21 = *(v14 + 1440);
        if (v20 > v21)
        {
          if (v21 <= 8)
          {
            v22 = 8;
          }

          else
          {
            v22 = *(v14 + 1440);
          }

          if (v20 >= 9)
          {
            do
            {
              if (is_mul_ok(v22, 3uLL))
              {
                v22 = (3 * v22) >> 1;
              }

              else
              {
                v22 = v19 + 1;
              }
            }

            while (v22 < v20);
          }

          if (v21 < v22)
          {
            if (v19 >= v22)
            {
              goto LABEL_115;
            }

            if (v22 >> 61)
            {
              goto LABEL_116;
            }

            v23 = malloc_type_aligned_alloc(8uLL, 8 * v22, 0x2004093837F09uLL);
            if (!v23)
            {
              goto LABEL_117;
            }

            v25 = *(v14 + 1432);
            if (v25)
            {
              for (i = 0; i != v25; ++i)
              {
                v23[i] = *(*(v14 + 1448) + 8 * i);
              }
            }

            *(v14 + 1440) = v22;
            v27 = *(v14 + 1448);
            *(v14 + 1448) = v23;
            if (v27)
            {
              free(v27);
            }

            v19 = *(v14 + 1432);
            v21 = *(v14 + 1440);
          }
        }

        if (v19 >= v21)
        {
          goto LABEL_113;
        }

        v28 = *(v14 + 1448);
        if (!v28)
        {
LABEL_109:
          __break(1u);
LABEL_110:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x281, "completion_ring_will_flush", v18);
          _os_crash();
          __break(1u);
LABEL_111:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x282, "completion_ring_will_flush", v18);
          _os_crash();
          __break(1u);
LABEL_112:
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v17);
          ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v78);
          _os_crash();
          __break(1u);
LABEL_113:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v18);
          _os_crash();
          __break(1u);
LABEL_114:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x23E, "notify_transfer_ring_when_flushed", v33);
          _os_crash();
          __break(1u);
LABEL_115:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", v18);
          _os_crash();
          __break(1u);
LABEL_116:
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", v17);
          ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v79);
          _os_crash();
          __break(1u);
LABEL_117:
          v3 = "buffer";
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v24);
          ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v80);
          _os_crash();
          __break(1u);
LABEL_118:
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x227, "set_tr_closed", v7);
          _os_crash();
          __break(1u);
          goto LABEL_119;
        }

        *(v28 + 8 * v19) = v15;
        *(v14 + 1432) = v19 + 1;
        os_unfair_lock_unlock(v16);
        v29 = *v9;
        v89 = *a2;
        os_unfair_lock_lock((v29 + 16));
        if ((*(v29 + 505) & 1) == 0)
        {
          goto LABEL_114;
        }

        v87[0] = &v89;
        v87[1] = v29;
        v88 = 1;
        if (*(v29 + 32))
        {
LABEL_47:
          ashp::deferred_action<ashp::acipc::cr_controller::notify_transfer_ring_when_flushed(ashp::acipc::tr_controller *)::$_0>::~deferred_action(v87);
          os_unfair_lock_unlock((v29 + 16));
          goto LABEL_48;
        }

        v34 = (v29 + 520);
        if (*(v29 + 537))
        {
          if (*(v29 + 1208))
          {
            goto LABEL_47;
          }

          v86 = 0;
          head_index = ashp::acipc::ring_controller::read_head_index(v34, v30, v31, v32, v33);
          if ((v86 & 1) == 0)
          {
            v86 = 1;
          }

          ashp::optional<ashp::acipc::tr_ring,void>::value(v29 + 928, v35, v36, v37);
          ashp::optional<unsigned short,void>::value(&head_index, v38, v39, v40);
          v41 = *(v29 + 936);
          if (v41 <= head_index || ((v42 = *(v29 + 938), v43 = head_index - v42, (v43 & 0xFFFF0000) == 0) ? (v44 = 0) : (v44 = *(v29 + 936)), (v45 = (v44 + v43), v46 = v42 - *(v29 + 940), (v46 & 0xFFFF0000) == 0) ? (v47 = 0) : (v47 = *(v29 + 936)), v45 > (v41 + ~(v47 + v46))))
          {
            v48 = ashp::optional<unsigned short,void>::value(&head_index, v30, v31, v32);
            v49 = ashp::detail::logging::get_log_level(v48);
            if (v49 >= 2)
            {
              v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v49)
              {
                v50 = *(v29 + 208);
                *buf = 136447234;
                v91 = "cr_controller.cpp";
                v92 = 1024;
                v93 = 585;
                v94 = 2082;
                v95 = "notify_transfer_ring_when_flushed";
                v96 = 1024;
                v97 = v50;
                v98 = 1024;
                v99 = head_index;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) invalid hi: %hu", buf, 0x28u);
              }
            }

            if (ashp::detail::logging::get_log_level(v49))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) invalid hi: %hu", "cr_controller.cpp", 585, "notify_transfer_ring_when_flushed", *(v29 + 208), head_index);
            }

            ashp::acipc::cr_controller::raise_error(v29, 256);
            goto LABEL_47;
          }
        }

        else
        {
          if (!*v34 || (*(v29 + 1208) & 1) != 0)
          {
            goto LABEL_47;
          }

          v86 = 0;
        }

        ashp::optional<ashp::acipc::tr_ring,void>::value(v29 + 928, v30, v31, v32);
        *buf = *(v29 + 940);
        buf[2] = 1;
        if ((v86 & 1) == 0 || (ashp::optional<unsigned short,void>::value(&head_index, v51, v52, v53), v54 = head_index, ashp::optional<unsigned short,void>::value(buf, v55, v56, v57), v54 != *buf))
        {
          if (v88 == 1)
          {
            v88 = 0;
          }

          v58 = v86;
          v59 = v84;
          if (v86)
          {
            v59 = head_index;
          }

          v84 = v59;
          v60 = *(v29 + 1184);
          v61 = v60 + 1;
          if (v60 == -1)
          {
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v53);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v81);
            _os_crash();
            __break(1u);
LABEL_125:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v18);
            _os_crash();
            __break(1u);
LABEL_126:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", v18);
            _os_crash();
            __break(1u);
LABEL_127:
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", v53);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v82);
            _os_crash();
            __break(1u);
LABEL_128:
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v66);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v83);
            _os_crash();
            __break(1u);
          }

          v62 = v89;
          v63 = *(v29 + 1192);
          if (v61 > v63)
          {
            if (v63 <= 8)
            {
              v64 = 8;
            }

            else
            {
              v64 = *(v29 + 1192);
            }

            if (v61 >= 9)
            {
              do
              {
                if (is_mul_ok(v64, 3uLL))
                {
                  v64 = (3 * v64) >> 1;
                }

                else
                {
                  v64 = v60 + 1;
                }
              }

              while (v64 < v61);
            }

            if (v63 < v64)
            {
              if (v60 >= v64)
              {
                goto LABEL_126;
              }

              if (v64 >> 60)
              {
                goto LABEL_127;
              }

              v65 = malloc_type_aligned_alloc(8uLL, 16 * v64, 0x10200408A81CFC2uLL);
              if (!v65)
              {
                goto LABEL_128;
              }

              v67 = *(v29 + 1184);
              if (v67)
              {
                v68 = (*(v29 + 1200) + 10);
                v69 = v65 + 10;
                do
                {
                  *(v69 - 10) = *(v68 - 10);
                  *v69 = 0;
                  if (*v68 == 1)
                  {
                    *(v69 - 1) = *(v68 - 1);
                    *v69 = 1;
                    if (*v68 == 1)
                    {
                      *v68 = 0;
                    }
                  }

                  v68 += 16;
                  v69 += 16;
                  --v67;
                }

                while (v67);
              }

              *(v29 + 1192) = v64;
              v70 = *(v29 + 1200);
              *(v29 + 1200) = v65;
              if (v70)
              {
                free(v70);
              }

              v60 = *(v29 + 1184);
              v63 = *(v29 + 1192);
            }
          }

          if (v60 >= v63)
          {
            goto LABEL_125;
          }

          v71 = *(v29 + 1200);
          if (!v71)
          {
            goto LABEL_109;
          }

          v72 = v71 + 16 * v60;
          *v72 = v62;
          *(v72 + 10) = 0;
          if (v58)
          {
            *(v72 + 8) = v84;
            *(v72 + 10) = 1;
          }

          *(v29 + 1184) = v60 + 1;
        }

        goto LABEL_47;
      }
    }

LABEL_107:
    ashp::acipc::tr_controller::set_device_ring_status(*a2, 0);
    os_unfair_lock_assert_owner(v3);
    os_unfair_lock_lock(v3 + 1);
    LOBYTE(v3[150]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v3 + 1);
    ashp::acipc::ring_manager::finalize_tr_settlement_if_ready(v3, a2);
    v73 = *a2;
    os_unfair_lock_lock((v73 + 16));
    if (*(v73 + 632))
    {
      break;
    }

LABEL_122:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x279, "clear_indices", v77);
    _os_crash();
    __break(1u);
LABEL_123:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  ashp::acipc::ring_controller::clear_indices(v73 + 648, v74, v75, v76, v77);
  os_unfair_lock_unlock((v73 + 16));
}

void sub_23EC9F844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  ashp::deferred_action<ashp::acipc::cr_controller::notify_transfer_ring_when_flushed(ashp::acipc::tr_controller *)::$_0>::~deferred_action(va);
  os_unfair_lock_unlock(v18);
  _Unwind_Resume(a1);
}

void ashp::acipc::ring_manager::stop_cr(const os_unfair_lock *a1, uint64_t *a2, const char *a3)
{
  LODWORD(v5) = a3;
  v32 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  if ((*(a2 + 37) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x255, "stop_cr", v8);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  *(a2 + 37) = 0;
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v10 = *(a2 + 48);
      *buf = 136447234;
      v23 = "ring_manager.cpp";
      v25 = 599;
      v26 = 2082;
      v24 = 1024;
      v27 = "stop_cr";
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping crid %hu for reason %u", buf, 0x28u);
    }
  }

  v4 = 0x27E384000uLL;
  v3 = 0x27E384000uLL;
  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_8;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    ashp_log_helper::log(*(v3 + 2648), "[%s:%d:%s] stopping crid %hu for reason %u", "ring_manager.cpp", 599, "stop_cr", *(a2 + 48), v5);
LABEL_8:
    a2 = *a2;
    os_unfair_lock_lock(a2 + 4);
    if (*(a2 + 505))
    {
      break;
    }

LABEL_18:
    v5 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x190, "stop", v12);
    _os_crash();
    __break(1u);
LABEL_19:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  v13 = ashp::detail::logging::get_log_level(v11);
  if (v13 >= 4)
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      v14 = *(a2 + 104);
      *buf = 136446978;
      v23 = "cr_controller.cpp";
      v24 = 1024;
      v25 = 401;
      v26 = 2082;
      v27 = "stop";
      v28 = 1024;
      v29 = v14;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) stopping controller", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v13))
  {
    if (*(v4 + 2728) != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(*(v3 + 2648), "[%s:%d:%s] (crid %hu) stopping controller", "cr_controller.cpp", 401, "stop", *(a2 + 104));
  }

  ashp::acipc::ring_controller::stop((a2 + 65), v5, v15, v16, v17);
  ashp::acipc::doorbell_participant::deregister_doorbell((a2 + 135), v18, v19, v20, v21);
  os_unfair_lock_unlock(a2 + 4);
}

void ashp::acipc::ring_manager::set_cr_closed(const os_unfair_lock *this, os_unfair_lock_s **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  log_level = ashp::detail::logging::get_log_level(v3);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v5 = *(a2 + 48);
      *buf = 136446978;
      v13 = "ring_manager.cpp";
      v14 = 1024;
      v15 = 607;
      v16 = 2082;
      v17 = "set_cr_closed";
      v18 = 1024;
      v19 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting crid %hu closed", buf, 0x22u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_7;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting crid %hu closed", "ring_manager.cpp", 607, "set_cr_closed", *(a2 + 48));
LABEL_7:
    if (!*(a2 + 8))
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x260, "set_cr_closed", v6);
      _os_crash();
      __break(1u);
      goto LABEL_11;
    }

    *(a2 + 8) = 0;
    ashp::acipc::cr_controller::set_device_ring_status(*a2, 0);
    v7 = *a2;
    os_unfair_lock_lock(*a2 + 4);
    if (*(v7 + 505))
    {
      break;
    }

LABEL_11:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x20B, "clear_indices", v11);
    _os_crash();
    __break(1u);
LABEL_12:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  ashp::acipc::ring_controller::clear_indices(v7 + 520, v8, v9, v10, v11);
  os_unfair_lock_unlock((v7 + 16));
}

void ashp::unsafe_storage<ashp::acipc::index_array_signaler>::storage::emplace<ashp::acipc::acipc_driver *&,unsigned short *,unsigned short &>(ashp::acipc::index_array_signaler *this, uint64_t *a2, uint64_t *a3, const char *a4)
{
  if (*(this + 184) == 1)
  {
    *(this + 184) = 0;
    ashp::acipc::index_array_signaler::~index_array_signaler(this, a2, a3, a4);
  }

  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v10;
  v11 = (this + 8);
  HIDWORD(v46) = 0;
  LOWORD(v47) = 0;
  v44 = 0;
  v45 = 0;
  LOBYTE(v46) = 0;
  *(this + 3) = 0;
  if (!v10)
  {
LABEL_9:
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v45, a2, a3, a4);
    *(this + 4) = v9;
    *(this + 5) = v8;
    *(this + 104) = 0;
    *(this + 44) = 0;
    if (v9 && v10)
    {
      ashp::interrupt::interrupt(this + 48, v8, v19, a4, v20);
      *(this + 104) = 1;
      ashp::optional<ashp::interrupt,void>::value(this + 48, v21, v22, v23);
      v44 = MEMORY[0x277D85DD0];
      v45 = 0x40000000;
      v46 = ___ZN4ashp5acipc20index_array_signalerC2EPNS0_12acipc_driverEPtt_block_invoke;
      v47 = &__block_descriptor_tmp_2015;
      v48 = this;
      v24 = *(this + 6);
      ashp::optional<ashp::interrupt_manager,void>::value(&v24[158], v25, v26, v27);
      ashp::interrupt_manager::set_handler_callback(v24 + 158, this + 48, &v44);
      *(this + 9) = 0u;
      *(this + 10) = 0u;
      *(this + 7) = 0u;
      *(this + 8) = 0u;
      ashp::optional<ashp::interrupt,void>::value(this + 48, v28, v29, v30);
      LODWORD(v24) = *(this + 44);
      v31 = *(this + 6);
      ashp::optional<ashp::interrupt_manager,void>::value(&v31[158], v32, v33, v34);
      ashp::interrupt_manager::set_handler_mask(v31 + 158, this + 48, v24);
      ashp::optional<ashp::interrupt,void>::value(this + 48, v35, v36, v37);
      v38 = *(this + 6);
      ashp::optional<ashp::interrupt_manager,void>::value(&v38[158], v39, v40, v41);
      ashp::interrupt_manager::resume_handler(v38 + 158, this + 48);
      *(this + 184) = 1;
      return;
    }

    goto LABEL_14;
  }

  v12 = malloc_type_aligned_alloc(8uLL, 32 * v10, 0x108004063104816uLL);
  *(this + 3) = v12;
  if (v12)
  {
    v14 = *v11;
    v15 = v10;
    while (v14 < *(this + 2))
    {
      v16 = *(this + 3);
      if (!v16)
      {
        goto LABEL_13;
      }

      v17 = v16 + 32 * v14;
      *v17 = v44;
      ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr((v17 + 8), v45, a3, a4);
      v18 = v46;
      *(v17 + 24) = v47;
      *(v17 + 16) = v18;
      v14 = *v11 + 1;
      *v11 = v14;
      if (!--v15)
      {
        goto LABEL_9;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v13);
    _os_crash();
LABEL_13:
    __break(1u);
LABEL_14:
    ashp::detail::control_flow::log_guard_else_failure("index_array_signaler.cpp", 0x11, "index_array_signaler", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: created using null or empty index array", "index_array_signaler.cpp", 0x11, "index_array_signaler", v42);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", a4);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v43);
  _os_crash();
  __break(1u);
}

void sub_23ECA0080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::index_array_signaler::element>::~storage(v4, a2, a3, a4);
  ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset((v5 + 8), v7, v8, v9);
  _Unwind_Resume(a1);
}

uint64_t ashp::optional<ashp::acipc::index_array_signaler,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 184) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::ring_manager::request_tr_close(os_unfair_lock *a1, uint64_t a2, const char *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  v6 = *(a2 + 32);
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a2 + 96);
      *buf = 136447234;
      v25 = "ring_manager.cpp";
      v27 = 332;
      v28 = 2082;
      v26 = 1024;
      v29 = "request_tr_close";
      v30 = 1024;
      v31 = v9;
      v32 = 1024;
      v33 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu status %u", buf, 0x28u);
    }
  }

  v10 = ashp::detail::logging::get_log_level(log_level);
  if (v10)
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu status %u", "ring_manager.cpp", 332, "request_tr_close", *(a2 + 96), v6);
  }

  v11 = *(a2 + 32);
  if (v11 == 1)
  {
    if ((*(a2 + 38) & 1) == 0)
    {
      v21 = ashp::detail::logging::get_log_level(v10);
      if (v21 >= 4)
      {
        v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          v22 = *(a2 + 96);
          *buf = 136446978;
          v25 = "ring_manager.cpp";
          v26 = 1024;
          v27 = 355;
          v28 = 2082;
          v29 = "request_tr_close";
          v30 = 1024;
          v31 = v22;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] requesting close for trid %hu", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v21))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] requesting close for trid %hu", "ring_manager.cpp", 355, "request_tr_close", *(a2 + 96));
      }

      *(a2 + 38) = 1;
      ashp::acipc::ring_manager::stop_tr(a1, a2, a3);
    }

    return 0;
  }

  if (v11 == 4)
  {
    v19 = ashp::detail::logging::get_log_level(v10);
    if (v19 >= 2)
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v20 = *(a2 + 96);
        *buf = 136446978;
        v25 = "ring_manager.cpp";
        v26 = 1024;
        v27 = 360;
        v28 = 2082;
        v29 = "request_tr_close";
        v30 = 1024;
        v31 = v20;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu in limbo", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v19))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu in limbo", "ring_manager.cpp", 360, "request_tr_close", *(a2 + 96));
    }

    if (a3 != 1)
    {
      return 0;
    }

    goto LABEL_52;
  }

  if (v11 != 2)
  {
    return 0;
  }

  v12 = ashp::detail::logging::get_log_level(v10);
  if (v12 >= 4)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      v13 = *(a2 + 96);
      *buf = 136446978;
      v25 = "ring_manager.cpp";
      v26 = 1024;
      v27 = 336;
      v28 = 2082;
      v29 = "request_tr_close";
      v30 = 1024;
      v31 = v13;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing trid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v12))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing trid %hu", "ring_manager.cpp", 336, "request_tr_close", *(a2 + 96));
  }

  ashp::acipc::ring_manager::stop_tr(a1, a2, a3);
  v14 = *(a2 + 48);
  v16 = ashp::detail::logging::get_log_level(v15);
  if (v14 != 1)
  {
    if (v16 >= 4)
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        v23 = *(a2 + 96);
        *buf = 136446978;
        v25 = "ring_manager.cpp";
        v26 = 1024;
        v27 = 347;
        v28 = 2082;
        v29 = "request_tr_close";
        v30 = 1024;
        v31 = v23;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending close message for trid %hu", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v16))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending close message for trid %hu", "ring_manager.cpp", 347, "request_tr_close", *(a2 + 96));
    }

LABEL_52:
    *(a2 + 32) = 3;
    ashp::acipc::tr_controller::set_device_ring_status(*a2, 3);
    ashp::acipc::ring_manager::send_tr_close_message(a1, a2);
    return 0;
  }

  if (v16 >= 4)
  {
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v17 = *(a2 + 96);
      *buf = 136446978;
      v25 = "ring_manager.cpp";
      v26 = 1024;
      v27 = 340;
      v28 = 2082;
      v29 = "request_tr_close";
      v30 = 1024;
      v31 = v17;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu has unmessaged lifecycle, closing", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v16))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu has unmessaged lifecycle, closing", "ring_manager.cpp", 340, "request_tr_close", *(a2 + 96));
  }

  ashp::acipc::ring_manager::set_tr_closed(a1, a2);
  ashp::acipc::ring_manager::check_all_cr_close_requests(a1);
  return 1;
}

uint64_t ashp::acipc::ring_manager::request_cr_close(os_unfair_lock *a1, void *a2, const char *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  v6 = *(a2 + 8);
  log_level = ashp::detail::logging::get_log_level(v7);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a2 + 48);
      *buf = 136447234;
      v25 = "ring_manager.cpp";
      v27 = 458;
      v28 = 2082;
      v26 = 1024;
      v29 = "request_cr_close";
      v30 = 1024;
      v31 = v9;
      v32 = 1024;
      v33 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu status %u", buf, 0x28u);
    }
  }

  v10 = ashp::detail::logging::get_log_level(log_level);
  if (v10)
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu status %u", "ring_manager.cpp", 458, "request_cr_close", *(a2 + 48), v6);
  }

  v11 = *(a2 + 8);
  if (v11 == 1)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      v18 = ashp::detail::logging::get_log_level(v10);
      if (v18 >= 4)
      {
        v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          v19 = *(a2 + 48);
          *buf = 136446978;
          v25 = "ring_manager.cpp";
          v26 = 1024;
          v27 = 484;
          v28 = 2082;
          v29 = "request_cr_close";
          v30 = 1024;
          v31 = v19;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] requesting close for crid %hu", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v18))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] requesting close for crid %hu", "ring_manager.cpp", 484, "request_cr_close", *(a2 + 48));
      }

      *(a2 + 36) = 1;
      ashp::acipc::ring_manager::stop_cr(a1, a2, a3);
    }

    return 0;
  }

  if (v11 == 4)
  {
    v16 = ashp::detail::logging::get_log_level(v10);
    if (v16 >= 2)
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        v17 = *(a2 + 48);
        *buf = 136446978;
        v25 = "ring_manager.cpp";
        v26 = 1024;
        v27 = 489;
        v28 = 2082;
        v29 = "request_cr_close";
        v30 = 1024;
        v31 = v17;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu in limbo", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v16))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu in limbo", "ring_manager.cpp", 489, "request_cr_close", *(a2 + 48));
    }

    if (a3 == 1)
    {
      *(a2 + 8) = 3;
      ashp::acipc::cr_controller::set_device_ring_status(*a2, 3);
      ashp::acipc::ring_manager::send_cr_close_message(a1, a2);
    }

    return 0;
  }

  if (v11 != 2)
  {
    return 0;
  }

  v12 = ashp::detail::logging::get_log_level(v10);
  if (v12 >= 4)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      v13 = *(a2 + 48);
      *buf = 136446978;
      v25 = "ring_manager.cpp";
      v26 = 1024;
      v27 = 462;
      v28 = 2082;
      v29 = "request_cr_close";
      v30 = 1024;
      v31 = v13;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing crid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v12))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing crid %hu", "ring_manager.cpp", 462, "request_cr_close", *(a2 + 48));
  }

  if (*(a2 + 36))
  {
    return 0;
  }

  ashp::acipc::ring_manager::stop_cr(a1, a2, a3);
  is_cr_required_completion_context_for_any_open_tr = ashp::acipc::ring_manager::is_cr_required_completion_context_for_any_open_tr(a1, a2);
  if (is_cr_required_completion_context_for_any_open_tr)
  {
    result = 1;
    *(a2 + 36) = 1;
  }

  else
  {
    v20 = *(a2 + 48);
    v21 = ashp::detail::logging::get_log_level(is_cr_required_completion_context_for_any_open_tr);
    if (v20 == 1)
    {
      if (v21 >= 4)
      {
        v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          v22 = *(a2 + 48);
          *buf = 136446978;
          v25 = "ring_manager.cpp";
          v26 = 1024;
          v27 = 471;
          v28 = 2082;
          v29 = "request_cr_close";
          v30 = 1024;
          v31 = v22;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu has unmessaged lifecycle, closing", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v21))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu has unmessaged lifecycle, closing", "ring_manager.cpp", 471, "request_cr_close", *(a2 + 48));
      }

      ashp::acipc::ring_manager::set_cr_closed(a1, a2);
    }

    else
    {
      if (v21 >= 4)
      {
        v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          v23 = *(a2 + 48);
          *buf = 136446978;
          v25 = "ring_manager.cpp";
          v26 = 1024;
          v27 = 476;
          v28 = 2082;
          v29 = "request_cr_close";
          v30 = 1024;
          v31 = v23;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending close message for crid %hu", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v21))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending close message for crid %hu", "ring_manager.cpp", 476, "request_cr_close", *(a2 + 48));
      }

      *(a2 + 8) = 3;
      ashp::acipc::cr_controller::set_device_ring_status(*a2, 3);
      ashp::acipc::ring_manager::send_cr_close_message(a1, a2);
    }

    return 1;
  }

  return result;
}

uint64_t ashp::acipc::ring_manager::is_cr_required_completion_context_for_any_open_tr(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  v5 = *(a1 + 496);
  if (v5)
  {
    while (1)
    {
      if (*(v5 + 32))
      {
        is_cr_completion_context_for_tr = ashp::acipc::ring_manager::is_cr_completion_context_for_tr(a1, a2, v5);
        if (is_cr_completion_context_for_tr)
        {
          break;
        }
      }

      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    log_level = ashp::detail::logging::get_log_level(is_cr_completion_context_for_tr);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        v10 = *(a2 + 96);
        v11 = *(v5 + 96);
        *buf = 136447234;
        v19 = "ring_manager.cpp";
        v21 = 981;
        v22 = 2082;
        v20 = 1024;
        v23 = "is_cr_required_completion_context_for_any_open_tr";
        v24 = 1024;
        v25 = v10;
        v26 = 1024;
        v27 = v11;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu is associated with trid %hu", buf, 0x28u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu is associated with trid %hu", "ring_manager.cpp", 981, "is_cr_required_completion_context_for_any_open_tr", *(a2 + 96), *(v5 + 96));
    }

    if ((*(a2 + 144) & 1) != 0 && (v12 = *(a1 + 520)) != 0)
    {
      while (1)
      {
        if (v12 != a2)
        {
          os_unfair_lock_assert_owner(a1);
          if (*(a2 + 32) == 2 && (*(a2 + 36) & 1) == 0)
          {
            v15 = ashp::operator==<int,0>(a2 + 128, v12 + 128, v13, v14);
            if (v15)
            {
              break;
            }
          }
        }

        v12 = *(v12 + 8);
        if (!v12)
        {
          return 1;
        }
      }

      v16 = ashp::detail::logging::get_log_level(v15);
      if (v16 >= 4)
      {
        v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          v17 = *(a2 + 96);
          *buf = 136447234;
          v19 = "ring_manager.cpp";
          v21 = 1000;
          v22 = 2082;
          v20 = 1024;
          v23 = "is_cr_required_completion_context_for_any_open_tr";
          v24 = 1024;
          v25 = v17;
          v26 = 1024;
          v27 = v17;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu belongs to the same group as %hu", buf, 0x28u);
        }
      }

      result = ashp::detail::logging::get_log_level(v16);
      if (result)
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu belongs to the same group as %hu");
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_5:
    v6 = ashp::detail::logging::get_log_level(is_cr_completion_context_for_tr);
    if (v6 >= 4)
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        v7 = *(a2 + 96);
        *buf = 136446978;
        v19 = "ring_manager.cpp";
        v20 = 1024;
        v21 = 988;
        v22 = 2082;
        v23 = "is_cr_required_completion_context_for_any_open_tr";
        v24 = 1024;
        v25 = v7;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu is not associated with any open trs", buf, 0x22u);
      }
    }

    result = ashp::detail::logging::get_log_level(v6);
    if (result)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu is not associated with any open trs");
      return 0;
    }
  }

  return result;
}

void ashp::acipc::ring_manager::send_cr_close_message(const os_unfair_lock *this, ashp::acipc::detail::ring_manager::cr_context *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  if (LOBYTE(this[8]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x50E, "send_cr_close_message", v5);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 8) != 3)
  {
LABEL_11:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x50F, "send_cr_close_message", v5);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v12 = 4;
  HIWORD(v12) = *(a2 + 48);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *(a2 + 48);
      *buf = 136446978;
      v14 = "ring_manager.cpp";
      v15 = 1024;
      v16 = 1311;
      v17 = 2082;
      v18 = "send_cr_close_message";
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending close message for crid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending close message for crid %hu", "ring_manager.cpp", 1311, "send_cr_close_message", *(a2 + 48));
      goto LABEL_9;
    }

LABEL_12:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_9:
  v11 = *&this[4]._os_unfair_lock_opaque;
  ashp::optional<ashp::acipc::messenger,void>::value(v11 + 4944, v8, v9, v10);
  ashp::acipc::messenger::send_message(v11 + 4944, &v12, 4, 0, 0, this, a2, ashp::acipc::ring_manager::cr_close_message_completed);
}

uint64_t ashp::optional<ashp::acipc::messenger,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 312) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::ring_manager::cr_close_message_completed(os_unfair_lock_t lock, char *a2, int a3, uint64_t a4, const char *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[8]._os_unfair_lock_opaque)
  {
    goto LABEL_17;
  }

  if (*(a2 + 8) != 3)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x59C, "cr_close_message_completed", a5);
    _os_crash();
    __break(1u);
LABEL_19:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_10;
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a2 + 48);
      *buf = 136447234;
      v12 = "ring_manager.cpp";
      v14 = 1437;
      v15 = 2082;
      v13 = 1024;
      v16 = "cr_close_message_completed";
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu close message result %u", buf, 0x28u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_11;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu close message result %u", "ring_manager.cpp", 1437, "cr_close_message_completed", *(a2 + 48), a3);
LABEL_11:
  switch(a3)
  {
    case 0:
      ashp::acipc::ring_manager::set_cr_closed(lock, a2);
      ashp::acipc::ring_manager::recompute_closed_ring_availability(lock);
      break;
    case 1:
      goto LABEL_15;
    case 2:
      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x5AA, "cr_close_message_completed", v10);
      _os_crash();
      __break(1u);
LABEL_15:
      *(a2 + 8) = 4;
      ashp::acipc::cr_controller::set_device_ring_status(*a2, 4);
      break;
  }

LABEL_17:
  os_unfair_lock_unlock(lock);
}

void ashp::acipc::ring_manager::check_all_cr_close_requests(os_unfair_lock *this)
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v12 = "ring_manager.cpp";
      v13 = 1024;
      v14 = 618;
      v15 = 2082;
      v16 = "check_all_cr_close_requests";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updating cr close requests", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updating cr close requests", "ring_manager.cpp", 618, "check_all_cr_close_requests");
  }

  v4 = *&this[130]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = MEMORY[0x277D86220];
    do
    {
      if (*(v4 + 32) == 2 && *(v4 + 36) == 1)
      {
        is_cr_required_completion_context_for_any_open_tr = ashp::acipc::ring_manager::is_cr_required_completion_context_for_any_open_tr(this, v4);
        if ((is_cr_required_completion_context_for_any_open_tr & 1) == 0)
        {
          *(v4 + 36) = 0;
          v7 = *(v4 + 48);
          v8 = ashp::detail::logging::get_log_level(is_cr_required_completion_context_for_any_open_tr);
          if (v7 == 1)
          {
            if (v8 >= 4)
            {
              v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
              if (v8)
              {
                v9 = *(v4 + 96);
                *buf = 136446978;
                v12 = "ring_manager.cpp";
                v13 = 1024;
                v14 = 627;
                v15 = 2082;
                v16 = "check_all_cr_close_requests";
                v17 = 1024;
                v18 = v9;
                _os_log_impl(&dword_23EC8B000, v5, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu has unmessaged lifecycle, setting closed", buf, 0x22u);
              }
            }

            if (ashp::detail::logging::get_log_level(v8))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu has unmessaged lifecycle, setting closed", "ring_manager.cpp", 627, "check_all_cr_close_requests", *(v4 + 96));
            }

            ashp::acipc::ring_manager::set_cr_closed(this, v4);
            ashp::acipc::ring_manager::recompute_closed_ring_availability(this);
          }

          else
          {
            if (v8 >= 4)
            {
              v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
              if (v8)
              {
                v10 = *(v4 + 96);
                *buf = 136446978;
                v12 = "ring_manager.cpp";
                v13 = 1024;
                v14 = 633;
                v15 = 2082;
                v16 = "check_all_cr_close_requests";
                v17 = 1024;
                v18 = v10;
                _os_log_impl(&dword_23EC8B000, v5, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending close message for crid %hu", buf, 0x22u);
              }
            }

            if (ashp::detail::logging::get_log_level(v8))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending close message for crid %hu", "ring_manager.cpp", 633, "check_all_cr_close_requests", *(v4 + 96));
            }

            *(v4 + 32) = 3;
            ashp::acipc::cr_controller::set_device_ring_status(*v4, 3);
            ashp::acipc::ring_manager::send_cr_close_message(this, v4);
          }
        }
      }

      v4 = *(v4 + 8);
    }

    while (v4);
  }
}

void ashp::acipc::ring_manager::send_tr_close_message(const os_unfair_lock *this, ashp::acipc::detail::ring_manager::tr_context *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  if (LOBYTE(this[8]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x497, "send_tr_close_message", v5);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 8) != 3)
  {
LABEL_11:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x498, "send_tr_close_message", v5);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v12 = 3;
  HIWORD(v12) = *(a2 + 48);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v7 = *(a2 + 48);
      *buf = 136446978;
      v14 = "ring_manager.cpp";
      v15 = 1024;
      v16 = 1192;
      v17 = 2082;
      v18 = "send_tr_close_message";
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sending close message for trid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sending close message for trid %hu", "ring_manager.cpp", 1192, "send_tr_close_message", *(a2 + 48));
      goto LABEL_9;
    }

LABEL_12:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_9:
  v11 = *&this[4]._os_unfair_lock_opaque;
  ashp::optional<ashp::acipc::messenger,void>::value(v11 + 4944, v8, v9, v10);
  ashp::acipc::messenger::send_message(v11 + 4944, &v12, 4, 0, 0, this, a2, ashp::acipc::ring_manager::tr_close_message_completed);
}

void ashp::acipc::ring_manager::tr_close_message_completed(os_unfair_lock_t lock, char *a2, int a3, uint64_t a4, const char *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[8]._os_unfair_lock_opaque)
  {
    goto LABEL_17;
  }

  if (*(a2 + 8) != 3)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x557, "tr_close_message_completed", a5);
    _os_crash();
    __break(1u);
LABEL_19:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_10;
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a2 + 48);
      *buf = 136447234;
      v12 = "ring_manager.cpp";
      v14 = 1368;
      v15 = 2082;
      v13 = 1024;
      v16 = "tr_close_message_completed";
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu close message result %u", buf, 0x28u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_11;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu close message result %u", "ring_manager.cpp", 1368, "tr_close_message_completed", *(a2 + 48), a3);
LABEL_11:
  switch(a3)
  {
    case 0:
      ashp::acipc::ring_manager::set_tr_closed(lock, a2);
      ashp::acipc::ring_manager::recompute_closed_ring_availability(lock);
      ashp::acipc::ring_manager::check_all_cr_close_requests(lock);
      break;
    case 1:
      goto LABEL_15;
    case 2:
      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x566, "tr_close_message_completed", v10);
      _os_crash();
      __break(1u);
LABEL_15:
      *(a2 + 8) = 4;
      ashp::acipc::tr_controller::set_device_ring_status(*a2, 4);
      break;
  }

LABEL_17:
  os_unfair_lock_unlock(lock);
}

void ashp::acipc::ring_manager::check_tr_settlement_tracking_for_tr(os_unfair_lock_s *this, ashp::acipc::detail::ring_manager::tr_context *a2)
{
  os_unfair_lock_assert_owner(this);
  if (ashp::acipc::ring_manager::finalize_tr_settlement_if_ready(this, a2))
  {

    ashp::acipc::ring_manager::recompute_closed_ring_availability(this);
  }
}

uint64_t ashp::optional<ashp::acipc::ring_manager::tr_open_parameters,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 80) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::ring_manager::set_tr_open(const os_unfair_lock *this, ashp::acipc::detail::ring_manager::tr_context *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v6 = *(a2 + 48);
      *buf = 136446978;
      v33 = "ring_manager.cpp";
      v34 = 1024;
      v35 = 516;
      v36 = 2082;
      v37 = "set_tr_open";
      v38 = 1024;
      v39 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting trid %hu open", buf, 0x22u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_7;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting trid %hu open", "ring_manager.cpp", 516, "set_tr_open", *(a2 + 48));
LABEL_7:
    if (*(a2 + 8) == 2)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x205, "set_tr_open", v10);
      _os_crash();
      __break(1u);
LABEL_25:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x208, "set_tr_open", v15);
      _os_crash();
      __break(1u);
      goto LABEL_26;
    }

    *(a2 + 8) = 2;
    v11 = *(a2 + 49);
    ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&this[10], v7, v8, v9);
    if (v11 >= LOWORD(this[10]._os_unfair_lock_opaque))
    {
      goto LABEL_25;
    }

    v16 = *a2;
    ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&this[10], v12, v13, v14);
    v17 = *&this[12]._os_unfair_lock_opaque;
    ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&this[10], v18, v19, v20);
    v21 = *&this[14]._os_unfair_lock_opaque;
    ashp::optional<ashp::acipc::index_array_signaler,void>::value(&this[18], v22, v23, v24);
    os_unfair_lock_lock((v16 + 16));
    if (*(v16 + 632))
    {
      break;
    }

LABEL_26:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x271, "set_indices", v25);
    _os_crash();
    __break(1u);
LABEL_27:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  ashp::acipc::ring_controller::set_indices(v16 + 648, v17 + 2 * v11, v21 + 2 * v11, &this[18], v11);
  os_unfair_lock_unlock((v16 + 16));
  v26 = *&this[130]._os_unfair_lock_opaque;
  if (v26)
  {
    v27 = MEMORY[0x277D86220];
    do
    {
      if (*(v26 + 32) >= 2u)
      {
        is_cr_completion_context_for_tr = ashp::acipc::ring_manager::is_cr_completion_context_for_tr(this, v26, a2);
        if (is_cr_completion_context_for_tr)
        {
          v29 = ashp::detail::logging::get_log_level(is_cr_completion_context_for_tr);
          if (v29 >= 4)
          {
            v29 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v29)
            {
              v30 = *(v26 + 96);
              v31 = *(a2 + 48);
              *buf = 136447234;
              v33 = "ring_manager.cpp";
              v34 = 1024;
              v35 = 529;
              v36 = 2082;
              v37 = "set_tr_open";
              v38 = 1024;
              v39 = v30;
              v40 = 1024;
              v41 = v31;
              _os_log_impl(&dword_23EC8B000, v27, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] associating crid %hu <-> trid %hu", buf, 0x28u);
            }
          }

          if (ashp::detail::logging::get_log_level(v29))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] associating crid %hu <-> trid %hu", "ring_manager.cpp", 529, "set_tr_open", *(v26 + 96), *(a2 + 48));
          }

          ashp::acipc::cr_controller::transfer_ring_opened(*v26, *a2);
        }
      }

      v26 = *(v26 + 8);
    }

    while (v26);
  }

  *(a2 + 40) = 1;
  ashp::acipc::tr_controller::set_device_ring_status(*a2, 2);
}

uint64_t ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 24) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

_WORD *ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::emplace<unsigned short,0>(_WORD *result, __int16 a2, uint64_t a3, const char *a4)
{
  *result = a2;
  if (a2 == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xA4, "emplace", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to initialize optional with sentinel value", "optional.hpp", 0xA4, "emplace", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

__int16 *ashp::optional<unsigned short,ashp::optional_sentinel<65535,false>>::value(__int16 *result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*result == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x77, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x77, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

{
  if (*result == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0x7D, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0x7D, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::ring_manager::tr_open_message_completed(os_unfair_lock_t lock, char *a2, int a3, uint64_t a4, const char *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[8]._os_unfair_lock_opaque)
  {
    goto LABEL_41;
  }

  if (*(a2 + 8) != 1)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x52B, "tr_open_message_completed", a5);
    _os_crash();
    __break(1u);
    goto LABEL_43;
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a2 + 48);
      *buf = 136447234;
      v20 = "ring_manager.cpp";
      v22 = 1324;
      v23 = 2082;
      v21 = 1024;
      v24 = "tr_open_message_completed";
      v25 = 1024;
      v26 = v9;
      v27 = 1024;
      v28 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu open message result %u", buf, 0x28u);
    }
  }

  v10 = ashp::detail::logging::get_log_level(log_level);
  if (v10)
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_10:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu open message result %u", "ring_manager.cpp", 1324, "tr_open_message_completed", *(a2 + 48), a3);
      goto LABEL_11;
    }

LABEL_43:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_10;
  }

LABEL_11:
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_41;
      }

      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x54B, "tr_open_message_completed", v11);
      v10 = _os_crash();
      __break(1u);
    }

    if (a2[39] == 1)
    {
      v12 = ashp::detail::logging::get_log_level(v10);
      if (v12 >= 4)
      {
        v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          v13 = *(a2 + 48);
          *buf = 136446978;
          v20 = "ring_manager.cpp";
          v21 = 1024;
          v22 = 1345;
          v23 = 2082;
          v24 = "tr_open_message_completed";
          v25 = 1024;
          v26 = v13;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping trid %hu", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v12))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stopping trid %hu", "ring_manager.cpp", 1345, "tr_open_message_completed", *(a2 + 48));
      }

      ashp::acipc::ring_manager::stop_tr(lock, a2, 0);
    }

    a2[38] = 0;
    ashp::acipc::ring_manager::set_tr_closed(lock, a2);
    ashp::acipc::ring_manager::recompute_closed_ring_availability(lock);
    ashp::acipc::ring_manager::check_all_cr_close_requests(lock);
  }

  else if (a2[38] == 1)
  {
    v14 = ashp::detail::logging::get_log_level(v10);
    if (v14 >= 4)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v15 = *(a2 + 48);
        *buf = 136446978;
        v20 = "ring_manager.cpp";
        v21 = 1024;
        v22 = 1330;
        v23 = 2082;
        v24 = "tr_open_message_completed";
        v25 = 1024;
        v26 = v15;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu close message requested", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v14))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu close message requested", "ring_manager.cpp", 1330, "tr_open_message_completed", *(a2 + 48));
    }

    a2[38] = 0;
    *(a2 + 8) = 3;
    ashp::acipc::tr_controller::set_device_ring_status(*a2, 3);
    ashp::acipc::ring_manager::send_tr_close_message(lock, a2);
  }

  else
  {
    ashp::acipc::ring_manager::set_tr_open(lock, a2);
    v17 = ashp::detail::logging::get_log_level(v16);
    if (v17 >= 4)
    {
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        v18 = *(a2 + 48);
        *buf = 136446978;
        v20 = "ring_manager.cpp";
        v21 = 1024;
        v22 = 1339;
        v23 = 2082;
        v24 = "tr_open_message_completed";
        v25 = 1024;
        v26 = v18;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] trid %hu set as open", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v17))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] trid %hu set as open", "ring_manager.cpp", 1339, "tr_open_message_completed", *(a2 + 48));
    }
  }

LABEL_41:
  os_unfair_lock_unlock(lock);
}

void ashp::acipc::ring_manager::close_tr(os_unfair_lock_t lock, ashp::acipc::tr_controller **a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (a2[115] != a2)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x13E, "close_tr", a5);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v8 = *(a2 + 508);
      *buf = 136446978;
      v12 = "ring_manager.cpp";
      v13 = 1024;
      v14 = 319;
      v15 = 2082;
      v16 = "close_tr";
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing trid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_9:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing trid %hu", "ring_manager.cpp", 319, "close_tr", *(a2 + 508));
      goto LABEL_10;
    }

LABEL_23:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_9;
  }

LABEL_10:
  v9 = ashp::acipc::ring_manager::request_tr_close(lock, (a2 + 115), 1);
  if (v9)
  {
    v10 = ashp::detail::logging::get_log_level(v9);
    if (v10 >= 4)
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        *buf = 136446722;
        v12 = "ring_manager.cpp";
        v13 = 1024;
        v14 = 323;
        v15 = 2082;
        v16 = "close_tr";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] availability change", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v10))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] availability change", "ring_manager.cpp", 323, "close_tr");
    }

    ashp::acipc::ring_manager::recompute_closed_ring_availability(lock);
  }

  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }
}

void sub_23ECA2DD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 64) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::ring_manager::set_cr_open(const os_unfair_lock *this, ashp::acipc::detail::ring_manager::cr_context *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v6 = *(a2 + 48);
      *buf = 136446978;
      v33 = "ring_manager.cpp";
      v34 = 1024;
      v35 = 574;
      v36 = 2082;
      v37 = "set_cr_open";
      v38 = 1024;
      v39 = v6;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting crid %hu open", buf, 0x22u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_7;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting crid %hu open", "ring_manager.cpp", 574, "set_cr_open", *(a2 + 48));
LABEL_7:
    if (*(a2 + 8) == 2)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x23F, "set_cr_open", v10);
      _os_crash();
      __break(1u);
LABEL_25:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x242, "set_cr_open", v15);
      _os_crash();
      __break(1u);
      goto LABEL_26;
    }

    *(a2 + 8) = 2;
    v11 = *(a2 + 49);
    ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&this[66], v7, v8, v9);
    if (v11 >= LOWORD(this[66]._os_unfair_lock_opaque))
    {
      goto LABEL_25;
    }

    v16 = *a2;
    ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&this[66], v12, v13, v14);
    v17 = *&this[68]._os_unfair_lock_opaque;
    ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&this[66], v18, v19, v20);
    v21 = *&this[70]._os_unfair_lock_opaque;
    ashp::optional<ashp::acipc::index_array_signaler,void>::value(&this[74], v22, v23, v24);
    os_unfair_lock_lock((v16 + 16));
    if (*(v16 + 505))
    {
      break;
    }

LABEL_26:
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "cr_controller.cpp", 0x203, "set_indices", v25);
    _os_crash();
    __break(1u);
LABEL_27:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  ashp::acipc::ring_controller::set_indices(v16 + 520, v17 + 2 * v11, v21 + 2 * v11, &this[74], v11);
  os_unfair_lock_unlock((v16 + 16));
  v26 = *&this[124]._os_unfair_lock_opaque;
  if (v26)
  {
    v27 = MEMORY[0x277D86220];
    do
    {
      if (*(v26 + 32) >= 2u)
      {
        is_cr_completion_context_for_tr = ashp::acipc::ring_manager::is_cr_completion_context_for_tr(this, a2, v26);
        if (is_cr_completion_context_for_tr)
        {
          v29 = ashp::detail::logging::get_log_level(is_cr_completion_context_for_tr);
          if (v29 >= 4)
          {
            v29 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v29)
            {
              v30 = *(a2 + 48);
              v31 = *(v26 + 96);
              *buf = 136447234;
              v33 = "ring_manager.cpp";
              v34 = 1024;
              v35 = 587;
              v36 = 2082;
              v37 = "set_cr_open";
              v38 = 1024;
              v39 = v30;
              v40 = 1024;
              v41 = v31;
              _os_log_impl(&dword_23EC8B000, v27, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] associating crid %hu <-> trid %hu", buf, 0x28u);
            }
          }

          if (ashp::detail::logging::get_log_level(v29))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] associating crid %hu <-> trid %hu", "ring_manager.cpp", 587, "set_cr_open", *(a2 + 48), *(v26 + 96));
          }

          ashp::acipc::cr_controller::transfer_ring_opened(*a2, *v26);
        }
      }

      v26 = *(v26 + 8);
    }

    while (v26);
  }

  ashp::acipc::cr_controller::set_device_ring_status(*a2, 2);
}

void ashp::acipc::ring_manager::cr_open_message_completed(os_unfair_lock_t lock, char *a2, int a3, uint64_t a4, const char *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[8]._os_unfair_lock_opaque)
  {
    goto LABEL_21;
  }

  if (*(a2 + 8) != 1)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x572, "cr_open_message_completed", a5);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(a2 + 48);
      *buf = 136447234;
      v12 = "ring_manager.cpp";
      v14 = 1395;
      v15 = 2082;
      v13 = 1024;
      v16 = "cr_open_message_completed";
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] crid %hu open message result %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_10:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] crid %hu open message result %u", "ring_manager.cpp", 1395, "cr_open_message_completed", *(a2 + 48), a3);
      goto LABEL_11;
    }

LABEL_23:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_10;
  }

LABEL_11:
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_21;
      }

      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x590, "cr_open_message_completed", v10);
      _os_crash();
      __break(1u);
    }

    if (a2[37] == 1)
    {
      ashp::acipc::ring_manager::stop_cr(lock, a2, 0);
    }

    a2[36] = 0;
    ashp::acipc::ring_manager::set_cr_closed(lock, a2);
    ashp::acipc::ring_manager::recompute_closed_ring_availability(lock);
  }

  else if (a2[36] == 1)
  {
    a2[36] = 0;
    *(a2 + 8) = 3;
    ashp::acipc::cr_controller::set_device_ring_status(*a2, 3);
    ashp::acipc::ring_manager::send_cr_close_message(lock, a2);
  }

  else
  {
    ashp::acipc::ring_manager::set_cr_open(lock, a2);
    ashp::acipc::ring_manager::recompute_closed_ring_availability(lock);
    ashp::acipc::ring_manager::check_all_cr_close_requests(lock);
  }

LABEL_21:
  os_unfair_lock_unlock(lock);
}

void ashp::acipc::ring_manager::close_cr(os_unfair_lock_t lock, ashp::acipc::cr_controller **a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (a2[93] != a2)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x1BC, "close_cr", a5);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  log_level = ashp::detail::logging::get_log_level(lock);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v8 = *(a2 + 420);
      *buf = 136446978;
      v12 = "ring_manager.cpp";
      v13 = 1024;
      v14 = 445;
      v15 = 2082;
      v16 = "close_cr";
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing crid %hu", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_9:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing crid %hu", "ring_manager.cpp", 445, "close_cr", *(a2 + 420));
      goto LABEL_10;
    }

LABEL_23:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_9;
  }

LABEL_10:
  v9 = ashp::acipc::ring_manager::request_cr_close(lock, a2 + 93, 1);
  if (v9)
  {
    v10 = ashp::detail::logging::get_log_level(v9);
    if (v10 >= 4)
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        *buf = 136446722;
        v12 = "ring_manager.cpp";
        v13 = 1024;
        v14 = 449;
        v15 = 2082;
        v16 = "close_cr";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] availability change", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v10))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] availability change", "ring_manager.cpp", 449, "close_cr");
    }

    ashp::acipc::ring_manager::recompute_closed_ring_availability(lock);
  }

  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }
}

void sub_23ECA3784(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::acipc::ring_manager::append_state_dump(os_unfair_lock_t lock, debug_info_capture *a2)
{
  v3 = lock;
  v536 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  os_unfair_lock_assert_owner(v3);
  *locka = xmmword_23ED06070;
  *&locka[16] = 0;
  *&locka[32] = 0;
  v532 = 0;
  *&locka[24] = 0;
  v8 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::size(*&v3[124]._os_unfair_lock_opaque, v4, v5, v6, v7);
  os_unfair_lock_lock(locka);
  *&locka[4] = v8;
  *&locka[16] = 258;
  v9 = v8;
  *&v10 = 0;
  *(&v10 + 1) = v8;
  if (!v8)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v527 = v10;
  v11 = 319 * v8;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0x1FFFFFFFFF8) + 8;
  }

  else
  {
    v12 = 319 * v8;
  }

  v13 = malloc_type_aligned_alloc(8uLL, v12, 0x1000040A43B1726uLL);
  v16 = v13;
  if (v13)
  {
    v10 = v527;
    do
    {
      if (v10 >= *(&v527 + 1))
      {
LABEL_461:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v15);
        _os_crash();
        __break(1u);
        goto LABEL_462;
      }

      v17 = &v13[319 * v10];
      *(v17 + 17) = 0uLL;
      *(v17 + 18) = 0uLL;
      *(v17 + 15) = 0uLL;
      *(v17 + 16) = 0uLL;
      *(v17 + 13) = 0uLL;
      *(v17 + 14) = 0uLL;
      *(v17 + 11) = 0uLL;
      *(v17 + 12) = 0uLL;
      *(v17 + 9) = 0uLL;
      *(v17 + 10) = 0uLL;
      *(v17 + 7) = 0uLL;
      *(v17 + 8) = 0uLL;
      *(v17 + 5) = 0uLL;
      *(v17 + 6) = 0uLL;
      *(v17 + 3) = 0uLL;
      *(v17 + 4) = 0uLL;
      *(v17 + 1) = 0uLL;
      *(v17 + 2) = 0uLL;
      *v17 = 0uLL;
      *(v17 + 303) = 0uLL;
      *&v10 = v10 + 1;
      --v9;
    }

    while (v9);
LABEL_13:
    v18 = *&locka[24];
    v19 = v532;
    j = locka;
    *&locka[24] = v10;
    v532 = v16;
    if (v18 && !v19)
    {
      goto LABEL_492;
    }

    if (v19)
    {
      free(v19);
    }

    v9 = __src;
    *&locka[8] = 0;
    os_unfair_lock_unlock(locka);
    for (i = *&v3[124]._os_unfair_lock_opaque; i; i = i[1])
    {
      memset(__src, 0, 319);
      ashp::acipc::ring_manager::update_debug_ring_state(v3, i, __src, 1);
      ashp::acipc::ring_manager::update_debug_client_overrides(v3, i, (&__src[7] + 15), 1, &__src[19] + 14);
      v21 = *i;
      if (*i)
      {
        BYTE14(__src[19]) |= 1u;
        os_unfair_lock_lock((v21 + 16));
        if (*(v21 + 1344) == 1)
        {
          BYTE14(__src[19]) |= 4u;
          ashp::optional<ashp::acipc::transfer_queue,void>::value(v21 + 1168, v22, v23, v24);
          WORD6(__src[13]) = *(v21 + 1184);
          *(&__src[14] + 2) = *(v21 + 1188);
          v27 = *(v21 + 1176);
          if (v27)
          {
            *(&__src[13] + 14) = *(v27 + 10);
          }

          v28 = 0;
          v29 = &__src[15];
          do
          {
            *(v29 - 3) = *ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](v21 + 1224, v28, v25, v26);
            *(v29 - 2) = *(ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](v21 + 1224, v28, v30, v31) + 2);
            *(v29 - 1) = *(ashp::static_array<ashp::acipc::transfer_queue::transfer_list,6ul>::operator[](v21 + 1224, v28, v32, v33) + 4);
            *v29 = *ashp::static_array<unsigned long long,6ul>::operator[](v21 + 1264, v28, v34, v35);
            v29 = (v29 + 14);
            ++v28;
          }

          while (v28 != 6);
        }

        os_unfair_lock_unlock((v21 + 16));
      }

      os_unfair_lock_lock(locka);
      if (*&locka[4])
      {
        v37 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::tr_context_debug_info>::operator[](*&locka[24], v532, *&locka[8], v36);
        memcpy(v37, __src, 0x13FuLL);
        if (*&locka[8] == -1)
        {
          v38 = *&locka[4];
        }

        else
        {
          v38 = 0;
        }

        *&locka[8] = (*&locka[8] + 1 - v38) % *&locka[4];
      }

      os_unfair_lock_unlock(locka);
    }

    os_unfair_lock_lock(locka);
    v41 = *&locka[4];
    if (!*&locka[4])
    {
      goto LABEL_34;
    }

    if (is_mul_ok(*&locka[24], 0x13FuLL))
    {
      v41 = 319 * *&locka[24];
      if (!((319 * *&locka[24]) >> 32))
      {
        goto LABEL_34;
      }
    }

    goto LABEL_480;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v14);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v513);
  _os_crash();
  __break(1u);
LABEL_480:
  ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v40);
  v41 = 0;
LABEL_34:
  v42 = (v41 + 16);
  if (v41 >= 0xFFFFFFF0)
  {
    goto LABEL_467;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v41 + 16, v39, v40))
  {
    v43 = (*a2 + *(a2 + 3));
    v43->i32[0] = *&locka[16];
    v44 = *&locka[4];
    v45 = *&locka[24];
    if (*&locka[4])
    {
      if (!is_mul_ok(*&locka[24], 0x13FuLL) || (v44 = 319 * *&locka[24], (319 * *&locka[24]) >> 32))
      {
LABEL_488:
        ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v40);
        v44 = 0;
        v45 = *&locka[24];
      }
    }

    v43->i32[1] = v44;
    v43[1] = vrev64_s32(*&locka[8]);
    if (v45)
    {
      v46 = 0;
      v47 = v43 + 2;
      v48 = 1;
      do
      {
        v49 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::tr_context_debug_info>::operator[](v45, v532, v46, v40);
        memcpy(v47 + 319 * v46, v49, 0x13FuLL);
        v46 = v48;
        v45 = *&locka[24];
        v50 = *&locka[24] > v48++;
      }

      while (v50);
    }
  }

  v51 = &v42[*(a2 + 3)];
  *(a2 + 3) = v51;
  if (HIDWORD(v51))
  {
    v501 = "advance_buffer_pointer";
    v502 = 108;
    v503 = "debug_infra.hpp";
    goto LABEL_469;
  }

  while (1)
  {
    os_unfair_lock_unlock(locka);
    os_unfair_lock_lock(locka);
    if (*&locka[24] && !v532)
    {
      goto LABEL_492;
    }

    *&locka[24] = 0;
    os_unfair_lock_unlock(locka);
    if (*&locka[24])
    {
      if (!v532)
      {
        goto LABEL_492;
      }
    }

    *&locka[24] = 0;
    if (v532)
    {
      free(v532);
    }

    os_unfair_lock_assert_owner(v3);
    *locka = xmmword_23ED06080;
    *&locka[16] = 0;
    *&locka[32] = 0;
    v532 = 0;
    *&locka[24] = 0;
    v56 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::size(*&v3[130]._os_unfair_lock_opaque, v52, v53, v54, v55);
    os_unfair_lock_lock(locka);
    *&locka[4] = v56;
    *&locka[16] = 259;
    v57 = v56;
    *&v58 = 0;
    *(&v58 + 1) = v56;
    if (v56)
    {
      v527 = v58;
      v59 = 221 * v56;
      if ((v59 & 7) != 0)
      {
        v60 = (v59 & 0xFFFFFFFFF8) + 8;
      }

      else
      {
        v60 = 221 * v56;
      }

      v61 = malloc_type_aligned_alloc(8uLL, v60, 0x10000409C9BC102uLL);
      v64 = v61;
      if (v61)
      {
        v58 = v527;
        while (v58 < *(&v527 + 1))
        {
          v65 = &v61[221 * v58];
          *(v65 + 205) = 0uLL;
          *(v65 + 11) = 0uLL;
          *(v65 + 12) = 0uLL;
          *(v65 + 9) = 0uLL;
          *(v65 + 10) = 0uLL;
          *(v65 + 7) = 0uLL;
          *(v65 + 8) = 0uLL;
          *(v65 + 5) = 0uLL;
          *(v65 + 6) = 0uLL;
          *(v65 + 3) = 0uLL;
          *(v65 + 4) = 0uLL;
          *(v65 + 1) = 0uLL;
          *(v65 + 2) = 0uLL;
          *v65 = 0uLL;
          *&v58 = v58 + 1;
          if (!--v57)
          {
            goto LABEL_59;
          }
        }

LABEL_462:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v63);
        _os_crash();
        __break(1u);
        goto LABEL_463;
      }

      v57 = "dynamic_array.hpp";
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v62);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v514);
      _os_crash();
      __break(1u);
LABEL_482:
      ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v83);
      v84 = 0;
      goto LABEL_74;
    }

    v64 = 0;
LABEL_59:
    v66 = *&locka[24];
    v67 = v532;
    *(j + 24) = v58;
    v532 = v64;
    if (v66 && !v67)
    {
      goto LABEL_492;
    }

    if (v67)
    {
      free(v67);
    }

    *&locka[8] = 0;
    os_unfair_lock_unlock(locka);
    v68 = *&v3[130]._os_unfair_lock_opaque;
    if (v68)
    {
      v57 = __src;
      do
      {
        *(v9 + 205) = 0u;
        memset(__src, 0, 208);
        BYTE12(__src[13]) = *v68 != 0;
        ashp::acipc::ring_manager::update_debug_ring_state(v3, v68, __src, 0);
        ashp::acipc::ring_manager::update_debug_client_overrides(v3, v68, (&__src[7] + 15), 0, &__src[13] + 12);
        os_unfair_lock_lock(locka);
        if (*&locka[4])
        {
          v70 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::cr_context_debug_info>::operator[](*&locka[24], v532, *&locka[8], v69);
          v71 = __src[1];
          *v70 = __src[0];
          v70[1] = v71;
          v72 = __src[2];
          v73 = __src[3];
          v74 = __src[5];
          v70[4] = __src[4];
          v70[5] = v74;
          v70[2] = v72;
          v70[3] = v73;
          v75 = __src[6];
          v76 = __src[7];
          v77 = __src[9];
          v70[8] = __src[8];
          v70[9] = v77;
          v70[6] = v75;
          v70[7] = v76;
          v78 = __src[10];
          v79 = __src[11];
          v80 = __src[12];
          *(v70 + 205) = *(v9 + 205);
          v70[11] = v79;
          v70[12] = v80;
          v70[10] = v78;
          if (*&locka[8] == -1)
          {
            v81 = *&locka[4];
          }

          else
          {
            v81 = 0;
          }

          *&locka[8] = (*&locka[8] + 1 - v81) % *&locka[4];
        }

        os_unfair_lock_unlock(locka);
        v68 = v68[1];
      }

      while (v68);
    }

    os_unfair_lock_lock(locka);
    v84 = *&locka[4];
    if (*&locka[4])
    {
      if (!is_mul_ok(*&locka[24], 0xDDuLL))
      {
        goto LABEL_482;
      }

      v84 = 221 * *&locka[24];
      if ((221 * *&locka[24]) >> 32)
      {
        goto LABEL_482;
      }
    }

LABEL_74:
    v85 = v84 + 16;
    if (v84 >= 0xFFFFFFF0)
    {
      v504 = "copy_debug_info";
      v505 = 77;
      v506 = "driver_debug_object.hpp";
LABEL_472:
      ashp::detail::control_flow::log_guard_else_failure(v506, v505, v504, v83);
      goto LABEL_83;
    }

    if (debug_info_capture::validate_buffer_bounds(a2, v84 + 16, v82, v83))
    {
      v9 = *a2 + *(a2 + 3);
      *v9 = *&locka[16];
      v86 = *&locka[4];
      v87 = *&locka[24];
      if (*&locka[4])
      {
        if (!is_mul_ok(*&locka[24], 0xDDuLL) || (v86 = 221 * *&locka[24], (221 * *&locka[24]) >> 32))
        {
          ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v83);
          v86 = 0;
          v87 = *&locka[24];
        }
      }

      *(v9 + 4) = v86;
      *(v9 + 8) = vrev64_s32(*&locka[8]);
      if (v87)
      {
        v88 = 0;
        v9 += 16;
        LODWORD(v57) = 1;
        do
        {
          v89 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::cr_context_debug_info>::operator[](v87, v532, v88, v83);
          v90 = (v9 + 221 * v88);
          v91 = v89[1];
          *v90 = *v89;
          v90[1] = v91;
          v92 = v89[2];
          v93 = v89[3];
          v94 = v89[5];
          v90[4] = v89[4];
          v90[5] = v94;
          v90[2] = v92;
          v90[3] = v93;
          v95 = v89[6];
          v96 = v89[7];
          v97 = v89[9];
          v90[8] = v89[8];
          v90[9] = v97;
          v90[6] = v95;
          v90[7] = v96;
          v98 = v89[10];
          v99 = v89[11];
          v100 = v89[12];
          *(v90 + 205) = *(v89 + 205);
          v90[11] = v99;
          v90[12] = v100;
          v90[10] = v98;
          v88 = v57;
          v87 = *&locka[24];
          v50 = *&locka[24] > v57;
          v57 = (v57 + 1);
        }

        while (v50);
      }
    }

    v101 = *(a2 + 3) + v85;
    *(a2 + 3) = v101;
    if (HIDWORD(v101))
    {
      v504 = "advance_buffer_pointer";
      v505 = 108;
      v506 = "debug_infra.hpp";
      goto LABEL_472;
    }

LABEL_83:
    os_unfair_lock_unlock(locka);
    os_unfair_lock_lock(locka);
    if (*&locka[24] && !v532)
    {
      goto LABEL_492;
    }

    *&locka[24] = 0;
    os_unfair_lock_unlock(locka);
    if (*&locka[24])
    {
      if (!v532)
      {
        goto LABEL_492;
      }
    }

    *&locka[24] = 0;
    if (v532)
    {
      free(v532);
    }

    os_unfair_lock_assert_owner(v3);
    v519 = v3;
    for (j = *&v3[124]._os_unfair_lock_opaque; j; j = *(j + 8))
    {
      v3 = *j;
      if (*j)
      {
        os_unfair_lock_lock(v3 + 4);
        if (LOBYTE(v3[94]._os_unfair_lock_opaque) == 1 && LOBYTE(v3[336]._os_unfair_lock_opaque) == 1)
        {
          v533 = 0uLL;
          v534 = 0;
          ashp::optional<ashp::acipc::transfer_queue,void>::value(&v3[292], v102, v103, v104);
          os_unfair_lock_opaque_low = LOWORD(v3[296]._os_unfair_lock_opaque);
          if (LOWORD(v3[296]._os_unfair_lock_opaque))
          {
            ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::set_capacity(&v533, os_unfair_lock_opaque_low, v105, v106, v107);
          }

          for (k = 0; ; ++k)
          {
            ashp::optional<ashp::acipc::transfer_queue,void>::value(&v3[292], os_unfair_lock_opaque_low, v105, v106);
            if (k >= LOWORD(v3[296]._os_unfair_lock_opaque))
            {
              break;
            }

            ashp::optional<ashp::acipc::transfer_queue,void>::value(&v3[292], v110, v111, v112);
            v116 = ashp::dynamic_array<ashp::acipc::transfer_queue::transfer>::operator[](&v3[300]._os_unfair_lock_opaque, k, v114, v115);
            v117 = *v116;
            *&__src[0] = *v116;
            DWORD2(__src[0]) = *(v116 + 8);
            *&__src[1] = *(v116 + 16);
            ashp::device_accessible_memory::retain_obj((__src + 8), v118, v119, v120, v121);
            *(&__src[1] + 8) = *(v116 + 24);
            *(&__src[2] + 2) = *(v116 + 34);
            BYTE8(__src[3]) = 0;
            if (*(v116 + 56) == 1)
            {
              DWORD1(__src[3]) = *(v116 + 52);
              v126 = 1;
              BYTE8(__src[3]) = 1;
              *(&__src[3] + 12) = *(v116 + 60);
              HIDWORD(__src[4]) = *(v116 + 76);
              if (*(&__src[4] + 1) != -1)
              {
                v126 = 0;
                memset(locka, 0, 32);
                v526 = WORD6(__src[2]);
                LOWORD(v527) = v3[292]._os_unfair_lock_opaque;
                v9 = BYTE13(__src[3]);
                v524 = BYTE4(__src[3]);
                v525 = BYTE12(__src[3]);
                v522 = v117;
                v523 = HIWORD(__src[3]);
                v57 = *(&__src[4] + 1);
                v521 = DWORD2(__src[2]);
              }

              BYTE8(__src[3]) = 0;
            }

            else
            {
              *(&__src[3] + 12) = *(v116 + 60);
              HIDWORD(__src[4]) = *(v116 + 76);
              if (*(&__src[4] + 1) == -1)
              {
                v126 = 1;
              }

              else
              {
                v126 = 0;
                memset(locka, 0, 32);
                v526 = WORD6(__src[2]);
                LOWORD(v527) = v3[292]._os_unfair_lock_opaque;
                v9 = BYTE13(__src[3]);
                v522 = v117;
                v523 = HIWORD(__src[3]);
                v524 = -1;
                v525 = BYTE12(__src[3]);
                v57 = *(&__src[4] + 1);
                v521 = DWORD2(__src[2]);
              }
            }

            ashp::device_accessible_memory::release_obj((__src + 8), v122, v123, v124, v125);
            if ((v126 & 1) == 0)
            {
              v128 = v533;
              v129 = v533 + 1;
              if (v533 == -1)
              {
                goto LABEL_459;
              }

              v130 = *(&v533 + 1);
              if (v129 > *(&v533 + 1))
              {
                if (*(&v533 + 1) <= 8uLL)
                {
                  os_unfair_lock_opaque_low = 8;
                }

                else
                {
                  os_unfair_lock_opaque_low = *(&v533 + 1);
                }

                if (v129 >= 9)
                {
                  do
                  {
                    if (is_mul_ok(os_unfair_lock_opaque_low, 3uLL))
                    {
                      os_unfair_lock_opaque_low = (3 * os_unfair_lock_opaque_low) >> 1;
                    }

                    else
                    {
                      os_unfair_lock_opaque_low = v533 + 1;
                    }
                  }

                  while (os_unfair_lock_opaque_low < v129);
                }

                if (*(&v533 + 1) < os_unfair_lock_opaque_low)
                {
                  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::set_capacity(&v533, os_unfair_lock_opaque_low, v105, v106, v127);
                  v130 = *(&v533 + 1);
                  v128 = v533;
                }
              }

              if (v128 >= v130)
              {
                goto LABEL_460;
              }

              if (!v534)
              {
                goto LABEL_492;
              }

              v131 = &v534[56 * v128];
              *v131 = v527;
              *(v131 + 1) = v526;
              v131[4] = v522;
              v131[5] = v9;
              v131[6] = v524;
              v131[7] = v525;
              v131[8] = v9;
              v131[9] = 0;
              *(v131 + 5) = v523;
              *(v131 + 3) = v521;
              *(v131 + 2) = v57;
              *(v131 + 24) = *locka;
              *(v131 + 40) = *&locka[16];
              *&v533 = v128 + 1;
            }
          }

          v132 = v533;
          if (v533)
          {
            __src[0] = xmmword_23ED06090;
            LODWORD(__src[1]) = 0;
            __src[2] = 0uLL;
            *(&__src[1] + 1) = 0;
            if (v533 >= 0xFFFFFFFF)
            {
              goto LABEL_466;
            }

            os_unfair_lock_lock(__src);
            DWORD1(__src[0]) = v132;
            LODWORD(__src[1]) = 260;
            *locka = 0;
            ashp::detail::dynamic_array::buffer<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::buffer(&locka[8], v132, v133, v134);
            v136 = *&locka[16];
            v137 = *&locka[8] - *locka;
            if (*&locka[8] < *locka)
            {
              v137 = 0;
            }

            v138 = 56 * *locka;
            v139 = *locka + 1;
            v140 = v132;
            while (v137)
            {
              if (!v136)
              {
                goto LABEL_492;
              }

              v141 = v136 + v138;
              *v141 = 0u;
              *(v141 + 16) = 0u;
              *(v141 + 32) = 0u;
              *locka = v139;
              v138 += 56;
              ++v139;
              --v137;
              *(v141 + 48) = 0;
              if (!--v140)
              {
                v142 = *locka;
                memset(locka, 0, 24);
                v143 = *(&__src[1] + 1);
                v144 = *(&__src[2] + 1);
                *(&__src[1] + 8) = v142;
                *(&__src[2] + 1) = v136;
                if (v143 && !v144)
                {
                  goto LABEL_492;
                }

                if (!v144)
                {
                  *locka = 0;
                  goto LABEL_139;
                }

                free(v144);
                if (*locka)
                {
                  if (!*&locka[16])
                  {
                    goto LABEL_492;
                  }
                }

                *locka = 0;
                if (*&locka[16])
                {
                  free(*&locka[16]);
                }

LABEL_139:
                DWORD2(__src[0]) = 0;
                os_unfair_lock_unlock(__src);
                v146 = 0;
                v145 = v534;
                v147 = 56 * v132;
                do
                {
                  os_unfair_lock_lock(__src);
                  if (DWORD1(__src[0]))
                  {
                    v149 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::operator[](*(&__src[1] + 1), *(&__src[2] + 1), DWORD2(__src[0]), v148);
                    v150 = *&v145[v146];
                    v151 = *&v145[v146 + 16];
                    v152 = *&v145[v146 + 32];
                    *(v149 + 48) = *&v145[v146 + 48];
                    *(v149 + 16) = v151;
                    *(v149 + 32) = v152;
                    *v149 = v150;
                    if (DWORD2(__src[0]) == -1)
                    {
                      v153 = DWORD1(__src[0]);
                    }

                    else
                    {
                      v153 = 0;
                    }

                    DWORD2(__src[0]) = (DWORD2(__src[0]) + 1 - v153) % DWORD1(__src[0]);
                  }

                  os_unfair_lock_unlock(__src);
                  v146 += 56;
                }

                while (v147 != v146);
                os_unfair_lock_lock(__src);
                v156 = DWORD1(__src[0]);
                if (DWORD1(__src[0]))
                {
                  if (!is_mul_ok(*(&__src[1] + 1), 0x38uLL) || (v156 = 56 * DWORD2(__src[1]), (56 * *(&__src[1] + 1)) >> 32))
                  {
                    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v155);
                    v156 = 0;
                  }
                }

                if (v156 >= 0xFFFFFFF0)
                {
                  v169 = 77;
                  v170 = "driver_debug_object.hpp";
                  v171 = "copy_debug_info";
                }

                else
                {
                  v518 = v156 + 16;
                  if (debug_info_capture::validate_buffer_bounds(a2, v518, v154, v155))
                  {
                    v157 = (*a2 + *(a2 + 3));
                    v157->i32[0] = __src[1];
                    v158 = DWORD1(__src[0]);
                    v159 = *(&__src[1] + 1);
                    if (DWORD1(__src[0]))
                    {
                      if (!is_mul_ok(*(&__src[1] + 1), 0x38uLL) || (v158 = 56 * DWORD2(__src[1]), (56 * *(&__src[1] + 1)) >> 32))
                      {
                        ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v155);
                        v158 = 0;
                        v159 = *(&__src[1] + 1);
                      }
                    }

                    v157->i32[1] = v158;
                    v157[1] = vrev64_s32(*(__src + 8));
                    if (v159)
                    {
                      v160 = 0;
                      v161 = v157 + 2;
                      v162 = 1;
                      do
                      {
                        v163 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_pending_transfer_debug_info>::operator[](v159, *(&__src[2] + 1), v160, v155);
                        v164 = &v161[7 * v160];
                        v165 = *(v163 + 48);
                        v166 = *v163;
                        v167 = *(v163 + 32);
                        *v164[2].i8 = *(v163 + 16);
                        *v164[4].i8 = v167;
                        *v164->i8 = v166;
                        v164[6] = v165;
                        v160 = v162;
                        v159 = *(&__src[1] + 1);
                        v50 = *(&__src[1] + 1) > v162++;
                      }

                      while (v50);
                    }
                  }

                  v168 = *(a2 + 3) + v518;
                  *(a2 + 3) = v168;
                  if (!HIDWORD(v168))
                  {
LABEL_158:
                    os_unfair_lock_unlock(__src);
                    os_unfair_lock_lock(__src);
                    if (!*(&__src[1] + 1) || *(&__src[2] + 1))
                    {
                      *(&__src[1] + 1) = 0;
                      os_unfair_lock_unlock(__src);
                      if (!*(&__src[1] + 1) || *(&__src[2] + 1))
                      {
                        *(&__src[1] + 1) = 0;
                        if (*(&__src[2] + 1))
                        {
                          free(*(&__src[2] + 1));
                        }

                        if (v145)
                        {
LABEL_165:
                          free(v145);
                          goto LABEL_166;
                        }
                      }
                    }

LABEL_492:
                    __break(1u);
                    return;
                  }

                  v169 = 108;
                  v170 = "debug_infra.hpp";
                  v171 = "advance_buffer_pointer";
                }

                ashp::detail::control_flow::log_guard_else_failure(v170, v169, v171, v155);
                goto LABEL_158;
              }
            }

            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v135);
            _os_crash();
            __break(1u);
LABEL_459:
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v106);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v500);
            _os_crash();
            __break(1u);
LABEL_460:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v127);
            _os_crash();
            __break(1u);
            goto LABEL_461;
          }

          v145 = v534;
          if (v534)
          {
            goto LABEL_165;
          }
        }

LABEL_166:
        os_unfair_lock_unlock(v3 + 4);
      }
    }

    os_unfair_lock_assert_owner(v519);
    v172 = *&v519[124]._os_unfair_lock_opaque;
    if (v172)
    {
      j = "debug_infra.hpp";
      while (1)
      {
        v173 = *v172;
        if (*v172)
        {
          break;
        }

LABEL_186:
        v172 = v172[1];
        if (!v172)
        {
          goto LABEL_191;
        }
      }

      os_unfair_lock_lock((v173 + 16));
      if (!*(v173 + 378))
      {
LABEL_185:
        os_unfair_lock_unlock((v173 + 16));
        goto LABEL_186;
      }

      os_unfair_lock_lock((v173 + 1464));
      debug_object_alloc_size = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_consumed_transfer_debug_info>::get_debug_object_alloc_size(v173 + 1464, v174, v175, v176);
      v180 = debug_object_alloc_size + 16;
      if (debug_object_alloc_size >= 0xFFFFFFF0)
      {
        v192 = 77;
        v193 = "driver_debug_object.hpp";
        v194 = "copy_debug_info";
      }

      else
      {
        if (debug_info_capture::validate_buffer_bounds(a2, v180, v178, v179))
        {
          v183 = (*a2 + *(a2 + 3));
          v183->i32[0] = *(v173 + 1480);
          v183->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_consumed_transfer_debug_info>::get_debug_object_alloc_size(v173 + 1464, v181, v182, v179);
          v183[1] = vrev64_s32(*(v173 + 1472));
          if (*(v173 + 1488))
          {
            v185 = 0;
            v186 = v183 + 2;
            v187 = 1;
            do
            {
              v188 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_consumed_transfer_debug_info>::operator[]((v173 + 1488), v185, v184, v179);
              v189 = (v186 + 14 * v185);
              v190 = *v188;
              *(v189 + 6) = *(v188 + 6);
              *v189 = v190;
              v185 = v187;
              v50 = *(v173 + 1488) > v187++;
            }

            while (v50);
          }
        }

        v191 = *(a2 + 3) + v180;
        *(a2 + 3) = v191;
        if (!HIDWORD(v191))
        {
          goto LABEL_184;
        }

        v192 = 108;
        v193 = "debug_infra.hpp";
        v194 = "advance_buffer_pointer";
      }

      ashp::detail::control_flow::log_guard_else_failure(v193, v192, v194, v179);
LABEL_184:
      os_unfair_lock_unlock((v173 + 1464));
      goto LABEL_185;
    }

LABEL_191:
    v3 = v519;
    os_unfair_lock_assert_owner(v519);
    if (LOBYTE(v519[16]._os_unfair_lock_opaque) == 1)
    {
      __src[0] = xmmword_23ED060A0;
      LODWORD(__src[1]) = 0;
      __src[2] = 0uLL;
      *(&__src[1] + 1) = 0;
      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[10], v195, v196, v197);
      ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::set_debug_object_capacity_and_type(__src, LOWORD(v519[10]._os_unfair_lock_opaque), 0x107u);
      for (m = 0; ; ++m)
      {
        ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[10], v198, v199, v200);
        if (m >= LOWORD(v519[10]._os_unfair_lock_opaque))
        {
          break;
        }

        memset(&locka[2], 0, 18);
        ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[10], v202, v203, v204);
        *locka = *(*&v519[12]._os_unfair_lock_opaque + 2 * m);
        ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[10], v205, v206, v207);
        *&locka[2] = *(*&v519[14]._os_unfair_lock_opaque + 2 * m);
        os_unfair_lock_assert_owner(v519);
        v210 = *&v519[124]._os_unfair_lock_opaque;
        if (v210)
        {
          while (1)
          {
            v211 = *v210;
            if (*v210)
            {
              if (*(v210 + 49) == m)
              {
                break;
              }
            }

            v210 = v210[1];
            if (!v210)
            {
              goto LABEL_200;
            }
          }

          os_unfair_lock_lock((v211 + 16));
          v212 = *(v211 + 760);
          os_unfair_lock_unlock((v211 + 16));
          *&locka[4] = v212;
          v213 = *v210;
          os_unfair_lock_lock((v213 + 16));
          v214 = *(v213 + 768);
          os_unfair_lock_unlock((v213 + 16));
          *&locka[12] = v214;
        }

LABEL_200:
        ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::append_record(__src, locka, v208, v209);
      }

      ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::copy_debug_info(__src, a2, v203, v204);
      ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::clear(__src);
      if (*(&__src[1] + 1) && !*(&__src[2] + 1))
      {
        goto LABEL_492;
      }

      *(&__src[1] + 1) = 0;
      if (*(&__src[2] + 1))
      {
        free(*(&__src[2] + 1));
      }
    }

    os_unfair_lock_assert_owner(v519);
    __src[0] = xmmword_23ED060B0;
    LODWORD(__src[1]) = 0;
    __src[2] = 0uLL;
    *(&__src[1] + 1) = 0;
    v219 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::size(*&v519[124]._os_unfair_lock_opaque, v215, v216, v217, v218);
    os_unfair_lock_lock(__src);
    DWORD1(__src[0]) = v219;
    LODWORD(__src[1]) = 270;
    v9 = v219;
    *&v220 = 0;
    *(&v220 + 1) = v219;
    if (v219)
    {
      v527 = v220;
      if (((18 * v219) & 6) != 0)
      {
        v221 = ((18 * v219) & 0x1FFFFFFFF8) + 8;
      }

      else
      {
        v221 = 18 * v219;
      }

      v222 = malloc_type_aligned_alloc(8uLL, v221, 0x1000040B88D2812uLL);
      v225 = v222;
      if (v222)
      {
        v220 = v527;
        while (v220 < *(&v527 + 1))
        {
          v226 = &v222[18 * v220];
          *v226 = 0;
          *(v226 + 1) = 0;
          *(v226 + 8) = 0;
          *&v220 = v220 + 1;
          if (!--v9)
          {
            goto LABEL_215;
          }
        }

LABEL_463:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v224);
        _os_crash();
        __break(1u);
        goto LABEL_464;
      }

      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v223);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v515);
      _os_crash();
      __break(1u);
LABEL_484:
      ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v248);
      v249 = 0;
      goto LABEL_236;
    }

    v225 = 0;
LABEL_215:
    v227 = *(&__src[1] + 1);
    v228 = *(&__src[2] + 1);
    *(&__src[1] + 8) = v220;
    *(&__src[2] + 1) = v225;
    if (v227 && !v228)
    {
      goto LABEL_492;
    }

    if (v228)
    {
      free(v228);
    }

    DWORD2(__src[0]) = 0;
    os_unfair_lock_unlock(__src);
    for (n = *&v519[124]._os_unfair_lock_opaque; n; n = n[1])
    {
      v230 = *n;
      if (*n)
      {
        *&locka[8] = 0;
        *locka = 0;
        v231 = (v230 + 16);
        os_unfair_lock_lock((v230 + 16));
        if ((*(v230 + 665) & 1) != 0 && *(v230 + 289) == 1 && *(v230 + 1530) == 1)
        {
          ashp::optional<ashp::acipc::transfer_comp_info,void>::value(v230 + 1512, v232, v233, v234);
          v235 = *(v230 + 1512);
          ashp::optional<ashp::acipc::transfer_comp_info,void>::value(v230 + 1512, v236, v237, v238);
          v239 = *(v230 + 1514);
          ashp::optional<ashp::acipc::transfer_comp_info,void>::value(v230 + 1512, v240, v241, v242);
          *locka = *(v230 + 1518);
          *&locka[8] = *(v230 + 1526);
          v243 = 1;
        }

        else
        {
          v235 = 0;
          v239 = 0;
          v243 = 0;
        }

        os_unfair_lock_unlock(v231);
        os_unfair_lock_lock(__src);
        if (DWORD1(__src[0]))
        {
          v245 = ashp::dynamic_array<ashp::acipc::transfer_comp_info>::operator[](*(&__src[1] + 1), *(&__src[2] + 1), DWORD2(__src[0]), v244);
          *v245 = v235;
          *(v245 + 2) = v239;
          *(v245 + 4) = 0;
          *(v245 + 5) = v243;
          *(v245 + 6) = *locka;
          *(v245 + 14) = *&locka[8];
          if (DWORD2(__src[0]) == -1)
          {
            v246 = DWORD1(__src[0]);
          }

          else
          {
            v246 = 0;
          }

          DWORD2(__src[0]) = (DWORD2(__src[0]) + 1 - v246) % DWORD1(__src[0]);
        }

        os_unfair_lock_unlock(__src);
      }
    }

    os_unfair_lock_lock(__src);
    v249 = DWORD1(__src[0]);
    if (DWORD1(__src[0]))
    {
      if (!is_mul_ok(*(&__src[1] + 1), 0x12uLL))
      {
        goto LABEL_484;
      }

      v249 = 18 * DWORD2(__src[1]);
      if ((18 * *(&__src[1] + 1)) >> 32)
      {
        goto LABEL_484;
      }
    }

LABEL_236:
    v250 = v249 + 16;
    if (v249 >= 0xFFFFFFF0)
    {
      v507 = "copy_debug_info";
      v508 = 77;
      v509 = "driver_debug_object.hpp";
LABEL_475:
      ashp::detail::control_flow::log_guard_else_failure(v509, v508, v507, v248);
      goto LABEL_245;
    }

    if (debug_info_capture::validate_buffer_bounds(a2, v249 + 16, v247, v248))
    {
      v251 = (*a2 + *(a2 + 3));
      v251->i32[0] = __src[1];
      v252 = DWORD1(__src[0]);
      v253 = *(&__src[1] + 1);
      if (DWORD1(__src[0]))
      {
        if (!is_mul_ok(*(&__src[1] + 1), 0x12uLL) || (v252 = 18 * DWORD2(__src[1]), (18 * *(&__src[1] + 1)) >> 32))
        {
          ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v248);
          v252 = 0;
          v253 = *(&__src[1] + 1);
        }
      }

      v251->i32[1] = v252;
      v251[1] = vrev64_s32(*(__src + 8));
      if (v253)
      {
        v254 = 0;
        v255 = v251 + 2;
        v256 = 1;
        do
        {
          v257 = ashp::dynamic_array<ashp::acipc::transfer_comp_info>::operator[](v253, *(&__src[2] + 1), v254, v248);
          v258 = v255 + 18 * v254;
          v259 = *v257;
          *(v258 + 8) = *(v257 + 16);
          *v258 = v259;
          v254 = v256;
          v253 = *(&__src[1] + 1);
          v50 = *(&__src[1] + 1) > v256++;
        }

        while (v50);
      }
    }

    v260 = *(a2 + 3) + v250;
    *(a2 + 3) = v260;
    if (HIDWORD(v260))
    {
      v507 = "advance_buffer_pointer";
      v508 = 108;
      v509 = "debug_infra.hpp";
      goto LABEL_475;
    }

LABEL_245:
    os_unfair_lock_unlock(__src);
    os_unfair_lock_lock(__src);
    if (*(&__src[1] + 1) && !*(&__src[2] + 1))
    {
      goto LABEL_492;
    }

    *(&__src[1] + 1) = 0;
    os_unfair_lock_unlock(__src);
    if (*(&__src[1] + 1))
    {
      if (!*(&__src[2] + 1))
      {
        goto LABEL_492;
      }
    }

    *(&__src[1] + 1) = 0;
    if (*(&__src[2] + 1))
    {
      free(*(&__src[2] + 1));
    }

    os_unfair_lock_assert_owner(v519);
    v261 = *&v519[124]._os_unfair_lock_opaque;
    if (v261)
    {
      while (1)
      {
        j = *v261;
        if (*v261)
        {
          break;
        }

LABEL_262:
        v261 = v261[1];
        if (!v261)
        {
          goto LABEL_267;
        }
      }

      os_unfair_lock_lock((j + 16));
      if (*(j + 665) == 1)
      {
        os_unfair_lock_lock((j + 1536));
        v265 = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(j + 1536, v262, v263, v264);
        v268 = v265 + 16;
        if (v265 >= 0xFFFFFFF0)
        {
          v277 = 77;
          v278 = "driver_debug_object.hpp";
          v279 = "copy_debug_info";
        }

        else
        {
          if (debug_info_capture::validate_buffer_bounds(a2, v268, v266, v267))
          {
            v271 = (*a2 + *(a2 + 3));
            v271->i32[0] = *(j + 1552);
            v271->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(j + 1536, v269, v270, v267);
            v271[1] = vrev64_s32(*(j + 1544));
            if (*(j + 1560))
            {
              v273 = 0;
              v274 = v271 + 2;
              v275 = 1;
              do
              {
                *v274[2 * v273].i8 = *ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[]((j + 1560), v273, v272, v267);
                v273 = v275;
                v50 = *(j + 1560) > v275++;
              }

              while (v50);
            }
          }

          v276 = *(a2 + 3) + v268;
          *(a2 + 3) = v276;
          if (!HIDWORD(v276))
          {
LABEL_260:
            os_unfair_lock_unlock((j + 1536));
            goto LABEL_261;
          }

          v277 = 108;
          v278 = "debug_infra.hpp";
          v279 = "advance_buffer_pointer";
        }

        ashp::detail::control_flow::log_guard_else_failure(v278, v277, v279, v267);
        goto LABEL_260;
      }

LABEL_261:
      os_unfair_lock_unlock((j + 16));
      goto LABEL_262;
    }

LABEL_267:
    v3 = v519;
    os_unfair_lock_assert_owner(v519);
    if (LOBYTE(v519[72]._os_unfair_lock_opaque) == 1)
    {
      __src[0] = xmmword_23ED060A0;
      LODWORD(__src[1]) = 0;
      __src[2] = 0uLL;
      *(&__src[1] + 1) = 0;
      ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[66], v280, v281, v282);
      ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::set_debug_object_capacity_and_type(__src, LOWORD(v519[66]._os_unfair_lock_opaque), 0x108u);
      for (ii = 0; ; ++ii)
      {
        ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[66], v283, v284, v285);
        if (ii >= LOWORD(v519[66]._os_unfair_lock_opaque))
        {
          break;
        }

        memset(locka, 0, 20);
        ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[66], v287, v288, v289);
        *&locka[2] = *(*&v519[70]._os_unfair_lock_opaque + 2 * ii);
        ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(&v519[66], v290, v291, v292);
        *locka = *(*&v519[68]._os_unfair_lock_opaque + 2 * ii);
        os_unfair_lock_assert_owner(v519);
        v295 = *&v519[130]._os_unfair_lock_opaque;
        if (v295)
        {
          while (1)
          {
            v296 = *v295;
            if (*v295)
            {
              if (*(v295 + 49) == ii)
              {
                break;
              }
            }

            v295 = v295[1];
            if (!v295)
            {
              goto LABEL_276;
            }
          }

          os_unfair_lock_lock((v296 + 16));
          v297 = *(v296 + 632);
          os_unfair_lock_unlock((v296 + 16));
          *&locka[4] = v297;
          v298 = *v295;
          os_unfair_lock_lock((v298 + 16));
          v299 = *(v298 + 640);
          os_unfair_lock_unlock((v298 + 16));
          *&locka[12] = v299;
        }

LABEL_276:
        ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::append_record(__src, locka, v293, v294);
      }

      ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::copy_debug_info(__src, a2, v288, v289);
      ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::clear(__src);
      if (*(&__src[1] + 1) && !*(&__src[2] + 1))
      {
        goto LABEL_492;
      }

      *(&__src[1] + 1) = 0;
      if (*(&__src[2] + 1))
      {
        free(*(&__src[2] + 1));
      }
    }

    os_unfair_lock_assert_owner(v519);
    __src[0] = xmmword_23ED060C0;
    LODWORD(__src[1]) = 0;
    __src[2] = 0uLL;
    *(&__src[1] + 1) = 0;
    v304 = ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::size(*&v519[130]._os_unfair_lock_opaque, v300, v301, v302, v303);
    os_unfair_lock_lock(__src);
    DWORD1(__src[0]) = v304;
    LODWORD(__src[1]) = 265;
    v9 = v304;
    *&v305 = 0;
    *(&v305 + 1) = v304;
    if (!v304)
    {
      break;
    }

    v527 = v305;
    v306 = malloc_type_aligned_alloc(8uLL, 48 * v304, 0x1000040EED21634uLL);
    v309 = v306;
    if (!v306)
    {
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v307);
      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v516);
      _os_crash();
      __break(1u);
LABEL_486:
      ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v347);
      v348 = 0;
      goto LABEL_322;
    }

    v305 = v527;
    while (v305 < *(&v527 + 1))
    {
      v310 = &v306[48 * v305];
      *(v310 + 1) = 0uLL;
      *(v310 + 2) = 0uLL;
      *v310 = 0uLL;
      *&v305 = v305 + 1;
      if (!--v9)
      {
        goto LABEL_288;
      }
    }

LABEL_464:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v308);
    _os_crash();
    __break(1u);
LABEL_465:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v384);
    _os_crash();
    __break(1u);
LABEL_466:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "tr_controller.cpp", 0x483, "append_outstanding_transfer_state", v113);
    _os_crash();
    __break(1u);
LABEL_467:
    v501 = "copy_debug_info";
    v502 = 77;
    v503 = "driver_debug_object.hpp";
LABEL_469:
    ashp::detail::control_flow::log_guard_else_failure(v503, v502, v501, v40);
  }

  v309 = 0;
LABEL_288:
  v311 = *(&__src[1] + 1);
  v312 = *(&__src[2] + 1);
  *(&__src[1] + 8) = v305;
  *(&__src[2] + 1) = v309;
  if (v311 && !v312)
  {
    goto LABEL_492;
  }

  if (v312)
  {
    free(v312);
  }

  DWORD2(__src[0]) = 0;
  os_unfair_lock_unlock(__src);
  v313 = *&v519[130]._os_unfair_lock_opaque;
  if (v313)
  {
    while (2)
    {
      v314 = *v313;
      if (*v313)
      {
        v533 = 0uLL;
        j = v314 + 16;
        v535 = 0uLL;
        os_unfair_lock_lock((v314 + 16));
        if (*(v314 + 32) == 1)
        {
          log_level = ashp::detail::logging::get_log_level(v315);
          if (log_level >= 3)
          {
            log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (log_level)
            {
              v320 = *(v314 + 208);
              *locka = 136446978;
              *&locka[4] = "cr_controller.cpp";
              *&locka[12] = 1024;
              *&locka[14] = 1003;
              *&locka[18] = 2082;
              *&locka[20] = "update_completion_desc_debug_info";
              *&locka[28] = 1024;
              *&locka[30] = v320;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (crid %hu) cr terminated", locka, 0x22u);
            }
          }

          if (ashp::detail::logging::get_log_level(log_level))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (crid %hu) cr terminated", "cr_controller.cpp", 1003, "update_completion_desc_debug_info", *(v314 + 208));
          }

          v321 = 0;
          v322 = 0;
          v323 = 0;
          goto LABEL_311;
        }

        if (*(v314 + 960) != 1)
        {
          goto LABEL_307;
        }

        ashp::optional<ashp::acipc::tr_ring,void>::value(v314 + 928, v316, v317, v318);
        v324 = *(v314 + 936);
        if (((*(v314 + 938) - *(v314 + 940)) & 0xFFFF0000) == 0)
        {
          v324 = 0;
        }

        if (v324 != (*(v314 + 940) - *(v314 + 938)))
        {
          ashp::optional<ashp::acipc::tr_ring,void>::value(v314 + 928, v316, v317, v318);
          ashp::optional<ashp::acipc::tr_ring,void>::value(v314 + 928, v325, v326, v327);
          ashp::acipc::cr_ring::copy_descriptor((v314 + 928), *(v314 + 940), locka, &v529, &v528);
          v321 = *(v314 + 208);
          ashp::optional<ashp::acipc::tr_ring,void>::value(v314 + 928, v328, v329, v330);
          v322 = *(v314 + 940);
          v533 = *locka;
          v323 = 1;
        }

        else
        {
LABEL_307:
          v321 = 0;
          v322 = 0;
          v323 = 0;
        }

        if (*(v314 + 1233) == 1)
        {
          v331 = ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v314 + 1209, v316, v317, v318);
          v332 = *v331;
          v336 = ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v331, v333, v334, v335);
          v337 = *(v336 + 2);
          ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v336, v338, v339, v340);
          v535 = *(v314 + 1217);
          v341 = 1;
          v342 = 1;
        }

        else
        {
LABEL_311:
          v332 = 0;
          v337 = 0;
          v341 = 0;
          v342 = 0;
        }

        os_unfair_lock_unlock(j);
        os_unfair_lock_lock(__src);
        if (DWORD1(__src[0]))
        {
          v344 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::completion_desc_debug_info>::operator[](*(&__src[1] + 1), *(&__src[2] + 1), DWORD2(__src[0]), v343);
          *v344 = v321;
          *(v344 + 2) = v322;
          *(v344 + 4) = 0;
          *(v344 + 6) = 0;
          *(v344 + 7) = v323;
          *(v344 + 8) = v533;
          *(v344 + 24) = v332;
          *(v344 + 26) = v337;
          *(v344 + 28) = v341;
          *(v344 + 30) = 0;
          *(v344 + 31) = v342;
          *(v344 + 32) = v535;
          if (DWORD2(__src[0]) == -1)
          {
            v345 = DWORD1(__src[0]);
          }

          else
          {
            v345 = 0;
          }

          DWORD2(__src[0]) = (DWORD2(__src[0]) + 1 - v345) % DWORD1(__src[0]);
        }

        os_unfair_lock_unlock(__src);
      }

      v313 = v313[1];
      if (!v313)
      {
        break;
      }

      continue;
    }
  }

  os_unfair_lock_lock(__src);
  v348 = DWORD1(__src[0]);
  if (DWORD1(__src[0]))
  {
    if (!is_mul_ok(*(&__src[1] + 1), 0x30uLL))
    {
      goto LABEL_486;
    }

    v348 = 48 * DWORD2(__src[1]);
    if ((48 * *(&__src[1] + 1)) >> 32)
    {
      goto LABEL_486;
    }
  }

LABEL_322:
  v349 = v348 + 16;
  if (v348 >= 0xFFFFFFF0)
  {
    v510 = "copy_debug_info";
    v511 = 77;
    v512 = "driver_debug_object.hpp";
    v350 = v519;
LABEL_478:
    ashp::detail::control_flow::log_guard_else_failure(v512, v511, v510, v347);
    goto LABEL_331;
  }

  v350 = v519;
  if (debug_info_capture::validate_buffer_bounds(a2, v348 + 16, v346, v347))
  {
    v351 = (*a2 + *(a2 + 3));
    v351->i32[0] = __src[1];
    v352 = DWORD1(__src[0]);
    v353 = *(&__src[1] + 1);
    if (DWORD1(__src[0]))
    {
      if (!is_mul_ok(*(&__src[1] + 1), 0x30uLL) || (v352 = 48 * DWORD2(__src[1]), (48 * *(&__src[1] + 1)) >> 32))
      {
        ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v347);
        v352 = 0;
        v353 = *(&__src[1] + 1);
      }
    }

    v351->i32[1] = v352;
    v351[1] = vrev64_s32(*(__src + 8));
    if (v353)
    {
      v354 = 0;
      v355 = v351 + 2;
      v356 = 1;
      do
      {
        v357 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::completion_desc_debug_info>::operator[](v353, *(&__src[2] + 1), v354, v347);
        v358 = &v355[6 * v354];
        v359 = *v357;
        v360 = v357[2];
        *v358[2].i8 = v357[1];
        *v358[4].i8 = v360;
        *v358->i8 = v359;
        v354 = v356;
        v353 = *(&__src[1] + 1);
        v50 = *(&__src[1] + 1) > v356++;
      }

      while (v50);
    }
  }

  v361 = *(a2 + 3) + v349;
  *(a2 + 3) = v361;
  if (HIDWORD(v361))
  {
    v510 = "advance_buffer_pointer";
    v511 = 108;
    v512 = "debug_infra.hpp";
    goto LABEL_478;
  }

LABEL_331:
  os_unfair_lock_unlock(__src);
  os_unfair_lock_lock(__src);
  if (*(&__src[1] + 1) && !*(&__src[2] + 1))
  {
    goto LABEL_492;
  }

  *(&__src[1] + 1) = 0;
  os_unfair_lock_unlock(__src);
  if (*(&__src[1] + 1))
  {
    if (!*(&__src[2] + 1))
    {
      goto LABEL_492;
    }
  }

  *(&__src[1] + 1) = 0;
  if (*(&__src[2] + 1))
  {
    free(*(&__src[2] + 1));
  }

  os_unfair_lock_assert_owner(v350);
  v362 = *&v350[124]._os_unfair_lock_opaque;
  if (v362)
  {
    v3 = __src;
    LOWORD(v527) = 0;
    while (1)
    {
      v9 = *v362;
      if (*v362)
      {
        break;
      }

LABEL_393:
      v362 = v362[1];
      if (!v362)
      {
        goto LABEL_400;
      }
    }

    os_unfair_lock_lock((v9 + 16));
    if ((*(v9 + 665) & 1) != 0 && *(v9 + 1160) == 1)
    {
      ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v363, v364, v365);
      v369 = *(v9 + 1136);
      if (((*(v9 + 1138) - *(v9 + 1140)) & 0xFFFF0000) == 0)
      {
        v369 = 0;
      }

      if (v369 != (*(v9 + 1140) - *(v9 + 1138)) && *(v9 + 376) == 1)
      {
        ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v366, v367, v368);
        v370 = *(v9 + 1136);
        ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v371, v372, v373);
        v374 = *(v9 + 1138);
        ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v375, v376, v377);
        v378 = v374 % v370 + *(v9 + 1140) / v370 * v370 - *(v9 + 1140);
        v379 = (v378 & 0xFFFF0000) != 0 ? v370 : 0;
        LOWORD(v380) = v379 + v378;
        if (v379 + v378)
        {
          __src[0] = xmmword_23ED060D0;
          LODWORD(__src[1]) = 0;
          __src[2] = 0uLL;
          *(&__src[1] + 1) = 0;
          os_unfair_lock_lock(__src);
          DWORD1(__src[0]) = v380;
          LODWORD(__src[1]) = 266;
          v380 = v380;
          if (((52 * v380) & 4) != 0)
          {
            v381 = ((52 * v380) & 0x3FFFF8) + 8;
          }

          else
          {
            v381 = 52 * v380;
          }

          v382 = malloc_type_aligned_alloc(8uLL, v381, 0x10000403884A0CCuLL);
          v385 = v382;
          if (!v382)
          {
            v43 = "dynamic_array.hpp";
            v42 = "buffer";
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v383);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v517);
            _os_crash();
            __break(1u);
            goto LABEL_488;
          }

          *&v386 = 0;
          *(&v386 + 1) = v380;
          do
          {
            if (v386 >= *(&v386 + 1))
            {
              goto LABEL_465;
            }

            v387 = &v382[52 * v386];
            *(v387 + 12) = 0;
            *(v387 + 1) = 0u;
            *(v387 + 2) = 0u;
            *v387 = 0u;
            *&v386 = v386 + 1;
            --v380;
          }

          while (v380);
          v388 = *(&__src[1] + 1);
          v389 = *(&__src[2] + 1);
          *(&__src[1] + 8) = v386;
          *(&__src[2] + 1) = v385;
          if (v388 && !v389)
          {
            goto LABEL_492;
          }

          if (v389)
          {
            free(v389);
          }

          DWORD2(__src[0]) = 0;
          os_unfair_lock_unlock(__src);
          ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v390, v391, v392);
          for (jj = *(v9 + 1140); ; jj = v414 % v413)
          {
            ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v393, v394, v395);
            if (*(v9 + 1138) == jj)
            {
              break;
            }

            v400 = *(v9 + 208);
            ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v397, v398, v399);
            *locka = *(ashp::acipc::tr_ring::get_entry_at_index((v9 + 1128), jj, v401, v402) + *(v9 + 1144));
            ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v403, v404, v405);
            if (*(v9 + 1148) >= 0x20u)
            {
              v406 = 32;
            }

            else
            {
              v406 = *(v9 + 1148);
            }

            os_unfair_lock_lock(__src);
            if (DWORD1(__src[0]))
            {
              v408 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_descr_info>::operator[](*(&__src[1] + 1), *(&__src[2] + 1), DWORD2(__src[0]), v407);
              *v408 = v400;
              *(v408 + 2) = v406;
              *(v408 + 4) = *locka;
              *(v408 + 20) = 0u;
              *(v408 + 36) = 0u;
              if (DWORD2(__src[0]) == -1)
              {
                v409 = DWORD1(__src[0]);
              }

              else
              {
                v409 = 0;
              }

              DWORD2(__src[0]) = (DWORD2(__src[0]) + 1 - v409) % DWORD1(__src[0]);
            }

            os_unfair_lock_unlock(__src);
            ashp::optional<ashp::acipc::tr_ring,void>::value(v9 + 1128, v410, v411, v412);
            v413 = *(v9 + 1136);
            v414 = jj - jj / v413 * v413;
            if (v413 != 1)
            {
              LOWORD(v414) = jj % *(v9 + 1136) + 1;
            }
          }

          os_unfair_lock_lock(__src);
          v417 = DWORD1(__src[0]);
          if (DWORD1(__src[0]))
          {
            if (!is_mul_ok(*(&__src[1] + 1), 0x34uLL) || (v417 = 52 * DWORD2(__src[1]), (52 * *(&__src[1] + 1)) >> 32))
            {
              ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v416);
              v417 = 0;
            }
          }

          v418 = v417 + 16;
          if (v417 >= 0xFFFFFFF0)
          {
            v430 = 77;
            v431 = "driver_debug_object.hpp";
            v432 = "copy_debug_info";
          }

          else
          {
            if (debug_info_capture::validate_buffer_bounds(a2, v417 + 16, v415, v416))
            {
              v419 = (*a2 + *(a2 + 3));
              v419->i32[0] = __src[1];
              v420 = DWORD1(__src[0]);
              v421 = *(&__src[1] + 1);
              if (DWORD1(__src[0]))
              {
                if (!is_mul_ok(*(&__src[1] + 1), 0x34uLL) || (v420 = 52 * DWORD2(__src[1]), (52 * *(&__src[1] + 1)) >> 32))
                {
                  ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", v416);
                  v420 = 0;
                  v421 = *(&__src[1] + 1);
                }
              }

              v419->i32[1] = v420;
              v419[1] = vrev64_s32(*(__src + 8));
              if (v421)
              {
                v422 = 0;
                v423 = v419 + 2;
                LODWORD(j) = 1;
                do
                {
                  v424 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_descr_info>::operator[](v421, *(&__src[2] + 1), v422, v416);
                  v425 = v423 + 52 * v422;
                  v426 = *(v424 + 48);
                  v427 = *v424;
                  v428 = *(v424 + 32);
                  *(v425 + 1) = *(v424 + 16);
                  *(v425 + 2) = v428;
                  *v425 = v427;
                  *(v425 + 12) = v426;
                  v422 = j;
                  v421 = *(&__src[1] + 1);
                  v50 = *(&__src[1] + 1) > j;
                  j = (j + 1);
                }

                while (v50);
              }
            }

            v429 = *(a2 + 3) + v418;
            *(a2 + 3) = v429;
            if (!HIDWORD(v429))
            {
LABEL_386:
              os_unfair_lock_unlock(__src);
              os_unfair_lock_lock(__src);
              if (*(&__src[1] + 1) && !*(&__src[2] + 1))
              {
                goto LABEL_492;
              }

              *(&__src[1] + 1) = 0;
              os_unfair_lock_unlock(__src);
              if (*(&__src[1] + 1))
              {
                if (!*(&__src[2] + 1))
                {
                  goto LABEL_492;
                }
              }

              *(&__src[1] + 1) = 0;
              if (*(&__src[2] + 1))
              {
                free(*(&__src[2] + 1));
              }

              goto LABEL_392;
            }

            v430 = 108;
            v431 = "debug_infra.hpp";
            v432 = "advance_buffer_pointer";
          }

          ashp::detail::control_flow::log_guard_else_failure(v431, v430, v432, v416);
          goto LABEL_386;
        }
      }
    }

LABEL_392:
    os_unfair_lock_unlock((v9 + 16));
    goto LABEL_393;
  }

LABEL_400:
  v433 = v519;
  os_unfair_lock_assert_owner(v519);
  for (kk = *&v519[130]._os_unfair_lock_opaque; kk; kk = kk[1])
  {
    v435 = *kk;
    if (*kk)
    {
      __src[0] = xmmword_23ED060E0;
      LODWORD(__src[1]) = 0;
      __src[2] = 0uLL;
      *(&__src[1] + 1) = 0;
      os_unfair_lock_lock((v435 + 16));
      if (*(v435 + 537) == 1 && *(v435 + 960) == 1)
      {
        ashp::optional<ashp::acipc::tr_ring,void>::value(v435 + 928, v436, v437, v438);
        v439 = *(v435 + 940);
        head_index = ashp::acipc::ring_controller::read_head_index((v435 + 520), v440, v441, v442, v443);
        ashp::optional<ashp::acipc::tr_ring,void>::value(v435 + 928, v445, v446, v447);
        v451 = *(v435 + 936);
        if (v451 <= head_index || ((v452 = *(v435 + 938), ((head_index - v452) & 0xFFFF0000) == 0) ? (v453 = 0) : (v453 = *(v435 + 936)), (v454 = (v453 + head_index - v452), v455 = v452 - *(v435 + 940), (v455 & 0xFFFF0000) == 0) ? (v456 = 0) : (v456 = *(v435 + 936)), v454 > (v451 + ~(v456 + v455))))
        {
          ashp::optional<ashp::acipc::tr_ring,void>::value(v435 + 928, v448, v449, v450);
          head_index = *(v435 + 938);
        }

        ashp::optional<ashp::acipc::tr_ring,void>::value(v435 + 928, v448, v449, v450);
        v457 = *(v435 + 936);
        v458 = head_index % v457 + v439 / v457 * v457 - v439;
        if ((v458 & 0xFFFF0000) == 0)
        {
          LOWORD(v457) = 0;
        }

        v459 = v457 + v458;
        if (v459)
        {
          __dmb(9u);
          ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::set_debug_object_capacity_and_type(__src, v459, 0x10Bu);
          while (v439 != head_index)
          {
            *&locka[28] = 0;
            *&locka[20] = 0;
            *locka = *(v435 + 208);
            ashp::optional<ashp::acipc::tr_ring,void>::value(v435 + 928, v460, v461, v462);
            *&locka[4] = *(ashp::acipc::cr_ring::get_entry_at_index((v435 + 928), v439, v463, v464) + *(v435 + 944));
            ashp::optional<ashp::acipc::tr_ring,void>::value(v435 + 928, v465, v466, v467);
            v470 = *(v435 + 948);
            if (v470 >= 0x10)
            {
              LOWORD(v470) = 16;
            }

            *&locka[2] = v470;
            ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::append_record(__src, locka, v468, v469);
            ashp::optional<ashp::acipc::tr_ring,void>::value(v435 + 928, v471, v472, v473);
            v474 = *(v435 + 936);
            v475 = v439 - v439 / v474 * v474;
            if (v474 != 1)
            {
              LOWORD(v475) = v439 % *(v435 + 936) + 1;
            }

            v439 = v475 % v474;
          }

          ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::copy_debug_info(__src, a2, v461, v462);
          os_unfair_lock_lock(__src);
          if (*(&__src[1] + 1) && !*(&__src[2] + 1))
          {
            goto LABEL_492;
          }

          *(&__src[1] + 1) = 0;
          os_unfair_lock_unlock(__src);
        }
      }

      os_unfair_lock_unlock((v435 + 16));
      if (*(&__src[1] + 1) && !*(&__src[2] + 1))
      {
        goto LABEL_492;
      }

      *(&__src[1] + 1) = 0;
      if (*(&__src[2] + 1))
      {
        free(*(&__src[2] + 1));
      }
    }
  }

  os_unfair_lock_assert_owner(v519);
  for (mm = *&v519[130]._os_unfair_lock_opaque; mm; mm = mm[1])
  {
    v477 = *mm;
    if (*mm)
    {
      os_unfair_lock_lock((v477 + 16));
      if (*(v477 + 537))
      {
        ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_completion_descr_info>::copy_debug_info((v477 + 1240), a2, v478, v479);
      }

      os_unfair_lock_unlock((v477 + 16));
    }
  }

  os_unfair_lock_assert_owner(v519);
  v480 = *&v519[130]._os_unfair_lock_opaque;
  if (!v480)
  {
LABEL_454:

    os_unfair_lock_unlock(v433);
    return;
  }

  while (2)
  {
    v481 = *v480;
    if (!*v480)
    {
      goto LABEL_448;
    }

    os_unfair_lock_lock((v481 + 16));
    if (*(v481 + 537) != 1)
    {
      goto LABEL_447;
    }

    os_unfair_lock_lock((v481 + 1288));
    v485 = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(v481 + 1288, v482, v483, v484);
    v488 = v485 + 16;
    if (v485 >= 0xFFFFFFF0)
    {
      v497 = 77;
      v498 = "driver_debug_object.hpp";
      v499 = "copy_debug_info";
LABEL_452:
      ashp::detail::control_flow::log_guard_else_failure(v498, v497, v499, v487);
      goto LABEL_446;
    }

    if (debug_info_capture::validate_buffer_bounds(a2, v488, v486, v487))
    {
      v491 = (*a2 + *(a2 + 3));
      v491->i32[0] = *(v481 + 1304);
      v491->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(v481 + 1288, v489, v490, v487);
      v491[1] = vrev64_s32(*(v481 + 1296));
      if (*(v481 + 1312))
      {
        v493 = 0;
        v494 = v491 + 2;
        v495 = 1;
        do
        {
          *v494[2 * v493].i8 = *ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[]((v481 + 1312), v493, v492, v487);
          v493 = v495;
          v50 = *(v481 + 1312) > v495++;
        }

        while (v50);
      }
    }

    v496 = *(a2 + 3) + v488;
    *(a2 + 3) = v496;
    if (HIDWORD(v496))
    {
      v497 = 108;
      v498 = "debug_infra.hpp";
      v499 = "advance_buffer_pointer";
      goto LABEL_452;
    }

LABEL_446:
    os_unfair_lock_unlock((v481 + 1288));
LABEL_447:
    os_unfair_lock_unlock((v481 + 16));
LABEL_448:
    v480 = v480[1];
    if (v480)
    {
      continue;
    }

    break;
  }

  v433 = v519;
  if (v519)
  {
    goto LABEL_454;
  }
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::completion_desc_debug_info>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + 48 * a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::set_debug_object_capacity_and_type(os_unfair_lock_t lock, uint32_t a2, uint32_t a3)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  lock[1]._os_unfair_lock_opaque = a2;
  lock[4]._os_unfair_lock_opaque = a3;
  v6 = a2;
  *&v7 = 0;
  *(&v7 + 1) = a2;
  if (a2)
  {
    v18 = v7;
    if (((20 * a2) & 4) != 0)
    {
      v8 = ((20 * a2) & 0xFFFFFFFF8) + 8;
    }

    else
    {
      v8 = 20 * a2;
    }

    v9 = malloc_type_aligned_alloc(8uLL, v8, 0x1000040A86A77D5uLL);
    v12 = v9;
    if (v9)
    {
      v7 = v18;
      while (v7 < *(&v18 + 1))
      {
        v13 = &v9[20 * v7];
        *v13 = 0;
        *(v13 + 1) = 0;
        *(v13 + 4) = 0;
        *&v7 = v7 + 1;
        if (!--v6)
        {
          goto LABEL_13;
        }
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v11);
      _os_crash();
      __break(1u);
    }

    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v10);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v17);
    _os_crash();
    goto LABEL_24;
  }

  v12 = 0;
LABEL_13:
  v14 = *&lock[6]._os_unfair_lock_opaque;
  *&lock[6]._os_unfair_lock_opaque = v7;
  v15 = *&lock[10]._os_unfair_lock_opaque;
  *&lock[10]._os_unfair_lock_opaque = v12;
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v15)
  {
    free(v15);
  }

  lock[2]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(lock);
}

void ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::copy_debug_info(os_unfair_lock_t lock, debug_info_capture *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  debug_object_alloc_size = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::get_debug_object_alloc_size(lock, a2, a3, a4);
  v9 = debug_object_alloc_size + 16;
  if (debug_object_alloc_size >= 0xFFFFFFF0)
  {
    v23 = "copy_debug_info";
    v24 = 77;
    v25 = "driver_debug_object.hpp";
    goto LABEL_15;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v9, v7, v8))
  {
    v12 = *a2 + *(a2 + 3);
    *v12 = lock[4];
    *(v12 + 4) = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::get_debug_object_alloc_size(lock, v10, v11, v8);
    v14 = *&lock[6]._os_unfair_lock_opaque;
    *(v12 + 8) = vrev64_s32(*&lock[2]._os_unfair_lock_opaque);
    if (v14)
    {
      v15 = 0;
      v16 = v12 + 16;
      v17 = 1;
      do
      {
        v18 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::index_array_debug_info>::operator[](&lock[6]._os_unfair_lock_opaque, v15, v13, v8);
        v19 = v16 + 20 * v15;
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        v15 = v17;
      }

      while (*&lock[6]._os_unfair_lock_opaque > v17++);
    }
  }

  v22 = *(a2 + 3) + v9;
  *(a2 + 3) = v22;
  if (HIDWORD(v22))
  {
    v23 = "advance_buffer_pointer";
    v24 = 108;
    v25 = "debug_infra.hpp";
LABEL_15:
    ashp::detail::control_flow::log_guard_else_failure(v25, v24, v23, v8);
    if (!lock)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!lock)
  {
    return;
  }

LABEL_10:

  os_unfair_lock_unlock(lock);
}

void sub_23ECA666C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::append_record(os_unfair_lock_t lock, __int128 *a2, uint64_t a3, const char *a4)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (lock[1]._os_unfair_lock_opaque)
  {
    v6 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::index_array_debug_info>::operator[](&lock[6]._os_unfair_lock_opaque, lock[2]._os_unfair_lock_opaque, a3, a4);
    v7 = *a2;
    *(v6 + 16) = *(a2 + 4);
    *v6 = v7;
    os_unfair_lock_opaque = lock[2]._os_unfair_lock_opaque;
    v9 = __CFADD__(os_unfair_lock_opaque, 1);
    v10 = os_unfair_lock_opaque + 1;
    if (v9)
    {
      v11 = lock[1]._os_unfair_lock_opaque;
    }

    else
    {
      v11 = 0;
    }

    lock[2]._os_unfair_lock_opaque = (v10 - v11) % lock[1]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(lock);
}

void ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::clear(os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_lock(lock);
  }

  if (*&lock[6]._os_unfair_lock_opaque && !*&lock[10]._os_unfair_lock_opaque)
  {
    __break(1u);
  }

  else
  {
    *&lock[6]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(lock);
  }
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::index_array_debug_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 20 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t ashp::driver_debug_object<ashp::acipc::detail::driver_debug::index_array_debug_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0x14uLL) || (result = 20 * v4, (20 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::detail::ring_manager::tr_context,ashp::intrusive_list_link<ashp::acipc::detail::ring_manager::tr_context>,&ashp::acipc::detail::ring_manager::tr_context::manager_link>::size(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    for (i = 0; ; ++i)
    {
      v6 = i + 1;
      if (v6 << 31 >> 31 != v6)
      {
        break;
      }

      a1 = *(a1 + 8);
      if (!a1)
      {
        return v6;
      }
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "intrusive_list.hpp", 0xE7, "size", a5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t ashp::dynamic_array<ashp::acipc::transfer_comp_info>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + 18 * a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::ring_manager::update_debug_ring_state(const os_unfair_lock *a1, uint64_t *a2, _OWORD *a3, int a4)
{
  v95 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  if (a3)
  {
    if (a4)
    {
      v88[0] = *(a2 + 8);
      *&v88[1] = *(a2 + 19);
      *&v88[3] = *(a2 + 11);
      *&v88[7] = *(a2 + 24);
      memset(&v88[11], 0, 116);
      v11 = *a2;
      if (*a2)
      {
        *&v88[15] = *(v11 + 220);
        v12 = *(v11 + 228);
        LODWORD(v11) = *(v11 + 232);
        *&v88[23] = v12;
      }

      else
      {
        *&v88[19] = 0;
      }

      *&v88[27] = v11;
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v82, a2[7], v9, v10);
      v83 = *(a2 + 16);
      v86 = 0;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v84, v38, v39, v40);
      v41 = v82;
      v82 = 0;
      v84 = v41;
      v85 = v83;
      v86 = 1;
      ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v84, &v88[31]);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v84, v42, v43, v44);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v82, v45, v46, v47);
      v51 = *a2;
      if (*a2)
      {
        v81 = 0;
        if (*(v51 + 360) == 1)
        {
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v79, v48, v49, v50);
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v79, *(v51 + 344), v52, v53);
          v80 = *(v51 + 352);
          v81 = 1;
        }

        ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v79, &v88[95]);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v79, v54, v55, v56);
        v60 = *a2;
        v78 = 0;
        if (*(v60 + 320) == 1)
        {
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v76, v57, v58, v59);
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v76, *(v60 + 304), v61, v62);
          v77 = *(v60 + 312);
          v78 = 1;
        }

        ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v76, &v88[63]);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v76, v63, v64, v65);
      }

      v66 = *&v88[80];
      a3[4] = *&v88[64];
      a3[5] = v66;
      a3[6] = *&v88[96];
      *(a3 + 111) = *&v88[111];
      v67 = *&v88[16];
      *a3 = *v88;
      a3[1] = v67;
      v36 = *&v88[32];
      v37 = *&v88[48];
    }

    else
    {
      memset(&v87[31], 0, 96);
      v87[0] = *(a2 + 8);
      *&v87[1] = *(a2 + 18);
      *&v87[3] = *(a2 + 10);
      *&v87[7] = *(a2 + 24);
      *&v87[11] = 0;
      *&v87[19] = 0;
      v14 = *a2;
      if (*a2)
      {
        LODWORD(v14) = *(v14 + 220);
      }

      *&v87[23] = v14;
      *&v87[27] = 0;
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v71, a2[7], v9, v10);
      v72 = *(a2 + 16);
      v75 = 0;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v73, v15, v16, v17);
      v18 = v71;
      v71 = 0;
      v73 = v18;
      v74 = v72;
      v75 = 1;
      ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v73, &v87[31]);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v73, v19, v20, v21);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v71, v22, v23, v24);
      v28 = *a2;
      if (v28)
      {
        v70 = 0;
        if (*(v28 + 312) == 1)
        {
          ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v68, v25, v26, v27);
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v68, *(v28 + 296), v29, v30);
          v69 = *(v28 + 304);
          v70 = 1;
        }

        ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v68, &v87[95]);
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v68, v31, v32, v33);
      }

      v34 = *&v87[80];
      a3[4] = *&v87[64];
      a3[5] = v34;
      a3[6] = *&v87[96];
      *(a3 + 111) = *&v87[111];
      v35 = *&v87[16];
      *a3 = *v87;
      a3[1] = v35;
      v36 = *&v87[32];
      v37 = *&v87[48];
    }

    a3[2] = v36;
    a3[3] = v37;
  }

  else
  {
    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v90 = "ring_manager.cpp";
        v91 = 1024;
        v92 = 1480;
        v93 = 2082;
        v94 = "update_debug_ring_state";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] invalid params", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] invalid params", "ring_manager.cpp", 1480, "update_debug_ring_state");
    }
  }
}

void sub_23ECA6D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::acipc::ring_manager::update_debug_client_overrides(const os_unfair_lock *a1, os_unfair_lock_s **a2, _OWORD *a3, int a4, _BYTE *a5)
{
  v103[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  if (a3)
  {
    v11 = *a2;
    if (a4)
    {
      if (!v11)
      {
        return;
      }

      ashp::acipc::tr_controller::get_client_overrides(buf, v11);
      if (buf[2])
      {
        v15 = *buf;
      }

      else
      {
        v15 = 0;
      }

      *v95 = v15;
      *&v95[2] = *v97;
      v95[4] = 0;
      *&v95[5] = *&v97[4];
      memset(&v95[13], 0, 80);
      v93 = 0;
      if (v98 == 1)
      {
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v91, v12, v13, v14);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v91, *&v97[12], v16, v17);
        v92 = *&v97[20];
        v93 = 1;
      }

      ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v91, &v95[13]);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v91, v18, v19, v20);
      v90 = 0;
      if (v101[0] == 1)
      {
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v88, v21, v22, v23);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v88, v99, v24, v25);
        v89 = v100;
        v90 = 1;
      }

      ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v88, &v95[45]);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v88, v26, v27, v28);
      if (v102[0])
      {
        *a5 |= 2u;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v102, v29, v30, v31);
        v35 = ashp::boxed::data::length(v102[0], v32, v33, v34);
        if (v35 >= 0x10)
        {
          v39 = 16;
        }

        else
        {
          v39 = v35;
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v102, v36, v37, v38);
        v43 = ashp::boxed::data::bytes(v102[0], v40, v41, v42);
        memcpy(&v95[77], v43, v39);
      }

      v44 = *&v95[48];
      a3[2] = *&v95[32];
      a3[3] = v44;
      a3[4] = *&v95[64];
      *(a3 + 77) = *&v95[77];
      v45 = *&v95[16];
      *a3 = *v95;
      a3[1] = v45;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v103, v29, v30, v31);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v102, v46, v47, v48);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v99, v49, v50, v51);
      v55 = &v97[12];
    }

    else
    {
      if (!v11)
      {
        return;
      }

      ashp::acipc::cr_controller::get_client_overrides(buf, v11);
      *v94 = 0;
      *&v94[2] = *buf;
      v94[4] = v98;
      *&v94[5] = 0;
      *&v94[9] = *v97;
      memset(&v94[13], 0, 80);
      v87 = 0;
      if (v97[20] == 1)
      {
        ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v85, v57, v58, v59);
        ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v85, *&v97[4], v60, v61);
        v86 = *&v97[12];
        v87 = 1;
      }

      ashp::acipc::ring_manager::get_flattened_name_sel_string(a1, &v85, &v94[45]);
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v85, v62, v63, v64);
      if (v99)
      {
        *a5 |= 2u;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v99, v65, v66, v67);
        v71 = ashp::boxed::data::length(v99, v68, v69, v70);
        if (v71 >= 0x10)
        {
          v75 = 16;
        }

        else
        {
          v75 = v71;
        }

        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v99, v72, v73, v74);
        v79 = ashp::boxed::data::bytes(v99, v76, v77, v78);
        memcpy(&v94[77], v79, v75);
      }

      v80 = *&v94[48];
      a3[2] = *&v94[32];
      a3[3] = v80;
      a3[4] = *&v94[64];
      *(a3 + 77) = *&v94[77];
      v81 = *&v94[16];
      *a3 = *v94;
      a3[1] = v81;
      ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v101, v65, v66, v67);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v99, v82, v83, v84);
      v55 = &v97[4];
    }

    ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(v55, v52, v53, v54);
  }

  else
  {
    log_level = ashp::detail::logging::get_log_level(v10);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        *v97 = "ring_manager.cpp";
        *&v97[8] = 1024;
        *&v97[10] = 1535;
        *&v97[14] = 2082;
        *&v97[16] = "update_debug_client_overrides";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] invalid params", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] invalid params", "ring_manager.cpp", 1535, "update_debug_client_overrides");
    }
  }
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::cr_context_debug_info>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + 221 * a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::ring_manager::get_flattened_name_sel_string(const os_unfair_lock *a1, uint64_t a2, char *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(a1);
  if (*(a2 + 16) == 1)
  {
    v8 = ashp::optional<ashp::acipc::name_and_selector,void>::value(a2, v5, v6, v7);
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v9, v10, v11);
    if (*a2)
    {
      CStringPtr = CFStringGetCStringPtr(*a2, 0x8000100u);
      v16 = CStringPtr ? CStringPtr : "???";
    }

    else
    {
      v16 = "(nil)";
    }

    ashp::optional<ashp::acipc::name_and_selector,void>::value(a2, v12, v13, v14);
    v17 = snprintf(a3, 0x20uLL, "%s-%u", v16, *(a2 + 8));
    if ((v17 & 0x80000000) != 0)
    {
      log_level = ashp::detail::logging::get_log_level(v17);
      if (log_level >= 2)
      {
        log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (log_level)
        {
          *buf = 136446722;
          v20 = "ring_manager.cpp";
          v21 = 1024;
          v22 = 1596;
          v23 = 2082;
          v24 = "get_flattened_name_sel_string";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to flatten name/sel into string", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(log_level))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to flatten name/sel into string", "ring_manager.cpp", 1596, "get_flattened_name_sel_string");
      }
    }
  }
}

void ashp::acipc::cr_controller::client_overrides::~client_overrides(ashp::acipc::cr_controller::client_overrides *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 56, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 5, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 8, v8, v9, v10);
}

{
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 56, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 5, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(this + 8, v8, v9, v10);
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::tr_context_debug_info>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + 319 * a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::state_dump_client,ashp::intrusive_list_link<ashp::state_dump_client>,&ashp::state_dump_client::_state_dump_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2[4] == result)
  {
    v4 = a2[2];
    v5 = a2[3];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 16;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::intrusive_list_link<ashp::state_dump_client>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::state_dump_manager::~state_dump_manager(ashp::state_dump_manager *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *(this + 1);
  v5 = this + 8;
  if (v6)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "state_dump_manager.cpp", 0x13, "~state_dump_manager", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::intrusive_list_link<ashp::state_dump_client>::~intrusive_list_link(v5, a2, a3, a4);
  }
}

uint64_t ashp::intrusive_list_link<ashp::reaper_target>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::reaper_target::~reaper_target(ashp::reaper_target *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  *this = &unk_28515CDC0;
  v5 = *(this + 4);
  if ((v5 - 3) < 2 || v5 == 0)
  {
    ashp::intrusive_list_link<ashp::reaper_target>::~intrusive_list_link(this + 24, a2, a3, a4);
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "reaper.cpp", 0x18, "~reaper_target", a5);
    _os_crash();
    __break(1u);
  }
}

void ashp::reaper_target::request_reap(ashp::reaper_target *this)
{
  v2 = *(this + 1);
  os_unfair_lock_lock(v2);
  ashp::reaper::make_reapable(v2, this);
  if (*(v2 + 88))
  {
    ashp::async_notifier::resume((v2 + 8), v3, v4, v5);
    ashp::async_notifier::trigger((v2 + 8), v6, v7, v8);
  }

  os_unfair_lock_unlock(v2);
}

void ashp::reaper::make_reapable(const os_unfair_lock *this, ashp::reaper_target *a2)
{
  os_unfair_lock_assert_owner(this);
  v6 = *(a2 + 4);
  if (v6 == 3)
  {
    *(a2 + 4) = 4;
  }

  else
  {
    if (v6 == 1)
    {
      *(a2 + 4) = 2;
      ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::remove(&this[16], a2, v4, v5);
    }

    else
    {
      if (v6)
      {
        return;
      }

      *(a2 + 4) = 2;
    }

    ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::insert_before(&this[22], a2, v4, v5);
  }
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::insert_before(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2[5])
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xBA, "insert_before", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to insert element already in list", "intrusive_list.hpp", 0xBA, "insert_before", v5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = *(result + 8);
    a2[3] = *v4;
    *v4 = a2;
    a2[4] = v4;
    *(result + 8) = a2 + 3;
    a2[5] = result;
  }

  return result;
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::remove(uint64_t result, void *a2, uint64_t a3, const char *a4)
{
  if (a2 && a2[5] == result)
  {
    v4 = a2[3];
    v5 = a2[4];
    *v5 = v4;
    if (v4)
    {
      v6 = v4 + 24;
    }

    else
    {
      v6 = result;
    }

    *(v6 + 8) = v5;
    a2[3] = 0;
    a2[4] = 0;
    a2[5] = 0;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0xCB, "remove", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to remove element not in list", "intrusive_list.hpp", 0xCB, "remove", v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::reaper_target::attempt_reap(ashp::reaper_target *this)
{
  v2 = *(this + 1);
  os_unfair_lock_lock(v2);
  ashp::reaper::make_reapable(v2, this);
  if (*(this + 4) == 2)
  {
    ashp::reaper::reap_single_DROPS_LOCK(v2, this);
  }

  os_unfair_lock_unlock(v2);
}

void ashp::reaper::reap_single_DROPS_LOCK(os_unfair_lock_s *this, ashp::reaper_target *a2)
{
  os_unfair_lock_assert_owner(this);
  if (*(a2 + 4) == 2)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::remove(&this[22], a2, v4, v5);
    while (1)
    {
      *(a2 + 4) = 3;
      os_unfair_lock_unlock(this);
      v7 = (**a2)(a2);
      os_unfair_lock_lock(this);
      if (v7)
      {
        break;
      }

      v11 = *(a2 + 4);
      if (v11 != 4)
      {
        if (v11 != 3)
        {
          goto LABEL_11;
        }

        *(a2 + 4) = 1;

        ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::insert_before(&this[16], a2, v8, v9);
        return;
      }
    }
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "reaper.cpp", 0x62, "reap_single_DROPS_LOCK", v6);
    _os_crash();
    __break(1u);
LABEL_11:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "reaper.cpp", 0x70, "reap_single_DROPS_LOCK", v10);
    _os_crash();
    __break(1u);
  }
}

void ___ZN4ashp6reaperC2EP16dispatch_queue_s_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2);
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    ashp::reaper::run(v3);
  }

  os_unfair_lock_unlock(v2);
}

void ___ZN4ashp6reaperC2EP16dispatch_queue_s_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 32))
  {
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "typed_allocators.hpp", 0x84, "typed_delete", a5);
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x23EF204E0);
}

uint64_t ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::~intrusive_list_impl(void **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  for (i = *a1; *a1; i = *a1)
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::remove(a1, i, a3, a4);
  }

  return ashp::intrusive_list_link<ashp::reaper_target>::~intrusive_list_link(a1, i, a3, a4);
}

void ashp::reaper::run(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  os_unfair_lock_lock(this);
  while (1)
  {
    v4 = *&this[22]._os_unfair_lock_opaque;
    if (!v4)
    {
      break;
    }

    ashp::reaper::reap_single_DROPS_LOCK(this, v4);
  }

  ashp::async_notifier::suspend(this + 2, 0, v2, v3);
  os_unfair_lock_unlock(this);

  os_unfair_lock_unlock(this + 1);
}

void ashp::reaper::~reaper(ashp::reaper *this)
{
  os_unfair_lock_lock(*(this + 7));
  v2 = *(this + 7);
  *(v2 + 8) = 0;
  os_unfair_lock_unlock(v2);
  *(this + 7) = 0;
  ashp::async_notifier::cancel(this + 2, v3, v4, v5);
  if (*(this + 8))
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "reaper.cpp", 0x4C, "~reaper", v9);
    _os_crash();
    __break(1u);
  }

  else if (!*(this + 11))
  {
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::~intrusive_list_impl(this + 11, v6, v7, v8);
    ashp::detail::intrusive_list::intrusive_list_impl<ashp::reaper_target,ashp::intrusive_list_link<ashp::reaper_target>,&ashp::reaper_target::_reaper_link>::~intrusive_list_impl(this + 8, v10, v11, v12);
    ashp::async_notifier::~async_notifier(this + 2, v13, v14, v15);
    return;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "reaper.cpp", 0x4D, "~reaper", v9);
  _os_crash();
  __break(1u);
}

void airship_platform_set_crash_reason(ashp::detail::logging *a1, const char *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  airship_platform_crash_reason = a1;
  airship_platform_crash_file_name = a2;
  airship_platform_crash_line_num = a3;
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136315650;
      v8 = a1;
      v9 = 2080;
      v10 = a2;
      v11 = 1024;
      v12 = a3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship %s %s@%u", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "%s %s@%u", a1, a2, a3);
  }
}

uint64_t airship_platform_get_global_logger()
{
  if (airship_platform_get_global_logger::once != -1)
  {
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  return airship_global_logger;
}

void sub_23ECA819C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  ashp::detail::dynamic_array::storage<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::~storage(v4);
  MEMORY[0x23EF204E0](v1, v3);
  _Unwind_Resume(a1);
}

void airship_platform_init_time_metadata()
{
  if (airship_platform_init_time_metadata::once != -1)
  {
    dispatch_once(&airship_platform_init_time_metadata::once, &__block_literal_global_3);
  }
}

uint64_t __airship_platform_init_time_metadata_block_invoke()
{
  times = mach_get_times();
  if (ashp::detail::control_flow::check_err_with_debug(times, "base.cpp", 0x8B, "get_time_metadata", v1))
  {
    result = mach_timebase_info(&info);
    airship_platform_time_metadata = 0;
    unk_27E384A80 = 0;
    qword_27E384A88 = v5 / 0x3E8uLL + 1000000 * v4;
    qword_27E384A90 = info;
  }

  else
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "base.cpp", 0x8B, "get_time_metadata", v2);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double airship_platform_get_airship_uuid(_OWORD *a1)
{
  if (airship_platform_get_airship_uuid::once != -1)
  {
    dispatch_once(&airship_platform_get_airship_uuid::once, &__block_literal_global_6);
  }

  result = *&airship_platform_airship_uuid;
  *a1 = airship_platform_airship_uuid;
  return result;
}

uint64_t __airship_platform_get_airship_uuid_block_invoke()
{
  result = _dyld_get_image_uuid();
  if ((result & 1) == 0)
  {
    *&airship_platform_airship_uuid = -1;
    *(&airship_platform_airship_uuid + 1) = -1;
  }

  return result;
}

uint64_t airship_platform_get_fallback_queue()
{
  if (airship_platform_get_fallback_queue::once != -1)
  {
    dispatch_once(&airship_platform_get_fallback_queue::once, &__block_literal_global_9);
  }

  return airship_platform_fallback_queue;
}

dispatch_queue_t __airship_platform_get_fallback_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.airship.global-fallback", 0);
  airship_platform_fallback_queue = result;
  if (!result)
  {
    ashp::detail::control_flow::log_guard_else_failure("platform_private.cpp", 0x121, "airship_platform_get_fallback_queue_block_invoke", v1);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "platform_private.cpp", 0x121, "airship_platform_get_fallback_queue_block_invoke", v2);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::intrusive_list_link<ashp::acipc::detail::boot_manager::controller_context>::~intrusive_list_link(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(result + 16))
  {
    ashp::detail::control_flow::log_guard_else_failure("intrusive_list.hpp", 0x105, "~intrusive_list_link", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: list element destroyed while in list", "intrusive_list.hpp", 0x105, "~intrusive_list_link", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::acipc::boot_manager::~boot_manager(ashp::acipc::boot_manager *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v7 = *(this + 3);
  v6 = this + 24;
  if (v7)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_manager.cpp", 0x11, "~boot_manager", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::intrusive_list_link<ashp::acipc::detail::boot_manager::controller_context>::~intrusive_list_link(v6, a2, a3, a4);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 1, v8, v9, v10);
  }
}

pthread_rwlock_t **airship_device_transport_suspend(uint64_t a1)
{
  v3 = (a1 + 8);
  pthread_rwlock_wrlock((a1 + 8));
  *(a1 + 208) = 1;
  return ashp::lock_guard<ashp::rw_mutex_writer<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_writer<ashp::rw_mutex>>,0>::~lock_guard(&v3);
}

pthread_rwlock_t **airship_device_transport_resume(uint64_t a1)
{
  v3 = (a1 + 8);
  pthread_rwlock_wrlock((a1 + 8));
  *(a1 + 208) = 0;
  return ashp::lock_guard<ashp::rw_mutex_writer<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_writer<ashp::rw_mutex>>,0>::~lock_guard(&v3);
}

__CFDictionary *airship_driver_probe_device(uint64_t a1, int a2, int a3)
{
  v190 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v11 = "boxed_types.cpp";
    v12 = "with_capacity";
    ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x397, "with_capacity", v9);
    v14 = "ALLOCATION FAILURE (or BUG) in Airship";
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "boxed_types.cpp", 0x397, "with_capacity", v175);
    _os_crash();
    __break(1u);
    goto LABEL_48;
  }

  v178 = Mutable;
  proxima_platform = ashp::get_proxima_platform(Mutable);
  LODWORD(v11) = proxima_platform;
  v5 = a2 | (a3 << 16);
  if (proxima_platform == 2)
  {
    if (v5 == 419500139 || (LODWORD(v12) = a2 | (a3 << 16), v5 == 293671019))
    {
      LODWORD(v12) = 419631211;
    }
  }

  else
  {
    LODWORD(v12) = a2 | (a3 << 16);
    if (proxima_platform == 1)
    {
      if (v5 == 419500139)
      {
        LODWORD(v12) = 419565675;
      }

      else
      {
        LODWORD(v12) = v5;
      }
    }
  }

  log_level = ashp::detail::logging::get_log_level(proxima_platform);
  v14 = "device_classifier.cpp";
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      *&buf[4] = "device_classifier.cpp";
      v180 = 1024;
      v181 = 142;
      v182 = 2082;
      v183 = "swizzle_proxima_viddid_for_platform";
      v184 = 1024;
      v185 = v11;
      v186 = 1024;
      v187 = v5;
      v188 = 1024;
      v189 = v12;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] platform_config=%u, probed viddid=0x%#x,  proxima_viddid=0x%#x", buf, 0x2Eu);
    }
  }

  v15 = ashp::detail::logging::get_log_level(log_level);
  v4 = 0x27E384000uLL;
  v3 = 0x27E384000uLL;
  if (v15)
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_15:
      ashp_log_helper::log(*(v3 + 2648), "[%s:%d:%s] platform_config=%u, probed viddid=0x%#x,  proxima_viddid=0x%#x", v14, 142, "swizzle_proxima_viddid_for_platform", v11, v5, v12);
      goto LABEL_16;
    }

LABEL_48:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_15;
  }

LABEL_16:
  v16 = ashp::detail::logging::get_log_level(v15);
  if (v16 >= 3)
  {
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      *buf = 136446978;
      *&buf[4] = v14;
      v180 = 1024;
      v181 = 47;
      v182 = 2082;
      v183 = "probe";
      v184 = 1024;
      v185 = v12;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] viddid=%#x", buf, 0x22u);
    }
  }

  v17 = ashp::detail::logging::get_log_level(v16);
  if (v17)
  {
    if (*(v4 + 2728) != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(*(v3 + 2648), "[%s:%d:%s] viddid=%#x", v14, 47, "probe", v12);
  }

  if (v12 <= 419500138)
  {
    if (v12 == 50336963 || v12 == 134223043)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v18, v19, v20);
      v102 = v178;
      *buf = @"Dale";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v103, v104, v105);
      CFRetain(*buf);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v106, v107, v108);
      ashp::boxed::mutable_dictionary::set_value(v102, @"Vendor", *buf, v109);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v110, v111, v112);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v113, v114, v115);
      v116 = v178;
      *buf = @"dal25";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v117, v118, v119);
      CFRetain(@"dal25");
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v120, v121, v122);
      ashp::boxed::mutable_dictionary::set_value(v116, @"Chipset", *buf, v123);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v124, v125, v126);
      goto LABEL_43;
    }

    if (v12 != 419434603)
    {
LABEL_34:
      v127 = ashp::detail::logging::get_log_level(v17);
      if (v127 >= 2)
      {
        v127 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v127)
        {
          *buf = 136446978;
          *&buf[4] = v14;
          v180 = 1024;
          v181 = 94;
          v182 = 2082;
          v183 = "probe";
          v184 = 1024;
          v185 = v12;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] unknown device viddid=%#x", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v127))
      {
        if (*(v4 + 2728) != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(*(v3 + 2648), "[%s:%d:%s] unknown device viddid=%#x", v14, 94, "probe", v12);
      }

      v131 = 0;
      v176 = 0;
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  switch(v12)
  {
    case 0x1901106B:
LABEL_32:
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v18, v19, v20);
      v63 = v178;
      *buf = @"Centauri";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v64, v65, v66);
      CFRetain(*buf);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v67, v68, v69);
      ashp::boxed::mutable_dictionary::set_value(v63, @"Vendor", *buf, v70);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v71, v72, v73);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v74, v75, v76);
      v77 = v178;
      *buf = @"t2026";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v78, v79, v80);
      CFRetain(*buf);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v81, v82, v83);
      ashp::boxed::mutable_dictionary::set_value(v77, @"Chipset", *buf, v84);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v85, v86, v87);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v88, v89, v90);
      v91 = v178;
      *buf = @"CentauriControl";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v92, v93, v94);
      CFRetain(@"CentauriControl");
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v95, v96, v97);
      ashp::boxed::mutable_dictionary::set_value(v91, @"Role", *buf, v98);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v99, v100, v101);
      break;
    case 0x1902106B:
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v18, v19, v20);
      v132 = v178;
      *buf = @"Centauri";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v133, v134, v135);
      CFRetain(*buf);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v136, v137, v138);
      ashp::boxed::mutable_dictionary::set_value(v132, @"Vendor", *buf, v139);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v140, v141, v142);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v143, v144, v145);
      v146 = v178;
      *buf = @"t2026";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v147, v148, v149);
      CFRetain(*buf);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v150, v151, v152);
      ashp::boxed::mutable_dictionary::set_value(v146, @"Chipset", *buf, v153);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v154, v155, v156);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v157, v158, v159);
      v160 = v178;
      *buf = @"CentauriAlpha";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v161, v162, v163);
      CFRetain(@"CentauriAlpha");
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v164, v165, v166);
      ashp::boxed::mutable_dictionary::set_value(v160, @"Role", *buf, v167);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v168, v169, v170);
      break;
    case 0x1903106B:
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v18, v19, v20);
      v21 = v178;
      *buf = @"Centauri";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v22, v23, v24);
      CFRetain(*buf);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v25, v26, v27);
      ashp::boxed::mutable_dictionary::set_value(v21, @"Vendor", *buf, v28);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v29, v30, v31);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v32, v33, v34);
      v35 = v178;
      *buf = @"t2026";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v36, v37, v38);
      CFRetain(*buf);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v39, v40, v41);
      ashp::boxed::mutable_dictionary::set_value(v35, @"Chipset", *buf, v42);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v43, v44, v45);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v178, v46, v47, v48);
      v49 = v178;
      *buf = @"CentauriBeta";
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v50, v51, v52);
      CFRetain(@"CentauriBeta");
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v53, v54, v55);
      ashp::boxed::mutable_dictionary::set_value(v49, @"Role", *buf, v56);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v57, v58, v59);
      break;
    default:
      goto LABEL_34;
  }

LABEL_43:
  v131 = v178;
  v177 = v178;
  v178 = 0;
  if (v177)
  {
    v177 = 0;
    *buf = v131;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(buf, v60, v61, v62);
  }

  v176 = v131;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v177, v60, v61, v62);
LABEL_46:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v178, v128, v129, v130);
  v176 = 0;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v176, v171, v172, v173);
  return v131;
}

void *airship_driver_create(const __CFString *a1)
{
  if (a1 && CFStringCompare(a1, @"acipc", 0) == kCFCompareEqualTo)
  {
    operator new();
  }

  return 0;
}

uint64_t airship_driver_destroy(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 2);
  if (BYTE2(a1[3]._os_unfair_lock_opaque) != 1)
  {
    BYTE2(a1[3]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_lock(a1 + 62);
    LOBYTE(a1[64]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(a1 + 62);
    os_unfair_lock_assert_owner(a1 + 2);
    v2 = *&a1[932]._os_unfair_lock_opaque;
    if (v2)
    {
      v3 = *&a1[936]._os_unfair_lock_opaque;
      v4 = 8 * v2;
      do
      {
        ashp::driver_client::terminate(*v3++);
        v4 -= 8;
      }

      while (v4);
    }

    ashp::driver_object_termination_list::terminate_all(a1 + 98);
    (*(*&a1->_os_unfair_lock_opaque + 8))(a1);
  }

  os_unfair_lock_unlock(a1 + 2);
  v5 = **&a1->_os_unfair_lock_opaque;

  return v5(a1);
}

void airship_driver_set_configuration(uint64_t a1, CFTypeRef a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 12) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x7F, "set_configuration", v6);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active driver", "driver.cpp", 0x7F, "set_configuration", v8);
    _os_crash();
    __break(1u);
  }

  else
  {
    cf = a2;
    if (a2)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&cf, v4, v5, v6);
      CFRetain(cf);
      a2 = cf;
    }

    v7 = *(a1 + 16);
    *(a1 + 16) = a2;
    cf = v7;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&cf, v4, v5, v6);
    os_unfair_lock_unlock((a1 + 8));
  }
}

void airship_driver_set_queue(uint64_t a1, const __CFString *a2, NSObject *a3)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 12) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x8E, "set_queue", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active driver", "driver.cpp", 0x8E, "set_queue", v45);
    _os_crash();
    __break(1u);
    goto LABEL_35;
  }

  if (!a2)
  {
LABEL_35:
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x8F, "set_queue", v8);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: invalid queue role", "driver.cpp", 0x8F, "set_queue", v46);
    _os_crash();
    __break(1u);
LABEL_36:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v17);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v47);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  if (*(a1 + 3760))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + 3776);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v11 + v9), v6, v7, v8);
      v12 = *(v11 + v9);
      if (v12)
      {
        if (CFStringCompare(v12, a2, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      ++v10;
      v9 += 16;
      if (v10 >= *(a1 + 3760))
      {
        goto LABEL_8;
      }
    }

    v53 = v10;
    v54 = 1;
    ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v51, a3, v7, v8);
    ashp::optional<unsigned long long,void>::value(&v53, v38, v39, v40);
    if (*(a1 + 3760) > v10)
    {
      v43 = *(a1 + 3776) + 16 * v10;
      v44 = *(v43 + 8);
      *(v43 + 8) = v51;
      v51 = v44;
      ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v51, v41, v42, v17);
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_8:
  v54 = 0;
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v51, a2, v7, v8);
  ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::refcounted_ptr(&v52, a3, v13, v14);
  v19 = *(a1 + 3760);
  v20 = v19 + 1;
  if (v19 == -1)
  {
    goto LABEL_36;
  }

  v21 = *(a1 + 3768);
  if (v20 <= v21)
  {
    goto LABEL_28;
  }

  if (v21 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = *(a1 + 3768);
  }

  if (v20 >= 9)
  {
    do
    {
      if (is_mul_ok(v22, 3uLL))
      {
        v22 = (3 * v22) >> 1;
      }

      else
      {
        v22 = v19 + 1;
      }
    }

    while (v22 < v20);
  }

  if (v21 >= v22)
  {
LABEL_28:
    if (v19 < v21)
    {
      v31 = *(a1 + 3776);
      if (v31)
      {
        v32 = (v31 + 16 * v19);
        v33 = v51;
        v51 = 0;
        *v32 = v33;
        v34 = v52;
        v52 = 0;
        v32[1] = v34;
        ++*(a1 + 3760);
        ashp::refcounted_ptr<dispatch_queue_s *,ashp::dispatch::refcount_policy>::reset(&v52, v15, v16, v17);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v51, v35, v36, v37);
LABEL_33:
        os_unfair_lock_unlock((a1 + 8));
        return;
      }

      goto LABEL_38;
    }

LABEL_37:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v18);
    _os_crash();
LABEL_38:
    __break(1u);
LABEL_39:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v17);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v48);
    _os_crash();
    __break(1u);
    goto LABEL_40;
  }

  if (v19 >= v22)
  {
LABEL_40:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", v18);
    _os_crash();
    __break(1u);
    goto LABEL_41;
  }

  if (v22 >> 60)
  {
LABEL_41:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", v17);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v49);
    _os_crash();
    __break(1u);
    goto LABEL_42;
  }

  v23 = malloc_type_aligned_alloc(8uLL, 16 * v22, 0x600405C6656D0uLL);
  if (v23)
  {
    if (*(a1 + 3760))
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = &v23[v24];
        v27 = (*(a1 + 3776) + v24);
        v28 = *v27;
        *v27 = 0;
        *v26 = v28;
        v29 = v27[1];
        v27[1] = 0;
        *(v26 + 1) = v29;
        ++v25;
        v24 += 16;
      }

      while (v25 < *(a1 + 3760));
    }

    *(a1 + 3768) = v22;
    v30 = *(a1 + 3776);
    *(a1 + 3776) = v23;
    if (v30)
    {
      free(v30);
    }

    v19 = *(a1 + 3760);
    v21 = *(a1 + 3768);
    goto LABEL_28;
  }

LABEL_42:
  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v17);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v50);
  _os_crash();
  __break(1u);
}

void airship_driver_set_exec_stage_change_handler(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 12) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xA2, "set_exec_stage_change_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active driver", "driver.cpp", 0xA2, "set_exec_stage_change_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 312);
    *(a1 + 312) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock((a1 + 8));
  }
}

void airship_driver_set_power_state_change_handler(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 12) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xAA, "set_power_state_change_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active driver", "driver.cpp", 0xAA, "set_power_state_change_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 328);
    *(a1 + 328) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock((a1 + 8));
  }
}

void airship_driver_set_ipc_error_handler(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 12) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xB2, "set_ipc_error_handler", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to reconfigure active driver", "driver.cpp", 0xB2, "set_ipc_error_handler", v10);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(&v11, a2, v4, v5);
    v6 = *(a1 + 344);
    *(a1 + 344) = v11;
    v11 = v6;
    ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(&v11, v7, v8, v9);
    os_unfair_lock_unlock((a1 + 8));
  }
}

ashp::detail::logging *airship_driver_activate(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  log_level = ashp::detail::logging::get_log_level(a1);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      buf[0] = 136446722;
      *&buf[1] = "driver.cpp";
      v16 = 1024;
      v17 = 185;
      v18 = 2082;
      v19 = "activate";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] activate", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] activate", "driver.cpp", 185, "activate");
  }

  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 12) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xBC, "activate", v3);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to activate active driver", "driver.cpp", 0xBC, "activate", v9);
    _os_crash();
    __break(1u);
  }

  else if (*(a1 + 14) != 1)
  {
    *(a1 + 12) = 257;
    os_unfair_lock_lock((a1 + 3752));
    *(a1 + 3756) = 1;
    os_unfair_lock_unlock((a1 + 3752));
    if (*(a1 + 384) == 1)
    {
      *(a1 + 384) = 0;
      ashp::driver_object_manager::~driver_object_manager((a1 + 352), v4, v5, v6, v7);
    }

    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 368) = a1 + 360;
    *(a1 + 384) = 1;
    (*(*a1 + 16))(&v14, a1);
    ashp::driver::get_queue(a1, v14);
    if (*(a1 + 536) == 1)
    {
      *(a1 + 536) = 0;
      ashp::reaper::~reaper((a1 + 424));
    }

    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 471) = 0;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 496) = a1 + 488;
    *(a1 + 512) = 0;
    *(a1 + 528) = 0;
    *(a1 + 520) = a1 + 512;
    operator new();
  }

  ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xBD, "activate", v3);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to activate terminated driver", "driver.cpp", 0xBD, "activate", v10);
  _os_crash();
  __break(1u);
  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v11);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v12);
  _os_crash();
  __break(1u);
  ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xCF, "activate", v13);
  *(a1 + 13) = 0;
  os_unfair_lock_unlock((a1 + 8));
  return "driver.cpp";
}

void sub_23ECAA2E0(_Unwind_Exception *a1)
{
  *(v1 + 13) = 0;
  os_unfair_lock_unlock((v1 + 8));
  _Unwind_Resume(a1);
}

void airship_driver_enter_reset(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xDE, "enter_reset", v2);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive driver", "driver.cpp", 0xDE, "enter_reset", v3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (*(a1 + 14) == 1)
  {
LABEL_9:
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xDF, "enter_reset", v2);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0xDF, "enter_reset", v4);
    _os_crash();
    __break(1u);
    return;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    *(a1 + 24) = 1;
    (*(*a1 + 32))(a1);
    os_unfair_lock_lock((a1 + 252));
    *(a1 + 257) = 1;
    *(a1 + 336) = 0;
    os_unfair_lock_unlock((a1 + 252));
  }

  os_unfair_lock_unlock((a1 + 8));
}

void airship_driver_exit_reset(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  LODWORD(v2) = *(a1 + 24);
  LODWORD(v3) = *(a1 + 13);
  log_level = ashp::detail::logging::get_log_level(v4);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      v10 = "driver.cpp";
      v12 = 238;
      v13 = 2082;
      v11 = 1024;
      v14 = "exit_reset";
      v15 = 1024;
      v16 = v2;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] in_reset %u, activated %u", buf, 0x28u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_7;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] in_reset %u, activated %u", "driver.cpp", 238, "exit_reset", v2, v3);
LABEL_7:
    if ((*(a1 + 13) & 1) == 0)
    {
      ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xEF, "exit_reset", v6);
      ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive driver", "driver.cpp", 0xEF, "exit_reset", v7);
      _os_crash();
      __break(1u);
      goto LABEL_13;
    }

    if (*(a1 + 14) != 1)
    {
      break;
    }

LABEL_13:
    v2 = "driver.cpp";
    v3 = "exit_reset";
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xF0, "exit_reset", v6);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0xF0, "exit_reset", v8);
    _os_crash();
    __break(1u);
LABEL_14:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  if (*(a1 + 24) == 1)
  {
    os_unfair_lock_lock((a1 + 252));
    *(a1 + 257) = 0;
    os_unfair_lock_unlock((a1 + 252));
    *(a1 + 24) = 0;
    (*(*a1 + 40))(a1);
  }

  os_unfair_lock_unlock((a1 + 8));
}

uint64_t airship_driver_set_transport(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 14) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xFD, "set_transport", v4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0xFD, "set_transport", v24);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v26 = (a1 + 32);
  pthread_rwlock_wrlock((a1 + 32));
  if (*(a1 + 232))
  {
LABEL_20:
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0xFF, "set_transport", v5);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to overwrite driver transport", "driver.cpp", 0xFF, "set_transport", v25);
    _os_crash();
    __break(1u);
LABEL_21:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "device_memory.cpp", 0x46, "set_transport", v13);
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  *(a1 + 232) = a2;
  v9 = (*(*a1 + 48))(a1);
  if (v9)
  {
    *(a1 + 232) = 0;
LABEL_18:
    ashp::lock_guard<ashp::rw_mutex_writer<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_writer<ashp::rw_mutex>>,0>::~lock_guard(&v26);
    os_unfair_lock_unlock((a1 + 8));
    return v9;
  }

  if (v26)
  {
    pthread_rwlock_unlock(v26);
    v26 = 0;
  }

  if (*(a1 + 13) != 1)
  {
LABEL_17:
    (*(*a1 + 56))(a1);
    goto LABEL_18;
  }

  ashp::optional<ashp::mock_hidable<ashp::devmem_mapping_manager>,void>::value(a1 + 584, v6, v7, v8);
  v10 = *(a1 + 232);
  os_unfair_lock_lock((a1 + 584));
  if (*(a1 + 592))
  {
    goto LABEL_21;
  }

  *(a1 + 592) = v10;
  v14 = *(a1 + 600);
  if (v14)
  {
    while (1)
    {
      v15 = *(v14 + 32);
      v16 = *(a1 + 592);
      if (!v15)
      {
        goto LABEL_13;
      }

      if ((ashp::device_transport::is_memory_mapping_active(*(a1 + 592), v15) & 1) == 0)
      {
        break;
      }

LABEL_14:
      v14 = *(v14 + 40);
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v16 = *(a1 + 592);
LABEL_13:
    ashp::optional<ashp::memory_descriptor,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v14 + 24), v15, v11, v12);
    ashp::device_transport::create_memory_mapping(&v27, v16, *(v14 + 24));
    os_unfair_lock_lock((v14 + 8));
    v17 = *(v14 + 32);
    *(v14 + 32) = v27;
    v27 = 0;
    v28 = v17;
    ashp::owning_wrapper<ashp::device_transport::memory_mapping *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::memory_mapping>>::~owning_wrapper(&v28);
    os_unfair_lock_unlock((v14 + 8));
    ashp::owning_wrapper<ashp::device_transport::memory_mapping *,(decltype(nullptr))0,ashp::polymorphic_deleter<ashp::device_transport::memory_mapping>>::~owning_wrapper(&v27);
    goto LABEL_14;
  }

LABEL_15:
  os_unfair_lock_unlock((a1 + 584));
  ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v18, v19, v20);
  v21 = *(a1 + 232);
  os_unfair_lock_lock((a1 + 632));
  if (!*(a1 + 840))
  {
    *(a1 + 840) = v21;
    ashp::interrupt_manager::recompute_source_registration_and_suspension((a1 + 632));
    os_unfair_lock_unlock((a1 + 632));
    goto LABEL_17;
  }

LABEL_22:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x96, "set_transport", v22);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECAAA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ashp::lock_guard<ashp::rw_mutex_writer<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_writer<ashp::rw_mutex>>,0>::~lock_guard(va);
  os_unfair_lock_unlock(v3 + 2);
  _Unwind_Resume(a1);
}

void airship_driver_clear_transport(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 14) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x114, "clear_transport", v2);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0x114, "clear_transport", v14);
    _os_crash();
    __break(1u);
  }

  else
  {
    v15 = (a1 + 32);
    pthread_rwlock_wrlock((a1 + 32));
    if (*(a1 + 232))
    {
      *(a1 + 232) = 0;
      (*(*a1 + 64))(a1);
      if (*(a1 + 13) == 1)
      {
        ashp::optional<ashp::mock_hidable<ashp::devmem_mapping_manager>,void>::value(a1 + 584, v3, v4, v5);
        os_unfair_lock_lock((a1 + 584));
        if (*(a1 + 592))
        {
          *(a1 + 592) = 0;
        }

        os_unfair_lock_unlock((a1 + 584));
        ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v6, v7, v8);
        os_unfair_lock_lock((a1 + 632));
        if (*(a1 + 840))
        {
          v12 = a1 + 848;
          v13 = 2304;
          do
          {
            if (*(v12 + 64))
            {
              ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v12, v9, v10, v11);
              ashp::interrupt_manager::disconnect_interrupt((a1 + 632), v12);
            }

            v12 += 72;
            v13 -= 72;
          }

          while (v13);
          *(a1 + 840) = 0;
        }

        os_unfair_lock_unlock((a1 + 632));
      }
    }

    ashp::lock_guard<ashp::rw_mutex_writer<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_writer<ashp::rw_mutex>>,0>::~lock_guard(&v15);
    os_unfair_lock_unlock((a1 + 8));
  }
}

uint64_t airship_driver_get_exec_stage(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 63);
  os_unfair_lock_opaque = a1[65]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 63);
  return os_unfair_lock_opaque;
}

void airship_driver_probe_exec_stage(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x15C, "probe_exec_stage", v2);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to access inactive driver", "driver.cpp", 0x15C, "probe_exec_stage", v3);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if (*(a1 + 14) == 1)
  {
LABEL_7:
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x15D, "probe_exec_stage", v2);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0x15D, "probe_exec_stage", v4);
    _os_crash();
    __break(1u);
    return;
  }

  (*(*a1 + 72))(a1);

  os_unfair_lock_unlock((a1 + 8));
}

void airship_driver_set_power_target(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 14) == 1)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x165, "set_power_target", v4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: attempted to access terminated driver", "driver.cpp", 0x165, "set_power_target", v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    if (*(a1 + 240) != a2)
    {
      *(a1 + 240) = a2;
      (*(*a1 + 80))(a1);
    }

    os_unfair_lock_unlock((a1 + 8));
  }
}

uint64_t airship_driver_get_power_state(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 63);
  os_unfair_lock_opaque = a1[80]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 63);
  return os_unfair_lock_opaque;
}

uint64_t airship_driver_get_error_state(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 63);
  os_unfair_lock_opaque = a1[84]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 63);
  return os_unfair_lock_opaque;
}

uint64_t airship_driver_set_interrupt_handler(uint64_t a1, const __CFString *a2, const char *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if ((*(a1 + 13) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1CB, "set_interrupt_handler", v10);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to set external interrupt handler for inactive driver", "driver.cpp", 0x1CB, "set_interrupt_handler", v37);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 14) == 1)
  {
LABEL_17:
    v15 = "set_interrupt_handler";
    ashp::detail::control_flow::log_guard_else_failure("driver.cpp", 0x1CC, "set_interrupt_handler", v10);
    ashp::detail::base::log_pre_crash_message("BUG in client of Airship: attempted to set external interrupt handler for terminated driver", "driver.cpp", 0x1CC, "set_interrupt_handler", v38);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v8, v9, v10);
  ashp::interrupt_manager::get_vector_for_interrupt(&v39, (a1 + 632), a2, a3, v11);
  v15 = 3758097090;
  if (v40)
  {
    ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v12, v13, v14);
    ashp::optional<unsigned int,void>::value(&v39, v16, v17, v18);
    v19 = v39;
    os_unfair_lock_lock((a1 + 632));
    log_level = ashp::detail::logging::get_log_level(v20);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        *&buf[4] = "interrupt.cpp";
        v42 = 1024;
        v43 = 174;
        v44 = 2082;
        v45 = "set_external_handler";
        v46 = 1024;
        v47 = v19;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting external interrupt handler for vector %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting external interrupt handler for vector %u", "interrupt.cpp", 174, "set_external_handler", v19);
    }

    if (v19 < 0x20)
    {
      v26 = ashp::static_array<ashp::optional<ashp::interrupt_manager::interrupt_context,void>,32ul>::operator[](a1 + 848, v19, v22, v23);
      if (*(v26 + 64))
      {
        pthread_rwlock_wrlock((a1 + 640));
        ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::refcounted_ptr(buf, a4, v27, v28);
        ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(v26, v29, v30, v31);
        v32 = *(v26 + 56);
        *(v26 + 56) = *buf;
        *buf = v32;
        ashp::refcounted_ptr<void({block_pointer})(void),ashp::default_refcount_policy<void({block_pointer})(void),void>::policy>::reset(buf, v33, v34, v35);
        pthread_rwlock_unlock((a1 + 640));
        *(a1 + 14 * v19 + 3284) = 1;
        ashp::interrupt_manager::recompute_source_registration_and_suspension((a1 + 632));
        v15 = 0;
LABEL_14:
        os_unfair_lock_unlock((a1 + 632));
        goto LABEL_15;
      }

LABEL_19:
      ashp::detail::control_flow::log_guard_else_failure("interrupt.cpp", 0xB2, "set_external_handler", v25);
      goto LABEL_14;
    }

LABEL_18:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0xAF, "set_external_handler", v24);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  os_unfair_lock_unlock((a1 + 8));
  return v15;
}

void sub_23ECAB1E8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 158);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t airship_driver_retrieve_state_dump(uint64_t a1, debug_info_capture *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 3720) != 1)
  {
    goto LABEL_14;
  }

  ashp::optional<ashp::interrupt_manager,void>::value(a1 + 632, v4, v5, v6);
  os_unfair_lock_lock((a1 + 632));
  if (!a2)
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "interrupt.cpp", 0x3C7, "append_state_dump", v7);
    _os_crash();
    __break(1u);
    goto LABEL_39;
  }

  os_unfair_lock_assert_owner((a1 + 632));
  os_unfair_lock_lock((a1 + 3224));
  debug_object_alloc_size = ashp::driver_debug_object<ashp::debug::interrupt::interrupt_debug_info>::get_debug_object_alloc_size(a1 + 3224, v8, v9, v10);
  v14 = debug_object_alloc_size + 16;
  if (debug_object_alloc_size >= 0xFFFFFFF0)
  {
LABEL_39:
    v45 = "copy_debug_info";
    v46 = 77;
    v47 = "driver_debug_object.hpp";
    goto LABEL_41;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v14, v12, v13))
  {
    v17 = (*a2 + *(a2 + 3));
    v17->i32[0] = *(a1 + 3240);
    v17->i32[1] = ashp::driver_debug_object<ashp::debug::interrupt::interrupt_debug_info>::get_debug_object_alloc_size(a1 + 3224, v15, v16, v13);
    v17[1] = vrev64_s32(*(a1 + 3232));
    if (*(a1 + 3248))
    {
      v19 = 0;
      v20 = v17 + 2;
      v21 = 1;
      do
      {
        v22 = ashp::dynamic_array<ashp::debug::interrupt::interrupt_debug_info>::operator[]((a1 + 3248), v19, v18, v13);
        v23 = v20 + 12 * v19;
        v24 = *v22;
        *(v23 + 2) = *(v22 + 8);
        *v23 = v24;
        v19 = v21;
      }

      while (*(a1 + 3248) > v21++);
    }
  }

  v26 = *(a2 + 3) + v14;
  *(a2 + 3) = v26;
  if (!HIDWORD(v26))
  {
    goto LABEL_9;
  }

  v45 = "advance_buffer_pointer";
  v46 = 108;
  v47 = "debug_infra.hpp";
LABEL_41:
  ashp::detail::control_flow::log_guard_else_failure(v47, v46, v45, v13);
LABEL_9:
  os_unfair_lock_unlock((a1 + 3224));
  os_unfair_lock_assert_owner((a1 + 632));
  if (debug_info_capture::validate_buffer_bounds(a2, 464, v27, v28))
  {
    v30 = (*a2 + *(a2 + 3));
    *v30 = xmmword_23ED06130;
    memcpy(v30 + 1, (a1 + 3272), 0x1C0uLL);
  }

  v31 = *(a2 + 3);
  *(a2 + 3) = v31 + 464;
  if (v31 >= 0xFFFFFE30)
  {
    ashp::detail::control_flow::log_guard_else_failure("debug_infra.hpp", 0x6C, "advance_buffer_pointer", v29);
  }

  os_unfair_lock_assert_owner((a1 + 632));
  os_unfair_lock_unlock((a1 + 632));
LABEL_14:
  v32 = *(a1 + 232);
  if (v32)
  {
    *buf = v32 + 8;
    pthread_rwlock_rdlock((v32 + 8));
    (*(*v32 + 128))(v32, a2);
    ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(buf);
  }

  os_unfair_lock_assert_owner((a1 + 8));
  v33 = (*(*a1 + 96))(a1, a2);
  if (*(a1 + 3816) == 1)
  {
    ashp::optional<ashp::acipc::tr_ring,void>::value(a1 + 3784, v34, v35, v36);
    os_unfair_lock_lock((a1 + 3784));
    v39 = *(a1 + 3792);
    if (v39)
    {
      while (1)
      {
        v40 = v39[1];
        if (!v40)
        {
          break;
        }

        (*(v40 + 16))(v40, *v39, a2);
        v39 = v39[2];
        if (!v39)
        {
          goto LABEL_28;
        }
      }

      a2 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "state_dump_manager.cpp", 0x3C, "populate_state_dump_info", v38);
      _os_crash();
      __break(1u);
      goto LABEL_37;
    }

    log_level = ashp::detail::logging::get_log_level(v37);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        *&buf[4] = "state_dump_manager.cpp";
        v49 = 1024;
        v50 = 56;
        v51 = 2082;
        v52 = "populate_state_dump_info";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no custom statedump handlers registered", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no custom statedump handlers registered", "state_dump_manager.cpp", 56, "populate_state_dump_info");
    }

LABEL_28:
    os_unfair_lock_unlock((a1 + 3784));
  }

  v42 = ashp::detail::logging::get_log_level(v33);
  if (v42 >= 3)
  {
    v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      *buf = 136446722;
      *&buf[4] = "driver.cpp";
      v49 = 1024;
      v50 = 437;
      v51 = 2082;
      v52 = "retrieve_state_dump";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] IPC driver state_dump complete", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v42))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_34:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] IPC driver state_dump complete", "driver.cpp", 437, "retrieve_state_dump");
      goto LABEL_35;
    }

LABEL_37:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_34;
  }

LABEL_35:
  v43 = *(a2 + 3);
  os_unfair_lock_unlock((a1 + 8));
  return v43;
}