uint64_t parse_field_with_default<&(ashp::acipc::config::transfer_ring_spec::constraint_config::parse(ashp::acipc::config::transfer_ring_spec::constraint_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec::constraint_config>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"constraints", a3, a4);
  if (!value)
  {
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::operator=(a1, a2, v10, v11, v12);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=(a1 + 3, a2 + 3, v53, v54, v55);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=(a1 + 6, a2 + 6, v56, v57, v58);
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=(a1 + 9, a2 + 9, v59, v60, v61);
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=(a1 + 12, a2 + 12, v62, v63, v64);
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=(a1 + 15, a2 + 15, v65, v66, v67);
    ++*a5;
    return 1;
  }

  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x84F, "parse", v12);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v13 = value;
  v14 = CFGetTypeID(value);
  if (v14 == CFDictionaryGetTypeID())
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v52 = "unexpected object type";
    goto LABEL_18;
  }

  v75 = 0;
  memset(v74, 0, sizeof(v74));
  v18 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(ashp::acipc::config::numeric_constraint<unsigned short>::parse(ashp::acipc::config::numeric_constraint<unsigned short>*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::numeric_constraint<unsigned short>>(ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>>>(a1, v74, v17, a4, &v75);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(v74, v19, v20, v21, v22);
  if ((v18 & 1) == 0)
  {
    goto LABEL_19;
  }

  memset(v73, 0, sizeof(v73));
  v25 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(ashp::acipc::config::numeric_constraint<unsigned int>::parse(ashp::acipc::config::numeric_constraint<unsigned int>*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::numeric_constraint<unsigned int>>(ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>>>(a1 + 3, v73, v17, @"transfer_footer_size", a4, &v75);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(v73, v26, v27, v28, v29);
  if ((v25 & 1) == 0)
  {
    goto LABEL_19;
  }

  memset(v72, 0, sizeof(v72));
  v30 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(ashp::acipc::config::numeric_constraint<unsigned int>::parse(ashp::acipc::config::numeric_constraint<unsigned int>*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::numeric_constraint<unsigned int>>(ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>>>(a1 + 6, v72, v17, @"completion_footer_size", a4, &v75);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(v72, v31, v32, v33, v34);
  if ((v30 & 1) == 0)
  {
    goto LABEL_19;
  }

  memset(v71, 0, sizeof(v71));
  v35 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(ashp::optional<ashp::acipc::config::named_target_spec::constraint,ashp::optional_traits<ashp::acipc::config::named_target_spec::constraint,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>(ashp::dynamic_array<ashp::acipc::config::named_target_spec::constraint> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>>(a1 + 9, v71, v17, @"completion_ring", a4, &v75);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(v71, v36, v37, v38, v39);
  if ((v35 & 1) == 0)
  {
    goto LABEL_19;
  }

  memset(v70, 0, sizeof(v70));
  v40 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(ashp::optional<ashp::acipc::config::named_target_spec::constraint,ashp::optional_traits<ashp::acipc::config::named_target_spec::constraint,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>(ashp::dynamic_array<ashp::acipc::config::named_target_spec::constraint> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>>(a1 + 12, v70, v17, @"completion_group", a4, &v75);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(v70, v41, v42, v43, v44);
  if ((v40 & 1) == 0)
  {
    goto LABEL_19;
  }

  memset(v69, 0, sizeof(v69));
  v45 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(ashp::optional<ashp::acipc::config::named_target_spec::constraint,ashp::optional_traits<ashp::acipc::config::named_target_spec::constraint,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>(ashp::dynamic_array<ashp::acipc::config::named_target_spec::constraint> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>>(a1 + 15, v69, v17, @"interrupt", a4, &v75);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(v69, v46, v47, v48, v49);
  if ((v45 & 1) == 0)
  {
    goto LABEL_19;
  }

  v51 = ashp::boxed::dictionary::count(v17, v50, v23, v24);
  if (v75 + v51 == 6)
  {
    return 1;
  }

  v52 = "unknown keys present";
LABEL_18:
  set_error(a4, v52, 0, v15, v16);
LABEL_19:
  set_error_location(a4, @"constraints", v23, v24);
  return 0;
}

void sub_23ECBD660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ashp::acipc::config::transfer_ring_spec::constraint_config::~constraint_config(ashp::acipc::config::transfer_ring_spec::constraint_config *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 15, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 12, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 9, v10, v11, v12, v13);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 6, v14, v15, v16, v17);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 3, v18, v19, v20, v21);

  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this, v22, v23, v24, v25);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::operator=(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a2 > a1[1])
  {
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::storage(&v19, a2, a3, a4);
    v7 = *a1;
    *a1 = v19;
    v19 = v7;
    v8 = a1[2];
    a1[2] = v20;
    v20 = v8;
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(&v19, v9, v10, v11, v12);
    return a1;
  }

  if (*a2 >= *a1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *a2;
  }

  if (a1[2])
  {
    if (a2[2])
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        *(a1[2] + 4 * i) = *(a2[2] + 4 * i);
      }
    }

LABEL_17:
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, v13, a3, a4, a5);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::append(a1, a2[2] + 4 * v13, *a2 - v13, v16, v17);
    return a1;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a2 > a1[1])
  {
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::storage(&v19, a2, a3, a4);
    v7 = *a1;
    *a1 = v19;
    v19 = v7;
    v8 = a1[2];
    a1[2] = v20;
    v20 = v8;
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(&v19, v9, v10, v11, v12);
    return a1;
  }

  if (*a2 >= *a1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *a2;
  }

  if (a1[2])
  {
    if (a2[2])
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        *(a1[2] + 8 * i) = *(a2[2] + 8 * i);
      }
    }

LABEL_17:
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::reduce_size(a1, v13, a3, a4, a5);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::append(a1, a2[2] + 8 * v13, *a2 - v13, v16, v17);
    return a1;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_19:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a2 > a1[1])
  {
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage(&v28, a2, a3, a4);
    v7 = *a1;
    *a1 = v28;
    v28 = v7;
    v8 = a1[2];
    a1[2] = v29;
    v29 = v8;
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(&v28, v9, v10, v11, v12);
    return a1;
  }

  if (*a2 >= *a1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *a2;
  }

  if (a1[2])
  {
    if (a2[2])
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    if (v13)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        v17 = a2[2];
        v18 = a1[2];
        LOBYTE(v29) = 0;
        v19 = v17 + v15;
        if (*(v17 + v15 + 16) == 1)
        {
          ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(&v28, a2, a3, a4);
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v28, *v19, v20, v21);
          *(&v28 + 1) = *(v19 + 8);
          LOBYTE(v29) = 1;
        }

        ashp::swap((v18 + v15), &v28, a3, a4);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(&v28, v22, v23, v24);
        v15 += 24;
        --v16;
      }

      while (v16);
    }

LABEL_19:
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::reduce_size(a1, v13, a3, a4, a5);
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::append(a1, a2[2] + 24 * v13, *a2 - v13, v25, v26);
    return a1;
  }

  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_21:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t parse_field_with_default<&(BOOL parse_array_or_singleton<&(ashp::acipc::config::numeric_constraint<unsigned short>::parse(ashp::acipc::config::numeric_constraint<unsigned short>*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::numeric_constraint<unsigned short>>(ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>>>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"ring_size", a3, a4);
  if (!value)
  {
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::operator=(a1, a2, v10, v11, v12);
    ++*a5;
    return 1;
  }

  if (*a1)
  {
LABEL_30:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x120, "parse_array_or_singleton", v12);
    _os_crash();
    __break(1u);
    goto LABEL_31;
  }

  v13 = value;
  v14 = CFGetTypeID(value);
  if (v14 == CFArrayGetTypeID())
  {
    if (*a1)
    {
LABEL_31:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xF5, "parse_array", v18);
      _os_crash();
      __break(1u);
      goto LABEL_32;
    }

    v19 = CFGetTypeID(v13);
    if (v19 == CFArrayGetTypeID())
    {
      v24 = v13;
    }

    else
    {
      v24 = 0;
    }

    v56 = v24;
    if (v24)
    {
      v25 = ashp::boxed::array::count(v24, v20, v21, v22);
      v29 = v25;
      if (a1[1] < v25)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::set_capacity(a1, v25, v26, v27, v28);
        goto LABEL_19;
      }

      if (v25)
      {
LABEL_19:
        v35 = 0;
        while (1)
        {
          v55 = 0;
          v36 = ashp::boxed::array::get_value(&v56, v35, v26, v27);
          if ((ashp::acipc::config::numeric_constraint<unsigned short>::parse(&v55, v36, a4, v37, v38) & 1) == 0)
          {
            ashp::boxed::string::with_format(v40, v41, &v54, v35);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v54, v45, v46, v47);
            set_error_location(a4, v54, v48, v49);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v54, v50, v51, v52);
            goto LABEL_26;
          }

          ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>>::ensure_free_space(a1, v39, v40, v41, v42);
          if (*a1 >= a1[1])
          {
            break;
          }

          v43 = a1[2];
          if (!v43)
          {
            goto LABEL_29;
          }

          *(v43 + 4 * (*a1)++) = v55;
          if (v29 == ++v35)
          {
            return 1;
          }
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v12);
        _os_crash();
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      return 1;
    }

    set_error(a4, "unexpected object type", 0, v22, v23);
  }

  else
  {
    ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>>::ensure_free_space(a1, v15, v16, v17, v18);
    if (*a1 >= a1[1])
    {
LABEL_32:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v12);
      _os_crash();
      __break(1u);
      goto LABEL_33;
    }

    v31 = a1[2];
    if (!v31)
    {
      goto LABEL_29;
    }

    *(v31 + 4 * *a1) = 0;
    if (__CFADD__((*a1)++, 1))
    {
LABEL_33:
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v30);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v53);
      result = _os_crash();
      __break(1u);
      return result;
    }

    if (ashp::acipc::config::numeric_constraint<unsigned short>::parse(a1[2], v13, a4, v30, v12))
    {
      return 1;
    }
  }

LABEL_26:
  set_error_location(a4, @"ring_size", v33, v34);
  return 0;
}

void sub_23ECBDEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t parse_field_with_default<&(BOOL parse_array_or_singleton<&(ashp::acipc::config::numeric_constraint<unsigned int>::parse(ashp::acipc::config::numeric_constraint<unsigned int>*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::numeric_constraint<unsigned int>>(ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>>>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, const void *a4, unint64_t *a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (!value)
  {
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=(a1, a2, v12, v13, v14);
    ++*a6;
    return 1;
  }

  if (!a1 || *a1)
  {
    goto LABEL_31;
  }

  v15 = value;
  v16 = CFGetTypeID(value);
  if (v16 == CFArrayGetTypeID())
  {
    if (*a1)
    {
LABEL_32:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xF5, "parse_array", v20);
      _os_crash();
      __break(1u);
      goto LABEL_33;
    }

    v21 = CFGetTypeID(v15);
    if (v21 == CFArrayGetTypeID())
    {
      v26 = v15;
    }

    else
    {
      v26 = 0;
    }

    v58 = v26;
    if (v26)
    {
      v27 = ashp::boxed::array::count(v26, v22, v23, v24);
      v31 = v27;
      if (a1[1] < v27)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::set_capacity(a1, v27, v28, v29, v30);
        goto LABEL_20;
      }

      if (v27)
      {
LABEL_20:
        v37 = 0;
        while (1)
        {
          v57 = 0;
          v38 = ashp::boxed::array::get_value(&v58, v37, v28, v29);
          if ((ashp::acipc::config::numeric_constraint<unsigned int>::parse(&v57, v38, a5, v39, v40) & 1) == 0)
          {
            ashp::boxed::string::with_format(v42, v43, &v56, v37);
            ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v56, v47, v48, v49);
            set_error_location(a5, v56, v50, v51);
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v56, v52, v53, v54);
            goto LABEL_27;
          }

          ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>>::ensure_free_space(a1, v41, v42, v43, v44);
          if (*a1 >= a1[1])
          {
            break;
          }

          v45 = a1[2];
          if (!v45)
          {
            goto LABEL_30;
          }

          *(v45 + 8 * (*a1)++) = v57;
          if (v31 == ++v37)
          {
            return 1;
          }
        }

        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v14);
        _os_crash();
LABEL_30:
        __break(1u);
LABEL_31:
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x120, "parse_array_or_singleton", v14);
        _os_crash();
        __break(1u);
        goto LABEL_32;
      }

      return 1;
    }

    set_error(a5, "unexpected object type", 0, v24, v25);
  }

  else
  {
    ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>>::ensure_free_space(a1, v17, v18, v19, v20);
    if (*a1 >= a1[1])
    {
LABEL_33:
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v14);
      _os_crash();
      __break(1u);
      goto LABEL_34;
    }

    v33 = a1[2];
    if (!v33)
    {
      goto LABEL_30;
    }

    *(v33 + 8 * *a1) = 0;
    if (__CFADD__((*a1)++, 1))
    {
LABEL_34:
      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v32);
      ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v55);
      result = _os_crash();
      __break(1u);
      return result;
    }

    if (ashp::acipc::config::numeric_constraint<unsigned int>::parse(a1[2], v15, a5, v32, v14))
    {
      return 1;
    }
  }

LABEL_27:
  set_error_location(a5, a4, v35, v36);
  return 0;
}

void sub_23ECBE20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(ashp::optional<ashp::acipc::config::named_target_spec::constraint,ashp::optional_traits<ashp::acipc::config::named_target_spec::constraint,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>(ashp::dynamic_array<ashp::acipc::config::named_target_spec::constraint> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, const void *a4, char *a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (!value)
  {
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=(a1, a2, v12, v13, v14);
    ++*a6;
    return 1;
  }

  if (!a1 || *a1)
  {
LABEL_35:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x120, "parse_array_or_singleton", v14);
    _os_crash();
    __break(1u);
LABEL_36:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xF5, "parse_array", v20);
    _os_crash();
    goto LABEL_37;
  }

  v15 = value;
  v16 = CFGetTypeID(value);
  if (v16 == CFArrayGetTypeID())
  {
    if (!*a1)
    {
      v21 = CFGetTypeID(v15);
      if (v21 == CFArrayGetTypeID())
      {
        v26 = v15;
      }

      else
      {
        v26 = 0;
      }

      v68 = v26;
      if (v26)
      {
        v27 = ashp::boxed::array::count(v26, v22, v23, v24);
        v31 = v27;
        if (a1[1] < v27)
        {
          ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::set_capacity(a1, v27, v28, v29, v30);
          goto LABEL_20;
        }

        if (v27)
        {
LABEL_20:
          v37 = 0;
          v38 = v31 - 1;
          do
          {
            v67 = 0;
            v39 = ashp::boxed::array::get_value(&v68, v37, v28, v29);
            v46 = parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(v66, v39, a5, v40, v41);
            if (v46)
            {
              ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::ensure_free_space(a1, v42, v43, v44, v45);
              if (*a1 >= a1[1])
              {
                ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v33);
                _os_crash();
                __break(1u);
                goto LABEL_35;
              }

              v49 = a1[2];
              if (!v49)
              {
                goto LABEL_37;
              }

              ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::storage(v49 + 24 * *a1, v66, v47, v48);
              ++*a1;
            }

            else
            {
              ashp::boxed::string::with_format(v43, v44, &v65, v37);
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v65, v53, v54, v55);
              set_error_location(a5, v65, v56, v57);
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v65, v58, v59, v60);
            }

            ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(v66, v50, v51, v52);
            if (v38 == v37++)
            {
              v62 = 0;
            }

            else
            {
              v62 = v46;
            }
          }

          while ((v62 & 1) != 0);
          if ((v46 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        return 1;
      }

      set_error(a5, "unexpected object type", 0, v24, v25);
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::ensure_free_space(a1, v17, v18, v19, v20);
  if (*a1 >= a1[1])
  {
LABEL_38:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v33);
    _os_crash();
    __break(1u);
    goto LABEL_39;
  }

  v34 = a1[2];
  if (!v34)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v35 = (v34 + 24 * *a1);
  *v35 = 0;
  v35[1] = 0;
  v35[2] = 0;
  if (__CFADD__((*a1)++, 1))
  {
LABEL_39:
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", v32);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v64);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(a1[2], v15, a5, v32, v33))
  {
    return 1;
  }

LABEL_32:
  set_error_location(a5, a4, v28, v29);
  return 0;
}

void sub_23ECBE554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(uint64_t a1, ashp::boxed::BOOLean *cf, char *a3, uint64_t a4, const char *a5)
{
  if (a1 && *(a1 + 16) != 1)
  {
    v6 = cf;
    if (!cf)
    {
      return 1;
    }

    v8 = CFGetTypeID(cf);
    if (v8 == CFBooleanGetTypeID() && !ashp::boxed::BOOLean::value(v6, v9, v10, v11))
    {
      return 1;
    }

    v46 = 0;
    v47 = 0;
    v12 = CFGetTypeID(v6);
    if (v12 == CFStringGetTypeID())
    {
      if (parse_symbol(&v46, v6, a3, v13, v14))
      {
        v18 = 0;
        v47 = 0;
LABEL_22:
        v28 = v46;
        v46 = 0;
        v43[1] = v18;
        v45 = 0;
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(v44, v15, v16, v17);
        v43[0] = 0;
        v44[0] = v28;
        v44[1] = v18;
        v45 = 1;
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::storage(v48, v44, v29, v30);
        ashp::swap(a1, v48, v31, v32);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(v48, v33, v34, v35);
        ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(v44, v36, v37, v38);
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v43, v39, v40, v41);
        v19 = 1;
LABEL_26:
        ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v46, v15, v16, v17);
        return v19;
      }

LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }

    v20 = CFGetTypeID(v6);
    if (v20 != CFDictionaryGetTypeID())
    {
      v6 = 0;
    }

    if (v6)
    {
      if (!parse_field<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(&v46, v6, @"name", a3))
      {
        goto LABEL_25;
      }

      value = ashp::boxed::dictionary::get_value(v6, @"selector", v16, v17);
      if (value)
      {
        if ((ashp::acipc::config::numeric_constraint<unsigned int>::parse(&v47, value, a3, v24, v25) & 1) == 0)
        {
          set_error_location(a3, @"selector", v23, v24);
        }

        v26 = 0;
      }

      else
      {
        v47 = 0;
        v26 = 1;
      }

      if (v26 + ashp::boxed::dictionary::count(v6, value, v23, v24) == 2)
      {
        v18 = v47;
        goto LABEL_22;
      }

      v27 = "unknown keys present";
    }

    else
    {
      v27 = "unexpected object type";
    }

    set_error(a3, v27, 0, v17, v21);
    goto LABEL_25;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xD8, "parse_optional", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECBE79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::ensure_free_space(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *result + 1;
  if (*result == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v9);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = result[1];
    if (v6 > v7)
    {
      if (v7 <= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = result[1];
      }

      if (v6 >= 9)
      {
        do
        {
          if (is_mul_ok(v8, 3uLL))
          {
            v8 = (3 * v8) >> 1;
          }

          else
          {
            v8 = *result + 1;
          }
        }

        while (v8 < v6);
      }

      if (v7 < v8)
      {

        ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::set_capacity(result, v8, a3, a4, a5);
      }
    }
  }
}

void ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::buffer(&v13, a2, a3, a4);
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    while (v14)
    {
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::storage(v14 + v8, (a1[2] + v8), v6, v7);
      ++v9;
      v8 += 24;
      if (v9 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
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

uint64_t ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::storage(uint64_t result, uint64_t *a2, uint64_t a3, const char *a4)
{
  if (result)
  {
    v5 = result;
    *(result + 16) = 0;
    if (*(a2 + 16) == 1)
    {
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(result, a2, a3, a4);
      v6 = *a2;
      *a2 = 0;
      *v5 = v6;
      *(v5 + 8) = a2[1];
      *(v5 + 16) = 1;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec::constraint>::storage::reset(a2, v7, v8, v9);
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::config::numeric_constraint<unsigned int>::parse(_DWORD *a1, CFTypeRef cf, unint64_t *a3, const char *a4, const char *a5)
{
  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x221, "parse", a5);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = cf;
  if (!cf)
  {
    v13 = "missing object";
LABEL_15:
    set_error(a3, v13, 0, a4, a5);
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFNumberGetTypeID())
  {
    v20 = 0;
    result = parse_number<unsigned int>(&v20, v6, a3, v9, v10);
    if (result)
    {
      v12 = v20;
      *a1 = v20;
      a1[1] = v12;
    }

    return result;
  }

  v14 = CFGetTypeID(v6);
  if (v14 != CFDictionaryGetTypeID())
  {
    v6 = 0;
  }

  if (!v6)
  {
    v13 = "unexpected object type";
    goto LABEL_15;
  }

  v19 = 0;
  result = parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1, 0, v6, @"min", a3, &v19);
  if (result)
  {
    result = parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1 + 1, -1, v6, @"max", a3, &v19);
    if (result)
    {
      v18 = ashp::boxed::dictionary::count(v6, v15, v16, v17);
      if (v19 + v18 == 2)
      {
        return 1;
      }

      v13 = "unknown keys present";
      goto LABEL_15;
    }
  }

  return result;
}

void ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>>::ensure_free_space(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *result + 1;
  if (*result == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v9);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = result[1];
    if (v6 > v7)
    {
      if (v7 <= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = result[1];
      }

      if (v6 >= 9)
      {
        do
        {
          if (is_mul_ok(v8, 3uLL))
          {
            v8 = (3 * v8) >> 1;
          }

          else
          {
            v8 = *result + 1;
          }
        }

        while (v8 < v6);
      }

      if (v7 < v8)
      {

        ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::set_capacity(result, v8, a3, a4, a5);
      }
    }
  }
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned int>>::buffer(&v10, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    while (v11)
    {
      *(v11 + v6) = *(a1[2] + 8 * v6);
      if (++v6 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v7 = v10;
  v8 = v11;
  v10 = 0;
  v11 = 0;
  v9 = a1[2];
  a1[1] = v7;
  a1[2] = v8;
  if (v9)
  {
    free(v9);
    if (v11)
    {
      free(v11);
    }
  }
}

uint64_t ashp::acipc::config::numeric_constraint<unsigned short>::parse(_WORD *a1, CFTypeRef cf, unint64_t *a3, const char *a4, const char *a5)
{
  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x221, "parse", a5);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = cf;
  if (!cf)
  {
    v13 = "missing object";
LABEL_15:
    set_error(a3, v13, 0, a4, a5);
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFNumberGetTypeID())
  {
    v20 = 0;
    result = parse_number<unsigned short>(&v20, v6, a3, v9, v10);
    if (result)
    {
      v12 = v20;
      *a1 = v20;
      a1[1] = v12;
    }

    return result;
  }

  v14 = CFGetTypeID(v6);
  if (v14 != CFDictionaryGetTypeID())
  {
    v6 = 0;
  }

  if (!v6)
  {
    v13 = "unexpected object type";
    goto LABEL_15;
  }

  v19 = 0;
  result = parse_field_with_default<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(a1, 0, v6, @"min", a3, &v19);
  if (result)
  {
    result = parse_field_with_default<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(a1 + 1, 0xFFFF, v6, @"max", a3, &v19);
    if (result)
    {
      v18 = ashp::boxed::dictionary::count(v6, v15, v16, v17);
      if (v19 + v18 == 2)
      {
        return 1;
      }

      v13 = "unknown keys present";
      goto LABEL_15;
    }
  }

  return result;
}

void ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>>::ensure_free_space(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = *result + 1;
  if (*result == -1)
  {
    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", a4);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v9);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = result[1];
    if (v6 > v7)
    {
      if (v7 <= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = result[1];
      }

      if (v6 >= 9)
      {
        do
        {
          if (is_mul_ok(v8, 3uLL))
          {
            v8 = (3 * v8) >> 1;
          }

          else
          {
            v8 = *result + 1;
          }
        }

        while (v8 < v6);
      }

      if (v7 < v8)
      {

        ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::set_capacity(result, v8, a3, a4, a5);
      }
    }
  }
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::numeric_constraint<unsigned short>>::buffer(&v10, a2, a3, a4);
  if (*a1)
  {
    v6 = 0;
    while (v11)
    {
      *(v11 + v6) = *(a1[2] + 4 * v6);
      if (++v6 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v7 = v10;
  v8 = v11;
  v10 = 0;
  v11 = 0;
  v9 = a1[2];
  a1[1] = v7;
  a1[2] = v8;
  if (v9)
  {
    free(v9);
    if (v11)
    {
      free(v11);
    }
  }
}

uint64_t parse_field_with_default<&(ashp::acipc::config::completion_ring_spec::multi_config::parse(ashp::acipc::config::completion_ring_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec::multi_config>(uint64_t a1, const __CFDictionary *a2, char *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, @"multi", a3, a4);
  if (!value)
  {
    result = 1;
    *a1 = 1;
    ++*a4;
    return result;
  }

  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x911, "parse", v8);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = value;
  v10 = CFGetTypeID(value);
  if (v10 == CFDictionaryGetTypeID())
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v20 = 0;
    if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1, v13, @"count", a3) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>((a1 + 4), 0, v13, @"resource_stride", a3, &v20) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>((a1 + 5), 0, v13, @"group_stride", a3, &v20) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>((a1 + 6), 0, v13, @"doorbell_stride", a3, &v20) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>((a1 + 7), 0, v13, @"interrupt_stride", a3, &v20))
    {
      goto LABEL_17;
    }

    v17 = ashp::boxed::dictionary::count(v13, v16, v14, v15);
    if (v20 + v17 == 5)
    {
      return 1;
    }

    v19 = "unknown keys present";
  }

  else
  {
    v19 = "unexpected object type";
  }

  set_error(a3, v19, 0, v11, v12);
LABEL_17:
  set_error_location(a3, @"multi", v14, v15);
  return 0;
}

uint64_t parse_field_with_default<&(ashp::acipc::config::completion_ring_spec::constraint_config::parse(ashp::acipc::config::completion_ring_spec::constraint_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec::constraint_config>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"constraints", a3, a4);
  if (!value)
  {
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::operator=(a1, a2, v10, v11, v12);
    ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=(a1 + 3, a2 + 3, v43, v44, v45);
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=(a1 + 6, a2 + 6, v46, v47, v48);
    ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=(a1 + 9, a2 + 9, v49, v50, v51);
    ++*a5;
    return 1;
  }

  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x951, "parse", v12);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v13 = value;
  v14 = CFGetTypeID(value);
  if (v14 == CFDictionaryGetTypeID())
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v42 = "unexpected object type";
    goto LABEL_16;
  }

  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v18 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(ashp::acipc::config::numeric_constraint<unsigned short>::parse(ashp::acipc::config::numeric_constraint<unsigned short>*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::numeric_constraint<unsigned short>>(ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned short>>>(a1, v56, v17, a4, &v57);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(v56, v19, v20, v21, v22);
  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  memset(v55, 0, sizeof(v55));
  v25 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(ashp::acipc::config::numeric_constraint<unsigned int>::parse(ashp::acipc::config::numeric_constraint<unsigned int>*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::numeric_constraint<unsigned int>>(ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::numeric_constraint<unsigned int>>>(a1 + 3, v55, v17, @"footer_size", a4, &v57);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(v55, v26, v27, v28, v29);
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

  memset(v54, 0, sizeof(v54));
  v30 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(ashp::optional<ashp::acipc::config::named_target_spec::constraint,ashp::optional_traits<ashp::acipc::config::named_target_spec::constraint,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>(ashp::dynamic_array<ashp::acipc::config::named_target_spec::constraint> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>>(a1 + 6, v54, v17, @"group", a4, &v57);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(v54, v31, v32, v33, v34);
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

  memset(v53, 0, sizeof(v53));
  v35 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::constraint::parse(ashp::acipc::config::named_target_spec::constraint*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec::constraint>(ashp::optional<ashp::acipc::config::named_target_spec::constraint,ashp::optional_traits<ashp::acipc::config::named_target_spec::constraint,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>(ashp::dynamic_array<ashp::acipc::config::named_target_spec::constraint> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>>(a1 + 9, v53, v17, @"interrupt", a4, &v57);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(v53, v36, v37, v38, v39);
  if ((v35 & 1) == 0)
  {
    goto LABEL_17;
  }

  v41 = ashp::boxed::dictionary::count(v17, v40, v23, v24);
  if (v57 + v41 == 4)
  {
    return 1;
  }

  v42 = "unknown keys present";
LABEL_16:
  set_error(a4, v42, 0, v15, v16);
LABEL_17:
  set_error_location(a4, @"constraints", v23, v24);
  return 0;
}

void sub_23ECBF35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ashp::acipc::config::completion_ring_spec::constraint_config::~constraint_config(ashp::acipc::config::completion_ring_spec::constraint_config *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 9, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 6, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 3, v10, v11, v12, v13);

  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this, v14, v15, v16, v17);
}

uint64_t parse_field_with_default<&(ashp::acipc::config::memory_region_spec::multi_config::parse(ashp::acipc::config::memory_region_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec::multi_config>(uint64_t a1, const __CFDictionary *a2, char *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, @"multi", a3, a4);
  if (!value)
  {
    *(a1 + 4) = 0;
    result = 1;
    *a1 = 1;
    ++*a4;
    return result;
  }

  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xA09, "parse", v8);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = value;
  v10 = CFGetTypeID(value);
  if (v10 == CFDictionaryGetTypeID())
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v20 = 0;
    if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1, v13, @"count", a3) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>((a1 + 4), 0, v13, @"resource_stride", a3, &v20))
    {
      goto LABEL_14;
    }

    v17 = ashp::boxed::dictionary::count(v13, v16, v14, v15);
    if (v20 + v17 == 2)
    {
      return 1;
    }

    v19 = "unknown keys present";
  }

  else
  {
    v19 = "unexpected object type";
  }

  set_error(a3, v19, 0, v11, v12);
LABEL_14:
  set_error_location(a3, @"multi", v14, v15);
  return 0;
}

uint64_t ashp::acipc::config::device_register_spec::validate(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 > 8 || ((1 << v5) & 0x116) == 0)
  {
    v12 = "width";
    v10 = a2;
    v11 = "unsupported value";
  }

  else
  {
    v7 = *(a1 + 4);
    if (!__CFADD__(v7, v5) || v7 + v5 == 0)
    {
      if (!(v7 % v5))
      {
        return 1;
      }

      v9 = "invalid alignment";
    }

    else
    {
      v9 = "bounds overflow";
    }

    v10 = a2;
    v11 = v9;
    v12 = 0;
  }

  set_error(v10, v11, v12, a4, a5);
  return 0;
}

uint64_t ashp::acipc::config::interrupt_spec::validate(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
LABEL_21:
    v23 = "ambiguous name";
    goto LABEL_23;
  }

  v8 = 0;
  v9 = *(a2 + 48);
  v10 = 24 * v7;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v11 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v9, v12, v13, v14);
    a2 = *v9;
    if (v11)
    {
      v15 = a2 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v11 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v11, a2, 0))
    {
      goto LABEL_16;
    }

    v18 = __CFADD__(v8++, 1);
    if (v18 << 63 >> 63 != v18)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

LABEL_16:
    v9 += 24;
    v10 -= 24;
  }

  while (v10);
  if (v8 != 1)
  {
    goto LABEL_21;
  }

LABEL_18:
  v19 = *(a1 + 20);
  if (v19)
  {
    ashp::acipc::config::interrupt_spec::multi_config::resolve(v25, v19, *(a1 + 16), (v19 - 1));
    v22 = v26;
    if ((v26 & 1) == 0)
    {
      set_error(a3, "instance resolution failure", 0, v20, v21);
    }

    return v22;
  }

  v23 = "instance count is zero";
LABEL_23:
  set_error(a3, v23, 0, a4, a5);
  return 0;
}

void ashp::acipc::config::interrupt_spec::multi_config::resolve(uint64_t result, unsigned int a2, unsigned __int16 a3, const char *a4)
{
  if (a2 <= a4)
  {
    v6 = 981;
  }

  else
  {
    v5 = a4 + a3;
    if (!__CFADD__(a4, a3) && v5 < 0x10000)
    {
      if (result)
      {
        *result = v5;
        *(result + 2) = 1;
        return;
      }

      goto LABEL_10;
    }

    v6 = 983;
  }

  ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", v6, "resolve", a4);
  if (result)
  {
    *(result + 2) = 0;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t resolve_named_target<ashp::acipc::config::interrupt_spec>(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, const char *a5)
{
  if (!a1)
  {
LABEL_12:
    v16 = "unknown target";
LABEL_13:
    set_error(a5, v16, 0, a4, a5);
    return 0;
  }

  v8 = a2;
  v9 = 24 * a1;
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, a2, a3, a4);
    v10 = *a3;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v11, v12, v13);
    a2 = *v8;
    if (v10 && a2 != 0)
    {
      break;
    }

    if (!(v10 | a2))
    {
      goto LABEL_15;
    }

LABEL_11:
    v8 += 24;
    v9 -= 24;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (CFStringCompare(v10, a2, 0))
  {
    goto LABEL_11;
  }

LABEL_15:
  ashp::acipc::config::interrupt_spec::multi_config::resolve(&v20, *(v8 + 20), *(v8 + 16), *(a3 + 8));
  if ((v21 & 1) == 0)
  {
    v16 = "instance resolution failure";
    goto LABEL_13;
  }

  ashp::optional<unsigned short,void>::value(&v20, v18, v19, a4);
  if (a4)
  {
    *a4 = v20;
  }

  return v8;
}

BOOL ashp::acipc::config::doorbell_spec::validate(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{
  v5 = a3;
  v6 = a2;
  v87 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_18;
  }

  v8 = *(a2 + 56);
  if (!v8)
  {
LABEL_36:
    v57 = "ambiguous name";
LABEL_38:
    set_error(v5, v57, 0, a4, a5);
    return 0;
  }

  v9 = 0;
  v10 = *(a2 + 72);
  v11 = 96 * v8;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v12 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, v13, v14, v15);
    a2 = *v10;
    if (v12)
    {
      v16 = a2 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (v12 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v12, a2, 0))
    {
      goto LABEL_16;
    }

    v19 = __CFADD__(v9++, 1);
    if (v19 << 63 >> 63 != v19)
    {
      v5 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      _os_crash();
      __break(1u);
      goto LABEL_54;
    }

LABEL_16:
    v10 += 12;
    v11 -= 96;
  }

  while (v11);
  if (v9 != 1)
  {
    goto LABEL_36;
  }

LABEL_18:
  if (!*(a1 + 88))
  {
    v57 = "instance count is zero";
    goto LABEL_38;
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v82, a1 + 48, a3, a4);
  v20 = (a1 + 72);
  v83[0] = *(a1 + 72);
  *(v83 + 5) = *(a1 + 77);
  ashp::acipc::config::doorbell_spec::multi_config::resolve(&v84, a1 + 88, v82, (*(a1 + 88) - 1));
  if (v86 != 1)
  {
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v82, v21, v22, v23);
    set_error(v5, "instance resolution failure", 0, v58, v59);
    return 0;
  }

  v86 = 0;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v85, v21, v22, v23);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v82, v24, v25, v26);
  v30 = *(a1 + 84);
  if (v30 != 2 && v30 != 4)
  {
    set_error(v5, "unsupported register width", "register", v28, v29);
    return 0;
  }

  if ((ashp::acipc::config::device_register_spec::validate(a1 + 76, v5, v27, v28, v29) & 1) == 0)
  {
    set_error_location(v5, "register", v32, v33);
    return 0;
  }

  if (*(a1 + 8) != 3)
  {
    goto LABEL_27;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    set_error(v5, "doorbell value not configured in shared constant mode", "value", v33, v34);
    return 0;
  }

  if (*(a1 + 84) == 2)
  {
    ashp::optional<unsigned int,void>::value(a1 + 12, v31, v32, v33);
    if (*(a1 + 12) >= 0x10000u)
    {
      set_error(v5, "doorbell value out of range", 0, v33, v35);
      return 0;
    }
  }

  if (!v6)
  {
    return 1;
  }

LABEL_27:
  v36 = *(a1 + 24);
  if (v36)
  {
    v37 = *(a1 + 40);
    v38 = 8 * v36;
    while (1)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v37, v31, v32, v33);
      v40 = ashp::acipc::config::boot_ipc_stage_spec::lookup(v6[7].info, v6[7].length, *v37, v39);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v37, v41, v42, v43);
      if (!(v40 | ashp::acipc::config::main_ipc_stage_spec::lookup(v6[8].isa, v6[8].data, *v37, v44)))
      {
        break;
      }

      ++v37;
      v38 -= 8;
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    set_error(v5, "unknown target", "ipc_stage", v33, v45);
    return 0;
  }

LABEL_32:
  v81 = *(a1 + 80);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v78, a1 + 48, v32, v33);
  v79[0] = *v20;
  *(v79 + 5) = *(a1 + 77);
  ashp::acipc::config::doorbell_spec::multi_config::resolve(&v84, a1 + 88, v78, (*(a1 + 88) - 1));
  v52 = *(ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(&v84, v46, v47, v48) + 32) + *(a1 + 84) - 1;
  if (v86 == 1)
  {
    v86 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v85, v49, v50, v51);
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v78, v49, v50, v51);
  v80 = v52;
  v84 = a1;
  v85[0] = &v81;
  v85[1] = &v80;
  if (first_where<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec::validate(ashp::acipc::config::acipc_config const*,ashp::acipc::config::error_context *)::$_0,0>(v6[1].length, v6[2].info, &v84, v53))
  {
    set_error(v5, "register overlap", 0, v55, v56);
    return 0;
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v76, a1 + 48, v54, v55);
  v77[0] = *v20;
  *(v77 + 5) = *(a1 + 77);
  ashp::acipc::config::doorbell_spec::multi_config::resolve(&v84, a1 + 88, v76, (*(a1 + 88) - 1));
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v76, v61, v62, v63);
  if (*(ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(&v84, v64, v65, v66) + 16) == 1 && (v70 = ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(&v84, v67, v68, v69), ashp::optional<ashp::acipc::name_and_selector,void>::value(v70, v71, v72, v73), !resolve_named_target<ashp::acipc::config::resource_spec>(v6[3].info, v6[3].length, v70, v5, v74)))
  {
LABEL_54:
    set_error_location(v5, "resource", v68, v69);
    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  if (v86 == 1)
  {
    v86 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v85, v67, v68, v69);
  }

  return (v75 & 1) != 0;
}

void ashp::acipc::config::doorbell_spec::multi_config::resolve(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a2 <= a4)
  {
    ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", 0x488, "resolve", a4);
    *(a1 + 48) = 0;
    return;
  }

  v5 = a4;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v35, a3, a3, a4);
  *v37 = *(a3 + 24);
  *&v37[5] = *(a3 + 29);
  if (*(a3 + 16) == 1)
  {
    v11 = *(a2 + 4);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a3, v8, v9, v10);
    v12 = *(a3 + 8);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(&v35, v13, v14, v15);
    v36 = v12 + v11 * v5;
    if (__CFADD__(v12, v11 * v5))
    {
      v17 = 1165;
LABEL_16:
      ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", v17, "resolve", v10);
      *(a1 + 48) = 0;
      goto LABEL_12;
    }
  }

  v16 = *(a3 + 24);
  v17 = 1167;
  v18 = __CFADD__(v16, v5);
  v19 = v16 + v5;
  *v37 = v19;
  if (v18 || HIWORD(v19))
  {
    goto LABEL_16;
  }

  v20 = *(a3 + 36) * v5;
  v21 = (v20 & 0xFFFFFFFF00000000) != 0;
  v22 = *(a3 + 32);
  v18 = __CFADD__(v22, v20);
  v23 = v22 + v20;
  v24 = v18;
  *&v37[8] = v23;
  v17 = 1168;
  if (v21 || v24)
  {
    goto LABEL_16;
  }

  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v33, &v35, v9, v10);
  v34[0] = *v37;
  *(v34 + 5) = *&v37[5];
  ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::optional<int,0>(a1, v33, v25, v26);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v33, v27, v28, v29);
LABEL_12:
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v35, v30, v31, v32);
}

void sub_23ECBFF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void set_error_location(uint64_t a1, const char *a2, uint64_t a3, const char *a4)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      ashp::boxed::string::with_cstr_nocopy(&v15, a2, a3, a4);
      ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::ensure_free_space((a1 + 16), v5, v6, v7, v8);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::emplace_back<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>((a1 + 16), &v15, v9, v10, v11);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v15, v12, v13, v14);
    }
  }
}

void sub_23ECBFF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

const __CFString **ashp::acipc::config::boot_ipc_stage_spec::lookup(uint64_t a1, const __CFString **a2, const __CFString *a3, const char *a4)
{
  if (a1)
  {
    v5 = a2;
    for (i = 184 * a1; i; i -= 184)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, a2, a3, a4);
      v7 = *v5;
      if (*v5)
      {
        v8 = a3 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3 == 0;
        }

        if (v9)
        {
          return v5;
        }
      }

      else if (CFStringCompare(v7, a3, 0) == kCFCompareEqualTo)
      {
        return v5;
      }

      v5 += 23;
    }
  }

  return 0;
}

const __CFString **ashp::acipc::config::main_ipc_stage_spec::lookup(uint64_t a1, const __CFString **a2, const __CFString *a3, const char *a4)
{
  if (a1)
  {
    v5 = a2;
    for (i = 304 * a1; i; i -= 304)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, a2, a3, a4);
      v7 = *v5;
      if (*v5)
      {
        v8 = a3 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3 == 0;
        }

        if (v9)
        {
          return v5;
        }
      }

      else if (CFStringCompare(v7, a3, 0) == kCFCompareEqualTo)
      {
        return v5;
      }

      v5 += 38;
    }
  }

  return 0;
}

uint64_t first_where<ashp::acipc::config::doorbell_spec,ashp::acipc::config::doorbell_spec::validate(ashp::acipc::config::acipc_config const*,ashp::acipc::config::error_context *)::$_0,0>(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v5 = a2;
  v6 = a2 + 96 * a1;
  v41 = v6;
  while (1)
  {
    v7 = *a3;
    if (*a3 != v5)
    {
      v8 = *(v5 + 24);
      if (v8)
      {
        v9 = 0;
        v10 = *(v5 + 40);
        v11 = &v10[v8];
        do
        {
          v12 = *(v7 + 24);
          if (v12)
          {
            v13 = *(v7 + 40);
            v14 = 8 * v12;
            do
            {
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v45, *v10, a3, a4);
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&theString2, *v13, v15, v16);
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&v45, v17, v18, v19);
              v20 = v45;
              ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(&theString2, v21, v22, v23);
              v26 = theString2;
              v27 = (v20 | theString2) == 0;
              if (v20 && theString2)
              {
                v27 = CFStringCompare(v20, theString2, 0) == kCFCompareEqualTo;
              }

              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&theString2, v26, v24, v25);
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v45, v28, v29, v30);
              if (v27)
              {
                v32 = __CFADD__(v9++, 1);
                v33 = v32;
                if (v33 << 63 >> 63 != v33)
                {
                  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x215, "count_intersection", v31);
                  _os_crash();
                  __break(1u);
                }
              }

              ++v13;
              v14 -= 8;
            }

            while (v14);
          }

          ++v10;
        }

        while (v10 != v11);
        v6 = v41;
        if (v9 && *(v5 + 76) == *(v7 + 76))
        {
          ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v42, v5 + 48, a3, a4);
          v43[0] = *(v5 + 72);
          *(v43 + 5) = *(v5 + 77);
          ashp::acipc::config::doorbell_spec::multi_config::resolve(&v45, v5 + 88, v42, (*(v5 + 88) - 1));
          ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v42, v34, v35, v36);
          if (v47)
          {
            v38 = *(v5 + 80);
            v6 = v41;
            v39 = *a3[1] <= *(ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(&v45, v37, a3, a4) + 32) + *(v5 + 84) - 1 && *a3[2] >= v38;
          }

          else
          {
            v39 = 0;
            v6 = v41;
          }

          if (v47 == 1)
          {
            v47 = 0;
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v46, v37, a3, a4);
          }

          if (v39)
          {
            break;
          }
        }
      }
    }

    v5 += 96;
    if (v5 == v6)
    {
      return 0;
    }
  }

  return v5;
}

void sub_23ECC037C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a26 == 1)
  {
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a9, a2, a3, a4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t resolve_named_target<ashp::acipc::config::resource_spec>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (!a1)
  {
LABEL_12:
    v15 = "unknown target";
    goto LABEL_13;
  }

  v7 = a2;
  v8 = 16 * a1;
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, a2, a3, a4);
    v9 = *a3;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v7, v10, v11, v12);
    a2 = *v7;
    if (v9 && a2 != 0)
    {
      break;
    }

    if (!(v9 | a2))
    {
      goto LABEL_14;
    }

LABEL_11:
    v7 += 16;
    v8 -= 16;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (CFStringCompare(v9, a2, 0))
  {
    goto LABEL_11;
  }

LABEL_14:
  if (*(v7 + 12) > *(a3 + 8))
  {
    return v7;
  }

  ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", 0x50F, "resolve", a4);
  v15 = "instance resolution failure";
LABEL_13:
  set_error(a4, v15, 0, a4, a5);
  return 0;
}

uint64_t ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::optional<int,0>(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4)
{
  *(a1 + 48) = 0;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 8, a2, a3, a4);
  v6 = a2[3];
  *(a1 + 37) = *(a2 + 29);
  *(a1 + 32) = v6;
  *(a1 + 48) = 1;
  return a1;
}

__CFString *resolve_named_target<ashp::acipc::config::doorbell_spec>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_12:
    set_error(a5, "unknown target", 0, a4, a5);
    return 0;
  }

  v8 = a2;
  v9 = 96 * a1;
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, a2, a3, a4);
    v10 = *a3;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v11, v12, v13);
    a2 = v8->isa;
    if (v10 && a2 != 0)
    {
      break;
    }

    if (!(v10 | a2))
    {
      goto LABEL_14;
    }

LABEL_11:
    v8 += 3;
    v9 -= 96;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (CFStringCompare(v10, a2, 0))
  {
    goto LABEL_11;
  }

LABEL_14:
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v41, &v8[1].data, a3, a4);
  v42[0] = v8[2].info;
  *(v42 + 5) = *(&v8[2].info + 5);
  ashp::acipc::config::doorbell_spec::multi_config::resolve(v44, &v8[2].length, v41, *(a3 + 8));
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v41, v17, v18, v19);
  if (v46)
  {
    v24 = ashp::optional<ashp::acipc::config::doorbell_spec::dynamic_config,void>::value(v44, v20, v21, v22);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v39, v24, v25, v26);
    v30 = *(v24 + 24);
    *&v40[5] = *(v24 + 29);
    *v40 = v30;
    if (a4)
    {
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v43, v39, v28, v29);
      ashp::swap(a4, v43, v31, v32);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v43, v33, v34, v35);
      *(a4 + 24) = *v40;
      *(a4 + 29) = *&v40[5];
    }

    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v39, v27, v28, v29);
  }

  else
  {
    set_error(a5, "instance resolution failure", 0, v22, v23);
    v8 = 0;
  }

  if (v46 == 1)
  {
    v46 = 0;
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v45, v36, v37, v38);
  }

  return v8;
}

void sub_23ECC06E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::config::exec_stage_spec::validate(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    return 1;
  }

  v6 = a2;
  v7 = *(a2 + 80);
  if (!v7)
  {
LABEL_30:
    v34 = "ambiguous name";
LABEL_33:
    v36 = a3;
    v35 = 0;
LABEL_34:
    set_error(v36, v34, v35, a4, a5);
    return 0;
  }

  v9 = 0;
  v10 = *(a2 + 96);
  v11 = 24 * v7;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v12 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, v13, v14, v15);
    a2 = *v10;
    if (v12)
    {
      v16 = a2 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (v12 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v12, a2, 0))
    {
      goto LABEL_16;
    }

    v18 = __CFADD__(v9++, 1);
    v19 = v18;
    if (v19 << 63 >> 63 != v19)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      _os_crash();
      __break(1u);
      goto LABEL_36;
    }

LABEL_16:
    v10 += 3;
    v11 -= 24;
  }

  while (v11);
  if (v9 != 1)
  {
    goto LABEL_30;
  }

  data = v6[2].data;
  if (!data)
  {
LABEL_32:
    v34 = "ambiguous value";
    goto LABEL_33;
  }

  v21 = 0;
  v22 = 24 * data;
  v23 = (v6[3].isa + 8);
  while (1)
  {
    v24 = *v23;
    v23 += 6;
    if (*(a1 + 8) == v24)
    {
      v18 = __CFADD__(v21++, 1);
      v25 = v18;
      if (v25 << 63 >> 63 != v25)
      {
        break;
      }
    }

    v22 -= 24;
    if (!v22)
    {
      if (v21 != 1)
      {
        goto LABEL_32;
      }

      v27 = *(a1 + 16);
      v26 = (a1 + 16);
      if (v27)
      {
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v26, a2, a3, a4);
        v29 = ashp::acipc::config::boot_ipc_stage_spec::lookup(v6[7].info, v6[7].length, *v26, v28);
        ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v26, v30, v31, v32);
        if (!(v29 | ashp::acipc::config::main_ipc_stage_spec::lookup(v6[8].isa, v6[8].data, *v26, v33)))
        {
          v34 = "unknown target";
          v35 = "ipc_stage";
          v36 = a3;
          goto LABEL_34;
        }
      }

      return 1;
    }
  }

LABEL_36:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
  result = _os_crash();
  __break(1u);
  return result;
}

const __CFString **ashp::acipc::config::exec_stage_spec::lookup(uint64_t a1, const __CFString **a2, const __CFString *a3, const char *a4)
{
  if (a1)
  {
    v5 = a2;
    for (i = 24 * a1; i; i -= 24)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, a2, a3, a4);
      v7 = *v5;
      if (*v5)
      {
        v8 = a3 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3 == 0;
        }

        if (v9)
        {
          return v5;
        }
      }

      else if (CFStringCompare(v7, a3, 0) == kCFCompareEqualTo)
      {
        return v5;
      }

      v5 += 3;
    }
  }

  return 0;
}

uint64_t ashp::acipc::config::resource_spec::validate(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  v7 = *(a2 + 104);
  if (!v7)
  {
LABEL_20:
    v20 = "ambiguous name";
    goto LABEL_22;
  }

  v8 = 0;
  v9 = *(a2 + 120);
  v10 = 16 * v7;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v11 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v9, v12, v13, v14);
    a2 = *v9;
    if (v11)
    {
      v15 = a2 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v11 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v11, a2, 0))
    {
      goto LABEL_16;
    }

    v18 = __CFADD__(v8++, 1);
    if (v18 << 63 >> 63 != v18)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

LABEL_16:
    v9 += 2;
    v10 -= 16;
  }

  while (v10);
  if (v8 != 1)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (*(a1 + 12))
  {
    return 1;
  }

  v20 = "instance count is zero";
LABEL_22:
  set_error(a3, v20, 0, a4, a5);
  return 0;
}

uint64_t parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(ashp::optional<ashp::acipc::config::device_register_spec,ashp::optional_traits<ashp::acipc::config::device_register_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::device_register_spec,void>>(uint64_t a1, uint64_t *a2, const __CFDictionary *a3, const void *a4, char *a5, void *a6)
{
  value = ashp::boxed::dictionary::get_value(a3, a4, a3, a4);
  if (!value)
  {
    if (*(a2 + 12) == 1)
    {
      v23 = *a2;
      if (*(a1 + 12))
      {
        *(a1 + 8) = *(a2 + 8);
        *a1 = v23;
      }

      else
      {
        *(a1 + 8) = *(a2 + 2);
        *a1 = v23;
        *(a1 + 12) = 1;
      }
    }

    else if (*(a1 + 12))
    {
      *(a1 + 12) = 0;
    }

    ++*a6;
    return 1;
  }

  if (a1 && *(a1 + 12) != 1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 != CFBooleanGetTypeID() || ashp::boxed::BOOLean::value(v13, v15, v16, v17))
    {
      LOBYTE(v25) = 0;
      HIDWORD(v25) = 0;
      LOBYTE(v26) = 0;
      if (!ashp::acipc::config::device_register_spec::parse(&v25, v13, a5, v17, v18))
      {
        set_error_location(a5, a4, v19, v20);
        return 0;
      }

      v21 = v26;
      v22 = *(a1 + 12);
      *a1 = v25;
      if (v22 == 1)
      {
        *(a1 + 8) = v21;
      }

      else
      {
        *(a1 + 8) = v21;
        *(a1 + 12) = 1;
      }
    }

    return 1;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xD8, "parse_optional", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::acipc::config::device_info_spec::validate(_BYTE *a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{
  if (a1[12] == 1)
  {
    ashp::optional<ashp::acipc::config::device_register_spec,void>::value(a1, a2, a3, a4);
    if (a1[8] != 4)
    {
      v20 = "version";
      goto LABEL_15;
    }

    v10 = ashp::optional<ashp::acipc::config::device_register_spec,void>::value(a1, v8, v9, a4);
    if ((ashp::acipc::config::device_register_spec::validate(v10, a3, v11, v12, v13) & 1) == 0)
    {
      v21 = "version";
LABEL_20:
      set_error_location(a3, v21, a3, a4);
      return 0;
    }
  }

  if (a1[28] == 1)
  {
    ashp::optional<ashp::acipc::config::device_register_spec,void>::value((a1 + 16), a2, a3, a4);
    if (a1[24] != 4)
    {
      v20 = "capability";
      goto LABEL_15;
    }

    ashp::optional<ashp::acipc::config::device_register_spec,void>::value((a1 + 16), v14, v15, a4);
    if ((ashp::acipc::config::device_register_spec::validate((a1 + 16), a3, v16, v17, v18) & 1) == 0)
    {
      v21 = "capability";
      goto LABEL_20;
    }
  }

  if (a1[40] == 4)
  {
    if (ashp::acipc::config::device_register_spec::validate((a1 + 32), a3, a3, a4, a5))
    {
      if (!a2 || resolve_named_target<ashp::acipc::config::interrupt_spec>(*(a2 + 32), *(a2 + 48), (a1 + 64), 0, a3))
      {
        return 1;
      }

      v21 = "exec_stage_interrupt";
    }

    else
    {
      v21 = "exec_stage";
    }

    goto LABEL_20;
  }

  v20 = "exec_stage";
LABEL_15:
  set_error(a3, "unsupported register width", v20, a4, a5);
  return 0;
}

uint64_t ashp::optional<ashp::acipc::config::device_register_spec,void>::value(uint64_t result, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(result + 12) & 1) == 0)
  {
    ashp::detail::control_flow::log_guard_else_failure("optional.hpp", 0xF7, "value", a4);
    ashp::detail::base::log_pre_crash_message("BUG in Airship: bad optional access", "optional.hpp", 0xF7, "value", v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t ashp::acipc::config::boot_ipc_stage_spec::validate(uint64_t a1, uint64_t a2, char *a3, const char *a4, const char *a5)
{
  v5 = a3;
  v6 = a2;
  if (!a2)
  {
    goto LABEL_37;
  }

  v8 = *(a2 + 232);
  if (!v8)
  {
LABEL_34:
    v31 = "ambiguous name";
    goto LABEL_35;
  }

  v9 = 0;
  v10 = *(a2 + 248);
  v11 = 184 * v8;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v12 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, v13, v14, v15);
    a2 = *v10;
    if (v12)
    {
      v16 = a2 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (v12 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v12, a2, 0))
    {
      goto LABEL_16;
    }

    v18 = __CFADD__(v9++, 1);
    v19 = v18;
    if (v19 << 63 >> 63 != v19)
    {
      v5 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      _os_crash();
      __break(1u);
      goto LABEL_96;
    }

LABEL_16:
    v10 += 23;
    v11 -= 184;
  }

  while (v11);
  if (v9 != 1)
  {
    goto LABEL_34;
  }

  v20 = v6[32];
  if (!v20)
  {
    goto LABEL_36;
  }

  v21 = 0;
  v22 = v6[34];
  v23 = 304 * v20;
  while (2)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v24 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v22, v25, v26, v27);
    a2 = *v22;
    if (v24)
    {
      v28 = a2 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (!(v24 | a2))
      {
        goto LABEL_28;
      }
    }

    else if (CFStringCompare(v24, a2, 0) == kCFCompareEqualTo)
    {
LABEL_28:
      v18 = __CFADD__(v21++, 1);
      v30 = v18;
      if (v30 << 63 >> 63 != v30)
      {
        v5 = "BUG in Airship: ";
        ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
        _os_crash();
        __break(1u);
LABEL_99:
        v61 = "image_response";
LABEL_85:
        set_error_location(v5, v61, v32, a4);
LABEL_86:
        v62 = "registers";
LABEL_87:
        set_error_location(v5, v62, a3, a4);
        return 0;
      }
    }

    v22 += 38;
    v23 -= 304;
    if (v23)
    {
      continue;
    }

    break;
  }

  if (v21)
  {
    goto LABEL_34;
  }

LABEL_36:
  if (!resolve_named_target<ashp::acipc::config::resource_spec>(v6[13], v6[15], a1 + 8, v5, a5))
  {
    v62 = "resource";
    goto LABEL_87;
  }

LABEL_37:
  if (*(a1 + 32) != 4)
  {
    v60 = "image_address_lo";
LABEL_83:
    set_error(v5, "unsupported register width", v60, a4, a5);
    goto LABEL_86;
  }

  if ((ashp::acipc::config::device_register_spec::validate(a1 + 24, v5, a3, a4, a5) & 1) == 0)
  {
    v61 = "image_address_lo";
    goto LABEL_85;
  }

  if (*(a1 + 44) != 4)
  {
    v60 = "image_address_hi";
    goto LABEL_83;
  }

  if ((ashp::acipc::config::device_register_spec::validate(a1 + 36, v5, v32, a4, a5) & 1) == 0)
  {
    v61 = "image_address_hi";
    goto LABEL_85;
  }

  if (*(a1 + 56) != 4)
  {
    v60 = "image_size";
    goto LABEL_83;
  }

  if ((ashp::acipc::config::device_register_spec::validate(a1 + 48, v5, v32, a4, a5) & 1) == 0)
  {
    v61 = "image_size";
    goto LABEL_85;
  }

  if (*(a1 + 68) != 4)
  {
    v60 = "image_doorbell";
    goto LABEL_83;
  }

  if ((ashp::acipc::config::device_register_spec::validate(a1 + 60, v5, v32, a4, a5) & 1) == 0)
  {
LABEL_96:
    v61 = "image_doorbell";
    goto LABEL_85;
  }

  if (*(a1 + 80) != 4)
  {
    v60 = "image_response";
    goto LABEL_83;
  }

  if ((ashp::acipc::config::device_register_spec::validate(a1 + 72, v5, v32, a4, a5) & 1) == 0)
  {
    goto LABEL_99;
  }

  v34 = *(a1 + 88);
  if (!v34)
  {
    goto LABEL_72;
  }

  v35 = *(a1 + 104);
  v36 = v35 + 24 * v34;
  v37 = "ambiguous name";
  while (2)
  {
    if (!a1)
    {
      goto LABEL_66;
    }

    v38 = *(a1 + 88);
    if (!v38)
    {
LABEL_101:
      set_error(v5, v37, 0, a4, a5);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v35, v63, v64, v65);
      set_error_location(v5, *v35, v66, v67);
      v62 = "client_registers";
      goto LABEL_87;
    }

    v39 = 0;
    v40 = *(a1 + 104);
    v41 = 24 * v38;
    while (2)
    {
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v35, v33, v32, a4);
      v42 = *v35;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v40, v43, v44, v45);
      v33 = *v40;
      if (v42)
      {
        v46 = v33 == 0;
      }

      else
      {
        v46 = 1;
      }

      if (v46)
      {
        if (!(v42 | v33))
        {
          goto LABEL_60;
        }
      }

      else if (CFStringCompare(v42, v33, 0) == kCFCompareEqualTo)
      {
LABEL_60:
        v18 = __CFADD__(v39++, 1);
        v48 = v18;
        if (v48 << 63 >> 63 != v48)
        {
          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
          result = _os_crash();
          __break(1u);
          return result;
        }
      }

      v40 += 3;
      v41 -= 24;
      if (v41)
      {
        continue;
      }

      break;
    }

    if (v39 != 1)
    {
      goto LABEL_101;
    }

LABEL_66:
    v49 = *(v35 + 12);
    v50 = *(v35 + 16);
    v18 = __CFADD__(v49, v50);
    v51 = v49 + v50;
    if (v18 && v51 != 0)
    {
      v37 = "bounds overflow";
      goto LABEL_101;
    }

    v35 += 24;
    if (v35 != v36)
    {
      continue;
    }

    break;
  }

LABEL_72:
  if (v6 && !resolve_named_target<ashp::acipc::config::interrupt_spec>(v6[4], v6[6], a1 + 112, 0, v5))
  {
    v62 = "image_interrupt";
    goto LABEL_87;
  }

  v53 = *(a1 + 128);
  if (!v53)
  {
    return 1;
  }

  v54 = *(a1 + 144);
  v55 = *(a1 + 152);
  v56 = &v54[v53];
  result = 1;
  while (!v55)
  {
LABEL_80:
    if (++v54 == v56)
    {
      return result;
    }
  }

  v58 = 4 * v55;
  v59 = *(a1 + 168);
  while (*v54 != *v59)
  {
    ++v59;
    v58 -= 4;
    if (!v58)
    {
      goto LABEL_80;
    }
  }

  v31 = "response code is ambiguous";
LABEL_35:
  set_error(v5, v31, 0, a4, a5);
  return 0;
}

uint64_t ashp::acipc::config::main_ipc_stage_spec::validate(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{
  v5 = a3;
  v6 = a2;
  if (!a2)
  {
    goto LABEL_35;
  }

  v8 = *(a2 + 256);
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = 0;
  v10 = *(a2 + 272);
  v11 = 304 * v8;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v12 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, v13, v14, v15);
    a2 = *v10;
    if (v12)
    {
      v16 = a2 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (v12 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v12, a2, 0))
    {
      goto LABEL_16;
    }

    v18 = __CFADD__(v9++, 1);
    v19 = v18;
    if (v19 << 63 >> 63 != v19)
    {
      v5 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      _os_crash();
      __break(1u);
LABEL_72:
      v42 = "context_info_address_hi";
LABEL_62:
      set_error(v5, "unsupported register width", v42, a4, a5);
LABEL_63:
      v43 = "registers";
LABEL_64:
      set_error_location(v5, v43, v40, v41);
      return 0;
    }

LABEL_16:
    v10 += 304;
    v11 -= 304;
  }

  while (v11);
  if (v9 != 1)
  {
    goto LABEL_34;
  }

  v20 = v6[29];
  if (!v20)
  {
LABEL_35:
    v31 = *(a1 + 16);
    if (v31 != 2 && v31 != 4)
    {
      v42 = "ipc_control";
      goto LABEL_62;
    }

    if (ashp::acipc::config::device_register_spec::validate(a1 + 8, v5, a3, a4, a5))
    {
      if (*(a1 + 28) != 4)
      {
        v42 = "ipc_status";
        goto LABEL_62;
      }

      if (ashp::acipc::config::device_register_spec::validate(a1 + 20, v5, v33, a4, a5))
      {
        v34 = *(a1 + 40);
        if (v34 != 2 && v34 != 4)
        {
          v42 = "sleep_control";
          goto LABEL_62;
        }

        if (ashp::acipc::config::device_register_spec::validate(a1 + 32, v5, v33, a4, a5))
        {
          if (*(a1 + 52) != 4)
          {
            v42 = "context_info_address_lo";
            goto LABEL_62;
          }

          if (ashp::acipc::config::device_register_spec::validate(a1 + 44, v5, v33, a4, a5))
          {
            if (*(a1 + 64) != 4)
            {
              goto LABEL_72;
            }

            if (ashp::acipc::config::device_register_spec::validate(a1 + 56, v5, v33, a4, a5))
            {
              if (*(a1 + 76) != 4)
              {
LABEL_75:
                v42 = "window_base_lo";
                goto LABEL_62;
              }

              if (ashp::acipc::config::device_register_spec::validate(a1 + 68, v5, v33, a4, a5))
              {
                if (*(a1 + 88) != 4)
                {
                  v42 = "window_base_hi";
                  goto LABEL_62;
                }

                if (ashp::acipc::config::device_register_spec::validate(a1 + 80, v5, v33, a4, a5))
                {
                  if (*(a1 + 100) != 4)
                  {
                    v42 = "window_size";
                    goto LABEL_62;
                  }

                  if (ashp::acipc::config::device_register_spec::validate(a1 + 92, v5, v33, a4, a5))
                  {
                    if (*(a1 + 112) <= 1u)
                    {
                      v38 = "value out of bounds";
                      v45 = "ring_size";
LABEL_87:
                      v47 = v5;
LABEL_88:
                      set_error(v47, v38, v45, a4, v36);
LABEL_89:
                      v43 = "mtr";
                      goto LABEL_64;
                    }

                    v37 = *(a1 + 116);
                    if ((v37 & 3) != 0)
                    {
                      v38 = "invalid alignment";
LABEL_86:
                      v45 = "transfer_header_size";
                      goto LABEL_87;
                    }

                    if (v37 >= 0x400)
                    {
                      v38 = "value out of bounds";
                      goto LABEL_86;
                    }

                    v46 = *(a1 + 120);
                    if ((v46 & 3) != 0)
                    {
                      v38 = "invalid alignment";
LABEL_95:
                      v45 = "transfer_footer_size";
                      goto LABEL_87;
                    }

                    if (v46 >= 0x400)
                    {
                      v38 = "value out of bounds";
                      goto LABEL_95;
                    }

                    if (*(a1 + 133) == 1)
                    {
                      if (*(a1 + 132) == 1)
                      {
                        v38 = "in-place completion requires in-order";
LABEL_105:
                        v47 = v5;
                        v45 = 0;
                        goto LABEL_88;
                      }
                    }

                    else if ((*(a1 + 248) & 1) == 0)
                    {
                      v38 = "out-of-place completion requires completion ring";
                      goto LABEL_105;
                    }

                    if (v6)
                    {
                      if (resolve_named_target<ashp::acipc::config::doorbell_spec>(v6[7], v6[9], a1 + 136, 0, v5))
                      {
                        if (resolve_named_target<ashp::acipc::config::interrupt_spec>(v6[4], v6[6], a1 + 160, 0, v5))
                        {
                          if (*(a1 + 248) != 1)
                          {
                            goto LABEL_101;
                          }

LABEL_107:
                          ashp::optional<ashp::acipc::config::main_ipc_stage_spec::mcr_spec,void>::value(a1 + 184, v35, v33, a4);
                          if (*(a1 + 184) <= 1u)
                          {
                            v53 = "value out of bounds";
                            v55 = "ring_size";
                          }

                          else
                          {
                            v52 = *(a1 + 188);
                            if ((v52 & 3) != 0)
                            {
                              v53 = "invalid alignment";
LABEL_119:
                              v55 = "header_size";
                              goto LABEL_120;
                            }

                            if (v52 >= 0x400)
                            {
                              v53 = "value out of bounds";
                              goto LABEL_119;
                            }

                            v56 = *(a1 + 192);
                            if ((v56 & 3) != 0)
                            {
                              v53 = "invalid alignment";
                            }

                            else
                            {
                              if (v56 < 0x400)
                              {
                                if (!v6)
                                {
                                  return 1;
                                }

                                if (*(a1 + 216) == 1 && (ashp::optional<ashp::acipc::name_and_selector,void>::value(a1 + 200, v48, v49, v50), !resolve_named_target<ashp::acipc::config::doorbell_spec>(v6[7], v6[9], a1 + 200, 0, v5)))
                                {
                                  v59 = "doorbell";
                                }

                                else
                                {
                                  if (resolve_named_target<ashp::acipc::config::interrupt_spec>(v6[4], v6[6], a1 + 232, 0, v5))
                                  {
LABEL_101:
                                    if (!resolve_named_target<ashp::acipc::config::interrupt_spec>(v6[4], v6[6], a1 + 256, 0, v5))
                                    {
                                      v43 = "ipc_status_interrupt";
                                      goto LABEL_64;
                                    }

                                    if (!resolve_named_target<ashp::acipc::config::interrupt_spec>(v6[4], v6[6], a1 + 272, 0, v5))
                                    {
                                      v43 = "peripheral_info_interrupt";
                                      goto LABEL_64;
                                    }

                                    return 1;
                                  }

                                  v59 = "interrupt";
                                }

                                set_error_location(v5, v59, v57, v58);
LABEL_121:
                                v43 = "mcr";
                                goto LABEL_64;
                              }

                              v53 = "value out of bounds";
                            }

                            v55 = "footer_size";
                          }

LABEL_120:
                          set_error(v5, v53, v55, v50, v51);
                          goto LABEL_121;
                        }

                        v54 = "interrupt";
                      }

                      else
                      {
                        v54 = "doorbell";
                      }

                      set_error_location(v5, v54, v33, a4);
                      goto LABEL_89;
                    }

                    if ((*(a1 + 248) & 1) == 0)
                    {
                      return 1;
                    }

                    goto LABEL_107;
                  }

                  v39 = "window_size";
                }

                else
                {
                  v39 = "window_base_hi";
                }
              }

              else
              {
                v39 = "window_base_lo";
              }
            }

            else
            {
              v39 = "context_info_address_hi";
            }
          }

          else
          {
            v39 = "context_info_address_lo";
          }
        }

        else
        {
          v39 = "sleep_control";
        }
      }

      else
      {
        v39 = "ipc_status";
      }
    }

    else
    {
      v39 = "ipc_control";
    }

    set_error_location(v5, v39, v33, a4);
    goto LABEL_63;
  }

  v21 = 0;
  v22 = v6[31];
  v23 = 184 * v20;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v24 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v22, v25, v26, v27);
    a2 = *v22;
    if (v24)
    {
      v28 = a2 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (v24 | a2)
      {
        goto LABEL_32;
      }
    }

    else if (CFStringCompare(v24, a2, 0))
    {
      goto LABEL_32;
    }

    v18 = __CFADD__(v21++, 1);
    v30 = v18;
    if (v30 << 63 >> 63 != v30)
    {
      v5 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      _os_crash();
      __break(1u);
      goto LABEL_75;
    }

LABEL_32:
    v22 += 23;
    v23 -= 184;
  }

  while (v23);
  if (!v21)
  {
    goto LABEL_35;
  }

LABEL_34:
  set_error(v5, "ambiguous name", 0, a4, a5);
  return 0;
}

uint64_t ashp::acipc::config::transfer_ring_spec::validate(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v4 = a3;
  v7 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
  if (v7 && CFStringCompare(v7, @"mtr", 0) == kCFCompareEqualTo)
  {
    v63 = "disallowed name";
    goto LABEL_36;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v12 = *(a2 + 280);
  if (!v12)
  {
LABEL_33:
    v63 = "ambiguous name";
LABEL_36:
    set_error(v4, v63, 0, v10, v11);
    return 0;
  }

  v13 = 0;
  v14 = *(a2 + 296);
  v15 = 368 * v12;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, v8, v9, v10);
    v16 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v14, v17, v18, v19);
    v8 = *v14;
    if (v16)
    {
      v20 = v8 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (v16 | v8)
      {
        goto LABEL_18;
      }
    }

    else if (CFStringCompare(v16, v8, 0))
    {
      goto LABEL_18;
    }

    v23 = __CFADD__(v13++, 1);
    if (v23 << 63 >> 63 != v23)
    {
      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", v11);
      _os_crash();
      __break(1u);
      goto LABEL_69;
    }

LABEL_18:
    v14 += 46;
    v15 -= 368;
  }

  while (v15);
  if (v13 != 1)
  {
    goto LABEL_33;
  }

LABEL_20:
  if (!*(a1 + 208))
  {
    v63 = "instance count is zero";
    goto LABEL_36;
  }

  ashp::acipc::config::transfer_ring_spec::dynamic_config::dynamic_config(v127, a1 + 104, v9, v10);
  ashp::acipc::config::transfer_ring_spec::multi_config::resolve(v132, a1 + 208, v127, (*(a1 + 208) - 1));
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v131, v24, v25, v26);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v130, v27, v28, v29);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v129, v30, v31, v32);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v128, v33, v34, v35);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v127, v36, v37, v38);
  if ((v139 & 1) == 0)
  {
    v66 = "instance resolution failure";
LABEL_39:
    set_error(v4, v66, 0, v41, v42);
    goto LABEL_53;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v132, v39, v40, v41);
  if (!resolve_named_target<ashp::acipc::config::resource_spec>(*(a2 + 104), *(a2 + 120), v132, v4, v43))
  {
    v71 = "resource";
    goto LABEL_43;
  }

  v45 = *(a1 + 8);
  if (!v45)
  {
LABEL_30:
    if (*(a1 + 32) < 2u)
    {
      v62 = "ring_size";
    }

    else
    {
      v61 = *(a1 + 36);
      if ((v61 & 3) != 0)
      {
        v62 = "transfer_header_size";
LABEL_51:
        v70 = "invalid alignment";
        goto LABEL_52;
      }

      if ((*(a1 + 40) & 3) != 0)
      {
        v62 = "transfer_footer_size";
        goto LABEL_51;
      }

      if ((*(a1 + 48) & 3) != 0)
      {
        v62 = "completion_footer_size";
        goto LABEL_51;
      }

      if (!a2)
      {
LABEL_63:
        v95 = ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v132, v61, v40, v41);
        if (v136 == 1 && *(a1 + 56) != 1)
        {
          v66 = "non-default completion group requires out-of-order";
          goto LABEL_39;
        }

        v97 = *(a1 + 57);
        if (v97 == 1 && *(a1 + 56) == 1)
        {
          v66 = "in-place completion requires in-order";
          goto LABEL_39;
        }

        if (((*(a1 + 144) + v97 + *(a1 + 168)) & 7) != 1)
        {
          set_error(v4, "invalid completion style", 0, v41, v42);
          goto LABEL_53;
        }

        if (*(a1 + 58) > 7u)
        {
          v62 = "traffic_class";
          v70 = "value out of bounds";
          goto LABEL_52;
        }

        if (*(a1 + 65))
        {
          v62 = "reliable";
LABEL_84:
          v70 = "unsupported value";
          goto LABEL_52;
        }

        if (*(a1 + 66))
        {
          v62 = "virtual";
          goto LABEL_84;
        }

        if (*(a1 + 67) == 1)
        {
          v62 = "synchronized";
          goto LABEL_84;
        }

        if (a2)
        {
          ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v95, v96, v40, v41);
          if (!resolve_named_target<ashp::acipc::config::doorbell_spec>(*(a2 + 56), *(a2 + 72), v137, 0, v4))
          {
            v71 = "doorbell";
            goto LABEL_43;
          }

          ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v132, v98, v40, v41);
          if (!resolve_named_target<ashp::acipc::config::interrupt_spec>(*(a2 + 32), *(a2 + 48), v138, 0, v4))
          {
            v71 = "interrupt";
            goto LABEL_43;
          }
        }

        if (*(a1 + 98) != 1 || (ashp::optional<unsigned short,void>::value(a1 + 96, v96, v40, v41), *(a1 + 97) - 1 < 4))
        {
          v118 = *(a1 + 32);
          v100 = *(a1 + 48);
          v120 = *(a1 + 40);
          v121 = v100;
          ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v122, a1 + 128, v40, v41);
          ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v123, a1 + 152, v101, v102);
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v116, *(a1 + 192), v103, v104);
          v117 = *(a1 + 200);
          v126 = 0;
          ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v124, v105, v106, v107);
          v108 = v116;
          v116 = 0;
          v124 = v108;
          v125 = v117;
          v126 = 1;
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v116, v109, v110, v111);
          is_satisfied_by = ashp::acipc::config::transfer_ring_spec::constraint_config::is_satisfied_by((a1 + 224), &v118, &v118);
          if ((is_satisfied_by & 1) == 0)
          {
            set_error(v4, "constraints not satisfied by default", 0, v114, v115);
          }

          ashp::acipc::config::transfer_ring_spec::constraint_config::overridable_config::~overridable_config(&v118, v112, v113, v114);
          goto LABEL_54;
        }

        set_error(v4, "value out of bounds", "width", v41, v99);
        v71 = "buffer_size_ring";
LABEL_43:
        set_error_location(v4, v71, v40, v41);
        goto LABEL_53;
      }

      ashp::acipc::compute_hdrftr_size_fields(&v118, v61, *(a2 + 144), v41);
      if (v119 == 1)
      {
        ashp::acipc::compute_hdrftr_size_fields(&v118, *(a1 + 40), *(a2 + 144), v41);
        if (v119)
        {
          v86 = ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v132, v84, v85, v41);
          if (v134[16] == 1)
          {
            ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v86, v87, v40, v41);
            ashp::optional<ashp::acipc::name_and_selector,void>::value(v134, v88, v89, v90);
            if (!resolve_named_target<ashp::acipc::config::completion_ring_spec>(*(a2 + 304), *(a2 + 320), v134, 0, v4))
            {
              v71 = "completion_ring";
              goto LABEL_43;
            }
          }

          v91 = ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v132, v87, v40, v41);
          if (v136 == 1)
          {
            ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v91, v61, v40, v41);
            ashp::optional<ashp::acipc::name_and_selector,void>::value(v135, v92, v93, v94);
            if (!resolve_named_target<ashp::acipc::config::completion_group_spec>(*(a2 + 328), *(a2 + 344), v135, 0, v4))
            {
              v71 = "completion_group";
              goto LABEL_43;
            }
          }

          goto LABEL_63;
        }

        v62 = "transfer_footer_size";
      }

      else
      {
LABEL_69:
        v62 = "transfer_header_size";
      }
    }

    v70 = "value out of bounds";
LABEL_52:
    set_error(v4, v70, v62, v41, v42);
    goto LABEL_53;
  }

  v46 = 8 * v45;
  v47 = *(a1 + 24);
  v48 = "exec_stage";
  v49 = "unknown ipc stage";
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v47, v44, v40, v41);
    v51 = ashp::acipc::config::exec_stage_spec::lookup(*(a2 + 80), *(a2 + 96), *v47, v50);
    v56 = v51;
    if (!v51)
    {
      set_error(v4, "unknown target", "exec_stage", v54, v55);
      goto LABEL_53;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v51 + 2, v52, v53, v54);
    v60 = ashp::acipc::config::main_ipc_stage_spec::lookup(*(a2 + 256), *(a2 + 272), v56[2], v57);
    if (!v60)
    {
      break;
    }

    ashp::optional<ashp::acipc::config::transfer_ring_spec::dynamic_config,void>::value(v132, v58, v59, v41);
    if (v133 >= *(v60 + 53))
    {
      v49 = "value exceeds ipc stage limit";
      v48 = "index_array_vector";
      break;
    }

    ++v47;
    v46 -= 8;
    if (!v46)
    {
      goto LABEL_30;
    }
  }

  set_error(v4, v49, v48, v41, v42);
LABEL_53:
  is_satisfied_by = 0;
LABEL_54:
  if (v139 == 1)
  {
    v139 = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v138, v67, v68, v69);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v137, v72, v73, v74);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v135, v75, v76, v77);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v134, v78, v79, v80);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v132, v81, v82, v83);
  }

  return is_satisfied_by;
}

void sub_23ECC202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v4 + 40, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v4 + 16, v7, v8, v9);
  if (*(v5 - 96) == 1)
  {
    *(v5 - 96) = 0;
    ashp::acipc::config::transfer_ring_spec::dynamic_config::~dynamic_config((v5 - 200), v10, v11, v12);
  }

  _Unwind_Resume(a1);
}

void ashp::acipc::config::transfer_ring_spec::multi_config::resolve(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a2 <= a4)
  {
    ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", 0x837, "resolve", a4);
    if (a1)
    {
      *(a1 + 104) = 0;
      return;
    }

    goto LABEL_28;
  }

  v5 = a4;
  ashp::acipc::config::transfer_ring_spec::dynamic_config::dynamic_config(&v83, a3, a3, a4);
  v11 = *(a2 + 4) * v5;
  v12 = *(a3 + 8);
  v84 = v12 + v11;
  if (__CFADD__(v12, v11))
  {
    v73 = 2105;
    goto LABEL_26;
  }

  v13 = *(a3 + 16);
  v14 = __CFADD__(v13, v5);
  v15 = v13 + v5;
  LOWORD(v85) = v15;
  if (v14 || v15 >= 0x10000)
  {
    v73 = 2106;
    goto LABEL_26;
  }

  v16 = *(a3 + 18);
  v14 = __CFADD__(v16, v5);
  v17 = v16 + v5;
  HIWORD(v85) = v17;
  if (v14 || v17 >= 0x10000)
  {
    v73 = 2107;
    goto LABEL_26;
  }

  if (*(a3 + 40) == 1)
  {
    v18 = *(a2 + 5);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a3 + 24, v8, v9, v10);
    v19 = *(a3 + 32);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(&v86, v20, v21, v22);
    v87 = v19 + v18 * v5;
    if (__CFADD__(v19, v18 * v5))
    {
      v73 = 2111;
      goto LABEL_26;
    }
  }

  if (*(a3 + 64) == 1)
  {
    v23 = *(a2 + 6);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a3 + 48, v8, v9, v10);
    v24 = *(a3 + 56);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(&v88, v25, v26, v27);
    v89 = v24 + v23 * v5;
    if (__CFADD__(v24, v23 * v5))
    {
      v73 = 2116;
LABEL_26:
      ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", v73, "resolve", v10);
      if (a1)
      {
        *(a1 + 104) = 0;
        goto LABEL_15;
      }

LABEL_28:
      __break(1u);
      return;
    }
  }

  v28 = *(a2 + 7) * v5;
  v29 = *(a3 + 80);
  v91 = v29 + v28;
  if (__CFADD__(v29, v28))
  {
    v73 = 2118;
    goto LABEL_26;
  }

  v30 = *(a2 + 8) * v5;
  v31 = *(a3 + 96);
  v93 = v31 + v30;
  if (__CFADD__(v31, v30))
  {
    v73 = 2119;
    goto LABEL_26;
  }

  v32 = v83;
  v83 = 0;
  v74 = v32;
  v75 = v84;
  v76 = v85;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v77, &v86, v9, v10);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v78, &v88, v33, v34);
  v79 = v90;
  v80 = v91;
  v37 = v92;
  v90 = 0;
  v92 = 0;
  v81 = v37;
  v82 = v93;
  if (!a1)
  {
    goto LABEL_28;
  }

  *(a1 + 104) = 0;
  v38 = v74;
  v74 = 0;
  *a1 = v38;
  v39 = v76;
  *(a1 + 8) = v75;
  *(a1 + 16) = v39;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 24, v77, v35, v36);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 48, v78, v40, v41);
  *(a1 + 72) = v79;
  *(a1 + 80) = v80;
  v42 = v81;
  v79 = 0;
  v81 = 0;
  *(a1 + 88) = v42;
  *(a1 + 96) = v82;
  *(a1 + 104) = 1;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v81, v43, v44, v45);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v79, v46, v47, v48);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v78, v49, v50, v51);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v77, v52, v53, v54);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v74, v55, v56, v57);
LABEL_15:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v92, v58, v59, v60);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v90, v61, v62, v63);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v88, v64, v65, v66);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v86, v67, v68, v69);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v83, v70, v71, v72);
}

void sub_23ECC241C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  ashp::acipc::config::transfer_ring_spec::dynamic_config::~dynamic_config(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

const __CFString **resolve_named_target<ashp::acipc::config::completion_ring_spec>(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, const char *a5)
{
  if (!a1)
  {
LABEL_12:
    set_error(a5, "unknown target", 0, a4, a5);
    return 0;
  }

  v8 = a2;
  v9 = 272 * a1;
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, a2, a3, a4);
    v10 = *a3;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v11, v12, v13);
    a2 = *v8;
    if (v10 && a2 != 0)
    {
      break;
    }

    if (!(v10 | a2))
    {
      goto LABEL_13;
    }

LABEL_11:
    v8 += 34;
    v9 -= 272;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (CFStringCompare(v10, a2, 0))
  {
    goto LABEL_11;
  }

LABEL_13:
  ashp::acipc::config::completion_ring_spec::dynamic_config::dynamic_config(v79, (v8 + 10), a3, a4);
  ashp::acipc::config::completion_ring_spec::multi_config::resolve(v83, (v8 + 21), v79, *(a3 + 8));
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v82, v16, v17, v18);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v81, v19, v20, v21);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v80, v22, v23, v24);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v79, v25, v26, v27);
  if (v83[88])
  {
    ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v83, v28, v29, v30);
    ashp::acipc::config::completion_ring_spec::dynamic_config::dynamic_config(&v72, v83, v32, v33);
    if (a4)
    {
      v37 = v72;
      v72 = 0;
      v38 = *a4;
      *a4 = v37;
      v84[0] = v38;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v84, v34, v35, v36);
      v39 = v74;
      *(a4 + 2) = v73;
      *(a4 + 4) = v39;
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v84, v75, v40, v41);
      ashp::swap(a4 + 3, v84, v42, v43);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v84, v44, v45, v46);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v84, v76, v47, v48);
      ashp::swap(a4 + 6, v84, v49, v50);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v84, v51, v52, v53);
      v54 = v77;
      v77 = 0;
      v55 = *(a4 + 9);
      *(a4 + 9) = v54;
      v84[0] = v55;
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v84, v56, v57, v58);
      *(a4 + 20) = v78;
    }

    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v77, v34, v35, v36);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v76, v59, v60, v61);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v75, v62, v63, v64);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v72, v65, v66, v67);
  }

  else
  {
    set_error(a5, "instance resolution failure", 0, v30, v31);
    v8 = 0;
  }

  ashp::unsafe_storage<ashp::acipc::config::completion_ring_spec::dynamic_config>::storage::reset(v83, v68, v69, v70);
  return v8;
}

void sub_23ECC2660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ashp::acipc::config::completion_ring_spec::dynamic_config::~dynamic_config(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t resolve_named_target<ashp::acipc::config::completion_group_spec>(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, const char *a5)
{
  if (!a1)
  {
LABEL_12:
    v16 = "unknown target";
LABEL_13:
    set_error(a5, v16, 0, a4, a5);
    return 0;
  }

  v8 = a2;
  v9 = 40 * a1;
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, a2, a3, a4);
    v10 = *a3;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v8, v11, v12, v13);
    a2 = *v8;
    if (v10 && a2 != 0)
    {
      break;
    }

    if (!(v10 | a2))
    {
      goto LABEL_15;
    }

LABEL_11:
    v8 += 40;
    v9 -= 40;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (CFStringCompare(v10, a2, 0))
  {
    goto LABEL_11;
  }

LABEL_15:
  ashp::acipc::config::completion_group_spec::multi_config::resolve(&v18, *(v8 + 36), *(v8 + 32), *(a3 + 8));
  if ((v19 & 1) == 0)
  {
    v16 = "instance resolution failure";
    goto LABEL_13;
  }

  if (a4)
  {
    *a4 = v18;
  }

  return v8;
}

uint64_t ashp::acipc::config::transfer_ring_spec::constraint_config::is_satisfied_by(ashp::acipc::config::transfer_ring_spec::constraint_config *this, const ashp::acipc::config::transfer_ring_spec::constraint_config::overridable_config *a2, const ashp::acipc::config::transfer_ring_spec::constraint_config::overridable_config *a3)
{
  if (*this)
  {
    v6 = *(this + 2);
    v7 = &v6[2 * *this];
    v8 = *a2;
    while (*v6 > v8 || v6[1] < v8)
    {
      v6 += 2;
      if (v6 == v7)
      {
        return 0;
      }
    }
  }

  else if (*a2 != *a3)
  {
    return 0;
  }

  v10 = *(this + 3);
  if (v10)
  {
    v11 = *(this + 5);
    v12 = &v11[2 * v10];
    v13 = *(a2 + 1);
    while (*v11 > v13 || v11[1] < v13)
    {
      v11 += 2;
      if (v11 == v12)
      {
        return 0;
      }
    }
  }

  else if (*(a2 + 1) != *(a3 + 1))
  {
    return 0;
  }

  v15 = *(this + 6);
  if (!v15)
  {
    if (*(a2 + 2) == *(a3 + 2))
    {
      goto LABEL_28;
    }

    return 0;
  }

  v16 = *(this + 8);
  v17 = &v16[2 * v15];
  v18 = *(a2 + 2);
  while (*v16 > v18 || v16[1] < v18)
  {
    v16 += 2;
    if (v16 == v17)
    {
      return 0;
    }
  }

LABEL_28:
  if (!is_constraint_set_satisfied<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>,default_constraint_satisfaction<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>>>(*(this + 9), *(this + 11), a2 + 16, a3 + 16) || !is_constraint_set_satisfied<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>,default_constraint_satisfaction<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>>>(*(this + 12), *(this + 14), a2 + 40, a3 + 40))
  {
    return 0;
  }

  v20 = *(this + 15);
  v21 = *(this + 17);

  return is_constraint_set_satisfied<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>,default_constraint_satisfaction<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>>>(v20, v21, a2 + 64, a3 + 64);
}

uint64_t is_constraint_set_satisfied<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>,default_constraint_satisfaction<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>>>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a1)
  {
    v5 = a2;
    for (i = 24 * a1 - 24; ; i -= 24)
    {
      if ((*(v5 + 16) & 1) == 0)
      {
        result = *(a3 + 16) ^ 1u;
        if ((*(a3 + 16) ^ 1))
        {
          return result;
        }

        goto LABEL_14;
      }

      if (!*(a3 + 16))
      {
        break;
      }

      ashp::optional<ashp::acipc::name_and_selector,void>::value(a3, a2, a3, a4);
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v5, v7, v8, v9);
      v10 = *v5;
      ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a3, v11, v12, v13);
      a2 = *a3;
      if (v10 && a2)
      {
        if (CFStringCompare(v10, a2, 0))
        {
          break;
        }
      }

      else if (v10 | a2)
      {
        break;
      }

      v15 = *(a3 + 8);
      if (*(v5 + 8) > v15)
      {
        break;
      }

      result = *(v5 + 12) >= v15;
      if (*(v5 + 12) >= v15)
      {
        return result;
      }

LABEL_14:
      v5 += 24;
      if (!i)
      {
        return result;
      }
    }

    result = 0;
    goto LABEL_14;
  }

  return ashp::operator==<int,0>(a3, a4, a3, a4);
}

void ashp::acipc::config::completion_group_spec::multi_config::resolve(uint64_t result, unsigned int a2, unsigned __int16 a3, const char *a4)
{
  if (a2 <= a4)
  {
    v6 = 2504;
  }

  else
  {
    v5 = a4 + a3;
    if (!__CFADD__(a4, a3) && v5 < 0x10000)
    {
      if (result)
      {
        *result = v5;
        *(result + 2) = 1;
        return;
      }

      goto LABEL_10;
    }

    v6 = 2506;
  }

  ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", v6, "resolve", a4);
  if (result)
  {
    *(result + 2) = 0;
    return;
  }

LABEL_10:
  __break(1u);
}

void ashp::acipc::config::completion_ring_spec::multi_config::resolve(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a2 <= a4)
  {
    ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", 0x93C, "resolve", a4);
    if (a1)
    {
      *(a1 + 88) = 0;
      return;
    }

    goto LABEL_26;
  }

  v5 = a4;
  ashp::acipc::config::completion_ring_spec::dynamic_config::dynamic_config(&v76, a3, a3, a4);
  v11 = *(a2 + 4) * v5;
  v12 = *(a3 + 8);
  v77 = v12 + v11;
  if (__CFADD__(v12, v11))
  {
    v68 = 2366;
    goto LABEL_24;
  }

  v13 = *(a3 + 16);
  v14 = __CFADD__(v13, v5);
  v15 = v13 + v5;
  LOWORD(v78) = v15;
  if (v14 || v15 >= 0x10000)
  {
    v68 = 2367;
    goto LABEL_24;
  }

  v16 = *(a3 + 18);
  v14 = __CFADD__(v16, v5);
  v17 = v16 + v5;
  HIWORD(v78) = v17;
  if (v14 || v17 >= 0x10000)
  {
    v68 = 2368;
    goto LABEL_24;
  }

  if (*(a3 + 40) == 1)
  {
    v18 = *(a2 + 5);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a3 + 24, v8, v9, v10);
    v19 = *(a3 + 32);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(&v79, v20, v21, v22);
    v80 = v19 + v18 * v5;
    if (__CFADD__(v19, v18 * v5))
    {
      v68 = 2371;
      goto LABEL_24;
    }
  }

  if (*(a3 + 64) == 1)
  {
    v23 = *(a2 + 6);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(a3 + 48, v8, v9, v10);
    v24 = *(a3 + 56);
    ashp::optional<ashp::acipc::name_and_selector,void>::value(&v81, v25, v26, v27);
    v82 = v24 + v23 * v5;
    if (__CFADD__(v24, v23 * v5))
    {
      v68 = 2375;
LABEL_24:
      ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", v68, "resolve", v10);
      if (a1)
      {
        *(a1 + 88) = 0;
        goto LABEL_14;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v28 = *(a2 + 7) * v5;
  v29 = *(a3 + 80);
  v84 = v29 + v28;
  if (__CFADD__(v29, v28))
  {
    v68 = 2377;
    goto LABEL_24;
  }

  v30 = v76;
  v76 = 0;
  v69 = v30;
  v70 = v77;
  v71 = v78;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v72, &v79, v9, v10);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v73, &v81, v31, v32);
  v36 = v83;
  v83 = 0;
  v74 = v36;
  v75 = v84;
  if (!a1)
  {
    goto LABEL_26;
  }

  *(a1 + 88) = 0;
  ashp::unsafe_storage<ashp::acipc::config::completion_ring_spec::dynamic_config>::storage::reset(a1, v33, v34, v35);
  v37 = v69;
  v69 = 0;
  *a1 = v37;
  v38 = v71;
  *(a1 + 8) = v70;
  *(a1 + 16) = v38;
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 24, v72, v39, v40);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 48, v73, v41, v42);
  v43 = v74;
  v74 = 0;
  *(a1 + 72) = v43;
  *(a1 + 80) = v75;
  *(a1 + 88) = 1;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v74, v44, v45, v46);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v73, v47, v48, v49);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v72, v50, v51, v52);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v69, v53, v54, v55);
LABEL_14:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v83, v56, v57, v58);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v81, v59, v60, v61);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v79, v62, v63, v64);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v76, v65, v66, v67);
}

void sub_23ECC2D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ashp::acipc::config::completion_ring_spec::dynamic_config::~dynamic_config(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::unsafe_storage<ashp::acipc::config::completion_ring_spec::dynamic_config>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((a1 + 72), a2, a3, a4);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1 + 48, v5, v6, v7);
    ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(a1 + 24, v8, v9, v10);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(a1, v11, v12, v13);
  }
}

uint64_t ashp::acipc::config::completion_ring_spec::validate(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v4 = a3;
  v7 = *ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
  if (v7 && CFStringCompare(v7, @"mcr", 0) == kCFCompareEqualTo)
  {
    v61 = "disallowed name";
    goto LABEL_36;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v12 = *(a2 + 304);
  if (!v12)
  {
LABEL_33:
    v61 = "ambiguous name";
LABEL_36:
    set_error(v4, v61, 0, v10, v11);
    return 0;
  }

  v13 = 0;
  v14 = *(a2 + 320);
  v15 = 272 * v12;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, v8, v9, v10);
    v16 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v14, v17, v18, v19);
    v8 = *v14;
    if (v16)
    {
      v20 = v8 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (v16 | v8)
      {
        goto LABEL_18;
      }
    }

    else if (CFStringCompare(v16, v8, 0))
    {
      goto LABEL_18;
    }

    v23 = __CFADD__(v13++, 1);
    if (v23 << 63 >> 63 != v23)
    {
      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", v11);
      _os_crash();
      __break(1u);
      goto LABEL_67;
    }

LABEL_18:
    v14 += 34;
    v15 -= 272;
  }

  while (v15);
  if (v13 != 1)
  {
    goto LABEL_33;
  }

LABEL_20:
  if (!*(a1 + 168))
  {
    v61 = "instance count is zero";
    goto LABEL_36;
  }

  ashp::acipc::config::completion_ring_spec::dynamic_config::dynamic_config(v105, a1 + 80, v9, v10);
  ashp::acipc::config::completion_ring_spec::multi_config::resolve(v109, a1 + 168, v105, (*(a1 + 168) - 1));
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v108, v24, v25, v26);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v107, v27, v28, v29);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v106, v30, v31, v32);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v105, v33, v34, v35);
  if ((v113[16] & 1) == 0)
  {
    set_error(v4, "instance resolution failure", 0, v38, v39);
    goto LABEL_46;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v109, v36, v37, v38);
  if (!resolve_named_target<ashp::acipc::config::resource_spec>(*(a2 + 104), *(a2 + 120), v109, v4, v40))
  {
    v67 = "resource";
    goto LABEL_41;
  }

  v42 = *(a1 + 8);
  if (!v42)
  {
LABEL_30:
    v58 = *(a1 + 32);
    if (v58 < 2)
    {
      v60 = "ring_size";
    }

    else
    {
      v59 = *(a1 + 36);
      if ((v59 & 3) != 0)
      {
        v60 = "header_size";
LABEL_44:
        v66 = "invalid alignment";
        goto LABEL_45;
      }

      v68 = *(a1 + 40);
      if ((v68 & 3) != 0)
      {
        v60 = "footer_size";
        goto LABEL_44;
      }

      if (!a2)
      {
        if (*(a1 + 44) < 8u)
        {
          goto LABEL_63;
        }

LABEL_68:
        v60 = "traffic_class";
        goto LABEL_39;
      }

      ashp::acipc::compute_hdrftr_size_fields(&v98, v59, *(a2 + 144), v38);
      if (v99 == 1)
      {
        ashp::acipc::compute_hdrftr_size_fields(&v98, *(a1 + 40), *(a2 + 144), v38);
        if (v99 != 1)
        {
          v60 = "footer_size";
          goto LABEL_39;
        }

        ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v109, v70, v71, v38);
        if (v111[16] == 1)
        {
          ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v109, v72, v37, v38);
          ashp::optional<ashp::acipc::name_and_selector,void>::value(v111, v73, v74, v75);
          if (!resolve_named_target<ashp::acipc::config::completion_group_spec>(*(a2 + 328), *(a2 + 344), v111, 0, v4))
          {
            v67 = "group";
            goto LABEL_41;
          }
        }

        if (*(a1 + 44) < 8u)
        {
          ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v109, v72, v37, v38);
          if (v112[16] == 1 && (ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v109, v76, v37, v38), ashp::optional<ashp::acipc::name_and_selector,void>::value(v112, v77, v78, v79), !resolve_named_target<ashp::acipc::config::doorbell_spec>(*(a2 + 56), *(a2 + 72), v112, 0, v4)))
          {
            v67 = "doorbell";
          }

          else
          {
            ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v109, v76, v37, v38);
            if (resolve_named_target<ashp::acipc::config::interrupt_spec>(*(a2 + 32), *(a2 + 48), v113, 0, v4))
            {
              LOWORD(v58) = *(a1 + 32);
              v68 = *(a1 + 40);
LABEL_63:
              v98 = v58;
              v100 = v68;
              ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v101, a1 + 104, v37, v38);
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v96, *(a1 + 152), v80, v81);
              v97 = *(a1 + 160);
              v104 = 0;
              ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v102, v82, v83, v84);
              v85 = v96;
              v96 = 0;
              v102 = v85;
              v103 = v97;
              v104 = 1;
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v96, v86, v87, v88);
              is_satisfied_by = ashp::acipc::config::completion_ring_spec::constraint_config::is_satisfied_by((a1 + 176), &v98, &v98);
              if ((is_satisfied_by & 1) == 0)
              {
                set_error(v4, "constraints not satisfied by default", 0, v91, v92);
              }

              ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v102, v89, v90, v91);
              ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v101, v93, v94, v95);
              goto LABEL_47;
            }

            v67 = "interrupt";
          }

LABEL_41:
          set_error_location(v4, v67, v37, v38);
          goto LABEL_46;
        }

        goto LABEL_68;
      }

LABEL_67:
      v60 = "header_size";
    }

LABEL_39:
    v66 = "value out of bounds";
LABEL_45:
    set_error(v4, v66, v60, v38, v39);
    goto LABEL_46;
  }

  v43 = 8 * v42;
  v44 = *(a1 + 24);
  v45 = "exec_stage";
  v46 = "unknown ipc stage";
  while (1)
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v44, v41, v37, v38);
    v48 = ashp::acipc::config::exec_stage_spec::lookup(*(a2 + 80), *(a2 + 96), *v44, v47);
    v53 = v48;
    if (!v48)
    {
      set_error(v4, "unknown target", "exec_stage", v51, v52);
      goto LABEL_46;
    }

    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v48 + 2, v49, v50, v51);
    v57 = ashp::acipc::config::main_ipc_stage_spec::lookup(*(a2 + 256), *(a2 + 272), v53[2], v54);
    if (!v57)
    {
      break;
    }

    ashp::optional<ashp::acipc::config::completion_ring_spec::dynamic_config,void>::value(v109, v55, v56, v38);
    if (v110 >= *(v57 + 54))
    {
      v46 = "value exceeds ipc stage limit";
      v45 = "index_array_vector";
      break;
    }

    ++v44;
    v43 -= 8;
    if (!v43)
    {
      goto LABEL_30;
    }
  }

  set_error(v4, v46, v45, v38, v39);
LABEL_46:
  is_satisfied_by = 0;
LABEL_47:
  ashp::unsafe_storage<ashp::acipc::config::completion_ring_spec::dynamic_config>::storage::reset(v109, v63, v64, v65);
  return is_satisfied_by;
}

void sub_23ECC32FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v29 + 8, a2, a3, a4);
  ashp::unsafe_storage<ashp::acipc::config::completion_ring_spec::dynamic_config>::storage::reset(va, v31, v32, v33);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::config::completion_ring_spec::constraint_config::is_satisfied_by(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (*a1)
  {
    v6 = a1[2];
    v7 = &v6[2 * *a1];
    v8 = *a2;
    while (*v6 > v8 || v6[1] < v8)
    {
      v6 += 2;
      if (v6 == v7)
      {
        return 0;
      }
    }
  }

  else if (*a2 != *a3)
  {
    return 0;
  }

  v10 = a1[3];
  if (!v10)
  {
    if (*(a2 + 1) == *(a3 + 1))
    {
      goto LABEL_19;
    }

    return 0;
  }

  v11 = a1[5];
  v12 = &v11[2 * v10];
  v13 = *(a2 + 1);
  while (*v11 > v13 || v11[1] < v13)
  {
    v11 += 2;
    if (v11 == v12)
    {
      return 0;
    }
  }

LABEL_19:
  if (!is_constraint_set_satisfied<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>,default_constraint_satisfaction<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>>>(a1[6], a1[8], (a2 + 4), a3 + 8))
  {
    return 0;
  }

  v15 = a1[9];
  v16 = a1[11];

  return is_constraint_set_satisfied<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>,default_constraint_satisfaction<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>,ashp::optional<ashp::acipc::config::named_target_spec,void>>>(v15, v16, (a2 + 16), a3 + 32);
}

uint64_t ashp::acipc::config::completion_group_spec::validate(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  v7 = *(a2 + 328);
  if (!v7)
  {
LABEL_21:
    v21 = "ambiguous name";
    goto LABEL_24;
  }

  v8 = 0;
  v9 = *(a2 + 344);
  v10 = 40 * v7;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v11 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v9, v12, v13, v14);
    a2 = *v9;
    if (v11)
    {
      v15 = a2 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v11 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v11, a2, 0))
    {
      goto LABEL_16;
    }

    v18 = __CFADD__(v8++, 1);
    if (v18 << 63 >> 63 != v18)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

LABEL_16:
    v9 += 5;
    v10 -= 40;
  }

  while (v10);
  if (v8 != 1)
  {
    goto LABEL_21;
  }

LABEL_18:
  v19 = *(a1 + 36);
  if (v19)
  {
    ashp::acipc::config::completion_group_spec::multi_config::resolve(v22, v19, *(a1 + 32), (v19 - 1));
    if (v22[2])
    {
      return 1;
    }

    v21 = "instance resolution failure";
  }

  else
  {
    v21 = "instance count is zero";
  }

LABEL_24:
  set_error(a3, v21, 0, a4, a5);
  return 0;
}

uint64_t ashp::acipc::config::memory_region_spec::validate(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{
  v6 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

  v8 = *(a2 + 352);
  if (!v8)
  {
LABEL_23:
    v29 = "ambiguous name";
LABEL_25:
    set_error(a3, v29, 0, a4, a5);
    return 0;
  }

  v9 = 0;
  v10 = *(a2 + 368);
  v11 = 72 * v8;
  do
  {
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(a1, a2, a3, a4);
    v12 = *a1;
    ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v10, v13, v14, v15);
    a2 = *v10;
    if (v12)
    {
      v16 = a2 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (v12 | a2)
      {
        goto LABEL_16;
      }
    }

    else if (CFStringCompare(v12, a2, 0))
    {
      goto LABEL_16;
    }

    v19 = __CFADD__(v9++, 1);
    if (v19 << 63 >> 63 != v19)
    {
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x1E6, "count_where", a5);
      result = _os_crash();
      __break(1u);
      return result;
    }

LABEL_16:
    v10 += 72;
    v11 -= 72;
  }

  while (v11);
  if (v9 != 1)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (!*(a1 + 64))
  {
    v29 = "instance count is zero";
    goto LABEL_25;
  }

  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v31, *(a1 + 40), a3, a4);
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  ashp::acipc::config::memory_region_spec::multi_config::resolve(v34, a1 + 64, &v31, (*(a1 + 64) - 1));
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v31, v20, v21, v22);
  if (v34[24])
  {
    if (!v6 || (ashp::optional<ashp::acipc::ring_manager::index_array_set,void>::value(v34, v23, v24, v25), resolve_named_target<ashp::acipc::config::resource_spec>(v6[3].info, v6[3].length, v34, a3, v27)))
    {
      v28 = 1;
      goto LABEL_28;
    }

    set_error_location(a3, "resource", v24, v25);
  }

  else
  {
    set_error(a3, "instance resolution failure", 0, v25, v26);
  }

  v28 = 0;
LABEL_28:
  ashp::unsafe_storage<ashp::acipc::config::memory_region_spec::dynamic_config>::storage::reset(v34, v23, v24, v25);
  return v28;
}

void sub_23ECC378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(va, a2, a3, a4);
  _Unwind_Resume(a1);
}

void ashp::acipc::config::memory_region_spec::multi_config::resolve(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a2 <= a4)
  {
    ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", 0xA28, "resolve", a4);
    if (a1)
    {
      *(a1 + 24) = 0;
      return;
    }

    goto LABEL_15;
  }

  v5 = a4;
  ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v28, *a3, a3, a4);
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v30 = *(a3 + 16);
  v13 = *(a2 + 4) * v5;
  v14 = v11 + v13;
  v29 = v11 + v13;
  if (__CFADD__(v11, v13))
  {
    v24 = 2602;
    goto LABEL_13;
  }

  v15 = __CFADD__(v12, v5);
  v16 = v12 + v5;
  v30 = v16;
  if (v15 || v16 >= 0x10000)
  {
    v24 = 2603;
LABEL_13:
    ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", v24, "resolve", v10);
    if (a1)
    {
      *(a1 + 24) = 0;
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v17 = v28;
  v28 = 0;
  v26 = v11 + v13;
  v27 = v16;
  if (!a1)
  {
    goto LABEL_15;
  }

  *(a1 + 24) = 0;
  ashp::unsafe_storage<ashp::acipc::config::memory_region_spec::dynamic_config>::storage::reset(a1, v8, v9, v10);
  v25 = 0;
  *a1 = v17;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16;
  *(a1 + 24) = 1;
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v25, v18, v19, v20);
LABEL_7:
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v28, v21, v22, v23);
}

void ashp::unsafe_storage<ashp::acipc::config::memory_region_spec::dynamic_config>::storage::reset(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(a1, a2, a3, a4);
  }
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::doorbell_spec>>(unint64_t *a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"doorbells", a3, a4);
  if (!value)
  {
    v26 = *a2;
    if (*a2 <= a1[1])
    {
      if (v26 >= *a1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v36)
        {
          goto LABEL_37;
        }

        if (v36)
        {
          v37 = 88;
          v38 = v36;
          do
          {
            v39 = a2[2];
            v40 = a1[2];
            v41 = v40 + v37;
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v65, *(v39 + v37 - 88), v10, v11);
            v42 = *(v40 + v37 - 88);
            *(v41 - 88) = v65;
            v65 = v42;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v65, v43, v44, v45);
            *(v41 - 80) = *(v39 + v37 - 80);
            v49 = *(v39 + v37 - 76);
            if (*(v40 + v37 - 72) == 1)
            {
              if (*(v39 + v37 - 72))
              {
                *(v41 - 76) = v49;
              }

              else
              {
                *(v41 - 72) = 0;
              }
            }

            else if (*(v39 + v37 - 72))
            {
              *(v41 - 76) = v49;
              *(v41 - 72) = 1;
            }

            v50 = v40 + v37;
            *(v50 - 68) = *(v39 + v37 - 68);
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::operator=((v50 - 64), (v39 + v37 - 64), v46, v47, v48);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v61, v39 + v37 - 40, v51, v52);
            ashp::swap((v50 - 40), &v61, v53, v54);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v61, v55, v56, v57);
            v58 = *(v39 + v37 - 16);
            *(v50 - 11) = *(v39 + v37 - 11);
            *(v50 - 16) = v58;
            LODWORD(v58) = *(v39 + v37);
            *(v50 + 4) = *(v39 + v37 + 4);
            *v50 = v58;
            v37 += 96;
            --v38;
          }

          while (v38);
        }
      }

      else if (v36)
      {
        goto LABEL_37;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::reduce_size(a1, v36, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::append(a1, a2[2] + 96 * v36, *a2 - v36, v59, v60);
    }

    else
    {
      *&v61 = 0;
      ashp::detail::dynamic_array::buffer<ashp::acipc::config::doorbell_spec>::buffer(&v61 + 1, v26, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::append(&v61, a2[2], *a2, v27, v28);
      v29 = *a1;
      *a1 = v61;
      v61 = v29;
      v30 = a1[2];
      a1[2] = v62;
      v62 = v30;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::~storage(&v61, v31, v32, v33, v34);
    }

    ++*a5;
    return 1;
  }

  v64 = a4;
  v65 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v63 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v61 = &v63;
      *(&v61 + 1) = &v64;
      v62 = &v65;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::doorbell_spec::parse(ashp::acipc::config::doorbell_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_spec>(ashp::dynamic_array<ashp::acipc::config::doorbell_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v61);
      if (v63 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"doorbells", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_37:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC3C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::exec_stage_spec>>(unint64_t *a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"exec_stages", a3, a4);
  if (!value)
  {
    v26 = *a2;
    if (*a2 <= a1[1])
    {
      if (v26 >= *a1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v36)
        {
          goto LABEL_31;
        }

        if (v36)
        {
          v37 = 0;
          v38 = v36;
          do
          {
            v39 = a2[2];
            v40 = a1[2];
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v54, *(v39 + v37), v10, v11);
            v41 = *(v40 + v37);
            *(v40 + v37) = v54;
            *&v54 = v41;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v54, v42, v43, v44);
            v45 = v40 + v37;
            *(v45 + 8) = *(v39 + v37 + 8);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v58, *(v39 + v37 + 16), v46, v47);
            v48 = *(v45 + 16);
            *(v45 + 16) = v58;
            v58 = v48;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v58, v49, v50, v51);
            v37 += 24;
            --v38;
          }

          while (v38);
        }
      }

      else if (v36)
      {
        goto LABEL_31;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::reduce_size(a1, v36, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::append(a1, a2[2] + 24 * v36, *a2 - v36, v52, v53);
    }

    else
    {
      *&v54 = 0;
      ashp::detail::dynamic_array::buffer<ashp::acipc::config::exec_stage_spec>::buffer(&v54 + 1, v26, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::append(&v54, a2[2], *a2, v27, v28);
      v29 = *a1;
      *a1 = v54;
      v54 = v29;
      v30 = a1[2];
      a1[2] = v55;
      v55 = v30;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::~storage(&v54, v31, v32, v33, v34);
    }

    ++*a5;
    return 1;
  }

  v57 = a4;
  v58 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v56 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v54 = &v56;
      *(&v54 + 1) = &v57;
      v55 = &v58;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::exec_stage_spec::parse(ashp::acipc::config::exec_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::exec_stage_spec>(ashp::dynamic_array<ashp::acipc::config::exec_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v54);
      if (v56 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"exec_stages", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_31:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC3F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::resource_spec>>(unint64_t *a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"resources", a3, a4);
  if (!value)
  {
    v26 = *a2;
    if (*a2 <= a1[1])
    {
      if (v26 >= *a1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v36)
        {
          goto LABEL_31;
        }

        if (v36)
        {
          v37 = 0;
          v38 = v36;
          do
          {
            v39 = a2[2];
            v40 = a1[2];
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v47, *(v39 + v37), v10, v11);
            v41 = *(v40 + v37);
            *(v40 + v37) = v47;
            *&v47 = v41;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v47, v42, v43, v44);
            *(v40 + v37 + 8) = *(v39 + v37 + 8);
            v37 += 16;
            --v38;
          }

          while (v38);
        }
      }

      else if (v36)
      {
        goto LABEL_31;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::reduce_size(a1, v36, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::append(a1, a2[2] + 16 * v36, *a2 - v36, v45, v46);
    }

    else
    {
      *&v47 = 0;
      ashp::detail::dynamic_array::buffer<ashp::acipc::config::resource_spec>::buffer(&v47 + 1, v26, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::append(&v47, a2[2], *a2, v27, v28);
      v29 = *a1;
      *a1 = v47;
      v47 = v29;
      v30 = a1[2];
      a1[2] = v48;
      v48 = v30;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::~storage(&v47, v31, v32, v33, v34);
    }

    ++*a5;
    return 1;
  }

  v50 = a4;
  v51 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v49 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v47 = &v49;
      *(&v47 + 1) = &v50;
      v48 = &v51;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::resource_spec::parse(ashp::acipc::config::resource_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::resource_spec>(ashp::dynamic_array<ashp::acipc::config::resource_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v47);
      if (v49 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"resources", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_31:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC427C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field<&(ashp::acipc::config::limit_spec::parse(ashp::acipc::config::limit_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::limit_spec>(_DWORD *a1, const __CFDictionary *a2, unint64_t *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, @"limits", a3, a4);
  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x518, "parse", v8);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = value;
  if (value)
  {
    v10 = CFGetTypeID(value);
    if (v10 != CFDictionaryGetTypeID())
    {
      v9 = 0;
    }

    if (v9)
    {
      v17 = 0;
      if (!parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1, 0, v9, @"nominal_state_dump_size", a3, &v17) || !parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(a1 + 1, 0, v9, @"doorbell_timer_tolerance_us", a3, &v17))
      {
        goto LABEL_13;
      }

      v14 = ashp::boxed::dictionary::count(v9, v13, v11, v12);
      if (v17 + v14 == 2)
      {
        return 1;
      }

      v16 = "unknown keys present";
    }

    else
    {
      v16 = "unexpected object type";
    }
  }

  else
  {
    v16 = "missing object";
  }

  set_error(a3, v16, 0, v7, v8);
LABEL_13:
  set_error_location(a3, @"limits", v11, v12);
  return 0;
}

uint64_t parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::errata_spec::parse(ashp::acipc::config::errata_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::errata_spec>(ashp::optional<ashp::acipc::config::errata_spec,ashp::optional_traits<ashp::acipc::config::errata_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::errata_spec,void>>(uint64_t a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"errata", a3, a4);
  if (!value)
  {
    if (*(a2 + 16) == 1)
    {
      if (*(a1 + 16))
      {
        v28 = *a2;
        *(a1 + 8) = *(a2 + 4);
        *a1 = v28;
      }

      else
      {
        *a1 = *a2;
        *(a1 + 16) = 1;
      }
    }

    else if (*(a1 + 16))
    {
      *(a1 + 16) = 0;
    }

    ++*a5;
    return 1;
  }

  if (!a1 || *(a1 + 16) == 1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xD8, "parse_optional", v10);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v11 = value;
  v12 = CFGetTypeID(value);
  if (v12 == CFBooleanGetTypeID() && !ashp::boxed::BOOLean::value(v11, v13, v14, v15))
  {
    return 1;
  }

  LOWORD(v41) = 0;
  v16 = CFGetTypeID(v11);
  if (v16 != CFDictionaryGetTypeID())
  {
    v11 = 0;
  }

  if (v11)
  {
    v42 = 0;
    v20 = ashp::boxed::dictionary::get_value(v11, @"window_base_mask", v17, v18);
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFNumberGetTypeID())
      {
        v45 = v21;
        ashp::boxed::number::uint64_value(&v43, &v45, v23, v24);
        if (v44 == 1)
        {
          ashp::optional<unsigned long long,void>::value(&v43, v26, v27, v24);
          v40 = v43;
          goto LABEL_21;
        }

        v37 = "value out of bounds";
      }

      else
      {
        v37 = "unexpected object type";
      }

      set_error(a4, v37, 0, v24, v25);
      set_error_location(a4, @"window_base_mask", v38, v39);
      goto LABEL_32;
    }

    v40 = -1;
    v42 = 1;
LABEL_21:
    if (!parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v41, 0, v11, @"ring_header_footer_scaling", a4, &v42) || !parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v41 + 1, 0, v11, @"ignore_zeroed_cd", a4, &v42))
    {
      goto LABEL_32;
    }

    v33 = ashp::boxed::dictionary::count(v11, v32, v30, v31);
    if (v42 + v33 == 3)
    {
      v34 = v41;
      v35 = *(a1 + 16);
      *a1 = v40;
      if (v35 == 1)
      {
        *(a1 + 8) = v34;
      }

      else
      {
        *(a1 + 8) = v34;
        *(a1 + 16) = 1;
      }

      return 1;
    }

    v29 = "unknown keys present";
    goto LABEL_19;
  }

  v29 = "unexpected object type";
LABEL_19:
  set_error(a4, v29, 0, v18, v19);
LABEL_32:
  set_error_location(a4, @"errata", v30, v31);
  return 0;
}

uint64_t parse_field<&(ashp::acipc::config::device_info_spec::parse(ashp::acipc::config::device_info_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_info_spec>(uint64_t a1, const __CFDictionary *a2, char *a3, const char *a4)
{
  value = ashp::boxed::dictionary::get_value(a2, @"device_info", a3, a4);
  if (!a1)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x555, "parse", v8);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = value;
  if (value)
  {
    v10 = CFGetTypeID(value);
    if (v10 != CFDictionaryGetTypeID())
    {
      v9 = 0;
    }

    if (v9)
    {
      v23 = 0;
      if (!parse_field<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(a1 + 32, v9, @"exec_stage", a3))
      {
        goto LABEL_16;
      }

      if (!parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(a1 + 64, v9, @"exec_stage_interrupt", a3))
      {
        goto LABEL_16;
      }

      v22 = 0;
      if (!parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(ashp::optional<ashp::acipc::config::device_register_spec,ashp::optional_traits<ashp::acipc::config::device_register_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::device_register_spec,void>>(a1, &v21, v9, @"version", a3, &v23))
      {
        goto LABEL_16;
      }

      v20 = 0;
      if (!parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(ashp::optional<ashp::acipc::config::device_register_spec,ashp::optional_traits<ashp::acipc::config::device_register_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::device_register_spec,void>>(a1 + 16, &v19, v9, @"capability", a3, &v23))
      {
        goto LABEL_16;
      }

      v18 = 0;
      if (!parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::device_register_spec::parse(ashp::acipc::config::device_register_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::device_register_spec>(ashp::optional<ashp::acipc::config::device_register_spec,ashp::optional_traits<ashp::acipc::config::device_register_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::device_register_spec,void>>(a1 + 44, &v17, v9, @"ipc_status", a3, &v23))
      {
        goto LABEL_16;
      }

      v14 = ashp::boxed::dictionary::count(v9, v13, v11, v12);
      if (v23 + v14 == 5)
      {
        return 1;
      }

      v16 = "unknown keys present";
    }

    else
    {
      v16 = "unexpected object type";
    }
  }

  else
  {
    v16 = "missing object";
  }

  set_error(a3, v16, 0, v7, v8);
LABEL_16:
  set_error_location(a3, @"device_info", v11, v12);
  return 0;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec>>(unint64_t *a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"boot_ipc_stages", a3, a4);
  if (!value)
  {
    v26 = *a2;
    if (*a2 <= a1[1])
    {
      if (v26 >= *a1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v36)
        {
          goto LABEL_31;
        }

        if (v36)
        {
          v37 = 176;
          v38 = v36;
          do
          {
            v39 = a2[2];
            v40 = (a1[2] + v37);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v76, *(v39 + v37 - 176), v10, v11);
            v41 = *(v40 - 22);
            *(v40 - 22) = v76;
            v76 = v41;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v76, v42, v43, v44);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v72, *(v39 + v37 - 168), v45, v46);
            v47 = *(v40 - 21);
            *(v40 - 21) = v72;
            *&v72 = v47;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v72, v48, v49, v50);
            v51 = (v39 + v37);
            *(v40 - 40) = *(v51 - 40);
            v52 = *(v51 - 152);
            v53 = *(v51 - 136);
            v54 = *(v51 - 120);
            *(v40 - 108) = *(v51 - 108);
            *(v40 - 120) = v54;
            *(v40 - 136) = v53;
            *(v40 - 152) = v52;
            ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec::client_register_spec>::operator=(v40 - 11, v51 - 11, v55, v56, v57);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v72, *(v51 - 8), v58, v59);
            v60 = *(v40 - 8);
            *(v40 - 8) = v72;
            *&v72 = v60;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v72, v61, v62, v63);
            *(v40 - 14) = *(v51 - 14);
            ashp::detail::dynamic_array::storage<unsigned int>::operator=(v40 - 6, v51 - 6, v64, v65, v66);
            ashp::detail::dynamic_array::storage<unsigned int>::operator=(v40 - 3, v51 - 3, v67, v68, v69);
            *v40 = *v51;
            v37 += 184;
            --v38;
          }

          while (v38);
        }
      }

      else if (v36)
      {
        goto LABEL_31;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::reduce_size(a1, v36, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::append(a1, a2[2] + 184 * v36, *a2 - v36, v70, v71);
    }

    else
    {
      *&v72 = 0;
      ashp::detail::dynamic_array::buffer<ashp::acipc::config::boot_ipc_stage_spec>::buffer(&v72 + 1, v26, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::append(&v72, a2[2], *a2, v27, v28);
      v29 = *a1;
      *a1 = v72;
      v72 = v29;
      v30 = a1[2];
      a1[2] = v73;
      v73 = v30;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::~storage(&v72, v31, v32, v33, v34);
    }

    ++*a5;
    return 1;
  }

  v75 = a4;
  v76 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v74 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v72 = &v74;
      *(&v72 + 1) = &v75;
      v73 = &v76;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::boot_ipc_stage_spec::parse(ashp::acipc::config::boot_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::boot_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::boot_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v72);
      if (v74 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"boot_ipc_stages", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_31:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC4BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec>>(unint64_t *a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"main_ipc_stages", a3, a4);
  if (!value)
  {
    v26 = *a2;
    if (*a2 <= a1[1])
    {
      if (v26 >= *a1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v36)
        {
          goto LABEL_39;
        }

        if (v36)
        {
          v37 = 0;
          v38 = v36;
          do
          {
            v39 = a2[2];
            v40 = a1[2];
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v92, *(v39 + v37), v10, v11);
            v41 = *(v40 + v37);
            *(v40 + v37) = v92;
            v92 = v41;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v92, v42, v43, v44);
            v45 = v40 + v37;
            v46 = *(v39 + v37 + 8);
            v47 = *(v39 + v37 + 24);
            *(v45 + 40) = *(v39 + v37 + 40);
            *(v45 + 24) = v47;
            *(v45 + 8) = v46;
            v48 = *(v39 + v37 + 56);
            v49 = *(v39 + v37 + 72);
            v50 = *(v39 + v37 + 88);
            *(v45 + 102) = *(v39 + v37 + 102);
            *(v45 + 88) = v50;
            *(v45 + 72) = v49;
            *(v45 + 56) = v48;
            v51 = *(v39 + v37 + 112);
            *(v45 + 126) = *(v39 + v37 + 126);
            *(v45 + 112) = v51;
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v87, *(v39 + v37 + 136), v52, v53);
            v54 = *(v40 + v37 + 136);
            *(v45 + 136) = v87;
            *&v87 = v54;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v87, v55, v56, v57);
            *(v45 + 144) = *(v39 + v37 + 144);
            *(v45 + 152) = *(v39 + v37 + 152);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v87, *(v39 + v37 + 160), v58, v59);
            v60 = *(v40 + v37 + 160);
            *(v45 + 160) = v87;
            *&v87 = v60;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v87, v61, v62, v63);
            v66 = v39 + v37;
            v67 = v40 + v37;
            *(v67 + 168) = *(v39 + v37 + 168);
            *(v67 + 176) = *(v39 + v37 + 176);
            v89 = 0;
            if (*(v39 + v37 + 248) == 1)
            {
              ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::emplace<ashp::acipc::config::main_ipc_stage_spec::mcr_spec const&>(&v87, (v66 + 184), v64, v65);
            }

            ashp::swap(v67 + 184, &v87, v64, v65);
            ashp::unsafe_storage<ashp::acipc::config::main_ipc_stage_spec::mcr_spec>::storage::reset(&v87, v68, v69, v70);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v87, *(v66 + 256), v71, v72);
            v73 = *(v67 + 256);
            *(v67 + 256) = v87;
            *&v87 = v73;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v87, v74, v75, v76);
            v77 = v40 + v37;
            *(v77 + 264) = *(v39 + v37 + 264);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v87, *(v39 + v37 + 272), v78, v79);
            v80 = *(v77 + 272);
            *(v77 + 272) = v87;
            *&v87 = v80;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v87, v81, v82, v83);
            *(v77 + 280) = *(v39 + v37 + 280);
            *(v77 + 288) = *(v39 + v37 + 288);
            v84 = *(v39 + v37 + 292);
            if (*(v77 + 296) == 1)
            {
              if (*(v39 + v37 + 296))
              {
                *(v77 + 292) = v84;
              }

              else
              {
                *(v77 + 296) = 0;
              }
            }

            else if (*(v39 + v37 + 296))
            {
              *(v77 + 292) = v84;
              *(v77 + 296) = 1;
            }

            v37 += 304;
            --v38;
          }

          while (v38);
        }
      }

      else if (v36)
      {
        goto LABEL_39;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::reduce_size(a1, v36, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::append(a1, a2[2] + 304 * v36, *a2 - v36, v85, v86);
    }

    else
    {
      *&v87 = 0;
      ashp::detail::dynamic_array::buffer<ashp::acipc::config::main_ipc_stage_spec>::buffer(&v87 + 1, v26, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::append(&v87, a2[2], *a2, v27, v28);
      v29 = *a1;
      *a1 = v87;
      v87 = v29;
      v30 = a1[2];
      a1[2] = v88;
      v88 = v30;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::~storage(&v87, v31, v32, v33, v34);
    }

    ++*a5;
    return 1;
  }

  v91 = a4;
  v92 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v90 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v87 = &v90;
      *(&v87 + 1) = &v91;
      v88 = &v92;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::main_ipc_stage_spec::parse(ashp::acipc::config::main_ipc_stage_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::main_ipc_stage_spec>(ashp::dynamic_array<ashp::acipc::config::main_ipc_stage_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v87);
      if (v90 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"main_ipc_stages", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_39:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC5024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::transfer_ring_spec::parse(ashp::acipc::config::transfer_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec>(ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec>>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"transfer_rings", a3, a4);
  if (!value)
  {
    if (*a2 <= a1[1])
    {
      v33 = *a1;
      if (*a2 < *a1)
      {
        v33 = *a2;
      }

      v105 = v33;
      if (a1[2])
      {
        if (!a2[2] && v33)
        {
          goto LABEL_36;
        }

        if (v33)
        {
          v34 = 176;
          v35 = v33;
          do
          {
            v36 = a2[2];
            v37 = a1[2];
            v38 = v37 + v34;
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v110, *(v36 + v34 - 176), v10, v11);
            v39 = *(v37 + v34 - 176);
            *(v38 - 176) = v110;
            v110 = v39;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v110, v40, v41, v42);
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::operator=((v37 + v34 - 168), (v36 + v34 - 168), v43, v44, v45);
            v48 = *(v36 + v34 - 144);
            v49 = *(v36 + v34 - 128);
            v50 = *(v36 + v34 - 96);
            *(v38 - 112) = *(v36 + v34 - 112);
            *(v38 - 96) = v50;
            *(v38 - 144) = v48;
            *(v38 - 128) = v49;
            v51 = *(v36 + v34 - 80);
            if (*(v37 + v34 - 78) == 1)
            {
              if (*(v36 + v34 - 78))
              {
                *(v38 - 80) = v51;
              }

              else
              {
                *(v38 - 78) = 0;
              }
            }

            else if (*(v36 + v34 - 78))
            {
              *(v38 - 80) = v51;
              *(v38 - 78) = 1;
            }

            v52 = (v37 + v34);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&context, *(v36 + v34 - 72), v46, v47);
            v53 = *(v37 + v34 - 72);
            *(v52 - 9) = context;
            *&context = v53;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&context, v54, v55, v56);
            *(v52 - 16) = *(v36 + v34 - 64);
            *(v52 - 14) = *(v36 + v34 - 56);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&context, v36 + v34 - 48, v57, v58);
            ashp::swap((v37 + v34 - 48), &context, v59, v60);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&context, v61, v62, v63);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&context, v36 + v34 - 24, v64, v65);
            ashp::swap((v37 + v34 - 24), &context, v66, v67);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&context, v68, v69, v70);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&context, *(v36 + v34), v71, v72);
            v73 = *(v37 + v34);
            *v52 = context;
            *&context = v73;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&context, v74, v75, v76);
            v77 = v37 + v34;
            *(v37 + v34 + 8) = *(v36 + v34 + 8);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&context, *(v36 + v34 + 16), v78, v79);
            v80 = *(v37 + v34 + 16);
            *(v77 + 16) = context;
            *&context = v80;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&context, v81, v82, v83);
            *(v77 + 24) = *(v36 + v34 + 24);
            v84 = *(v36 + v34 + 32);
            *(v77 + 40) = *(v36 + v34 + 40);
            *(v77 + 32) = v84;
            ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::operator=((v37 + v34 + 48), (v36 + v34 + 48), v85, v86, v87);
            ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=((v37 + v34 + 72), (v36 + v34 + 72), v88, v89, v90);
            ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=((v37 + v34 + 96), (v36 + v34 + 96), v91, v92, v93);
            ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=((v37 + v34 + 120), (v36 + v34 + 120), v94, v95, v96);
            ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=((v37 + v34 + 144), (v36 + v34 + 144), v97, v98, v99);
            ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=((v37 + v34 + 168), (v36 + v34 + 168), v100, v101, v102);
            v34 += 368;
            --v35;
          }

          while (v35);
        }
      }

      else if (v33)
      {
        goto LABEL_36;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::reduce_size(a1, v105, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::append(a1, a2[2] + 368 * v105, *a2 - v105, v103, v104);
    }

    else
    {
      ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::storage(&context, a2, v10, v11);
      v26 = *a1;
      *a1 = context;
      context = v26;
      v27 = a1[2];
      a1[2] = v107;
      v107 = v27;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::~storage(&context, v28, v29, v30, v31);
    }

    ++*a5;
    return 1;
  }

  v109 = a4;
  v110 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v108 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&context = &v108;
      *(&context + 1) = &v109;
      v107 = &v110;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::transfer_ring_spec::parse(ashp::acipc::config::transfer_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec>(ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::transfer_ring_spec::parse(ashp::acipc::config::transfer_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec>(ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &context);
      if (v108 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"transfer_rings", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_36:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::completion_ring_spec::parse(ashp::acipc::config::completion_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec>(ashp::dynamic_array<ashp::acipc::config::completion_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::completion_ring_spec>>(unint64_t *a1, unint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"completion_rings", a3, a4);
  if (!value)
  {
    if (*a2 <= a1[1])
    {
      if (*a2 >= *a1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v33)
        {
          goto LABEL_31;
        }

        if (v33)
        {
          v34 = 128;
          v35 = v33;
          do
          {
            v36 = a2[2] + v34;
            v37 = a1[2] + v34;
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v91, *(v36 - 128), v10, v11);
            v38 = *(v37 - 128);
            *(v37 - 128) = v91;
            v91 = v38;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v91, v39, v40, v41);
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::operator=((v37 - 120), (v36 - 120), v42, v43, v44);
            v45 = *(v36 - 96);
            v46 = *(v36 - 80);
            *(v37 - 68) = *(v36 - 68);
            *(v37 - 96) = v45;
            *(v37 - 80) = v46;
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v87, *(v36 - 48), v47, v48);
            v49 = *(v37 - 48);
            *(v37 - 48) = v87;
            *&v87 = v49;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v87, v50, v51, v52);
            *(v37 - 40) = *(v36 - 40);
            *(v37 - 32) = *(v36 - 32);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v87, v36 - 24, v53, v54);
            ashp::swap((v37 - 24), &v87, v55, v56);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v87, v57, v58, v59);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(&v87, v36, v60, v61);
            ashp::swap(v37, &v87, v62, v63);
            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(&v87, v64, v65, v66);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v87, *(v36 + 24), v67, v68);
            v69 = *(v37 + 24);
            *(v37 + 24) = v87;
            *&v87 = v69;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v87, v70, v71, v72);
            *(v37 + 32) = *(v36 + 32);
            *(v37 + 40) = *(v36 + 40);
            ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::operator=((v37 + 48), (v36 + 48), v73, v74, v75);
            ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::operator=((v37 + 72), (v36 + 72), v76, v77, v78);
            ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=((v37 + 96), (v36 + 96), v79, v80, v81);
            ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::operator=((v37 + 120), (v36 + 120), v82, v83, v84);
            v34 += 272;
            --v35;
          }

          while (v35);
        }
      }

      else if (v33)
      {
        goto LABEL_31;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::reduce_size(a1, v33, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::append(a1, a2[2] + 272 * v33, *a2 - v33, v85, v86);
    }

    else
    {
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::storage(&v87, a2, v10, v11);
      v26 = *a1;
      *a1 = v87;
      v87 = v26;
      v27 = a1[2];
      a1[2] = v88;
      v88 = v27;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::~storage(&v87, v28, v29, v30, v31);
    }

    ++*a5;
    return 1;
  }

  v90 = a4;
  v91 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v89 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v87 = &v89;
      *(&v87 + 1) = &v90;
      v88 = &v91;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::completion_ring_spec::parse(ashp::acipc::config::completion_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec>(ashp::dynamic_array<ashp::acipc::config::completion_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::completion_ring_spec::parse(ashp::acipc::config::completion_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec>(ashp::dynamic_array<ashp::acipc::config::completion_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v87);
      if (v89 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"completion_rings", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_31:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::completion_group_spec::parse(ashp::acipc::config::completion_group_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_group_spec>(ashp::dynamic_array<ashp::acipc::config::completion_group_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::completion_group_spec>>(unint64_t *a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"completion_groups", a3, a4);
  if (!value)
  {
    v26 = *a2;
    if (*a2 <= a1[1])
    {
      if (v26 >= *a1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v36)
        {
          goto LABEL_31;
        }

        if (v36)
        {
          v37 = 0;
          v38 = v36;
          do
          {
            v39 = a2[2];
            v40 = a1[2];
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v52, *(v39 + v37), v10, v11);
            v41 = *(v40 + v37);
            *(v40 + v37) = v52;
            *&v52 = v41;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v52, v42, v43, v44);
            v45 = v40 + v37;
            v46 = v39 + v37;
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::operator=((v45 + 8), (v46 + 8), v47, v48, v49);
            *(v45 + 32) = *(v46 + 32);
            v37 += 40;
            --v38;
          }

          while (v38);
        }
      }

      else if (v36)
      {
        goto LABEL_31;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::reduce_size(a1, v36, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::append(a1, a2[2] + 40 * v36, *a2 - v36, v50, v51);
    }

    else
    {
      *&v52 = 0;
      ashp::detail::dynamic_array::buffer<ashp::acipc::config::completion_group_spec>::buffer(&v52 + 1, v26, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::append(&v52, a2[2], *a2, v27, v28);
      v29 = *a1;
      *a1 = v52;
      v52 = v29;
      v30 = a1[2];
      a1[2] = v53;
      v53 = v30;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::~storage(&v52, v31, v32, v33, v34);
    }

    ++*a5;
    return 1;
  }

  v55 = a4;
  v56 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v54 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v52 = &v54;
      *(&v52 + 1) = &v55;
      v53 = &v56;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::completion_group_spec::parse(ashp::acipc::config::completion_group_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_group_spec>(ashp::dynamic_array<ashp::acipc::config::completion_group_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::completion_group_spec::parse(ashp::acipc::config::completion_group_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_group_spec>(ashp::dynamic_array<ashp::acipc::config::completion_group_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v52);
      if (v54 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"completion_groups", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_31:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC5B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

uint64_t parse_field_with_default<&(BOOL parse_dict<&(ashp::acipc::config::memory_region_spec::parse(ashp::acipc::config::memory_region_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec>(ashp::dynamic_array<ashp::acipc::config::memory_region_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::acipc::config::memory_region_spec>>(unint64_t *a1, uint64_t *a2, const __CFDictionary *a3, char *a4, void *a5)
{
  value = ashp::boxed::dictionary::get_value(a3, @"memory_regions", a3, a4);
  if (!value)
  {
    v26 = *a2;
    if (*a2 <= a1[1])
    {
      if (v26 >= *a1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a2;
      }

      if (a1[2])
      {
        if (!a2[2] && v36)
        {
          goto LABEL_31;
        }

        if (v36)
        {
          v37 = 64;
          v38 = v36;
          do
          {
            v39 = a2[2] + v37;
            v40 = a1[2] + v37;
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v61, *(v39 - 64), v10, v11);
            v41 = *(v40 - 64);
            *(v40 - 64) = v61;
            v61 = v41;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v61, v42, v43, v44);
            ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::operator=((v40 - 56), (v39 - 56), v45, v46, v47);
            *(v40 - 32) = *(v39 - 32);
            ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(&v57, *(v39 - 24), v48, v49);
            v50 = *(v40 - 24);
            *(v40 - 24) = v57;
            *&v57 = v50;
            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v57, v51, v52, v53);
            *(v40 - 16) = *(v39 - 16);
            *(v40 - 8) = *(v39 - 8);
            v54 = *v39;
            *(v40 + 4) = *(v39 + 4);
            *v40 = v54;
            v37 += 72;
            --v38;
          }

          while (v38);
        }
      }

      else if (v36)
      {
        goto LABEL_31;
      }

      ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::reduce_size(a1, v36, v10, v11, v12);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::append(a1, a2[2] + 72 * v36, *a2 - v36, v55, v56);
    }

    else
    {
      *&v57 = 0;
      ashp::detail::dynamic_array::buffer<ashp::acipc::config::memory_region_spec>::buffer(&v57 + 1, v26, v10, v11);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::append(&v57, a2[2], *a2, v27, v28);
      v29 = *a1;
      *a1 = v57;
      v57 = v29;
      v30 = a1[2];
      a1[2] = v58;
      v58 = v30;
      ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::~storage(&v57, v31, v32, v33, v34);
    }

    ++*a5;
    return 1;
  }

  v60 = a4;
  v61 = a1;
  if (a1 && !*a1)
  {
    v13 = value;
    v14 = CFGetTypeID(value);
    if (v14 == CFDictionaryGetTypeID())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v59 = 0;
      v20 = ashp::boxed::dictionary::count(v19, v15, v16, v17);
      if (a1[1] < v20)
      {
        ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::set_capacity(a1, v20, v21, v22, v23);
      }

      *&v57 = &v59;
      *(&v57 + 1) = &v60;
      v58 = &v61;
      CFDictionaryApplyFunction(v19, iterate_dict<BOOL parse_dict<&(ashp::acipc::config::memory_region_spec::parse(ashp::acipc::config::memory_region_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec>(ashp::dynamic_array<ashp::acipc::config::memory_region_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::memory_region_spec::parse(ashp::acipc::config::memory_region_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec>(ashp::dynamic_array<ashp::acipc::config::memory_region_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke, &v57);
      if (v59 != 1)
      {
        return 1;
      }
    }

    else
    {
      set_error(a4, "unexpected object type", 0, v17, v18);
    }

    set_error_location(a4, @"memory_regions", v24, v25);
    return 0;
  }

  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0x15B, "parse_dict", v12);
  _os_crash();
  __break(1u);
LABEL_31:
  ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xC2, "operator=", v12);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_23ECC5E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::reduce_size(a1, 0, a3, a4, a5);
  v6 = a1[2];
  if (v6)
  {
    free(v6);
    a1[2] = 0;
  }

  return a1;
}

void ashp::acipc::config::acipc_config::~acipc_config(ashp::acipc::config::acipc_config *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::~storage(this + 44, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::~storage(this + 41, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::~storage(this + 38, v10, v11, v12, v13);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::~storage(this + 35, v14, v15, v16, v17);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::~storage(this + 32, v18, v19, v20, v21);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::boot_ipc_stage_spec>::~storage(this + 29, v22, v23, v24, v25);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 27, v26, v27, v28);
  if (*(this + 208) == 1)
  {
    *(this + 208) = 0;
  }

  if (*(this + 180) == 1)
  {
    *(this + 180) = 0;
  }

  if (*(this + 164) == 1)
  {
    *(this + 164) = 0;
  }

  ashp::detail::dynamic_array::storage<ashp::acipc::config::resource_spec>::~storage(this + 13, v29, v30, v31, v32);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::exec_stage_spec>::~storage(this + 10, v33, v34, v35, v36);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::doorbell_spec>::~storage(this + 7, v37, v38, v39, v40);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::interrupt_spec>::~storage(this + 4, v41, v42, v43, v44);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 3, v45, v46, v47);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 2, v48, v49, v50);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 1, v51, v52, v53);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v54, v55, v56);
}

const char *ashp::deferred_action<ashp::acipc::config::acipc_config::parse(ashp::boxed::object,ashp::acipc::config::acipc_config::error_detail *)::$_0>::~deferred_action(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  if (*(a1 + 16) != 1)
  {
    return v4;
  }

  v5 = *(a1 + 8);
  v6 = **a1;
  if (*v5 == 1)
  {
    v7 = *(v5 + 8);
    *(v5 + 8) = 0;
    v63 = v7;
    v8 = *(a1 + 8);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = *(v8 + 32);
      v12 = 8 * v9;
      do
      {
        if (*v11)
        {
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v11, a2, a3, a4);
          v16 = ashp::boxed::string::length(*v11, v13, v14, v15);
        }

        else
        {
          v16 = 0;
        }

        v10 += v16;
        ++v11;
        v12 -= 8;
      }

      while (v12);
      v17 = v10 + *(v8 + 16) + 1;
    }

    else
    {
      v17 = 1;
    }

    v65 = 0;
    ashp::detail::dynamic_array::buffer<char>::buffer(&v66, v17, a3, a4);
    if (v17)
    {
      v20 = v65;
      while (v20 < v66)
      {
        if (!v67)
        {
          goto LABEL_60;
        }

        *(v67 + v20) = 0;
        v20 = ++v65;
        if (!--v17)
        {
          goto LABEL_17;
        }
      }

      v4 = "BUG in Airship: ";
      ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v19);
      _os_crash();
      __break(1u);
    }

    else
    {
LABEL_17:
      v62 = v6;
      v21 = 0;
      if (!*(v8 + 16))
      {
LABEL_36:
        v6 = v62;
        if (v21 < v65)
        {
          *ashp::dynamic_array<char>::operator[](v65, v67, v21, v18) = 0;
          v45 = ashp::dynamic_array<char>::operator[](v65, v67, 0, v44);
          v46 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v45, 0x8000100u);
          if (!v46)
          {
            ashp::detail::control_flow::log_guard_else_failure("boxed_types.cpp", 0x16D, "with_cstr", a4);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "boxed_types.cpp", 0x16D, "with_cstr", v61);
            _os_crash();
            __break(1u);
            goto LABEL_61;
          }

LABEL_38:
          v64 = v46;
          if (v65)
          {
            v47 = v67 == 0;
          }

          else
          {
            v47 = 0;
          }

          if (!v47)
          {
            v65 = 0;
            if (v67)
            {
              free(v67);
            }

            goto LABEL_44;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          JUMPOUT(0x23ECC648CLL);
        }

LABEL_58:
        v59 = 2781;
LABEL_56:
        ashp::detail::control_flow::log_guard_else_failure("configurator.cpp", v59, "merge_location", v18);
        v46 = 0;
        goto LABEL_38;
      }

      v22 = 0;
      v23 = -1;
      v6 = 47;
      while (v21 < v65)
      {
        *ashp::dynamic_array<char>::operator[](v65, v67, v21, v18) = 47;
        v26 = *(v8 + 16);
        v27 = __CFADD__(v23, v26);
        v28 = v23 + v26;
        if (!v27)
        {
          v4 = "dynamic_array.hpp";
          ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x1A2, "operator[]", v18);
          ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x1A2, "operator[]", v60);
          _os_crash();
          __break(1u);
LABEL_51:
          v59 = 2761;
          goto LABEL_55;
        }

        v29 = v21 + 1;
        v30 = (*(v8 + 32) + 8 * v28);
        if (!*v30 || ((ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v30, v24, v25, v18), v34 = ashp::boxed::string::length(*v30, v31, v32, v33), v37 = v34, *v30) ? (v38 = v34 == 0) : (v38 = 1), v38))
        {
          if (v29 >= v65)
          {
            goto LABEL_51;
          }

          v39 = ashp::dynamic_array<char>::operator[](v65, v67, v21 + 1, v18);
          v21 += 2;
          *v39 = 63;
        }

        else
        {
          if (__CFADD__(v29, v34))
          {
            goto LABEL_53;
          }

          if (v29 + v34 > v65)
          {
            v59 = 2767;
            goto LABEL_55;
          }

          usedBufLen = 0;
          ashp::optional<ashp::boxed::data,ashp::optional_sentinel<(decltype(nullptr))0,true>>::value(v30, v35, v36, v18);
          v40 = *v30;
          v42 = ashp::dynamic_array<char>::operator[](v65, v67, v29, v41);
          v69.location = 0;
          v69.length = v37;
          CFStringGetBytes(v40, v69, 0x8000100u, 0, 0, v42, v37, &usedBufLen);
          if (usedBufLen < 0)
          {
            v4 = "BUG in Airship: ";
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xAD8, "merge_location", v43);
            _os_crash();
            __break(1u);
LABEL_53:
            v59 = 2766;
            goto LABEL_55;
          }

          if (usedBufLen > v37)
          {
            v4 = "BUG in Airship: ";
            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "configurator.cpp", 0xAD9, "merge_location", v43);
            _os_crash();
            __break(1u);
            goto LABEL_58;
          }

          v21 = usedBufLen + v29;
        }

        ++v22;
        --v23;
        if (v22 >= *(v8 + 16))
        {
          goto LABEL_36;
        }
      }
    }

    v59 = 2755;
LABEL_55:
    v6 = v62;
    goto LABEL_56;
  }

  v63 = 0;
  v64 = 0;
LABEL_44:
  if (v6)
  {
    v48 = v63;
    v63 = 0;
    v49 = *v6;
    *v6 = v48;
    v65 = v49;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v65, a2, a3, a4);
    v50 = v64;
    v64 = 0;
    v51 = *(v6 + 8);
    *(v6 + 8) = v50;
    usedBufLen = v51;
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&usedBufLen, v52, v53, v54);
  }

  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v64, a2, a3, a4);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v63, v55, v56, v57);
  if (v4[16] == 1)
  {
    *(v4 + 16) = 0;
  }

  return v4;
}

void ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::string,ashp::cf::refcount_policy>>::~storage(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*a1)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = a1[2];
      if (!v7)
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v7 + v5), a2, a3, a4);
      ++v6;
      v5 += 8;
      if (v6 >= *a1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    *a1 = 0;
    v8 = a1[2];
    if (v8)
    {
      free(v8);
      a1[2] = 0;
    }
  }
}

uint64_t ashp::dynamic_array<char>::operator[](unint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (a1 > a3)
  {
    return a2 + a3;
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x19C, "operator[]", a4);
  ashp::detail::base::log_pre_crash_message("BUG in Airship: bad array access", "dynamic_array.hpp", 0x19C, "operator[]", v5);
  result = _os_crash();
  __break(1u);
  return result;
}

size_t *ashp::detail::dynamic_array::buffer<char>::buffer(size_t *a1, size_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if ((a2 & 7) == 0 || (v5 = 8 - (a2 & 7), v6 = __CFADD__(a2, v5), a2 += v5, !v6))
  {
    v7 = malloc_type_aligned_alloc(8uLL, a2, 0x100004077774924uLL);
    a1[1] = v7;
    if (v7)
    {
      return a1;
    }

    ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5E, "buffer", v8);
    ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5E, "buffer", v10);
    _os_crash();
    __break(1u);
  }

  ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x5A, "buffer", a4);
  ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x5A, "buffer", v11);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ashp::unsafe_storage<ashp::acipc::config::acipc_config>::storage::emplace<ashp::acipc::config::acipc_config>(ashp::acipc::config::acipc_config *a1, uint64_t *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*(a1 + 376) == 1)
  {
    *(a1 + 376) = 0;
    ashp::acipc::config::acipc_config::~acipc_config(a1, a2, a3, a4, a5);
  }

  result = ashp::acipc::config::acipc_config::acipc_config(a1, a2);
  *(result + 376) = 1;
  return result;
}

uint64_t ashp::acipc::config::acipc_config::acipc_config(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v3 = a2[1];
  a2[1] = 0;
  *(result + 8) = v3;
  v4 = a2[2];
  a2[2] = 0;
  *(result + 16) = v4;
  v5 = a2[3];
  a2[3] = 0;
  *(result + 24) = v5;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = a2[4];
  a2[4] = 0;
  v6 = *(result + 40);
  v7 = a2[6];
  *(result + 40) = a2[5];
  *(result + 48) = v7;
  a2[5] = v6;
  a2[6] = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = a2[7];
  a2[7] = 0;
  v8 = *(result + 64);
  v9 = a2[9];
  *(result + 64) = a2[8];
  *(result + 72) = v9;
  a2[8] = v8;
  a2[9] = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = a2[10];
  a2[10] = 0;
  v10 = *(result + 88);
  v11 = a2[12];
  *(result + 88) = a2[11];
  *(result + 96) = v11;
  a2[11] = v10;
  a2[12] = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 104) = a2[13];
  a2[13] = 0;
  v12 = *(result + 112);
  v13 = a2[15];
  *(result + 112) = a2[14];
  *(result + 120) = v13;
  a2[14] = v12;
  a2[15] = 0;
  v14 = *(a2 + 8);
  *(result + 144) = *(a2 + 72);
  *(result + 128) = v14;
  *(result + 164) = 0;
  if (*(a2 + 164) == 1)
  {
    v15 = a2[19];
    *(result + 160) = *(a2 + 40);
    *(result + 152) = v15;
    *(result + 164) = 1;
    if (*(a2 + 164) == 1)
    {
      *(a2 + 164) = 0;
    }
  }

  *(result + 180) = 0;
  if (*(a2 + 180) == 1)
  {
    v16 = a2[21];
    *(result + 176) = *(a2 + 44);
    *(result + 168) = v16;
    *(result + 180) = 1;
    if (*(a2 + 180) == 1)
    {
      *(a2 + 180) = 0;
    }
  }

  v17 = a2[23];
  *(result + 192) = *(a2 + 48);
  *(result + 184) = v17;
  *(result + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    v18 = *(a2 + 196);
    *(result + 204) = *(a2 + 51);
    *(result + 196) = v18;
    *(result + 208) = 1;
    if (*(a2 + 208) == 1)
    {
      *(a2 + 208) = 0;
    }
  }

  v19 = a2[27];
  a2[27] = 0;
  *(result + 216) = v19;
  *(result + 224) = *(a2 + 56);
  *(result + 240) = 0;
  *(result + 248) = 0;
  *(result + 232) = 0;
  *(result + 232) = a2[29];
  a2[29] = 0;
  v20 = *(result + 240);
  v21 = a2[31];
  *(result + 240) = a2[30];
  *(result + 248) = v21;
  a2[30] = v20;
  a2[31] = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 256) = a2[32];
  a2[32] = 0;
  v22 = *(result + 264);
  v23 = a2[34];
  *(result + 264) = a2[33];
  *(result + 272) = v23;
  a2[33] = v22;
  a2[34] = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 280) = 0;
  *(result + 280) = a2[35];
  a2[35] = 0;
  v24 = *(result + 288);
  v25 = a2[37];
  *(result + 288) = a2[36];
  *(result + 296) = v25;
  a2[36] = v24;
  a2[37] = 0;
  *(result + 304) = 0;
  *(result + 312) = 0;
  *(result + 320) = 0;
  *(result + 304) = a2[38];
  a2[38] = 0;
  v26 = *(result + 312);
  v27 = a2[40];
  *(result + 312) = a2[39];
  *(result + 320) = v27;
  a2[39] = v26;
  a2[40] = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 344) = 0;
  *(result + 328) = a2[41];
  a2[41] = 0;
  v28 = *(result + 336);
  v29 = a2[43];
  *(result + 336) = a2[42];
  *(result + 344) = v29;
  a2[42] = v28;
  a2[43] = 0;
  *(result + 352) = 0;
  *(result + 360) = 0;
  *(result + 368) = 0;
  *(result + 352) = a2[44];
  a2[44] = 0;
  v30 = *(result + 360);
  v31 = a2[46];
  *(result + 360) = a2[45];
  *(result + 368) = v31;
  a2[45] = v30;
  a2[46] = 0;
  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 72 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7 + 40), a2, a3, a4);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v9 + v7 + 8), v10, v11, v12, v13);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset((v9 + v7), v14, v15, v16);
      ++v8;
      v7 += 72;
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

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  if (*result + a3 <= result[1])
  {
    v6 = a3;
    v15 = *result + a3;
    if (!a3)
    {
LABEL_7:
      *v5 = v15;
      return result;
    }

    v8 = 0;
    while (1)
    {
      v9 = v5[2] + 72 * *v5;
      if (!(v9 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8), *(a2 + v8), a3, a4);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((v9 + v8 + 8), (a2 + v8 + 8), v10, v11);
      *(v9 + v8 + 32) = *(a2 + v8 + 32);
      result = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8 + 40), *(a2 + v8 + 40), v12, v13);
      v14 = v9 + v8;
      *(v14 + 48) = *(a2 + v8 + 48);
      *(v14 + 56) = *(a2 + v8 + 56);
      *(v14 + 64) = *(a2 + v8 + 64);
      v8 += 72;
      if (!--v6)
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

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::memory_region_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x48uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 72 * a2, 0x1060040E09F3167uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::memory_region_spec>::buffer(&v11, a2, a3, a4);
    if (*a1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::memory_region_spec,ashp::acipc::config::memory_region_spec,ashp::acipc::config::memory_region_spec*>(v12 + v6, (a1[2] + v6));
        ++v7;
        v6 += 72;
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

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::memory_region_spec::parse(ashp::acipc::config::memory_region_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec>(ashp::dynamic_array<ashp::acipc::config::memory_region_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::memory_region_spec::parse(ashp::acipc::config::memory_region_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec>(ashp::dynamic_array<ashp::acipc::config::memory_region_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v54 = 0;
    LODWORD(v55) = 0;
    BYTE4(v55) = 0;
    v51 = 0u;
    v52 = 0u;
    v53[0] = 0;
    *&v53[12] = 0;
    *&v53[4] = 0;
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
        v57 = 0;
        if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v53[8], a2, @"resource", v10))
        {
          memset(v56, 0, sizeof(v56));
          v16 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>>(&v51 + 1, v56, a2, @"exec_stage", v10, &v57);
          ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(v56, v17, v18, v19, v20);
          if ((v16 & 1) != 0 && parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v54, a2, @"id", v10) && parse_field_with_default<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>(v53, 0, a2, @"traffic_class", v10, &v57) && parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v53[4], 0, a2, @"priority", v10, &v57) && parse_field_with_default<&(ashp::acipc::config::memory_region_spec::multi_config::parse(ashp::acipc::config::memory_region_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::memory_region_spec::multi_config>(&v55, a2, v10, &v57))
          {
            v22 = ashp::boxed::dictionary::count(a2, v21, v14, v15);
            if (v57 + v22 == 6)
            {
              ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v56, cf, v23, v24);
              v26 = v51;
              *&v51 = v56[0];
              v56[0] = v26;
              ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v56, v27, v28, v29);
              v34 = **(a3 + 16);
              v35 = *v34;
              v36 = *v34 + 1;
              if (*v34 == -1)
              {
                ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v32);
                ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v50);
                _os_crash();
                __break(1u);
              }

              else
              {
                v37 = v34[1];
                if (v36 > v37)
                {
                  if (v37 <= 8)
                  {
                    v30 = 8;
                  }

                  else
                  {
                    v30 = v34[1];
                  }

                  if (v36 >= 9)
                  {
                    do
                    {
                      if (is_mul_ok(v30, 3uLL))
                      {
                        v30 = (3 * v30) >> 1;
                      }

                      else
                      {
                        v30 = *v34 + 1;
                      }
                    }

                    while (v30 < v36);
                  }

                  if (v37 < v30)
                  {
                    ashp::detail::dynamic_array::storage<ashp::acipc::config::memory_region_spec>::set_capacity(v34, v30, v31, v32, v33);
                    v35 = *v34;
                    v37 = v34[1];
                  }
                }

                if (v35 < v37)
                {
                  v38 = v34[2];
                  if (v38)
                  {
                    v39 = v38 + 72 * v35;
                    v40 = v51;
                    *&v51 = 0;
                    *v39 = v40;
                    *(v39 + 8) = 0;
                    *(v39 + 16) = 0;
                    *(v39 + 24) = 0;
                    *(v39 + 8) = *(&v51 + 1);
                    *(&v51 + 1) = 0;
                    v41 = *(v39 + 16);
                    *(v39 + 16) = v52;
                    *&v52 = v41;
                    *(v39 + 24) = *(&v52 + 1);
                    *(&v52 + 1) = 0;
                    *(v39 + 32) = *v53;
                    v42 = *&v53[8];
                    *&v53[8] = 0;
                    *(v39 + 40) = v42;
                    *(v39 + 48) = *&v53[16];
                    *(v39 + 56) = v54;
                    *(v39 + 64) = v55;
                    ++*v34;
LABEL_34:
                    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v53[8], v30, v31, v32);
                    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(&v51 + 1, v43, v44, v45, v46);
                    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v51, v47, v48, v49);
                    return;
                  }

LABEL_39:
                  __break(1u);
                  return;
                }
              }

              ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v33);
              _os_crash();
              goto LABEL_39;
            }

            set_error(v10, "unknown keys present", 0, v24, v25);
          }
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

    set_error_location(**(a3 + 8), cf, v14, v15);
    **a3 = 1;
    goto LABEL_34;
  }
}

void sub_23ECC71FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(va, a2, a3, a4, a5);
  ashp::acipc::config::memory_region_spec::~memory_region_spec(&a9, v19, v20, v21);
  _Unwind_Resume(a1);
}

void ashp::acipc::config::memory_region_spec::~memory_region_spec(ashp::acipc::config::memory_region_spec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 5, a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 1, v5, v6, v7, v8);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v9, v10, v11);
}

uint64_t std::construct_at[abi:se200100]<ashp::acipc::config::memory_region_spec,ashp::acipc::config::memory_region_spec,ashp::acipc::config::memory_region_spec*>(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = a2[1];
    a2[1] = 0;
    v3 = *(result + 16);
    v4 = a2[3];
    *(result + 16) = a2[2];
    *(result + 24) = v4;
    a2[2] = v3;
    a2[3] = 0;
    *(result + 32) = a2[4];
    v5 = a2[5];
    a2[5] = 0;
    *(result + 40) = v5;
    *(result + 48) = *(a2 + 12);
    *(result + 56) = *(a2 + 28);
    *(result + 64) = a2[8];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 40 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      v10 = (v9 + v7);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v9 + v7 + 8), a2, a3, a4, a5);
      ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v10, v11, v12, v13);
      ++v8;
      v7 += 40;
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

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::append(unint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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
    v9 = (a2 + 32);
    while (1)
    {
      v10 = v6[2] + 40 * *v6;
      if (!(v10 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v10 + v8), *(v9 - 4), a3, a4);
      v11 = v10 + v8;
      result = ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((v11 + 8), v9 - 3, v12, v13);
      v14 = *v9;
      v9 += 5;
      *(v11 + 32) = v14;
      v8 += 40;
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

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::completion_group_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x28uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 40 * a2, 0x1060040FDBABED2uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
    __break(1u);
  }

  else
  {
    ashp::detail::dynamic_array::buffer<ashp::acipc::config::completion_group_spec>::buffer(&v11, a2, a3, a4);
    if (*a1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        std::construct_at[abi:se200100]<ashp::acipc::config::completion_group_spec,ashp::acipc::config::completion_group_spec,ashp::acipc::config::completion_group_spec*>(v12 + v6, (a1[2] + v6));
        ++v7;
        v6 += 40;
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

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::completion_group_spec::parse(ashp::acipc::config::completion_group_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_group_spec>(ashp::dynamic_array<ashp::acipc::config::completion_group_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::completion_group_spec::parse(ashp::acipc::config::completion_group_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_group_spec>(ashp::dynamic_array<ashp::acipc::config::completion_group_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    HIDWORD(v58[0]) = 0;
    v56 = 0u;
    v57 = 0u;
    LOWORD(v58[0]) = 0;
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
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        v14 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>>(&v56 + 1, v59, a2, @"exec_stage", v10, &v60);
        ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(v59, v15, v16, v17, v18);
        if ((v14 & 1) == 0 || !parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(v58, a2, @"id", v10))
        {
          goto LABEL_20;
        }

        value = ashp::boxed::dictionary::get_value(a2, @"multi", v19, v20);
        v25 = value;
        if (value)
        {
          v26 = CFGetTypeID(value);
          if (v26 != CFDictionaryGetTypeID())
          {
            v25 = 0;
          }

          if (!v25)
          {
            v31 = "unexpected object type";
            goto LABEL_42;
          }

          if (!parse_field<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(v58 + 1, v25, @"count", v10))
          {
LABEL_43:
            set_error_location(v10, @"multi", v29, v30);
            goto LABEL_20;
          }

          if (ashp::boxed::dictionary::count(v25, v28, v29, v30) != 1)
          {
            v31 = "unknown keys present";
LABEL_42:
            set_error(v10, v31, 0, v24, v27);
            goto LABEL_43;
          }
        }

        else
        {
          HIDWORD(v58[0]) = 1;
          ++v60;
        }

        v39 = ashp::boxed::dictionary::count(a2, v22, v23, v24);
        if (v60 + v39 == 3)
        {
          ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v59, cf, v40, v41);
          v43 = v56;
          *&v56 = v59[0];
          v59[0] = v43;
          ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v59, v44, v45, v46);
          v47 = **(a3 + 16);
          v48 = *v47;
          v49 = *v47 + 1;
          if (*v47 == -1)
          {
            ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v34);
            ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v55);
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
                v32 = 8;
              }

              else
              {
                v32 = v47[1];
              }

              if (v49 >= 9)
              {
                do
                {
                  if (is_mul_ok(v32, 3uLL))
                  {
                    v32 = (3 * v32) >> 1;
                  }

                  else
                  {
                    v32 = *v47 + 1;
                  }
                }

                while (v32 < v49);
              }

              if (v50 < v32)
              {
                ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_group_spec>::set_capacity(v47, v32, v33, v34, v35);
                v48 = *v47;
                v50 = v47[1];
              }
            }

            if (v48 < v50)
            {
              v51 = v47[2];
              if (v51)
              {
                v52 = (v51 + 40 * v48);
                v53 = v56;
                *&v56 = 0;
                *v52 = v53;
                v52[1] = 0;
                v52[2] = 0;
                v52[3] = 0;
                v52[1] = *(&v56 + 1);
                *(&v56 + 1) = 0;
                v54 = v52[2];
                v52[2] = v57;
                *&v57 = v54;
                v52[3] = *(&v57 + 1);
                *(&v57 + 1) = 0;
                v52[4] = v58[0];
                ++*v47;
                goto LABEL_21;
              }

LABEL_46:
              __break(1u);
              return;
            }
          }

          ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v35);
          _os_crash();
          goto LABEL_46;
        }

        set_error(v10, "unknown keys present", 0, v41, v42);
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

LABEL_20:
    set_error_location(**(a3 + 8), cf, v19, v20);
    **a3 = 1;
LABEL_21:
    ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(&v56 + 1, v32, v33, v34, v35);
    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(&v56, v36, v37, v38);
  }
}

void sub_23ECC7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(va, a2, a3, a4, a5);
  ashp::acipc::config::completion_group_spec::~completion_group_spec(&a9, v15, v16, v17, v18);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:se200100]<ashp::acipc::config::completion_group_spec,ashp::acipc::config::completion_group_spec,ashp::acipc::config::completion_group_spec*>(void *result, uint64_t *a2)
{
  if (result)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[1] = a2[1];
    a2[1] = 0;
    v3 = result[2];
    v4 = a2[3];
    result[2] = a2[2];
    result[3] = v4;
    a2[2] = v3;
    a2[3] = 0;
    result[4] = a2[4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 272 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::acipc::config::completion_ring_spec::~completion_ring_spec((v9 + v7), a2, a3, a4, a5);
      ++v8;
      v7 += 272;
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

void ashp::acipc::config::completion_ring_spec::~completion_ring_spec(ashp::acipc::config::completion_ring_spec *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 31, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 28, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 25, v10, v11, v12, v13);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this + 22, v14, v15, v16, v17);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 19, v18, v19, v20);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 128, v21, v22, v23);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 104, v24, v25, v26);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 10, v27, v28, v29);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 1, v30, v31, v32, v33);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v34, v35, v36);
}

uint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::append(uint64_t *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (__CFADD__(*result, a3))
  {
LABEL_9:
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x137, "append", a5);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  if (*result + a3 <= result[1])
  {
    v6 = a3;
    v25 = *result + a3;
    if (!a3)
    {
LABEL_7:
      *v5 = v25;
      return result;
    }

    v8 = 0;
    while (1)
    {
      v9 = v5[2] + 272 * *v5;
      if (!(v9 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8), *(a2 + v8), a3, a4);
      v10 = (v9 + v8);
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((v9 + v8 + 8), (a2 + v8 + 8), v11, v12);
      v13 = *(a2 + v8 + 32);
      v14 = *(a2 + v8 + 48);
      *(v10 + 60) = *(a2 + v8 + 60);
      v10[2] = v13;
      v10[3] = v14;
      ashp::acipc::config::completion_ring_spec::dynamic_config::dynamic_config(v9 + v8 + 80, a2 + v8 + 80, v15, v16);
      *(v9 + v8 + 168) = *(a2 + v8 + 168);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::storage((v9 + v8 + 176), (a2 + v8 + 176), v17, v18);
      ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::storage((v9 + v8 + 200), (a2 + v8 + 200), v19, v20);
      ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage((v9 + v8 + 224), (a2 + v8 + 224), v21, v22);
      result = ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::storage((v9 + v8 + 248), (a2 + v8 + 248), v23, v24);
      v8 += 272;
      if (!--v6)
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

void sub_23ECC7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage((v6 + 200), a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage((v6 + 176), v9, v10, v11, v12);
  ashp::acipc::config::completion_ring_spec::dynamic_config::~dynamic_config((v7 + 80), v13, v14, v15);
  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage((v7 + 8), v16, v17, v18, v19);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v5, v20, v21, v22);
  _Unwind_Resume(a1);
}

unint64_t *ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::storage(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::acipc::config::completion_ring_spec>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::append(a1, a2[2], *a2, v6, v7);
  return a1;
}

void sub_23ECC7E4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::completion_ring_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x110uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 272 * a2, 0x1060040BE882927uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::completion_ring_spec>::buffer(&v32, a2, a3, a4);
  if (*a1)
  {
    v8 = 0;
    v9 = 152;
    while (v33)
    {
      v10 = v33 + v9;
      v11 = a1[2] + v9;
      v12 = *(v11 - 152);
      *(v11 - 152) = 0;
      *(v10 - 19) = v12;
      *(v10 - 18) = 0;
      *(v10 - 17) = 0;
      *(v10 - 16) = 0;
      *(v10 - 18) = *(v11 - 144);
      *(v11 - 144) = 0;
      v13 = *(v10 - 17);
      v14 = *(v11 - 128);
      *(v10 - 17) = *(v11 - 136);
      *(v10 - 16) = v14;
      *(v11 - 136) = v13;
      *(v11 - 128) = 0;
      v15 = *(v11 - 120);
      v16 = *(v11 - 104);
      *(v10 - 92) = *(v11 - 92);
      *(v10 - 104) = v16;
      *(v10 - 120) = v15;
      v17 = *(v11 - 72);
      *(v11 - 72) = 0;
      *(v10 - 9) = v17;
      *(v10 - 16) = *(v11 - 64);
      *(v10 - 14) = *(v11 - 56);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage((v10 - 48), (v11 - 48), v6, v7);
      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage((v10 - 24), (v11 - 24), v18, v19);
      v20 = *v11;
      *v11 = 0;
      *v10 = v20;
      *(v10 + 2) = *(v11 + 8);
      *(v10 + 2) = *(v11 + 16);
      *(v10 + 3) = 0;
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
      *(v10 + 3) = *(v11 + 24);
      *(v11 + 24) = 0;
      v21 = *(v10 + 4);
      v22 = *(v11 + 40);
      *(v10 + 4) = *(v11 + 32);
      *(v10 + 5) = v22;
      *(v11 + 32) = v21;
      *(v11 + 40) = 0;
      *(v10 + 6) = 0;
      *(v10 + 7) = 0;
      *(v10 + 8) = 0;
      *(v10 + 6) = *(v11 + 48);
      *(v11 + 48) = 0;
      v23 = *(v10 + 7);
      v24 = *(v11 + 64);
      *(v10 + 7) = *(v11 + 56);
      *(v10 + 8) = v24;
      *(v11 + 56) = v23;
      *(v11 + 64) = 0;
      *(v10 + 9) = 0;
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      *(v10 + 9) = *(v11 + 72);
      *(v11 + 72) = 0;
      v25 = *(v10 + 10);
      v26 = *(v11 + 88);
      *(v10 + 10) = *(v11 + 80);
      *(v10 + 11) = v26;
      *(v11 + 80) = v25;
      *(v11 + 88) = 0;
      *(v10 + 12) = 0;
      *(v10 + 13) = 0;
      *(v10 + 14) = 0;
      *(v10 + 12) = *(v11 + 96);
      *(v11 + 96) = 0;
      v27 = *(v10 + 13);
      v28 = *(v11 + 112);
      *(v10 + 13) = *(v11 + 104);
      *(v10 + 14) = v28;
      *(v11 + 104) = v27;
      *(v11 + 112) = 0;
      ++v8;
      v9 += 272;
      if (v8 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
  v29 = v32;
  v30 = v33;
  v32 = 0;
  v33 = 0;
  v31 = a1[2];
  a1[1] = v29;
  a1[2] = v30;
  if (v31)
  {
    free(v31);
    if (v33)
    {
      free(v33);
    }
  }
}

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::completion_ring_spec::parse(ashp::acipc::config::completion_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec>(ashp::dynamic_array<ashp::acipc::config::completion_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::completion_ring_spec::parse(ashp::acipc::config::completion_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec>(ashp::dynamic_array<ashp::acipc::config::completion_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    *&v74[16] = 0;
    *&v74[20] = 0;
    *&v74[24] = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v79 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v71 = 0u;
    v72 = 0u;
    LOWORD(v73) = 0;
    *(&v73 + 4) = 0;
    BYTE12(v73) = 0;
    *v74 = 0;
    *&v74[6] = 0;
    v90 = 0;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
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
        v95 = 0;
        if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v75, a2, @"resource", v10))
        {
          memset(v94, 0, sizeof(v94));
          v16 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>>(&v71 + 1, v94, a2, @"exec_stage", v10, &v95);
          ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(v94, v17, v18, v19, v20);
          if (v16)
          {
            if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v77, a2, @"id", v10))
            {
              if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v77 + 1, a2, @"index_array_vector", v10))
              {
                if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v73, a2, @"ring_size", v10))
                {
                  if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v73 + 1, 0, a2, @"header_size", v10, &v95))
                  {
                    if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v73 + 2, 0, a2, @"footer_size", v10, &v95))
                    {
                      v93[16] = 0;
                      v21 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(v78, v93, a2, @"group", v10, &v95);
                      ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v93, v22, v23, v24);
                      if (v21)
                      {
                        if (parse_field_with_default<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>(&v73 + 12, 0, a2, @"traffic_class", v10, &v95))
                        {
                          if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(v74, 0, a2, @"priority", v10, &v95))
                          {
                            v92[16] = 0;
                            v25 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(v80, v92, a2, @"doorbell", v10, &v95);
                            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v92, v26, v27, v28);
                            if (v25)
                            {
                              if (parse_field_with_default<&(ashp::acipc::config::doorbell_moderation_spec::parse(ashp::acipc::config::doorbell_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_moderation_spec>(&v74[4], a2, v10, &v95))
                              {
                                if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v82, a2, @"interrupt", v10))
                                {
                                  if (parse_field_with_default<&(ashp::acipc::config::interrupt_moderation_spec::parse(ashp::acipc::config::interrupt_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_moderation_spec>(&v74[12], a2, v10, &v95))
                                  {
                                    if (parse_field_with_default<&(ashp::acipc::config::accumulation_spec::parse(ashp::acipc::config::accumulation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::accumulation_spec>(&v74[20], a2, v10, &v95))
                                    {
                                      if (parse_field_with_default<&(ashp::acipc::config::completion_ring_spec::multi_config::parse(ashp::acipc::config::completion_ring_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec::multi_config>(&v84, a2, v10, &v95))
                                      {
                                        memset(v91, 0, sizeof(v91));
                                        v29 = parse_field_with_default<&(ashp::acipc::config::completion_ring_spec::constraint_config::parse(ashp::acipc::config::completion_ring_spec::constraint_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::completion_ring_spec::constraint_config>(&v84 + 1, v91, a2, v10, &v95);
                                        ashp::acipc::config::completion_ring_spec::constraint_config::~constraint_config(v91, v30, v31, v32, v33);
                                        if (v29)
                                        {
                                          v35 = ashp::boxed::dictionary::count(a2, v34, v14, v15);
                                          if (v95 + v35 == 17)
                                          {
                                            v39 = ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v91, cf, v36, v37);
                                            v40 = v71;
                                            *&v71 = *&v91[0];
                                            *&v91[0] = v40;
                                            ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v39, v41, v42, v43);
                                            v47 = **(a3 + 16);
                                            v48 = *v47;
                                            v49 = *v47 + 1;
                                            if (*v47 == -1)
                                            {
                                              ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v45);
                                              ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v70);
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
                                                  v51 = 8;
                                                }

                                                else
                                                {
                                                  v51 = v47[1];
                                                }

                                                if (v49 >= 9)
                                                {
                                                  do
                                                  {
                                                    if (is_mul_ok(v51, 3uLL))
                                                    {
                                                      v51 = (3 * v51) >> 1;
                                                    }

                                                    else
                                                    {
                                                      v51 = *v47 + 1;
                                                    }
                                                  }

                                                  while (v51 < v49);
                                                }

                                                if (v50 < v51)
                                                {
                                                  ashp::detail::dynamic_array::storage<ashp::acipc::config::completion_ring_spec>::set_capacity(v47, v51, v44, v45, v46);
                                                  v48 = *v47;
                                                  v50 = v47[1];
                                                }
                                              }

                                              if (v48 < v50)
                                              {
                                                v52 = v47[2];
                                                if (v52)
                                                {
                                                  v53 = v52 + 272 * v48;
                                                  v54 = v71;
                                                  *&v71 = 0;
                                                  *v53 = v54;
                                                  *(v53 + 8) = 0;
                                                  *(v53 + 16) = 0;
                                                  *(v53 + 24) = 0;
                                                  *(v53 + 8) = *(&v71 + 1);
                                                  *(&v71 + 1) = 0;
                                                  v55 = *(v53 + 16);
                                                  *(v53 + 16) = v72;
                                                  *&v72 = v55;
                                                  *(v53 + 24) = *(&v72 + 1);
                                                  *(&v72 + 1) = 0;
                                                  v56 = v73;
                                                  v57 = *v74;
                                                  *(v53 + 60) = *&v74[12];
                                                  *(v53 + 32) = v56;
                                                  *(v53 + 48) = v57;
                                                  v58 = v75;
                                                  v75 = 0;
                                                  *(v53 + 80) = v58;
                                                  *(v53 + 88) = v76;
                                                  *(v53 + 96) = v77;
                                                  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v53 + 104, v78, v44, v45);
                                                  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(v53 + 128, v80, v59, v60);
                                                  v65 = v82;
                                                  v82 = 0;
                                                  *(v53 + 152) = v65;
                                                  *(v53 + 160) = v83;
                                                  *(v53 + 168) = v84;
                                                  *(v53 + 176) = 0;
                                                  *(v53 + 184) = 0;
                                                  *(v53 + 192) = 0;
                                                  *(v53 + 176) = *(&v84 + 1);
                                                  *(&v84 + 1) = 0;
                                                  v66 = *(v53 + 184);
                                                  *(v53 + 184) = v85;
                                                  *&v85 = v66;
                                                  *(v53 + 192) = *(&v85 + 1);
                                                  *(&v85 + 1) = 0;
                                                  *(v53 + 200) = 0;
                                                  *(v53 + 208) = 0;
                                                  *(v53 + 216) = 0;
                                                  *(v53 + 200) = v86;
                                                  *&v86 = 0;
                                                  v67 = *(v53 + 208);
                                                  *(v53 + 208) = *(&v86 + 1);
                                                  *(&v86 + 1) = v67;
                                                  *(v53 + 216) = v87;
                                                  *&v87 = 0;
                                                  *(v53 + 224) = 0;
                                                  *(v53 + 232) = 0;
                                                  *(v53 + 240) = 0;
                                                  *(v53 + 224) = *(&v87 + 1);
                                                  *(&v87 + 1) = 0;
                                                  v68 = *(v53 + 232);
                                                  *(v53 + 232) = v88;
                                                  *&v88 = v68;
                                                  *(v53 + 240) = *(&v88 + 1);
                                                  *(&v88 + 1) = 0;
                                                  *(v53 + 248) = 0;
                                                  *(v53 + 256) = 0;
                                                  *(v53 + 264) = 0;
                                                  *(v53 + 248) = v89;
                                                  *&v89 = 0;
                                                  v69 = *(v53 + 256);
                                                  *(v53 + 256) = *(&v89 + 1);
                                                  *(&v89 + 1) = v69;
                                                  *(v53 + 264) = v90;
                                                  v90 = 0;
                                                  ++*v47;
LABEL_45:
                                                  ashp::acipc::config::completion_ring_spec::~completion_ring_spec(&v71, v61, v62, v63, v64);
                                                  return;
                                                }

LABEL_50:
                                                __break(1u);
                                                return;
                                              }
                                            }

                                            ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v46);
                                            _os_crash();
                                            goto LABEL_50;
                                          }

                                          set_error(v10, "unknown keys present", 0, v37, v38);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
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

    set_error_location(**(a3 + 8), cf, v14, v15);
    **a3 = 1;
    goto LABEL_45;
  }
}

void sub_23ECC8808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ashp::acipc::config::completion_ring_spec::constraint_config::~constraint_config((v9 - 256), a2, a3, a4, a5);
  ashp::acipc::config::completion_ring_spec::~completion_ring_spec(&a9, v11, v12, v13, v14);
  _Unwind_Resume(a1);
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 368 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::acipc::config::transfer_ring_spec::~transfer_ring_spec((v9 + v7), a2, a3, a4, a5);
      ++v8;
      v7 += 368;
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

void ashp::acipc::config::transfer_ring_spec::~transfer_ring_spec(ashp::acipc::config::transfer_ring_spec *this, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 43, a2, a3, a4, a5);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 40, v6, v7, v8, v9);
  ashp::detail::dynamic_array::storage<ashp::optional<ashp::acipc::config::named_target_spec::constraint,void>>::~storage(this + 37, v10, v11, v12, v13);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 34, v14, v15, v16, v17);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned int>>::~storage(this + 31, v18, v19, v20, v21);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::numeric_constraint<unsigned short>>::~storage(this + 28, v22, v23, v24, v25);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 24, v26, v27, v28);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 22, v29, v30, v31);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 152, v32, v33, v34);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(this + 128, v35, v36, v37);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this + 13, v38, v39, v40);
  if (*(this + 98) == 1)
  {
    *(this + 98) = 0;
  }

  ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(this + 1, v41, v42, v43, v44);
  ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(this, v45, v46, v47);
}

ashp::acipc::config::transfer_ring_spec::constraint_config *ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::append(ashp::acipc::config::transfer_ring_spec::constraint_config *result, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
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
  if ((*result + a3) <= *(result + 1))
  {
    v6 = a3;
    v22 = *result + a3;
    if (!a3)
    {
LABEL_9:
      *v5 = v22;
      return result;
    }

    v8 = 0;
    while (1)
    {
      v9 = *(v5 + 2) + 368 * *v5;
      if (!(v9 + v8))
      {
        break;
      }

      ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr((v9 + v8), *(a2 + v8), a3, a4);
      v10 = v9 + v8;
      ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::storage((v9 + v8 + 8), (a2 + v8 + 8), v11, v12);
      v15 = *(a2 + v8 + 32);
      v16 = *(a2 + v8 + 48);
      v17 = *(a2 + v8 + 80);
      *(v10 + 64) = *(a2 + v8 + 64);
      *(v10 + 80) = v17;
      *(v10 + 32) = v15;
      *(v10 + 48) = v16;
      *(v10 + 98) = 0;
      if (*(a2 + v8 + 98) == 1)
      {
        *(v9 + v8 + 96) = *(a2 + v8 + 96);
        *(v10 + 98) = 1;
      }

      v18 = v9 + v8;
      ashp::acipc::config::transfer_ring_spec::dynamic_config::dynamic_config(v9 + v8 + 104, a2 + v8 + 104, v13, v14);
      v19 = *(a2 + v8 + 208);
      *(v18 + 216) = *(a2 + v8 + 216);
      *(v18 + 208) = v19;
      result = ashp::acipc::config::transfer_ring_spec::constraint_config::constraint_config((v9 + v8 + 224), (a2 + v8 + 224), v20, v21);
      v8 += 368;
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

ashp::acipc::config::transfer_ring_spec::constraint_config *ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::storage(ashp::acipc::config::transfer_ring_spec::constraint_config *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  *a1 = 0;
  ashp::detail::dynamic_array::buffer<ashp::acipc::config::transfer_ring_spec>::buffer(a1 + 1, *a2, a3, a4);
  ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::append(a1, a2[2], *a2, v6, v7);
  return a1;
}

void sub_23ECC8BC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    free(v3);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

unint64_t *ashp::detail::dynamic_array::buffer<ashp::acipc::config::transfer_ring_spec>::buffer(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = a2;
  a1[1] = 0;
  if (!a2)
  {
    return a1;
  }

  if (is_mul_ok(a2, 0x170uLL))
  {
    v5 = malloc_type_aligned_alloc(8uLL, 368 * a2, 0x10600401573E783uLL);
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

void ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::set_capacity(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0xFF, "set_capacity", a5);
    _os_crash();
LABEL_11:
    __break(1u);
    return;
  }

  ashp::detail::dynamic_array::buffer<ashp::acipc::config::transfer_ring_spec>::buffer(&v13, a2, a3, a4);
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    while (v14)
    {
      ashp::acipc::config::transfer_ring_spec::transfer_ring_spec(v14 + v8, (a1[2] + v8), v6, v7);
      ++v9;
      v8 += 368;
      if (v9 >= *a1)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_11;
  }

LABEL_6:
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

void iterate_dict<BOOL parse_dict<&(ashp::acipc::config::transfer_ring_spec::parse(ashp::acipc::config::transfer_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec>(ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1},0>(ashp::boxed::dictionary,BOOL parse_dict<&(ashp::acipc::config::transfer_ring_spec::parse(ashp::acipc::config::transfer_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec>(ashp::dynamic_array<ashp::acipc::config::transfer_ring_spec> *,ashp::boxed::object,ashp::acipc::config::error_context *)::{lambda(ashp::boxed::object,ashp::boxed::object)#1})::{lambda(void const*,void const*,void *)#1}::__invoke(CFTypeRef cf, void *a2, uint64_t a3, const char *a4, const char *a5)
{
  if ((**a3 & 1) == 0)
  {
    if (!cf || (v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
    {
      set_error(**(a3 + 8), "bad key", 0, a4, a5);
      **a3 = 1;
      return;
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67[0] = 0;
    v68 = 0;
    v69[2] = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73[16] = 0;
    v74[16] = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    memset(v81, 0, sizeof(v81));
    v58[0] = 0;
    memset(v57, 0, sizeof(v57));
    v59 = 0;
    memset(v60, 0, 15);
    v61 = 0;
    v62 = 0;
    v63 = 0;
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
        v88 = 0;
        if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v70, a2, @"resource", v10))
        {
          memset(v87, 0, sizeof(v87));
          v16 = parse_field_with_default<&(BOOL parse_array_or_singleton<&(parse_symbol(ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>(ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::dynamic_array<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>>(v57 + 1, v87, a2, @"exec_stage", v10, &v88);
          ashp::detail::dynamic_array::storage<ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>>::~storage(v87, v17, v18, v19, v20);
          if (v16)
          {
            if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v72, a2, @"id", v10))
            {
              if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(&v72 + 1, a2, @"index_array_vector", v10))
              {
                if (parse_field<&(BOOL parse_number<unsigned short>(unsigned short *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned short>(v58, a2, @"ring_size", v10))
                {
                  if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v59, 0, a2, @"transfer_header_size", v10, &v88))
                  {
                    if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v59 + 1, 0, a2, @"transfer_footer_size", v10, &v88))
                    {
                      if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(v60, 0, a2, @"completion_header_size", v10, &v88))
                      {
                        if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v60[1], 0, a2, @"completion_footer_size", v10, &v88))
                        {
                          if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v60[2], 0, a2, @"nominal_transfer_size", v10, &v88))
                          {
                            v86[16] = 0;
                            v21 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(v73, v86, a2, @"completion_ring", v10, &v88);
                            ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v86, v22, v23, v24);
                            if (v21)
                            {
                              v85[16] = 0;
                              v25 = parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(ashp::optional<ashp::acipc::config::named_target_spec,ashp::optional_traits<ashp::acipc::config::named_target_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::named_target_spec,void>>(v74, v85, a2, @"completion_group", v10, &v88);
                              ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::reset(v85, v26, v27, v28);
                              if (v25)
                              {
                                if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v60[3], 0, a2, @"out_of_order", v10, &v88))
                                {
                                  if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v60[3] + 1, 0, a2, @"in_place", v10, &v88))
                                  {
                                    if (parse_field_with_default<&(BOOL parse_number<unsigned char>(unsigned char *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned char>(&v60[3] + 2, 0, a2, @"traffic_class", v10, &v88))
                                    {
                                      if (parse_field_with_default<&(BOOL parse_number<unsigned int>(unsigned int *,ashp::boxed::object,ashp::acipc::config::error_context *)),unsigned int>(&v61, 0, a2, @"priority", v10, &v88))
                                      {
                                        if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v61 + 4, 1, a2, @"optimized_completion", v10, &v88))
                                        {
                                          if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v61 + 5, 0, a2, @"reliable", v10, &v88))
                                          {
                                            if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v61 + 6, 0, a2, @"virtual", v10, &v88))
                                            {
                                              if (parse_field_with_default<&(parse_BOOL(BOOL *,ashp::boxed::object,ashp::acipc::config::error_context *)),BOOL>(&v61 + 7, 0, a2, @"synchronized", v10, &v88))
                                              {
                                                if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v75, a2, @"doorbell", v10))
                                                {
                                                  if (parse_field_with_default<&(ashp::acipc::config::doorbell_moderation_spec::parse(ashp::acipc::config::doorbell_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::doorbell_moderation_spec>(&v62, a2, v10, &v88))
                                                  {
                                                    if (parse_field<&(ashp::acipc::config::named_target_spec::parse(ashp::acipc::config::named_target_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::named_target_spec>(&v77, a2, @"interrupt", v10))
                                                    {
                                                      if (parse_field_with_default<&(ashp::acipc::config::interrupt_moderation_spec::parse(ashp::acipc::config::interrupt_moderation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::interrupt_moderation_spec>(&v63, a2, v10, &v88))
                                                      {
                                                        if (parse_field_with_default<&(ashp::acipc::config::accumulation_spec::parse(ashp::acipc::config::accumulation_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::accumulation_spec>(&v65, a2, v10, &v88))
                                                        {
                                                          v84 = 0;
                                                          if (parse_field_with_default<&(BOOL parse_optional<&(ashp::acipc::config::transfer_ring_spec::buffer_size_ring_spec::parse(ashp::acipc::config::transfer_ring_spec::buffer_size_ring_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec::buffer_size_ring_spec>(ashp::optional<ashp::acipc::config::transfer_ring_spec::buffer_size_ring_spec,ashp::optional_traits<ashp::acipc::config::transfer_ring_spec::buffer_size_ring_spec,void>::default_sentinel> *,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::optional<ashp::acipc::config::transfer_ring_spec::buffer_size_ring_spec,void>>(v69, &v83, a2, v10, &v88))
                                                          {
                                                            if (parse_field_with_default<&(ashp::acipc::config::transfer_ring_spec::multi_config::parse(ashp::acipc::config::transfer_ring_spec::multi_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec::multi_config>(&v79, a2, v10, &v88))
                                                            {
                                                              memset(v82, 0, sizeof(v82));
                                                              v29 = parse_field_with_default<&(ashp::acipc::config::transfer_ring_spec::constraint_config::parse(ashp::acipc::config::transfer_ring_spec::constraint_config*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::transfer_ring_spec::constraint_config>(v81, v82, a2, v10, &v88);
                                                              ashp::acipc::config::transfer_ring_spec::constraint_config::~constraint_config(v82, v30, v31, v32, v33);
                                                              if (v29)
                                                              {
                                                                if (parse_field_with_default<&(ashp::acipc::config::tr_debug_spec::parse(ashp::acipc::config::tr_debug_spec*,ashp::boxed::object,ashp::acipc::config::error_context *)),ashp::acipc::config::tr_debug_spec>(v67, a2, v10, &v88))
                                                                {
                                                                  v35 = ashp::boxed::dictionary::count(a2, v34, v14, v15);
                                                                  if (v88 + v35 == 29)
                                                                  {
                                                                    ashp::refcounted_ptr<ashp::boxed::data,ashp::cf::refcount_policy>::refcounted_ptr(v82, cf, v36, v37);
                                                                    v39 = *&v57[0];
                                                                    *&v57[0] = *&v82[0];
                                                                    *&v82[0] = v39;
                                                                    ashp::refcounted_ptr<ashp::boxed::symbol,ashp::cf::refcount_policy>::reset(v82, v40, v41, v42);
                                                                    v46 = **(a3 + 16);
                                                                    v47 = *v46;
                                                                    v48 = *v46 + 1;
                                                                    if (*v46 == -1)
                                                                    {
                                                                      ashp::detail::control_flow::log_guard_else_failure("dynamic_array.hpp", 0x2DA, "ensure_free_space", v44);
                                                                      ashp::detail::base::log_pre_crash_message("ALLOCATION FAILURE (or BUG) in Airship", "dynamic_array.hpp", 0x2DA, "ensure_free_space", v56);
                                                                      _os_crash();
                                                                      __break(1u);
                                                                    }

                                                                    else
                                                                    {
                                                                      v49 = v46[1];
                                                                      if (v48 > v49)
                                                                      {
                                                                        if (v49 <= 8)
                                                                        {
                                                                          v50 = 8;
                                                                        }

                                                                        else
                                                                        {
                                                                          v50 = v46[1];
                                                                        }

                                                                        if (v48 >= 9)
                                                                        {
                                                                          do
                                                                          {
                                                                            if (is_mul_ok(v50, 3uLL))
                                                                            {
                                                                              v50 = (3 * v50) >> 1;
                                                                            }

                                                                            else
                                                                            {
                                                                              v50 = *v46 + 1;
                                                                            }
                                                                          }

                                                                          while (v50 < v48);
                                                                        }

                                                                        if (v49 < v50)
                                                                        {
                                                                          ashp::detail::dynamic_array::storage<ashp::acipc::config::transfer_ring_spec>::set_capacity(v46, v50, v43, v44, v45);
                                                                          v47 = *v46;
                                                                          v49 = v46[1];
                                                                        }
                                                                      }

                                                                      if (v47 < v49)
                                                                      {
                                                                        v51 = v46[2];
                                                                        if (v51)
                                                                        {
                                                                          ashp::acipc::config::transfer_ring_spec::transfer_ring_spec(v51 + 368 * v47, v57, v43, v44);
                                                                          ++*v46;
LABEL_57:
                                                                          ashp::acipc::config::transfer_ring_spec::~transfer_ring_spec(v57, v52, v53, v54, v55);
                                                                          return;
                                                                        }

LABEL_62:
                                                                        __break(1u);
                                                                        return;
                                                                      }
                                                                    }

                                                                    ashp::detail::base::log_pre_crash_message("BUG in Airship: ", "dynamic_array.hpp", 0x128, "emplace_back", v45);
                                                                    _os_crash();
                                                                    goto LABEL_62;
                                                                  }

                                                                  set_error(v10, "unknown keys present", 0, v37, v38);
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
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

    set_error_location(**(a3 + 8), cf, v14, v15);
    **a3 = 1;
    goto LABEL_57;
  }
}

void sub_23ECC94E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  ashp::acipc::config::transfer_ring_spec::constraint_config::~constraint_config(va, a2, a3, a4, a5);
  ashp::acipc::config::transfer_ring_spec::~transfer_ring_spec(&a9, v55, v56, v57, v58);
  _Unwind_Resume(a1);
}

uint64_t ashp::acipc::config::transfer_ring_spec::transfer_ring_spec(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 16);
  v8 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  a2[2] = v7;
  a2[3] = 0;
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  v11 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v9;
  *(a1 + 98) = 0;
  if (*(a2 + 98) == 1)
  {
    *(a1 + 96) = *(a2 + 48);
    *(a1 + 98) = 1;
    if (*(a2 + 98) == 1)
    {
      *(a2 + 98) = 0;
    }
  }

  v12 = a2[13];
  a2[13] = 0;
  *(a1 + 104) = v12;
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 120) = *(a2 + 30);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 128, a2 + 16, a3, a4);
  ashp::unsafe_storage<ashp::acipc::config::named_target_spec>::storage::storage(a1 + 152, a2 + 19, v13, v14);
  v15 = a2[22];
  a2[22] = 0;
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 46);
  v16 = a2[24];
  a2[24] = 0;
  *(a1 + 192) = v16;
  *(a1 + 200) = *(a2 + 50);
  v17 = a2[26];
  *(a1 + 216) = *(a2 + 54);
  *(a1 + 208) = v17;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 224) = a2[28];
  a2[28] = 0;
  v18 = *(a1 + 232);
  v19 = a2[30];
  *(a1 + 232) = a2[29];
  *(a1 + 240) = v19;
  a2[29] = v18;
  a2[30] = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a2[31];
  a2[31] = 0;
  v20 = *(a1 + 256);
  v21 = a2[33];
  *(a1 + 256) = a2[32];
  *(a1 + 264) = v21;
  a2[32] = v20;
  a2[33] = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = a2[34];
  a2[34] = 0;
  v22 = *(a1 + 280);
  v23 = a2[36];
  *(a1 + 280) = a2[35];
  *(a1 + 288) = v23;
  a2[35] = v22;
  a2[36] = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = a2[37];
  a2[37] = 0;
  v24 = *(a1 + 304);
  v25 = a2[39];
  *(a1 + 304) = a2[38];
  *(a1 + 312) = v25;
  a2[38] = v24;
  a2[39] = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = a2[40];
  a2[40] = 0;
  v26 = *(a1 + 328);
  v27 = a2[42];
  *(a1 + 328) = a2[41];
  *(a1 + 336) = v27;
  a2[41] = v26;
  a2[42] = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = a2[43];
  a2[43] = 0;
  v28 = *(a1 + 352);
  v29 = a2[45];
  *(a1 + 352) = a2[44];
  *(a1 + 360) = v29;
  a2[44] = v28;
  a2[45] = 0;
  return a1;
}

void ashp::detail::dynamic_array::storage<ashp::acipc::config::main_ipc_stage_spec>::reduce_size(unint64_t *a1, unint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (*a1 >= a2)
  {
    if (*a1 <= a2)
    {
LABEL_6:
      *a1 = a2;
      return;
    }

    v7 = 304 * a2;
    v8 = a2;
    while (1)
    {
      v9 = a1[2];
      if (!v9)
      {
        break;
      }

      ashp::acipc::config::main_ipc_stage_spec::~main_ipc_stage_spec((v9 + v7), a2, a3, a4);
      ++v8;
      v7 += 304;
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