void ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec(ashp::acipc::config::main_ipc_stage_spec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(this + 296) == 1)
  {
    *(this + 296) = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 34, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 32, v5, v6, v7);
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(this + 184, v8, v9, v10);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 20, v11, v12, v13);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 17, v14, v15, v16);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v17, v18, v19);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (__CFADD__(*result, a3))
  {
LABEL_13:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  if (*result + a3 <= result[1])
  {
    v6 = a3;
    v28 = *result + a3;
    if (!a3)
    {
LABEL_11:
      *v5 = v28;
      return result;
    }

    v8 = 0;
    while (1)
    {
      v9 = v5[2] + 304 * *v5;
      if (!(v9 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8), *(a2 + v8), a3, a4);
      v10 = v9 + v8;
      v11 = *(a2 + v8 + 8);
      v12 = *(a2 + v8 + 24);
      *(v10 + 40) = *(a2 + v8 + 40);
      *(v10 + 24) = v12;
      *(v10 + 8) = v11;
      v13 = *(a2 + v8 + 56);
      v14 = *(a2 + v8 + 72);
      v15 = *(a2 + v8 + 88);
      *(v10 + 102) = *(a2 + v8 + 102);
      *(v10 + 88) = v15;
      *(v10 + 72) = v14;
      *(v10 + 56) = v13;
      v16 = *(a2 + v8 + 112);
      *(v10 + 126) = *(a2 + v8 + 126);
      *(v10 + 112) = v16;
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8 + 136), *(a2 + v8 + 136), v17, v18);
      *(v10 + 144) = *(a2 + v8 + 144);
      *(v10 + 152) = *(a2 + v8 + 152);
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8 + 160), *(a2 + v8 + 160), v19, v20);
      v23 = v9 + v8;
      v24 = a2 + v8;
      *(v23 + 168) = *(a2 + v8 + 168);
      *(v23 + 176) = *(a2 + v8 + 176);
      *(v23 + 248) = 0;
      if (*(a2 + v8 + 248) == 1)
      {
        ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec const&>(v23 + 184, (v24 + 184), v21, v22);
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v23 + 256), *(v24 + 256), v21, v22);
      v25 = v9 + v8;
      *(v9 + v8 + 264) = *(a2 + v8 + 264);
      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8 + 272), *(a2 + v8 + 272), v26, v27);
      *(v25 + 280) = *(a2 + v8 + 280);
      *(v25 + 288) = *(a2 + v8 + 288);
      *(v25 + 296) = 0;
      if (*(a2 + v8 + 296) == 1)
      {
        *(v9 + v8 + 292) = *(a2 + v8 + 292);
        *(v25 + 296) = 1;
      }

      v8 += 304;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC9A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::acipc::config::main_ipc_stage_spec::mtr_spec::~mtr_spec((v5 + 112), a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v4, v7, v8, v9);
  _Unwind_Resume(a1);
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::main_ipc_stage_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x130uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 304 * a2, 0x1060040C983677EuLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::main_ipc_stage_spec>::buffer(&v13, a2, a3, a4);
    if (*a1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec*>(v14 + v8, (a1[2] + v8), v6, v7);
        ++v9;
        v8 += 304;
      }

      while (v9 < *a1);
    }

    v10 = v13;
    v11 = v14;
    v13 = 0;
    v14 = 0;
    v12 = a1[2];
    a1[1] = v10;
    a1[2] = v11;
    if (v12)
    {
      free(v12);
      if (v14)
      {
        free(v14);
      }
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v63 = 0;
    v64[0] = 0;
    v65 = 0;
    v66 = 0;
    v67[0] = 0;
    v68 = 0;
    v69 = 0;
    v70[0] = 0;
    v71 = 0;
    v72 = 0;
    v73[0] = 0;
    v74 = 0;
    v75 = 0;
    v76[0] = 0;
    v77 = 0;
    v78 = 0;
    v79[0] = 0;
    v80 = 0;
    v81 = 0;
    v82[0] = 0;
    v83 = 0;
    v84 = 0;
    v85[0] = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90[0] = 0;
    v94 = 0;
    v95 = 0;
    v99[0] = 0;
    v100 = 0;
    v92 = 0;
    v91 = 0;
    v93[0] = 0;
    v98 = 0;
    v96 = 0;
    v97 = 0;
    v101[64] = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107[4] = 0;
    v9 = *(a3 + 8);
    v10 = *v9;
    if (!a2)
    {
      set_error(*v9, "missing object", 0, a4, a5);
      goto LABEL_68;
    }

    v11 = CFGetTypeID(a2);
    if (v11 != CFDictionaryGetTypeID())
    {
      a2 = 0;
    }

    if (!a2)
    {
      set_error(v10, "unexpected object type", 0, v13, v14);
      goto LABEL_68;
    }

    v112 = 0;
    value = ashp::boxed::dictionary::get_value(a2, @"registers", v12, v13);
    v18 = value;
    if (value)
    {
      v19 = CFGetTypeID(value);
      if (v19 != CFDictionaryGetTypeID())
      {
        v18 = 0;
      }

      if (v18)
      {
        if (!parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v64, v18, @"ipc_control", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v67, v18, @"ipc_status", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v70, v18, @"sleep_control", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v73, v18, @"context_info_address_lo", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v76, v18, @"context_info_address_hi", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v79, v18, @"window_base_lo", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v82, v18, @"window_base_hi", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v85, v18, @"window_size", v10))
        {
          goto LABEL_66;
        }

        if (ashp::boxed::dictionary::count(v18, v22, v20, v21) == 8)
        {
          if (!parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v88, a2, @"version", v10) || !parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v88 + 1, a2, @"tr_index_count", v10) || !parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v89, a2, @"cr_index_count", v10))
          {
            goto LABEL_68;
          }

          v25 = ashp::boxed::dictionary::get_value(a2, @"mtr", v23, v24);
          v28 = v25;
          if (v25)
          {
            v29 = CFGetTypeID(v25);
            if (v29 != CFDictionaryGetTypeID())
            {
              v28 = 0;
            }

            if (v28)
            {
              v113 = 0;
              if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(v90, v28, @"ring_size", v10) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v91, 0, v28, @"transfer_header_size", v10, &v113) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v91 + 1, 0, v28, @"transfer_footer_size", v10, &v113) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v92, 0, v28, @"completion_header_size", v10, &v113) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v92 + 1, 0, v28, @"completion_footer_size", v10, &v113) && parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(v93, 0, v28, @"out_of_order", v10, &v113) && parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(v93 + 1, 0, v28, @"in_place", v10, &v113) && parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v94, v28, @"doorbell", v10) && parse_field_with_default<&(ashp::acipc::config::doorbell_moderation_spec::parse(ashp::acipc::config::doorbell_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_moderation_spec>(&v96, v28, v10, &v113) && parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v97, v28, @"interrupt", v10) && parse_field_with_default<&(ashp::acipc::config::tr_debug_spec::parse(ashp::acipc::config::tr_debug_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::tr_debug_spec>(v99, v28, v10, &v113))
              {
                v31 = ashp::boxed::dictionary::count(v28, v30, v20, v21);
                if (v113 + v31 == 11)
                {
                  v111 = 0;
                  v34 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::main_ipc_stage_spec::mcr_spec::parse(ashp::acipc::config::main_ipc_stage_spec::mcr_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec::mcr_spec>(ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,ashp::optional_traits<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>>(v101, v110, a2, v10, &v112);
                  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v110, v35, v36, v37);
                  if (v34)
                  {
                    if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v102, a2, @"ipc_status_interrupt", v10))
                    {
                      if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v104, a2, @"peripheral_info_interrupt", v10))
                      {
                        if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v106, 0, a2, @"scratch_size", v10, &v112))
                        {
                          v109 = 0;
                          if (parse_field_with_default<&(BOOL parse_optional<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::optional<unsigned int,ashp::optional_traits<unsigned int,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<unsigned int,void>>(v107, &v108, a2, @"ipc_running_timeout", v10, &v112))
                          {
                            v39 = ashp::boxed::dictionary::count(a2, v38, v23, v24);
                            if (v112 + v39 == 10)
                            {
                              v43 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v110, cf, v40, v41);
                              v44 = v63;
                              v63 = v110[0];
                              v110[0] = v44;
                              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v43, v45, v46, v47);
                              v51 = **(a3 + 16);
                              v52 = *v51;
                              v53 = *v51 + 1;
                              if (*v51 == -1)
                              {
                                ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v49);
                                ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v62);
                                _os_crash();
                                __break(1u);
                              }

                              else
                              {
                                v54 = v51[1];
                                if (v53 > v54)
                                {
                                  if (v54 <= 8)
                                  {
                                    v55 = 8;
                                  }

                                  else
                                  {
                                    v55 = v51[1];
                                  }

                                  if (v53 >= 9)
                                  {
                                    do
                                    {
                                      if (is_mul_ok(v55, 3uLL))
                                      {
                                        v55 = (3 * v55) >> 1;
                                      }

                                      else
                                      {
                                        v55 = *v51 + 1;
                                      }
                                    }

                                    while (v55 < v53);
                                  }

                                  if (v54 < v55)
                                  {
                                    ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::set_capacity(v51, v55, v48, v49, v50);
                                    v52 = *v51;
                                    v54 = v51[1];
                                  }
                                }

                                if (v52 < v54)
                                {
                                  std::construct_at[abi:se200100]<ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec*>(v51[2] + 304 * v52, &v63, v48, v49);
                                  ++*v51;
LABEL_69:
                                  ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec(&v63, v56, v57, v58);
                                  return;
                                }
                              }

                              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v50);
                              _os_crash();
                              __break(1u);
                              return;
                            }

                            set_error(v10, "unknown keys present", 0, v41, v42);
                          }
                        }
                      }
                    }
                  }

LABEL_68:
                  set_error_location(**(a3 + 8), cf, v23, v24);
                  **a3 = 1;
                  goto LABEL_69;
                }

                set_error(v10, "unknown keys present", 0, v32, v33);
              }

              goto LABEL_75;
            }

            v61 = "unexpected object type";
          }

          else
          {
            v61 = "missing object";
          }

          set_error(v10, v61, 0, v26, v27);
LABEL_75:
          v60 = @"mtr";
          goto LABEL_67;
        }

        v59 = "unknown keys present";
      }

      else
      {
        v59 = "unexpected object type";
      }
    }

    else
    {
      v59 = "missing object";
    }

    set_error(v10, v59, 0, v16, v17);
LABEL_66:
    v60 = @"registers";
LABEL_67:
    set_error_location(v10, v60, v20, v21);
    goto LABEL_68;
  }
}

void sub_23ECCA448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(v9 - 152, a2, a3, a4);
  ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec(&a9, v11, v12, v13);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:se200100]<ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec,ashp::acipc::config::main_ipc_stage_spec*>(uint64_t result, uint64_t *a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    v6 = *a2;
    *a2 = 0;
    *result = v6;
    v7 = *(a2 + 1);
    v8 = *(a2 + 3);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v8;
    *(result + 8) = v7;
    v9 = *(a2 + 7);
    v10 = *(a2 + 9);
    v11 = *(a2 + 11);
    *(result + 102) = *(a2 + 102);
    *(result + 88) = v11;
    *(result + 72) = v10;
    *(result + 56) = v9;
    v12 = *(a2 + 7);
    *(result + 126) = *(a2 + 126);
    *(result + 112) = v12;
    v13 = a2[17];
    a2[17] = 0;
    *(result + 136) = v13;
    *(result + 144) = *(a2 + 36);
    *(result + 152) = a2[19];
    v14 = a2[20];
    a2[20] = 0;
    *(result + 160) = v14;
    *(result + 168) = *(a2 + 42);
    *(result + 176) = *(a2 + 44);
    ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::storage(result + 184, (a2 + 23), a3, a4);
    v15 = a2[32];
    a2[32] = 0;
    *(v5 + 256) = v15;
    *(v5 + 264) = *(a2 + 66);
    v16 = a2[34];
    a2[34] = 0;
    *(v5 + 272) = v16;
    *(v5 + 280) = *(a2 + 70);
    *(v5 + 288) = *(a2 + 72);
    *(v5 + 296) = 0;
    if (*(a2 + 296) == 1)
    {
      *(v5 + 292) = *(a2 + 73);
      *(v5 + 296) = 1;
      if (*(a2 + 296) == 1)
      {
        *(a2 + 296) = 0;
      }
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 184 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::detail::dynamic_array::storage<unsigned int>::~storage((v9 + v7 + 152), a2, a3, a4, a5);
      ashp::detail::dynamic_array::storage<unsigned int>::~storage((v9 + v7 + 128), v10, v11, v12, v13);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 112), v14, v15, v16);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage((v9 + v7 + 88), v17, v18, v19, v20);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 8), v21, v22, v23);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7), v24, v25, v26);
      ++v8;
      v7 += 184;
      if (v8 >= *a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  if (v5 <= result[1])
  {
    v7 = a3;
    if (!a3)
    {
LABEL_7:
      *v6 = v5;
      return result;
    }

    v9 = 0;
    while (1)
    {
      v10 = v6[2] + 184 * *v6 + v9;
      if (!v10)
      {
        break;
      }

      result = ashp::acipc::config::boot_ipc_stage_spec::boot_ipc_stage_spec(v10, a2, a3, a4);
      a2 += 184;
      v9 += 184;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0xB8uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 184 * a2, 0x1070040E50F95D1uLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec>::buffer(&v11, a2, a3, a4);
    if (*a1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec*>(v12 + v6, (a1[2] + v6));
        ++v7;
        v6 += 184;
      }

      while (v7 < *a1);
    }

    v8 = v11;
    v9 = v12;
    v11 = 0;
    v12 = 0;
    v10 = a1[2];
    a1[1] = v8;
    a1[2] = v9;
    if (v10)
    {
      free(v10);
      if (v12)
      {
        free(v12);
      }
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v101[0] = 0;
    v102 = 0;
    v103 = 0;
    v104[0] = 0;
    v105 = 0;
    v106 = 0;
    v107[0] = 0;
    v108 = 0;
    v109 = 0;
    v110[0] = 0;
    v111 = 0;
    v112 = 0;
    v113[0] = 0;
    v114 = 0;
    v115 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v116 = 0u;
    v117 = 0u;
    v118 = 0;
    memset(v119, 0, sizeof(v119));
    v9 = *(a3 + 8);
    v10 = *v9;
    if (a2)
    {
      v11 = CFGetTypeID(a2);
      if (v11 != CFDictionaryGetTypeID())
      {
        a2 = 0;
      }

      if (a2)
      {
        v124 = 0;
        if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v99, a2, @"resource", v10))
        {
          value = ashp::boxed::dictionary::get_value(a2, @"registers", v14, v15);
          v19 = value;
          if (value)
          {
            v20 = CFGetTypeID(value);
            if (v20 != CFDictionaryGetTypeID())
            {
              v19 = 0;
            }

            if (v19)
            {
              if (!parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v101, v19, @"image_address_lo", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v104, v19, @"image_address_hi", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v107, v19, @"image_size", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v110, v19, @"image_doorbell", v10) || !parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v113, v19, @"image_response", v10))
              {
                goto LABEL_34;
              }

              if (ashp::boxed::dictionary::count(v19, v23, v21, v22) == 5)
              {
                memset(v123, 0, sizeof(v123));
                v25 = ashp::boxed::dictionary::get_value(a2, @"client_registers", v24, v17);
                v29 = v25;
                if (v25)
                {
                  v127 = v10;
                  v128 = &v116;
                  if (v116)
                  {
                    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v28);
                    _os_crash();
                    __break(1u);
                    goto LABEL_63;
                  }

                  v30 = CFGetTypeID(v25);
                  if (v30 != CFDictionaryGetTypeID())
                  {
                    v29 = 0;
                  }

                  if (!v29)
                  {
                    set_error(v10, "unexpected object type", 0, v33, v34);
LABEL_60:
                    set_error_location(v10, @"client_registers", v40, v41);
                    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(v123, v93, v94, v95, v96);
                    goto LABEL_35;
                  }

                  v126 = 0;
                  v35 = ashp::boxed::dictionary::count(v29, v31, v32, v33);
                  if (*(&v116 + 1) < v35)
                  {
                    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::set_capacity(&v116, v35, v36, v37, v38);
                  }

                  context[0] = &v126;
                  context[1] = &v127;
                  context[2] = &v128;
                  CFDictionaryApplyFunction(v29, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec::parse(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec::parse(ashp::acipc::config::boot_ipc_stage_spec::client_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, context);
                  if (v126 == 1)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::operator=(&v116, v123, v26, v27, v28);
                  v124 = 1;
                }

                ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(v123, v39, v40, v41, v42);
                if (!parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v117 + 8, a2, @"image_interrupt", v10))
                {
                  goto LABEL_35;
                }

                memset(v122, 0, sizeof(v122));
                v65 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::dynamic_array<unsigned int> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<unsigned int>>(v119, v122, a2, @"success_code", v10, &v124);
                ashp::detail::dynamic_array::storage<unsigned int>::~storage(v122, v66, v67, v68, v69);
                if ((v65 & 1) == 0)
                {
                  goto LABEL_35;
                }

                memset(v121, 0, sizeof(v121));
                v70 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::dynamic_array<unsigned int> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<unsigned int>>(&v119[1] + 1, v121, a2, @"failure_code", v10, &v124);
                ashp::detail::dynamic_array::storage<unsigned int>::~storage(v121, v71, v72, v73, v74);
                if ((v70 & 1) == 0 || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(v120, 0, a2, @"image_table", v10, &v124))
                {
                  goto LABEL_35;
                }

                v76 = ashp::boxed::dictionary::count(a2, v75, v14, v15);
                if (v124 + v76 != 7)
                {
                  set_error(v10, "unknown keys present", 0, v78, v79);
                  goto LABEL_35;
                }

                v80 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(context, cf, v77, v78);
                v81 = v98;
                v98 = context[0];
                context[0] = v81;
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v80, v82, v83, v84);
                v88 = **(a3 + 16);
                v89 = *v88;
                v90 = *v88 + 1;
                if (*v88 != -1)
                {
                  v91 = v88[1];
                  if (v90 > v91)
                  {
                    if (v91 <= 8)
                    {
                      v92 = 8;
                    }

                    else
                    {
                      v92 = v88[1];
                    }

                    if (v90 >= 9)
                    {
                      do
                      {
                        if (is_mul_ok(v92, 3uLL))
                        {
                          v92 = (3 * v92) >> 1;
                        }

                        else
                        {
                          v92 = *v88 + 1;
                        }
                      }

                      while (v92 < v90);
                    }

                    if (v91 < v92)
                    {
                      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::set_capacity(v88, v92, v85, v86, v87);
                      v89 = *v88;
                      v91 = v88[1];
                    }
                  }

                  if (v89 < v91)
                  {
                    std::construct_at[abi:se200100]<ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec*>(v88[2] + 184 * v89, &v98);
                    ++*v88;
                    goto LABEL_36;
                  }

LABEL_64:
                  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v87);
                  _os_crash();
                  __break(1u);
                  return;
                }

LABEL_63:
                ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v86);
                ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v97);
                _os_crash();
                __break(1u);
                goto LABEL_64;
              }

              v43 = "unknown keys present";
            }

            else
            {
              v43 = "unexpected object type";
            }
          }

          else
          {
            v43 = "missing object";
          }

          set_error(v10, v43, 0, v17, v18);
LABEL_34:
          set_error_location(v10, @"registers", v21, v22);
        }
      }

      else
      {
        set_error(v10, "unexpected object type", 0, v12, v13);
      }
    }

    else
    {
      set_error(*v9, "missing object", 0, a4, a5);
    }

LABEL_35:
    set_error_location(**(a3 + 8), cf, v14, v15);
    **a3 = 1;
LABEL_36:
    ashp::detail::dynamic_array::storage<unsigned int>::~storage(&v119[1] + 1, v44, v45, v46, v47);
    ashp::detail::dynamic_array::storage<unsigned int>::~storage(v119, v48, v49, v50, v51);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v117 + 1, v52, v53, v54);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::~storage(&v116, v55, v56, v57, v58);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v99, v59, v60, v61);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v98, v62, v63, v64);
  }
}

void sub_23ECCAF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  ashp::detail::dynamic_array::storage<unsigned int>::~storage(&a33, a2, a3, a4, a5);
  ashp::acipc::config::boot_ipc_stage_spec::~boot_ipc_stage_spec(&a10, v34, v35, v36, v37);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:se200100]<ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec,ashp::acipc::config::boot_ipc_stage_spec*>(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    v3 = a2[1];
    a2[1] = 0;
    *(result + 8) = v3;
    *(result + 16) = *(a2 + 4);
    v4 = *(a2 + 3);
    v5 = *(a2 + 5);
    v6 = *(a2 + 7);
    *(result + 68) = *(a2 + 68);
    *(result + 56) = v6;
    *(result + 40) = v5;
    *(result + 24) = v4;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 88) = 0;
    *(result + 88) = a2[11];
    a2[11] = 0;
    v7 = *(result + 96);
    v8 = a2[13];
    *(result + 96) = a2[12];
    *(result + 104) = v8;
    a2[12] = v7;
    a2[13] = 0;
    v9 = a2[14];
    a2[14] = 0;
    *(result + 112) = v9;
    *(result + 120) = *(a2 + 30);
    *(result + 136) = 0;
    *(result + 144) = 0;
    *(result + 128) = 0;
    *(result + 128) = a2[16];
    a2[16] = 0;
    v10 = *(result + 136);
    v11 = a2[18];
    *(result + 136) = a2[17];
    *(result + 144) = v11;
    a2[17] = v10;
    a2[18] = 0;
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 168) = 0;
    *(result + 152) = a2[19];
    a2[19] = 0;
    v12 = *(result + 160);
    v13 = a2[21];
    *(result + 160) = a2[20];
    *(result + 168) = v13;
    a2[20] = v12;
    a2[21] = 0;
    *(result + 176) = *(a2 + 176);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 16 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7), a2, a3, a4);
      ++v8;
      v7 += 16;
      if (v8 >= *a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  if (v5 <= result[1])
  {
    v7 = a3;
    if (!a3)
    {
LABEL_7:
      *v6 = v5;
      return result;
    }

    v8 = 0;
    v9 = (a2 + 8);
    while (1)
    {
      v10 = v6[2] + 16 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 1), a3, a4);
      v11 = *v9;
      v9 += 2;
      *(v10 + v8 + 8) = v11;
      v8 += 16;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::resource_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (a2 >> 60)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  else
  {
    v5 = malloc_type_aligned_alloc(8uLL, 16 * a2, 0x1060040F08D23B4uLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::resource_spec>::buffer(&v14, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    while (v15)
    {
      v8 = v15 + v6;
      v9 = (a1[2] + v6);
      v10 = *v9;
      *v9 = 0;
      *v8 = v10;
      v8[1] = v9[1];
      ++v7;
      v6 += 16;
      if (v7 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v11 = v14;
  v12 = v15;
  v14 = 0;
  v15 = 0;
  v13 = a1[2];
  a1[1] = v11;
  a1[2] = v12;
  if (v13)
  {
    free(v13);
    if (v15)
    {
      free(v15);
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v45 = 0;
    LOBYTE(v46) = 0;
    HIDWORD(v46) = 0;
    v9 = **(a3 + 8);
    if (a2)
    {
      v10 = CFGetTypeID(a2);
      if (v10 != CFDictionaryGetTypeID())
      {
        a2 = 0;
      }

      if (a2)
      {
        v47 = 0;
        if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v46, 1, a2, @"restricted", v9, &v47))
        {
          value = ashp::boxed::dictionary::get_value(a2, @"multi", v11, v12);
          v17 = value;
          if (value)
          {
            v18 = CFGetTypeID(value);
            if (v18 != CFDictionaryGetTypeID())
            {
              v17 = 0;
            }

            if (!v17)
            {
              v23 = "unexpected object type";
              goto LABEL_42;
            }

            if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v46 + 1, v17, @"count", v9))
            {
LABEL_43:
              set_error_location(v9, @"multi", v21, v22);
              goto LABEL_20;
            }

            if (ashp::boxed::dictionary::count(v17, v20, v21, v22) != 1)
            {
              v23 = "unknown keys present";
LABEL_42:
              set_error(v9, v23, 0, v16, v19);
              goto LABEL_43;
            }
          }

          else
          {
            HIDWORD(v46) = 1;
            ++v47;
          }

          v28 = ashp::boxed::dictionary::count(a2, v14, v15, v16);
          if (&v47[v28] == 2)
          {
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v47, cf, v29, v30);
            v32 = v45;
            v45 = v47;
            v47 = v32;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v47, v33, v34, v35);
            v37 = **(a3 + 16);
            v38 = *v37;
            v39 = *v37 + 1;
            if (*v37 == -1)
            {
              ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v27);
              ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v44);
              _os_crash();
              __break(1u);
            }

            else
            {
              v40 = v37[1];
              if (v39 > v40)
              {
                if (v40 <= 8)
                {
                  v25 = 8;
                }

                else
                {
                  v25 = v37[1];
                }

                if (v39 >= 9)
                {
                  do
                  {
                    if (is_mul_ok(v25, 3uLL))
                    {
                      v25 = (3 * v25) >> 1;
                    }

                    else
                    {
                      v25 = *v37 + 1;
                    }
                  }

                  while (v25 < v39);
                }

                if (v40 < v25)
                {
                  ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::set_capacity(v37, v25, v26, v27, v36);
                  v38 = *v37;
                  v40 = v37[1];
                }
              }

              if (v38 < v40)
              {
                v41 = v37[2];
                if (v41)
                {
                  v42 = (v41 + 16 * v38);
                  v43 = v45;
                  v45 = 0;
                  *v42 = v43;
                  v42[1] = v46;
                  ++*v37;
                  goto LABEL_21;
                }

LABEL_46:
                __break(1u);
                return;
              }
            }

            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v36);
            _os_crash();
            goto LABEL_46;
          }

          set_error(v9, "unknown keys present", 0, v30, v31);
        }

LABEL_20:
        set_error_location(**(a3 + 8), cf, v11, v12);
        **a3 = 1;
LABEL_21:
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v45, v25, v26, v27);
        return;
      }

      v24 = "unexpected object type";
    }

    else
    {
      v24 = "missing object";
    }

    set_error(v9, v24, 0, a4, a5);
    goto LABEL_20;
  }
}

void sub_23ECCB790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 24 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      v10 = (v9 + v7);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 16), a2, a3, a4);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v11, v12, v13);
      ++v8;
      v7 += 24;
      if (v8 >= *a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  if (v5 <= result[1])
  {
    v7 = a3;
    if (!a3)
    {
LABEL_7:
      *v6 = v5;
      return result;
    }

    v8 = 0;
    v9 = (a2 + 16);
    while (1)
    {
      v10 = v6[2] + 24 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 2), a3, a4);
      *(v10 + v8 + 8) = *(v9 - 2);
      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8 + 16), *v9, v11, v12);
      v9 += 3;
      v8 += 24;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::exec_stage_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x18uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 24 * a2, 0x106004079D75DD6uLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::exec_stage_spec>::buffer(&v15, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    while (v16)
    {
      v8 = v16 + v6;
      v9 = (a1[2] + v6);
      v10 = *v9;
      *v9 = 0;
      *v8 = v10;
      *(v8 + 2) = *(v9 + 2);
      v11 = v9[2];
      v9[2] = 0;
      *(v8 + 2) = v11;
      ++v7;
      v6 += 24;
      if (v7 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v12 = v15;
  v13 = v16;
  v15 = 0;
  v16 = 0;
  v14 = a1[2];
  a1[1] = v12;
  a1[2] = v13;
  if (v14)
  {
    free(v14);
    if (v16)
    {
      free(v16);
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    v9 = *(a3 + 8);
    v10 = *v9;
    if (!a2)
    {
      set_error(*v9, "missing object", 0, a4, a5);
      goto LABEL_36;
    }

    v11 = CFGetTypeID(a2);
    if (v11 != CFDictionaryGetTypeID())
    {
      a2 = 0;
    }

    if (!a2)
    {
      set_error(v10, "unexpected object type", 0, v12, v13);
      goto LABEL_36;
    }

    v66 = 0;
    if ((parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v60, a2, @"value", v10) & 1) == 0)
    {
LABEL_36:
      set_error_location(**(a3 + 8), cf, v14, v15);
      **a3 = 1;
      goto LABEL_37;
    }

    v64 = 0;
    v65 = 0;
    v16 = _Z24parse_field_with_defaultIXadL_Z14parse_optionalIXadL_ZL12parse_symbolPN4ashp14refcounted_ptrINS1_5boxed6symbolENS1_2cf15refcount_policyEEENS3_6objectEPNS1_5acipc6config13error_contextEEES7_EbPNS1_8optionalIT0_NS1_15optional_traitsISF_vE16default_sentinelEEES9_SD_EENSE_IS7_NS1_17optional_sentinelIXtlNS1_9nullopt_tEEELb1EEEEEEbPSF_NSt3__113type_identityISF_E4typeENS3_10dictionaryES4_SD_Pm(&v65, &v64, a2, @"ipc_stage", v10, &v66);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v64, v17, v18, v19);
    if (v16)
    {
      v62 = 0;
      if (_ZNK4ashp8optionalINS_14refcounted_ptrINS_5boxed6symbolENS_2cf15refcount_policyEEENS_17optional_sentinelIXtlNS_9nullopt_tEEELb1EEEE9has_valueEv(&v65, v20, v21, v22))
      {
        v25 = v65;
      }

      else
      {
        v25 = 0;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v63, v25, v23, v24);
      v26 = v61;
      v61 = v63;
      v63 = v26;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v63, v27, v28, v29);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v62, v30, v31, v32);
      v36 = ashp::boxed::dictionary::count(a2, v33, v34, v35);
      if (&v66[v36] == 2)
      {
        v38 = 1;
        goto LABEL_20;
      }

      set_error(v10, "unknown keys present", 0, v22, v37);
    }

    v38 = 0;
LABEL_20:
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v65, v20, v21, v22);
    if (v38)
    {
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v66, cf, v14, v15);
      v39 = v59;
      v59 = v66;
      v66 = v39;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v66, v40, v41, v42);
      v47 = **(a3 + 16);
      v48 = *v47;
      v49 = *v47 + 1;
      if (*v47 == -1)
      {
        ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v45);
        ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v58);
        _os_crash();
        __break(1u);
      }

      else
      {
        v50 = v47[1];
        if (v49 > v50)
        {
          if (v50 <= 8)
          {
            v43 = 8;
          }

          else
          {
            v43 = v47[1];
          }

          if (v49 >= 9)
          {
            do
            {
              if (is_mul_ok(v43, 3uLL))
              {
                v43 = (3 * v43) >> 1;
              }

              else
              {
                v43 = *v47 + 1;
              }
            }

            while (v43 < v49);
          }

          if (v50 < v43)
          {
            ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::set_capacity(v47, v43, v44, v45, v46);
            v48 = *v47;
            v50 = v47[1];
          }
        }

        if (v48 < v50)
        {
          v51 = v47[2];
          if (v51)
          {
            v52 = v51 + 24 * v48;
            v53 = v59;
            v59 = 0;
            *v52 = v53;
            *(v52 + 8) = v60;
            v54 = v61;
            v61 = 0;
            *(v52 + 16) = v54;
            ++*v47;
LABEL_37:
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v61, v43, v44, v45);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v59, v55, v56, v57);
            return;
          }

LABEL_41:
          __break(1u);
          return;
        }
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v46);
      _os_crash();
      goto LABEL_41;
    }

    goto LABEL_36;
  }
}

void sub_23ECCBECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a12, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a15, v16, v17, v18);
  ashp::acipc::config::exec_stage_spec::~exec_stage_spec(&a9, v19, v20, v21);
  _Unwind_Resume(a1);
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_8:
      *a1 = a2;
      return;
    }

    v7 = 96 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      v10 = v9 + v7;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v9 + v7 + 48, a2, a3, a4);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v10 + 24), v11, v12, v13, v14);
      if (*(v10 + 16) == 1)
      {
        *(v10 + 16) = 0;
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v15, v16, v17);
      ++v8;
      v7 += 96;
      if (v8 >= *a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (__CFADD__(*result, a3))
  {
LABEL_11:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  if (*result + a3 <= result[1])
  {
    v6 = a3;
    v18 = *result + a3;
    if (!a3)
    {
LABEL_9:
      *v5 = v18;
      return result;
    }

    v8 = 0;
    while (1)
    {
      v9 = v5[2] + 96 * *v5;
      if (!(v9 + v8))
      {
        break;
      }

      v10 = a2 + v8;
      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8), *(a2 + v8), a3, a4);
      v13 = v9 + v8;
      *(v13 + 8) = *(a2 + v8 + 8);
      *(v13 + 16) = 0;
      if (*(a2 + v8 + 16) == 1)
      {
        *(v13 + 12) = *(v10 + 12);
        *(v13 + 16) = 1;
      }

      *(v13 + 20) = *(v10 + 20);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((v13 + 24), (v10 + 24), v11, v12);
      v14 = (v9 + v8);
      result = ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v9 + v8 + 48, a2 + v8 + 48, v15, v16);
      v17 = *(a2 + v8 + 72);
      *(v14 + 77) = *(a2 + v8 + 77);
      v14[9] = v17;
      v14[11] = *(a2 + v8 + 88);
      v8 += 96;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECCC1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v4, a2, a3, a4);
  _Unwind_Resume(a1);
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::doorbell_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x60uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 96 * a2, 0x1060040457941E9uLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::doorbell_spec>::buffer(&v13, a2, a3, a4);
    if (*a1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec*>(v14 + v8, (a1[2] + v8), v6, v7);
        ++v9;
        v8 += 96;
      }

      while (v9 < *a1);
    }

    v10 = v13;
    v11 = v14;
    v13 = 0;
    v14 = 0;
    v12 = a1[2];
    a1[1] = v10;
    a1[2] = v11;
    if (v12)
    {
      free(v12);
      if (v14)
      {
        free(v14);
      }
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (**a3)
  {
    return;
  }

  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
  {
    set_error(**(a3 + 8), "bad key", 0, a4, a5);
    **a3 = 1;
    return;
  }

  v66 = 0;
  v69 = 0;
  v72[16] = 0;
  v73[0] = 0;
  v74[0] = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v9 = *(a3 + 8);
  v10 = *v9;
  if (!a2)
  {
    set_error(*v9, "missing object", 0, a4, a5);
    goto LABEL_24;
  }

  v11 = CFGetTypeID(a2);
  if (v11 != CFDictionaryGetTypeID())
  {
    a2 = 0;
  }

  if (!a2)
  {
    set_error(v10, "unexpected object type", 0, v13, v14);
    goto LABEL_24;
  }

  v83 = 0;
  value = ashp::boxed::dictionary::get_value(a2, @"mode", v12, v13);
  v18 = value;
  if (!value)
  {
    v26 = "missing object";
LABEL_22:
    set_error(v10, v26, 0, v16, v17);
    goto LABEL_23;
  }

  v19 = CFGetTypeID(value);
  if (v19 != CFStringGetTypeID())
  {
    v18 = 0;
  }

  if (!v18)
  {
    v26 = "unexpected object type";
    goto LABEL_22;
  }

  if (CFStringCompare(@"index", v18, 0))
  {
    if (CFStringCompare(@"shared_counter", v18, 0))
    {
      if (CFStringCompare(@"shared_timestamp", v18, 0))
      {
        if (CFStringCompare(@"shared_constant", v18, 0))
        {
          set_error(v10, "unexpected mode string", "mode", v20, v21);
LABEL_23:
          set_error_location(v10, @"mode", v22, v23);
          goto LABEL_24;
        }

        v37 = 3;
      }

      else
      {
        v37 = 2;
      }
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  v67 = v37;
  v82 = 0;
  if (parse_field_with_default<&(BOOL parse_optional<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(ashp::optional<unsigned int,ashp::optional_traits<unsigned int,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<unsigned int,void>>(&v68, &v81, a2, @"value", v10, &v83))
  {
    if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(v70, 0, a2, @"min_interval_usec", v10, &v83))
    {
      memset(v80, 0, sizeof(v80));
      v38 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>>((v70 + 4), v80, a2, @"ipc_stage", v10, &v83);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(v80, v39, v40, v41, v42);
      if (v38)
      {
        v79[16] = 0;
        v43 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(v72, v79, a2, @"resource", v10, &v83);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v79, v44, v45, v46);
        if ((v43 & 1) != 0 && parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(v73, a2, @"vector", v10) && parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(v74, a2, @"register", v10) && parse_field_with_default<&(ashp::acipc::config::doorbell_spec::multi_config::parse(ashp::acipc::config::doorbell_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec::multi_config>(&v77, a2, v10, &v83))
        {
          v48 = ashp::boxed::dictionary::count(a2, v47, v24, v25);
          if (v83 + v48 == 8)
          {
            v52 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v80, cf, v49, v50);
            v53 = v66;
            v66 = v80[0];
            v80[0] = v53;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v52, v54, v55, v56);
            v60 = **(a3 + 16);
            v61 = *v60;
            v62 = *v60 + 1;
            if (*v60 == -1)
            {
              ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v58);
              ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v65);
              _os_crash();
              __break(1u);
            }

            else
            {
              v63 = v60[1];
              if (v62 > v63)
              {
                if (v63 <= 8)
                {
                  v64 = 8;
                }

                else
                {
                  v64 = v60[1];
                }

                if (v62 >= 9)
                {
                  do
                  {
                    if (is_mul_ok(v64, 3uLL))
                    {
                      v64 = (3 * v64) >> 1;
                    }

                    else
                    {
                      v64 = *v60 + 1;
                    }
                  }

                  while (v64 < v62);
                }

                if (v63 < v64)
                {
                  ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::set_capacity(v60, v64, v57, v58, v59);
                  v61 = *v60;
                  v63 = v60[1];
                }
              }

              if (v61 < v63)
              {
                std::construct_at[abi:se200100]<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec*>((v60[2] + 96 * v61), &v66, v57, v58);
                ++*v60;
                goto LABEL_25;
              }
            }

            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v59);
            _os_crash();
            __break(1u);
            return;
          }

          set_error(v10, "unknown keys present", 0, v50, v51);
        }
      }
    }
  }

LABEL_24:
  set_error_location(**(a3 + 8), cf, v24, v25);
  **a3 = 1;
LABEL_25:
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v72, v27, v28, v29);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v70 + 4), v30, v31, v32, v33);
  if (v69 == 1)
  {
    v69 = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v66, v34, v35, v36);
}

void sub_23ECCC8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(va, a2, a3, a4);
  ashp::acipc::config::doorbell_spec::~doorbell_spec(&a9, v21, v22, v23);
  _Unwind_Resume(a1);
}

void ashp::acipc::config::doorbell_spec::~doorbell_spec(ashp::acipc::config::doorbell_spec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 48, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 3, v5, v6, v7, v8);
  if (*(this + 16) == 1)
  {
    *(this + 16) = 0;
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v9, v10, v11);
}

void *std::construct_at[abi:se200100]<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec*>(void *result, uint64_t *a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    v6 = *a2;
    *a2 = 0;
    *result = v6;
    *(result + 2) = *(a2 + 2);
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      *(result + 3) = *(a2 + 3);
      *(result + 16) = 1;
      if (*(a2 + 16) == 1)
      {
        *(a2 + 16) = 0;
      }
    }

    *(result + 5) = *(a2 + 5);
    result[4] = 0;
    result[5] = 0;
    result[3] = 0;
    result[3] = a2[3];
    a2[3] = 0;
    v7 = result[4];
    v8 = a2[5];
    result[4] = a2[4];
    result[5] = v8;
    a2[4] = v7;
    a2[5] = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage((result + 6), a2 + 6, a3, a4);
    v9 = a2[9];
    *(v5 + 77) = *(a2 + 77);
    v5[9] = v9;
    v5[11] = a2[11];
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 24 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      v10 = (v9 + v7);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 8), a2, a3, a4);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v11, v12, v13);
      ++v8;
      v7 += 24;
      if (v8 >= *a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x112, "reduce_size", a5);
  _os_crash();
  __break(1u);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *result + a3;
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  if (v5 <= result[1])
  {
    v7 = a3;
    if (!a3)
    {
LABEL_7:
      *v6 = v5;
      return result;
    }

    v8 = 0;
    v9 = (a2 + 16);
    while (1)
    {
      v10 = v6[2] + 24 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 2), a3, a4);
      v11 = v10 + v8;
      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v11 + 8), *(v9 - 1), v12, v13);
      v14 = *v9;
      v9 += 3;
      *(v11 + 16) = v14;
      v8 += 24;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x138, "append", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::interrupt_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x18uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 24 * a2, 0x10600408C6D3DB4uLL);
    a1[1] = v5;
    if (v5)
    {
      return a1;
    }
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x56, "buffer", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x56, "buffer", v8);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v6);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v9);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::interrupt_spec>::buffer(&v15, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    while (v16)
    {
      v8 = v16 + v6;
      v9 = (a1[2] + v6);
      v10 = *v9;
      *v9 = 0;
      *v8 = v10;
      v11 = v9[1];
      v9[1] = 0;
      v8[1] = v11;
      v8[2] = v9[2];
      ++v7;
      v6 += 24;
      if (v7 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v12 = v15;
  v13 = v16;
  v15 = 0;
  v16 = 0;
  v14 = a1[2];
  a1[1] = v12;
  a1[2] = v13;
  if (v14)
  {
    free(v14);
    if (v16)
    {
      free(v16);
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::interrupt_spec::parse(ashp::acipc::config::interrupt_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_spec>(ashp::dynamic_array<ashp::acipc::config::interrupt_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::interrupt_spec::parse(ashp::acipc::config::interrupt_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_spec>(ashp::dynamic_array<ashp::acipc::config::interrupt_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    HIDWORD(v70) = 0;
    v68 = 0;
    v69 = 0;
    LOWORD(v70) = 0;
    v9 = *(a3 + 8);
    v10 = *v9;
    if (a2)
    {
      v11 = CFGetTypeID(a2);
      if (v11 != CFDictionaryGetTypeID())
      {
        a2 = 0;
      }

      if (a2)
      {
        v75 = 0;
        if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v70, a2, @"vector", v10))
        {
          value = ashp::boxed::dictionary::get_value(a2, @"multi", v14, v15);
          v17 = value;
          if (value)
          {
            v18 = CFGetTypeID(value);
            if (v18 != CFDictionaryGetTypeID())
            {
              v17 = 0;
            }

            if (!v17)
            {
              v24 = "unexpected object type";
              goto LABEL_27;
            }

            if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v70 + 1, v17, @"count", v10))
            {
LABEL_28:
              set_error_location(v10, @"multi", v22, v23);
              goto LABEL_47;
            }

            if (ashp::boxed::dictionary::count(v17, v21, v22, v23) != 1)
            {
              v24 = "unknown keys present";
LABEL_27:
              set_error(v10, v24, 0, v19, v20);
              goto LABEL_28;
            }
          }

          else
          {
            HIDWORD(v70) = 1;
            v75 = 1;
          }

          v73 = 0;
          v74 = 0;
          v25 = _Z24parse_field_with_defaultIXadL_Z14parse_optionalIXadL_ZL12parse_symbolPN4ashp14refcounted_ptrINS1_5boxed6symbolENS1_2cf15refcount_policyEEENS3_6objectEPNS1_5acipc6config13error_contextEEES7_EbPNS1_8optionalIT0_NS1_15optional_traitsISF_vE16default_sentinelEEES9_SD_EENSE_IS7_NS1_17optional_sentinelIXtlNS1_9nullopt_tEEELb1EEEEEEbPSF_NSt3__113type_identityISF_E4typeENS3_10dictionaryES4_SD_Pm(&v74, &v73, a2, @"queue", v10, &v75);
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v73, v26, v27, v28);
          if (v25)
          {
            v71 = 0;
            if (_ZNK4ashp8optionalINS_14refcounted_ptrINS_5boxed6symbolENS_2cf15refcount_policyEEENS_17optional_sentinelIXtlNS_9nullopt_tEEELb1EEEE9has_valueEv(&v74, v29, v30, v31))
            {
              v34 = v74;
            }

            else
            {
              v34 = 0;
            }

            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v72, v34, v32, v33);
            v35 = v69;
            v69 = v72;
            v72 = v35;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v72, v36, v37, v38);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v71, v39, v40, v41);
            v45 = ashp::boxed::dictionary::count(a2, v42, v43, v44);
            if (v75 + v45 == 3)
            {
              v47 = 1;
              goto LABEL_31;
            }

            set_error(v10, "unknown keys present", 0, v31, v46);
          }

          v47 = 0;
LABEL_31:
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v74, v29, v30, v31);
          if ((v47 & 1) == 0)
          {
            goto LABEL_47;
          }

          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v75, cf, v14, v15);
          v48 = v68;
          v68 = v75;
          v75 = v48;
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v75, v49, v50, v51);
          v56 = **(a3 + 16);
          v57 = *v56;
          v58 = *v56 + 1;
          if (*v56 == -1)
          {
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v54);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v67);
            _os_crash();
            __break(1u);
          }

          else
          {
            v59 = v56[1];
            if (v58 > v59)
            {
              if (v59 <= 8)
              {
                v52 = 8;
              }

              else
              {
                v52 = v56[1];
              }

              if (v58 >= 9)
              {
                do
                {
                  if (is_mul_ok(v52, 3uLL))
                  {
                    v52 = (3 * v52) >> 1;
                  }

                  else
                  {
                    v52 = *v56 + 1;
                  }
                }

                while (v52 < v58);
              }

              if (v59 < v52)
              {
                ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::set_capacity(v56, v52, v53, v54, v55);
                v57 = *v56;
                v59 = v56[1];
              }
            }

            if (v57 < v59)
            {
              v60 = v56[2];
              if (v60)
              {
                v61 = (v60 + 24 * v57);
                v62 = v68;
                v68 = 0;
                *v61 = v62;
                v63 = v69;
                v69 = 0;
                v61[1] = v63;
                v61[2] = v70;
                ++*v56;
LABEL_48:
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v69, v52, v53, v54);
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v68, v64, v65, v66);
                return;
              }

LABEL_52:
              __break(1u);
              return;
            }
          }

          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v55);
          _os_crash();
          goto LABEL_52;
        }
      }

      else
      {
        set_error(v10, "unexpected object type", 0, v12, v13);
      }
    }

    else
    {
      set_error(*v9, "missing object", 0, a4, a5);
    }

LABEL_47:
    set_error_location(**(a3 + 8), cf, v14, v15);
    **a3 = 1;
    goto LABEL_48;
  }
}

void sub_23ECCD1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a12, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&a15, v16, v17, v18);
  ashp::acipc::config::interrupt_spec::~interrupt_spec(&a9, v19, v20, v21);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::acipc_driver::handle_get_nominal_state_dump_size(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);
  if (this[1050]._os_unfair_lock_opaque)
  {
    ashp::optional<ashp::acipc::config::acipc_config,void>::value(&this[956], v2, v3, v4);
    return this[988]._os_unfair_lock_opaque;
  }

  else
  {
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", 0x531, "handle_get_nominal_state_dump_size", v4);
    return 0;
  }
}

void ashp::acipc::acipc_driver::handle_append_ipc_driver_state_dump(ashp::acipc::acipc_driver *this, debug_info_capture *a2)
{
  os_unfair_lock_assert_owner(this + 2);
  if (!a2)
  {
    v65 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x517, "handle_append_ipc_driver_state_dump", v7);
    _os_crash();
    __break(1u);
LABEL_37:
    v84 = "copy_debug_info";
    v85 = 77;
    v86 = "driver_debug_object.hpp";
LABEL_39:
    ashp::detail::control_flow::log_guard_else_failure(v86, v85, v84, v71);
    goto LABEL_33;
  }

  if (*(this + 5624) != 1)
  {
    goto LABEL_25;
  }

  ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(this + 5264, v4, v5, v6);
  v8 = (this + 5528);
  os_unfair_lock_lock(this + 1382);
  debug_object_alloc_size = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(this + 5528, v9, v10, v11);
  v15 = debug_object_alloc_size + 16;
  if (debug_object_alloc_size >= 0xFFFFFFF0)
  {
    v87 = "copy_debug_info";
    v88 = 77;
    v89 = "driver_debug_object.hpp";
    goto LABEL_44;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v15, v13, v14))
  {
    v18 = (*a2 + *(a2 + 3));
    v18->i32[0] = *(this + 1386);
    v18->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::get_debug_object_alloc_size(this + 5528, v16, v17, v14);
    v18[1] = vrev64_s32(*(this + 5536));
    if (*(this + 694))
    {
      v20 = 0;
      v21 = v18 + 2;
      v22 = 1;
      do
      {
        *v21[2 * v20].i8 = *ashp::dynamic_array<ashp::acipc::detail::driver_debug::acipc_transfer_size_info>::operator[](this + 694, v20, v19, v14);
        v20 = v22;
        v23 = *(this + 694) > v22++;
      }

      while (v23);
    }
  }

  v24 = *(a2 + 3) + v15;
  *(a2 + 3) = v24;
  if (HIDWORD(v24))
  {
    goto LABEL_43;
  }

  while (1)
  {
    os_unfair_lock_unlock(v8);
    os_unfair_lock_lock(this + 1394);
    v28 = ashp::driver_debug_object<ashp::acipc::detail::doorbell_coordinator::state_change_record>::get_debug_object_alloc_size(this + 5576, v25, v26, v27);
    v31 = v28 + 16;
    if (v28 >= 0xFFFFFFF0)
    {
      v90 = "copy_debug_info";
      v91 = 77;
      v92 = "driver_debug_object.hpp";
LABEL_46:
      ashp::detail::control_flow::log_guard_else_failure(v92, v91, v90, v30);
      goto LABEL_15;
    }

    if (debug_info_capture::validate_buffer_bounds(a2, v31, v29, v30))
    {
      v34 = (*a2 + *(a2 + 3));
      v34->i32[0] = *(this + 1398);
      v34->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::doorbell_coordinator::state_change_record>::get_debug_object_alloc_size(this + 5576, v32, v33, v30);
      v34[1] = vrev64_s32(*(this + 5584));
      if (*(this + 700))
      {
        v36 = 0;
        v37 = v34 + 2;
        v38 = 1;
        do
        {
          v39 = ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::state_change_record>::operator[](this + 700, v36, v35, v30);
          v40 = v37 + 19 * v36;
          v41 = *v39;
          *(v40 + 15) = *(v39 + 15);
          *v40 = v41;
          v36 = v38;
          v23 = *(this + 700) > v38++;
        }

        while (v23);
      }
    }

    v42 = *(a2 + 3) + v31;
    *(a2 + 3) = v42;
    if (HIDWORD(v42))
    {
      v90 = "advance_buffer_pointer";
      v91 = 108;
      v92 = "debug_infra.hpp";
      goto LABEL_46;
    }

LABEL_15:
    os_unfair_lock_unlock(this + 1394);
    v8 = (this + 5280);
    os_unfair_lock_lock(this + 1320);
    if (*(this + 5408))
    {
      break;
    }

    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "timer.cpp", 0x1DC, "append_debug_stats", v46);
    _os_crash();
    __break(1u);
LABEL_43:
    v87 = "advance_buffer_pointer";
    v88 = 108;
    v89 = "debug_infra.hpp";
LABEL_44:
    ashp::detail::control_flow::log_guard_else_failure(v89, v88, v87, v14);
  }

  if (*(this + 5400) != 1)
  {
    goto LABEL_24;
  }

  ashp::optional<ashp::acipc::ring_manager::cr_open_parameters,void>::value(this + 5336, v43, v44, v45);
  os_unfair_lock_lock(this + 1338);
  v50 = ashp::driver_debug_object<ashp::debug::timer::timer_debug_info>::get_debug_object_alloc_size(this + 5352, v47, v48, v49);
  v53 = v50 + 16;
  if (v50 >= 0xFFFFFFF0)
  {
    v93 = "copy_debug_info";
    v94 = 77;
    v95 = "driver_debug_object.hpp";
LABEL_49:
    ashp::detail::control_flow::log_guard_else_failure(v95, v94, v93, v52);
    goto LABEL_23;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v53, v51, v52))
  {
    v56 = (*a2 + *(a2 + 3));
    v56->i32[0] = *(this + 1342);
    v56->i32[1] = ashp::driver_debug_object<ashp::debug::timer::timer_debug_info>::get_debug_object_alloc_size(this + 5352, v54, v55, v52);
    v56[1] = vrev64_s32(*(this + 5360));
    if (*(this + 672))
    {
      v58 = 0;
      v59 = 1;
      do
      {
        v60 = ashp::dynamic_array<ashp::debug::timer::timer_debug_info>::operator[](this + 672, v58, v57, v52);
        v61 = (&v56[2] + 41 * v58);
        v62 = *v60;
        v63 = v60[1];
        *(v61 + 25) = *(v60 + 25);
        *v61 = v62;
        v61[1] = v63;
        v58 = v59;
        v23 = *(this + 672) > v59++;
      }

      while (v23);
    }
  }

  v64 = *(a2 + 3) + v53;
  *(a2 + 3) = v64;
  if (HIDWORD(v64))
  {
    v93 = "advance_buffer_pointer";
    v94 = 108;
    v95 = "debug_infra.hpp";
    goto LABEL_49;
  }

LABEL_23:
  os_unfair_lock_unlock(this + 1338);
LABEL_24:
  os_unfair_lock_unlock(this + 1320);
LABEL_25:
  if (*(this + 4872) == 1)
  {
    ashp::optional<ashp::acipc::ring_manager,void>::value(this + 4264, v4, v5, v6);
    ashp::acipc::ring_manager::append_state_dump(this + 1066, a2);
  }

  os_unfair_lock_assert_owner(this + 2);
  v65 = (this + 6072);
  os_unfair_lock_lock(this + 1518);
  v69 = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::get_debug_object_alloc_size(this + 6072, v66, v67, v68);
  v72 = v69 + 16;
  if (v69 >= 0xFFFFFFF0)
  {
    goto LABEL_37;
  }

  if (debug_info_capture::validate_buffer_bounds(a2, v72, v70, v71))
  {
    v75 = (*a2 + *(a2 + 3));
    v75->i32[0] = *(this + 1522);
    v75->i32[1] = ashp::driver_debug_object<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::get_debug_object_alloc_size(this + 6072, v73, v74, v71);
    v75[1] = vrev64_s32(*(this + 6080));
    if (*(this + 762))
    {
      v77 = 0;
      v78 = v75 + 2;
      v79 = 1;
      do
      {
        v80 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::operator[](this + 762, v77, v76, v71);
        v81 = &v78[3 * v77];
        v82 = *v80;
        v81[2] = *(v80 + 16);
        *v81->i8 = v82;
        v77 = v79;
        v23 = *(this + 762) > v79++;
      }

      while (v23);
    }
  }

  v83 = *(a2 + 3) + v72;
  *(a2 + 3) = v83;
  if (HIDWORD(v83))
  {
    v84 = "advance_buffer_pointer";
    v85 = 108;
    v86 = "debug_infra.hpp";
    goto LABEL_39;
  }

LABEL_33:

  os_unfair_lock_unlock(v65);
}

void sub_23ECCD83C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 1338);
  os_unfair_lock_unlock(v1);
  _Unwind_Resume(a1);
}

unint64_t ashp::driver_debug_object<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::get_debug_object_alloc_size(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!is_mul_ok(v4, 0x18uLL) || (result = 24 * v4, (24 * v4) >> 32))
  {
    ashp::detail::control_flow::log_guard_else_failure("driver_debug_object.hpp", 0x3E, "get_debug_object_alloc_size", a4);
    return 0;
  }

  return result;
}

uint64_t ashp::dynamic_array<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::operator[](unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1 > a2)
  {
    return a1[2] + 24 * a2;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::acipc_driver::handle_set_power_target(os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);

  ashp::acipc::acipc_driver::sleep_state_machine(this);
}

void ashp::acipc::acipc_driver::sleep_state_machine(const os_unfair_lock *this)
{
  v4 = this;
  v113 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v5 = 5736;
  *buf = 4;
  LOBYTE(v104) = 1;
  v8 = ashp::operator==<int,0>(&v4[1434], buf, v6, v7);
  if (v8 && *&v4[58]._os_unfair_lock_opaque)
  {
    os_unfair_lock_assert_owner(v4 + 2);
    *buf = 4;
    LOBYTE(v104) = 1;
    if ((ashp::operator==<int,0>(&v4[1434], buf, v9, v10) & 1) == 0)
    {
      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x3AD, "is_sleep_status_valid", v14);
      _os_crash();
      __break(1u);
      goto LABEL_156;
    }

    v3 = v4 + 1024;
    v1 = 1440;
    v2 = 1436;
    v5 = &qword_23ED06000;
    if (v4[1441]._os_unfair_lock_opaque)
    {
      v15 = ashp::optional<unsigned int,void>::value(&v4[1436], v11, v12, v13);
      os_unfair_lock_opaque = v4[1436]._os_unfair_lock_opaque;
      if (os_unfair_lock_opaque > 2)
      {
        if (os_unfair_lock_opaque == 3)
        {
          *buf = 3;
          LOBYTE(v104) = 1;
          if (ashp::operator==<int,0>(&v4[1440], buf, v16, v17))
          {
            goto LABEL_30;
          }

          v101 = 0;
          v102 = 1;
          if (ashp::operator==<int,0>(&v4[1440], &v101, v20, v21))
          {
            goto LABEL_30;
          }

          v99 = 1;
          v100 = 1;
          v15 = ashp::operator==<int,0>(&v4[1440], &v99, v20, v21);
        }

        else
        {
          if (os_unfair_lock_opaque == 4)
          {
            *buf = 1;
            LOBYTE(v104) = 1;
            if (ashp::operator==<int,0>(&v4[1440], buf, v16, v17))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (os_unfair_lock_opaque != 5)
            {
LABEL_21:
              v23 = v4[1435]._os_unfair_lock_opaque;
              v4[1434]._os_unfair_lock_opaque = 5;
              if ((v23 & 1) == 0)
              {
                LOBYTE(v4[1435]._os_unfair_lock_opaque) = 1;
              }

              log_level = ashp::detail::logging::get_log_level(v15);
              if (log_level >= 2)
              {
                log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (log_level)
                {
                  *buf = 136446722;
                  v104 = "acipc_driver.cpp";
                  v105 = 1024;
                  v106 = 815;
                  v107 = 2082;
                  v108 = "sleep_state_machine";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status invalid", buf, 0x1Cu);
                }
              }

              if (!ashp::detail::logging::get_log_level(log_level))
              {
                goto LABEL_29;
              }

              if (airship_platform_get_global_logger::once == -1)
              {
LABEL_28:
                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status invalid", "acipc_driver.cpp", 815, "sleep_state_machine");
LABEL_29:
                ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
                ashp::acipc::acipc_driver::raise_ipc_error(v4, 16);
                goto LABEL_30;
              }

LABEL_156:
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              goto LABEL_28;
            }

            *buf = 1;
            LOBYTE(v104) = 1;
            if (ashp::operator==<int,0>(&v4[1440], buf, v16, v17))
            {
              goto LABEL_30;
            }
          }

          v101 = 0;
          v102 = 1;
          v15 = ashp::operator==<int,0>(&v4[1440], &v101, v20, v21);
        }
      }

      else if (os_unfair_lock_opaque)
      {
        if (os_unfair_lock_opaque == 1)
        {
          *buf = 0;
          LOBYTE(v104) = 1;
          if (ashp::operator==<int,0>(&v4[1440], buf, v16, v17))
          {
            goto LABEL_30;
          }

          v101 = 1;
          v102 = 1;
          if (ashp::operator==<int,0>(&v4[1440], &v101, v20, v21))
          {
            goto LABEL_30;
          }

          v99 = 3;
          v100 = 1;
          v15 = ashp::operator==<int,0>(&v4[1440], &v99, v20, v21);
        }

        else
        {
          if (os_unfair_lock_opaque != 2)
          {
            goto LABEL_21;
          }

          *buf = 3;
          LOBYTE(v104) = 1;
          v15 = ashp::operator==<int,0>(&v4[1440], buf, v16, v17);
        }
      }

      else
      {
        *buf = 0;
        LOBYTE(v104) = 1;
        if (ashp::operator==<int,0>(&v4[1440], buf, v16, v17))
        {
          goto LABEL_30;
        }

        v101 = 1;
        v102 = 1;
        v15 = ashp::operator==<int,0>(&v4[1440], &v101, v20, v21);
      }
    }

    else
    {
      *buf = 0;
      LOBYTE(v104) = 1;
      if (ashp::operator==<int,0>(&v4[1436], buf, v12, v13))
      {
        goto LABEL_30;
      }

      v101 = 1;
      v102 = 1;
      v15 = ashp::operator==<int,0>(&v4[1436], &v101, v20, v21);
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_30:
    v25 = v4[60]._os_unfair_lock_opaque;
    v98 = *(v5 + 40);
    while (1)
    {
      ashp::optional<unsigned int,void>::value(&v4[v2], v19, v20, v21);
      v26 = v4[v2]._os_unfair_lock_opaque;
      v30 = ashp::optional<unsigned int,void>::value(&v4[v2], v27, v28, v29);
      v33 = v4[v2]._os_unfair_lock_opaque;
      if (v33 <= 2)
      {
        if (v33)
        {
          if (v33 == 1)
          {
            *buf = 3;
            LOBYTE(v104) = 1;
            v61 = ashp::operator==<int,0>(&v4[v1], buf, v31, v32);
            if (v61)
            {
              v62 = ashp::detail::logging::get_log_level(v61);
              if (v62 >= 4)
              {
                v62 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v62)
                {
                  *buf = v98;
                  v104 = "acipc_driver.cpp";
                  v105 = 1024;
                  v106 = 855;
                  v107 = 2082;
                  v108 = "sleep_state_machine";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: host sleep", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v62))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: host sleep", "acipc_driver.cpp", 855, "sleep_state_machine");
              }

              v63 = v3[413]._os_unfair_lock_opaque;
              v4[v2]._os_unfair_lock_opaque = 2;
              if ((v63 & 1) == 0)
              {
                LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
              ashp::driver::update_power_state(v4, 2);
            }
          }

          else if (v33 == 2 && v25 != 2)
          {
            v34 = ashp::detail::logging::get_log_level(v30);
            if (v34 >= 4)
            {
              v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v34)
              {
                *buf = v98;
                v104 = "acipc_driver.cpp";
                v105 = 1024;
                v106 = 864;
                v107 = 2082;
                v108 = "sleep_state_machine";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exiting host sleep", buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v34))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exiting host sleep", "acipc_driver.cpp", 864, "sleep_state_machine");
            }

            if (LOBYTE(v3[519]._os_unfair_lock_opaque) == 1)
            {
              exec_stage_register = ashp::acipc::acipc_driver::read_exec_stage_register(v4);
              v36 = ashp::detail::logging::get_log_level(exec_stage_register);
              if (v36 >= 4)
              {
                v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v36)
                {
                  *buf = 136446978;
                  v104 = "acipc_driver.cpp";
                  v105 = 1024;
                  v106 = 869;
                  v107 = 2082;
                  v108 = "sleep_state_machine";
                  v109 = 1024;
                  *v110 = exec_stage_register;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exec_stage during power-on=%u", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v36))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exec_stage during power-on=%u", "acipc_driver.cpp", 869, "sleep_state_machine", exec_stage_register);
              }
            }

            ashp::acipc::acipc_driver::update_sleep_control_register(v4, 0);
            v37 = v3[413]._os_unfair_lock_opaque;
            v4[1436]._os_unfair_lock_opaque = 3;
            if ((v37 & 1) == 0)
            {
              LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
            }

            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
            ashp::driver::update_power_state(v4, 4);
          }
        }

        else if (v25 == 2)
        {
          v48 = ashp::detail::logging::get_log_level(v30);
          if (v48 >= 4)
          {
            v48 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v48)
            {
              *buf = v98;
              v104 = "acipc_driver.cpp";
              v105 = 1024;
              v106 = 830;
              v107 = 2082;
              v108 = "sleep_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering host sleep", buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v48))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering host sleep", "acipc_driver.cpp", 830, "sleep_state_machine");
          }

          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v4[1316], v49, v50, v51);
          ashp::acipc::doorbell_coordinator::suspend(v4 + 1316, v52, v53, v54, v55);
          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 3);
          v56 = v3[413]._os_unfair_lock_opaque;
          v4[1436]._os_unfair_lock_opaque = 1;
          if ((v56 & 1) == 0)
          {
            LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          ashp::driver::update_power_state(v4, 3);
        }

        else
        {
          *buf = 1;
          LOBYTE(v104) = 1;
          v80 = ashp::operator==<int,0>(&v4[v1], buf, v31, v32);
          if ((v80 & (v25 == 0)) == 1)
          {
            v81 = ashp::detail::logging::get_log_level(v80);
            if (v81 >= 4)
            {
              v81 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v81)
              {
                *buf = v98;
                v104 = "acipc_driver.cpp";
                v105 = 1024;
                v106 = 839;
                v107 = 2082;
                v108 = "sleep_state_machine";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering device sleep", buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v81))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering device sleep", "acipc_driver.cpp", 839, "sleep_state_machine");
            }

            ashp::async_notifier::resume((*&v4[1444]._os_unfair_lock_opaque + 16), v82, v83, v84);
            os_unfair_lock_lock(v4 + 1442);
            LOWORD(v3[419]._os_unfair_lock_opaque) = 1;
            os_unfair_lock_unlock(v4 + 1442);
            ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v4[1316], v85, v86, v87);
            ashp::acipc::doorbell_coordinator::suspend(v4 + 1316, v88, v89, v90, v91);
            ashp::acipc::acipc_driver::update_sleep_control_register(v4, 1);
            v92 = v3[413]._os_unfair_lock_opaque;
            v4[1436]._os_unfair_lock_opaque = 4;
            if ((v92 & 1) == 0)
            {
              LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
            }

            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
            ashp::driver::update_power_state(v4, 1);
          }
        }

        goto LABEL_138;
      }

      if (v33 == 3)
      {
        break;
      }

      if (v33 == 4)
      {
        os_unfair_lock_lock(v4 + 1442);
        v64 = BYTE1(v3[419]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v4 + 1442);
        *buf = 0;
        LOBYTE(v104) = 1;
        v67 = ashp::operator==<int,0>(&v4[v1], buf, v65, v66);
        if (v67)
        {
          v68 = ashp::detail::logging::get_log_level(v67);
          if (v68 >= 4)
          {
            v68 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v68)
            {
              *buf = v98;
              v104 = "acipc_driver.cpp";
              v105 = 1024;
              v106 = 893;
              v107 = 2082;
              v108 = "sleep_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: active", buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v68))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: active", "acipc_driver.cpp", 893, "sleep_state_machine");
          }

          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 0);
          v69 = v3[413]._os_unfair_lock_opaque;
          v4[1436]._os_unfair_lock_opaque = 0;
          if ((v69 & 1) == 0)
          {
            LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          os_unfair_lock_lock(v4 + 1442);
          LOBYTE(v3[419]._os_unfair_lock_opaque) = 0;
          os_unfair_lock_unlock(v4 + 1442);
          ashp::async_notifier::suspend((*&v4[1444]._os_unfair_lock_opaque + 16), v70, v71, v72);
          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v4[1316], v73, v74, v75);
          ashp::acipc::doorbell_coordinator::resume(v4 + 1316, v76, v77, v78, v79);
          ashp::driver::update_power_state(v4, 0);
        }

        else if (v64 & 1 | (v25 != 0))
        {
          v93 = ashp::detail::logging::get_log_level(v67);
          if (v93 >= 4)
          {
            v93 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v93)
            {
              *buf = 136447490;
              v104 = "acipc_driver.cpp";
              v105 = 1024;
              v106 = 907;
              v107 = 2082;
              v108 = "sleep_state_machine";
              v109 = 1024;
              *v110 = v64;
              *&v110[4] = 1024;
              *&v110[6] = v25 == 2;
              v111 = 1024;
              v112 = v25 == 0;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] wake requested=%u, target host sleep=%u, permit device sleep=%u", buf, 0x2Eu);
            }
          }

          if (ashp::detail::logging::get_log_level(v93))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] wake requested=%u, target host sleep=%u, permit device sleep=%u", "acipc_driver.cpp", 907, "sleep_state_machine", v64, v25 == 2, v25 == 0);
          }

          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 2);
          v94 = v3[413]._os_unfair_lock_opaque;
          v4[1436]._os_unfair_lock_opaque = 5;
          if ((v94 & 1) == 0)
          {
            LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          ashp::async_notifier::suspend((*&v4[1444]._os_unfair_lock_opaque + 16), v95, v96, v97);
        }

        goto LABEL_138;
      }

      if (v33 == 5)
      {
        *buf = 0;
        LOBYTE(v104) = 1;
        v38 = ashp::operator==<int,0>(&v4[v1], buf, v31, v32);
        if (v38)
        {
          v39 = ashp::detail::logging::get_log_level(v38);
          if (v39 >= 4)
          {
            v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v39)
            {
              *buf = v98;
              v104 = "acipc_driver.cpp";
              v105 = 1024;
              v106 = 918;
              v107 = 2082;
              v108 = "sleep_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: active", buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v39))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: active", "acipc_driver.cpp", 918, "sleep_state_machine");
          }

          os_unfair_lock_lock(v4 + 1442);
          LOBYTE(v3[419]._os_unfair_lock_opaque) = 0;
          os_unfair_lock_unlock(v4 + 1442);
          ashp::acipc::acipc_driver::update_sleep_control_register(v4, 0);
          v40 = v3[413]._os_unfair_lock_opaque;
          v4[1436]._os_unfair_lock_opaque = 0;
          if ((v40 & 1) == 0)
          {
            LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
          }

LABEL_67:
          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v4);
          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v4[1316], v41, v42, v43);
          ashp::acipc::doorbell_coordinator::resume(v4 + 1316, v44, v45, v46, v47);
          ashp::driver::update_power_state(v4, 0);
        }
      }

LABEL_138:
      *buf = v26;
      LOBYTE(v104) = 1;
      if (ashp::operator==<int,0>(&v4[v2], buf, v31, v32))
      {
        return;
      }
    }

    *buf = 0;
    LOBYTE(v104) = 1;
    if ((ashp::operator==<int,0>(&v4[v1], buf, v31, v32) & 1) == 0)
    {
      v101 = 1;
      v102 = 1;
      if ((ashp::operator==<int,0>(&v4[v1], &v101, v31, v32) & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    v101 = 0;
    v102 = 1;
    v57 = ashp::operator==<int,0>(&v4[v1], &v101, v31, v32);
    if (v57)
    {
      v58 = "active";
    }

    else
    {
      v58 = "device sleep";
    }

    v59 = ashp::detail::logging::get_log_level(v57);
    if (v59 >= 4)
    {
      v59 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v59)
      {
        *buf = 136446978;
        v104 = "acipc_driver.cpp";
        v105 = 1024;
        v106 = 880;
        v107 = 2082;
        v108 = "sleep_state_machine";
        v109 = 2080;
        *v110 = v58;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] sleep status: %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(v59))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] sleep status: %s", "acipc_driver.cpp", 880, "sleep_state_machine", v58);
    }

    v60 = v3[413]._os_unfair_lock_opaque;
    v4[v2]._os_unfair_lock_opaque = 0;
    if ((v60 & 1) == 0)
    {
      LOBYTE(v3[413]._os_unfair_lock_opaque) = 1;
    }

    goto LABEL_67;
  }

  v22 = ashp::detail::logging::get_log_level(v8);
  if (v22 >= 2)
  {
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      *buf = 136446978;
      v104 = "acipc_driver.cpp";
      v105 = 1024;
      v106 = 810;
      v107 = 2082;
      v108 = "sleep_state_machine";
      v109 = 1024;
      *v110 = 4;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] main ipc state is not running (%u) or transport is not set", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v22))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] main ipc state is not running (%u) or transport is not set", "acipc_driver.cpp", 810, "sleep_state_machine", 4);
  }
}

void ashp::acipc::acipc_driver::update_ipc_driver_debug_state(ashp::acipc::acipc_driver *this)
{
  v2 = this + 4096;
  v6 = mach_continuous_time();
  if (v2[1652] == 1)
  {
    ashp::optional<unsigned int,void>::value(this + 5744, v3, v4, v5);
    v7 = *(this + 1436);
  }

  else
  {
    v7 = -1;
  }

  if (v2[1660] == 1)
  {
    v8 = *(this + 1438);
  }

  else
  {
    v8 = -1;
  }

  if (v2[1644] == 1)
  {
    ashp::optional<unsigned int,void>::value(this + 5736, v3, v4, v5);
    v9 = *(this + 1434);
  }

  else
  {
    v9 = -1;
  }

  if (v2[1668] == 1)
  {
    v10 = *(this + 1440);
  }

  else
  {
    v10 = -1;
  }

  os_unfair_lock_lock(this + 1518);
  if (*(this + 1519))
  {
    v13 = ashp::dynamic_array<ashp::acipc::detail::driver_debug::ipc_state_debug_info>::operator[](this + 762, *(this + 1520), v11, v12);
    *v13 = v6;
    *(v13 + 8) = v9;
    *(v13 + 12) = v7;
    *(v13 + 16) = v8;
    *(v13 + 20) = v10;
    v14 = *(this + 1520);
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      v17 = *(this + 1519);
    }

    else
    {
      v17 = 0;
    }

    *(this + 1520) = (v16 - v17) % *(this + 1519);
  }

  os_unfair_lock_unlock(this + 1518);
}

void ashp::acipc::acipc_driver::raise_ipc_error(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v25 = *MEMORY[0x277D85DE8];
  ipc_error_description = airship_acipc_get_ipc_error_description(a2);
  log_level = ashp::detail::logging::get_log_level(ipc_error_description);
  if (log_level >= 1)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      *&buf[4] = "acipc_driver.cpp";
      v17 = 1024;
      v18 = 978;
      v19 = 2082;
      v20 = "raise_ipc_error";
      v21 = 1024;
      v22 = v2;
      v23 = 2080;
      v24 = ipc_error_description;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ACIPC protocol error 0x%08x (%s)", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ACIPC protocol error 0x%08x (%s)", "acipc_driver.cpp", 978, "raise_ipc_error", v2, ipc_error_description);
  }

  *buf = 0;
  v6 = os_parse_boot_arg_int();
  v8 = *buf;
  if (!v6)
  {
    v8 = 0;
  }

  if ((v8 & v2) != 0)
  {
    ashp::detail::base::log_pre_crash_message("Airship ACIPC protocol error", "acipc_driver.cpp", 0x3D7, "raise_ipc_error", v7);
    _os_crash();
    __break(1u);
  }

  os_unfair_lock_lock((a1 + 248));
  os_unfair_lock_lock((a1 + 252));
  if (*(a1 + 257))
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 336) | v2;
  v11 = ashp::detail::logging::get_log_level(v9);
  if (v11 >= 3)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v12 = *(a1 + 336);
      *buf = 136447234;
      *&buf[4] = "driver.cpp";
      v18 = 399;
      v19 = 2082;
      v17 = 1024;
      v20 = "set_ipc_error_flags";
      v21 = 1024;
      v22 = v10;
      v23 = 1024;
      LODWORD(v24) = v12;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updated error state: %u, current %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(v11))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updated error state: %u, current %u", "driver.cpp", 399, "set_ipc_error_flags", v10, *(a1 + 336));
  }

  if (*(a1 + 336) == v10)
  {
LABEL_20:
    os_unfair_lock_unlock((a1 + 252));
  }

  else
  {
    *(a1 + 336) = v10;
    os_unfair_lock_unlock((a1 + 252));
    if (*(a1 + 256) == 1 && *(a1 + 344))
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((a1 + 344), v13, v14, v15);
      (*(*(a1 + 344) + 16))();
    }
  }

  os_unfair_lock_unlock((a1 + 248));
}

pthread_rwlock_t **ashp::acipc::acipc_driver::update_sleep_control_register(const os_unfair_lock *this, const char *a2)
{
  os_unfair_lock_assert_owner(this + 2);
  v5 = *&this[1432]._os_unfair_lock_opaque;
  if (!v5 || (v6 = *&this[58]._os_unfair_lock_opaque) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x47E, "update_sleep_control_register", v4);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v5 + 40);
  if (v7 != 4)
  {
    if (v7 == 2)
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 36);

      return ashp::device_transport::mem_write16(v6, v8, v9, a2);
    }

LABEL_12:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x48A, "update_sleep_control_register", v4);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v11 = *(v5 + 32);
  v12 = *(v5 + 36);

  return ashp::device_transport::mem_write32(v6, v11, v12, a2);
}

uint64_t ashp::acipc::acipc_driver::read_exec_stage_register(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);
  if ((this[6]._os_unfair_lock_opaque & 1) != 0 || !*&this[58]._os_unfair_lock_opaque)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x447, "read_exec_stage_register", v5);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  ashp::optional<ashp::acipc::config::acipc_config,void>::value(&this[956], v2, v3, v4);
  if (LOBYTE(this[1004]._os_unfair_lock_opaque) != 4)
  {
LABEL_8:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x449, "read_exec_stage_register", v7);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = *&this[58]._os_unfair_lock_opaque;
  os_unfair_lock_opaque_low = LOBYTE(this[1002]._os_unfair_lock_opaque);
  os_unfair_lock_opaque = this[1003]._os_unfair_lock_opaque;

  return ashp::device_transport::mem_read32(v8, os_unfair_lock_opaque_low, os_unfair_lock_opaque, v6);
}

void ashp::acipc::acipc_driver::handle_probe_exec_stage(os_unfair_lock *this)
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v5 = "acipc_driver.cpp";
      v6 = 1024;
      v7 = 267;
      v8 = 2082;
      v9 = "handle_probe_exec_stage";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] probing exec stage register", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] probing exec stage register", "acipc_driver.cpp", 267, "handle_probe_exec_stage");
  }

  ashp::acipc::acipc_driver::probe_exec_stage_register_if_ready(this);
}

void ashp::acipc::acipc_driver::probe_exec_stage_register_if_ready(os_unfair_lock *this)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if ((this[3]._os_unfair_lock_opaque & 0x100) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x121, "probe_exec_stage_register_if_ready", v3);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if ((this[6]._os_unfair_lock_opaque & 1) == 0 && *&this[58]._os_unfair_lock_opaque)
  {
    exec_stage_register = ashp::acipc::acipc_driver::read_exec_stage_register(this);
    log_level = ashp::detail::logging::get_log_level(exec_stage_register);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v8 = "acipc_driver.cpp";
        v9 = 1024;
        v10 = 292;
        v11 = 2082;
        v12 = "probe_exec_stage_register_if_ready";
        v13 = 1024;
        v14 = exec_stage_register;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exec stage reg value=%u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exec stage reg value=%u", "acipc_driver.cpp", 292, "probe_exec_stage_register_if_ready", exec_stage_register);
    }

    ashp::acipc::acipc_driver::change_to_exec_stage(this, exec_stage_register);
    return;
  }

  v6 = ashp::detail::logging::get_log_level(v2);
  if (v6 >= 4)
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *buf = 136446722;
      v8 = "acipc_driver.cpp";
      v9 = 1024;
      v10 = 290;
      v11 = 2082;
      v12 = "probe_exec_stage_register_if_ready";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] not ready to probe exec stage register", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v6))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_17:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] not ready to probe exec stage register", "acipc_driver.cpp", 290, "probe_exec_stage_register_if_ready");
      return;
    }

LABEL_20:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_17;
  }
}

void ashp::acipc::acipc_driver::change_to_exec_stage(const os_unfair_lock *this, int a2)
{
  LODWORD(v5) = a2;
  v6 = this;
  v126 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (LOBYTE(v6[6]._os_unfair_lock_opaque) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x12C, "change_to_exec_stage", v7);
    _os_crash();
    __break(1u);
    goto LABEL_137;
  }

  v8 = *&v6[1428]._os_unfair_lock_opaque;
  if (v8 && *(v8 + 8) == v5)
  {
    return;
  }

  exec_stage_with_value = ashp::acipc::acipc_driver::find_exec_stage_with_value(v6, v5);
  if (exec_stage_with_value)
  {
    v3 = exec_stage_with_value;
    v111 = v6 + 1024;
    v14 = *(exec_stage_with_value + 16);
    v13 = (exec_stage_with_value + 16);
    if (!v14)
    {
      ashp::acipc::acipc_driver::teardown_current_ipc_stage(v6);
      goto LABEL_89;
    }

    v4 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v13, v10, v11, v12);
    os_unfair_lock_assert_owner(v6 + 2);
    if (LOBYTE(v6[6]._os_unfair_lock_opaque) != 1)
    {
      if (v4)
      {
        current_ipc_stage_name = ashp::acipc::acipc_driver::get_current_ipc_stage_name(v6);
        if (current_ipc_stage_name && CFStringCompare(current_ipc_stage_name, v4, 0) == kCFCompareEqualTo)
        {
          goto LABEL_89;
        }

        v110 = v5;
        ashp::optional<ashp::acipc::config::acipc_config,void>::value(&v6[956], v17, v18, v19);
        v5 = ashp::acipc::config::boot_ipc_stage_spec::lookup(*&v6[1014]._os_unfair_lock_opaque, *&v6[1018]._os_unfair_lock_opaque, v4, v20);
        ashp::optional<ashp::acipc::config::acipc_config,void>::value(&v6[956], v21, v22, v23);
        v25 = ashp::acipc::config::main_ipc_stage_spec::lookup(*&v6[1020]._os_unfair_lock_opaque, *&v6[1024]._os_unfair_lock_opaque, v4, v24);
        if (v5 && v25)
        {
          v6 = "BUG in Airship: ";
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x16E, "change_to_ipc_stage", v26);
          _os_crash();
          __break(1u);
          goto LABEL_143;
        }

        v109 = v25;
        ashp::acipc::acipc_driver::teardown_current_ipc_stage(v6);
        if (!v5)
        {
LABEL_87:
          v17 = v109;
          LODWORD(v5) = v110;
          if (v109)
          {
            ashp::acipc::acipc_driver::setup_main_ipc_stage(v6, v109, v3);
          }

LABEL_89:
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v3, v17, v18, v19);
          if (*v3)
          {
            CStringPtr = CFStringGetCStringPtr(*v3, 0x8000100u);
            if (CStringPtr)
            {
              v2 = CStringPtr;
            }

            else
            {
              v2 = "???";
            }
          }

          else
          {
            v2 = "(nil)";
          }

          v76 = *&v6[1428]._os_unfair_lock_opaque;
          if (v76)
          {
            v76 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v76, v72, v73, v74);
            if (v76)
            {
              v76 = CFStringGetCStringPtr(v76, 0x8000100u);
              if (v76)
              {
                v4 = v76;
              }

              else
              {
                v4 = "???";
              }
            }

            else
            {
              v4 = "(nil)";
            }
          }

          else
          {
            v4 = "None";
          }

          log_level = ashp::detail::logging::get_log_level(v76);
          if (log_level >= 4)
          {
            log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (log_level)
            {
              *buf = 136447490;
              *&buf[4] = "acipc_driver.cpp";
              v116 = 1024;
              v117 = 317;
              v118 = 2082;
              v119 = "change_to_exec_stage";
              v120 = 2080;
              v121 = v2;
              v122 = 1024;
              v123 = v5;
              v124 = 2080;
              v125 = v4;
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] change to exec stage %s (%u) from %s", buf, 0x36u);
            }
          }

          if (!ashp::detail::logging::get_log_level(log_level))
          {
            goto LABEL_107;
          }

          if (airship_platform_get_global_logger::once == -1)
          {
LABEL_106:
            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] change to exec stage %s (%u) from %s", "acipc_driver.cpp", 317, "change_to_exec_stage", v2, v5, v4);
LABEL_107:
            *&v6[1428]._os_unfair_lock_opaque = v3;
            ashp::optional<ashp::acipc::ring_manager,void>::value(&v6[1066], v78, v79, v80);
            v84 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(*&v6[1428]._os_unfair_lock_opaque, v81, v82, v83);
            os_unfair_lock_lock(v6 + 1066);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v112, v84, v85, v86);
            v87 = *&v6[1188]._os_unfair_lock_opaque;
            *&v6[1188]._os_unfair_lock_opaque = v112;
            v112 = v87;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v112, v88, v89, v90);
            if (LOBYTE(v111[50]._os_unfair_lock_opaque) == 1)
            {
              v92 = ashp::detail::logging::get_log_level(v91);
              if (v92 >= 2)
              {
                v92 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v92)
                {
                  *buf = 136446722;
                  *&buf[4] = "ring_manager.cpp";
                  v116 = 1024;
                  v117 = 171;
                  v118 = 2082;
                  v119 = "set_exec_stage";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ring manager is in reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v92))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ring manager is in reset", "ring_manager.cpp", 171, "set_exec_stage");
              }
            }

            else
            {
              for (i = *&v6[1190]._os_unfair_lock_opaque; i; i = *(i + 8))
              {
                os_unfair_lock_assert_owner(v6 + 1066);
                if ((*(i + 32) || *(i + 36) == 1) && !ashp::acipc::ring_manager::is_tr_supported_in_current_exec_stage(&v6[1066], i))
                {
                  ashp::acipc::ring_manager::recompute_tr_availability(v6 + 1066, i);
                  ashp::acipc::ring_manager::request_tr_close(v6 + 1066, i, 3);
                }
              }

              for (j = *&v6[1196]._os_unfair_lock_opaque; j; j = *(j + 8))
              {
                os_unfair_lock_assert_owner(v6 + 1066);
                if (*(j + 32) && !ashp::acipc::ring_manager::is_tr_supported_in_current_exec_stage(&v6[1066], j))
                {
                  ashp::acipc::ring_manager::recompute_cr_availability(v6 + 1066, j);
                  ashp::acipc::ring_manager::request_cr_close(v6 + 1066, j, 3);
                }
              }

              ashp::acipc::ring_manager::recompute_closed_ring_availability(v6 + 1066);
            }

            os_unfair_lock_unlock(v6 + 1066);
            ashp::optional<ashp::interrupt,void>::value(&v6[1220], v95, v96, v97);
            v101 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(*&v6[1428]._os_unfair_lock_opaque, v98, v99, v100);
            os_unfair_lock_lock(v6 + 1220);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(buf, v101, v102, v103);
            v104 = *&v6[1226]._os_unfair_lock_opaque;
            *&v6[1226]._os_unfair_lock_opaque = *buf;
            *buf = v104;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v105, v106, v107);
            if ((v111[200]._os_unfair_lock_opaque & 1) == 0)
            {
              for (k = *&v6[1228]._os_unfair_lock_opaque; k; k = *(k + 8))
              {
                if (*(k + 32))
                {
                  if (!ashp::acipc::memregion_manager::is_region_supported_in_current_exec_stage(&v6[1220], k))
                  {
                    ashp::acipc::memregion_manager::recompute_region_availability(v6 + 1220, k);
                    ashp::acipc::memregion_manager::request_region_unmap(v6 + 1220, k, 3);
                  }
                }
              }

              ashp::acipc::memregion_manager::recompute_unmapped_region_availability(v6 + 1220);
            }

            os_unfair_lock_unlock(v6 + 1220);
            ashp::driver::update_exec_stage(v6, v5);
            return;
          }

LABEL_139:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          goto LABEL_106;
        }

        os_unfair_lock_assert_owner(v6 + 2);
        if (!*&v6[1430]._os_unfair_lock_opaque && !*&v6[1432]._os_unfair_lock_opaque)
        {
          *&v6[1430]._os_unfair_lock_opaque = v5;
          v112 = v6;
          v113 = 1;
          v29 = ashp::detail::logging::get_log_level(v27);
          if (v29 >= 3)
          {
            v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v29)
            {
              *buf = 136446722;
              *&buf[4] = "acipc_driver.cpp";
              v116 = 1024;
              v117 = 402;
              v118 = 2082;
              v119 = "setup_boot_ipc_stage";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up boot ipc stage", buf, 0x1Cu);
            }
          }

          if (!ashp::detail::logging::get_log_level(v29))
          {
            goto LABEL_21;
          }

          if (airship_platform_get_global_logger::once == -1)
          {
LABEL_20:
            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up boot ipc stage", "acipc_driver.cpp", 402, "setup_boot_ipc_stage");
LABEL_21:
            ashp::optional<ashp::acipc::boot_manager,void>::value(&v6[1052], v30, v31, v32);
            os_unfair_lock_lock(v6 + 1052);
            os_unfair_lock_opaque = v111[29]._os_unfair_lock_opaque;
            v35 = ashp::detail::logging::get_log_level(v34);
            if (os_unfair_lock_opaque)
            {
              if (v35 >= 3)
              {
                v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v35)
                {
                  *buf = 136446722;
                  *&buf[4] = "boot_manager.cpp";
                  v116 = 1024;
                  v117 = 60;
                  v118 = 2082;
                  v119 = "exit_reset";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager exiting reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v35))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager exiting reset", "boot_manager.cpp", 60, "exit_reset");
              }

              LOBYTE(v111[29]._os_unfair_lock_opaque) = 0;
            }

            else
            {
              if (v35 >= 2)
              {
                v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v35)
                {
                  *buf = 136446722;
                  *&buf[4] = "boot_manager.cpp";
                  v116 = 1024;
                  v117 = 59;
                  v118 = 2082;
                  v119 = "exit_reset";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager is already out of reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v35))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager is already out of reset", "boot_manager.cpp", 59, "exit_reset");
              }
            }

            os_unfair_lock_unlock(v6 + 1052);
            ashp::optional<ashp::acipc::boot_manager,void>::value(&v6[1052], v37, v38, v39);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, v40, v41, v42);
            v43 = *v5;
            os_unfair_lock_lock(v6 + 1052);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v114, v43, v44, v45);
            v46 = *&v6[1054]._os_unfair_lock_opaque;
            *&v6[1054]._os_unfair_lock_opaque = v114;
            v114 = v46;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v114, v47, v48, v49);
            if (LOBYTE(v111[29]._os_unfair_lock_opaque) == 1)
            {
              v51 = ashp::detail::logging::get_log_level(v50);
              if (v51 >= 2)
              {
                v51 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v51)
                {
                  *buf = 136446722;
                  *&buf[4] = "boot_manager.cpp";
                  v116 = 1024;
                  v117 = 69;
                  v118 = 2082;
                  v119 = "set_ipc_stage";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager is in reset", buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v51))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager is in reset", "boot_manager.cpp", 69, "set_ipc_stage");
              }
            }

            else
            {
              if (v43)
              {
                v50 = CFStringGetCStringPtr(v43, 0x8000100u);
                if (v50)
                {
                  v52 = v50;
                }

                else
                {
                  v52 = "???";
                }
              }

              else
              {
                v52 = "(nil)";
              }

              v53 = ashp::detail::logging::get_log_level(v50);
              if (v53 >= 3)
              {
                v53 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v53)
                {
                  *buf = 136446978;
                  *&buf[4] = "boot_manager.cpp";
                  v116 = 1024;
                  v117 = 70;
                  v118 = 2082;
                  v119 = "set_ipc_stage";
                  v120 = 2080;
                  v121 = v52;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] new ipc stage: %s", buf, 0x26u);
                }
              }

              if (ashp::detail::logging::get_log_level(v53))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] new ipc stage: %s", "boot_manager.cpp", 70, "set_ipc_stage", v52);
              }

              v57 = *&v6[1058]._os_unfair_lock_opaque;
              if (v57)
              {
                v58 = MEMORY[0x277D86220];
                do
                {
                  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v57 + 40), v54, v55, v56);
                  v59 = *(v57 + 40);
                  if (v59)
                  {
                    v59 = CFStringGetCStringPtr(v59, 0x8000100u);
                    if (v59)
                    {
                      v60 = v59;
                    }

                    else
                    {
                      v60 = "???";
                    }
                  }

                  else
                  {
                    v60 = "(nil)";
                  }

                  v61 = ashp::detail::logging::get_log_level(v59);
                  if (v61 >= 4)
                  {
                    v61 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
                    if (v61)
                    {
                      *buf = 136446978;
                      *&buf[4] = "boot_manager.cpp";
                      v116 = 1024;
                      v117 = 73;
                      v118 = 2082;
                      v119 = "set_ipc_stage";
                      v120 = 2080;
                      v121 = v60;
                      _os_log_impl(&dword_23EC8B000, v58, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] controller ipc stage: %s", buf, 0x26u);
                    }
                  }

                  if (ashp::detail::logging::get_log_level(v61))
                  {
                    if (airship_platform_get_global_logger::once != -1)
                    {
                      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                    }

                    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] controller ipc stage: %s", "boot_manager.cpp", 73, "set_ipc_stage", v60);
                  }

                  v65 = *v57;
                  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v6[1054]._os_unfair_lock_opaque, v62, v63, v64);
                  v66 = *&v6[1054]._os_unfair_lock_opaque;
                  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v57 + 40), v67, v68, v69);
                  v70 = *(v57 + 40);
                  v71 = (v66 | v70) == 0;
                  if (v66 && v70)
                  {
                    v71 = CFStringCompare(v66, *(v57 + 40), 0) == kCFCompareEqualTo;
                  }

                  ashp::acipc::boot_controller::set_available(v65, v71);
                  if (*(v57 + 32) == 1)
                  {
                    *(v57 + 32) = 0;
                    ashp::acipc::boot_controller::stop(*v57, 1);
                  }

                  v57 = *(v57 + 8);
                }

                while (v57);
              }
            }

            os_unfair_lock_unlock(v6 + 1052);
            if (v113 == 1)
            {
              v113 = 0;
            }

            ashp::deferred_action<ashp::acipc::acipc_driver::setup_boot_ipc_stage(ashp::acipc::config::boot_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(&v112);
            goto LABEL_87;
          }

LABEL_143:
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          goto LABEL_20;
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x18F, "setup_boot_ipc_stage", v28);
        _os_crash();
        __break(1u);
        goto LABEL_141;
      }

LABEL_138:
      v6 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x167, "change_to_ipc_stage", v15);
      _os_crash();
      __break(1u);
      goto LABEL_139;
    }

LABEL_137:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x166, "change_to_ipc_stage", v15);
    _os_crash();
    __break(1u);
    goto LABEL_138;
  }

  v36 = ashp::detail::logging::get_log_level(0);
  if (v36 >= 2)
  {
    v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v36)
    {
      *buf = 136446978;
      *&buf[4] = "acipc_driver.cpp";
      v116 = 1024;
      v117 = 306;
      v118 = 2082;
      v119 = "change_to_exec_stage";
      v120 = 1024;
      LODWORD(v121) = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to find stage for value, %u", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v36))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_35:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to find stage for value, %u", "acipc_driver.cpp", 306, "change_to_exec_stage", v5);
      return;
    }

LABEL_141:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_35;
  }
}

void sub_23ECD051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  os_unfair_lock_unlock(v19 + 1052);
  ashp::deferred_action<ashp::acipc::acipc_driver::setup_boot_ipc_stage(ashp::acipc::config::boot_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(va);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::acipc_driver::find_exec_stage_with_value(const os_unfair_lock *this, int a2)
{
  LODWORD(v2) = a2;
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if ((this[3]._os_unfair_lock_opaque & 0x100) == 0)
  {
    v2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4AF, "find_exec_stage_with_value", v7);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  v8 = ashp::optional<ashp::acipc::config::acipc_config,void>::value(&this[956], v4, v5, v6);
  v12 = *&this[976]._os_unfair_lock_opaque;
  if (!v12)
  {
LABEL_6:
    log_level = ashp::detail::logging::get_log_level(v8);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v21 = "acipc_driver.cpp";
        v22 = 1024;
        v23 = 1208;
        v24 = 2082;
        v25 = "find_exec_stage_with_value";
        v26 = 1024;
        v27 = v2;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no exec stage found for value %u", buf, 0x22u);
      }
    }

    if (!ashp::detail::logging::get_log_level(log_level))
    {
      return 0;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_11:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no exec stage found for value %u", "acipc_driver.cpp", 1208, "find_exec_stage_with_value", v2);
      return 0;
    }

LABEL_27:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_11;
  }

  v13 = *&this[980]._os_unfair_lock_opaque;
  v14 = 24 * v12;
  while (*(v13 + 8) != v2)
  {
    v13 += 24;
    v14 -= 24;
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v13, v9, v10, v11);
  CStringPtr = *v13;
  if (*v13)
  {
    CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
    if (CStringPtr)
    {
      v17 = CStringPtr;
    }

    else
    {
      v17 = "???";
    }
  }

  else
  {
    v17 = "(nil)";
  }

  v18 = ashp::detail::logging::get_log_level(CStringPtr);
  if (v18 >= 3)
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      *buf = 136447234;
      v21 = "acipc_driver.cpp";
      v22 = 1024;
      v23 = 1204;
      v24 = 2082;
      v25 = "find_exec_stage_with_value";
      v26 = 1024;
      v27 = v2;
      v28 = 2080;
      v29 = v17;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] value %u matches to exec stage: %s", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v18))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] value %u matches to exec stage: %s", "acipc_driver.cpp", 1204, "find_exec_stage_with_value", v2, v17);
  }

  return v13;
}

void ashp::acipc::acipc_driver::teardown_current_ipc_stage(const os_unfair_lock *this)
{
  v1 = this;
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (*&v1[1430]._os_unfair_lock_opaque)
  {
    if (*&v1[1432]._os_unfair_lock_opaque)
    {
      v1 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x17E, "teardown_current_ipc_stage", v3);
      _os_crash();
      __break(1u);
      goto LABEL_21;
    }

    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        v7 = "acipc_driver.cpp";
        v8 = 1024;
        v9 = 385;
        v10 = 2082;
        v11 = "teardown_current_ipc_stage";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down boot ipc stage", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down boot ipc stage", "acipc_driver.cpp", 385, "teardown_current_ipc_stage");
    }

    ashp::acipc::acipc_driver::teardown_boot_ipc_stage(v1);
  }

  if (!*&v1[1432]._os_unfair_lock_opaque)
  {
    return;
  }

  v5 = ashp::detail::logging::get_log_level(v2);
  if (v5 >= 4)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      *buf = 136446722;
      v7 = "acipc_driver.cpp";
      v8 = 1024;
      v9 = 390;
      v10 = 2082;
      v11 = "teardown_current_ipc_stage";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down main ipc stage", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v5))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_17:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down main ipc stage", "acipc_driver.cpp", 390, "teardown_current_ipc_stage");
      goto LABEL_18;
    }

LABEL_21:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_17;
  }

LABEL_18:
  ashp::acipc::acipc_driver::teardown_main_ipc_stage(v1);
}

void ashp::acipc::acipc_driver::teardown_boot_ipc_stage(const os_unfair_lock *this)
{
  v1 = this;
  v55 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  *&v1[1430]._os_unfair_lock_opaque = 0;
  v3 = "external";
  if ((v1[3]._os_unfair_lock_opaque & 0x10000) == 0 && !LOBYTE(v1[6]._os_unfair_lock_opaque))
  {
    v3 = "ipc stage";
  }

  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446978;
      v46 = "acipc_driver.cpp";
      v47 = 1024;
      v48 = 413;
      v49 = 2082;
      v50 = "teardown_boot_ipc_stage";
      v51 = 2080;
      v52 = v3;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type: %s", buf, 0x26u);
    }
  }

  if (!ashp::detail::logging::get_log_level(log_level))
  {
    goto LABEL_10;
  }

  if (airship_platform_get_global_logger::once != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type: %s", "acipc_driver.cpp", 413, "teardown_boot_ipc_stage", v3);
LABEL_10:
    ashp::optional<ashp::acipc::boot_manager,void>::value(&v1[1052], v5, v6, v7);
    v43 = (v1[3]._os_unfair_lock_opaque & 0x10000) != 0 ? 0 : LOBYTE(v1[6]._os_unfair_lock_opaque) ^ 1;
    os_unfair_lock_lock(&v1[1052]);
    os_unfair_lock_opaque_low = LOBYTE(v1[1053]._os_unfair_lock_opaque);
    v10 = ashp::detail::logging::get_log_level(v9);
    v42 = v1;
    if (os_unfair_lock_opaque_low == 1)
    {
      break;
    }

    if (v10 >= 3)
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        *buf = 136446722;
        v46 = "boot_manager.cpp";
        v47 = 1024;
        v48 = 25;
        v49 = 2082;
        v50 = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager entering reset", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v10))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager entering reset", "boot_manager.cpp", 25, "enter_reset");
    }

    LOBYTE(v1[1053]._os_unfair_lock_opaque) = 1;
    v14 = *&v1[1054]._os_unfair_lock_opaque;
    *&v1[1054]._os_unfair_lock_opaque = 0;
    v44 = v14;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v44, v11, v12, v13);
    LOBYTE(v1[1056]._os_unfair_lock_opaque) = 0;
    v16 = ashp::detail::logging::get_log_level(v15);
    if (v16 >= 3)
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        *buf = 136446978;
        v46 = "boot_manager.cpp";
        v47 = 1024;
        v48 = 30;
        v49 = 2082;
        v50 = "enter_reset";
        v51 = 1024;
        LODWORD(v52) = v43;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type=%u", buf, 0x22u);
      }
    }

    v17 = ashp::detail::logging::get_log_level(v16);
    if (v17)
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type=%u", "boot_manager.cpp", 30, "enter_reset", v43);
    }

    v18 = ashp::detail::logging::get_log_level(v17);
    if (v18 >= 4)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        *buf = 136446978;
        v46 = "boot_manager.cpp";
        v47 = 1024;
        v48 = 40;
        v49 = 2082;
        v50 = "enter_reset";
        v51 = 1024;
        LODWORD(v52) = v43;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stop reason %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v18))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stop reason %u", "boot_manager.cpp", 40, "enter_reset", v43);
    }

    v22 = *&v1[1058]._os_unfair_lock_opaque;
    if (!v22)
    {
      goto LABEL_87;
    }

    v23 = MEMORY[0x277D86220];
    while (1)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v22 + 5, v19, v20, v21);
      CStringPtr = v22[5];
      if (CStringPtr)
      {
        CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
        if (CStringPtr)
        {
          v25 = CStringPtr;
        }

        else
        {
          v25 = "???";
        }
      }

      else
      {
        v25 = "(nil)";
      }

      v26 = ashp::detail::logging::get_log_level(CStringPtr);
      if (v26 >= 4)
      {
        v26 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          *buf = 136446978;
          v46 = "boot_manager.cpp";
          v47 = 1024;
          v48 = 43;
          v49 = 2082;
          v50 = "enter_reset";
          v51 = 2080;
          v52 = v25;
          _os_log_impl(&dword_23EC8B000, v23, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting boot controller for ipc stage %s to unavailable", buf, 0x26u);
        }
      }

      if (ashp::detail::logging::get_log_level(v26))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting boot controller for ipc stage %s to unavailable", "boot_manager.cpp", 43, "enter_reset", v25);
      }

      ashp::acipc::boot_controller::set_available(*v22, 0);
      if (*(v22 + 32) == 1)
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v22 + 5, v27, v28, v29);
        v30 = v22[5];
        if (v30)
        {
          v30 = CFStringGetCStringPtr(v30, 0x8000100u);
          if (v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = "???";
          }
        }

        else
        {
          v31 = "(nil)";
        }

        v32 = ashp::detail::logging::get_log_level(v30);
        if (v32 >= 4)
        {
          v32 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v32)
          {
            *buf = 136446978;
            v46 = "boot_manager.cpp";
            v47 = 1024;
            v48 = 47;
            v49 = 2082;
            v50 = "enter_reset";
            v51 = 2080;
            v52 = v31;
            _os_log_impl(&dword_23EC8B000, v23, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping boot controller for ipc stage %s", buf, 0x26u);
          }
        }

        if (ashp::detail::logging::get_log_level(v32))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stopping boot controller for ipc stage %s", "boot_manager.cpp", 47, "enter_reset", v31);
        }

        *(v22 + 32) = 0;
        ashp::acipc::boot_controller::stop(*v22, v43);
      }

      v33 = *v22;
      os_unfair_lock_lock(*v22 + 4);
      if ((v33[114]._os_unfair_lock_opaque & 1) == 0)
      {
        if (v33[118]._os_unfair_lock_opaque)
        {
          break;
        }
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v33[50]._os_unfair_lock_opaque, v34, v35, v36);
      v38 = *&v33[50]._os_unfair_lock_opaque;
      if (v38)
      {
        v38 = CFStringGetCStringPtr(v38, 0x8000100u);
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = "???";
        }
      }

      else
      {
        v39 = "(nil)";
      }

      os_unfair_lock_opaque = v33[118]._os_unfair_lock_opaque;
      v41 = ashp::detail::logging::get_log_level(v38);
      if (v41 >= 3)
      {
        v41 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v41)
        {
          *buf = 136447234;
          v46 = "boot_controller.cpp";
          v47 = 1024;
          v48 = 483;
          v49 = 2082;
          v50 = "ipc_reset_occurred";
          v51 = 2080;
          v52 = v39;
          v53 = 1024;
          v54 = os_unfair_lock_opaque;
          _os_log_impl(&dword_23EC8B000, v23, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] (bc %s) image_state=%u", buf, 0x2Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v41))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] (bc %s) image_state=%u", "boot_controller.cpp", 483, "ipc_reset_occurred", v39, os_unfair_lock_opaque);
      }

      if (v33[118]._os_unfair_lock_opaque == 1)
      {
        v33[118]._os_unfair_lock_opaque = 2;
        ashp::acipc::boot_controller::recompute_state(v33);
      }

      os_unfair_lock_unlock(v33 + 4);
      v22 = v22[1];
      if (!v22)
      {
        goto LABEL_87;
      }
    }

    v3 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "boot_controller.cpp", 0x1E2, "ipc_reset_occurred", v37);
    v1 = v42;
    _os_crash();
    __break(1u);
LABEL_89:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
  }

  if (v10 >= 2)
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      *buf = 136446722;
      v46 = "boot_manager.cpp";
      v47 = 1024;
      v48 = 24;
      v49 = 2082;
      v50 = "enter_reset";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot manager is already in reset", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v10))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot manager is already in reset", "boot_manager.cpp", 24, "enter_reset");
  }

LABEL_87:
  os_unfair_lock_unlock(v42 + 1052);
}

void ashp::acipc::acipc_driver::teardown_main_ipc_stage(const os_unfair_lock *this)
{
  v1 = this;
  v223 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  *&v1[1432]._os_unfair_lock_opaque = 0;
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 3)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      *&buf[4] = "acipc_driver.cpp";
      v219 = 1024;
      *v220 = 503;
      *&v220[4] = 2082;
      *&v220[6] = "teardown_main_ipc_stage";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down main ipc stage", buf, 0x1Cu);
    }
  }

  v4 = ashp::detail::logging::get_log_level(log_level);
  if (v4)
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down main ipc stage", "acipc_driver.cpp", 503, "teardown_main_ipc_stage");
  }

  v5 = "external";
  if ((v1[3]._os_unfair_lock_opaque & 0x10000) == 0 && !LOBYTE(v1[6]._os_unfair_lock_opaque))
  {
    v5 = "ipc stage";
  }

  v6 = ashp::detail::logging::get_log_level(v4);
  if (v6 >= 4)
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *buf = 136446978;
      *&buf[4] = "acipc_driver.cpp";
      v219 = 1024;
      *v220 = 504;
      *&v220[4] = 2082;
      *&v220[6] = "teardown_main_ipc_stage";
      v221 = 2080;
      v222 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type: %s", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(v6))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type: %s", "acipc_driver.cpp", 504, "teardown_main_ipc_stage", v5);
  }

  v10 = v1 + 1220;
  ashp::optional<ashp::interrupt,void>::value(&v1[1220], v7, v8, v9);
  v11 = v1 + 1024;
  if ((v1[3]._os_unfair_lock_opaque & 0x10000) != 0)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    LODWORD(v12) = LOBYTE(v1[6]._os_unfair_lock_opaque) ^ 1;
  }

  os_unfair_lock_lock(v1 + 1220);
  if ((v1[1224]._os_unfair_lock_opaque & 1) == 0)
  {
    v14 = ashp::detail::logging::get_log_level(v13);
    v15 = "memregion_manager.cpp";
    if (v14 >= 4)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        *buf = 136446722;
        *&buf[4] = "memregion_manager.cpp";
        v219 = 1024;
        *v220 = 32;
        *&v220[4] = 2082;
        *&v220[6] = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(v14))
    {
      goto LABEL_28;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_267;
  }

  while (1)
  {
    os_unfair_lock_unlock(v10);
    v10 = v1 + 1066;
    ashp::optional<ashp::acipc::ring_manager,void>::value(&v1[1066], v25, v26, v27);
    if ((v1[3]._os_unfair_lock_opaque & 0x10000) != 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = LOBYTE(v1[6]._os_unfair_lock_opaque) ^ 1;
    }

    os_unfair_lock_lock(v1 + 1066);
    os_unfair_lock_opaque_low = LOBYTE(v11[50]._os_unfair_lock_opaque);
    v31 = ashp::detail::logging::get_log_level(v30);
    if (os_unfair_lock_opaque_low == 1)
    {
      if (v31 >= 2)
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          *buf = 136446722;
          *&buf[4] = "ring_manager.cpp";
          v219 = 1024;
          *v220 = 56;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ring manager already in reset", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v31))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ring manager already in reset", "ring_manager.cpp", 56, "enter_reset");
      }
    }

    else
    {
      if (v31 >= 4)
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          *buf = 136446722;
          *&buf[4] = "ring_manager.cpp";
          v219 = 1024;
          *v220 = 57;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v31))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset", "ring_manager.cpp", 57, "enter_reset");
      }

      LOBYTE(v11[50]._os_unfair_lock_opaque) = 1;
      v35 = *&v1[1188]._os_unfair_lock_opaque;
      *&v1[1188]._os_unfair_lock_opaque = 0;
      v217 = v35;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v217, v32, v33, v34);
      v37 = ashp::detail::logging::get_log_level(v36);
      if (v37 >= 4)
      {
        v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v37)
        {
          *buf = 136446978;
          *&buf[4] = "ring_manager.cpp";
          v219 = 1024;
          *v220 = 61;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          v221 = 1024;
          LODWORD(v222) = v28;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset type %u", buf, 0x22u);
        }
      }

      v38 = ashp::detail::logging::get_log_level(v37);
      if (v38)
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset type %u", "ring_manager.cpp", 61, "enter_reset", v28);
      }

      if (v28 == 1)
      {
        v39 = 3;
      }

      else
      {
        v39 = 0;
      }

      if (v28)
      {
        v40 = v39;
      }

      else
      {
        v40 = 2;
      }

      v41 = ashp::detail::logging::get_log_level(v38);
      if (v41 >= 4)
      {
        v41 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v41)
        {
          *buf = 136446978;
          *&buf[4] = "ring_manager.cpp";
          v219 = 1024;
          *v220 = 71;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          v221 = 1024;
          LODWORD(v222) = v40;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stop reason %u", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v41))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stop reason %u", "ring_manager.cpp", 71, "enter_reset", v40);
      }

      v42 = *&v1[1190]._os_unfair_lock_opaque;
      if (v42)
      {
        v43 = MEMORY[0x277D86220];
        do
        {
          ashp::acipc::ring_manager::recompute_tr_availability(v1 + 1066, v42);
          os_unfair_lock_assert_owner(v1 + 1066);
          v45 = *(v42 + 32);
          if (v45 || *(v42 + 36) == 1)
          {
            if (*(v42 + 39) == 1)
            {
              v46 = ashp::detail::logging::get_log_level(v44);
              if (v46 >= 4)
              {
                v46 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
                if (v46)
                {
                  v47 = *(v42 + 96);
                  *buf = 136446978;
                  *&buf[4] = "ring_manager.cpp";
                  v219 = 1024;
                  *v220 = 78;
                  *&v220[4] = 2082;
                  *&v220[6] = "enter_reset";
                  v221 = 1024;
                  LODWORD(v222) = v47;
                  _os_log_impl(&dword_23EC8B000, v43, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping trid %hu", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v46))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stopping trid %hu", "ring_manager.cpp", 78, "enter_reset", *(v42 + 96));
              }

              ashp::acipc::ring_manager::stop_tr(v1 + 1066, v42, v40);
              v45 = *(v42 + 32);
            }

            if (v45)
            {
              v48 = ashp::detail::logging::get_log_level(v44);
              if (v48 >= 4)
              {
                v48 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
                if (v48)
                {
                  v49 = *(v42 + 96);
                  *buf = 136446978;
                  *&buf[4] = "ring_manager.cpp";
                  v219 = 1024;
                  *v220 = 83;
                  *&v220[4] = 2082;
                  *&v220[6] = "enter_reset";
                  v221 = 1024;
                  LODWORD(v222) = v49;
                  _os_log_impl(&dword_23EC8B000, v43, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing trid %hu", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v48))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing trid %hu", "ring_manager.cpp", 83, "enter_reset", *(v42 + 96));
              }

              ashp::acipc::ring_manager::set_tr_closed(v1 + 1066, v42);
            }
          }

          v42 = *(v42 + 8);
        }

        while (v42);
      }

      v50 = *&v1[1196]._os_unfair_lock_opaque;
      if (v50)
      {
        v51 = MEMORY[0x277D86220];
        do
        {
          ashp::acipc::ring_manager::recompute_cr_availability(v1 + 1066, v50);
          os_unfair_lock_assert_owner(v1 + 1066);
          if (*(v50 + 32))
          {
            if (*(v50 + 37) != 1)
            {
              goto LABEL_120;
            }

            v53 = ashp::detail::logging::get_log_level(v52);
            if (v53 >= 4)
            {
              v53 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
              if (v53)
              {
                v54 = *(v50 + 96);
                *buf = 136446978;
                *&buf[4] = "ring_manager.cpp";
                v219 = 1024;
                *v220 = 93;
                *&v220[4] = 2082;
                *&v220[6] = "enter_reset";
                v221 = 1024;
                LODWORD(v222) = v54;
                _os_log_impl(&dword_23EC8B000, v51, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stopping crid %hu", buf, 0x22u);
              }
            }

            if (ashp::detail::logging::get_log_level(v53))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stopping crid %hu", "ring_manager.cpp", 93, "enter_reset", *(v50 + 96));
            }

            ashp::acipc::ring_manager::stop_cr(v1 + 1066, v50, v40);
            if (*(v50 + 32))
            {
LABEL_120:
              v55 = ashp::detail::logging::get_log_level(v52);
              if (v55 >= 4)
              {
                v55 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
                if (v55)
                {
                  v56 = *(v50 + 96);
                  *buf = 136446978;
                  *&buf[4] = "ring_manager.cpp";
                  v219 = 1024;
                  *v220 = 98;
                  *&v220[4] = 2082;
                  *&v220[6] = "enter_reset";
                  v221 = 1024;
                  LODWORD(v222) = v56;
                  _os_log_impl(&dword_23EC8B000, v51, OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing crid %hu", buf, 0x22u);
                }
              }

              if (ashp::detail::logging::get_log_level(v55))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing crid %hu", "ring_manager.cpp", 98, "enter_reset", *(v50 + 96));
              }

              ashp::acipc::ring_manager::set_cr_closed(v1 + 1066, v50);
            }
          }

          v50 = *(v50 + 8);
        }

        while (v50);
      }
    }

    os_unfair_lock_unlock(v1 + 1066);
    ashp::optional<ashp::acipc::ring_manager,void>::value(&v1[1066], v57, v58, v59);
    os_unfair_lock_lock(v1 + 1066);
    if ((v11[50]._os_unfair_lock_opaque & 1) == 0)
    {
      goto LABEL_262;
    }

    if (LOBYTE(v11[106]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[106]._os_unfair_lock_opaque) = 0;
      ashp::acipc::index_array_signaler::~index_array_signaler(&v1[1084], v60, v61, v62);
    }

    if (LOBYTE(v11[58]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[58]._os_unfair_lock_opaque) = 0;
    }

    os_unfair_lock_unlock(v1 + 1066);
    ashp::optional<ashp::acipc::ring_manager,void>::value(&v1[1066], v64, v65, v66);
    os_unfair_lock_lock(v1 + 1066);
    if ((v11[50]._os_unfair_lock_opaque & 1) == 0)
    {
      goto LABEL_263;
    }

    if (LOBYTE(v11[162]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[162]._os_unfair_lock_opaque) = 0;
      ashp::acipc::index_array_signaler::~index_array_signaler(&v1[1140], v67, v68, v69);
    }

    if (LOBYTE(v11[114]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[114]._os_unfair_lock_opaque) = 0;
    }

    os_unfair_lock_unlock(v1 + 1066);
    v10 = v1 + 1236;
    ashp::optional<ashp::acipc::messenger,void>::value(&v1[1236], v71, v72, v73);
    os_unfair_lock_lock(v1 + 1236);
    v74 = LOBYTE(v11[260]._os_unfair_lock_opaque);
    v76 = ashp::detail::logging::get_log_level(v75);
    if (v74 == 1)
    {
      break;
    }

    v12 = "messenger.cpp";
    if (v76 >= 4)
    {
      v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v76)
      {
        *buf = 136446722;
        *&buf[4] = "messenger.cpp";
        v219 = 1024;
        *v220 = 52;
        *&v220[4] = 2082;
        *&v220[6] = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v76))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset", "messenger.cpp", 52, "enter_reset");
    }

    LOBYTE(v11[260]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_lock(v1 + 1237);
    BYTE1(v11[260]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v1 + 1237);
    BYTE2(v11[260]._os_unfair_lock_opaque) = 0;
    ashp::async_notifier::suspend(v1 + 1244, v77, v78, v79);
    if (!*&v1[1286]._os_unfair_lock_opaque)
    {
      if (*&v1[1288]._os_unfair_lock_opaque)
      {
        goto LABEL_271;
      }

      goto LABEL_204;
    }

    v82 = ashp::detail::logging::get_log_level(v80);
    if (v82 >= 4)
    {
      v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v82)
      {
        *buf = 136446722;
        *&buf[4] = "messenger.cpp";
        v219 = 1024;
        *v220 = 64;
        *&v220[4] = 2082;
        *&v220[6] = "enter_reset";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing mtr", buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v82))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing mtr", "messenger.cpp", 64, "enter_reset");
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1286]._os_unfair_lock_opaque, v83, v84, v85);
    v86 = ashp::acipc::tr_controller::close(*&v1[1286]._os_unfair_lock_opaque);
    v90 = *&v1[1286]._os_unfair_lock_opaque;
    if (*&v1[1288]._os_unfair_lock_opaque)
    {
      if (!v90)
      {
        goto LABEL_271;
      }

      v91 = ashp::detail::logging::get_log_level(v86);
      if (v91 >= 4)
      {
        v91 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v91)
        {
          *buf = 136446722;
          *&buf[4] = "messenger.cpp";
          v219 = 1024;
          *v220 = 70;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] closing mcr", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v91))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          goto LABEL_269;
        }

        goto LABEL_169;
      }

      goto LABEL_170;
    }

    while (v90)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1286]._os_unfair_lock_opaque, v87, v88, v89);
      ashp::acipc::tr_controller::sync(*&v1[1286]._os_unfair_lock_opaque, 2);
      v116 = ashp::detail::logging::get_log_level(v115);
      if (v116 >= 4)
      {
        v116 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v116)
        {
          *buf = 136446722;
          *&buf[4] = "messenger.cpp";
          v219 = 1024;
          *v220 = 85;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] synthesizing completions if needed", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v116))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] synthesizing completions if needed", "messenger.cpp", 85, "enter_reset");
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1286]._os_unfair_lock_opaque, v117, v118, v119);
      v120 = ashp::acipc::tr_controller::synthesize_reset_completions(*&v1[1286]._os_unfair_lock_opaque);
      if (ashp::detail::control_flow::check_err_with_debug(v120, "messenger.cpp", 0x56, "enter_reset", v121))
      {
        v123 = ashp::acipc::messenger::process_completions(v10);
        v124 = ashp::detail::logging::get_log_level(v123);
        if (v124 >= 4)
        {
          v124 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v124)
          {
            *buf = 136446722;
            *&buf[4] = "messenger.cpp";
            v219 = 1024;
            *v220 = 89;
            *&v220[4] = 2082;
            *&v220[6] = "enter_reset";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down mtr", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v124))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down mtr", "messenger.cpp", 89, "enter_reset");
        }

        LODWORD(v12) = 5160;
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1290]._os_unfair_lock_opaque, v125, v126, v127);
        ashp::driver_object::terminate(*&v1[1290]._os_unfair_lock_opaque);
        v128 = *&v1[1290]._os_unfair_lock_opaque;
        *&v1[1290]._os_unfair_lock_opaque = 0;
        v215 = v128;
        ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v215, v129, v130, v131);
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1286]._os_unfair_lock_opaque, v132, v133, v134);
        ashp::driver_object::terminate(*&v1[1286]._os_unfair_lock_opaque);
        v135 = *&v1[1286]._os_unfair_lock_opaque;
        *&v1[1286]._os_unfair_lock_opaque = 0;
        v214 = v135;
        ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v214, v136, v137, v138);
        break;
      }

      v1 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x56, "enter_reset", v122);
      _os_crash();
      __break(1u);
LABEL_269:
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_169:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] closing mcr", "messenger.cpp", 70, "enter_reset");
LABEL_170:
      v15 = 5152;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1288]._os_unfair_lock_opaque, v92, v93, v94);
      ashp::acipc::cr_controller::close(*&v1[1288]._os_unfair_lock_opaque);
      v95 = ashp::acipc::messenger::process_completions(v10);
      v96 = ashp::detail::logging::get_log_level(v95);
      if (v96 >= 4)
      {
        v96 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v96)
        {
          *buf = 136446722;
          *&buf[4] = "messenger.cpp";
          v219 = 1024;
          *v220 = 74;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] tearing down mcr", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v96))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] tearing down mcr", "messenger.cpp", 74, "enter_reset");
      }

      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1292]._os_unfair_lock_opaque, v97, v98, v99);
      ashp::driver_object::terminate(*&v1[1292]._os_unfair_lock_opaque);
      v100 = *&v1[1292]._os_unfair_lock_opaque;
      *&v1[1292]._os_unfair_lock_opaque = 0;
      v217 = v100;
      ashp::refcounted_ptr<ashp::monitor *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v217, v101, v102, v103);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v1[1288]._os_unfair_lock_opaque, v104, v105, v106);
      ashp::driver_object::terminate(*&v1[1288]._os_unfair_lock_opaque);
      v107 = *&v1[1288]._os_unfair_lock_opaque;
      *&v1[1288]._os_unfair_lock_opaque = 0;
      v216 = v107;
      ashp::refcounted_ptr<ashp::client_interrupt *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::driver_object,ashp::polymorphic_deleter<ashp::driver_object>>>>::reset(&v216, v108, v109, v110);
      v111 = *&v11[278]._os_unfair_lock_opaque;
      *&v11[278]._os_unfair_lock_opaque = 0u;
      v112 = *&v1[1306]._os_unfair_lock_opaque;
      *&v1[1306]._os_unfair_lock_opaque = 0;
      if (v111 && !v112)
      {
        goto LABEL_266;
      }

      if (v112)
      {
        free(v112);
      }

      v113 = *&v1[1308]._os_unfair_lock_opaque;
      *&v1[1308]._os_unfair_lock_opaque = 0u;
      v114 = *&v1[1312]._os_unfair_lock_opaque;
      *&v1[1312]._os_unfair_lock_opaque = 0;
      if (v113)
      {
        if (!v114)
        {
          goto LABEL_266;
        }
      }

      if (v114)
      {
        free(v114);
      }

      v90 = *&v1[1286]._os_unfair_lock_opaque;
    }

LABEL_204:
    v139 = *&v1[1272]._os_unfair_lock_opaque;
    if (v139)
    {
      v140 = *&v1[1276]._os_unfair_lock_opaque;
      v141 = 40 * v139;
      while (*v140 != 1)
      {
        v140 += 40;
        v141 -= 40;
        if (!v141)
        {
          goto LABEL_208;
        }
      }

      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x65, "enter_reset", v81);
      _os_crash();
      __break(1u);
LABEL_262:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x88, "clear_tr_index_arrays", v63);
      _os_crash();
      __break(1u);
LABEL_263:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0xA1, "clear_cr_index_arrays", v70);
      _os_crash();
      __break(1u);
      goto LABEL_264;
    }

LABEL_208:
    os_unfair_lock_lock(v1 + 1237);
    os_unfair_lock_assert_owner(v1 + 1237);
    v15 = *&v1[1278]._os_unfair_lock_opaque;
    if (v15)
    {
      LODWORD(v12) = -760090111;
      do
      {
        ashp::detail::intrusive_list::intrusive_list_impl<ashp::driver_object,ashp::intrusive_list_link<ashp::driver_object>,&ashp::driver_object::_manager_link>::remove(&v1[1278], v15, v142, v143);
        os_unfair_lock_unlock(v1 + 1237);
        v147 = *(v15 + 16);
        if (v147)
        {
          v147(*v15, *(v15 + 8), 2);
        }

        ashp::intrusive_list_link<ashp::acipc::messenger::overflow_record>::~intrusive_list_link(v15 + 40, v144, v145, v146);
        v148 = *(v15 + 32);
        if (v148)
        {
          free(v148);
          *(v15 + 32) = 0;
          *(v15 + 24) = 0;
        }

        MEMORY[0x23EF204E0](v15, 0x10A0C40D2B1F201);
        os_unfair_lock_lock(v1 + 1237);
        v15 = *&v1[1278]._os_unfair_lock_opaque;
      }

      while (v15);
    }

    os_unfair_lock_unlock(v1 + 1237);
    if (!*&v1[1272]._os_unfair_lock_opaque || *&v1[1276]._os_unfair_lock_opaque)
    {
      *&v1[1272]._os_unfair_lock_opaque = 0;
      buf[8] = 0;
      *&v220[2] = 0x200000000;
      ashp::buffer_mapping::operator=(&v1[1264], buf, v149, v150);
      ashp::buffer_mapping::~buffer_mapping(buf, v151, v152, v153);
      v154 = *&v1[1270]._os_unfair_lock_opaque;
      *&v1[1270]._os_unfair_lock_opaque = 0;
      *buf = v154;
      ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(buf, v155, v156, v157);
      *&v1[1260]._os_unfair_lock_opaque = 0;
      *&v1[1256]._os_unfair_lock_opaque = 0u;
      goto LABEL_218;
    }

LABEL_266:
    __break(1u);
LABEL_267:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_27:
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset", v15, 32, "enter_reset");
LABEL_28:
    LOBYTE(v11[200]._os_unfair_lock_opaque) = 1;
    v19 = *&v1[1226]._os_unfair_lock_opaque;
    *&v1[1226]._os_unfair_lock_opaque = 0;
    v217 = v19;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v217, v16, v17, v18);
    if (v12 == 1)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    if (v12)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2;
    }

    v23 = ashp::detail::logging::get_log_level(v20);
    if (v23 >= 4)
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        *buf = 136446978;
        *&buf[4] = v15;
        v219 = 1024;
        *v220 = 45;
        *&v220[4] = 2082;
        *&v220[6] = "enter_reset";
        v221 = 1024;
        LODWORD(v222) = v22;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] stop reason %u", buf, 0x22u);
      }
    }

    if (ashp::detail::logging::get_log_level(v23))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] stop reason %u", v15, 45, "enter_reset", v22);
    }

    for (i = *&v1[1228]._os_unfair_lock_opaque; i; i = *(i + 8))
    {
      ashp::acipc::memregion_manager::recompute_region_availability(v10, i);
      if (*(i + 32))
      {
        if (*(i + 37) != 1 || (ashp::acipc::memregion_manager::stop_region(v10, i, v22), *(i + 32)))
        {
          *(i + 32) = 0;
          ashp::acipc::memregion_controller::set_device_region_status(*i, 0);
        }
      }
    }
  }

  if (v76 >= 2)
  {
    v76 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v76)
    {
      *buf = 136446722;
      *&buf[4] = "messenger.cpp";
      v219 = 1024;
      *v220 = 51;
      *&v220[4] = 2082;
      *&v220[6] = "enter_reset";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] already in reset", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v76))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] already in reset", "messenger.cpp", 51, "enter_reset");
  }

LABEL_218:
  os_unfair_lock_unlock(v10);
  v10 = v1 + 1316;
  ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v1[1316], v158, v159, v160);
  os_unfair_lock_lock(v1 + 1316);
  if (!LOBYTE(v11[354]._os_unfair_lock_opaque))
  {
LABEL_264:
    v1 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xE4, "enter_reset", v161);
    _os_crash();
    __break(1u);
    goto LABEL_265;
  }

  *buf = 0;
  v162 = os_parse_boot_arg_int();
  if (*buf)
  {
    v164 = v162;
  }

  else
  {
    v164 = 0;
  }

  if (v164 != 1)
  {
    goto LABEL_228;
  }

  v165 = LOBYTE(v11[354]._os_unfair_lock_opaque);
  if (v165 != 2)
  {
LABEL_229:
    if (v165 != 4)
    {
      v172 = ashp::detail::logging::get_log_level(v162);
      if (v172 >= 4)
      {
        v172 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v172)
        {
          *buf = 136446722;
          *&buf[4] = "doorbell_coordinator.cpp";
          v219 = 1024;
          *v220 = 242;
          *&v220[4] = 2082;
          *&v220[6] = "enter_reset";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] entering reset, dropping any pending doorbells", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v172))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] entering reset, dropping any pending doorbells", "doorbell_coordinator.cpp", 242, "enter_reset");
      }

      if (LOBYTE(v11[354]._os_unfair_lock_opaque) == 2)
      {
        ashp::timer::stop(v1 + 1320, v173, v174, v175);
      }

      ashp::acipc::doorbell_coordinator::process_pending(v1 + 1316, 2, 4u);
      v179 = *&v1[1354]._os_unfair_lock_opaque;
      if (v179)
      {
        v180 = *&v1[1358]._os_unfair_lock_opaque;
        v181 = &v180[18 * v179];
        do
        {
          while (1)
          {
            v182 = v180[15];
            if (!v182)
            {
              break;
            }

            v182[2] = -1;
            v182[3] = -1;
            v183 = v182[9];
            if (!v183 || ((*(v183 + 16))(v183, 2), (v182 = v180[15]) != 0))
            {
              ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::remove((v180 + 15), v182, v177, v178);
            }

            ashp::detail::intrusive_list::intrusive_list_impl<ashp::acipc::doorbell_participant,ashp::intrusive_list_link<ashp::acipc::doorbell_participant>,&ashp::acipc::doorbell_participant::_coordinator_link>::insert_before((v180 + 12), v182, v177, v178);
          }

          v180[10] = -1;
          v180[11] = -1;
          v180 += 18;
        }

        while (v180 != v181);
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v1[1376]._os_unfair_lock_opaque, v176, v177, v178);
      ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(&v1[1360]._os_unfair_lock_opaque, 0, v184, v185, v186);
      goto LABEL_248;
    }

LABEL_265:
    ashp::detail::control_flow::log_guard_else_failure("doorbell_coordinator.cpp", 0xF0, "enter_reset", v163);
LABEL_248:
    os_unfair_lock_unlock(v10);
    if (LOBYTE(v11[411]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[411]._os_unfair_lock_opaque) = 0;
    }

    if (LOBYTE(v11[413]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[413]._os_unfair_lock_opaque) = 0;
    }

    os_unfair_lock_lock(v1 + 1442);
    LOBYTE(v11[419]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v1 + 1442);
    ashp::async_notifier::suspend((*&v1[1444]._os_unfair_lock_opaque + 16), v187, v188, v189);
    if (LOBYTE(v11[415]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[415]._os_unfair_lock_opaque) = 0;
    }

    if (LOBYTE(v11[417]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[417]._os_unfair_lock_opaque) = 0;
    }

    ashp::optional<ashp::interrupt,void>::value(&v1[1408], v190, v191, v192);
    v193 = *&v1[1408]._os_unfair_lock_opaque;
    ashp::optional<ashp::interrupt_manager,void>::value(&v193[158], v194, v195, v196);
    ashp::interrupt_manager::resume_handler(v193 + 158, &v1[1408]);
    ashp::optional<ashp::interrupt,void>::value(&v1[1446], v197, v198, v199);
    v200 = *&v1[1446]._os_unfair_lock_opaque;
    ashp::optional<ashp::interrupt_manager,void>::value(&v200[158], v201, v202, v203);
    ashp::interrupt_manager::suspend_handler(v200 + 158, &v1[1446]);
    ashp::optional<ashp::interrupt,void>::value(&v1[1466], v204, v205, v206);
    v207 = *&v1[1466]._os_unfair_lock_opaque;
    ashp::optional<ashp::interrupt_manager,void>::value(&v207[158], v208, v209, v210);
    ashp::interrupt_manager::suspend_handler(v207 + 158, &v1[1466]);
    ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(&v1[1488], v211, v212, v213);
    *&v1[1536]._os_unfair_lock_opaque = 0;
    if (LOBYTE(v11[518]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[518]._os_unfair_lock_opaque) = 0;
    }

    if (LOBYTE(v11[488]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v11[488]._os_unfair_lock_opaque) = 0;
    }

    ashp::driver::update_power_state(v1, 0);
    ashp::acipc::acipc_driver::update_ipc_driver_debug_state(v1);
    return;
  }

  mach_timebase_info(buf);
  v166 = *buf;
  v162 = mach_continuous_time();
  v168 = 50000000 * HIDWORD(v166) / v166;
  v169 = *&v1[1370]._os_unfair_lock_opaque;
  v170 = __CFADD__(v169, v168);
  v171 = v169 + v168;
  if (v170)
  {
    v171 = -1;
  }

  if (v162 <= v171)
  {
LABEL_228:
    v165 = LOBYTE(v11[354]._os_unfair_lock_opaque);
    goto LABEL_229;
  }

  ashp::detail::base::log_pre_crash_message("doorbell_coordinator timer did not expire as expected.", "doorbell_coordinator.cpp", 0xED, "enter_reset", v167);
  _os_crash();
  __break(1u);
LABEL_271:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x45, "enter_reset", v81);
  _os_crash();
  __break(1u);
}

uint64_t ashp::optional<ashp::interrupt,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 56) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
    if (*(a1 + 60) == 1)
    {
      *(a1 + 60) = 0;
    }

    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset((a1 + 24), a2, a3, a4);

    ashp::buffer_mapping::~buffer_mapping(a1, v5, v6, v7);
  }
}

uint64_t ashp::optional<ashp::acipc::boot_manager,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 48) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::acipc_driver::get_current_ipc_stage_name(const os_unfair_lock *this)
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v5 = *&this[1430]._os_unfair_lock_opaque;
  if (v5)
  {
    CStringPtr = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, v2, v3, v4);
    if (CStringPtr)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v7 = CStringPtr;
      }

      else
      {
        v7 = "???";
      }
    }

    else
    {
      v7 = "(nil)";
    }

    log_level = ashp::detail::logging::get_log_level(CStringPtr);
    if (log_level >= 4)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446978;
        v20 = "acipc_driver.cpp";
        v21 = 1024;
        v22 = 339;
        v23 = 2082;
        v24 = "get_current_ipc_stage_name";
        v25 = 2080;
        v26 = v7;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] boot ipc stage name %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] boot ipc stage name %s", "acipc_driver.cpp", 339, "get_current_ipc_stage_name", v7);
    }

    v15 = *&this[1430]._os_unfair_lock_opaque;
    return *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v15, v12, v13, v14);
  }

  v8 = *&this[1432]._os_unfair_lock_opaque;
  if (v8)
  {
    v9 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v2, v3, v4);
    if (v9)
    {
      v9 = CFStringGetCStringPtr(v9, 0x8000100u);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = "???";
      }
    }

    else
    {
      v10 = "(nil)";
    }

    v18 = ashp::detail::logging::get_log_level(v9);
    if (v18 >= 4)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        *buf = 136446978;
        v20 = "acipc_driver.cpp";
        v21 = 1024;
        v22 = 344;
        v23 = 2082;
        v24 = "get_current_ipc_stage_name";
        v25 = 2080;
        v26 = v10;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] main ipc stage name %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(v18))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] main ipc stage name %s", "acipc_driver.cpp", 344, "get_current_ipc_stage_name", v10);
    }

    v15 = *&this[1432]._os_unfair_lock_opaque;
    return *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v15, v12, v13, v14);
  }

  v16 = ashp::detail::logging::get_log_level(0);
  if (v16 >= 4)
  {
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      *buf = 136446722;
      v20 = "acipc_driver.cpp";
      v21 = 1024;
      v22 = 349;
      v23 = 2082;
      v24 = "get_current_ipc_stage_name";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] no ipc stage set", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v16))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] no ipc stage set", "acipc_driver.cpp", 349, "get_current_ipc_stage_name");
  }

  return 0;
}

uint64_t ashp::acipc::acipc_driver::setup_main_ipc_stage(const os_unfair_lock *this, const __CFString **a2, pthread_rwlock_t **a3)
{
  v8 = this;
  v440 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (*&v8[1430]._os_unfair_lock_opaque == 0)
  {
    v374 = a3;
    v11 = &v388;
    *&v8[1432]._os_unfair_lock_opaque = a2;
    v375 = v8;
    v376 = 1;
    log_level = ashp::detail::logging::get_log_level(v9);
    if (log_level >= 3)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        *buf = 136446722;
        *&buf[4] = "acipc_driver.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 424;
        v418 = 2082;
        v11 = &v388;
        v419 = "setup_main_ipc_stage";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up main ipc stage", buf, 0x1Cu);
      }
    }

    v13 = ashp::detail::logging::get_log_level(log_level);
    if (!v13)
    {
      goto LABEL_8;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_295;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x1A5, "setup_main_ipc_stage", v10);
  _os_crash();
  __break(1u);
LABEL_288:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x221, "create_device_memory", v57);
  _os_crash();
  __break(1u);
LABEL_289:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x223, "create_device_memory", v62);
  _os_crash();
  __break(1u);
LABEL_290:
  v8 = "BUG in Airship: ";
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x216, "create_device_memory", v51);
  _os_crash();
  __break(1u);
LABEL_291:
  ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", 0x21E, "create_device_memory", v53);
  v177 = 0;
  v422 = 0;
  v76 = &v8[1486];
  v385 = 0;
  while (1)
  {
    v11 = 5952;
    if (LOBYTE(v4[482]._os_unfair_lock_opaque) != 1)
    {
      if ((v177 & 1) == 0)
      {
        goto LABEL_160;
      }

      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>(&v8[1488], &v377, v172, v173);
      v191 = &v377;
      goto LABEL_142;
    }

    if ((v177 & 1) == 0)
    {
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>(&v377, &v8[1488], v172, v173);
      v191 = &v8[1488];
LABEL_142:
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(v191, v188, v189, v190);
      goto LABEL_160;
    }

    v432[8] = 0;
    *&v434[2] = *&v8[1492]._os_unfair_lock_opaque;
    *&v8[1492]._os_unfair_lock_opaque = 0x200000000;
    if (LOBYTE(v4[466]._os_unfair_lock_opaque) == 1)
    {
      *v432 = *&v8[1488]._os_unfair_lock_opaque;
      v432[8] = 1;
      LOBYTE(v4[466]._os_unfair_lock_opaque) = 0;
    }

    v178 = *&v8[1494]._os_unfair_lock_opaque;
    *&v8[1494]._os_unfair_lock_opaque = 0;
    *&v434[10] = v178;
    v435 = *&v8[1496]._os_unfair_lock_opaque;
    v436 = *&v8[1500]._os_unfair_lock_opaque;
    v438 = 0;
    if (LOBYTE(v4[479]._os_unfair_lock_opaque) == 1)
    {
      os_unfair_lock_opaque = v8[1502]._os_unfair_lock_opaque;
      v438 = 1;
      LOBYTE(v4[479]._os_unfair_lock_opaque) = 0;
    }

    v439 = *&v8[1504]._os_unfair_lock_opaque;
    a3 = &v377;
    ashp::buffer_mapping::operator=(&v8[1488], &v377, v172, v173);
    v179 = v379;
    v379 = 0;
    v180 = *&v8[1494]._os_unfair_lock_opaque;
    *&v8[1494]._os_unfair_lock_opaque = v179;
    *v423 = v180;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v423, v181, v182, v183);
    *&v8[1496]._os_unfair_lock_opaque = v380;
    *&v8[1500]._os_unfair_lock_opaque = v381;
    if (v383 == 1)
    {
      v383 = 0;
      v186 = v4[479]._os_unfair_lock_opaque;
      v8[1502]._os_unfair_lock_opaque = v382;
      if ((v186 & 1) == 0)
      {
        v187 = 1;
LABEL_153:
        LOBYTE(v4[479]._os_unfair_lock_opaque) = v187;
      }
    }

    else if (LOBYTE(v4[479]._os_unfair_lock_opaque) == 1)
    {
      v187 = 0;
      goto LABEL_153;
    }

    *&v8[1504]._os_unfair_lock_opaque = v384;
    ashp::buffer_mapping::operator=(&v377, v432, v184, v185);
    v206 = *&v434[10];
    *&v434[10] = 0;
    v207 = v379;
    v379 = v206;
    *v423 = v207;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(v423, v208, v209, v210);
    v380 = v435;
    v381 = v436;
    if (v438 == 1)
    {
      v438 = 0;
      v382 = os_unfair_lock_opaque;
      if ((v383 & 1) == 0)
      {
        v383 = 1;
      }
    }

    else if (v383 == 1)
    {
      v383 = 0;
    }

    v384 = v439;
    ashp::refcounted_ptr<ashp::devmem_mapping *,ashp::detail::refcount_mixin::refcount_policy<ashp::refcount_mixin<ashp::devmem_mapping,ashp::typed_deleter<ashp::devmem_mapping>>>>::reset(&v434[10], v211, v212, v213);
    ashp::buffer_mapping::~buffer_mapping(v432, v214, v215, v216);
LABEL_160:
    ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(&v377, v171, v172, v173);
    ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(&buf[8], v217, v218, v219);
    if ((v4[482]._os_unfair_lock_opaque & 1) == 0)
    {
      v240 = ashp::detail::logging::get_log_level(v220);
      if (v240 >= 2)
      {
        v240 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v240)
        {
          *buf = 136446722;
          *&buf[4] = "acipc_driver.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 436;
          v418 = 2082;
          v419 = "setup_main_ipc_stage";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to allocate/map device memory", buf, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v240))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to allocate/map device memory", "acipc_driver.cpp", 436, "setup_main_ipc_stage");
      }

      goto LABEL_313;
    }

    v224 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v221, v222, v223);
    addr = ashp::mappable_buffer::get_addr(v224, v225, v226, v227);
    v232 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v229, v230, v231);
    v234 = addr + v232[9];
    if ((v234 & 3) == 0)
    {
      break;
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x1BB, "setup_main_ipc_stage", v233);
    _os_crash();
    __break(1u);
LABEL_297:
    v8 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x1CD, "setup_main_ipc_stage", v233);
    _os_crash();
    __break(1u);
LABEL_298:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    while (2)
    {
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] locating peripheral info interrupt", "acipc_driver.cpp", 577, v5);
LABEL_99:
      v387 = 0;
      ashp::optional<ashp::acipc::config::acipc_config,void>::value(&v8[956], v146, v147, v148);
      if (resolve_named_target<ashp::acipc::config::interrupt_spec>(*&v8[964]._os_unfair_lock_opaque, *&v8[968]._os_unfair_lock_opaque, (a3 + 34), &v387, 0))
      {
        if ((v3 & 1) == 0 && *(a3 + 132))
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x245, "create_device_memory", v152);
          _os_crash();
          __break(1u);
        }

        else if ((*(a3 + 133) & *(a3 + 132)) != 1)
        {
          v426 = 0;
          *v427 = 0;
          *v423 = 0x6800000000;
          v153 = *(a3 + 54);
          v154 = *(a3 + 53);
          *&v423[8] = 120;
          LODWORD(v424) = 2 * v153 + 120;
          v155 = 2 * (v154 + v153) + 120;
          v156 = v154 + v153 + v153;
          v157 = 2 * (v156 + v154);
          v158 = v157 + 120;
          HIDWORD(v424) = v155;
          LODWORD(v425) = 2 * v156 + 120;
          if (v3)
          {
            ashp::optional<unsigned int,void>::value(&v401, v149, v150, v151);
            v159 = v157 & 2;
            v160 = v158 + v159 + v401;
            v161 = __CFADD__(v158 + v159, v401);
            v162 = __CFADD__(v158, v159);
            v163 = v158 + v159;
            v164 = v162;
            if (v162)
            {
              v158 = v163;
            }

            else
            {
              v158 = v160;
            }

            v165 = v164 | v161;
            HIDWORD(v425) = v163;
            if ((v426 & 1) == 0)
            {
              v426 = 1;
            }
          }

          else
          {
            v165 = 0;
          }

          ashp::optional<unsigned int,void>::value(&v411, v149, v150, v151);
          if (v165)
          {
            goto LABEL_121;
          }

          v167 = 4 - (v158 & 3);
          if ((v158 & 3) == 0)
          {
            v167 = 0;
          }

          v162 = __CFADD__(v158, v167);
          v158 += v167;
          if (v162)
          {
LABEL_121:
            v427[0] = v158;
          }

          else
          {
            v427[0] = v158;
            v162 = __CFADD__(v158, v411);
            v192 = v158 + v411;
            v158 += v411;
            if (!v162)
            {
              v193 = 8 - (v192 & 7);
              if ((v192 & 7) == 0)
              {
                v193 = 0;
              }

              v158 = v192 + v193;
              if (!__CFADD__(v192, v193))
              {
                v194 = *(a3 + 72);
                v427[1] = v158;
                if (!__CFADD__(v158, v194))
                {
                  ashp::mappable_buffer::create(&v413, v158 + v194, 2, v86, v166);
                  if (v414)
                  {
                    ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v413, v195, v196, v197);
                    if ((ashp::mappable_buffer::get_addr(&v413, v198, v199, v200) & 7) == 0)
                    {
                      ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v413, v201, v202, v197);
                      ashp::mappable_buffer::copy_descriptor(&v386, &v413, v203, v204, v205);
                      ashp::devmem_mapping::create(&v392, v8, &v386);
                    }

                    v373 = 612;
                  }

                  else
                  {
                    v373 = 611;
                  }

                  ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", v373, "create_device_memory", v197);
                  v422 = 0;
                  ashp::buffer_mapping::~buffer_mapping(&v413, v339, v340, v341);
                  goto LABEL_125;
                }

LABEL_123:
                v137 = 608;
                goto LABEL_124;
              }
            }
          }

          v427[1] = v158;
          goto LABEL_123;
        }

        v8 = "BUG in Airship: ";
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x246, "create_device_memory", v152);
        _os_crash();
        __break(1u);
LABEL_301:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_54:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] calculating mcr memory", "acipc_driver.cpp", 561, v5);
        goto LABEL_55;
      }

      while (1)
      {
        v8 = "BUG in Airship: ";
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x243, "create_device_memory", v152);
        _os_crash();
        __break(1u);
LABEL_295:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_7:
        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up main ipc stage", "acipc_driver.cpp", 424, "setup_main_ipc_stage");
LABEL_8:
        v4 = v8 + 1024;
        v14 = v8[1435]._os_unfair_lock_opaque;
        v8[1434]._os_unfair_lock_opaque = 0;
        if ((v14 & 1) == 0)
        {
          LOBYTE(v8[1435]._os_unfair_lock_opaque) = 1;
        }

        v15 = v8[1437]._os_unfair_lock_opaque;
        v8[1436]._os_unfair_lock_opaque = 0;
        if ((v15 & 1) == 0)
        {
          LOBYTE(v8[1437]._os_unfair_lock_opaque) = 1;
        }

        v16 = ashp::detail::logging::get_log_level(v13);
        if (v16 >= 4)
        {
          v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v16)
          {
            *buf = 136446722;
            *&buf[4] = "acipc_driver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 427;
            v418 = 2082;
            v11 = &v388;
            v419 = "setup_main_ipc_stage";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up ipc status interrupt", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v16))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up ipc status interrupt", "acipc_driver.cpp", 427, "setup_main_ipc_stage");
        }

        ashp::optional<ashp::interrupt,void>::value(&v8[1446], v17, v18, v19);
        ashp::acipc::acipc_driver::get_vector_for_interrupt(buf, v8, a2 + 32);
        ashp::optional<unsigned int,void>::value(buf, v20, v21, v22);
        v23 = buf[0];
        v24 = *&v8[1446]._os_unfair_lock_opaque;
        ashp::optional<ashp::interrupt_manager,void>::value(&v24[158], v25, v26, v27);
        ashp::interrupt_manager::set_handler_mask(v24 + 158, &v8[1446], 1 << v23);
        ashp::optional<ashp::interrupt,void>::value(&v8[1446], v28, v29, v30);
        v31 = *&v8[1446]._os_unfair_lock_opaque;
        ashp::optional<ashp::interrupt_manager,void>::value(&v31[158], v32, v33, v34);
        ashp::interrupt_manager::resume_handler(v31 + 158, &v8[1446]);
        v36 = ashp::detail::logging::get_log_level(v35);
        if (v36 >= 4)
        {
          v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            *buf = 136446722;
            *&buf[4] = "acipc_driver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 430;
            v418 = 2082;
            v11 = &v388;
            v419 = "setup_main_ipc_stage";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up peripheral info interrupt", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v36))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up peripheral info interrupt", "acipc_driver.cpp", 430, "setup_main_ipc_stage");
        }

        ashp::optional<ashp::interrupt,void>::value(&v8[1466], v37, v38, v39);
        ashp::acipc::acipc_driver::get_vector_for_interrupt(buf, v8, a2 + 34);
        ashp::optional<unsigned int,void>::value(buf, v40, v41, v42);
        v43 = buf[0];
        v44 = *&v8[1466]._os_unfair_lock_opaque;
        ashp::optional<ashp::interrupt_manager,void>::value(&v44[158], v45, v46, v47);
        ashp::interrupt_manager::set_handler_mask(v44 + 158, &v8[1466], 1 << v43);
        v49 = ashp::detail::logging::get_log_level(v48);
        if (v49 >= 4)
        {
          v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v49)
          {
            *buf = 136446722;
            *&buf[4] = "acipc_driver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 432;
            v418 = 2082;
            v11 = &v388;
            v419 = "setup_main_ipc_stage";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating device memory", buf, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v49))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating device memory", "acipc_driver.cpp", 432, "setup_main_ipc_stage");
        }

        os_unfair_lock_assert_owner(v8 + 2);
        a3 = *&v8[1432]._os_unfair_lock_opaque;
        if (!a3)
        {
          goto LABEL_290;
        }

        v52 = ashp::detail::logging::get_log_level(v50);
        v5 = "create_device_memory";
        if (v52 >= 4)
        {
          v52 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v52)
          {
            *v432 = 136446722;
            *&v432[4] = "acipc_driver.cpp";
            v433 = 1024;
            *v434 = 539;
            *&v434[4] = 2082;
            *&v434[6] = "create_device_memory";
            _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] calculating mtr memory", v432, 0x1Cu);
          }
        }

        if (ashp::detail::logging::get_log_level(v52))
        {
          if (airship_platform_get_global_logger::once != -1)
          {
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
          }

          ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] calculating mtr memory", "acipc_driver.cpp", 539, "create_device_memory");
        }

        ashp::acipc::tr_ring::compute_required_memory(&v411, *(a3 + 56), *(a3 + 29), *(a3 + 30));
        if ((v412 & 1) == 0)
        {
          goto LABEL_291;
        }

        ashp::acipc::compute_hdrftr_size_fields(v410, *(a3 + 29), 0, v53);
        if (v410[2] != 1)
        {
          goto LABEL_288;
        }

        ashp::optional<unsigned short,void>::value(v410, v54, v55, v56);
        if (v410[1])
        {
          goto LABEL_288;
        }

        ashp::acipc::compute_hdrftr_size_fields(v409, *(a3 + 30), 0, v58);
        if (v409[2] != 1)
        {
          goto LABEL_289;
        }

        ashp::optional<unsigned short,void>::value(v409, v59, v60, v61);
        if (v409[1])
        {
          goto LABEL_289;
        }

        v404[16] = 0;
        v405 = 0;
        v406 = 0;
        v407 = 0;
        v408 = 0;
        ashp::optional<ashp::acipc::config::acipc_config,void>::value(&v8[956], v63, v64, v65);
        if (resolve_named_target<ashp::acipc::config::doorbell_spec>(*&v8[970]._os_unfair_lock_opaque, *&v8[974]._os_unfair_lock_opaque, (a3 + 17), v404, 0))
        {
          break;
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x225, "create_device_memory", v69);
        _os_crash();
        __break(1u);
LABEL_293:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x227, "create_device_memory", v71);
        _os_crash();
        __break(1u);
      }

      v403 = 0;
      ashp::optional<ashp::acipc::config::acipc_config,void>::value(&v8[956], v66, v67, v68);
      v70 = resolve_named_target<ashp::acipc::config::interrupt_spec>(*&v8[964]._os_unfair_lock_opaque, *&v8[968]._os_unfair_lock_opaque, (a3 + 20), &v403, 0);
      if (!v70)
      {
        goto LABEL_293;
      }

      v402 = 0;
      v400 = 0;
      v398 = 0;
      LOBYTE(v436) = 0;
      v396 = 0;
      v3 = *(a3 + 248);
      if (v3 != 1)
      {
        goto LABEL_93;
      }

      v72 = ashp::detail::logging::get_log_level(v70);
      if (v72 >= 4)
      {
        v72 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v72)
        {
          *v423 = 136446722;
          *&v423[4] = "acipc_driver.cpp";
          v424 = 0x822000002310400;
          v425 = "create_device_memory";
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] calculating mcr memory", v423, 0x1Cu);
        }
      }

      if (ashp::detail::logging::get_log_level(v72))
      {
        if (airship_platform_get_global_logger::once == -1)
        {
          goto LABEL_54;
        }

        goto LABEL_301;
      }

LABEL_55:
      ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v73, v74, v75);
      v76 = *(a3 + 92);
      ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v77, v78, v79);
      v80 = *(a3 + 47);
      ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v81, v82, v83);
      ashp::acipc::cr_ring::compute_required_memory(v423, v76, v80, *(a3 + 48));
      if (v423[4] == 1)
      {
        v401 = *v423;
        if ((v402 & 1) == 0)
        {
          v402 = 1;
        }

        ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v84, v85, v86);
        ashp::acipc::compute_hdrftr_size_fields(v423, *(a3 + 47), 0, v87);
        if (v423[2] == 1)
        {
          v399 = *v423;
          if ((v400 & 1) == 0)
          {
            v400 = 1;
          }

          ashp::optional<unsigned short,void>::value(&v399, v88, v89, v90);
          if (!HIBYTE(v399))
          {
            ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v92, v93, v94);
            ashp::acipc::compute_hdrftr_size_fields(v423, *(a3 + 48), 0, v95);
            if (v423[2] == 1)
            {
              v397 = *v423;
              if ((v398 & 1) == 0)
              {
                v398 = 1;
              }

              ashp::optional<unsigned short,void>::value(&v397, v96, v97, v98);
              if (!HIBYTE(v397))
              {
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v100, v101, v102);
                if (*(a3 + 216) == 1)
                {
                  v394 = 0;
                  *v395 = 0;
                  v395[4] = 0;
                  *&v395[8] = 0;
                  v395[12] = 0;
                  ashp::optional<ashp::acipc::config::acipc_config,void>::value(&v8[956], v103, v104, v105);
                  ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v106, v107, v108);
                  ashp::optional<ashp::acipc::name_and_selector,void>::value((a3 + 25), v109, v110, v111);
                  if (!resolve_named_target<ashp::acipc::config::doorbell_spec>(*&v8[970]._os_unfair_lock_opaque, *&v8[974]._os_unfair_lock_opaque, (a3 + 25), &v392, 0))
                  {
                    goto LABEL_320;
                  }

                  v390 = 0;
                  if (v394 == 1)
                  {
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v388, v112, v113, v114);
                    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v388, v392, v116, v117);
                    v389 = v393;
                    v390 = 1;
                  }

                  v391 = *v395;
                  *(v11 + 29) = *&v395[5];
                  ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::optional<int,0>(v423, &v388, v113, v114);
                  v431 = 0;
                  if (v428 == 1)
                  {
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v429, &v423[8], v119, v120);
                    v430[0] = *v427;
                    *(v430 + 5) = *(&v427[1] + 1);
                    v121 = 1;
                    v431 = 1;
                    if (v428 == 1)
                    {
                      v428 = 0;
                      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v423[8], v118, v119, v120);
                      v121 = v431;
                    }

                    if (v436)
                    {
                      v11 = &v435;
                      if (v121)
                      {
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v413, &v432[8], v119, v120);
                        v415[0] = v435;
                        *(v415 + 5) = *(&v435 + 5);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v416, v429, v122, v123);
                        ashp::swap(&v432[8], v416, v124, v125);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v416, v126, v127, v128);
                        *&v435 = v430[0];
                        *(&v435 + 5) = *(v430 + 5);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v416, &v413, v129, v130);
                        ashp::swap(v429, v416, v131, v132);
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v416, v133, v134, v135);
                        v430[0] = v415[0];
                        *(v430 + 5) = *(v415 + 5);
                        v136 = &v413;
                        goto LABEL_86;
                      }

LABEL_81:
                      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v429, &v432[8], v119, v120);
                      v430[0] = v435;
                      *(v430 + 5) = *(&v435 + 5);
                      v431 = 1;
                      if (v436 == 1)
                      {
                        LOBYTE(v436) = 0;
                        v136 = &v432[8];
                        goto LABEL_86;
                      }
                    }

                    else if (v121)
                    {
                      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v432[8], v429, v119, v120);
                      *&v435 = v430[0];
                      *(&v435 + 5) = *(v430 + 5);
                      LOBYTE(v436) = 1;
                      if (v431 == 1)
                      {
                        v431 = 0;
                        v136 = v429;
LABEL_86:
                        ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v136, v118, v119, v120);
                      }
                    }
                  }

                  else if (v436 == 1)
                  {
                    v11 = &v435;
                    goto LABEL_81;
                  }

                  if (v431 == 1)
                  {
                    v431 = 0;
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v429, v118, v119, v120);
                  }

                  if (v428 == 1)
                  {
                    v428 = 0;
                    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v423[8], v118, v119, v120);
                  }

                  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v388, v118, v119, v120);
                  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v392, v138, v139, v140);
                }

                ashp::optional<ashp::acipc::config::acipc_config,void>::value(&v8[956], v103, v104, v105);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value((a3 + 23), v141, v142, v143);
                v70 = resolve_named_target<ashp::acipc::config::interrupt_spec>(*&v8[964]._os_unfair_lock_opaque, *&v8[968]._os_unfair_lock_opaque, (a3 + 29), &v396, 0);
                if (v70)
                {
LABEL_93:
                  v145 = ashp::detail::logging::get_log_level(v70);
                  if (v145 >= 4)
                  {
                    v145 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                    if (v145)
                    {
                      *v423 = 136446722;
                      *&v423[4] = "acipc_driver.cpp";
                      v424 = 0x822000002410400;
                      v425 = v5;
                      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] locating peripheral info interrupt", v423, 0x1Cu);
                    }
                  }

                  if (ashp::detail::logging::get_log_level(v145))
                  {
                    if (airship_platform_get_global_logger::once == -1)
                    {
                      continue;
                    }

                    goto LABEL_298;
                  }

                  goto LABEL_99;
                }

LABEL_303:
                v8 = "BUG in Airship: ";
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x23E, "create_device_memory", v144);
                _os_crash();
                __break(1u);
LABEL_304:
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xAB, "set_ipc_stage", v277);
                _os_crash();
                __break(1u);
LABEL_305:
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xAD, "set_ipc_stage", v277);
                _os_crash();
                __break(1u);
LABEL_306:
                ashp::detail::control_flow::log_guard_else_failure("messenger.cpp", 0xB9, "set_ipc_stage", v285);
                ashp::buffer_mapping::~buffer_mapping(&v377, v367, v368, v369);
                os_unfair_lock_unlock(&v5[v8]);
                v371 = ashp::detail::logging::get_log_level(v370);
                if (v371 >= 2)
                {
                  v371 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (v371)
                  {
                    *buf = 136446722;
                    *&buf[4] = "acipc_driver.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 483;
                    v418 = 2082;
                    v419 = "setup_main_ipc_stage";
                    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] messenger failed to map mtr/mcr memory", buf, 0x1Cu);
                  }
                }

                if (ashp::detail::logging::get_log_level(v371))
                {
                  if (airship_platform_get_global_logger::once != -1)
                  {
                    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                  }

                  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] messenger failed to map mtr/mcr memory", "acipc_driver.cpp", 483, "setup_main_ipc_stage");
                }

LABEL_313:
                ashp::acipc::acipc_driver::raise_ipc_error(v8, 4);
                return ashp::deferred_action<ashp::acipc::acipc_driver::setup_main_ipc_stage(ashp::acipc::config::main_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(&v375);
              }

LABEL_330:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x237, "create_device_memory", v99);
              _os_crash();
              __break(1u);
              goto LABEL_331;
            }

LABEL_328:
            if (v398 == 1)
            {
              v398 = 0;
            }

            goto LABEL_330;
          }
        }

        else if (v400 == 1)
        {
          v400 = 0;
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x235, "create_device_memory", v91);
        _os_crash();
        __break(1u);
        goto LABEL_328;
      }

      break;
    }

    if (v402 == 1)
    {
      v402 = 0;
    }

    v137 = 563;
LABEL_124:
    ashp::detail::control_flow::log_guard_else_failure("acipc_driver.cpp", v137, "create_device_memory", v86);
    v422 = 0;
LABEL_125:
    if (v436 == 1)
    {
      LOBYTE(v436) = 0;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v432[8], v168, v169, v170);
    }

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v404, v168, v169, v170);
    v76 = &v8[1486];
    v385 = 0;
    if (v422)
    {
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>(&v377, &buf[8], v172, v173);
      ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(&buf[8], v174, v175, v176);
      v177 = v385;
    }

    else
    {
      v177 = 0;
    }
  }

  *&v8[1536]._os_unfair_lock_opaque = v234;
  if (LOBYTE(v4[518]._os_unfair_lock_opaque) == 1)
  {
    goto LABEL_297;
  }

  v235 = *(v374 + 8);
  *&v4[515]._os_unfair_lock_opaque = v235 | 0x200000000;
  v8[1541]._os_unfair_lock_opaque = 0;
  LOBYTE(v4[518]._os_unfair_lock_opaque) = 1;
  v236 = ashp::detail::logging::get_log_level(v232);
  if (v236 >= 4)
  {
    v236 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v236)
    {
      v237 = *(v374 + 8);
      *buf = 136446978;
      *&buf[4] = "acipc_driver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 468;
      v418 = 2082;
      v419 = "setup_main_ipc_stage";
      v420 = 1024;
      *v421 = v237;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] copying peripheral info, initial exec stage value=%u", buf, 0x22u);
    }
  }

  if (ashp::detail::logging::get_log_level(v236))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] copying peripheral info, initial exec stage value=%u", "acipc_driver.cpp", 468, "setup_main_ipc_stage", *(v374 + 8));
  }

  v238 = *&v8[1536]._os_unfair_lock_opaque;
  *v238 = v235;
  *(v238 + 4) = 2;
  *(v238 + 12) = 0;
  v239 = *&v8[58]._os_unfair_lock_opaque;
  v377 = (v239 + 8);
  pthread_rwlock_rdlock((v239 + 8));
  if (*(v239 + 208) == 1)
  {
    buf[16] = 0;
  }

  else
  {
    (*(*v239 + 120))(buf, v239);
  }

  v241 = ashp::lock_guard<ashp::rw_mutex_reader<ashp::rw_mutex>,ashp::guard_locker<ashp::rw_mutex_reader<ashp::rw_mutex>>,0>::~lock_guard(&v377);
  if (buf[16] != 1)
  {
    if (LOBYTE(v4[488]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v4[488]._os_unfair_lock_opaque) = 0;
    }

    v269 = ashp::detail::logging::get_log_level(v241);
    if (v269 >= 2)
    {
      v269 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v269)
      {
        *buf = 136446722;
        *&buf[4] = "acipc_driver.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 474;
        v418 = 2082;
        v419 = "setup_main_ipc_stage";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] failed to get device memory window config", buf, 0x1Cu);
      }
    }

    if (!ashp::detail::logging::get_log_level(v269))
    {
      goto LABEL_313;
    }

    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_193:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] failed to get device memory window config", "acipc_driver.cpp", 474, "setup_main_ipc_stage");
      goto LABEL_313;
    }

LABEL_316:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_193;
  }

  v245 = v4[488]._os_unfair_lock_opaque;
  *&v8[1508]._os_unfair_lock_opaque = *buf;
  if ((v245 & 1) == 0)
  {
    LOBYTE(v4[488]._os_unfair_lock_opaque) = 1;
  }

  v246 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v242, v243, v244);
  a3 = ashp::mappable_buffer::get_addr(v246, v247, v248, v249);
  v253 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v250, v251, v252);
  if (*(a2 + 248) == 1)
  {
    v257 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v254, v255, v256);
    v261 = ashp::mappable_buffer::get_addr(v257, v258, v259, v260);
    v265 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v262, v263, v264);
    v253 = ashp::optional<unsigned int,void>::value(v265 + 56, v266, v267, v268);
    v11 = v261 + *(v265 + 56);
  }

  else
  {
    v11 = 0;
  }

  v270 = ashp::detail::logging::get_log_level(v253);
  if (v270 >= 4)
  {
    v270 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v270)
    {
      *buf = 136446722;
      *&buf[4] = "acipc_driver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 480;
      v418 = 2082;
      v419 = "setup_main_ipc_stage";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up message rings", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v270))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up message rings", "acipc_driver.cpp", 480, "setup_main_ipc_stage");
  }

  v5 = 4944;
  ashp::optional<ashp::acipc::messenger,void>::value(&v8[1236], v271, v272, v273);
  os_unfair_lock_lock(v8 + 1236);
  if ((v4[260]._os_unfair_lock_opaque & 1) == 0)
  {
    goto LABEL_304;
  }

  if (!a3)
  {
    goto LABEL_305;
  }

  if (v11 || (a2[31] & 1) == 0)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a2, v274, v275, v276);
    CStringPtr = *a2;
    if (*a2)
    {
      CStringPtr = CFStringGetCStringPtr(CStringPtr, 0x8000100u);
      if (CStringPtr)
      {
        v279 = CStringPtr;
      }

      else
      {
        v279 = "???";
      }
    }

    else
    {
      v279 = "(nil)";
    }

    v280 = ashp::detail::logging::get_log_level(CStringPtr);
    if (v280 >= 4)
    {
      v280 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v280)
      {
        *buf = 136446978;
        *&buf[4] = "messenger.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 179;
        v418 = 2082;
        v419 = "set_ipc_stage";
        v420 = 2080;
        *v421 = v279;
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] setting up message buffer for main ipc stage %s", buf, 0x26u);
      }
    }

    if (ashp::detail::logging::get_log_level(v280))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] setting up message buffer for main ipc stage %s", "messenger.cpp", 179, "set_ipc_stage", v279);
    }

    ashp::mappable_buffer::create(&v377, *(a2 + 56) << 7, 2, v281, v282);
    if (v378)
    {
      v286 = *&v8[1238]._os_unfair_lock_opaque;
      ashp::optional<ashp::mappable_buffer,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v377, v283, v284, v285);
      ashp::mappable_buffer::copy_descriptor(v423, &v377, v287, v288, v289);
      ashp::devmem_mapping::create(v432, v286, v423);
    }

    goto LABEL_306;
  }

  while (2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xB0, "set_ipc_stage", v277);
    _os_crash();
    __break(1u);
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] transfer ring tail index array signaler 0x%llx", "ring_manager.cpp", 129, "set_tr_index_arrays", a3);
    os_unfair_lock_unlock((v8 + v3));
    ashp::optional<ashp::acipc::ring_manager,void>::value(v8 + v3, v290, v291, v292);
    v296 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v293, v294, v295);
    a3 = ashp::mappable_buffer::get_addr(v296, v297, v298, v299);
    v5 = *(ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v300, v301, v302) + 40);
    v306 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v303, v304, v305);
    v310 = ashp::mappable_buffer::get_addr(v306, v307, v308, v309);
    v76 = *(ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(v76, v311, v312, v313) + 48);
    LOWORD(v377) = *"de";
    os_unfair_lock_lock((v8 + v3));
    if ((v4[50]._os_unfair_lock_opaque & 1) == 0)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x91, "set_cr_index_arrays", v314);
      _os_crash();
      __break(1u);
      goto LABEL_318;
    }

    if ((a3 + v5))
    {
LABEL_318:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x92, "set_cr_index_arrays", v314);
      _os_crash();
      __break(1u);
LABEL_319:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x93, "set_cr_index_arrays", v314);
      _os_crash();
      __break(1u);
LABEL_320:
      v8 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x23B, "create_device_memory", v115);
      _os_crash();
      __break(1u);
      continue;
    }

    break;
  }

  if ((v310 + v76))
  {
    goto LABEL_319;
  }

  v315 = v4[114]._os_unfair_lock_opaque;
  LOWORD(v8[1132]._os_unfair_lock_opaque) = *"de";
  *&v8[1134]._os_unfair_lock_opaque = &v5[a3];
  *&v8[1136]._os_unfair_lock_opaque = v310 + v76;
  if ((v315 & 1) == 0)
  {
    LOBYTE(v4[114]._os_unfair_lock_opaque) = 1;
  }

  *buf = &v5[a3];
  ashp::unsafe_storage<ashp::acipc::index_array_signaler>::storage::emplace<ashp::acipc::acipc_driver *&,unsigned short *,unsigned short &>(&v8[1140], (v8 + v11), buf, &v377);
  v319 = ashp::optional<ashp::acipc::index_array_signaler,void>::value(&v8[1140], v316, v317, v318);
  v320 = ashp::detail::logging::get_log_level(v319);
  if (v320 >= 4)
  {
    v320 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v320)
    {
      *buf = 136446978;
      *&buf[4] = "ring_manager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      v418 = 2082;
      v419 = "set_cr_index_arrays";
      v420 = 2048;
      *v421 = v8 + 1140;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] completion ring head index array signaler 0x%llx", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(v320))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] completion ring head index array signaler 0x%llx", "ring_manager.cpp", 154, "set_cr_index_arrays", &v8[1140]);
  }

  os_unfair_lock_unlock((v8 + v3));
  ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(&v8[1316], v321, v322, v323);
  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value("BUG in Airship: ", v324, v325, v326);
  os_unfair_lock_lock(v8 + 1316);
  os_unfair_lock_opaque_low = LOBYTE(v4[354]._os_unfair_lock_opaque);
  if (!LOBYTE(v4[354]._os_unfair_lock_opaque) || !*"BUG in Airship: ")
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xB0, "set_ipc_stage", v327);
    _os_crash();
    __break(1u);
    goto LABEL_303;
  }

  v329 = *&v8[1376]._os_unfair_lock_opaque;
  if (!v329)
  {
    goto LABEL_238;
  }

  if (CFStringCompare(*"BUG in Airship: ", v329, 0) == kCFCompareEqualTo)
  {
    goto LABEL_275;
  }

  os_unfair_lock_opaque_low = LOBYTE(v4[354]._os_unfair_lock_opaque);
LABEL_238:
  v330 = CFStringGetCStringPtr(*"BUG in Airship: ", 0x8000100u);
  if (v330)
  {
    v331 = v330;
  }

  else
  {
    v331 = "???";
  }

  v332 = ashp::detail::logging::get_log_level(v330);
  if (v332 >= 3)
  {
    v332 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v332)
    {
      *buf = 136447234;
      *&buf[4] = "doorbell_coordinator.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 179;
      v418 = 2082;
      v419 = "set_ipc_stage";
      v420 = 1024;
      *v421 = os_unfair_lock_opaque_low;
      *&v421[4] = 2080;
      *&v421[6] = v331;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] coordinator state=%u, new IPC stage=%s", buf, 0x2Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v332))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] coordinator state=%u, new IPC stage=%s", "doorbell_coordinator.cpp", 179, "set_ipc_stage", os_unfair_lock_opaque_low, v331);
  }

  if (!LOWORD(v8[1374]._os_unfair_lock_opaque))
  {
LABEL_256:
    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(buf, *"BUG in Airship: ", v334, v335);
    v342 = *&v8[1376]._os_unfair_lock_opaque;
    *&v8[1376]._os_unfair_lock_opaque = *buf;
    *buf = v342;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(buf, v343, v344, v345);
    if (!LOWORD(v8[1374]._os_unfair_lock_opaque) && LOBYTE(v4[354]._os_unfair_lock_opaque) != 2)
    {
      ashp::dynamic_array<ashp::acipc::cr_controller::tr_association>::truncate(&v8[1360]._os_unfair_lock_opaque, 0, v346, v347, v348);
      v349 = *&v8[1354]._os_unfair_lock_opaque;
      if (v349)
      {
        v350 = *&v8[1358]._os_unfair_lock_opaque;
        v351 = &v350[18 * v349];
        do
        {
          os_unfair_lock_assert_owner(v8 + 1316);
          if ((v350[12] || v350[15]) && ashp::acipc::doorbell_coordinator::is_valid_for_ipc_stage(&v8[1316], v350))
          {
            ashp::dynamic_array<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::ensure_free_space(&v8[1360]._os_unfair_lock_opaque, v352, v353, v354, v355);
            ashp::detail::dynamic_array::storage<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>::emplace_back<ashp::acipc::detail::doorbell_coordinator::doorbell_context *>(&v8[1360], v350, v356, v357, v358);
            v359 = v350[15];
            if (v359)
            {
              v360 = v8[1374]._os_unfair_lock_opaque;
              do
              {
                ++v360;
                v359 = *(v359 + 48);
              }

              while (v359);
              LOWORD(v8[1374]._os_unfair_lock_opaque) = v360;
            }

            v361 = v350[10];
            if (v361 >= *&v8[1368]._os_unfair_lock_opaque)
            {
              v361 = *&v8[1368]._os_unfair_lock_opaque;
            }

            *&v8[1368]._os_unfair_lock_opaque = v361;
            v362 = v350[11];
            if (v362 >= *&v8[1370]._os_unfair_lock_opaque)
            {
              v362 = *&v8[1370]._os_unfair_lock_opaque;
            }

            *&v8[1370]._os_unfair_lock_opaque = v362;
          }

          v350 += 18;
        }

        while (v350 != v351);
      }

      if (LOBYTE(v4[354]._os_unfair_lock_opaque) != 3)
      {
        ashp::acipc::doorbell_coordinator::process_pending(v8 + 1316, 0, 1u);
      }

LABEL_275:
      os_unfair_lock_unlock(v8 + 1316);
      if (v376 == 1)
      {
        v376 = 0;
      }

      ipc_status_register = ashp::acipc::acipc_driver::read_ipc_status_register(v8);
      v364 = ipc_status_register;
      v365 = v4[415]._os_unfair_lock_opaque;
      v8[1438]._os_unfair_lock_opaque = ipc_status_register;
      if ((v365 & 1) == 0)
      {
        LOBYTE(v4[415]._os_unfair_lock_opaque) = 1;
      }

      v366 = ashp::detail::logging::get_log_level(ipc_status_register);
      if (v366 >= 4)
      {
        v366 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v366)
        {
          *buf = 136446978;
          *&buf[4] = "acipc_driver.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 494;
          v418 = 2082;
          v419 = "setup_main_ipc_stage";
          v420 = 1024;
          *v421 = v364;
          _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc status=%u", buf, 0x22u);
        }
      }

      if (ashp::detail::logging::get_log_level(v366))
      {
        if (airship_platform_get_global_logger::once != -1)
        {
          dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
        }

        ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc status=%u", "acipc_driver.cpp", 494, "setup_main_ipc_stage", v364);
      }

      ashp::acipc::acipc_driver::main_ipc_state_machine(v8);
      return ashp::deferred_action<ashp::acipc::acipc_driver::setup_main_ipc_stage(ashp::acipc::config::main_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(&v375);
    }

    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xC9, "set_ipc_stage", v348);
    _os_crash();
    __break(1u);
    goto LABEL_316;
  }

  v337 = LOBYTE(v4[354]._os_unfair_lock_opaque);
  switch(v337)
  {
    case 1:
      v338 = LOBYTE(v4[354]._os_unfair_lock_opaque);
      goto LABEL_255;
    case 2:
      ashp::timer::stop(v8 + 1320, v333, v337, v335);
      v338 = 1;
      LODWORD(v337) = 1;
LABEL_255:
      ashp::acipc::doorbell_coordinator::process_pending(v8 + 1316, v338, v337);
      goto LABEL_256;
    case 3:
      v338 = 2;
      goto LABEL_255;
  }

LABEL_331:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "doorbell_coordinator.cpp", 0xC4, "set_ipc_stage", v336);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::acipc::acipc_driver::get_vector_for_interrupt(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  os_unfair_lock_assert_owner((a2 + 8));
  if ((*(a2 + 13) & 1) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4C0, "get_vector_for_interrupt", v9);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if ((*(a2 + 3720) & 1) == 0)
  {
LABEL_7:
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", v8);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v13);
    _os_crash();
    __break(1u);
    return;
  }

  ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, v6, v7, v8);
  v11 = *a3;
  v12 = *(a3 + 2);

  ashp::interrupt_manager::get_vector_for_interrupt(a1, (a2 + 632), v11, v12, v10);
}

uint64_t ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 80))
  {
    return a1 + 8;
  }

  ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF1, "value", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF1, "value", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::acipc_driver::read_ipc_status_register(const os_unfair_lock *this)
{
  os_unfair_lock_assert_owner(this + 2);
  v4 = *&this[1432]._os_unfair_lock_opaque;
  if (!v4 || (v5 = *&this[58]._os_unfair_lock_opaque) == 0)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x451, "read_ipc_status_register", v3);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (*(v4 + 28) != 4)
  {
LABEL_8:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x453, "read_ipc_status_register", v3);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *(v4 + 20);
  v7 = *(v4 + 24);

  return ashp::device_transport::mem_read32(v5, v6, v7, v2);
}

void ashp::acipc::acipc_driver::main_ipc_state_machine(ashp::acipc::acipc_driver *this)
{
  v389 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  if (!*(this + 716) || !*(this + 29))
  {
    log_level = ashp::detail::logging::get_log_level(v2);
    if (log_level >= 2)
    {
      log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (log_level)
      {
        buf = 136446722;
        *buf_4 = "acipc_driver.cpp";
        *&buf_4[8] = 1024;
        *&buf_4[10] = 663;
        v355 = 2082;
        v356 = "main_ipc_state_machine";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] current main ipc stage and transport must be set", &buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(log_level))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
LABEL_268:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] current main ipc stage and transport must be set", "acipc_driver.cpp", 663, "main_ipc_state_machine");
    }

    return;
  }

  if (*(this + 5740))
  {
    os_unfair_lock_assert_owner(this + 2);
    if (!*(this + 716))
    {
      goto LABEL_274;
    }

    if (*(this + 5756) == 1)
    {
      buf = 4;
      buf_4[0] = 1;
      if (ashp::operator==<int,0>(this + 5752, &buf, v4, v5))
      {
        goto LABEL_45;
      }

      ashp::optional<unsigned int,void>::value(this + 5736, v7, v8, v9);
      v10 = *(this + 1434);
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_45;
          }

          buf = 0;
          buf_4[0] = 1;
          if (ashp::operator==<int,0>(this + 5752, &buf, v8, v9))
          {
            goto LABEL_45;
          }

          *v343 = 1;
          v343[4] = 1;
          v3 = ashp::operator==<int,0>(this + 5752, v343, v8, v9);
        }

        else
        {
          buf = 0;
          buf_4[0] = 1;
          v3 = ashp::operator==<int,0>(this + 5752, &buf, v8, v9);
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            buf = 1;
            buf_4[0] = 1;
            v3 = ashp::operator==<int,0>(this + 5752, &buf, v8, v9);
            break;
          case 3:
            buf = 1;
            buf_4[0] = 1;
            if (ashp::operator==<int,0>(this + 5752, &buf, v8, v9))
            {
              goto LABEL_45;
            }

            *v343 = 2;
            v343[4] = 1;
            v3 = ashp::operator==<int,0>(this + 5752, v343, v8, v9);
            break;
          case 4:
            buf = 2;
            buf_4[0] = 1;
            v3 = ashp::operator==<int,0>(this + 5752, &buf, v8, v9);
            break;
          default:
            goto LABEL_45;
        }
      }

      if (v3)
      {
        goto LABEL_45;
      }
    }

    v13 = *(this + 5740);
    *(this + 1434) = 5;
    if ((v13 & 1) == 0)
    {
      *(this + 5740) = 1;
    }

    v14 = ashp::detail::logging::get_log_level(v3);
    if (v14 >= 2)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        buf = 136446722;
        *buf_4 = "acipc_driver.cpp";
        *&buf_4[8] = 1024;
        *&buf_4[10] = 668;
        v355 = 2082;
        v356 = "main_ipc_state_machine";
        _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc status invalid", &buf, 0x1Cu);
      }
    }

    if (ashp::detail::logging::get_log_level(v14))
    {
      if (airship_platform_get_global_logger::once != -1)
      {
LABEL_277:
        dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
      }

      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc status invalid", "acipc_driver.cpp", 668, "main_ipc_state_machine");
    }

    ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
    ashp::timer::stop((*(this + 767) + 16), v15, v16, v17);
    if (*(this + 6128) == 1)
    {
      *(this + 6128) = 0;
    }

    ashp::optional<ashp::interrupt,void>::value(this + 5632, v18, v19, v20);
    v21 = *(this + 704);
    ashp::optional<ashp::interrupt_manager,void>::value(&v21[158], v22, v23, v24);
    ashp::interrupt_manager::resume_handler(v21 + 158, this + 5632);
    ashp::optional<ashp::interrupt,void>::value(this + 5864, v25, v26, v27);
    v28 = *(this + 733);
    ashp::optional<ashp::interrupt_manager,void>::value(&v28[158], v29, v30, v31);
    ashp::interrupt_manager::suspend_handler(v28 + 158, this + 5864);
    ashp::optional<ashp::interrupt,void>::value(this + 5784, v32, v33, v34);
    v35 = *(this + 723);
    ashp::optional<ashp::interrupt_manager,void>::value(&v35[158], v36, v37, v38);
    ashp::interrupt_manager::suspend_handler(v35 + 158, this + 5784);
    ashp::acipc::acipc_driver::raise_ipc_error(this, 8);
    while (1)
    {
LABEL_45:
      ashp::optional<unsigned int,void>::value(this + 5736, v7, v8, v9);
      v39 = *(this + 1434);
      ashp::optional<unsigned int,void>::value(this + 5736, v40, v41, v42);
      v46 = *(this + 1434);
      if (v46 > 2)
      {
        if (v46 != 3)
        {
          if (v46 == 4)
          {
            buf = 4;
            buf_4[0] = 1;
            if (ashp::operator==<int,0>(this + 5752, &buf, v44, v45))
            {
              v199 = *(this + 5740);
              *(this + 1434) = 5;
              if ((v199 & 1) == 0)
              {
                *(this + 5740) = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
              ashp::acipc::acipc_driver::raise_ipc_error(this, 1);
              ashp::timer::stop((*(this + 767) + 16), v200, v201, v202);
              if (*(this + 6128) == 1)
              {
                *(this + 6128) = 0;
              }

              ashp::optional<ashp::interrupt,void>::value(this + 5632, v203, v204, v205);
              v206 = *(this + 704);
              ashp::optional<ashp::interrupt_manager,void>::value(&v206[158], v207, v208, v209);
              ashp::interrupt_manager::resume_handler(v206 + 158, this + 5632);
              ashp::optional<ashp::interrupt,void>::value(this + 5864, v210, v211, v212);
              v213 = *(this + 733);
              ashp::optional<ashp::interrupt_manager,void>::value(&v213[158], v214, v215, v216);
              ashp::interrupt_manager::suspend_handler(v213 + 158, this + 5864);
              ashp::optional<ashp::interrupt,void>::value(this + 5784, v217, v218, v219);
              v220 = *(this + 723);
              ashp::optional<ashp::interrupt_manager,void>::value(&v220[158], v221, v222, v223);
              ashp::interrupt_manager::suspend_handler(v220 + 158, this + 5784);
            }
          }

          else if (v46 == 5)
          {
            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
            ashp::timer::stop((*(this + 767) + 16), v93, v94, v95);
            if (*(this + 6128) == 1)
            {
              *(this + 6128) = 0;
            }
          }

          goto LABEL_254;
        }

        buf = 2;
        buf_4[0] = 1;
        if (ashp::operator==<int,0>(this + 5752, &buf, v44, v45))
        {
          v111 = *(this + 5740);
          *(this + 1434) = 4;
          if ((v111 & 1) == 0)
          {
            *(this + 5740) = 1;
          }

          ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
          buf = 0;
          buf_4[0] = 1;
          if ((ashp::operator==<int,0>(this + 5744, &buf, v112, v113) & 1) == 0)
          {
            goto LABEL_263;
          }

          os_unfair_lock_lock(this + 63);
          v115 = *(this + 80);
          os_unfair_lock_unlock(this + 63);
          if (v115)
          {
            goto LABEL_264;
          }

          v118 = ashp::detail::logging::get_log_level(v116);
          if (v118 >= 3)
          {
            v118 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v118)
            {
              buf = 136446722;
              *buf_4 = "acipc_driver.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 727;
              v355 = 2082;
              v356 = "main_ipc_state_machine";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc handshake complete", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v118))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc handshake complete", "acipc_driver.cpp", 727, "main_ipc_state_machine");
          }

          ashp::timer::stop((*(this + 767) + 16), v119, v120, v121);
          if (*(this + 6128) == 1)
          {
            *(this + 6128) = 0;
          }

          ashp::optional<ashp::interrupt,void>::value(this + 5864, v122, v123, v124);
          v125 = *(this + 733);
          ashp::optional<ashp::interrupt_manager,void>::value(&v125[158], v126, v127, v128);
          ashp::interrupt_manager::resume_handler(v125 + 158, this + 5864);
          ashp::optional<ashp::interrupt,void>::value(this + 5632, v129, v130, v131);
          v132 = *(this + 704);
          ashp::optional<ashp::interrupt_manager,void>::value(&v132[158], v133, v134, v135);
          ashp::interrupt_manager::suspend_handler(v132 + 158, this + 5632);
          ashp::optional<ashp::interrupt,void>::value(this + 5784, v136, v137, v138);
          v139 = *(this + 723);
          ashp::optional<ashp::interrupt_manager,void>::value(&v139[158], v140, v141, v142);
          ashp::interrupt_manager::suspend_handler(v139 + 158, this + 5784);
          ashp::optional<ashp::acipc::doorbell_coordinator,void>::value(this + 5264, v143, v144, v145);
          os_unfair_lock_lock(this + 1316);
          v147 = ashp::detail::logging::get_log_level(v146);
          if (v147 >= 4)
          {
            v147 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v147)
            {
              buf = 136446722;
              *buf_4 = "doorbell_coordinator.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 274;
              v355 = 2082;
              v356 = "exit_reset";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exiting reset", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v147))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exiting reset", "doorbell_coordinator.cpp", 274, "exit_reset");
          }

          if (*(this + 5512) == 4)
          {
            ashp::acipc::doorbell_coordinator::change_state(this + 5264, 1, 0);
          }

          os_unfair_lock_unlock(this + 1316);
          ashp::optional<ashp::acipc::messenger,void>::value(this + 4944, v148, v149, v150);
          os_unfair_lock_lock(this + 1236);
          v151 = *(this + 5136);
          v153 = ashp::detail::logging::get_log_level(v152);
          if (v151)
          {
            if (v153 >= 4)
            {
              v153 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v153)
              {
                buf = 136446722;
                *buf_4 = "messenger.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 122;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] exiting reset", &buf, 0x1Cu);
              }
            }

            v154 = ashp::detail::logging::get_log_level(v153);
            if (v154)
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] exiting reset", "messenger.cpp", 122, "exit_reset");
            }

            *(this + 5136) = 0;
            v156 = *(this + 628);
            if (!v156)
            {
              goto LABEL_270;
            }

            if (*(v156 + 248) == 1)
            {
              v157 = ashp::detail::logging::get_log_level(v154);
              if (v157 >= 4)
              {
                v157 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v157)
                {
                  buf = 136446722;
                  *buf_4 = "messenger.cpp";
                  *&buf_4[8] = 1024;
                  *&buf_4[10] = 129;
                  v355 = 2082;
                  v356 = "exit_reset";
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating mcr", &buf, 0x1Cu);
                }
              }

              if (ashp::detail::logging::get_log_level(v157))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating mcr", "messenger.cpp", 129, "exit_reset");
              }

              v162 = *(this + 630);
              if (v162)
              {
                v163 = *(this + 619);
                v164 = *(this + 628);
                LOBYTE(buf) = 1;
                *&buf_4[4] = v162;
                cf = @"mcr";
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&cf, v158, v159, v160);
                CFRetain(cf);
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&cf, v165, v166, v167);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&buf_4[12], cf, v168, v169);
                HIDWORD(v356) = 0;
                v359 = 0;
                v360 = 0;
                *&v358[2] = 0;
                v361 = 0;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v170, v171, v172);
                v362 = *(v164 + 184);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v173, v174, v175);
                LODWORD(v363) = *(v164 + 188);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v176, v177, v178);
                DWORD1(v363) = *(v164 + 192);
                LOBYTE(v365) = 0;
                LOBYTE(v366) = 0;
                HIDWORD(v366) = 0;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v179, v180, v181);
                v185 = *(v164 + 216);
                if (v185 == 1)
                {
                  ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v182, v183, v184);
                  ashp::optional<ashp::acipc::name_and_selector,void>::value(v164 + 200, v186, v187, v188);
                  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v344, *(v164 + 200), v189, v190);
                  v345 = *(v164 + 208);
                  v369 = 0;
                  ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v367, v191, v192, v193);
                  v194 = v344;
                  v344 = 0;
                  v367 = v194;
                  v368 = v345;
                  v195 = 1;
                }

                else
                {
                  v195 = 0;
                }

                v369 = v195;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v182, v183, v184);
                v370 = *(v164 + 224);
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v240, v241, v242);
                v371 = *(v164 + 228);
                v372 = 0;
                v374 = 0;
                ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(v164 + 184, v243, v244, v245);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v349, *(v164 + 232), v246, v247);
                v350 = *(v164 + 240);
                LOBYTE(v377) = 0;
                ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v375, v248, v249, v250);
                v251 = v349;
                v349 = 0;
                v375 = v251;
                LODWORD(v376) = v350;
                LOBYTE(v377) = 1;
                v378 = 0;
                v379 = 0u;
                v380 = 0u;
                v381 = 0u;
                memset(v382, 0, 52);
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v349, v252, v253, v254);
                if (v185)
                {
                  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v344, v255, v256, v257);
                }

                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&cf, v255, v256, v257);
                ashp::acipc::cr_controller::create_with_config(&v346, v163, &buf);
              }

              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x82, "exit_reset", v161);
              _os_crash();
              __break(1u);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x8A, "exit_reset", v341);
              _os_crash();
              __break(1u);
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x8C, "exit_reset", v342);
              _os_crash();
              __break(1u);
              goto LABEL_277;
            }

            v258 = ashp::detail::logging::get_log_level(v154);
            if (v258 >= 4)
            {
              v258 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v258)
              {
                buf = 136446722;
                *buf_4 = "messenger.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 145;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] creating mtr", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v258))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] creating mtr", "messenger.cpp", 145, "exit_reset");
            }

            v263 = *(this + 629);
            if (v263)
            {
              v264 = *(this + 619);
              v265 = *(this + 628);
              LOBYTE(buf) = 1;
              *&buf_4[4] = v263;
              v352 = @"mtr";
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v352, v259, v260, v261);
              CFRetain(v352);
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v352, v266, v267, v268);
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&buf_4[12], v352, v269, v270);
              HIDWORD(v356) = 0;
              v359 = 0;
              v360 = 0;
              *&v358[2] = 0;
              v361 = 0;
              v362 = *(v265 + 112);
              v363 = *(v265 + 116);
              v364 = 0;
              v274 = *(v265 + 133);
              if (v274 == 1)
              {
                v365 = 0;
                v366 = 0;
                v275 = 1;
                v367 = 0;
              }

              else
              {
                v351 = @"mcr";
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v351, v271, v272, v273);
                CFRetain(v351);
                ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v351, v276, v277, v278);
                ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v344, v351, v279, v280);
                v345 = 0;
                LOBYTE(v367) = 0;
                ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v365, v281, v282, v283);
                v284 = v344;
                v344 = 0;
                v365 = v284;
                LODWORD(v366) = v345;
                LOBYTE(v367) = 1;
                v275 = *(v265 + 133);
              }

              LOBYTE(v370) = 0;
              LOBYTE(v372) = *(v265 + 132);
              HIBYTE(v372) = v275;
              v373 = 0;
              v374 = 0;
              LODWORD(v375) = 1;
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v349, *(v265 + 136), v272, v273);
              v350 = *(v265 + 144);
              LOBYTE(v378) = 0;
              ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v376, v285, v286, v287);
              v288 = v349;
              v349 = 0;
              v376 = v288;
              v377 = v350;
              LOBYTE(v378) = 1;
              *(&v379 + 4) = *(v265 + 152);
              WORD6(v379) = 0;
              LODWORD(v380) = 0;
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&cf, *(v265 + 160), v289, v290);
              v348 = *(v265 + 168);
              BYTE4(v381) = 0;
              ashp::unsafe_storage<ashp::acipc::name_and_selector>::storage::reset(&v380 + 4, v291, v292, v293);
              v294 = cf;
              cf = 0;
              *(&v380 + 4) = v294;
              HIDWORD(v380) = v348;
              BYTE4(v381) = 1;
              WORD6(v381) = 0;
              *v382 = 0;
              v382[4] = *(v265 + 176);
              *&v382[6] = *(v265 + 178);
              memset(&v382[12], 0, 48);
              v383 = 0u;
              v384 = 0u;
              v385 = 0u;
              v386 = 0u;
              v387 = 0u;
              v388 = 0u;
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&cf, v295, v296, v297);
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v349, v298, v299, v300);
              if ((v274 & 1) == 0)
              {
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v344, v301, v302, v303);
                ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v351, v304, v305, v306);
              }

              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v352, v301, v302, v303);
              ashp::acipc::tr_controller::create_with_config(&v344, v264, &buf);
            }

LABEL_271:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x92, "exit_reset", v262);
            _os_crash();
            __break(1u);
LABEL_272:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x6E, "exit_reset", v311);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x97, "exit_reset", v337);
            _os_crash();
            __break(1u);
LABEL_273:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "ring_manager.cpp", 0x6F, "exit_reset", v311);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x98, "exit_reset", v338);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x9A, "exit_reset", v339);
            _os_crash();
            __break(1u);
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xA1, "exit_reset", v340);
            _os_crash();
            __break(1u);
LABEL_274:
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x30B, "is_ipc_status_valid", v6);
            _os_crash();
            __break(1u);
LABEL_275:
            dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
LABEL_23:
            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] main ipc state is not set", "acipc_driver.cpp", 664, "main_ipc_state_machine");
            return;
          }

          if (v153 >= 2)
          {
            v153 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v153)
            {
              buf = 136446722;
              *buf_4 = "messenger.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 121;
              v355 = 2082;
              v356 = "exit_reset";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] messenger already out of reset", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v153))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] messenger already out of reset", "messenger.cpp", 121, "exit_reset");
          }

          os_unfair_lock_unlock(this + 1236);
          ashp::optional<ashp::acipc::ring_manager,void>::value(this + 4264, v307, v308, v309);
          os_unfair_lock_lock(this + 1066);
          if (*(this + 4296))
          {
            *(this + 4296) = 0;
            if ((*(this + 4328) & 1) == 0)
            {
              goto LABEL_272;
            }

            if ((*(this + 4552) & 1) == 0)
            {
              goto LABEL_273;
            }

            v312 = ashp::detail::logging::get_log_level(v310);
            if (v312 >= 4)
            {
              v312 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v312)
              {
                buf = 136446722;
                *buf_4 = "ring_manager.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 112;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] recomputing closed ring availability", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v312))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] recomputing closed ring availability", "ring_manager.cpp", 112, "exit_reset");
            }

            ashp::acipc::ring_manager::recompute_closed_ring_availability(this + 1066);
          }

          else
          {
            v313 = ashp::detail::logging::get_log_level(v310);
            if (v313 >= 2)
            {
              v313 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v313)
              {
                buf = 136446722;
                *buf_4 = "ring_manager.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 108;
                v355 = 2082;
                v356 = "exit_reset";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ring manager already out of reset", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v313))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ring manager already out of reset", "ring_manager.cpp", 108, "exit_reset");
            }
          }

          os_unfair_lock_unlock(this + 1066);
          ashp::optional<ashp::acipc::messenger,void>::value(this + 4944, v314, v315, v316);
          os_unfair_lock_lock(this + 1236);
          if (*(this + 5136) == 1)
          {
            goto LABEL_265;
          }

          if (*(this + 5138) == 1)
          {
            goto LABEL_266;
          }

          *(this + 5138) = 1;
          v319 = ashp::detail::logging::get_log_level(v317);
          if (v319 >= 4)
          {
            v319 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v319)
            {
              buf = 136446722;
              *buf_4 = "messenger.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 207;
              v355 = 2082;
              v356 = "start";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] starting messenger", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v319))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] starting messenger", "messenger.cpp", 207, "start");
          }

          ashp::async_notifier::resume(this + 1244, v320, v321, v322);
          if (*(this + 644))
          {
            v324 = ashp::detail::logging::get_log_level(v323);
            if (v324 >= 4)
            {
              v324 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v324)
              {
                buf = 136446722;
                *buf_4 = "messenger.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 212;
                v355 = 2082;
                v356 = "start";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] opening mcr", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v324))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] opening mcr", "messenger.cpp", 212, "start");
            }

            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 644, v325, v326, v327);
            v323 = ashp::acipc::cr_controller::open(*(this + 644));
            if (v323)
            {
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xD5, "start", v328);
              _os_crash();
              __break(1u);
LABEL_270:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0x7D, "exit_reset", v155);
              _os_crash();
              __break(1u);
              goto LABEL_271;
            }
          }

          v329 = ashp::detail::logging::get_log_level(v323);
          if (v329 >= 4)
          {
            v329 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v329)
            {
              buf = 136446722;
              *buf_4 = "messenger.cpp";
              *&buf_4[8] = 1024;
              *&buf_4[10] = 215;
              v355 = 2082;
              v356 = "start";
              _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] opening mtr", &buf, 0x1Cu);
            }
          }

          if (ashp::detail::logging::get_log_level(v329))
          {
            if (airship_platform_get_global_logger::once != -1)
            {
              dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
            }

            ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] opening mtr", "messenger.cpp", 215, "start");
          }

          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(this + 643, v330, v331, v332);
          if (ashp::acipc::tr_controller::open(*(this + 643)))
          {
            goto LABEL_267;
          }

          os_unfair_lock_lock(this + 1237);
          ashp::acipc::messenger::send_overflow_messages(this + 1236);
          *(this + 5139) = 0;
          os_unfair_lock_unlock(this + 1237);
          os_unfair_lock_unlock(this + 1236);
          ashp::optional<ashp::interrupt,void>::value(this + 4880, v334, v335, v336);
          os_unfair_lock_lock(this + 1220);
          if (*(this + 4896) == 1)
          {
            *(this + 4896) = 0;
            ashp::acipc::memregion_manager::recompute_unmapped_region_availability(this + 1220);
          }

          os_unfair_lock_unlock(this + 1220);
          ashp::acipc::acipc_driver::sleep_state_machine(this);
        }

        else
        {
          buf = 4;
          buf_4[0] = 1;
          if (ashp::operator==<int,0>(this + 5752, &buf, v109, v110))
          {
            v224 = *(this + 5740);
            *(this + 1434) = 5;
            if ((v224 & 1) == 0)
            {
              *(this + 5740) = 1;
            }

            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
            ashp::timer::stop((*(this + 767) + 16), v225, v226, v227);
            if (*(this + 6128) == 1)
            {
              *(this + 6128) = 0;
            }

LABEL_168:
            ashp::acipc::acipc_driver::raise_ipc_error(this, 1);
          }
        }
      }

      else
      {
        switch(v46)
        {
          case 0:
            buf = 0;
            buf_4[0] = 1;
            if (ashp::operator==<int,0>(this + 5752, &buf, v44, v45))
            {
              ashp::acipc::acipc_driver::update_ipc_control_register(this, 1);
              v96 = *(this + 5740);
              *(this + 1434) = 1;
              if ((v96 & 1) == 0)
              {
                *(this + 5740) = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
              v98 = *(this + 716);
              if (*(v98 + 296) == 1)
              {
                v99 = (v98 + 292);
                v100 = ashp::optional<unsigned int,void>::value(v98 + 292, v97, v44, v45);
                v101 = ashp::detail::logging::get_log_level(v100);
                if (v101 >= 3)
                {
                  v101 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                  if (v101)
                  {
                    v102 = *v99;
                    buf = 136446978;
                    *buf_4 = "acipc_driver.cpp";
                    *&buf_4[8] = 1024;
                    *&buf_4[10] = 690;
                    v355 = 2082;
                    v356 = "main_ipc_state_machine";
                    v357 = 1024;
                    *v358 = v102;
                    _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] starting ipc handshake timer; timeout=%u ms", &buf, 0x22u);
                  }
                }

                if (ashp::detail::logging::get_log_level(v101))
                {
                  if (airship_platform_get_global_logger::once != -1)
                  {
                    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                  }

                  ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] starting ipc handshake timer; timeout=%u ms", "acipc_driver.cpp", 690, "main_ipc_state_machine", *v99);
                }

                v106 = *ashp::optional<unsigned int,void>::value(*(this + 716) + 292, v103, v104, v105);
                mach_timebase_info(&buf);
                v107 = 1000000 * v106;
                if (is_mul_ok(v107, *buf_4))
                {
                  v108 = v107 * *buf_4 / buf;
                }

                else
                {
                  v108 = -1;
                }

                v232 = mach_continuous_time();
                v236 = v232 + v108;
                if (__CFADD__(v232, v108))
                {
                  v236 = -1;
                }

                v237 = *(this + 6128);
                *(this + 765) = v236;
                if ((v237 & 1) == 0)
                {
                  *(this + 6128) = 1;
                }

                v238 = *(this + 767);
                ashp::optional<unsigned long long,void>::value(this + 6120, v233, v234, v235);
                ashp::timer::start(v238 + 4, *(this + 765), v108, v239);
              }
            }

            break;
          case 1:
            buf = 1;
            buf_4[0] = 1;
            if (!ashp::operator==<int,0>(this + 5752, &buf, v44, v45))
            {
              buf = 4;
              buf_4[0] = 1;
              if (!ashp::operator==<int,0>(this + 5752, &buf, v196, v197))
              {
                break;
              }

              v228 = *(this + 5740);
              *(this + 1434) = 5;
              if ((v228 & 1) == 0)
              {
                *(this + 5740) = 1;
              }

              ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
              ashp::timer::stop((*(this + 767) + 16), v229, v230, v231);
              if (*(this + 6128) == 1)
              {
                *(this + 6128) = 0;
              }

              goto LABEL_168;
            }

            v198 = *(this + 5740);
            *(this + 1434) = 2;
            if ((v198 & 1) == 0)
            {
              *(this + 5740) = 1;
            }

            goto LABEL_91;
          case 2:
            ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 6032, v43, v44, v45);
            v47 = *(this + 754);
            ashp::optional<ashp::acipc::name_and_selector,void>::value(this + 6032, v48, v49, v50);
            v51 = *(this + 755);
            os_unfair_lock_assert_owner(this + 2);
            v53 = ashp::detail::logging::get_log_level(v52);
            if (v53 >= 4)
            {
              v53 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v53)
              {
                buf = 136447234;
                *buf_4 = "acipc_driver.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 1170;
                v355 = 2082;
                v356 = "update_mem_window_base_and_size";
                v357 = 2048;
                *v358 = v47;
                *&v358[8] = 2048;
                v359 = v51;
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] window_base=%#llx, size=%#llx", &buf, 0x30u);
              }
            }

            if (ashp::detail::logging::get_log_level(v53))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] window_base=%#llx, size=%#llx", "acipc_driver.cpp", 1170, "update_mem_window_base_and_size", v47, v51);
            }

            v57 = ashp::optional<ashp::acipc::config::acipc_config,void>::value(this + 3824, v54, v55, v56);
            if (*(this + 495) != -1)
            {
              ashp::optional<ashp::acipc::config::acipc_config,void>::value(this + 3824, v58, v59, v60);
              v62 = *(this + 495);
              v66 = ashp::optional<ashp::acipc::config::acipc_config,void>::value(this + 3824, v63, v64, v65);
              v47 = (v62 & v47);
              v67 = *(this + 495);
              v68 = ashp::detail::logging::get_log_level(v66);
              if (v68 >= 4)
              {
                v68 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v68)
                {
                  buf = 136447234;
                  *buf_4 = "acipc_driver.cpp";
                  *&buf_4[8] = 1024;
                  *&buf_4[10] = 1175;
                  v355 = 2082;
                  v356 = "update_mem_window_base_and_size";
                  v357 = 2048;
                  *v358 = v67;
                  *&v358[8] = 2048;
                  v359 = v47;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] applied errata window_base_mask=%#llx, masked_base=%#llx", &buf, 0x30u);
                }
              }

              v57 = ashp::detail::logging::get_log_level(v68);
              if (v57)
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] applied errata window_base_mask=%#llx, masked_base=%#llx", "acipc_driver.cpp", 1175, "update_mem_window_base_and_size", v67, v47);
              }
            }

            if (HIDWORD(v51))
            {
              v69 = ashp::detail::logging::get_log_level(v57);
              if (v69 >= 4)
              {
                v69 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (v69)
                {
                  buf = 136446978;
                  *buf_4 = "acipc_driver.cpp";
                  *&buf_4[8] = 1024;
                  *&buf_4[10] = 1179;
                  v355 = 2082;
                  v356 = "update_mem_window_base_and_size";
                  v357 = 2048;
                  *v358 = v51;
                  _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] oversize host memory window reduced from %#llx to UINT32_MAX", &buf, 0x26u);
                }
              }

              if (ashp::detail::logging::get_log_level(v69))
              {
                if (airship_platform_get_global_logger::once != -1)
                {
                  dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
                }

                ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] oversize host memory window reduced from %#llx to UINT32_MAX", "acipc_driver.cpp", 1179, "update_mem_window_base_and_size", v51);
              }

              v51 = 0xFFFFFFFFLL;
            }

            v70 = *(this + 716);
            if (!v70 || (v71 = *(this + 29)) == 0)
            {
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x49F, "update_mem_window_base_and_size", v61);
              _os_crash();
              __break(1u);
LABEL_257:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x470, "update_context_info_addr_registers", v88);
              _os_crash();
              __break(1u);
LABEL_258:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4A3, "update_mem_window_base_and_size", v61);
              _os_crash();
              __break(1u);
LABEL_259:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4A4, "update_mem_window_base_and_size", v61);
              _os_crash();
              __break(1u);
LABEL_260:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x4A5, "update_mem_window_base_and_size", v61);
              _os_crash();
              __break(1u);
LABEL_261:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x473, "update_context_info_addr_registers", v88);
              _os_crash();
              __break(1u);
LABEL_262:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x474, "update_context_info_addr_registers", v88);
              _os_crash();
              __break(1u);
LABEL_263:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x2D5, "main_ipc_state_machine", v114);
              _os_crash();
              __break(1u);
LABEL_264:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x2D6, "main_ipc_state_machine", v117);
              _os_crash();
              __break(1u);
LABEL_265:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xCC, "start", v318);
              _os_crash();
              __break(1u);
LABEL_266:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xCD, "start", v318);
              _os_crash();
              __break(1u);
LABEL_267:
              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "messenger.cpp", 0xD8, "start", v333);
              _os_crash();
              __break(1u);
              goto LABEL_268;
            }

            if (*(v70 + 76) != 4)
            {
              goto LABEL_258;
            }

            if (*(v70 + 88) != 4)
            {
              goto LABEL_259;
            }

            if (*(v70 + 100) != 4)
            {
              goto LABEL_260;
            }

            ashp::device_transport::mem_write32(v71, *(v70 + 68), *(v70 + 72), v47);
            ashp::device_transport::mem_write32(*(this + 29), *(v70 + 80), *(v70 + 84), (v47 >> 32));
            ashp::device_transport::mem_write32(*(this + 29), *(v70 + 92), *(v70 + 96), v51);
            __dmb(0xBu);
            v75 = ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(this + 5944, v72, v73, v74);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value((v75 + 24), v76, v77, v78);
            *v343 = ashp::devmem_mapping::get_paddr(*(v75 + 24));
            ashp::optional<unsigned long long,ashp::optional_sentinel<18446744073709551615ull,false>>::value(v343, v79, v80, v81);
            v82 = *v343;
            v86 = *(ashp::optional<ashp::acipc::acipc_driver::device_memory,void>::value(this + 5944, v83, v84, v85) + 32);
            os_unfair_lock_assert_owner(this + 2);
            v89 = *(this + 716);
            if (!v89 || !*(this + 29))
            {
              goto LABEL_257;
            }

            if (*(v89 + 52) != 4)
            {
              goto LABEL_261;
            }

            if (*(v89 + 64) != 4)
            {
              goto LABEL_262;
            }

            v90 = ashp::detail::logging::get_log_level(v87);
            if (v90 >= 4)
            {
              v90 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v90)
              {
                buf = 136446722;
                *buf_4 = "acipc_driver.cpp";
                *&buf_4[8] = 1024;
                *&buf_4[10] = 1141;
                v355 = 2082;
                v356 = "update_context_info_addr_registers";
                _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updating context info address register", &buf, 0x1Cu);
              }
            }

            if (ashp::detail::logging::get_log_level(v90))
            {
              if (airship_platform_get_global_logger::once != -1)
              {
                dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
              }

              ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updating context info address register", "acipc_driver.cpp", 1141, "update_context_info_addr_registers");
            }

            v91 = (v82 + v86);
            ashp::device_transport::mem_write32(*(this + 29), *(v89 + 44), *(v89 + 48), v91);
            ashp::device_transport::mem_write32(*(this + 29), *(v89 + 56), *(v89 + 60), (v91 >> 32));
            ashp::acipc::acipc_driver::update_ipc_control_register(this, 2);
            v92 = *(this + 5740);
            *(this + 1434) = 3;
            if ((v92 & 1) == 0)
            {
              *(this + 5740) = 1;
            }

LABEL_91:
            ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
            break;
        }
      }

LABEL_254:
      buf = v39;
      buf_4[0] = 1;
      if (ashp::operator==<int,0>(this + 5736, &buf, v44, v45))
      {
        return;
      }
    }
  }

  v12 = ashp::detail::logging::get_log_level(v2);
  if (v12 >= 2)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      buf = 136446722;
      *buf_4 = "acipc_driver.cpp";
      *&buf_4[8] = 1024;
      *&buf_4[10] = 664;
      v355 = 2082;
      v356 = "main_ipc_state_machine";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] main ipc state is not set", &buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(v12))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      goto LABEL_275;
    }

    goto LABEL_23;
  }
}

uint64_t ashp::deferred_action<ashp::acipc::acipc_driver::setup_main_ipc_stage(ashp::acipc::config::main_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ashp::acipc::acipc_driver::teardown_main_ipc_stage(*a1);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

pthread_rwlock_t **ashp::acipc::acipc_driver::update_ipc_control_register(ashp::acipc::acipc_driver *this, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v7 = *(this + 716);
  if (!v7 || !*(this + 29))
  {
    a2 = "BUG in Airship: ";
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x45B, "update_ipc_control_register", v6);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v7 + 8);
  log_level = ashp::detail::logging::get_log_level(v5);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      v9 = *(v7 + 12);
      *buf = 136447234;
      v14 = "acipc_driver.cpp";
      v16 = 1117;
      v17 = 2082;
      v15 = 1024;
      v18 = "update_ipc_control_register";
      v19 = 1024;
      v20 = v2;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] updating register at bank=%u, offset=%u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once == -1)
    {
LABEL_8:
      ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] updating register at bank=%u, offset=%u", "acipc_driver.cpp", 1117, "update_ipc_control_register", v2, *(v7 + 12));
      goto LABEL_9;
    }

LABEL_14:
    dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    goto LABEL_8;
  }

LABEL_9:
  v11 = *(v7 + 16);
  if (v11 == 4)
  {
    return ashp::device_transport::mem_write32(*(this + 29), *(v7 + 8), *(v7 + 12), a2);
  }

  if (v11 == 2)
  {
    return ashp::device_transport::mem_write16(*(this + 29), *(v7 + 8), *(v7 + 12), a2);
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "acipc_driver.cpp", 0x468, "update_ipc_control_register", v10);
  result = _os_crash();
  __break(1u);
  return result;
}

void ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::emplace<ashp::acipc::acipc_driver::device_memory>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::acipc_driver::device_memory>::storage::reset(a1, a2, a3, a4);
  if (a1)
  {
    ashp::buffer_mapping::buffer_mapping(a1, a2);
    v6 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a1 + 24) = v6;
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a1 + 60) = 0;
    if (*(a2 + 60) == 1)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = 1;
      if (*(a2 + 60) == 1)
      {
        *(a2 + 60) = 0;
      }
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ashp::deferred_action<ashp::acipc::acipc_driver::setup_boot_ipc_stage(ashp::acipc::config::boot_ipc_stage_spec const*,ashp::acipc::config::exec_stage_spec const*)::$_0>::~deferred_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ashp::acipc::acipc_driver::teardown_boot_ipc_stage(*a1);
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

void ashp::acipc::acipc_driver::handle_clear_transport(const os_unfair_lock *this)
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  v3 = *&this[1430]._os_unfair_lock_opaque;
  v4 = *&this[1432]._os_unfair_lock_opaque;
  if (v3)
  {
    v5 = v4 != 0;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v5 = 1;
  }

  v6 = v3 != 0;
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447234;
      v9 = "acipc_driver.cpp";
      v11 = 258;
      v12 = 2082;
      v10 = 1024;
      v13 = "handle_clear_transport";
      v14 = 1024;
      v15 = v6;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] ipc stage not torn down, boot stage valid: %u, main stage valid: %u", buf, 0x28u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] ipc stage not torn down, boot stage valid: %u, main stage valid: %u", "acipc_driver.cpp", 258, "handle_clear_transport", v6, v5);
  }

  ashp::acipc::acipc_driver::raise_ipc_error(this, 2);
}

void ashp::acipc::acipc_driver::did_set_transport(os_unfair_lock *this)
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(this + 2);
  log_level = ashp::detail::logging::get_log_level(v2);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136446722;
      v5 = "acipc_driver.cpp";
      v6 = 1024;
      v7 = 247;
      v8 = 2082;
      v9 = "did_set_transport";
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] probing exec stage register", buf, 0x1Cu);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] probing exec stage register", "acipc_driver.cpp", 247, "did_set_transport");
  }

  ashp::acipc::acipc_driver::probe_exec_stage_register_if_ready(this);
}

uint64_t ashp::acipc::acipc_driver::will_set_transport(ashp::acipc::acipc_driver *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(this + 24);
  v6 = *(this + 715);
  if (v6)
  {
    v7 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v6, a2, a3, a4);
    if (v7)
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
      if (CStringPtr)
      {
        v9 = CStringPtr;
      }

      else
      {
        v9 = "???";
      }
    }

    else
    {
      v9 = "(nil)";
    }
  }

  else
  {
    v9 = "<nil>";
  }

  v10 = *(this + 716);
  if (v10)
  {
    v10 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, a2, a3, a4);
    if (v10)
    {
      v10 = CFStringGetCStringPtr(v10, 0x8000100u);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = "???";
      }
    }

    else
    {
      v11 = "(nil)";
    }
  }

  else
  {
    v11 = "<nil>";
  }

  log_level = ashp::detail::logging::get_log_level(v10);
  if (log_level >= 4)
  {
    log_level = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (log_level)
    {
      *buf = 136447490;
      v19 = "acipc_driver.cpp";
      v20 = 1024;
      v21 = 221;
      v22 = 2082;
      v23 = "will_set_transport";
      v24 = 1024;
      *v25 = v5;
      *&v25[4] = 2080;
      *&v25[6] = v9;
      v26 = 2080;
      v27 = v11;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] reset=%u, boot_state=%s, ipc_state=%s", buf, 0x36u);
    }
  }

  if (ashp::detail::logging::get_log_level(log_level))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] reset=%u, boot_state=%s, ipc_state=%s", "acipc_driver.cpp", 221, "will_set_transport", v5, v9, v11);
  }

  os_unfair_lock_assert_owner(this + 2);
  if (*(this + 24))
  {
    return 0;
  }

  exec_stage_register = ashp::acipc::acipc_driver::read_exec_stage_register(this);
  v15 = ashp::acipc::acipc_driver::exec_stage_would_cause_ipc_teardown(this, exec_stage_register);
  if (v15)
  {
    ashp::acipc::acipc_driver::teardown_current_ipc_stage(this);
    *(this + 714) = 0;
    ashp::driver::update_exec_stage(this, 0xFFFFFFFF);
  }

  if (*(this + 715))
  {
    v16 = "boot";
  }

  else
  {
    if (!*(this + 716))
    {
      return 0;
    }

    v16 = "main";
  }

  v17 = ashp::detail::logging::get_log_level(v15);
  if (v17 >= 1)
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      *buf = 136446978;
      v19 = "acipc_driver.cpp";
      v20 = 1024;
      v21 = 236;
      v22 = 2082;
      v23 = "will_set_transport";
      v24 = 2080;
      *v25 = v16;
      _os_log_impl(&dword_23EC8B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Airship [%{public}s:%d:%{public}s] cannot set transport, %s ipc stage is not null", buf, 0x26u);
    }
  }

  if (ashp::detail::logging::get_log_level(v17))
  {
    if (airship_platform_get_global_logger::once != -1)
    {
      dispatch_once(&airship_platform_get_global_logger::once, &__block_literal_global_388);
    }

    ashp_log_helper::log(airship_global_logger, "[%s:%d:%s] cannot set transport, %s ipc stage is not null", "acipc_driver.cpp", 236, "will_set_transport", v16);
  }

  ashp::acipc::acipc_driver::update_ipc_driver_debug_state(this);
  return 3758097112;
}

void *ashp::acipc::acipc_driver::exec_stage_would_cause_ipc_teardown(const os_unfair_lock *this, int a2)
{
  os_unfair_lock_assert_owner(this + 2);
  v4 = *&this[1428]._os_unfair_lock_opaque;
  if (!v4 || *(v4 + 8) == a2)
  {
    return 0;
  }

  result = ashp::acipc::acipc_driver::find_exec_stage_with_value(this, a2);
  if (result)
  {
    v9 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(result, v6, v7, v8);
    current_ipc_stage_name = ashp::acipc::acipc_driver::get_current_ipc_stage_name(this);
    v11 = (v9 | current_ipc_stage_name) == 0;
    if (v9)
    {
      if (current_ipc_stage_name)
      {
        v11 = CFStringCompare(v9, current_ipc_stage_name, 0) == kCFCompareEqualTo;
      }
    }

    return !v11;
  }

  return result;
}