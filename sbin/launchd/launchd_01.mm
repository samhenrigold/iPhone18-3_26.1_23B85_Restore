xpc_object_t sub_1000110AC(unint64_t a1, uint64_t a2)
{
  v13 = 0uLL;
  v14 = 0;
  v12 = 1;
  v2 = sub_1000528BC(&qword_1000782C8, &v12, &v13, a1, a1 + a2);
  result = 0;
  if (v2 == &unk_10007A840)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = v13;
    *&v5 = v14;
    if (sub_100052B74(&qword_1000782C8, &v4, &v8) == &unk_10007A840)
    {
      v4 = v8;
      v5 = v9;
      v6 = v10;
      v7 = v11;
      return sub_10000FE78(&v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xpc_object_t sub_100011184(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  *(&v15 + 1) = 0;
  v6 = sub_1000112A8(a1, a2, &v15 + 1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *&v15 = 0;
  v8 = sub_1000112A8(a3, a4, &v15);
  if (v8)
  {
    v9 = v8;
    if (v15 == 0)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(empty, "$and", v9);
      v12 = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(v12, "$and", v7);
      xpc_dictionary_set_value(v12, "$or", empty);
      xpc_release(empty);
      v13 = sub_100010D84(1, 0, v12);
      xpc_release(v12);
      v10 = sub_100010E34(v13);
      xpc_release(v13);
    }

    else
    {
      v10 = 0;
    }

    xpc_release(v7);
  }

  else
  {
    v10 = 0;
    v9 = v7;
  }

  xpc_release(v9);
  return v10;
}

xpc_object_t sub_1000112A8(unint64_t a1, uint64_t a2, int64_t *a3)
{
  v4 = sub_1000110AC(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  value = xpc_dictionary_get_value(v4, "reqs");
  v7 = value;
  if (value)
  {
    xpc_retain(value);
  }

  *a3 = xpc_dictionary_get_int64(v5, "ccat");
  xpc_release(v5);
  return v7;
}

uint64_t sub_100011320(void *a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 4;
  v4 = sub_100010BC8(a1);
  v14 = 0;
  v15 = 0;
  bytes = 7;
  v13 = 0;
  xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_10001143C;
  applier[3] = &unk_100078340;
  applier[5] = a2;
  applier[6] = a1;
  applier[4] = &v8;
  xpc_array_apply(v4, applier);
  xpc_release(v4);
  v5 = *(v9 + 6);
  if (!v5)
  {
    v14 = 0;
    v15 = 0;
    bytes = 8;
    v13 = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_10001143C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v21 = 0;
  v22 = 0;
  bytes = 5;
  v20 = 0;
  xpc_array_set_data(v5, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  string_ptr = xpc_string_get_string_ptr(a3);
  v16[3] = 0;
  v16[0] = 3;
  v16[1] = sub_1000166EC(string_ptr);
  v16[2] = xpc_string_get_length(a3);
  xpc_array_set_data(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v16, 0x20uLL);
  v7 = *(a1 + 48);
  v8 = xpc_string_get_string_ptr(a3);
  value = xpc_dictionary_get_value(v7, v8);
  if (value)
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_100011674(value, *(a1 + 40));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      bytes = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        v20 = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        shared_cache_range = _dyld_get_shared_cache_range();
      }

      else
      {
        shared_cache_range = 0;
        v17 = 0;
        v18 = 0;
      }

      v14 = xpc_string_get_string_ptr(a3);
      _os_log_simple(&_mh_execute_header, &bytes, &v17, shared_cache_range, 16, 0, "failed to serialized value for key: %s", v14);
      return 0;
    }

    else
    {
      v12 = *(a1 + 40);
      v21 = 0;
      v22 = 0;
      bytes = 6;
      v20 = 0;
      xpc_array_set_data(v12, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      return 1;
    }
  }

  else
  {
    bytes = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      bytes = 0;
      v20 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      v11 = _dyld_get_shared_cache_range();
    }

    else
    {
      v11 = 0;
      v17 = 0;
      v18 = 0;
    }

    v15 = xpc_string_get_string_ptr(a3);
    _os_log_simple(&_mh_execute_header, &bytes, &v17, v11, 16, 0, "no value for key: %s", v15);
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  return result;
}

uint64_t sub_100011674(void *a1, void *a2)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_string)
  {
    v18 = 0;
    bytes = 2;
    string_ptr = xpc_string_get_string_ptr(a1);
    length = xpc_string_get_length(a1);
LABEL_12:
    v17 = length;
LABEL_16:
    LOBYTE(v18) = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    return 0;
  }

  v5 = type;
  if (type == &_xpc_type_int64)
  {
    bytes = 4;
    v18 = 0;
    string_ptr = xpc_int64_get_value(a1);
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (type == &_xpc_type_BOOL)
  {
    bytes = 1;
    v18 = 0;
    string_ptr = xpc_BOOL_get_value(a1);
    goto LABEL_15;
  }

  if (type == &_xpc_type_data)
  {
    v18 = 0;
    bytes = 9;
    string_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    goto LABEL_12;
  }

  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_array)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 4;
      v17 = 0;
      v18 = 0;
      bytes = 5;
      string_ptr = 0;
      xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      bytes = _NSConcreteStackBlock;
      string_ptr = 0x40000000;
      v17 = sub_100011980;
      v18 = &unk_100078368;
      v19 = &v11;
      v20 = a2;
      xpc_array_apply(a1, &bytes);
      v8 = *(v12 + 6);
      if (!v8)
      {
        v23 = 0;
        v24 = 0;
        v21 = 6;
        v22 = 0;
        xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &v21, 0x20uLL);
        v8 = *(v12 + 6);
      }

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      bytes = 0;
      string_ptr = 0;
      v21 = 0;
      v22 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        string_ptr = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v11 = 0;
        shared_cache_range = _dyld_get_shared_cache_range();
      }

      else
      {
        shared_cache_range = 0;
        v21 = 0;
        v22 = 0;
      }

      name = xpc_type_get_name(v5);
      _os_log_simple(&_mh_execute_header, &bytes, &v21, shared_cache_range, 16, 0, "unsupported type: %s", name);
      return 1;
    }

    return v8;
  }

  return sub_100011320(a1, a2);
}

uint64_t sub_1000119CC(uint64_t a1, uint64_t a2, xpc_object_t xdata)
{
  v3 = (*(a1 + 32) + 32 * a2);
  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  v5 = bytes_ptr[1];
  *v3 = *bytes_ptr;
  v3[1] = v5;
  return 1;
}

void *sub_100011A04()
{
  v0 = sub_100014514(0x18uLL, 0x80040D6874129uLL);
  os_map_str_init();
  return v0;
}

_DWORD *sub_100011A4C(uint64_t a1, const char *a2)
{
  v3 = os_map_str_find();
  if (v3)
  {
    ++*v3;
    return v3 + 1;
  }

  v5 = strlen(a2);
  v6 = v5 + 4;
  v7 = v5 >= 0xFFFFFFFFFFFFFFFCLL;
  result = (v5 + 5);
  v9 = ((v6 == -1) << 63) >> 63 != (v6 == -1);
  if (!v7 && !v9)
  {
    v10 = sub_100014514(result, 0x66FC508FuLL);
    v4 = v10 + 1;
    v11 = strlen(a2);
    memcpy(v10 + 1, a2, v11);
    *v10 = 1;
    os_map_str_insert();
    return v4;
  }

  __break(1u);
  return result;
}

void sub_100011B10(uint64_t a1, uint64_t a2)
{
  v2 = os_map_str_find();
  if (!v2)
  {
    sub_1000545D8();
  }

  v3 = v2;
  if ((*v2)-- == 1)
  {
    os_map_str_delete();

    free(v3);
  }
}

void sub_100011B8C(void *a1)
{
  if (os_map_str_count())
  {
    sub_1000545F4();
  }

  os_map_str_destroy();

  free(a1);
}

uint64_t sub_100011BD4()
{
  sub_10004AB38(12, sub_100011C28);
  qword_10007DF60 = 0;
  qword_10007DF68 = 0;
  qword_10007DF70 = 0x900000000;

  return sub_100011DA0(0);
}

uint64_t sub_100011C28(uint64_t a1, int a2, void *a3)
{
  v5 = sub_10004AB10();
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(v5, 40))
  {
    return 144;
  }

  if (a2 != 1300)
  {
    return 33;
  }

  memset(v13, 0, sizeof(v13));
  v6 = sub_100045C2C(v5, v13);
  sub_100012594(5, "trial factors reload initiated by %s[%d]", v6, *(v5 + 5));
  v7 = xpc_retain(a3);
  reply = xpc_dictionary_create_reply(v7);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(reply, "reload-error", 0);
  xpc_dictionary_set_value(reply, "errors", empty);
  xpc_release(empty);
  v10 = sub_1000157E4();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000125D8;
  block[3] = &unk_1000783A8;
  block[4] = v7;
  block[5] = reply;
  dispatch_async(v10, block);
  return 0;
}

uint64_t sub_100011DA0(void *a1)
{
  sub_100010B28(570425440);
  v2 = sub_10001C850("/System/Library/Trial/AllowedFactorsAndDefaults");
  count = xpc_array_get_count(v2);
  sub_100012594(5, "reading known trial factors from %zu paths", count);
  if (xpc_array_get_count(v2))
  {
    v4 = 0;
    do
    {
      string = xpc_array_get_string(v2, v4);
      sub_100012594(5, "  [%zu] => %s", v4++, string);
    }

    while (v4 < xpc_array_get_count(v2));
  }

  empty = xpc_array_create_empty();
  if (xpc_array_get_count(v2))
  {
    v7 = 0;
    while (1)
    {
      LODWORD(v25) = 0;
      v8 = xpc_array_get_string(v2, v7);
      v9 = sub_10001C9BC(v8, &v25);
      if (v9)
      {
        break;
      }

      sub_100012594(3, "failed to read known factors plist from %s: %d", v8, v25);
      v11 = v25;
LABEL_12:
      sub_100012634(a1, v8, v11);
LABEL_13:
      if (++v7 >= xpc_array_get_count(v2))
      {
        goto LABEL_18;
      }
    }

    v10 = v9;
    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      v11 = sub_10001271C(v10);
      if (v11)
      {
        goto LABEL_11;
      }

      array = xpc_dictionary_get_array(v10, "KnownFactors");
      if (array && sub_100016B6C(array))
      {
        LODWORD(v25) = 0;
        v14 = xpc_dictionary_get_array(v10, "KnownFactors");
        applier = _NSConcreteStackBlock;
        v30 = 0x40000000;
        v31 = sub_10001277C;
        v32 = &unk_1000783C8;
        v33 = empty;
        xpc_array_apply(v14, &applier);
        xpc_release(v10);
        goto LABEL_13;
      }
    }

    v11 = 109;
LABEL_11:
    v12 = xpc_strerror();
    sub_100012594(3, "failed to validate known factors plist from %s: %s: %d", v8, v12, v11);
    xpc_release(v10);
    LODWORD(v25) = v11;
    goto LABEL_12;
  }

LABEL_18:
  sub_100012594(5, "reading active trial factors from %s", "/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist");
  v24 = 0;
  v15 = sub_10001CA3C("/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist", &v24);
  v16 = v15;
  if (!v24)
  {
    if (xpc_get_type(v15) == &_xpc_type_dictionary)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2000000000;
      v28 = sub_10001271C(v16);
      v17 = *(v26 + 6);
      if (!v17)
      {
        dictionary = xpc_dictionary_get_dictionary(v16, "ActiveLowLevelFactors");
        if (dictionary)
        {
          applier = _NSConcreteStackBlock;
          v30 = 0x40000000;
          v31 = sub_1000127C8;
          v32 = &unk_1000783F0;
          v33 = &v25;
          v34 = empty;
          xpc_dictionary_apply(dictionary, &applier);
          v17 = *(v26 + 6);
          _Block_object_dispose(&v25, 8);
          v24 = v17;
          if (!v17)
          {
            goto LABEL_27;
          }

LABEL_26:
          sub_100012634(a1, "/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist", v17);
          xpc_release(v16);
          v16 = 0;
          goto LABEL_27;
        }

        v17 = 109;
      }

      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v17 = 109;
    }

    v24 = v17;
    goto LABEL_26;
  }

  if (v15)
  {
    sub_100054404();
  }

  sub_100012634(a1, "/private/var/mobile/Library/Trial/NamespaceDescriptors/v2/activeLowLevelFactors.plist", v24);
LABEL_27:
  if (xpc_get_type(empty) != &_xpc_type_array)
  {
    sub_100054404();
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  v18 = xpc_dictionary_get_dictionary(v16, "ActiveLowLevelFactors");
  if (!v18)
  {
    sub_100054404();
  }

  v19 = v18;
  v20 = xpc_dictionary_create_empty();
  applier = _NSConcreteStackBlock;
  v30 = 0x40000000;
  v31 = sub_100012880;
  v32 = &unk_100078410;
  v33 = empty;
  v34 = v20;
  if (!xpc_dictionary_apply(v19, &applier))
  {
    xpc_release(v20);
LABEL_32:
    v20 = 0;
  }

  os_unfair_lock_lock(&unk_10007DF78);
  v21 = qword_10007DF60;
  qword_10007DF60 = v20;
  ++qword_10007DF68;
  os_unfair_lock_unlock(&unk_10007DF78);
  xpc_release(v2);
  xpc_release(empty);
  if (v16)
  {
    xpc_release(v16);
  }

  if (v21)
  {
    xpc_release(v21);
  }

  return sub_100010B28(570425444);
}

void sub_10001224C(uint64_t a1)
{
  os_unfair_lock_lock(&unk_10007DF78);
  if (qword_10007DF60)
  {
    v2 = *(a1 + 256);
    if (!v2)
    {
      v2 = a1;
    }

    v3 = *(v2 + 576);
    v4 = (v2 + 1424);
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    value = xpc_dictionary_get_value(qword_10007DF60, v5);
    if (value)
    {
      v7 = value;
      v13 = 0;
      empty = xpc_array_create_empty();
      v14 = _NSConcreteStackBlock;
      v15 = 0x40000000;
      v16 = sub_100012B2C;
      v17 = &unk_100078478;
      v18 = &qword_10007DF60;
      v19 = a1;
      v20 = &v13;
      v21 = empty;
      sub_100012A94(v7, &v14);
      v9 = HIDWORD(v13);
      *(a1 + 1212) = HIDWORD(v13);
      LODWORD(qword_10007DF70) = qword_10007DF70 + v9;
      v11 = sub_10000FC98(0x80uLL, v10);
      v14 = _NSConcreteStackBlock;
      v15 = 0x40000000;
      v16 = sub_100012C50;
      v17 = &unk_1000784C0;
      v18 = empty;
      v19 = v11;
      sub_100012A94(empty, &v14);
      v12 = sub_10000FCFC(v11);
      sub_10000FD04(v11);
      if (v12 && *v12)
      {
        sub_100002C64(a1, "__TRIFactors", v12, 0);
      }

      free(v12);
      xpc_release(empty);
    }
  }

  os_unfair_lock_unlock(&unk_10007DF78);
}

void sub_1000123F4(uint64_t a1)
{
  os_unfair_lock_lock(&unk_10007DF78);
  LODWORD(qword_10007DF70) = qword_10007DF70 - *(a1 + 1212);
  *(a1 + 1212) = 0;
  v2 = (a1 + 1024);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (sub_1000169A8(v2 + 32, "__TRIFactors="))
    {
      sub_100002BD0(a1, v2);
      break;
    }
  }

  os_unfair_lock_unlock(&unk_10007DF78);
}

void sub_100012488(FILE *a1, uint64_t a2)
{
  os_unfair_lock_lock(&unk_10007DF78);
  sub_100049ECC(a1, a2, "trial factors reloads = %zu", v4, v5, v6, v7, v8, qword_10007DF68);
  sub_100049ECC(a1, a2, "trial factors memory = %d/%d", v9, v10, v11, v12, v13, qword_10007DF70, HIDWORD(qword_10007DF70));
  sub_100049ECC(a1, a2, "trial factors = {", v14, v15, v16, v17, v18);
  if (qword_10007DF60)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100012CBC;
    applier[3] = &unk_100078500;
    applier[4] = a1;
    applier[5] = a2;
    xpc_dictionary_apply(qword_10007DF60, applier);
  }

  sub_100049ECC(a1, a2, "}", v19, v20, v21, v22, v23);
  os_unfair_lock_unlock(&unk_10007DF78);
}

void sub_1000125D8(uint64_t a1)
{
  sub_100011DA0(*(a1 + 40));
  xpc_release(*(a1 + 32));
  v2 = xpc_pipe_routine_reply();
  xpc_release(*(a1 + 40));
  if ((v2 | 0x20) != 0x20)
  {
    _os_assumes_log();
  }
}

void sub_100012634(void *a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100054404();
  }

  v3 = a3;
  v6 = xpc_strerror();
  sub_100012594(4, "failed to process path: %s: %s: %d", a2, v6, v3);
  if (a1)
  {
    dictionary = xpc_dictionary_get_dictionary(a1, "errors");
    int64 = xpc_dictionary_get_int64(a1, "reload-error");
    xpc_dictionary_set_int64(dictionary, a2, v3);
    if (int64)
    {
      v9 = 133;
    }

    else
    {
      v9 = v3;
    }

    xpc_dictionary_set_int64(a1, "reload-error", v9);
  }
}

uint64_t sub_10001271C(void *a1)
{
  result = xpc_dictionary_get_value(a1, "Version");
  if (result)
  {
    v2 = result;
    if (xpc_get_type(result) == &_xpc_type_int64)
    {
      if (xpc_int64_get_value(v2) == 1)
      {
        return 0;
      }

      else
      {
        return 45;
      }
    }

    else
    {
      return 109;
    }
  }

  return result;
}

uint64_t sub_10001277C(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if ((sub_100016AEC(*(a1 + 32), string_ptr) & 1) == 0)
  {
    xpc_array_append_value(*(a1 + 32), xstring);
  }

  return 1;
}

uint64_t sub_1000127C8(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_array && sub_100016B6C(object))
  {
    if (!xpc_array_get_count(object))
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v6 = *(a1 + 40);
      string = xpc_array_get_string(object, v5);
      if ((sub_100016AEC(v6, string) & 1) == 0)
      {
        break;
      }

      if (++v5 >= xpc_array_get_count(object))
      {
        return 1;
      }
    }

    v9 = 22;
  }

  else
  {
    v9 = 109;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = v9;
  return result;
}

uint64_t sub_100012880(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    sub_100054404();
  }

  v6 = *(a1 + 32);
  empty = xpc_array_create_empty();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_100012970;
  v9[3] = &unk_100078430;
  v9[4] = v6;
  v9[5] = empty;
  if (xpc_array_apply(object, v9))
  {
    if (empty)
    {
      xpc_dictionary_set_value(*(a1 + 40), a2, empty);
      xpc_release(empty);
      return 1;
    }
  }

  else
  {
    xpc_release(empty);
  }

  return 0;
}

BOOL sub_100012970(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    sub_100054404();
  }

  v5 = *(a1 + 32);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100012A50;
  v8[3] = &unk_100078458;
  v8[4] = &v9;
  v8[5] = object;
  xpc_array_apply(v5, v8);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  if (v6)
  {
    xpc_array_append_value(*(a1 + 40), v6);
  }

  return v6 != 0;
}

BOOL sub_100012A50(uint64_t a1, int a2, xpc_object_t object1)
{
  v5 = xpc_equal(object1, *(a1 + 40));
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = object1;
  }

  return !v5;
}

BOOL sub_100012A94(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) != &_xpc_type_array)
  {
    sub_100054404();
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100012BD4;
  applier[3] = &unk_1000784A0;
  applier[4] = a2;
  return xpc_array_apply(a1, applier);
}

uint64_t sub_100012B2C(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *v6;
  if ((*v6 & 1) != 0 || (v8 = *(a1 + 40), !sub_100016A4C(a3, "SanitizersAllocationTraces")))
  {
    v9 = 0;
  }

  else
  {
    if ((*(v8 + 1416) & 4) == 0)
    {
      return 1;
    }

    v7 = 1;
    v9 = 9;
  }

  if (*(v5 + 20) - *(v5 + 16) >= v9)
  {
    *v6 = v7;
    *(v6 + 4) = sub_100017160(*(v6 + 4), v9);
    xpc_array_set_string(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, a3);
  }

  return 1;
}

uint64_t sub_100012BD4(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    sub_100054404();
  }

  v6 = *(a1 + 32);
  string_ptr = xpc_string_get_string_ptr(object);
  v8 = *(v6 + 16);

  return v8(v6, a2, string_ptr);
}

uint64_t sub_100012C50(uint64_t a1, size_t a2)
{
  if (xpc_array_get_count(*(a1 + 32)) - 1 <= a2)
  {
    sub_10000FD40(*(a1 + 40), "%s");
  }

  else
  {
    sub_10000FD40(*(a1 + 40), "%s ");
  }

  return 1;
}

uint64_t sub_100012CBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100049ECC(*(a1 + 32), *(a1 + 40) + 1, "%s =>", a4, a5, a6, a7, a8, a2);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100012D60;
  applier[3] = &unk_1000784E0;
  v10 = *(a1 + 40);
  applier[4] = *(a1 + 32);
  applier[5] = v10;
  xpc_array_apply(a3, applier);
  return 1;
}

uint64_t sub_100012D60(uint64_t a1, uint64_t a2, xpc_object_t xstring)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  string_ptr = xpc_string_get_string_ptr(xstring);
  sub_100049ECC(v4, v5 + 2, "[%zu] => %s", v7, v8, v9, v10, v11, a2, string_ptr);
  return 1;
}

void sub_100012DB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 2)
  {
    sub_100054404();
  }

  if (*(a1 + 32))
  {
    sub_100054404();
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  v3 = *(a1 + 64);

  free(v3);
}

_BYTE *sub_100012E18(uint64_t a1, const char *a2, const char *a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    sub_100054404();
  }

  v10 = sub_10001BFF8(0);
  v10[16] = 0;
  *(v10 + 5) = a4;
  *(v10 + 3) = a1;
  *(v10 + 4) = 1;
  *(v10 + 10) = -1;
  *(v10 + 6) = 0;
  if (a2)
  {
    *(v10 + 6) = sub_1000166EC(a2);
  }

  *(v10 + 7) = 0;
  if (a3)
  {
    *(v10 + 7) = sub_1000166EC(a3);
  }

  *(v10 + 8) = 0;
  *(v10 + 9) = a5;
  return v10;
}

uint64_t sub_100012EB4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    sub_100054404();
  }

  if (*(result + 16))
  {
    sub_100054404();
  }

  *(result + 32) = v2 + 1;
  return result;
}

uint64_t sub_100012EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100054404();
  }

  if (*(a1 + 16))
  {
    sub_100054404();
  }

  v4 = v2 - 1;
  *(a1 + 32) = v4;
  if (!v4)
  {
    *(a1 + 16) = 1;
    (*(a1 + 72))(*(a1 + 24), a2);
  }

  return a1;
}

void *sub_100012F44(void *result, const void *a2)
{
  if (result[4])
  {
    sub_100054404();
  }

  v2 = result;
  if (*(result + 16) != 1)
  {
    sub_100054404();
  }

  *(result + 16) = 2;
  if (a2)
  {
    result = sub_1000166A0(a2, 0x168uLL);
    v2[8] = result;
  }

  return result;
}

uint64_t sub_100012F9C(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100049ECC(a2, a3, "ID = %llu", a4, a5, a6, a7, a8, *(a1 + 24));
  v16 = *(a1 + 20);
  v17 = "unknown";
  v18 = "jetsam";
  if (v16 != 1)
  {
    v18 = "unknown";
  }

  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = "resource";
  }

  sub_100049ECC(a2, a3, "type = %s", v11, v12, v13, v14, v15, v19);
  v25 = *(a1 + 16);
  if (v25 <= 2)
  {
    v17 = (&off_100078520)[v25];
  }

  sub_100049ECC(a2, a3, "state = %s", v20, v21, v22, v23, v24, v17);
  result = sub_100049ECC(a2, a3, "active count = %llu", v26, v27, v28, v29, v30, *(a1 + 32));
  if (*(a1 + 48))
  {
    result = sub_100049ECC(a2, a3, "name = %s", v32, v33, v34, v35, v36, *(a1 + 48));
  }

  if (*(a1 + 56))
  {
    return sub_100049ECC(a2, a3, "bundle ID = %s", v32, v33, v34, v35, v36, *(a1 + 56));
  }

  return result;
}

uint64_t sub_1000130D8(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    sub_100054404();
  }

  return result;
}

void sub_10001311C(uint64_t a1)
{
  v2 = os_map_str_delete();
  if (v2 != a1)
  {
    sub_100054610(v2);
  }

  xpc_release(*(a1 + 24));
  free(*(a1 + 16));
  v3 = *(a1 + 32);

  free(v3);
}

void *sub_10001318C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  property = xpc_bundle_get_property();
  if (!property)
  {
    *a3 = 107;
    sub_10002C908(a1, 3, "Could not get path for service bundle.");
    return 0;
  }

  v6 = property;
  info_dictionary = xpc_bundle_get_info_dictionary();
  if (!info_dictionary)
  {
    *a3 = 107;
    sub_10002C908(a1, 3, "Could not get Info.plist for bundle at %s");
    return 0;
  }

  v8 = info_dictionary;
  string = xpc_dictionary_get_string(info_dictionary, "CFBundleIdentifier");
  if (!string)
  {
    sub_10002C908(a1, 3, "Bundle Info.plist at %s does not have a CFBundleIdentifier", v6);
    v15 = 0;
    *a3 = 107;
    return v15;
  }

  v10 = string;
  executable_path = xpc_bundle_get_executable_path();
  v12 = os_map_str_find();
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = (v12 + 40);
  if (!sub_100016A6C(v10, (v12 + 40)))
  {
    sub_10004749C(65539, "CACHE INVARIANT VIOLATED: %s | %s != %s", v6, v10, v14);
LABEL_16:
    os_map_str_delete();
    goto LABEL_8;
  }

  if (!sub_100016A6C(executable_path, v13[2]))
  {
    sub_10004749C(65539, "CACHE INVARIANT VIOLATED: %s | %s != %s", v6, executable_path, v13[2]);
    goto LABEL_16;
  }

  v15 = sub_10001B5B8(v13, 0);
  if (!v15)
  {
LABEL_8:
    v15 = sub_10001C078(v10);
    v15[2] = sub_1000166EC(executable_path);
    v15[3] = xpc_retain(v8);
    v15[4] = sub_1000166EC(v6);
    os_map_str_insert();
  }

  return v15;
}

uint64_t sub_100013350(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x728uLL);
  *(a1 + 1128) = 0x6400000064;
  v4 = posix_spawnattr_init(a1);
  if (v4)
  {
    sub_100054420(v4);
  }

  result = posix_spawn_file_actions_init((a1 + 8));
  if (result)
  {
    sub_100054420(result);
  }

  *(a1 + 1208) = a2;
  return result;
}

void sub_1000133A8(uint64_t a1)
{
  posix_spawnattr_destroy(a1);
  posix_spawn_file_actions_destroy((a1 + 8));
  while (1)
  {
    v2 = *(a1 + 1824);
    if (!v2)
    {
      break;
    }

    *(a1 + 1824) = *v2;
    free(v2);
  }

  free(*(a1 + 1216));
  free(*(a1 + 1232));
  if (*(a1 + 1248))
  {
    v3 = *(a1 + 1240);

    free(v3);
  }
}

uint64_t sub_100013424(posix_spawnattr_t *a1, __int16 a2, __int16 a3)
{
  v8 = 0;
  v6 = posix_spawnattr_getflags(a1, &v8);
  if (v6)
  {
    sub_100054420(v6);
  }

  v8 = v8 & ~a3 | a2;
  result = posix_spawnattr_setflags(a1, v8);
  if (result)
  {
    sub_100054420(result);
  }

  return result;
}

uint64_t sub_100013494(uint64_t a1, uint64_t a2, unint64_t a3, const char **a4)
{
  if (!*(a1 + 1208))
  {
    return sub_100021AF4(a1, 22, 0, 0x245u, 0, "Missing program");
  }

  if (*(a2 + 108))
  {
    v8 = 16512;
  }

  else
  {
    v8 = 0x4000;
  }

  v9 = *(a2 + 240);
  if ((v9 & 0x8000) == 0 || MEMORY[0xFFFFF4084] == 0)
  {
    v11 = 1024;
  }

  else
  {
    v11 = 1280;
  }

  if ((v9 & 0x10000) != 0)
  {
    v12 = posix_spawnattr_disable_ptr_auth_a_keys_np();
    if (v12)
    {
      sub_100054420(v12);
    }
  }

  if (*(a2 + 202))
  {
    v13 = posix_spawnattr_set_use_sec_transition_shims_np();
    if (v13)
    {
      sub_100054420(v13);
    }
  }

  sub_100013424(a1, (v9 >> 9) & 0x200 | v8 | (v9 >> 7) & 0x8000 | v11 | *(a2 + 242) & 0x800, 0);
  v14 = _xpc_spawnattr_binprefs_unpack(a2, a3);
  if (v14)
  {
    v15 = v14;
    xpc_binprefs_set_psattr(v14, a1);
    free(v15);
  }

  v16 = *(a2 + 204);
  if (v16)
  {
    v17 = posix_spawnattr_set_qos_class_np(a1, v16);
    if (v17)
    {
      sub_100054420(v17);
    }
  }

  v18 = *(a2 + 240);
  if ((v18 & 0x200000) != 0)
  {
    if (*(a2 + 232) != 100 || *(a2 + 228))
    {
      v21 = posix_spawnattr_setcpumonitor();
      if (v21)
      {
        sub_100054420(v21);
      }
    }
  }

  else if ((v18 & 2) != 0)
  {
    v22 = posix_spawnattr_setcpumonitor_default();
    if (v22)
    {
      sub_100054420(v22);
    }
  }

  else if ((v18 & 1) == 0)
  {
    v19 = posix_spawnattr_setcpumonitor_default();
    if (v19)
    {
      sub_100054420(v19);
    }
  }

  v23 = posix_spawnattr_setjetsam_ext();
  if (v23)
  {
    sub_100054420(v23);
  }

  v24 = posix_spawnattr_set_threadlimit_ext();
  if (v24)
  {
    sub_100054420(v24);
  }

  v25 = posix_spawnattr_set_max_addr_np();
  if (v25)
  {
    sub_100054420(v25);
  }

  v26 = posix_spawnattr_set_portlimits_ext();
  if (v26)
  {
    sub_100054420(v26);
  }

  v27 = posix_spawnattr_set_filedesclimit_ext();
  if (v27)
  {
    sub_100054420(v27);
  }

  v28 = posix_spawnattr_set_kqworklooplimit_ext();
  if (v28)
  {
    sub_100054420(v28);
  }

  v29 = posix_spawnattr_set_conclavememlimit_ext();
  if (v29)
  {
    sub_100054420(v29);
  }

  if ((*(a2 + 243) & 2) != 0)
  {
    v30 = posix_spawnattr_set_max_addr_np();
    if (v30)
    {
      sub_100054420(v30);
    }
  }

  v31 = posix_spawnattr_set_crash_behavior_np();
  if (v31)
  {
    sub_100054420(v31);
  }

  v32 = posix_spawnattr_set_crash_behavior_deadline_np();
  if (v32)
  {
    sub_100054420(v32);
  }

  v33 = posix_spawnattr_set_launch_type_np();
  if (v33)
  {
    sub_100054420(v33);
  }

  v34 = posix_spawnattr_set_crash_count_np();
  if (v34)
  {
    sub_100054420(v34);
  }

  v35 = posix_spawnattr_set_darwin_role_np();
  if (v35)
  {
    sub_100054420(v35);
  }

  v36 = *(a2 + 233);
  if (v36 == 1)
  {
    v38 = posix_spawnattr_setdataless_iopolicy_np();
    if (v38)
    {
      sub_100054420(v38);
    }
  }

  else if (v36 == 2)
  {
    v37 = posix_spawnattr_setdataless_iopolicy_np();
    if (v37)
    {
      sub_100054420(v37);
    }
  }

  v39 = *(a2 + 80);
  if (v39)
  {
    v40 = _xpc_spawnattr_unpack_string(a2, a3, v39);
    if (!v40)
    {
      result = sub_100021AF4(a1, 22, 0, 0x7Fu, 0, "Unable to unpack container_id");
      goto LABEL_63;
    }

    v41 = v40;
    v42 = *(a2 + 84);
    if (!v42)
    {
      sandbox_spawnattrs_init();
LABEL_58:
      if (sandbox_spawnattrs_setcontainer() == -1)
      {
        sub_10005453C();
      }

LABEL_59:
      v43 = posix_spawnattr_setmacpolicyinfo_np();
      if (v43)
      {
        sub_100054420(v43);
      }

      goto LABEL_64;
    }
  }

  else
  {
    v42 = *(a2 + 84);
    if (!v42)
    {
      goto LABEL_64;
    }

    v41 = 0;
  }

  if (_xpc_spawnattr_unpack_string(a2, a3, v42))
  {
    sandbox_spawnattrs_init();
    if (sandbox_spawnattrs_setprofilename() == -1)
    {
      sub_10005453C();
    }

    if (!v41)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  result = sub_100021AF4(a1, 22, 0, 0x88u, 0, "Unable to unpack sandbox profile");
LABEL_63:
  if (result)
  {
    return result;
  }

LABEL_64:
  v44 = *(a2 + 88);
  if (v44)
  {
    _xpc_spawnattr_unpack_string(a2, a3, v44);
    v45 = posix_spawnattr_set_subsystem_root_path_np();
    if (v45)
    {
      sub_100054420(v45);
    }
  }

  v46 = *(a2 + 16);
  if (v46)
  {
    v47 = sub_100014514(8 * v46 + 8, 0x14382343uLL);
    *(a1 + 1216) = v47;
    if (!_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 20), v47, *(a2 + 16)))
    {
      result = sub_100021AF4(a1, 22, 0, 0x21Au, 0, "Unable to unpack argv");
      goto LABEL_80;
    }

    v48 = (*(a1 + 1216) + 8 * *(a2 + 16));
  }

  else
  {
    v49 = sub_100014514(0x10uLL, 0xC1E8D02EuLL);
    *(a1 + 1216) = v49;
    *v49 = *(a1 + 1208);
    v48 = v49 + 1;
  }

  *v48 = 0;
  v50 = sub_100014514(8 * *(a2 + 24) + 56, 0xE4322039uLL);
  *(a1 + 1232) = v50;
  v51 = *(a2 + 24);
  if (!v51)
  {
LABEL_73:
    v52 = *(a2 + 240);
    v53 = 9;
    if ((v52 & 0x20) == 0)
    {
      v53 = 1;
    }

    if ((v52 & 0x800) != 0)
    {
      v53 = 25;
    }

    v54 = vandq_s8(vshlq_u32(vdupq_n_s32(v52), xmmword_1000576C0), xmmword_1000576D0);
    *v54.i8 = vorr_s8(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
    sub_10001444C(a1, "XXXXXXXX%s=%llx", "XPC_FLAGS", v53 | v54.i32[0] | (v52 << 11) & 0x8000 | v54.i32[1]);
    goto LABEL_81;
  }

  if (_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 28), v50, v51))
  {
    *(a1 + 1224) = *(a2 + 24);
    goto LABEL_73;
  }

  result = sub_100021AF4(a1, 22, 0, 0x236u, 0, "Unable to unpack environment");
LABEL_80:
  if (result)
  {
    return result;
  }

LABEL_81:
  if (*(a1 + 1128) != -101)
  {
    if (a4)
    {
      v55 = sub_10001444C(a1, "XXXXXXXX%s=%s", "LOGNAME", *a4);
      *(a1 + 1120) = v55 + 8;
      sub_10001444C(a1, "XXXXXXXX%s=%s", "USER", v55 + 8);
      sub_10001444C(a1, "XXXXXXXX%s=%s", "HOME", a4[6]);
      sub_10001444C(a1, "XXXXXXXX%s=%s", "SHELL", a4[7]);
      v56 = *(a1 + 1128);
      if (v56 >= 0x1F5 && v56 != -2)
      {
        sub_10001444C(a1, "XXXXXXXX%s=%s/tmp", "TMPDIR", a4[6]);
      }

      v57 = posix_spawnattr_set_login_np();
      if (v57)
      {
        sub_100054420(v57);
      }

      v58 = posix_spawnattr_set_uid_np();
      if (v58)
      {
        sub_100054420(v58);
      }

      v59 = posix_spawnattr_set_gid_np();
      if (v59)
      {
        sub_100054420(v59);
      }

      v60 = *(a2 + 240);
      if ((v60 & 0x2000) == 0)
      {
        v61 = posix_spawnattr_set_groups_np();
        if (v61)
        {
          sub_100054420(v61);
        }

        v60 = *(a2 + 240);
      }

      if ((v60 & 0x1000000) != 0)
      {
        v62 = posix_spawnattr_set_persona_uid_np();
        if (v62)
        {
          sub_100054420(v62);
        }

        v63 = posix_spawnattr_set_persona_gid_np();
        if (v63)
        {
          sub_100054420(v63);
        }

        if ((*(a2 + 241) & 0x20) == 0)
        {
          v64 = posix_spawnattr_set_persona_groups_np();
          if (v64)
          {
            sub_100054420(v64);
          }
        }
      }
    }

    else
    {
      result = sub_100021AF4(a1, 22, 0, 0x163u, 0, "Unable to setup identify");
      if (result)
      {
        return result;
      }
    }
  }

  v65 = xpc_dictionary_create(0, 0, 0);
  if (!*(a1 + 1224))
  {
    v67 = 0;
LABEL_110:
    xpc_release(v65);
    *(a1 + 1224) = v67;
    *(*(a1 + 1232) + 8 * v67) = 0;
LABEL_111:
    v72 = *(a2 + 64);
    if (v72)
    {
      v73 = _xpc_spawnattr_unpack_string(a2, a3, v72);
      if (!v73)
      {
        result = sub_100021AF4(a1, 22, 0, 0xE1u, 0, "Unable to unpack cwd", v93);
        goto LABEL_146;
      }
    }

    else
    {
      v73 = "/";
    }

    v74 = *(a2 + 68);
    if (v74)
    {
      v75 = _xpc_spawnattr_unpack_string(a2, a3, v74);
      if (!v75)
      {
        result = sub_100021AF4(a1, 22, 0, 0xF2u, 0, "Unable to unpack stdin", v93);
        goto LABEL_146;
      }

      v76 = v75;
      bzero(__str, 0x400uLL);
      if (*v76 != 47)
      {
        v94 = v76;
        v76 = __str;
        snprintf(__str, 0x400uLL, "%s/%s", v73, v94);
      }

      v77 = sub_1000144B4(v76);
      if (v77)
      {
        result = sub_100021AF4(a1, v77, 0, 0xFEu, 0, "Unable to create stdin directory (%s)");
        goto LABEL_146;
      }

      v79 = posix_spawn_file_actions_addopen((a1 + 8), 0, v76, 131584, 0x1B6u);
      if (v79)
      {
        sub_100054420(v79);
      }
    }

    else
    {
      v78 = posix_spawn_file_actions_addopen((a1 + 8), 0, "/dev/null", 0x20000, 0x1B6u);
      if (v78)
      {
        sub_100054420(v78);
      }
    }

    v80 = *(a2 + 72);
    if (v80)
    {
      v81 = _xpc_spawnattr_unpack_string(a2, a3, v80);
      if (!v81)
      {
        result = sub_100021AF4(a1, 22, 0, 0x10Du, 0, "Unable to unpack stdout", v93);
        goto LABEL_146;
      }

      v82 = v81;
      bzero(__str, 0x400uLL);
      if (*v82 != 47)
      {
        v95 = v82;
        v82 = __str;
        snprintf(__str, 0x400uLL, "%s/%s", v73, v95);
      }

      v83 = sub_1000144B4(v82);
      if (v83)
      {
        result = sub_100021AF4(a1, v83, 0, 0x119u, 0, "Unable to create stdout directory (%s)");
        goto LABEL_146;
      }

      v85 = posix_spawn_file_actions_addopen((a1 + 8), 1, v82, 131594, 0x1B6u);
      if (v85)
      {
        sub_100054420(v85);
      }
    }

    else
    {
      v84 = posix_spawn_file_actions_addopen((a1 + 8), 1, "/dev/null", 131074, 0x1B6u);
      if (v84)
      {
        sub_100054420(v84);
      }
    }

    v86 = *(a2 + 76);
    if (v86)
    {
      v87 = _xpc_spawnattr_unpack_string(a2, a3, v86);
      if (!v87)
      {
        result = sub_100021AF4(a1, 22, 0, 0x128u, 0, "Unable to unpack stderr");
LABEL_146:
        if (result)
        {
          return result;
        }

        goto LABEL_147;
      }

      v88 = v87;
      bzero(__str, 0x400uLL);
      if (*v88 != 47)
      {
        v96 = v88;
        v88 = __str;
        snprintf(__str, 0x400uLL, "%s/%s", v73, v96);
      }

      v89 = sub_1000144B4(v88);
      if (v89)
      {
        result = sub_100021AF4(a1, v89, 0, 0x134u, 0, "Unable to create stderr directory (%s)");
        goto LABEL_146;
      }

      v92 = posix_spawn_file_actions_addopen((a1 + 8), 2, v88, 131594, 0x1B6u);
      if (v92)
      {
        sub_100054420(v92);
      }
    }

    else
    {
      v90 = posix_spawn_file_actions_addopen((a1 + 8), 2, "/dev/null", 131074, 0x1B6u);
      if (v90)
      {
        sub_100054420(v90);
      }
    }

LABEL_147:
    if ((*(a2 + 242) & 2) != 0 && ((v91 = *(a1 + 1128)) == 0 || v91 == -101))
    {
      return sub_100021AF4(a1, 1, 0, 0x307u, 0, "extensions cannot run as root");
    }

    else
    {
      return 0;
    }
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v68 = *(*(a1 + 1232) + 8 * v66);
    v69 = strchr(v68, 61);
    if (!v69 || v69 == v68)
    {
      break;
    }

    v71 = sub_100016744(v68, v69 - v68);
    if (!xpc_dictionary_get_value(v65, v71))
    {
      xpc_dictionary_set_BOOL(v65, v71, 1);
      *(*(a1 + 1232) + 8 * v67++) = v68;
    }

    free(v71);
    if (++v66 >= *(a1 + 1224))
    {
      goto LABEL_110;
    }
  }

  result = sub_100021AF4(a1, 22, 0, 0x1D1u, 0, "Invalid environment[%zd]: %s", v66, v68);
  if (!result)
  {
    goto LABEL_111;
  }

  return result;
}

uint64_t sub_100013FE4(posix_spawnattr_t *a1, uint64_t a2, uint64_t a3, xpc_object_t xarray)
{
  v4 = *(a2 + 224);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a2 + 220);
  v8 = 4 * v4;
  if (v8 > a3 - v7)
  {
    return sub_100021AF4(a1, 22, 0, 0x323u, 0, "No space for special ports: %zu > (%zu - %d)", v8);
  }

  v11 = 0;
  v12 = 0;
  v13 = a2 + v7 + 244;
  while (1)
  {
    xpc_array_get_value(xarray, v12);
    right = xpc_mach_send_get_right();
    v15 = right;
    if (right - 1 >= 0xFFFFFFFE)
    {
      return sub_100021AF4(a1, 22, 0, 0x32Cu, 0, "Invalid special port[%zd]: %d");
    }

    v16 = *(v13 + 4 * v12);
    if ((v16 - 128) > 2)
    {
      if (v16 == 4)
      {
        if ((*(a2 + 243) & 4) != 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = right;
        }
      }

      v18 = posix_spawnattr_setspecialport_np(a1, v15, v16);
      if (v18)
      {
        sub_100054420(v18);
      }

      goto LABEL_16;
    }

    if (*(v13 + 4 * v12) - 129 <= 1)
    {
      break;
    }

LABEL_16:
    if (++v12 >= *(a2 + 224))
    {
      return 0;
    }
  }

  if ((v11 & 1) == 0)
  {
    v11 = 1;
    v17 = posix_spawnattr_set_registered_ports_np();
    if (v17)
    {
      sub_100054420(v17);
    }

    goto LABEL_16;
  }

  return sub_100021AF4(a1, 22, 0, 0x33Au, 0, "Already registered ports");
}

size_t sub_10001418C(uint64_t a1, xpc_object_t xarray)
{
  result = xpc_array_get_count(xarray);
  if (result)
  {
    v5 = 0;
    while (1)
    {
      value = xpc_array_get_value(xarray, v5 + 1);
      if (xpc_get_type(value) != &_xpc_type_int64)
      {
        return sub_100021AF4(a1, 9, 0, 0x366u, 0, "setup_fds bad int type");
      }

      v7 = xpc_int64_get_value(value);
      if (v7 < 0 || getdtablesize() <= v7)
      {
        getdtablesize();
        return sub_100021AF4(a1, 9, 0, 0x36Au, 0, "setup_fds bad dest: %d table: %d");
      }

      v8 = xpc_array_get_value(xarray, v5);
      if (xpc_get_type(v8) != &_xpc_type_fd)
      {
        break;
      }

      _xpc_fd_get_port();
      v9 = posix_spawn_file_actions_add_fileportdup2_np();
      if (v9)
      {
        sub_100054420(v9);
      }

      v5 += 2;
      if (v5 >= xpc_array_get_count(xarray))
      {
        return 0;
      }
    }

    return sub_100021AF4(a1, 9, 0, 0x36Fu, 0, "setup_fds bad fd type");
  }

  return result;
}

uint64_t sub_1000142E0(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5)
{
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = _xpc_spawnattr_unpack_bytes(a2, a3, *(a2 + 8), v8);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (a4 && a5)
  {
    if (v11)
    {
      v12 = sub_100011184(a4, a5, v9, v8);
      if (!v12)
      {
        return sub_100021AF4(a1, 22, 0, 0x3ABu, 0, "Unable to merge spawn constraints");
      }

      v13 = v12;
      length = xpc_data_get_length(v12);
      *(a1 + 1248) = length;
      v15 = sub_100014514(length, 0x478D6232uLL);
      *(a1 + 1240) = v15;
      bytes = xpc_data_get_bytes(v13, v15, 0, *(a1 + 1248));
      v17 = *(a1 + 1248);
      xpc_release(v13);
      if (bytes != v17)
      {
        return sub_100021AF4(a1, 22, 0, 0x3B0u, 0, "Unable to copy merged spawn constraints");
      }
    }

    else
    {
      *(a1 + 1240) = sub_1000166A0(a4, a5);
      *(a1 + 1248) = a5;
    }
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    *(a1 + 1240) = sub_1000166A0(v9, v8);
    *(a1 + 1248) = v8;
  }

  result = amfi_launch_constraint_set_spawnattr();
  if (result)
  {
    sub_100054420(result);
  }

  return result;
}

char *sub_10001444C(void *a1, const char *a2, ...)
{
  va_start(va, a2);
  v7[0] = 0;
  va_copy(&v7[1], va);
  vasprintf(v7, a2, va);
  v3 = v7[0];
  *v7[0] = a1[228];
  a1[228] = v3;
  result = v3 + 8;
  v5 = a1[154];
  v6 = a1[153];
  a1[153] = v6 + 1;
  *(v5 + 8 * v6) = result;
  return result;
}

uint64_t sub_1000144B4(char *a1)
{
  v2 = strrchr(a1, 47);
  if (!v2)
  {
    return 22;
  }

  v3 = v2;
  v4 = *v2;
  *v2 = 0;
  LODWORD(result) = mkpath_np(a1, 0x1F6u);
  if (result == 17)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

  *v3 = v4;
  return result;
}

void *sub_100014514(size_t size, malloc_type_id_t type_id)
{
  do
  {
    v4 = malloc_type_calloc(1uLL, size, type_id);
    if (v4)
    {
      break;
    }

    if (*__error() != 12)
    {
      v5 = *__error();
      if (v5)
      {
        sub_100054420(v5);
      }
    }
  }

  while (sub_100016680());
  return v4;
}

void *sub_100014584(void *ptr, int a2, size_t size, malloc_type_id_t type_id)
{
  do
  {
    v7 = malloc_type_realloc(ptr, size, type_id);
    if (v7)
    {
      break;
    }

    if (*__error() != 12)
    {
      v8 = *__error();
      if (v8)
      {
        sub_100054420(v8);
      }
    }
  }

  while (sub_100016680());
  return v7;
}

void sub_1000145F8(uint64_t a1, uint64_t a2)
{
  if (sub_100032A18(a1) == &unk_10007D720)
  {

    sub_10001464C(a2);
  }
}

void sub_10001464C(uint64_t result)
{
  v1 = result;
  if (result != 18)
  {
    switch(dword_10007DF98)
    {
      case 0:
        if (result != 1)
        {
          goto LABEL_38;
        }

        break;
      case 1:
        if ((result - 1) >= 2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        if (result != 3)
        {
          goto LABEL_38;
        }

        break;
      case 3:
        if (result != 4)
        {
          goto LABEL_38;
        }

        break;
      case 4:
        if (result != 5)
        {
          goto LABEL_38;
        }

        break;
      case 5:
        if (result != 6)
        {
          goto LABEL_38;
        }

        break;
      case 6:
        if (result != 7)
        {
          goto LABEL_38;
        }

        break;
      case 7:
        if (result != 8)
        {
          goto LABEL_38;
        }

        break;
      case 8:
        if (result != 9)
        {
          goto LABEL_38;
        }

        break;
      case 9:
        if (result != 10)
        {
          goto LABEL_38;
        }

        break;
      case 10:
        if (result != 11)
        {
          goto LABEL_38;
        }

        break;
      case 11:
        if (result != 12)
        {
          goto LABEL_38;
        }

        break;
      case 12:
        if (result != 13)
        {
          goto LABEL_38;
        }

        break;
      case 13:
        if (result != 14)
        {
          goto LABEL_38;
        }

        break;
      case 14:
        if (result != 15)
        {
          goto LABEL_38;
        }

        break;
      case 15:
      case 18:
        if (result != 16)
        {
          goto LABEL_38;
        }

        break;
      case 16:
        if (result != 17)
        {
          goto LABEL_38;
        }

        goto LABEL_3;
      default:
LABEL_38:
        sub_1000441E0("Unexpected shutdown transition %s -> %s", off_1000785E8[dword_10007DF98], off_1000785E8[result]);
    }
  }

  sub_100047654("shutdown", 196613, "shutdown %s -> %s", off_1000785E8[dword_10007DF98], off_1000785E8[result]);
LABEL_3:
  dword_10007DF98 = v1;
}

void sub_10001481C()
{
  dword_10007DF98 = 0;
  dword_10007DF9C = 0;
  dword_10007DFA0 = 0;
  byte_10007DFA4 = 0;
  sub_10001A284();
}

void sub_100014840(uint64_t a1, uint64_t a2)
{
  if (dword_10007DF98 >= 2)
  {
    sub_100054404();
  }

  sub_10001A104(&stru_100078588);
  sub_10000C494(&stru_1000785C8);
  sub_10001497C();

  sub_10001464C(2);
}

void sub_1000148A8()
{
  sub_100047654("shutdown timeout", 196611, "%s", "Shutting the system down has taken too long. launchd is rebooting\n(or halting) the system now. Any processes that are still running\nwill be abandoned to the mercy of the kernel.\n");
  v2 = sub_1000151CC(v0, v1);
  sub_10001464C(18);
  sub_100014B20("%s", v3, v2);
  free(v2);
  v4 = sub_10003283C();
  sub_100014FB0(v4);
}

void sub_100014910(id a1, unsigned int a2)
{
  if (a2 == 2)
  {
    if ((byte_10007DFA4 & 1) == 0)
    {
      sub_100054404();
    }

    byte_10007DFA4 = 0;
    if (dword_10007DF98 == 14)
    {
      sub_100014F90();
    }
  }

  else if (a2 == 1)
  {
    if (byte_10007DFA4 == 1)
    {
      sub_100054404();
    }

    byte_10007DFA4 = 1;
  }
}

void sub_10001497C()
{
  if (dword_10007DF98 == 1)
  {
    sub_10004749C(5, "shutdown already committed");
    goto LABEL_11;
  }

  if (dword_10007DF98)
  {
    sub_1000441E0("Attempting to commit shutdown unexpectedly: %s", off_1000785E8[dword_10007DF98]);
  }

  sub_10004749C(5, "committing to system shutdown");
  v0 = dispatch_queue_create("com.apple.xpc.launchd.system-override", 0);
  dispatch_async_f(v0, 0, sub_100015194);
  dispatch_release(v0);
  if (dword_10007DF9C)
  {
    if (dword_10007DF9C == 1)
    {
      v1 = "kern.willuserspacereboot";
      goto LABEL_10;
    }

    if (dword_10007DF9C != 2)
    {
      goto LABEL_11;
    }

    sub_100048E6C();
  }

  sub_100045FB0("kern.willshutdown", 1);
  v1 = "security.mac.asp.willshutdown";
LABEL_10:
  sub_100045FB0(v1, 1);
LABEL_11:

  sub_10001464C(1);
}

uint64_t sub_100014A88(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (dword_10007DF98)
  {
    sub_10004749C(3, "Shutdown already started: %s", off_1000785E8[dword_10007DF98]);
    return 37;
  }

  else
  {
    dword_10007DF9C = a1;
    dword_10007DFA8 = a2;
    if (a3)
    {
      sub_100054404();
    }

    dword_10007DFA0 = a4;
    sub_10001497C();
    return 0;
  }
}

void sub_100014B20(char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (dword_10007DF98 != 18 && (dword_10007DF98 - 2) >= 0xA)
  {
    sub_100054404();
  }

  dword_10007DF9C = 0;
  v6[0] = 0;
  va_copy(&v6[1], va);
  vasprintf(v6, a1, va);
  v4 = v6[0];
  v5 = v6[0];
  if (!v6[0])
  {
    _os_assumes_log();
    v6[0] = a1;
    v5 = a1;
  }

  sub_100047654("hard reboot", 196612, "Could not cleanly tear down userspace. Will force a full hardware reboot. (%s)", v5);
  free(v4);
}

uint64_t sub_100014BCC(_DWORD *a1, uint64_t a2)
{
  if (dword_10007DF98 != 11)
  {
    sub_100054404();
  }

  sub_10002C908(a1, 5, "cleaning up");
  sub_10001464C(12);
  sub_10004EBD4();
  sub_10001464C(13);
  sub_10001F938();
  result = sub_100014CB4();
  if ((result & 1) == 0)
  {
    sub_100014D48(a1, v4);
    v5 = sub_1000157D8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100014E34;
    block[3] = &unk_100078680;
    block[4] = a1;
    dispatch_async(v5, block);
    result = sub_10001B5B8(a1, 20);
    if (a1[47])
    {
      sub_100054404();
    }
  }

  return result;
}

uint64_t sub_100014CB4()
{
  sub_100015808();
  if (dword_10007DF98 != 13)
  {
    sub_100054404();
  }

  if (dword_10007DF9C)
  {
    if (byte_10007F102 == 1)
    {
      sub_10004749C(65540, "Abandoning lingering coalitions");
    }

    else if (sub_10001F2AC(0))
    {
      return 0;
    }
  }

  sub_10001464C(14);
  if ((byte_10007DFA4 & 1) == 0)
  {
    sub_100014F90();
  }

  return 1;
}

uint64_t sub_100014D48(uint64_t a1, uint64_t a2)
{
  if (dword_10007DF98 != 13)
  {
    sub_100054404();
  }

  data_np = sysctlbyname_get_data_np();
  if (data_np)
  {
    if (data_np == -1)
    {
      sub_10005455C();
    }
  }

  else
  {
    free(0);
  }

  return sub_100046938();
}

void sub_100014E3C(rb_tree_t *a1)
{
  if (dword_10007DF98 == 13)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1000153A4;
    v6[3] = &unk_1000786C8;
    v6[4] = a1;
    if (sub_10001F2AC(v6))
    {
      sub_100014D48(a1, v2);
      v3 = dispatch_time(0, 1000000000);
      v4 = sub_1000157D8();
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 0x40000000;
      v5[2] = sub_100015408;
      v5[3] = &unk_1000786E8;
      v5[4] = a1;
      dispatch_after(v3, v4, v5);
    }
  }

  else
  {

    sub_10002C908(a1, 65541, "Polling for lingering coalitions stopped");
  }
}

uint64_t sub_100014F78()
{
  if (dword_10007DF98 == 13)
  {
    return sub_100014CB4();
  }

  return result;
}

void sub_100014F90()
{
  sub_10001A284();
  sub_10001464C(15);
  v0 = sub_10003283C();
  sub_100014FB0(v0);
}

void sub_100014FD8(uint64_t a1)
{
  if (dword_10007DF98 == 15 || dword_10007DF98 == 18)
  {
    v1 = a1;
    v3 = mach_host_self();
    sub_100048C5C(v3, 0);
    v4 = dword_10007DFA0;
    v5 = sub_10000B4A8(*(v1 + 272));
    sub_10002C908(v1, 5, "shutting down system: flags = 0x%x, time = %llu ms", v4, v5 / 0xF4240);
    v6 = sub_10000B4A8(*(v1 + 272));
    sub_10002C908(v1, 196613, "Userspace teardown took: %llu ms", v6 / 0xF4240);
    if (!dword_10007DF9C)
    {
      sub_10002C908(v1, 196613, "Will be calling reboot(2) with flags: 0x%x");
      goto LABEL_12;
    }

    if (dword_10007DF9C != 2)
    {
      if (dword_10007DF9C == 1)
      {
        sub_10002C908(v1, 196613, "Will be re-execing for a userspace reboot");
        v7 = 4;
        v8 = 1;
        goto LABEL_13;
      }

LABEL_12:
      v8 = 0;
      v7 = 1;
LABEL_13:
      sub_10004749C(196613, "Quiescing queues");
      sub_10001464C(16);
      sub_10000EA30();
      sub_100047120();
      sub_10000E290("launchd quiesce complete\n");
      sub_10001464C(17);
      if (v8)
      {
        sub_10000FC5C();
        sub_10000FC60();
      }

      sub_100015178(v7);
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  sub_10002C908(v1, 196613, "Rebooting to device recovery environment");
  goto LABEL_12;
}

uint64_t sub_100015194()
{
  pthread_setname_np("system shutdown has begun");
  result = system_override();
  if (result == -1)
  {
    sub_10005453C();
  }

  return result;
}

char *sub_1000151CC(uint64_t a1, uint64_t a2)
{
  if (dword_10007DF98 != 13)
  {
    return sub_1000168E0("userspace shutdown timed out: %s", off_1000785E8[dword_10007DF98]);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = sub_10000FC98(0x40uLL, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100015330;
  v6[3] = &unk_1000786A8;
  v6[4] = &v7;
  v6[5] = v2;
  sub_10001F2AC(v6);
  if (*(v8 + 6) < 1)
  {
    v4 = sub_1000168E0("userspace shutdown timed out: %s. Unable to identify lingering coalitions.", off_1000785E8[dword_10007DF98]);
  }

  else
  {
    v3 = sub_10000FCFC(v2);
    v4 = sub_1000168E0("userspace shutdown timed out: %s (%d).%s", off_1000785E8[dword_10007DF98], *(v8 + 6), v3);
    free(v3);
  }

  sub_10000FD04(v2->opaque);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_100015330(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = sub_100010B1C(a2);
  v6 = sub_1000130C0(a2);
  sub_10000FD40(v4, " %llu (%s),", v5, v6);
  ++*(*(*(a1 + 32) + 8) + 24);
}

void sub_1000153A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_100010B1C(a2);
  v5 = sub_1000130C0(a2);
  sub_10002C908(v3, 65540, "Lingering coalition: %llu (%s)", v4, v5);
}

uint64_t sub_100015410(uint32_t a1)
{
  *__error() = 0;
  result = usrctl(a1);
  if (result)
  {
    v3 = result;
    v4 = __error();
    sub_1000441E0("usrctl(0x%x) returned %d (errno %d)", a1, v3, *v4);
  }

  return result;
}

void sub_10001546C()
{
  v0 = getenv("XPC_UNLOCK_TIMESTAMP");
  if (v0)
  {
    v1 = v0;
    __endptr = 0;
    v2 = strtoull(v0, &__endptr, 16);
    if (__endptr == v1 + 16 && v2 != -1)
    {
      v9 = v2;
      sub_100015668(v2);
      v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
      sub_10004749C(65541, "Device unlocked %qus ago", (v10 - v9) / 0x3B9ACA00);
      return;
    }
  }

  v4 = sub_100016C38();
  if (v4)
  {
    v5 = v4;
    v6 = sub_100016CD8();
    qword_10007DFB0 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = sub_1000157D8();
      sub_100016E0C(v7, v8);
      if (!sub_1000170F0(qword_10007DFB0, v5, "IOGeneralInterest", sub_1000155F4, 0, &dword_10007DFB8))
      {
        return;
      }

      sub_10004749C(65541, "failed to add interest notification");
    }

    else
    {
      sub_10004749C(65541, "failed to create notification port for AKS");
    }
  }

  else
  {
    sub_10004749C(65541, "failed to find %s service");
  }

  if (dword_10007DFB8)
  {
    sub_10000B760(dword_10007DFB8);
  }

  v11 = qword_10007DFB0;
  if (qword_10007DFB0)
  {

    sub_100016D50(v11);
  }
}

void sub_1000155F4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -469774321)
  {
    sub_10004749C(65541, "Got first unlock unregistering for AKS events");
    v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
    sub_100015668(v3);
    if (dword_10007DFB8)
    {
      sub_10000B760(dword_10007DFB8);
      dword_10007DFB8 = 0;
      sub_100016D50(qword_10007DFB0);
      qword_10007DFB0 = 0;
    }
  }
}

uint64_t sub_100015668(uint64_t a1)
{
  byte_10007F010 = 1;
  qword_10007F018 = a1;
  *__str = 0;
  v3 = 0;
  v4 = 0;
  snprintf(__str, 0x11uLL, "%016llx", a1);
  return setenv("XPC_UNLOCK_TIMESTAMP", __str, 1);
}

dispatch_queue_t sub_1000156F8()
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v1 = qos_class_main();
  v2 = dispatch_queue_attr_make_with_qos_class(initially_inactive, v1, 0);
  qword_10007DFC0 = dispatch_queue_create("com.apple.xpc.launchd.eventq", v2);
  v3 = qos_class_main();
  v4 = dispatch_queue_attr_make_with_qos_class(0, v3, 0);
  qword_10007DFC8 = dispatch_queue_create_with_target_V2("com.apple.xpc.launchd.spawn", v4, 0);
  qword_10007F020 = dispatch_queue_create("com.apple.xpc.launchd.ioq", 0);
  v5 = dispatch_queue_attr_make_with_qos_class(0, 5u, 0);
  qword_10007DFD0 = dispatch_queue_create("com.apple.xpc.launchd.bgioq", v5);
  result = dispatch_queue_create("com.apple.xpc.launchd.bglogq", v5);
  qword_10007DFD8 = result;
  return result;
}

void *sub_10001582C(uint64_t a1, const char *a2)
{
  v3 = sub_10002C974(a1, 1);
  v4 = sub_1000168E0("%s/%s", v3, a2);
  free(v3);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1000158F0;
  v7[3] = &unk_100078708;
  v7[4] = v4;
  v5 = sub_100014514(0x18uLL, 0x10900405A8FBCA6uLL);
  *v5 = sub_100016954(v7);
  v5[1] = v4;
  return v5;
}

void sub_100015920(uint64_t a1)
{
  free(*(a1 + 8));
  *(a1 + 8) = 0;
  _Block_release(*a1);

  free(a1);
}

void sub_100015968(_BYTE *a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  a1[16] = 1;
  v4[0] = 0;
  va_copy(&v4[1], va);
  if (vasprintf(v4, a3, va) != -1)
  {
    (*(*a1 + 16))();
    free(v4[0]);
  }
}

uint64_t sub_1000159E0()
{
  result = xpc_string_cache_create();
  qword_10007DFE0 = result;
  return result;
}

void sub_100015A20(uint64_t a1)
{
  v2 = *(a1 + 56);
  if ((v2 - 1) < 2)
  {
    v5 = *(a1 + 64);
    if (v2 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = sub_100015A08();
    v8 = sub_100015A14();
    *(a1 + 80) = j__xpc_bundle_create_with_string_cache(v5, v6, v7, v8);
    sub_10001B5B8(a1, 42);
    global_queue = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100016158;
    v11[3] = &unk_1000787A8;
    v11[4] = a1;
    v4 = v11;
  }

  else if (v2 == 3)
  {
    sub_10001B5B8(a1, 42);
    global_queue = sub_1000157E4();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100015D74;
    block[3] = &unk_100078748;
    block[4] = a1;
    v4 = block;
  }

  else
  {
    if (*(a1 + 56))
    {
      sub_1000441E0("unsupported IO type %d", *(a1 + 56));
    }

    sub_10001B5B8(a1, 42);
    global_queue = sub_1000157E4();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_100015BFC;
    v10[3] = &unk_100078728;
    v10[4] = a1;
    v4 = v10;
  }

  dispatch_async(global_queue, v4);
}

void sub_100015BFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1000157E4();
  dispatch_assert_queue_V2(v3);
  v4 = guarded_open_np();
  if (v4 < 0)
  {
    v6 = *__error();
    goto LABEL_7;
  }

  v5 = v4;
  if (fstat(v4, (v2 + 96)))
  {
LABEL_3:
    v6 = *__error();
    goto LABEL_4;
  }

  if ((*(v2 + 100) + 0x4000) >= 0xB000u || ((0x561u >> ((*(v2 + 100) + 0x4000) >> 12)) & 1) == 0)
  {
    v7 = sub_100041188(v5);
    if (v7)
    {
      v8 = v7;
      free(*(v2 + 64));
      *(v2 + 64) = v8;
      v9 = *(v2 + 192);
      v10 = sub_100014514(v9, 0x555D6251uLL);
      v11 = read(v5, v10, v9);
      if (v11 < 0 || v11 == v9)
      {
        v12 = dispatch_data_create(v10, v9, 0, _dispatch_data_destructor_free);
        v6 = 0;
        *(v2 + 72) = v12;
      }

      else
      {
        free(v10);
        v6 = 5;
      }

      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = dword_1000576E0[(*(v2 + 100) + 0x4000) >> 12];
LABEL_4:
  if (guarded_close_np() == -1)
  {
    sub_10005453C();
  }

LABEL_7:
  sub_100016024(v2, 0, v6);
  sub_10001B690(*(a1 + 32), 42);
}

void sub_100015D74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1000157E4();
  dispatch_assert_queue_V2(v3);
  v4 = guarded_open_np();
  if (v4 < 0)
  {
    v9 = __error();
    sub_100016024(v2, 0, *v9);
    goto LABEL_37;
  }

  v5 = v4;
  if (!fstat(v4, (v2 + 96)))
  {
    if ((*(v2 + 100) & 0xF000) != 0x4000)
    {
      v7 = 0;
      v8 = 20;
      goto LABEL_34;
    }

    v7 = sub_100041188(v5);
    if (!v7)
    {
      v6 = __error();
      goto LABEL_4;
    }

    free(*(v2 + 64));
    *(v2 + 64) = v7;
    v23[0] = v7;
    v23[1] = 0;
    v7 = sub_100010918();
    v10 = fts_open(v23, 92, 0);
    if (v10)
    {
      v11 = v10;
      v12 = fts_read(v10);
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        while (1)
        {
          fts_info = v13->fts_info;
          if (fts_info > 6)
          {
            break;
          }

          if (fts_info == 1)
          {
            if (v14)
            {
              ++v14;
              fts_set(v11, v13, 4);
              fts_path = v13->fts_path;
              v17 = 3;
LABEL_21:
              fts_errno = 0;
              goto LABEL_23;
            }

            v14 = 1;
          }

          else
          {
            if (fts_info != 6)
            {
              goto LABEL_18;
            }

            --v14;
          }

LABEL_25:
          v13 = fts_read(v11);
          if (!v13)
          {
            goto LABEL_29;
          }
        }

        if (fts_info == 7)
        {
          fts_path = v13->fts_path;
          fts_errno = v13->fts_errno;
          v17 = 4;
        }

        else
        {
          if (fts_info == 11)
          {
            fts_path = v13->fts_path;
            v17 = 0;
            goto LABEL_21;
          }

LABEL_18:
          fts_path = v13->fts_path;
          v17 = 4;
          fts_errno = 108;
        }

LABEL_23:
        v19 = sub_10000EBAC(v17, fts_path, fts_errno);
        if (v19)
        {
          sub_1000109BC(v7, v19);
          sub_10001B690(v19, 0);
        }

        goto LABEL_25;
      }

LABEL_29:
      if (fts_close(v11) == -1)
      {
        sub_10005453C();
      }
    }

    else
    {
      v20 = *(v2 + 64);
      v21 = *__error();
      __error();
      v22 = xpc_strerror();
      sub_10004749C(4, "failed to fts_open(%s, 0x%x): %d: %s", v20, 92, v21, v22);
    }

    v8 = 0;
    goto LABEL_34;
  }

  v6 = __error();
  v7 = 0;
LABEL_4:
  v8 = *v6;
LABEL_34:
  if (guarded_close_np() == -1)
  {
    sub_10005453C();
  }

  sub_100016024(v2, v7, v8);
  if (v7)
  {
    sub_10001B690(v7, 0);
  }

LABEL_37:
  sub_10001B690(*(a1 + 32), 42);
}

void sub_100016024(uint64_t a1, void *a2, int a3)
{
  v6 = sub_1000157E4();
  dispatch_assert_queue_V2(v6);
  *(a1 + 240) = a3;
  sub_10001B5B8(a1, 2);
  if (a2)
  {
    sub_10001B5B8(a2, 2);
  }

  v7 = *(a1 + 248);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1000160E8;
  v8[3] = &unk_100078768;
  v8[4] = a1;
  v8[5] = a2;
  dispatch_async(v7, v8);
}

void sub_1000160E8(uint64_t a1)
{
  (*(*(*(a1 + 32) + 256) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10001B690(v2, 2);
  }

  v3 = *(a1 + 32);

  sub_10001B690(v3, 2);
}

void sub_100016158(uint64_t a1)
{
  v2 = sub_10000EB30();
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  xpc_bundle_resolve_sync();
  dispatch_semaphore_signal(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000161FC;
  block[3] = &unk_100078788;
  block[4] = v3;
  dispatch_async(v4, block);
}

void sub_1000161FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v2 + 248));
  error = xpc_bundle_get_error();
  if (!error)
  {
    property = xpc_bundle_get_property();
    *(v2 + 96) = *property;
    v5 = property[4];
    v7 = property[1];
    v6 = property[2];
    *(v2 + 144) = property[3];
    *(v2 + 160) = v5;
    *(v2 + 112) = v7;
    *(v2 + 128) = v6;
    v8 = property[8];
    v10 = property[5];
    v9 = property[6];
    *(v2 + 208) = property[7];
    *(v2 + 224) = v8;
    *(v2 + 176) = v10;
    *(v2 + 192) = v9;
  }

  *(v2 + 240) = error;
  (*(*(v2 + 256) + 16))();
  v11 = *(a1 + 32);

  sub_10001B690(v11, 42);
}

size_t _xpc_spawnattr_pack_string_fragment(uint64_t a1, _DWORD *a2, void *a3, char *__src)
{
  strcpy((a1 + *a2 + 244), __src);
  result = strlen(__src);
  *a2 += result;
  *a3 -= result;
  return result;
}

size_t _xpc_spawnattr_pack_string(uint64_t a1, _DWORD *a2, void *a3, char *__src)
{
  strcpy((a1 + *a2 + 244), __src);
  result = strlen(__src);
  *a2 += result + 1;
  *a3 -= result + 1;
  return result;
}

const char *_xpc_spawnattr_unpack_string(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v3 = (a1 + a3 + 244);
  if (strnlen(v3, a2 - a3) + 1 <= a2 - a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *_xpc_spawnattr_pack_bytes(uint64_t a1, _DWORD *a2, void *a3, void *__src, size_t __n)
{
  v5 = __n;
  result = memcpy((a1 + *a2 + 244), __src, __n);
  *a2 += v5;
  *a3 -= v5;
  return result;
}

uint64_t _xpc_spawnattr_unpack_bytes(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a2 - a3 >= a4)
  {
    v4 = a1 + a3 + 244;
  }

  else
  {
    v4 = 0;
  }

  if (a2 <= a3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

const char *_xpc_spawnattr_unpack_strings(uint64_t a1, unint64_t a2, unsigned int a3, const char **a4, uint64_t a5)
{
  if (a3 >= a2)
  {
    return 0;
  }

  v5 = a5;
  if (!a5)
  {
    return *a4;
  }

  v7 = a3;
  v9 = a1 + 244;
  for (i = a4; ; ++i)
  {
    v11 = (v9 + v7);
    v12 = strnlen(v11, a2 - v7);
    if (v12 + 1 > a2 - v7)
    {
      break;
    }

    v7 += v12 + 1;
    *i = v11;
    if (!--v5)
    {
      return *a4;
    }
  }

  return 0;
}

uint64_t _xpc_spawnattr_binprefs_pack(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v8 = xpc_binprefs_count(a2);
  *(a1 + 32) = v8;
  v9 = 0;
  if (v8)
  {
    *(a1 + 36) = *a3;
    v10 = 8 * (v8 - 1);
    v11 = v8;
    v12 = (*a3 + a1 + 248);
    do
    {
      *(v12 - 1) = xpc_binprefs_cpu_type(a2, v9);
      *v12 = xpc_binprefs_cpu_subtype(a2, v9);
      v12 += 2;
      ++v9;
    }

    while (v11 != v9);
    v9 = v10 + 8;
  }

  else
  {
    *(a1 + 36) = 0;
  }

  result = xpc_binprefs_count(a2);
  if (v9 != 8 * result)
  {
    sub_100054404();
  }

  *a3 += v9;
  *a4 -= v9;
  return result;
}

uint64_t _xpc_spawnattr_binprefs_unpack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2 || a2 - *(a1 + 36) < 8 * v2)
  {
    return 0;
  }

  xpc_binprefs_alloc();
  v4 = v5;
  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = (*(a1 + 36) + a1 + 248);
    do
    {
      xpc_binprefs_add(v4, *(v7 - 1), *v7);
      ++v6;
      v7 += 2;
    }

    while (v6 < *(a1 + 32));
  }

  return v4;
}

void *sub_1000166A0(const void *a1, size_t size)
{
  v4 = sub_100014514(size, 0x39A35613uLL);

  return memcpy(v4, a1, size);
}

char *sub_1000166EC(const char *a1)
{
  for (i = a1; ; a1 = i)
  {
    result = strdup(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      v3 = *__error();
      if (v3)
      {
        sub_100054420(v3);
      }
    }

    sub_100016680();
  }

  return result;
}

char *sub_100016744(const char *a1, size_t a2)
{
  v2 = a2;
  v3 = a1;
  while (1)
  {
    result = strndup(a1, a2);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      v5 = *__error();
      if (v5)
      {
        sub_100054420(v5);
      }
    }

    sub_100016680();
    a1 = v3;
    a2 = v2;
  }

  return result;
}

uint64_t sub_1000167A0(const char *a1, const char *a2)
{
  memset(v8, 0, sizeof(v8));
  sub_100016860(a1, v8);
  memset(v7, 0, sizeof(v7));
  sub_100016860(a2, v7);
  v3 = 0;
  while (1)
  {
    v4 = v8[v3];
    v5 = v7[v3];
    if (v4 > v5)
    {
      break;
    }

    if (v4 < v5)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v3 == 3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100016860(const char *a1, uint64_t a2)
{
  v3 = strdup(a1);
  v4 = 0;
  __stringp = v3;
  do
  {
    v5 = strsep(&__stringp, ".");
    if (!v5)
    {
      break;
    }

    v6 = 0;
    *(a2 + v4) = strtoull(v5, &v6, 10);
    v4 += 8;
  }

  while (v4 != 24);
  free(v3);
}

char *sub_1000168E0(char *a1, ...)
{
  va_start(va, a1);
  v4 = 0;
  while (1)
  {
    vasprintf(&v4, a1, va);
    result = v4;
    if (v4)
    {
      break;
    }

    if (*__error() != 12)
    {
      v3 = *__error();
      if (v3)
      {
        sub_100054420(v3);
      }
    }

    sub_100016680();
  }

  return result;
}

void *sub_100016954(const void *a1)
{
  for (i = a1; ; a1 = i)
  {
    result = _Block_copy(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      v3 = *__error();
      if (v3)
      {
        sub_100054420(v3);
      }
    }

    sub_100016680();
  }

  return result;
}

BOOL sub_1000169EC(const char *a1, const char *a2)
{
  v4 = &a1[strlen(a1)];
  v5 = &v4[-strlen(a2)];
  return v5 >= a1 && strcmp(v5, a2) == 0;
}

BOOL sub_100016A6C(char *__s1, const char *a2)
{
  result = (__s1 | a2) == 0;
  if (__s1)
  {
    if (a2)
    {
      return strcmp(__s1, a2) == 0;
    }
  }

  return result;
}

BOOL sub_100016AAC(char *a1, const char *a2)
{
  result = (a1 | a2) == 0;
  if (a1)
  {
    if (a2)
    {
      return strcasecmp(a1, a2) == 0;
    }
  }

  return result;
}

size_t sub_100016AEC(xpc_object_t xarray, const char *a2)
{
  result = 0;
  if (xarray)
  {
    if (a2)
    {
      result = xpc_array_get_count(xarray);
      if (result)
      {
        v5 = result;
        v6 = 0;
        while (1)
        {
          string = xpc_array_get_string(xarray, v6);
          if (string)
          {
            if (!strcmp(string, a2))
            {
              break;
            }
          }

          if (v5 == ++v6)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100016BA4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 5381;
  }

  result = 5381;
  do
  {
    v4 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    result = 33 * result + v4;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t sub_100016BD8(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 1;
  do
  {
    result = 33 * result + v1;
    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_100016C08(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a2 + 8; *(i - 8) != a1; i += 16)
  {
    if (!--a3)
    {
      return 0;
    }
  }

  return *i;
}

uint64_t sub_100016C38()
{
  sub_100016C7C();
  if (sub_100050E30())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016C7C()
{
  io_main = 0;
  v0 = mach_host_self();
  v1 = host_get_io_main(v0, &io_main);
  mach_port_deallocate(mach_task_self_, v0);
  if (v1)
  {
    return 0;
  }

  else
  {
    return io_main;
  }
}

mach_port_name_t *sub_100016CD8()
{
  v0 = sub_100016C7C();
  v1 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040B400383CuLL);
  v2 = v1;
  if (v1)
  {
    *v1 = v0;
    if (mach_port_allocate(mach_task_self_, 1u, v1 + 1))
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void sub_100016D50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 24));
  }

  sub_100016D98(a1);
}

void sub_100016D98(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 32), 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    mach_port_mod_refs(mach_task_self_, *(a1 + 4), 1u, -1);
    mach_port_deallocate(mach_task_self_, *a1);

    free(a1);
  }
}

void sub_100016E0C(uint64_t a1, dispatch_queue_t queue)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  if (queue)
  {
    atomic_fetch_add_explicit((a1 + 32), 1u, memory_order_relaxed);
    v5 = dispatch_source_create(&_dispatch_source_type_mach_recv, *(a1 + 4), 0, queue);
    dispatch_set_context(v5, a1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100016EFC;
    handler[3] = &unk_100078808;
    handler[4] = v5;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_source_set_cancel_handler_f(v5, sub_100016D98);
    *(a1 + 24) = v5;
    dispatch_activate(v5);
  }
}

uint64_t sub_100016F18(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  mig_reply_setup(a1, a2);
  a2[1].msgh_remote_port = -305;
  if (a1->msgh_id != 53)
  {
    return 1;
  }

  v4 = a1 + 1;
  if ((a1->msgh_bits & 0x80000000) != 0)
  {
    if (v4->msgh_bits)
    {
      msgh_size = a1[1].msgh_size;
    }

    else
    {
      msgh_size = 0;
    }

    v4 = (a1 + 12 * v4->msgh_bits + 28);
    v6 = a1;
  }

  else
  {
    msgh_size = 0;
    v6 = 0;
  }

  v8 = a1->msgh_size;
  msgh_remote_port = a1->msgh_remote_port;
  if (msgh_remote_port)
  {
    refs = 0;
    if (mach_port_get_refs(mach_task_self_, msgh_remote_port, 0, &refs) || refs < 2)
    {
      goto LABEL_29;
    }
  }

  v10 = v4->msgh_size & 0xFFF;
  if ((v10 - 100) < 3)
  {
    v12 = *&v4->msgh_voucher_port;
    v11 = *&v4[1].msgh_bits;
    msgh_bits = msgh_remote_port;
LABEL_16:
    v12(v11, msgh_bits);
    goto LABEL_28;
  }

  v14 = v8 + a1 - (v4 + 72) - (v4->msgh_size >> 30);
  if (v10 == 160)
  {
    p_msgh_size = &v4[3].msgh_size;
    if (((v14 + 0x7FFFFFFFCLL) & 0x7FFFFFFF0) == 0)
    {
      p_msgh_size = *p_msgh_size;
    }

    if (!msgh_size)
    {
      msgh_size = v4[1].msgh_remote_port;
    }

    (*&v4->msgh_voucher_port)(*&v4[1].msgh_bits, msgh_size, v4[3].msgh_bits, p_msgh_size);
  }

  else if (v10 == 150)
  {
    v15 = (v14 + 0x7FFFFFFFCLL) >> 3;
    v12 = *&v4->msgh_voucher_port;
    v11 = *&v4[1].msgh_bits;
    msgh_bits = v4[3].msgh_bits;
    switch(v15)
    {
      case 2:
        (v12)(v11, msgh_bits, *&v4[3].msgh_size, *&v4[3].msgh_local_port);
        break;
      case 1:
        (v12)(v11, msgh_bits, *&v4[3].msgh_size);
        break;
      case 0:
        goto LABEL_16;
      default:
        (v12)(v11, msgh_bits, &v4[3].msgh_size);
        break;
    }
  }

LABEL_28:
  if (msgh_remote_port)
  {
LABEL_29:
    mach_port_deallocate(mach_task_self_, msgh_remote_port);
  }

  if (v6 && v6[1].msgh_bits)
  {
    v17 = 0;
    v18 = &v6[1].msgh_size;
    do
    {
      v19 = *v18;
      v18 += 3;
      mach_port_deallocate(mach_task_self_, v19);
      ++v17;
    }

    while (v17 < v6[1].msgh_bits);
  }

  return 1;
}

uint64_t sub_1000170F0(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v7[0] = 0;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a2;
  return sub_100050BD4(a2, a3, *(a1 + 4), v7, 4u, a6);
}

uint64_t sub_100017160(unsigned int a1, unsigned int a2)
{
  v2 = a1 + a2;
  if (v2 == (v2 & 0x1FFFFFFFFLL) && v2 << 31 >> 31 == v2)
  {
    return a1 + a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

xpc_type_t sub_100017184(FILE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    sub_100049DE0(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  result = xpc_get_type(a4);
  if (result == &_xpc_type_string)
  {
    value = COERCE_DOUBLE(xpc_string_get_string_ptr(a4));
    v35 = "%s";
LABEL_22:
    v38 = a1;
    v39 = 0;
    return sub_100049ECC(v38, v39, v35, v12, v13, v14, v15, v16, *&value);
  }

  if (result == &_xpc_type_int64)
  {
    value = COERCE_DOUBLE(xpc_int64_get_value(a4));
    v35 = "%lld";
    goto LABEL_22;
  }

  if (result == &_xpc_type_uint64)
  {
    value = COERCE_DOUBLE(xpc_uint64_get_value(a4));
    v35 = "%llu";
    goto LABEL_22;
  }

  if (result == &_xpc_type_double)
  {
    value = xpc_double_get_value(a4);
    v35 = "%f";
    goto LABEL_22;
  }

  if (result == &_xpc_type_BOOL)
  {
    if (a4 == &_xpc_BOOL_true)
    {
      v36 = "true";
    }

    else
    {
      v36 = "false";
    }

    value = *&v36;
    v35 = "%s";
    goto LABEL_22;
  }

  if (result == &_xpc_type_date)
  {
    xpc_date_get_value_absolute();
    v44 = (v37 + 978307200.0);
    memset(&v43, 0, sizeof(v43));
    gmtime_r(&v44, &v43);
    *v45 = 0;
    v46 = 0;
    memset(v47, 0, sizeof(v47));
    strftime(v45, 0x1EuLL, "%a %b %d %T %Y %Z", &v43);
    value = COERCE_DOUBLE(v45);
    v35 = "%s (approx)";
    goto LABEL_22;
  }

  if (result != &_xpc_type_array)
  {
    if (result != &_xpc_type_dictionary)
    {
      if (result != &_xpc_type_bundle)
      {
        return result;
      }

      sub_100049ECC(a1, 0, "@bundle {", v12, v13, v14, v15, v16);
      info_dictionary = xpc_bundle_get_info_dictionary();
      sub_100049E5C(a1, a2 + 1, "info plist = ", v18, v19, v20, v21, v22);
      sub_100017184(a1, a2 + 1, 0, info_dictionary);
      v23 = xpc_bundle_copy_services();
      sub_100049E5C(a1, a2 + 1, "service bundles => ", v24, v25, v26, v27, v28);
      sub_100017184(a1, a2 + 1, 0, v23);
      xpc_release(v23);
      v34 = "}";
      goto LABEL_29;
    }

    sub_100049ECC(a1, 0, "{", v12, v13, v14, v15, v16);
    *&v43.tm_sec = 0;
    *&v43.tm_hour = a1;
    *&v43.tm_mon = a2 + 1;
    xpc_dictionary_apply_f();
    v35 = "}";
    v38 = a1;
    v39 = a2;
    return sub_100049ECC(v38, v39, v35, v12, v13, v14, v15, v16, *&value);
  }

  sub_100049ECC(a1, 0, "[", v12, v13, v14, v15, v16);
  if (xpc_array_get_count(a4))
  {
    v40 = 0;
    do
    {
      sub_100049E5C(a1, a2 + 1, "%lu = ", v29, v30, v31, v32, v33, v40);
      v41 = xpc_array_get_value(a4, v40);
      sub_100017184(a1, a2 + 1, 0, v41);
      ++v40;
    }

    while (v40 < xpc_array_get_count(a4));
  }

  v34 = "]";
LABEL_29:

  return sub_100049ECC(a1, a2, v34, v29, v30, v31, v32, v33);
}

xpc_type_t sub_10001755C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  sub_100049E5C(v9, v10, "%s => ", a4, a5, a6, a7, a8, a1);

  return sub_100017184(v9, v10, 0, a2);
}

uint64_t sub_1000175C8(uint64_t a1, mach_port_context_t a2)
{
  v4.reserved[1] = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 7;
  __strlcpy_chk();
  *&v4.flags = 0x80000024B3;
  v4.reserved[0] = v5;
  return sub_10000B620(&v4, a2);
}

void start()
{
  if (!getenv("LAUNCH_DID_REEXEC") && !getenv("XPC_USERSPACE_REBOOTED"))
  {
    sub_100045FB0("kern.initproc_spawned", 1);
  }

  _os_crash_callback = os_crash_function;
  v0 = isatty(1);
  if (v0 && (byte_10007F0E1 & 1) == 0)
  {
    v17 = v0;
    v18 = __stdoutp;
    v19 = getprogname();
    fprintf(v18, "%s cannot be run directly.\n", v19);
    v20 = getprogname();
    sub_1000441E0("%s cannot be run directly (stdout: %d)", v20, v17);
  }

  v1 = getpid();
  if (v1 != 1 && (byte_10007F0E1 & 1) == 0)
  {
    v21 = v1;
    v22 = __stdoutp;
    v23 = getprogname();
    fprintf(v22, "%s cannot be run directly.\n", v23);
    v24 = getprogname();
    sub_1000441E0("%s cannot be run directly (pid = %d)", v24, v21);
  }

  v2 = mach_host_self();
  panic_init(v2);
  sub_1000159E0();
  sub_1000156F8();
  sub_10001A408();
  if ((byte_10007F0E1 & 1) == 0)
  {
    sub_100017CF4(0, 0);
    sub_100017CF4(1, 1);
    sub_100017CF4(2, 2);
  }

  sub_100010B28(570425408);
  sub_100010550();
  sub_10004D978();
  nullsub_23();
  memset(out, 0, 37);
  memset(init_port_set, 0, sizeof(init_port_set));
  _NSGetMachExecuteHeader();
  if (_dyld_get_image_uuid())
  {
    goto LABEL_53;
  }

  _os_assumes_log();
  while (1)
  {
    sub_10004749C(5, "hello, launchd UUID: %s", out);
    sub_100044E10(v3, v4);
    if (byte_10007F0FB == 1)
    {
      dword_10007DC68 = -1;
    }

    if (byte_10007F0C7 == 1)
    {
      sub_10004749C(65543, "Memory limit override file is present, disabling memory limits.");
      dword_10007DC68 = -1;
    }

    getpid();
    if (memorystatus_control() == -1)
    {
      v5 = dword_10007DC68;
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      sub_10004749C(65539, "Could not opt into %d MB Jetsam high watermark: %d: %s", v5, v6, v8);
    }

    sub_10004749C(65541, "%s", off_10007DC88[0]);
    v37 = 0;
    if (sub_100045D60("kern.bootargs", &v37))
    {
      sub_10004749C(65541, "boot-args = %s", v37);
    }

    free(v37);
    getpid();
    if (proc_disable_wakemon() == -1)
    {
      __error();
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    else
    {
      if (byte_10007F0E1 == 1)
      {
        byte_10007F135 = 1;
        sub_10004749C(65541, "Lean Testing Environment starting.");
      }

      v9 = byte_10007F0E5;
      if (byte_10007F0E3 == 1 && (byte_10007F0E5 & 1) == 0)
      {
        byte_10007F135 = 1;
        sub_10004749C(65541, "Restore environment starting.");
        v9 = byte_10007F0E5;
      }

      if (v9)
      {
        byte_10007F135 = 1;
        sub_10004749C(65541, "BaseSystem environment starting.");
      }

      if (setsid() == -1 && (byte_10007F0E1 & 1) == 0 && (byte_10007F100 != 1 || *__error() != 1) && *__error())
      {
        goto LABEL_52;
      }

      if (chdir("/") != -1)
      {
        if (setlogin("root") != -1)
        {
          v10 = 0;
          while (1)
          {
            v11 = dword_100057760[v10];
            dword_10007DFE8 |= 1 << (v11 - 1);
            if (signal(v11, 1) == -1)
            {
              __error();
              _os_assumes_log();
            }

            if (++v10 == 21)
            {
              v12 = task_set_special_port(mach_task_self_, 4, 0);
              if (!v12)
              {
                bootstrap_port = 0;
                v13 = sub_1000175C8(off_10007D798, 0x70507uLL);
                init_port_set[0] = v13;
                if (!mach_ports_register(mach_task_self_, init_port_set, 1u))
                {
                  dword_10007F068 = v13;
                  qword_10007F070 = xpc_mach_send_create_with_disposition();
                  qword_10007F028 = mach_absolute_time();
                  uuid_generate(byte_10007F140);
                  LODWORD(qword_10007F150) = getuid();
                  HIDWORD(qword_10007F150) = geteuid();
                  dword_10007F158 = getegid();
                  dword_10007F15C = geteuid();
                  LODWORD(qword_10007F160) = getegid();
                  HIDWORD(qword_10007F160) = getpid();
                  dword_10007F168 = sub_100021F44();
                  unk_10007F16C = 0;
                  v35 = 0u;
                  v36 = 0u;
                  v33 = 0u;
                  v34 = 0u;
                  v31 = 0u;
                  v32 = 0u;
                  v29 = 0u;
                  v30 = 0u;
                  v27 = 0u;
                  v28 = 0u;
                  *init_port_set = 0u;
                  v26 = 0u;
                  v14 = getpid();
                  v15 = sub_100045BEC(v14, init_port_set);
                  if (v15)
                  {
                    if (v15 != 45)
                    {
                      sub_1000441E0("could not get unique pid");
                    }
                  }

                  qword_10007F030 = *(&v34 + 1);
                  sub_10004AAF4();
                  sub_10000E968();
                  sub_10003EDD8();
                  sub_10002223C();
                  sub_10003126C();
                  sub_100040BE0();
                  sub_100042050();
                  sub_10003E324();
                  sub_10003DD54();
                  nullsub_23();
                  sub_10001481C();
                  sub_100000CC4();
                  sub_10001F280();
                  sub_10000CF10();
                  nullsub_23();
                  sub_10000E510();
                  sub_100013108();
                  sub_10001F9D0();
                  sub_100001260();
                  sub_10001546C();
                  sub_1000489A4();
                  v16 = sub_1000157D8();
                  dispatch_activate(v16);
                  dispatch_main();
                }

                sub_1000441E0("could not set up inheritance port");
              }

              sub_10004749C(3, "Could not neuter bootstrap port: 0x%x", v12);
              exit(1);
            }
          }
        }

        goto LABEL_51;
      }
    }

    __error();
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_51:
    __error();
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_52:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_53:
    uuid_unparse(init_port_set, out);
  }
}

int *sub_100017CF4(int a1, int a2)
{
  result = open("/dev/null", a1 | 0x20000, 438);
  if (result != -1)
  {
    v4 = dup2(result, a2);
    if (v4 == -1)
    {
      v5 = *__error();
      if (v5)
      {
        sub_100054420(v5);
      }
    }

    return sub_1000413F8(v4);
  }

  return result;
}

size_t sub_100017D88(const char *a1)
{
  if (sub_100017DF8(a1, "Frameworks") & 1) != 0 || (sub_100017DF8(a1, "PrivateFrameworks"))
  {
    return 1;
  }

  return sub_100017DF8(a1, "AppRemovalServices");
}

size_t sub_100017DF8(const char *a1, const char *a2)
{
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", "/System/Library", a2);
  if (sub_1000169A8(a1, __str))
  {
    return 1;
  }

  result = sub_10004E478("SystemRoots");
  if (result)
  {
    v5 = result;
    if (xpc_get_type(result) == &_xpc_type_array)
    {
      result = xpc_array_get_count(v5);
      if (result)
      {
        v6 = 0;
        while (1)
        {
          string = xpc_array_get_string(v5, v6);
          if (string)
          {
            v8 = string;
            bzero(__str, 0x400uLL);
            snprintf(__str, 0x400uLL, "%s/%s", v8, a2);
            if (sub_1000169A8(a1, __str))
            {
              break;
            }
          }

          if (++v6 >= xpc_array_get_count(v5))
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_100017F4C(char a1, const char *a2, _OWORD *a3, uint64_t a4, NSObject *a5)
{
  v10 = sub_10001BC6C(0);
  v10[100] = a1;
  *(v10 + 2) = sub_1000166EC(a2);
  v11 = a3[1];
  *(v10 + 24) = *a3;
  *(v10 + 40) = v11;
  *(v10 + 7) = a4;
  *(v10 + 8) = a5;
  dispatch_retain(a5);
  return v10;
}

void sub_100017FC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  free(*(a1 + 16));
  dispatch_release(*(a1 + 64));
  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_10001B690(v5, 0);
    *(a1 + 88) = 0;
  }
}

void *sub_100018034(uint64_t a1, void *aBlock)
{
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  result = _Block_copy(aBlock);
  *(a1 + 72) = result;
  return result;
}

void *sub_10001806C(uint64_t a1, void *aBlock)
{
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  result = _Block_copy(aBlock);
  *(a1 + 80) = result;
  return result;
}

void sub_1000180A4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 101))
  {
    sub_100054404();
  }

  *(a1 + 101) |= 1u;
  sub_10001B5B8(a1, 43);
  if (!*(a1 + 72))
  {
    sub_100054404();
  }

  if (!*(a1 + 80))
  {
    sub_100054404();
  }

  v2 = *(a1 + 16);
  if (*v2 != 47 || sub_1000169A8(*(a1 + 16), "/usr/lib") || sub_1000169A8(v2, "/usr/local/lib"))
  {

    sub_100018338(a1);
    return;
  }

  v3 = *(a1 + 100);
  if (v3 > 3)
  {
    if (v3 - 4 < 2)
    {
      if (qword_10007DFF0)
      {
        if (xpc_dictionary_get_BOOL(qword_10007DFF0, *(a1 + 16)))
        {
          sub_100019154(a1);
          return;
        }

        v3 = *(a1 + 100);
      }

      if (v3 == 5)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v5 = sub_10000EBAC(v10, *(a1 + 16), 0);
      v11 = *(a1 + 40);
      *(v5 + 1) = *(a1 + 24);
      *(v5 + 2) = v11;
      v7 = *(a1 + 64);
      *(v5 + 6) = *(a1 + 56);
      v12 = _NSConcreteStackBlock;
      v13 = 0x40000000;
      v8 = &unk_100078950;
      v9 = sub_1000194C0;
      goto LABEL_37;
    }

    if (v3 - 6 < 2)
    {
      if (v3 == 7)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      v5 = sub_10000EBAC(v4, *(a1 + 16), 0);
      v6 = *(a1 + 40);
      *(v5 + 1) = *(a1 + 24);
      *(v5 + 2) = v6;
      v7 = *(a1 + 64);
      *(v5 + 6) = *(a1 + 56);
      v12 = _NSConcreteStackBlock;
      v13 = 0x40000000;
      v8 = &unk_100078970;
      v9 = sub_1000196B0;
LABEL_37:
      v14 = v9;
      v15 = v8;
      v16 = a1;
      v17 = v5;
      sub_10000EBE0(v5, v7, &v12);
      return;
    }

LABEL_42:
    sub_100054674();
  }

  switch(v3)
  {
    case 1u:

      sub_1000183BC(a1);
      break;
    case 2u:

      sub_10001848C(a1);
      break;
    case 3u:

      sub_10001856C(a1);
      break;
    default:
      goto LABEL_42;
  }
}

void sub_100018338(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  (*(*(a1 + 72) + 16))();
  v2 = *(a1 + 101);
  if ((v2 & 1) == 0)
  {
    sub_100054690(v2);
  }

  *(a1 + 101) = v2 & 0xFE;

  sub_10001B690(a1, 43);
}

void sub_1000183BC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 16);
  if (sub_1000169EC(v3, ".plist"))
  {
    v4 = 2;
  }

  else if (sub_1000169EC(v3, ".xpc") || sub_1000169EC(v3, ".pluginkit"))
  {
    v2 |= 0x1000uLL;
    v4 = 7;
  }

  else
  {
    v4 = 3;
  }

  v5 = sub_100017F4C(v4, v3, (a1 + 24), v2, *(a1 + 64));
  sub_10001905C(a1, v5);
  sub_10001B690(v5, 0);

  sub_100019154(a1);
}

void sub_10001848C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (sub_1000169EC(v2, ".plist"))
  {
    v3 = sub_10000EBAC(0, v2, 0);
    v4 = *(a1 + 40);
    *(v3 + 1) = *(a1 + 24);
    *(v3 + 2) = v4;
    v5 = *(a1 + 64);
    *(v3 + 6) = *(a1 + 56);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10001930C;
    v6[3] = &unk_100078910;
    v6[4] = a1;
    v6[5] = v3;
    sub_10000EBE0(v3, v5, v6);
  }

  else
  {

    sub_100018338(a1);
  }
}

void sub_10001856C(uint64_t a1)
{
  v2 = sub_10000EBAC(3, *(a1 + 16), 0);
  v3 = *(a1 + 40);
  *(v2 + 1) = *(a1 + 24);
  *(v2 + 2) = v3;
  v4 = *(a1 + 64);
  *(v2 + 6) = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100019360;
  v5[3] = &unk_100078930;
  v5[4] = a1;
  v5[5] = v2;
  sub_10000EBE0(v2, v4, v5);
}

void sub_100018608(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 148))
  {
    sub_100054404();
  }

  sub_10001B690(*(a1 + 48), 15);
  v3 = *(a1 + 72);
  if (v3)
  {
    xpc_release(v3);
  }

  dispatch_release(*(a1 + 16));
  _Block_release(*(a1 + 24));
  xpc_release(*(a1 + 80));
  v4 = *(a1 + 96);
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    dispatch_release(v5);
  }

  sub_10001B690(*(a1 + 64), 0);
  v6 = *(a1 + 32);

  sub_10001B690(v6, 0);
}

void sub_1000186B8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, void *a7)
{
  if ((a2 - 1) >= 2)
  {
    sub_100054404();
  }

  v12 = a2;
  if (!a1[32])
  {
    a1[32] = mach_absolute_time();
  }

  if (v12 == 1)
  {
    sub_10002D450(a1, 8);
  }

  v14 = sub_1000157D8();
  v15 = sub_10001BC2C(0);
  *(v15 + 6) = sub_10001B5B8(a1, 15);
  v15[104] = v12;
  *(v15 + 11) = a6;
  if (a7)
  {
    if (v12 != 1)
    {
      sub_100054404();
    }

    *(v15 + 12) = xpc_retain(a7);
  }

  if (a3)
  {
    *(v15 + 9) = xpc_retain(a3);
  }

  *(v15 + 2) = v14;
  dispatch_retain(v14);
  *(v15 + 10) = xpc_dictionary_create(0, 0, 0);
  *(v15 + 4) = sub_100010918();
  if (v12 == 2 && a3)
  {
    v16 = dispatch_group_create();
    *(v15 + 7) = v16;
    dispatch_group_enter(v16);
  }

  *(v15 + 8) = sub_1000496EC();
  if (a5 == &qword_10007F150 || (*a5 == qword_10007F150 ? (v17 = a5[1] == *&dword_10007F158) : (v17 = 0), v17 ? (v18 = a5[2] == qword_10007F160) : (v18 = 0), v18 ? (v19 = a5[3] == *&dword_10007F168) : (v19 = 0), v19))
  {
    v20 = 2;
  }

  else if (sub_10001A604(a5, 0, 2))
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v15[112] = v20;
  v21 = *(a5 + 1);
  *(v15 + 116) = *a5;
  *(v15 + 132) = v21;
  if (xpc_get_type(a4) != &_xpc_type_array)
  {
    if (xpc_get_type(a4) != &_xpc_type_string)
    {
      if (xpc_get_type(a4) != &_xpc_type_dictionary)
      {
        sub_1000546AC();
      }

      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = sub_1000197F0;
      applier[3] = &unk_100078990;
      applier[4] = a6;
      applier[5] = v15;
      xpc_dictionary_apply(a4, applier);
      goto LABEL_59;
    }

    if (a6 == 2)
    {
      v30 = (a6 & 0x1000) == 0;
      v31 = 6;
      v32 = 4;
    }

    else
    {
      if (a6 != 1)
      {
        v33 = 1;
LABEL_58:
        string_ptr = xpc_string_get_string_ptr(a4);
        v35 = sub_1000157D8();
        v36 = sub_100017F4C(v33, string_ptr, v15 + 116, a6 & 0xFFFFFF00, v35);
        sub_100019704(v15, v36);
        sub_10001B690(v36, 0);
        goto LABEL_59;
      }

      v30 = (a6 & 0x1000) == 0;
      v31 = 7;
      v32 = 5;
    }

    if (v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    goto LABEL_58;
  }

  if (xpc_array_get_count(a4))
  {
    v22 = 0;
    do
    {
      string = xpc_array_get_string(a4, v22);
      if (string)
      {
        v24 = string;
        if ((a6 & 0x1000) != 0)
        {
          v25 = 6;
        }

        else
        {
          v25 = 4;
        }

        if ((a6 & 0x1000) != 0)
        {
          v26 = 7;
        }

        else
        {
          v26 = 5;
        }

        if (a6 != 1)
        {
          v26 = 1;
        }

        if (a6 == 2)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        a6 = a6 & 0xFFFFFF00;
        v28 = sub_1000157D8();
        v29 = sub_100017F4C(v27, v24, v15 + 116, a6, v28);
        sub_100019704(v15, v29);
        sub_10001B690(v29, 0);
      }

      ++v22;
    }

    while (v22 < xpc_array_get_count(a4));
  }

LABEL_59:
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_100018B1C;
  aBlock[3] = &unk_100078828;
  aBlock[4] = v15;
  if (v15[148])
  {
    sub_100054404();
  }

  *(v15 + 3) = _Block_copy(aBlock);
  v37 = sub_1000157D8();
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 0x40000000;
  v39[2] = sub_100018D60;
  v39[3] = &unk_100078848;
  v39[4] = v15;
  v38 = sub_10003DE30(a3, v37, v39);
  if (a3)
  {
    if ((v38 & 1) == 0)
    {
      sub_10002C908(a1, 5, "couldn't handoff domain IO, asynced away");
    }
  }
}

void sub_100018B1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  if ((*(v3 + 89) & 4) != 0)
  {
    if (*(v3 + 104) != 1)
    {
      sub_100054404();
    }

    v5 = *(v3 + 64);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = sub_100019F24;
    v17[3] = &unk_100078A10;
    v17[4] = v4;
    v17[5] = v3;
    sub_10004964C(v5, v17);
  }

  v6 = *(v3 + 72);
  if (v6)
  {
    if (*(v3 + 104) == 1)
    {
      v7 = "bootstrap-error";
    }

    else
    {
      v7 = "bootout-error";
    }

    xpc_dictionary_set_int64(*(v3 + 72), v7, *(v3 + 108));
    xpc_dictionary_set_value(v6, "errors", *(v3 + 80));
    if (*(v3 + 56))
    {
      xpc_retain(v6);
      sub_10001B5B8(v4, 16);
      dispatch_group_leave(*(v3 + 56));
      v8 = *(v3 + 56);
      v9 = *(v3 + 16);
      v11 = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100019FBC;
      v14 = &unk_100078A30;
      v15 = v6;
      v16 = v4;
      dispatch_group_notify(v8, v9, &v11);
    }

    else if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
    {
      _os_assumes_log_ctx();
    }
  }

  else
  {
    v10 = *(v3 + 80);
    v11 = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10001A03C;
    v14 = &unk_100078A50;
    v15 = v3;
    xpc_dictionary_apply(v10, &v11);
  }

  if ((*(v3 + 89) & 0x20) != 0)
  {
    v4[33] = sub_10000B4A8(v4[32]);
    sub_10002D7C4(v4);
  }

  if (*(v3 + 104) == 1)
  {
    sub_10002D4F0(v4, 8);
  }

  sub_10001B690(*(a1 + 32), 0);
}

void sub_100018D60(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 16));
  if (*(v1 + 148))
  {
    sub_100054404();
  }

  *(v1 + 148) |= 1u;
  sub_10001B5B8(v1, 45);
  if (sub_100010B1C(*(v1 + 32)))
  {
    v2 = sub_100010B1C(*(v1 + 32));
    if (*(v1 + 90))
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = sub_100010AF4(*(v1 + 32), i);
        sub_1000180A4(v5);
      }
    }
  }

  else
  {

    sub_100019E1C(v1);
  }
}

void sub_100018E2C(void *a1, const char *a2, void *a3, _OWORD *a4, uint64_t a5)
{
  v10 = sub_1000157D8();
  v11 = sub_100017F4C(6, a2, a4, 20480, v10);
  if (a3)
  {
    xpc_retain(a3);
  }

  sub_10001B5B8(a1, 18);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_100018F24;
  v12[3] = &unk_100078870;
  v12[4] = a5;
  v12[5] = a3;
  v12[6] = a1;
  v12[7] = v11;
  sub_100018034(v11, v12);
  sub_10001806C(v11, &stru_1000788B0);
  sub_1000180A4(v11);
}

void sub_100018F24(void *a1, uint64_t a2, int a3)
{
  v8 = a3;
  if (!a3)
  {
    v5 = a1[5];
    if (v5)
    {
      if (!sub_10000ED38(a2))
      {
        sub_100054404();
      }

      info_dictionary = xpc_bundle_get_info_dictionary();
      if (info_dictionary)
      {
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 0x40000000;
        applier[2] = sub_10001A0E4;
        applier[3] = &unk_100078A70;
        applier[4] = info_dictionary;
        xpc_dictionary_apply(v5, applier);
      }
    }

    sub_100030B1C(a1[6], a2, a1[5], 0, &v8);
    v7 = a1[5];
    if (v7)
    {
      xpc_release(v7);
    }
  }

  (*(a1[4] + 16))();
  sub_10001B690(a1[6], 18);
  sub_10001B690(a1[7], 0);
}

void *sub_10001905C(uint64_t a1, void *a2)
{
  if (*(a1 + 96))
  {
    sub_100054404();
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_100019220;
  aBlock[3] = &unk_1000788D0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  sub_100018034(a2, aBlock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100019304;
  v6[3] = &unk_1000788F0;
  v6[4] = a1;
  sub_10001806C(a2, v6);
  v4 = *(a1 + 88);
  if (!v4)
  {
    v4 = sub_100010918();
    *(a1 + 88) = v4;
  }

  return sub_1000109BC(v4, a2);
}

void sub_100019154(uint64_t a1)
{
  if (*(a1 + 88))
  {
    sub_10001B5B8(a1, 44);
    v2 = sub_100010B1C(*(a1 + 88));
    *(a1 + 96) = v2;
    if (!v2)
    {
      sub_100054404();
    }

    if (sub_100010B1C(*(a1 + 88)))
    {
      v3 = 0;
      do
      {
        v4 = sub_100010AF4(*(a1 + 88), v3);
        sub_1000180A4(v4);
        ++v3;
      }

      while (v3 < sub_100010B1C(*(a1 + 88)));
    }

    sub_10001B690(a1, 44);
  }

  else
  {

    sub_100018338(a1);
  }
}

void sub_100019220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019294(*(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (!v5)
  {
    sub_100054404();
  }

  v6 = v5 - 1;
  *(v4 + 96) = v6;
  if (!v6)
  {

    sub_100018338(v4);
  }
}

uint64_t sub_100019294(uint64_t a1)
{
  v2 = *(a1 + 101);
  if ((v2 & 1) == 0)
  {
    sub_100054690(v2);
  }

  dispatch_assert_queue_V2(*(a1 + 64));
  v3 = *(*(a1 + 80) + 16);

  return v3();
}

void sub_10001930C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100054404();
  }

  sub_100018338(*(a1 + 32));
  v3 = *(a1 + 40);

  sub_10001B690(v3, 0);
}

void sub_100019360(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    sub_100018338(*(a1 + 32));
  }

  else
  {
    if (!a2)
    {
      sub_100054404();
    }

    if (!sub_100010B1C(a2) && (*(*(a1 + 32) + 57) & 0x20) == 0)
    {
      sub_10004749C(4, "Activated a directory (%s) and found no files", "<private>");
    }

    if (sub_100010B1C(a2))
    {
      v5 = 0;
      do
      {
        v6 = sub_100010AF4(a2, v5);
        v7 = *(a1 + 32);
        v8 = *(v7 + 40);
        *(v6 + 16) = *(v7 + 24);
        *(v6 + 32) = v8;
        *(v6 + 48) = *(v7 + 56);
        v9 = sub_10000ECF0(v6);
        v10 = sub_10000ED30(v6);
        if (v9 == 3)
        {
          v11 = 5;
        }

        else
        {
          v11 = 2;
        }

        v12 = sub_100017F4C(v11, v10, (*(a1 + 32) + 24), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
        sub_10001905C(*(a1 + 32), v12);
        sub_10001B690(v12, 0);
        ++v5;
      }

      while (v5 < sub_100010B1C(a2));
    }

    sub_100019154(*(a1 + 32));
  }

  v13 = *(a1 + 40);

  sub_10001B690(v13, 0);
}

void sub_1000194C0(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    sub_100054404();
  }

  if (a3)
  {
    sub_100018338(*(a1 + 32));
    v4 = (a1 + 40);
  }

  else
  {
    v4 = (a1 + 40);
    sub_10000ED38(*(a1 + 40));
    v5 = xpc_bundle_copy_services();
    if (xpc_array_get_count(v5))
    {
      v6 = 0;
      do
      {
        value = xpc_array_get_value(v5, v6);
        if (sub_10000ED00(*v4))
        {
          v8 = sub_10001A6F0(value);
          v9 = sub_10000ECF0(v8);
          v10 = *(*(a1 + 32) + 56);
          v11 = sub_10000ED30(v8);
          if (v9 == 1)
          {
            v12 = 7;
          }

          else
          {
            v12 = 6;
          }

          v13 = sub_100017F4C(v12, v11, (*(a1 + 32) + 24), v10 | 0x1000, *(*(a1 + 32) + 64));
          v14 = *(v13 + 40);
          *(v8 + 1) = *(v13 + 24);
          *(v8 + 2) = v14;
          *(v8 + 6) = *(v13 + 7);
          sub_100019294(*(a1 + 32));
          sub_10001B690(v13, 0);
        }

        else
        {
          path = xpc_bundle_get_path();
          v8 = sub_100017F4C(7, path, (*(a1 + 32) + 24), *(*(a1 + 32) + 56) | 0x1000, *(*(a1 + 32) + 64));
          sub_10001905C(*(a1 + 32), v8);
        }

        sub_10001B690(v8, 0);
        ++v6;
      }

      while (v6 < xpc_array_get_count(v5));
    }

    if ((sub_10000ED00(*v4) & 1) == 0 && !xpc_array_get_count(v5))
    {
      v16 = *(a1 + 32);
      v17 = qword_10007DFF0;
      if (!qword_10007DFF0)
      {
        v17 = xpc_dictionary_create(0, 0, 0);
        qword_10007DFF0 = v17;
      }

      xpc_dictionary_set_BOOL(v17, *(v16 + 16), 1);
    }

    xpc_release(v5);
    sub_100019154(*(a1 + 32));
  }

  v18 = *v4;

  sub_10001B690(v18, 0);
}

void sub_1000196B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100054404();
  }

  sub_100018338(*(a1 + 32));
  v3 = *(a1 + 40);

  sub_10001B690(v3, 0);
}

void *sub_100019704(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    sub_100054404();
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1000198D0;
  aBlock[3] = &unk_1000789D0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  sub_100018034(a2, aBlock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100019EB8;
  v5[3] = &unk_1000789F0;
  v5[4] = a1;
  sub_10001806C(a2, v5);
  return sub_1000109BC(*(a1 + 32), a2);
}

uint64_t sub_1000197F0(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_uint64)
  {
    value = xpc_uint64_get_value(object);
  }

  else
  {
    value = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 32) | value;
  v9 = (*(a1 + 32) | value);
  if ((v8 & 0x1000) != 0)
  {
    v10 = 6;
  }

  else
  {
    v10 = 4;
  }

  if ((v8 & 0x1000) != 0)
  {
    v11 = 7;
  }

  else
  {
    v11 = 5;
  }

  if (v9 != 1)
  {
    v11 = 1;
  }

  if (v9 == 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = sub_1000157D8();
  v14 = sub_100017F4C(v12, a2, (v7 + 116), v8 & 0xFFFFFF00, v13);
  sub_100019704(*(a1 + 40), v14);
  sub_10001B690(v14, 0);
  return 1;
}

void sub_1000198D0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000199C8(*(a1 + 32), *(a1 + 40), a2, a3);
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40) + 1;
  *(v4 + 40) = v6;
  if (v6 > sub_100010B1C(v5))
  {
    sub_100054404();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  v9 = sub_100010B1C(*(v7 + 32));
  v10 = *(a1 + 32);
  if (v8 == v9)
  {

    sub_100019E1C(v10);
  }

  else if (*(v10 + 90))
  {
    v11 = sub_1000157D8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100019E88;
    block[3] = &unk_1000789B0;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);
  }
}

void sub_1000199C8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  if (!a4)
  {
    v7 = *(result + 104);
    if ((v7 - 1) >= 2)
    {
      sub_100054404();
    }

    v9 = *(result + 48);
    if (sub_10002CF00(v9))
    {
      v4 = 124;
      goto LABEL_49;
    }

    v10 = *(a2 + 100);
    if ((v10 - 6) >= 2)
    {
      if (v10 != 2)
      {
LABEL_48:
        v4 = 0;
        goto LABEL_49;
      }

      if (v7 == 1)
      {
        if (*(result + 96))
        {
          v4 = 22;
          goto LABEL_49;
        }

        v11 = sub_10002FE08(v9, a3);
        goto LABEL_27;
      }

      v12 = sub_10003060C(v9, a3, *(result + 56));
      if (((v12 == 36) & (*(result + 90) >> 1)) != 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = v12;
      }
    }

    else
    {
      if (v7 == 2)
      {
        v4 = 116;
        goto LABEL_49;
      }

      if ((*(result + 89) & 4) == 0)
      {
        v11 = sub_100030ADC(v9, a3, *(result + 96));
LABEL_27:
        v4 = v11;
        goto LABEL_49;
      }

      sub_10000ED38(a3);
      v13 = *(result + 64);
      info_dictionary = xpc_bundle_get_info_dictionary();
      if (!info_dictionary || (v15 = info_dictionary, (string = xpc_dictionary_get_string(info_dictionary, "CFBundleIdentifier")) == 0))
      {
        v4 = 107;
        goto LABEL_49;
      }

      v17 = string;
      v18 = sub_100049614(v13, string);
      if (!v18)
      {
        goto LABEL_47;
      }

      v19 = v18;
      sub_10000ED38(v18);
      property = xpc_bundle_get_property();
      v21 = xpc_bundle_get_property();
      if (sub_100017D88(v21) && !sub_100017D88(property))
      {
        v4 = 127;
        goto LABEL_49;
      }

      if (sub_100017D88(v21) & 1) == 0 && (sub_100017D88(property))
      {
        v4 = 127;
LABEL_46:
        v29 = sub_10000ED30(v19);
        sub_100019EC0(result, v29, v4);
LABEL_47:
        a3[6] &= ~0x400uLL;
        sub_10004954C(v13, v17, a3);
        goto LABEL_48;
      }

      if (sub_100017D88(v21) & 1) != 0 || (sub_100017D88(property))
      {
        if (!strcmp(v21, property))
        {
          v4 = 121;
        }

        else
        {
          sub_10002C908(*(result + 48), 4, "Conflicts exist in System services. Randomly deciding: path1 = %s, path2 = %s", property, v21);
          v4 = 130;
        }
      }

      else
      {
        v22 = xpc_dictionary_get_string(v15, "CFBundleVersion");
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = "0";
        }

        v24 = xpc_bundle_get_info_dictionary();
        v25 = xpc_dictionary_get_string(v24, "CFBundleVersion");
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = "0";
        }

        v27 = sub_1000167A0(v23, v26);
        if ((v27 + 1) >= 2)
        {
          v28 = 0;
        }

        else
        {
          v28 = 3;
        }

        if (v27 == 1)
        {
          v28 = 2;
        }

        v4 = 129;
        if ((v28 | 2) == 2)
        {
          goto LABEL_46;
        }
      }
    }
  }

LABEL_49:
  v30 = *(a2 + 100);
  if (v30 == 2)
  {
    if ((*(result + 89) & 0x20) != 0)
    {
      goto LABEL_64;
    }

    if (*(result + 104) == 1)
    {
      v31 = "Bootstrap";
    }

    else
    {
      v31 = "Bootout";
    }

    if (v4)
    {
      xpc_strerror();
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      sub_100045C2C(result + 116, &v32);
      if (v4 != 36)
      {
        sub_10002C908(*(result + 48), 5, "%s by %s[%d] for %s failed (%d: %s)", v31);
LABEL_59:
        LOBYTE(v30) = *(a2 + 100);
        goto LABEL_60;
      }
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      sub_100045C2C(result + 116, &v32);
    }

    sub_10002C908(*(result + 48), 5, "%s by %s[%d] for %s succeeded (%d: %s)", v31);
    goto LABEL_59;
  }

LABEL_60:
  if ((v30 & 0xFE) != 4 || (v4 - 107) > 0x15 || ((1 << (v4 - 107)) & 0x200005) == 0)
  {
LABEL_64:
    if (!v4)
    {
      return;
    }

    goto LABEL_65;
  }

  v4 = 121;
LABEL_65:
  sub_100019EC0(result, *(a2 + 16), v4);
}

void sub_100019E1C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  (*(*(a1 + 24) + 16))();
  v2 = *(a1 + 148);
  if ((v2 & 1) == 0)
  {
    sub_100054690(v2);
  }

  *(a1 + 148) = v2 & 0xFE;

  sub_10001B690(a1, 45);
}

void sub_100019E88(uint64_t a1)
{
  v1 = sub_100010AF4(*(*(a1 + 32) + 32), *(*(a1 + 32) + 40));

  sub_1000180A4(v1);
}

void sub_100019EC0(uint64_t a1, const char *a2, int a3)
{
  if (!a3)
  {
    sub_100054404();
  }

  if (*(a1 + 112) != 2)
  {
    v5 = 5;
    goto LABEL_6;
  }

  xpc_dictionary_set_int64(*(a1 + 80), a2, a3);
  if (*(a1 + 108))
  {
    v5 = 133;
LABEL_6:
    *(a1 + 108) = v5;
    return;
  }

  *(a1 + 108) = a3;
}

void sub_100019F24(uint64_t a1, int a2, id a3)
{
  Class = j__object_getClass(a3);
  if (Class != sub_10001BE4C())
  {
    sub_100054404();
  }

  v6 = sub_100030ADC(*(a1 + 32), a3, *(*(a1 + 40) + 96));
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = sub_10000ED30(a3);

    sub_100019EC0(v8, v9, v7);
  }
}

void sub_100019FBC(uint64_t a1)
{
  v2 = xpc_pipe_routine_reply();
  xpc_release(*(a1 + 32));
  if ((v2 | 0x20) != 0x20)
  {
    _os_assumes_log_ctx();
  }

  v3 = *(a1 + 40);

  sub_10001B690(v3, 16);
}

uint64_t sub_10001A03C(uint64_t a1, const char *a2, xpc_object_t xint)
{
  v4 = *(a1 + 32);
  value = xpc_int64_get_value(xint);
  v6 = (value - 119) > 0x21 || ((1 << (value - 119)) & 0x220008025) == 0;
  if (v6 || byte_10007F0F8 == 1)
  {
    v7 = *(v4 + 48);
    v8 = xpc_strerror();
    sub_10002C908(v7, 3, "Failed to bootstrap path: path = %s, error = %d: %s", a2, value, v8);
  }

  return 1;
}

void sub_10001A104(const void *a1)
{
  if (dword_10007DC44)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v3 = dispatch_queue_create("com.apple.xpc.launchd.timeout", v2);
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    qword_10007DFF8 = v4;
    v5 = dispatch_time(0, 1000000000 * dword_10007DC44);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = qword_10007DFF8;
    v7 = _Block_copy(a1);
    dispatch_set_context(v6, v7);
    dispatch_source_set_event_handler_f(qword_10007DFF8, sub_10001A200);
    v8 = qword_10007DFF8;

    dispatch_activate(v8);
  }
}

void sub_10001A200(uint64_t a1)
{
  v2 = sub_10003283C();
  v3 = sub_1000157D8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10001A364;
  v4[3] = &unk_100078A98;
  v4[4] = a1;
  v4[5] = v2;
  dispatch_async_and_wait(v3, v4);
}

void sub_10001A284()
{
  if (qword_10007DFF8)
  {
    dispatch_source_cancel(qword_10007DFF8);
    dispatch_release(qword_10007DFF8);
    qword_10007DFF8 = 0;
  }
}

void sub_10001A2BC(uint64_t a1)
{
  if (qword_10007DFF8)
  {
    v2 = sub_10003283C();
    v3 = mach_absolute_time();
    v4 = sub_10000B544(v3 - *(v2 + 272));
    v5 = a1 + 1000000000 * dword_10007DC44;
    if (v5 > v4)
    {
      v6 = qword_10007DFF8;
      v7 = dispatch_time(0, v5 - v4);

      dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

uint64_t sub_10001A364(uint64_t a1)
{
  nullsub_23();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10001A3B0(uint64_t a1)
{
  free(*(a1 + 72));
  if (*(a1 + 24))
  {
    sub_100054404();
  }

  if (*(a1 + 32))
  {
    sub_100054404();
  }

  if (*(a1 + 40))
  {
    sub_100054404();
  }

  if (*(a1 + 48))
  {
    sub_100054404();
  }
}

uint64_t sub_10001A408()
{
  os_map_64_init();

  return os_map_64_insert();
}

uint64_t sub_10001A464(uint64_t a1)
{
  v2 = *(a1 + 1352);
  if (!v2)
  {
    return 121;
  }

  *(v2 + 32) = 0;
  *(a1 + 1352) = 0;
  sub_10001A4A0(v2);
  return 0;
}

void sub_10001A4A0(uint64_t result)
{
  v2 = *(result + 24) - 1;
  *(result + 24) = v2;
  if (!v2)
  {
    if (*(result + 40))
    {
      v4 = *(result + 56);
      v5 = *(result + 64);
      if (v4)
      {
        *(v4 + 64) = v5;
      }

      *v5 = v4;
      *(result + 56) = -1;
      *(result + 64) = -1;
      sub_10001A4A0(*(result + 40));
      *(result + 40) = 0;
    }

    os_map_64_delete();

    sub_10001B690(result, 0);
  }
}

void *sub_10001A534(uint64_t a1)
{
  v2 = sub_100010918();
  sub_10001A568(v2, *(a1 + 1352));
  return v2;
}

void *sub_10001A568(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 48);
    if (v2)
    {
      v3 = result;
      do
      {
        v4 = *(v2 + 32);
        if (v4)
        {
          sub_1000109BC(v3, v4);
        }

        result = sub_10001A568(v3, v2);
        v2 = *(v2 + 56);
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10001A5BC(uint64_t a1)
{
  v1 = sub_100010918();
  v2 = os_map_64_find();
  sub_10001A568(v1, v2);
  return v1;
}

_BYTE *sub_10001A6F0(void *a1)
{
  if (xpc_bundle_get_property() == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  property = xpc_bundle_get_property();
  v4 = sub_10000EB3C(v2, property);
  *(v4 + 10) = xpc_retain(a1);
  v5 = unk_10007D5E8;
  *(v4 + 8) = xmmword_10007D5D8;
  *(v4 + 9) = v5;
  v6 = unk_10007D5C8;
  *(v4 + 6) = xmmword_10007D5B8;
  *(v4 + 7) = v6;
  v7 = unk_10007D608;
  *(v4 + 10) = xmmword_10007D5F8;
  *(v4 + 11) = v7;
  v8 = unk_10007D628;
  *(v4 + 12) = xmmword_10007D618;
  *(v4 + 13) = v8;
  *(v4 + 14) = xmmword_10007D638;
  v4[264] |= 1u;
  return v4;
}

BOOL sub_10001A794(const char *a1)
{
  v2 = 0;
  do
  {
    result = sub_1000169A8(a1, off_100078AB8[v2]);
    if (result)
    {
      break;
    }
  }

  while (v2++ != 1);
  return result;
}

size_t sub_10001A7E8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    if (sub_1000169EC(*(a1 + 64), ".appex"))
    {
      v13 = *(a1 + 64);
      goto LABEL_15;
    }

LABEL_16:
    v2 = *(a1 + 56);
LABEL_17:
    if (v2 == 2)
    {
      v14 = sub_10001B118(*(a1 + 64));
    }

    else
    {
      if (v2 == 1)
      {
        v16 = *(a1 + 64);
        v17 = sub_10001B0D8(v16);
        if (!v17)
        {
          v18 = sub_10001B118(v16);
          if (!v18)
          {
            return 148;
          }

          v17 = v18;
          sub_10004749C(5, "Found XPCService bundle by executable: %s", v16);
        }

LABEL_28:
        if (*(a1 + 56) >= 3u)
        {
          sub_1000441E0("unsupported cached entry type %d", *(a1 + 56));
        }

        *(a1 + qword_1000577C0[*(a1 + 56)]) = v17;
        *(a1 + 264) |= 1u;
        *(a1 + 240) = 0;
        v19 = unk_10007D628;
        *(a1 + 192) = xmmword_10007D618;
        *(a1 + 208) = v19;
        *(a1 + 224) = xmmword_10007D638;
        v20 = unk_10007D5E8;
        *(a1 + 128) = xmmword_10007D5D8;
        *(a1 + 144) = v20;
        v21 = unk_10007D608;
        *(a1 + 160) = xmmword_10007D5F8;
        *(a1 + 176) = v21;
        v22 = unk_10007D5C8;
        *(a1 + 96) = xmmword_10007D5B8;
        *(a1 + 112) = v22;
        dispatch_assert_queue_V2(*(a1 + 248));
        (*(*(a1 + 256) + 16))();
        return 0;
      }

      if (v2)
      {
        return 148;
      }

      if (!qword_10007F038)
      {
        return 148;
      }

      v15 = sub_100049614(qword_10007F038, *(a1 + 64));
      if (!v15)
      {
        return 148;
      }

      v14 = sub_100049864(v15);
    }

LABEL_27:
    v17 = v14;
    if (v14)
    {
      goto LABEL_28;
    }

    return 148;
  }

  if (v2 == 2)
  {
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "%s", *(a1 + 64));
    v12 = strrchr(__str, 47);
    if (v12)
    {
      *v12 = 0;
    }

    if (sub_1000169EC(__str, ".appex"))
    {
      v13 = __str;
LABEL_15:
      v14 = sub_10001B0D8(v13);
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (v2 != 3)
  {
    goto LABEL_17;
  }

  v3 = *(a1 + 64);
  if ((sub_100016AEC(qword_10007F098, v3) & 1) == 0 && (!qword_10007F0A0 || !sub_100016AEC(qword_10007F0A0, v3)))
  {
    return 148;
  }

  result = strlen(*(a1 + 64));
  v5 = result + 2;
  if (((result >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63 == result >= 0xFFFFFFFFFFFFFFFELL)
  {
    v6 = sub_100014514(result + 2, 0x83F4C8DEuLL);
    strlcpy(v6, *(a1 + 64), v5);
    *&v6[v5 - 2] = 47;
    v7 = sub_100010918();
    *__str = _NSConcreteStackBlock;
    v24 = 0x40000000;
    v25 = sub_10001B058;
    v26 = &unk_100078AD0;
    v27 = v6;
    v28 = v7;
    sub_10004964C(qword_10007F038, __str);
    v8 = unk_10007D6B8;
    *(a1 + 192) = xmmword_10007D6A8;
    *(a1 + 208) = v8;
    *(a1 + 224) = xmmword_10007D6C8;
    v9 = unk_10007D678;
    *(a1 + 128) = xmmword_10007D668;
    *(a1 + 144) = v9;
    v10 = unk_10007D698;
    *(a1 + 160) = xmmword_10007D688;
    *(a1 + 176) = v10;
    v11 = unk_10007D658;
    *(a1 + 96) = xmmword_10007D648;
    *(a1 + 112) = v11;
    dispatch_assert_queue_V2(*(a1 + 248));
    (*(*(a1 + 256) + 16))();
    sub_10001B690(v7, 0);
    free(v6);
    return 0;
  }

  __break(1u);
  return result;
}

xpc_object_t sub_10001AB48()
{
  v0 = open("/System/Library/xpc/launchd.plist", 0);
  if ((v0 & 0x80000000) != 0)
  {
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    sub_10004749C(65539, "Unable to open %s [%d:%s]", "/System/Library/xpc/launchd.plist", v6, v8);
    return 0;
  }

  else
  {
    v1 = v0;
    memset(&v13, 0, sizeof(v13));
    if (fstat(v0, &v13))
    {
      v2 = *__error();
      v3 = __error();
      v4 = strerror(*v3);
      sub_10004749C(65539, "Unable to stat %s [%d:%s]", "/System/Library/xpc/launchd.plist", v2, v4);
      v5 = 0;
    }

    else
    {
      st_size = v13.st_size;
      v10 = sub_100046508((v13.st_size + vm_page_size - 1) & -vm_page_size);
      v11 = dispatch_data_create(v10, st_size, 0, _dispatch_data_destructor_vm_deallocate);
      v5 = xpc_data_create_with_dispatch_data(v11);
      dispatch_release(v11);
    }

    sub_1000413F8(v1);
  }

  return v5;
}

void sub_10001AC80(xpc_object_t xdata)
{
  v1 = xdata;
  if (!xdata)
  {
    sub_10004749C(65539, "No MRM cache found");
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  length = xpc_data_get_length(v1);
  v4 = sub_100015A08();
  v5 = sub_100015A14();
  v6 = j__xpc_create_from_plist_with_string_cache(bytes_ptr, length, v4, v5);
  v1 = v6;
  if (!v6)
  {
    sub_10004749C(65541, "Unable to parse MRM cache");
    goto LABEL_7;
  }

  value = xpc_dictionary_get_value(v6, "SystemLibraryTreeState");
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v8, "_imagePathToInfo", value);
  xpc_dictionary_set_value(v1, "SystemLibraryTreeState", v8);
  xpc_release(v8);
  if (xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    v10 = xpc_dictionary_get_value(v1, "LaunchDaemons");
    v11 = v10;
    if (v10)
    {
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v11 = xpc_retain(v11);
      }

      else
      {
        v11 = 0;
      }
    }

    v12 = xpc_dictionary_get_value(v1, "SystemLibraryTreeState");
    v13 = v12;
    if (v12)
    {
      if (xpc_get_type(v12) == &_xpc_type_dictionary && (v19 = xpc_dictionary_get_value(v13, "_imagePathToInfo")) != 0 && (v20 = v19, xpc_get_type(v19) == &_xpc_type_dictionary))
      {
        v13 = xpc_dictionary_create(0, 0, 0);
        applier = _NSConcreteStackBlock;
        v22 = 0x40000000;
        v23 = sub_10001B2F4;
        v24 = &unk_100078B30;
        v25 = v13;
        xpc_dictionary_apply(v20, &applier);
      }

      else
      {
        v13 = 0;
      }
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    applier = _NSConcreteStackBlock;
    v22 = 0x40000000;
    v23 = sub_10001B4F8;
    v24 = &unk_100078B50;
    v25 = v14;
    v15 = xpc_dictionary_get_value(v1, "AppExtensions");
    if (v15)
    {
      v16 = v15;
      if (xpc_get_type(v15) == &_xpc_type_dictionary)
      {
        xpc_dictionary_apply(v16, &applier);
      }
    }

    v17 = xpc_dictionary_get_value(v1, "AppRemovalServices");
    if (v17)
    {
      v18 = v17;
      if (xpc_get_type(v17) == &_xpc_type_dictionary)
      {
        xpc_dictionary_apply(v18, &applier);
      }
    }

    sub_10001B194(v11, v13, v14);
    if (v11)
    {
      xpc_release(v11);
    }

    if (v13)
    {
      xpc_release(v13);
    }

    if (v14)
    {
      xpc_release(v14);
    }

    goto LABEL_34;
  }

  v9 = 0;
LABEL_8:
  if (byte_10007F0E3 != 1 || byte_10007F0E5 == 1)
  {
    sub_1000441E0("No service cache");
  }

  sub_10001B194(0, 0, 0);
  if ((v9 & 1) == 0)
  {
LABEL_34:
    xpc_release(v1);
    return;
  }

  if (!dword_10007F0C0)
  {

    sub_10004749C(65540, "Unable to load cache");
  }
}

void sub_10001B058(uint64_t a1, const char *a2)
{
  if (sub_1000169A8(a2, *(a1 + 32)))
  {
    v4 = sub_10000EBAC(0, a2, 0);
    sub_1000109BC(*(a1 + 40), v4);

    sub_10001B690(v4, 0);
  }
}

xpc_object_t sub_10001B0D8(char *key)
{
  result = xpc_dictionary_get_value(qword_10007F048, key);
  if (result)
  {

    return xpc_retain(result);
  }

  return result;
}

uint64_t sub_10001B118(char *key)
{
  if (!xpc_dictionary_get_value(qword_10007F040, key))
  {
    return 0;
  }

  v2 = sub_100015A08();
  v3 = sub_100015A14();
  v4 = j__xpc_bundle_create_from_origin_with_string_cache(1, key, v2, v3);
  xpc_bundle_populate();
  return v4;
}

xpc_object_t sub_10001B194(void *a1, void *a2, void *a3)
{
  if (qword_10007F038)
  {
    sub_10001B690(qword_10007F038, 0);
  }

  qword_10007F038 = sub_1000496EC();
  if (a1 && xpc_get_type(a1) == &_xpc_type_dictionary)
  {
    xpc_dictionary_apply(a1, &stru_100078B10);
  }

  if (qword_10007F040)
  {
    xpc_release(qword_10007F040);
  }

  if (a2 && xpc_get_type(a2) == &_xpc_type_dictionary)
  {
    v6 = xpc_retain(a2);
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
  }

  qword_10007F040 = v6;
  if (qword_10007F048)
  {
    xpc_release(qword_10007F048);
  }

  if (a3 && xpc_get_type(a3) == &_xpc_type_dictionary)
  {
    result = xpc_retain(a3);
  }

  else
  {
    result = xpc_dictionary_create(0, 0, 0);
  }

  qword_10007F048 = result;
  return result;
}

BOOL sub_10001B29C(id a1, const char *a2, void *a3)
{
  sub_1000497F4(a3);
  v5 = v4;
  sub_10004954C(qword_10007F038, a2, v4);
  sub_10001B690(v5, 0);
  return 1;
}

uint64_t sub_10001B2F4(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (object && xpc_get_type(object) == &_xpc_type_dictionary && (v10 = xpc_dictionary_get_value(object, "_serviceBundles")) != 0 && (v11 = v10, xpc_get_type(v10) == &_xpc_type_array) && xpc_array_get_count(v11))
  {
    v8 = xpc_array_create(0, 0);
    if (xpc_array_get_count(v11))
    {
      v12 = 0;
      do
      {
        value = xpc_array_get_value(v11, v12);
        if (value)
        {
          v14 = value;
          if (xpc_get_type(value) == &_xpc_type_dictionary)
          {
            v15 = sub_10001B454(v14);
            if (v15)
            {
              v16 = v15;
              xpc_array_append_value(v8, v15);
              xpc_release(v16);
            }
          }
        }

        ++v12;
      }

      while (v12 < xpc_array_get_count(v11));
    }
  }

  else
  {
    v6 = qword_10007E018;
    if (!qword_10007E018)
    {
      v6 = xpc_array_create(0, 0);
      qword_10007E018 = v6;
    }

    count = xpc_array_get_count(v6);
    if (count)
    {
      sub_1000546C8(count);
    }

    v8 = xpc_retain(qword_10007E018);
  }

  if (v8)
  {
    xpc_dictionary_set_value(*(a1 + 32), a2, v8);
    xpc_release(v8);
  }

  return 1;
}

const char *sub_10001B454(void *a1)
{
  value = xpc_dictionary_get_value(a1, "_infoPlist");
  if (!value || xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 0;
  }

  string = xpc_dictionary_get_string(a1, "_executablePath");
  if (string)
  {
    v5 = sub_100015A08();
    v6 = sub_100015A14();
    string = j__xpc_bundle_create_from_origin_with_string_cache(1, string, v5, v6);
    xpc_bundle_populate();
  }

  return string;
}

uint64_t sub_10001B4F8(uint64_t a1, const char *a2, void *a3)
{
  v5 = sub_10001B454(a3);
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_value(*(a1 + 32), a2, v5);
    xpc_release(v6);
  }

  return 1;
}

void *sub_10001B550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100014514(0x18uLL, 0x1080040CC6EE3FDuLL);
  *v8 = a1;
  v8[1] = a3;
  v8[2] = a4;
  if (a1)
  {
    sub_10001BAF8(a1, v7);
    v9 = a1;
  }

  return v8;
}

void *sub_10001B5B8(void *a1, uint64_t a2)
{
  sub_10001BAF8(a1, a2);
  v3 = a1;
  return a1;
}

void *sub_10001B5E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100014514(0x18uLL, 0x1080040CC6EE3FDuLL);
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  if (a1)
  {
    xpc_retain(a1);
  }

  return v6;
}

void sub_10001B648(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    sub_10001BAF8(*a1, a2);
  }

  free(a1);
}

void sub_10001B690(void *a1, uint64_t a2)
{
  sub_10001BAF8(a1, a2);
}

void sub_10001B6C8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    xpc_release(v2);
  }

  free(a1);
}

char *sub_10001B708(char *__s, const char *a2, uint64_t a3, size_t *a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v9 = 0;
    while (strcmp(__s, off_100078B70[v9]))
    {
      if (++v9 == 2)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v10 = strlen(__s);
  v11 = v10 + 1;
  v12 = v10 == -1;
  result = strlen(a2);
  v14 = &result[v11];
  v15 = __CFADD__(result, v11);
  v16 = (v14 + 1);
  v17 = ((v14 == -1) << 63) >> 63 != (v14 == -1);
  if (!v12 && !v15 && !v17)
  {
    result = (v16 + 32);
    if (v16 < 0xFFFFFFFFFFFFFFE0)
    {
      v18 = sub_100014514(result, 0xA9BED039uLL);
      *(v18 + 3) = a3;
      snprintf(v18 + 32, v16, "%s=%s", __s, a2);
      *a4 = v16;
      return v18;
    }
  }

  __break(1u);
  return result;
}

char *sub_10001B804(uint64_t a1, size_t *a2)
{
  v3 = (a1 + 32);
  v4 = strlen((a1 + 32));
  v5 = v4 + 1;
  v6 = __CFADD__(v4 + 1, 32);
  result = (v4 + 33);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_100014514(result, 0x1C7ED0A3uLL);
    snprintf(v8 + 32, v5, "%s", v3);
    *a2 = v5;
    return v8;
  }

  return result;
}

uint64_t sub_10001B880(uint64_t a1, uint64_t a2, FILE *a3)
{
  v5 = a1 + 32;
  v6 = strchr((a1 + 32), 61);
  *v6 = 0;
  result = sub_100049ECC(a3, a2, "%s => %s", v7, v8, v9, v10, v11, v5, v6 + 1);
  *v6 = 61;
  return result;
}

char *sub_10001B8F8(uint64_t a1, const char *a2)
{
  result = strchr((a1 + 32), 61);
  if (result)
  {
    v5 = result;
    *result = 0;
    result = (strcmp((a1 + 32), a2) == 0);
    *v5 = 61;
  }

  return result;
}

char *sub_10001B958(uint64_t a1)
{
  v1 = strchr((a1 + 32), 61);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10001B984(const char *a1)
{
  if (sub_1000169A8(a1, "__XPC_"))
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  if (!strcmp(&a1[v2], "LD_LIBRARY_PATH"))
  {
    return 1;
  }

  result = sub_1000169A8(&a1[v2], "DYLD_");
  if (!result)
  {
    return result;
  }

  if (!sub_1000169A8(&a1[v2], "DYLD_PRINT_"))
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = strcmp(&a1[v2], (&off_100078B88)[v4]);
    result = v5 != 0;
    if (!v5)
    {
      break;
    }
  }

  while (v4++ != 10);
  return result;
}

_DWORD *sub_10001BA40(mach_port_name_t a1, int a2)
{
  v4 = sub_100014514(0x18uLL, 0x10A00404E934A1DuLL);
  if (sub_10000B744(a1))
  {
    _os_assumes_log();
  }

  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void sub_10001BAA8(mach_port_name_t *a1)
{
  if (sub_10000B760(a1[4]))
  {
    _os_assumes_log();
  }

  free(a1);
}

uint64_t sub_10001BAF8(uint64_t result, uint64_t a2)
{
  if (*(result + 8) == 1)
  {
    sub_100054404();
  }

  return result;
}

uint64_t sub_10001BB44(uint64_t result, uint64_t a2)
{
  if (*(result + 8) == 1)
  {
    sub_100054404();
  }

  *(result + 8) = 1;
  return result;
}

id sub_10001BB6C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 32);
}

id sub_10001BBAC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 24);
}

id sub_10001BBEC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 1016);
}

id sub_10001BC2C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 144);
}

id sub_10001BC6C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 96);
}

char *sub_10001BCAC(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 161);
  strcpy(Instance + 168, a1);
  return Instance;
}

id sub_10001BCFC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 56);
}

id sub_10001BD3C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 80);
}

char *sub_10001BD7C(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 33);
  strcpy(Instance + 40, a1);
  return Instance;
}

id sub_10001BDCC(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 80);
}

id sub_10001BE0C(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 264);
}

id sub_10001BE58(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 80);
}

char *sub_10001BE98(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 1417);
  strcpy(Instance + 1424, a1);
  return Instance;
}

id sub_10001BEE8(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 56);
}

char *sub_10001BF28(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 209);
  strcpy(Instance + 216, a1);
  return Instance;
}

id sub_10001BF78(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 40);
}

id sub_10001BFB8(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 24);
}

id sub_10001BFF8(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 72);
}

id sub_10001C038(uint64_t a1)
{
  v2 = objc_opt_class();

  return class_createInstance(v2, a1 + 16);
}

char *sub_10001C078(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 33);
  strcpy(Instance + 40, a1);
  return Instance;
}

char *sub_10001C0C8(const char *a1)
{
  v2 = strlen(a1);
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, v2 + 25);
  strcpy(Instance + 32, a1);
  return Instance;
}

uint64_t sub_10001C118(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_10003DEF0();
  if (v4 && v4 == v3)
  {
    v5 = sub_10001C18C(0x1F5u, a2);
    sub_10001C1F0(a2);
    return v5;
  }

  else
  {

    return sub_10001C18C(v3, a2);
  }
}

uint64_t sub_10001C18C(uid_t a1, void *a2)
{
  v4 = 0;
  result = getpwuid_r(a1, a2, a2 + 72, 0x1000uLL, &v4);
  if (!result)
  {
    if (v4)
    {
      sub_10001C3AC(*a2, *(a2 + 5), a2);
      return 0;
    }

    else
    {
      return 114;
    }
  }

  return result;
}

uint64_t sub_10001C1F0(_DWORD *a1)
{
  result = sub_10003DEF0();
  if (result)
  {
    if (a1[4] == 501)
    {
      a1[4] = result;
    }

    if (a1[5] == 501)
    {
      a1[5] = result;
    }

    v3 = a1[1058];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = a1 + 1042;
      do
      {
        if (v5[v4] == 501)
        {
          v5[v4] = result;
          v3 = a1[1058];
        }

        ++v4;
      }

      while (v4 < v3);
    }
  }

  return result;
}

uint64_t sub_10001C270()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (v0)
  {
    v11[0] = 0;
    result = getpwnam_r(v0, v1, (v1 + 72), 0x1000uLL, v11);
    if (result)
    {
      return result;
    }

    if (!v11[0])
    {
      return 114;
    }

    gr_gid = v2[5];
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    gr_gid = -101;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  bzero(v11, 0x1000uLL);
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  result = getgrnam_r(v4, &v10, v11, 0x1000uLL, &v9);
  if (result)
  {
    return result;
  }

  if (!v9)
  {
    return 115;
  }

  gr_gid = v10.gr_gid;
LABEL_10:
  if (gr_gid != -101)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = "root";
    }

    sub_10001C3AC(v8, gr_gid, v2);
  }

  sub_10001C1F0(v2);
  return 0;
}

uint64_t sub_10001C3AC(const char *a1, int a2, uint64_t a3)
{
  *(a3 + 4232) = 16;
  result = getgrouplist(a1, a2, (a3 + 4168), (a3 + 4232));
  if (result == -1)
  {
    return sub_10005455C();
  }

  return result;
}

uint64_t sub_10001C3F0(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  if (os_map_str_find())
  {
    return 17;
  }

  v8 = sub_100014514(0x18uLL, 0x1090040D67CC068uLL);
  *v8 = sub_1000166EC(a2);
  v8[2] = a3;
  *(v8 + 2) = a4;
  os_map_str_insert();
  return 0;
}

uint64_t sub_10001C480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = os_map_str_delete();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 8);
  *a3 = *(v4 + 16);
  free(*v4);
  free(v5);
  return v6;
}

void sub_10001C4DC(void *a1)
{
  os_map_str_clear();
  os_map_str_destroy();

  free(a1);
}

BOOL sub_10001C524(id a1, const char *a2, void *a3)
{
  v4 = sub_10000B774(*(a3 + 2), 0, *(a3 + 2));
  if (v4)
  {
    sub_100054420(v4);
  }

  free(*a3);
  free(a3);
  return 1;
}

uint64_t sub_10001C570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10001C588(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a2 + 24);
  v4 = v3 >= *a3;
  v5 = v3 > *a3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_10001C5A0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a2;
  if (*(a1 + 24) == 4982)
  {
    node = rb_tree_find_node(*(a1 + 16), &v8);
    if (node)
    {
      v6 = node;
      rb_tree_remove_node(*(a1 + 16), node);
      os_release(v6[4]);
      free(v6);
    }

    if (a3)
    {
      v7 = malloc_type_malloc(0x28uLL, 0x108004034BCA2CCuLL);
      v7[3] = v8;
      v7[4] = os_retain(a3);
      if (rb_tree_insert_node(*(a1 + 16), v7) != v7)
      {
        sub_100054404();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

rb_tree_t **sub_10001C668(rb_tree_t **result, uint64_t a2)
{
  v2 = a2;
  if (*(result + 6) == 4982)
  {
    result = rb_tree_find_node(result[2], &v2);
    if (result)
    {
      return result[4];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

rb_tree_t **sub_10001C6B0(rb_tree_t **result, uint64_t a2)
{
  if (*(result + 6) == 4982)
  {
    v3 = result;
    result = rb_tree_iterate(result[2], 0, 1u);
    if (result)
    {
      v4 = result;
      do
      {
        (*(a2 + 16))(a2, v4[3], v4[4]);
        result = rb_tree_iterate(v3[2], v4, 1u);
        v4 = result;
      }

      while (result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_10001C734(size_t result)
{
  if (*(result + 24) == 4982)
  {
    return rb_tree_count(*(result + 16));
  }

  __break(1u);
  return result;
}

void *sub_10001C750()
{
  v0 = sub_10001BFB8(0);
  v1 = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
  v0[2] = v1;
  rb_tree_init(v1, off_10007D6D8);
  *(v0 + 6) = 4982;
  return v0;
}

void sub_10001C7AC(uint64_t a1)
{
  if (*(a1 + 24) == 4982)
  {
    *(a1 + 24) = 0;
    v3 = rb_tree_iterate(*(a1 + 16), 0, 1u);
    if (v3)
    {
      v4 = v3;
      do
      {
        v5 = rb_tree_iterate(*(a1 + 16), v4, 1u);
        rb_tree_remove_node(*(a1 + 16), v4);
        os_release(v4[4]);
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(a1 + 16);

    free(v6);
  }

  else
  {
    __break(1u);
  }
}

xpc_object_t sub_10001C850(char *a1)
{
  empty = xpc_array_create_empty();
  v14[0] = a1;
  v14[1] = 0;
  v3 = fts_open(v14, 92, 0);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
LABEL_3:
    v6 = v5;
    while (1)
    {
      v7 = fts_read(v4);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      fts_info = v7->fts_info;
      switch(fts_info)
      {
        case 11:
          if (sub_1000169EC(v7->fts_path, ".plist"))
          {
            v10 = xpc_string_create(v8->fts_path);
            xpc_array_append_value(empty, v10);
            xpc_release(v10);
          }

          break;
        case 6:
          --v5;
          goto LABEL_3;
        case 1:
          v5 = 1;
          if (v6)
          {
            v5 = v6 + 1;
            fts_set(v4, v7, 4);
          }

          goto LABEL_3;
      }
    }

    if (fts_close(v4) == -1)
    {
      sub_10005453C();
    }
  }

  else
  {
    v11 = *__error();
    __error();
    v12 = xpc_strerror();
    sub_10004749C(4, "failed to fts_open(%s, 0x%x): %d: %s", a1, 92, v11, v12);
  }

  return empty;
}

void *sub_10001C9C8(const char *a1, int a2, int *a3)
{
  if (access(a1, 4))
  {
    v6 = __error();
    result = 0;
    v8 = *v6;
  }

  else
  {
    if (a2)
    {
      result = sub_10004152C(a1);
    }

    else
    {
      result = sub_100041440(a1);
    }

    if (result)
    {
      v8 = 0;
    }

    else
    {
      v8 = 109;
    }
  }

  *a3 = v8;
  return result;
}

void sub_10001CA48(uint64_t a1)
{
  if (qword_10007E020 == a1)
  {
    qword_10007E020 = 0;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = 0;
    v4 = dword_10007DBD8;
    do
    {
      v5 = *(*(a1 + 64) + 4 * v3);
      if ((v5 & 0x80000000) == 0 && v5 != v4)
      {
        sub_1000413F8(v5);
        v4 = dword_10007DBD8;
        v2 = *(a1 + 88);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 32) != -1 || *(a1 + 40) != -1)
  {
    sub_1000441E0("socket deallocated while still in domain list");
  }

  if (*(a1 + 16) != -1 || *(a1 + 24) != -1)
  {
    sub_1000441E0("socket deallocated while still in service list");
  }

  if ((*(a1 + 212) & 0x84) == 4)
  {
    sub_1000441E0("socket deallocated while still active");
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 136));
  free(*(a1 + 144));
  free(*(a1 + 160));
  free(*(a1 + 168));
  free(*(a1 + 176));
  free(*(a1 + 184));
  v6 = *(a1 + 200);

  xpc_release(v6);
}

void sub_10001CBBC(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v6 = sub_10001CC24(a1, a2);
  sub_1000474DC(v6, a2, a3, va, v3);
  free(v6);
}

char *sub_10001CC24(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000FC98(0x40uLL, a2);
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = sub_100022158(v4, 1);
    sub_10000FD40(v3, "%s - ", v5);
    free(v5);
  }

  sub_10000FD40(v3, "%s", (a1 + 216));
  v6 = sub_10000FCFC(v3);
  sub_10000FD04(v3);
  return v6;
}

char *sub_10001CCC0(uint64_t a1, uint64_t a2, const char *a3, int a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_10001BF28(a3);
  *(v16 + 7) = a1;
  *(v16 + 24) = -1;
  *(v16 + 26) = a4;
  dispatch_retain(a6);
  *(v16 + 14) = a6;
  *(v16 + 15) = a7;
  *(v16 + 16) = a8;
  *(v16 + 25) = xpc_retain(a5);
  *(v16 + 106) |= 2u;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  *(v16 + 1) = v17;
  *(v16 + 2) = v17;
  v18 = sub_100023EEC(a1);
  v19 = *(v18 + 20);
  if (v19)
  {
    v20 = v18;
    if (v19 != getpid())
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        *(v16 + 27) = v21;
      }
    }
  }

  string = xpc_dictionary_get_string(a5, "SockPathName");
  if (string && !strcmp(string, "/var/run/syslog"))
  {
    xpc_dictionary_set_BOOL(a5, "SystemLoggingSocket", 1);
  }

  *(v16 + 25) = 1;
  v23 = sub_10001B550(v16, 1, a9, 0);
  xpc_dictionary_apply_f();
  sub_10001B648(v23, v24);
  if (!*(v16 + 52) && sub_100032A18(a2) != &unk_10007D720 && *(v16 + 26) != a4)
  {
    sub_10001CBBC(v16, 3, "Not allowed to set SockPathOwner to UID %d. Remove key.", *(v16 + 26));
    *(v16 + 52) = 1;
  }

  return v16;
}

void sub_10001CE6C(const char *a1, xpc_object_t object, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  type = xpc_get_type(object);
  if (!strcasecmp(a1, "SockType"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    string_ptr = xpc_string_get_string_ptr(object);
    if (!strcasecmp(string_ptr, "stream"))
    {
      v12 = 1;
    }

    else if (!strcasecmp(string_ptr, "dgram"))
    {
      v12 = 2;
    }

    else
    {
      if (strcasecmp(string_ptr, "seqpacket"))
      {
        sub_100015968(v5, 3, "Unrecognized %s");
        goto LABEL_66;
      }

      v12 = 5;
    }

    *(v6 + 100) = v12;
    return;
  }

  if (!strcasecmp(a1, "SockPassive"))
  {
    if (type == &_xpc_type_BOOL)
    {
      if (xpc_BOOL_get_value(object))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v6 + 212) & 0xFFFD;
LABEL_28:
      v11 = v10 | v9;
LABEL_29:
      *(v6 + 212) = v11;
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SecureSocketWithKey"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    if (!*(v6 + 144))
    {
      v13 = xpc_string_get_string_ptr(object);
      *(v6 + 136) = sub_1000166EC(v13);
      return;
    }

    goto LABEL_35;
  }

  if (!strcasecmp(a1, "SockPathName"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    if (*(v6 + 136))
    {
LABEL_35:
      sub_100015968(v5, 3, "Can't have both %s and %s");
      goto LABEL_66;
    }

    if (xpc_string_get_length(object) >= 0x68)
    {
      sub_100015968(v5, 3, "%s value is too long.", a1);
      v15 = 34;
LABEL_67:
      *(v6 + 208) = v15;
      return;
    }

    v17 = xpc_string_get_string_ptr(object);
    if (v17)
    {
      *(v6 + 144) = sub_1000166EC(v17);
      return;
    }

LABEL_66:
    v15 = 22;
    goto LABEL_67;
  }

  if (!strcasecmp(a1, "SockPathOwner"))
  {
    if (type == &_xpc_type_int64)
    {
      *(v6 + 104) = xpc_int64_get_value(object);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockPathGroup"))
  {
    if (type == &_xpc_type_int64)
    {
      *(v6 + 108) = xpc_int64_get_value(object);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockPathMode"))
  {
    if (type == &_xpc_type_int64)
    {
      *(v6 + 152) = xpc_int64_get_value(object);
      v11 = *(v6 + 212) | 8;
      goto LABEL_29;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockNodeName"))
  {
    if (type == &_xpc_type_string)
    {
      v14 = xpc_string_get_string_ptr(object);
      *(v6 + 160) = sub_1000166EC(v14);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "MulticastGroup"))
  {
    if (type == &_xpc_type_string)
    {
      v16 = xpc_string_get_string_ptr(object);
      *(v6 + 168) = sub_1000166EC(v16);
      return;
    }

    goto LABEL_65;
  }

  if (!strcasecmp(a1, "SockServiceName"))
  {
    if (type == &_xpc_type_string)
    {
      v22 = xpc_string_get_string_ptr(object);
      v19 = sub_1000166EC(v22);
    }

    else
    {
      if (type != &_xpc_type_int64)
      {
        goto LABEL_65;
      }

      value = xpc_int64_get_value(object);
      v19 = sub_1000168E0("%lld", value);
    }

    *(v6 + 176) = v19;
    return;
  }

  if (!strcasecmp(a1, "SockFamily"))
  {
    if (type == &_xpc_type_string)
    {
      v20 = xpc_string_get_string_ptr(object);
      if (!strcasecmp(v20, "IPv4"))
      {
        v21 = 2;
      }

      else if (!strcasecmp(v20, "IPv6"))
      {
        v21 = 30;
      }

      else
      {
        if (!strcasecmp(v20, "IPv4v6"))
        {
          *(v6 + 192) = 30;
          v11 = *(v6 + 212) | 0x20;
          goto LABEL_29;
        }

        if (strcasecmp(v20, "Unix"))
        {
LABEL_80:
          sub_100015968(v5, 4, "Unrecognized %s");
          return;
        }

        v21 = 1;
      }

      *(v6 + 192) = v21;
      return;
    }

LABEL_65:
    xpc_type_get_name(type);
    sub_100015968(v5, 3, "Invalid type for socket dictionary (key/type): %s/%s");
    goto LABEL_66;
  }

  if (!strcasecmp(a1, "SockProtocol"))
  {
    if (type != &_xpc_type_string)
    {
      goto LABEL_65;
    }

    v23 = xpc_string_get_string_ptr(object);
    if (!strcasecmp(v23, "TCP"))
    {
      v25 = 6;
    }

    else
    {
      if (strcasecmp(v23, "UDP"))
      {
        goto LABEL_80;
      }

      v25 = 17;
    }

    *(v6 + 196) = v25;
    return;
  }

  if (strcasecmp(a1, "Bonjour"))
  {
    if (!strcasecmp(a1, "SystemLoggingSocket"))
    {
      if (xpc_BOOL_get_value(object))
      {
        v9 = 64;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v6 + 212) & 0xFFBF;
    }

    else
    {
      if (strcasecmp(a1, "ReceivePacketInfo"))
      {
        if (strcasecmp(a1, "BoundInterface"))
        {
          sub_100015968(v5, 4, "Unknown socket key %s");
          return;
        }

        if (type == &_xpc_type_string)
        {
          v24 = xpc_string_get_string_ptr(object);
          *(v6 + 184) = sub_1000166EC(v24);
          return;
        }

        goto LABEL_65;
      }

      if (xpc_BOOL_get_value(object))
      {
        v9 = 512;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v6 + 212) & 0xFDFF;
    }

    goto LABEL_28;
  }

  if (type != &_xpc_type_BOOL || xpc_BOOL_get_value(object))
  {
    v11 = *(v6 + 212) | 0x10;
    goto LABEL_29;
  }
}

void sub_10001D438(uint64_t a1)
{
  if ((*(a1 + 212) & 0x40) != 0)
  {
    if (qword_10007E020)
    {
      sub_10001CBBC(a1, 3, "System logger socket is already claimed by: %s", (qword_10007E020 + 216));
      *(a1 + 208) = 37;
      v3 = a1;
      v4 = 1;
    }

    else
    {
      qword_10007E020 = a1;
      *(a1 + 64) = sub_100014514(4uLL, 0x100004052888210uLL);
      *(a1 + 72) = sub_100014514(1uLL, 0x100004077774924uLL);
      *(a1 + 88) = 1;
      v5 = *(a1 + 64);
      *v5 = dword_10007DBD8;
      *(a1 + 100) = 2;
      *(a1 + 212) |= 4u;
      if (*v5 == -1)
      {
        sub_10001CBBC(a1, 4, "System logger socket was not opened during early boot. (Proceeding anyway)");
      }

      v3 = a1;
      v4 = 0;
    }

    sub_10001D594(v3, v4);
  }

  else
  {
    sub_10001B5B8(a1, 38);
    v2 = sub_1000157E4();

    dispatch_async_f(v2, a1, sub_10001D620);
  }
}

void sub_10001D594(void *a1, int a2)
{
  v4 = sub_100014514(0x10uLL, 0x10200403A5D3213uLL);
  *v4 = sub_10001B5B8(a1, 39);
  v4[2] = a2;
  v5 = a1[14];

  dispatch_async_f(v5, v4, sub_10001F01C);
}

void sub_10001D620(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (*(a1 + 136) != 0)
  {
    if (!byte_10007F050)
    {
      sub_100047654("fixup-mobile-tmp", 196611, "launchd has not fixed mobile/tmp (socket)");
      v2 = *(a1 + 136);
    }

    bzero(&v84, 0x400uLL);
    if (v2)
    {
      __strlcpy_chk();
      if (!mkdtemp(&v84) && *__error())
      {
        _os_assumes_log_ctx();
      }

      *(a1 + 144) = sub_1000168E0("%s/%s", &v84, (a1 + 216));
    }

    *(a1 + 64) = sub_100014514(4uLL, 0x100004052888210uLL);
    *(a1 + 72) = sub_100014514(1uLL, 0x100004077774924uLL);
    *(a1 + 88) = 1;
    v3 = socket(1, *(a1 + 100), 0);
    **(a1 + 64) = v3;
    if (v3 == -1)
    {
      goto LABEL_144;
    }

    if ((*(a1 + 212) & 2) == 0)
    {
      v4 = v3;
      memset(v97, 0, 106);
      BYTE1(v97[0].st_dev) = 1;
      strncpy(&v97[0].st_dev + 2, *(a1 + 144), 0x67uLL);
      if (connect(v4, v97, 0x6Au))
      {
        v5 = *__error();
        v6 = *(a1 + 144);
        v7 = xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to connect() a socket: path=%s, error=%s (%d)", v6, v7, v5);
        if (v5 == -1)
        {
LABEL_144:
          __error();
          _os_assumes_log_ctx();
          v8 = *__error();
          goto LABEL_137;
        }
      }

      goto LABEL_136;
    }

    bzero(v97, 0x400uLL);
    if (dirname_r(*(a1 + 144), v97))
    {
      bzero(v85, 0x400uLL);
      if (basename_r(*(a1 + 144), v85))
      {
        if (mkdir(v97, 0x1EDu) && (v8 = *__error(), v8 != 17))
        {
          xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to mkdir() socket directory: path=%s, mode=%o, error=%s (%d)");
        }

        else
        {
          v9 = open(v97, 0x100000);
          if ((v9 & 0x80000000) == 0)
          {
            v10 = v9;
            v11 = sub_1000166EC(v85);
            goto LABEL_139;
          }

          v8 = *__error();
          xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to open() socket directory: path=%s, error=%s (%d)");
        }
      }

      else
      {
        v8 = *__error();
        xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to basename_r() a socket path: path=%s, error=%s (%d)");
      }
    }

    else
    {
      v8 = *__error();
      xpc_strerror();
      sub_10001CBBC(a1, 3, "Failed to dirname_r() a socket path: path=%s, error=%s (%d)");
    }

    v11 = 0;
    v10 = 0xFFFFFFFFLL;
    if (v8)
    {
      goto LABEL_133;
    }

LABEL_139:
    memset(v97, 0, 144);
    if (fstatat(v10, v11, v97, 2048))
    {
      v8 = *__error();
      if (v8 != 2)
      {
        xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to fstatat() old socket path: path=%s, error=%s (%d)");
        goto LABEL_142;
      }
    }

    else
    {
      if (*(a1 + 104) != v97[0].st_uid)
      {
        sub_10001CBBC(a1, 3, "Cannot remove old socket path; UIDs mismatch: socket owner=%d, path=%d", *(a1 + 104), v97[0].st_uid);
        v8 = 122;
        goto LABEL_133;
      }

      if ((v97[0].st_mode & 0xF000) != 0xC000)
      {
        sub_10001CBBC(a1, 3, "Old socket path is not a socket; path=%s", *(a1 + 144));
        v8 = 79;
        goto LABEL_133;
      }

      if (unlinkat(v10, v11, 2048))
      {
        v8 = *__error();
        if (v8 != 2)
        {
          xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to unlinkat() old socket path: path=%s, error=%s (%d)");
LABEL_142:
          if (v8)
          {
            goto LABEL_133;
          }
        }
      }
    }

    memset(v97, 0, 106);
    BYTE1(v97[0].st_dev) = 1;
    strncpy(&v97[0].st_dev + 2, *(a1 + 144), 0x67uLL);
    if (!bind(**(a1 + 64), v97, 0x6Au) || (v8 = *__error(), v61 = *(a1 + 144), v62 = xpc_strerror(), sub_10001CBBC(a1, 3, "Failed to bind() a socket: path=%s, error=%s (%d)", v61, v62, v8), !v8))
    {
      v63 = *(a1 + 104);
      if (*(a1 + 108))
      {
        v64 = *(a1 + 108);
      }

      else
      {
        v64 = v63 == 0;
      }

      if (fchownat(v10, v11, *(a1 + 104), v64, 32))
      {
        v65 = *__error();
        v66 = *(a1 + 144);
        v67 = xpc_strerror();
        sub_10001CBBC(a1, 3, "Failed to fchownat() a socket: path=%s, uid=%d, gid=%d, error=%s (%d)", v66, v63, v64, v67, v65);
        v8 = v65;
        if (!v65)
        {
          goto LABEL_162;
        }
      }

      else if (!*(a1 + 136) || (v68 = *(a1 + 104)) == 0 || !fchown(v10, v68, 0) || (v8 = *__error(), v69 = *(a1 + 144), v70 = *(a1 + 104), v71 = xpc_strerror(), sub_10001CBBC(a1, 3, "Failed to fchown() secure socket directory: path=%s, uid=%d, gid=%d, error=%s (%d)", v69, v70, 0, v71, v8), !v8))
      {
LABEL_162:
        if ((*(a1 + 212) & 8) != 0)
        {
          v72 = *(a1 + 152);
        }

        else
        {
          v72 = 438;
        }

        if (fchmodat(v10, v11, v72, 32))
        {
          v73 = *__error();
          v74 = *(a1 + 144);
          v75 = xpc_strerror();
          sub_10001CBBC(a1, 3, "Failed to fchmodat() a socket: path=%s, mode=%o, error=%s (%d)", v74, v72, v75, v73);
          v8 = v73;
        }

        else
        {
          v8 = 0;
        }
      }
    }

LABEL_133:
    sub_1000413F8(v10);
    free(v11);
    if (v8)
    {
LABEL_137:
      *(a1 + 208) = v8;
LABEL_138:
      *(a1 + 212) |= 4u;
      sub_10001D594(a1, v8 != 0);
      sub_10001B690(a1, 38);
      return;
    }

    if ((*(a1 + 100) | 4) == 5 && listen(**(a1 + 64), -1) == -1)
    {
      goto LABEL_144;
    }

LABEL_136:
    v8 = 0;
    goto LABEL_137;
  }

  memset(&v82, 0, sizeof(v82));
  v12 = *(a1 + 100);
  v13 = *(a1 + 196);
  v82.ai_family = *(a1 + 192);
  v82.ai_socktype = v12;
  v82.ai_protocol = v13;
  if ((*(a1 + 212) & 2) != 0)
  {
    v82.ai_flags = 1;
  }

  v81 = 0;
  v14 = getaddrinfo(*(a1 + 160), *(a1 + 176), &v82, &v81);
  if (v14)
  {
    v76 = v14;
    _os_assumes_log_ctx();
    v77 = gai_strerror(v76);
    sub_10001CBBC(a1, 3, "getaddrinfo(3): %d: %s", v76, v77);
    v8 = sub_10001F0D8(v76);
    *(a1 + 208) = v8;
    if (v8)
    {
      goto LABEL_138;
    }

LABEL_127:
    if ((*(a1 + 212) & 0x10) != 0)
    {
      sub_10001B5B8(a1, 40);
      v60 = sub_1000157D8();
      dispatch_async_f(v60, a1, sub_10001F078);
      v8 = *(a1 + 208);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_138;
  }

  v15 = v81;
  v16 = *(a1 + 88);
  if (v81)
  {
    do
    {
      ++v16;
      v15 = v15->ai_next;
    }

    while (v15);
    *(a1 + 88) = v16;
  }

  if (!(v16 >> 62))
  {
    *(a1 + 64) = sub_100014514(4 * v16, 0xB7D1F305uLL);
    *(a1 + 72) = sub_100014514(*(a1 + 88), 0xE944D6D0uLL);
    v17 = v81;
    if (!v81)
    {
      v59 = 0;
      goto LABEL_126;
    }

    v18 = 0;
    v19 = "PATH";
    while (1)
    {
      v20 = socket(v17->ai_family, v17->ai_socktype, v17->ai_protocol);
      *(*(a1 + 64) + 4 * v18) = v20;
      if (v20 == -1)
      {
        __error();
        _os_assumes_log_ctx();
        sub_10001CBBC(a1, 3, "Could not create socket for resolved listener (family = %d, type = %d, protocol = %d, idx = %lu: ");
        goto LABEL_122;
      }

      v80 = 0;
      v21 = *(a1 + 184);
      if (v21)
      {
        LODWORD(v21) = if_nametoindex(v21);
        v80 = v21;
        if (!v21)
        {
          sub_10001CBBC(a1, 3, "Could not get interface index (name = %s, idx = %lu)");
          goto LABEL_122;
        }
      }

      v79 = 1;
      v22 = *(a1 + 212);
      if ((v22 & 2) == 0)
      {
        v23 = connect(*(*(a1 + 64) + 4 * v18), v17->ai_addr, v17->ai_addrlen);
        if (!v23)
        {
          goto LABEL_98;
        }

        if (v23 == -1)
        {
          goto LABEL_97;
        }

        goto LABEL_122;
      }

      ai_family = v17->ai_family;
      if (ai_family == 2)
      {
        if ((v22 & 0x20) != 0)
        {
          sub_1000413F8(*(*(a1 + 64) + 4 * v18));
          *(*(a1 + 64) + 4 * v18) = -1;
          goto LABEL_122;
        }

        if ((*(a1 + 212) & 0x200) == 0)
        {
          if (!v21)
          {
            goto LABEL_68;
          }

LABEL_47:
          v26 = setsockopt(*(*(a1 + 64) + 4 * v18), 0, 25, &v80, 4u);
          if (v26)
          {
            if (v26 == -1)
            {
              goto LABEL_97;
            }

            goto LABEL_122;
          }

          goto LABEL_68;
        }

        v27 = setsockopt(*(*(a1 + 64) + 4 * v18), 0, 20, &v79, 4u);
        if (v27)
        {
          if (v27 == -1)
          {
            goto LABEL_97;
          }

          goto LABEL_122;
        }

        v30 = setsockopt(*(*(a1 + 64) + 4 * v18), 0, 7, &v79, 4u);
        if (v30)
        {
          if (v30 == -1)
          {
            goto LABEL_97;
          }

          goto LABEL_122;
        }

        if (v80)
        {
          goto LABEL_47;
        }
      }

      else if (ai_family == 30)
      {
        if ((v22 & 0x20) == 0)
        {
          v25 = setsockopt(*(*(a1 + 64) + 4 * v18), 41, 27, &v79, 4u);
          if (v25)
          {
            if (v25 == -1)
            {
              goto LABEL_97;
            }

            goto LABEL_122;
          }

          *(a1 + 96) = *(*(a1 + 64) + 4 * v18);
          v22 = *(a1 + 212);
        }

        if ((v22 & 0x200) != 0)
        {
          v28 = setsockopt(*(*(a1 + 64) + 4 * v18), 41, 61, &v79, 4u);
          if (v28)
          {
            if (v28 == -1)
            {
              goto LABEL_97;
            }

            goto LABEL_122;
          }
        }

        if (v80)
        {
          v29 = setsockopt(*(*(a1 + 64) + 4 * v18), 41, 125, &v80, 4u);
          if (v29)
          {
            if (v29 == -1)
            {
              goto LABEL_97;
            }

            goto LABEL_122;
          }
        }
      }

LABEL_68:
      v31 = *(*(a1 + 64) + 4 * v18);
      if (*(a1 + 168))
      {
        v32 = setsockopt(v31, 0xFFFF, 512, &v79, 4u);
        if (v32)
        {
          if (v32 == -1)
          {
            goto LABEL_97;
          }

          goto LABEL_122;
        }
      }

      else
      {
        v33 = setsockopt(v31, 0xFFFF, 4, &v79, 4u);
        if (v33)
        {
          if (v33 == -1)
          {
            goto LABEL_97;
          }

          goto LABEL_122;
        }
      }

      v34 = bind(*(*(a1 + 64) + 4 * v18), v17->ai_addr, v17->ai_addrlen);
      if (v34)
      {
        if (v34 == -1)
        {
          goto LABEL_97;
        }

        goto LABEL_122;
      }

      v35 = getsockname(*(*(a1 + 64) + 4 * v18), v17->ai_addr, &v17->ai_addrlen);
      if (v35)
      {
        if (v35 == -1)
        {
          goto LABEL_97;
        }

        goto LABEL_122;
      }

      v36 = *(a1 + 168);
      if (v36)
      {
        v37 = *(*(a1 + 64) + 4 * v18);
        ai_protocol = v17->ai_protocol;
        v39 = *&v17->ai_family;
        *&v97[0].st_uid = 0uLL;
        v78 = v39;
        *&v97[0].st_mode = v39;
        v97[0].st_dev = 1;
        HIDWORD(v97[0].st_ino) = ai_protocol;
        v97[0].st_atimespec = 0uLL;
        *&v84.st_dev = 0;
        v40 = getaddrinfo(v36, 0, v97, &v84);
        if (!v40)
        {
          v43 = *&v84.st_dev;
          if (!*&v84.st_dev)
          {
LABEL_93:
            freeaddrinfo(*&v84.st_dev);
            goto LABEL_94;
          }

          while (2)
          {
            if (v78 == 30)
            {
              LODWORD(v86) = 0;
              memset(v85, 0, sizeof(v85));
              *v85 = *(*(v43 + 32) + 8);
              v44 = v37;
              v45 = 41;
              v46 = 20;
LABEL_89:
              if (setsockopt(v44, v45, 12, v85, v46) != -1)
              {
                goto LABEL_93;
              }

              __error();
              _os_assumes_log_ctx();
            }

            else
            {
              if (v78 == 2)
              {
                *v85 = 0;
                *v85 = *(*(v43 + 32) + 4);
                v44 = v37;
                v45 = 0;
                v46 = 8;
                goto LABEL_89;
              }

              sub_10001CBBC(a1, 3, "Unknown family encountered during multicast group bind: %d", v78);
            }

            v43 = *(v43 + 40);
            if (!v43)
            {
              goto LABEL_93;
            }

            continue;
          }
        }

        v41 = v40;
        v42 = gai_strerror(v40);
        sub_10001CBBC(a1, 3, "getaddrinfo(3): %d: %s", v41, v42);
        sub_10001F0D8(v41);
      }

LABEL_94:
      if ((v17->ai_socktype | 4) != 5 || (v47 = listen(*(*(a1 + 64) + 4 * v18), -1)) == 0)
      {
LABEL_98:
        v48 = *(*(a1 + 64) + 4 * v18);
        v49 = sub_100024564(*(a1 + 56));
        if (*v49 == 47)
        {
          v50 = 0;
        }

        else
        {
          v52 = getenv(v19);
          if (!v52)
          {
            sub_10001CBBC(a1, 3, "No PATH environment variable set. The application firewall will not work with this service.");
            goto LABEL_120;
          }

          v50 = sub_1000166EC(v52);
          __stringp = v50;
          v96 = 0u;
          v95 = 0u;
          v94 = 0u;
          v93 = 0u;
          v92 = 0u;
          v91 = 0u;
          v90 = 0u;
          v89 = 0u;
          v88 = 0u;
          v87 = 0u;
          v86 = 0u;
          *v85 = 0u;
          v53 = strsep(&__stringp, ":");
          if (v53)
          {
            v54 = 0;
            while (v54 != 24)
            {
              v55 = v54 + 1;
              *&v85[8 * v54] = v53;
              v53 = strsep(&__stringp, ":");
              v54 = v55;
              if (!v53)
              {
                goto LABEL_112;
              }
            }

            sub_10001CBBC(a1, 4, "PATH contains lots of paths. Some will be skipped.");
            v55 = 24;
LABEL_112:
            v56 = v19;
            v57 = 0;
            v58 = 8 * v55;
            while (1)
            {
              bzero(v97, 0x400uLL);
              snprintf(v97, 0x400uLL, "%s/%s", *&v85[v57], v49);
              memset(&v84, 0, sizeof(v84));
              if (!stat(v97, &v84))
              {
                break;
              }

              v57 += 8;
              if (v58 == v57)
              {
                goto LABEL_117;
              }
            }

            free(v50);
            v49 = sub_1000166EC(v97);
            v50 = v49;
LABEL_117:
            v19 = v56;
            if (!v49)
            {
              sub_10001CBBC(a1, 3, "Socket's service points to a non-existent executable. The application firewall will not work with this service.");
LABEL_119:
              free(v50);
LABEL_120:
              if (fcntl(*(*(a1 + 64) + 4 * v18), 4, 4) == -1)
              {
                sub_10005455C();
              }

              goto LABEL_122;
            }
          }
        }

        v51 = strlen(v49);
        if (setsockopt(v48, 0xFFFF, 4229, v49, v51 + 1) == -1 && *__error() != 42 && *__error())
        {
          _os_assumes_log_ctx();
        }

        goto LABEL_119;
      }

      if (v47 == -1)
      {
LABEL_97:
        sub_100054DC0();
      }

LABEL_122:
      ++v18;
      v17 = v17->ai_next;
      if (!v17)
      {
        v59 = v81;
LABEL_126:
        freeaddrinfo(v59);
        *(a1 + 208) = 0;
        goto LABEL_127;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10001E554(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    return 0;
  }

  result = *(a1 + 144);
  *a2 = v2;
  return result;
}

void sub_10001E570(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 212);
  if ((v2 & 0x100) != 0)
  {
    sub_1000441E0("attempt to watch socket that is already watched", a2);
  }

  if ((v2 & 0x80) != 0)
  {
    sub_1000441E0("attempt to watch canceled socket", a2);
  }

  if (*(a1 + 80))
  {
    sub_100054404();
  }

  v4 = *(a1 + 88);
  if (v4 >> 61)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 80) = sub_100014514(8 * v4, 0x5CF470B0uLL);
    v5 = *(a1 + 88);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(*(a1 + 64) + 4 * v6);
        if (v7 != -1)
        {
          break;
        }

LABEL_15:
        if (++v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v8 = dup(*(*(a1 + 64) + 4 * v6));
      if (v8 == -1)
      {
        sub_10005455C();
      }

      else
      {
        v9 = v8;
        if ((v8 & 0x80000000) == 0)
        {
          v10 = sub_1000157D8();
          v11 = dispatch_source_create(&_dispatch_source_type_read, v9, 0, v10);
          dispatch_set_context(v11, a1);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 0x40000000;
          handler[2] = sub_10001F19C;
          handler[3] = &unk_100078C20;
          handler[4] = v11;
          v13 = v7;
          dispatch_source_set_event_handler(v11, handler);
          dispatch_source_set_mandatory_cancel_handler();
          dispatch_activate(v11);
          if (v11)
          {
            goto LABEL_14;
          }
        }
      }

      sub_10001CBBC(a1, 4, "Unable to monitor socket #%zu", v6);
      v11 = 0;
LABEL_14:
      v5 = *(a1 + 88);
      *(*(a1 + 80) + 8 * v6) = v11;
      goto LABEL_15;
    }

LABEL_16:
    *(a1 + 212) |= 0x100u;
  }
}

void sub_10001E76C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 212);
  if ((v2 & 0x100) == 0)
  {
    sub_1000441E0("attempt to ignore socket that is already ignored", a2);
  }

  if ((v2 & 0x80) != 0)
  {
    sub_1000441E0("attempt to ignore canceled socket", a2);
  }

  v4 = *(a1 + 80);
  if (!v4)
  {
    sub_100054404();
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 80) + 8 * i);
      if (*(*(a1 + 64) + 4 * i) == -1)
      {
        if (v7)
        {
          sub_100054404();
        }
      }

      else if (v7)
      {
        dispatch_source_cancel(v7);
        v5 = *(a1 + 88);
        *(*(a1 + 80) + 8 * i) = 0;
      }
    }

    v4 = *(a1 + 80);
  }

  free(v4);
  *(a1 + 80) = 0;
  *(a1 + 212) &= ~0x100u;
}

uint64_t sub_10001E820(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 212);
  if (v6)
  {
    return 37;
  }

  if (!*(a1 + 136) && a3 && *(a1 + 144))
  {
    v16 = (v6 & 2) != 0 ? "network-inbound" : "network-outbound";
    if (!sub_10001A64C(a3, v16, 4) && !sub_100026F1C(a2))
    {
      return 159;
    }
  }

  *a4 = *(a1 + 64);
  v12 = *(a1 + 88);
  *a6 = v12;
  if (a5)
  {
    *a5 = *(a1 + 72);
  }

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 64) + 4 * v13);
      if (v14 != -1 && fcntl(v14, 4, a3, 0) == -1)
      {
        sub_10005455C();
      }

      ++v13;
    }

    while (v13 < *(a1 + 88));
  }

  result = 0;
  *(a1 + 212) |= 1u;
  return result;
}

uint64_t sub_10001E940(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 64);
  *a3 = *(result + 88);
  return result;
}

uint64_t sub_10001E95C(uint64_t result)
{
  *(result + 212) &= ~1u;
  v1 = *(result + 88);
  if (v1)
  {
    v2 = result;
    for (i = 0; i < v1; ++i)
    {
      result = *(v2[8] + 4 * i);
      if (result != -1)
      {
        result = fcntl(result, 4, 4);
        if (result == -1)
        {
          result = sub_10005455C();
        }

        *(v2[9] + i) = 0;
        v1 = v2[11];
      }
    }
  }

  return result;
}

void sub_10001E9F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 212);
  if ((v3 & 0x100) != 0)
  {
    sub_10001E76C(a1, a2);
    v3 = *(a1 + 212);
  }

  *(a1 + 212) = v3 | 0x80;
}

uint64_t sub_10001EA30(void *a1, unsigned int **a2, void *a3)
{
  v3 = a1[11];
  if (v3 >> 62)
  {
    __break(1u);
  }

  v7 = sub_100014514(4 * v3, 0x459FF4ADuLL);
  v8 = a1[11];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = a1[8];
      if (*(v11 + 4 * v10) != -1)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0;
        v21 = 0u;
        v19 = 128;
        v12 = accept(*(v11 + 4 * v10), &v20, &v19);
        if (v12 == -1)
        {
          v14 = *__error();
          if (*(a1[9] + v10) == 1)
          {
            v15 = xpc_strerror();
            sub_10001CBBC(a1, 3, "Got a socket event but accept() failed with errno %d - %s", v14, v15);
          }

          if (v14 != 35)
          {
            if (v9)
            {
              v17 = v7;
              do
              {
                v18 = *v17++;
                sub_1000413F8(v18);
                --v9;
              }

              while (v9);
            }

            free(v7);
            return v14;
          }
        }

        else
        {
          v13 = v12;
          if (fcntl(v12, 4, 0) == -1)
          {
            sub_10005455C();
          }

          v7[v9++] = v13;
        }

        *(a1[9] + v10) = 0;
        v8 = a1[11];
      }

      if (++v10 >= v8)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = 0;
LABEL_16:
  v14 = 0;
  *a2 = v7;
  *a3 = v9;
  return v14;
}

uint64_t sub_10001EBE8(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100049ECC(a2, a3, "%s = {", a4, a5, a6, a7, a8, a1 + 216);
  v16 = *(a1 + 212);
  if ((v16 & 4) == 0)
  {
    v17 = "(animating)";
    goto LABEL_65;
  }

  if ((v16 & 0x40) != 0)
  {
    v17 = "(system logger socket)";
    goto LABEL_65;
  }

  v18 = *(a1 + 100) - 1;
  v19 = "(unknown)";
  if (v18 <= 4)
  {
    v19 = off_100078C60[v18];
  }

  sub_100049ECC(a2, a3 + 1, "type = %s", v11, v12, v13, v14, v15, v19);
  if (!*(a1 + 144) && !*(a1 + 136))
  {
    if (*(a1 + 160))
    {
      v83 = *(a1 + 160);
      sub_100049ECC(a2, a3 + 1, "node name = %s", v22, v23, v24, v25, v26);
    }

    if (*(a1 + 168))
    {
      v83 = *(a1 + 168);
      sub_100049ECC(a2, a3 + 1, "multicast group = %s", v22, v23, v24, v25, v26);
    }

    if (*(a1 + 176))
    {
      v83 = *(a1 + 176);
      sub_100049ECC(a2, a3 + 1, "service name = %s", v22, v23, v24, v25, v26);
    }

    if (*(a1 + 184))
    {
      v83 = *(a1 + 184);
      sub_100049ECC(a2, a3 + 1, "bound interface = %s", v22, v23, v24, v25, v26);
    }

    v27 = *(a1 + 192);
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = "ipv4";
        goto LABEL_33;
      }

      if (v27 == 30)
      {
        v28 = "ipv6";
        goto LABEL_33;
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      if (v27 == 1)
      {
        v28 = "unix";
LABEL_33:
        sub_100049ECC(a2, a3 + 1, "family = %s", v22, v23, v24, v25, v26, v28);
LABEL_34:
        v29 = *(a1 + 196);
        if (v29)
        {
          v30 = "udp";
          if (v29 != 17)
          {
            v30 = "(unknown)";
          }

          if (v29 == 6)
          {
            v31 = "tcp";
          }

          else
          {
            v31 = v30;
          }

          sub_100049ECC(a2, a3 + 1, "protocol = %s", v22, v23, v24, v25, v26, v31);
        }

        goto LABEL_41;
      }
    }

    v28 = "(unknown)";
    goto LABEL_33;
  }

  sub_100049ECC(a2, a3 + 1, "path = %s", v22, v23, v24, v25, v26, *(a1 + 144));
  if ((*(a1 + 212) & 8) != 0)
  {
    LOWORD(v83) = *(a1 + 152);
    sub_100049ECC(a2, a3 + 1, "mode = %o", v22, v23, v24, v25, v26);
  }

  if (*(a1 + 136))
  {
    v83 = *(a1 + 136);
    sub_100049ECC(a2, a3 + 1, "secure key = %s", v22, v23, v24, v25, v26);
  }

  if (*(a1 + 104))
  {
    LODWORD(v83) = *(a1 + 104);
    sub_100049ECC(a2, a3 + 1, "owner uid = %u", v22, v23, v24, v25, v26);
    if (*(a1 + 104))
    {
      sub_100049ECC(a2, a3 + 1, "group id = %u", v22, v23, v24, v25, v26, *(a1 + 108));
    }
  }

LABEL_41:
  if (*(a1 + 208))
  {
    LODWORD(v83) = *(a1 + 208);
    sub_100049ECC(a2, a3 + 1, "error = %d", v22, v23, v24, v25, v26);
  }

  sub_100049F4C(a2, v20, v21, v22, v23, v24, v25, v26, v83);
  sub_100049ECC(a2, a3 + 1, "sockets = {", v32, v33, v34, v35, v36);
  if (*(a1 + 88))
  {
    v42 = 0;
    do
    {
      if (*(*(a1 + 72) + v42))
      {
        v43 = &unk_10005CEA2;
      }

      else
      {
        v43 = "no ";
      }

      sub_100049ECC(a2, a3 + 2, "%d (%sbytes to read)", v37, v38, v39, v40, v41, *(*(a1 + 64) + 4 * v42++), v43);
    }

    while (v42 < *(a1 + 88));
  }

  sub_100049ECC(a2, a3 + 1, "}", v37, v38, v39, v40, v41);
  sub_100049F4C(a2, v44, v45, v46, v47, v48, v49, v50, v84);
  if (*(a1 + 212))
  {
    v56 = "1";
  }

  else
  {
    v56 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "active = %s", v51, v52, v53, v54, v55, v56);
  if ((*(a1 + 212) & 2) != 0)
  {
    v62 = "1";
  }

  else
  {
    v62 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "passive = %s", v57, v58, v59, v60, v61, v62);
  if ((*(a1 + 212) & 0x10) != 0)
  {
    v68 = "1";
  }

  else
  {
    v68 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "bonjour = %s", v63, v64, v65, v66, v67, v68);
  if ((*(a1 + 212) & 0x20) != 0)
  {
    v74 = "1";
  }

  else
  {
    v74 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "ipv4v6 = %s", v69, v70, v71, v72, v73, v74);
  if ((*(a1 + 212) & 0x200) != 0)
  {
    v75 = "1";
  }

  else
  {
    v75 = "0";
  }

  v82 = v75;
  v17 = "receive_packet_info = %s";
LABEL_65:
  sub_100049ECC(a2, a3 + 1, v17, v11, v12, v13, v14, v15, v82);

  return sub_100049ECC(a2, a3, "}", v76, v77, v78, v79, v80);
}

void sub_10001F01C(unsigned int *a1)
{
  v2 = *a1;
  (*(*a1 + 120))(*a1, a1[2], *(*a1 + 128));
  sub_10001B690(v2, 39);

  free(a1);
}

void sub_10001F078(uint64_t a1)
{
  if ((*(a1 + 212) & 0x80) == 0)
  {
    sub_10003FEAC(*(a1 + 56), "com.apple.bonjour.registration", (a1 + 216), *(a1 + 200));
  }

  sub_10001B690(a1, 40);
}

uint64_t sub_10001F0D8(int a1)
{
  switch(a1)
  {
    case 1:
    case 5:
    case 9:
    case 10:
      result = 45;
      break;
    case 2:
      result = 35;
      break;
    case 3:
    case 12:
    case 13:
      result = 22;
      break;
    case 4:
      result = 153;
      break;
    case 6:
      result = 12;
      break;
    case 7:
    case 8:
      result = 3;
      break;
    case 11:
      result = *__error();
      break;
    case 14:
      result = 34;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t sub_10001F19C(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  v3 = context[11];
  if (v3)
  {
    v4 = 0;
    while (*(context[8] + 4 * v4) != *(a1 + 40))
    {
      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    *(context[9] + v4) = 1;
  }

LABEL_7:
  v6 = context[15];
  v5 = context[16];

  return v6(context, 2, v5);
}

void sub_10001F218(uint64_t a1)
{
  handle = dispatch_source_get_handle(*(a1 + 32));
  sub_1000413F8(handle);
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

uint64_t sub_10001F258(int *a1)
{

  return _os_assumes_log_ctx();
}

void sub_10001F280()
{
  qword_10007E028 = 0;
  byte_10007E030 = 0;
  qword_10007E038 = 0;
  qword_10007E040 = 0;
  qword_10007E048 = 0;
}

BOOL sub_10001F2AC(rb_tree_t **a1)
{
  if (a1)
  {
    v2 = sub_10001F33C();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10001F370;
    v5[3] = &unk_100078C90;
    v5[4] = a1;
    sub_10001C6B0(v2, v5);
  }

  v3 = sub_10001F33C();
  return sub_10001C734(v3) != 0;
}

void *sub_10001F33C()
{
  sub_100015808();
  result = qword_10007E040;
  if (!qword_10007E040)
  {
    result = sub_10001C750();
    qword_10007E040 = result;
  }

  return result;
}

uint64_t sub_10001F384(void *a1, void *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "cid");
  if (!uint64)
  {
    return 22;
  }

  v5 = uint64;
  v6 = sub_10001F33C();
  v7 = sub_10001C668(v6, v5);
  if (v7)
  {
    v8 = v7;
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v10 = reply;
      sub_10001F408(reply, v8);
      result = 0;
      *a2 = v10;
      return result;
    }

    return 22;
  }

  return 3;
}

void sub_10001F408(void *a1, uint64_t a2)
{
  v4 = sub_100010B1C(a2);
  xpc_dictionary_set_uint64(a1, "cid", v4);
  v5 = sub_1000130C0(a2);
  v6 = sub_1000130C8(a2);
  if (v5)
  {
    xpc_dictionary_set_string(a1, "name", v5);
  }

  if (v6)
  {
    xpc_dictionary_set_string(a1, "bundle_identifier", v6);
  }

  v7 = sub_10000ED30(a2);
  if (v7)
  {
    xpc_dictionary_set_data(a1, "resource-usage-blob", v7, 0x168uLL);
  }

  v8 = sub_1000130F8(a2);

  xpc_dictionary_set_int64(a1, "leader-pid", v8);
}

uint64_t sub_10001F4E4(void *a1, void *a2)
{
  byte_10007E030 = 1;
  v4 = qword_10007E048;
  if (!qword_10007E048)
  {
    v4 = sub_100010918();
    qword_10007E048 = v4;
  }

  if (sub_100010B1C(v4))
  {
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v6 = reply;
      v7 = qword_10007E048;
      if (!qword_10007E048)
      {
        v7 = sub_100010918();
        qword_10007E048 = v7;
      }

      v8 = sub_100010AF4(v7, 0);
      sub_1000130D8(v8, 2);
      sub_10001F408(v6, v8);
      v9 = qword_10007E048;
      if (!qword_10007E048)
      {
        v9 = sub_100010918();
        qword_10007E048 = v9;
      }

      sub_100010A70(v9, 0);
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 22;
    }
  }

  else if (qword_10007E028)
  {
    return 37;
  }

  else
  {
    v11 = xpc_dictionary_create_reply(a1);
    result = 0;
    qword_10007E028 = v11;
  }

  return result;
}

uint64_t sub_10001F5CC(uint64_t a1)
{
  v2 = sub_10001F33C();
  v3 = sub_10001C668(v2, a1);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  sub_1000130D8(v3, 1);
  if (!sub_1000130D0(v4))
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    if (coalition_info_resource_usage() == -1)
    {
      sub_10005455C();
    }

    sub_100012F44(v4, v11);
    v6 = qword_10007E028;
    if (qword_10007E028)
    {
      qword_10007E028 = 0;
      sub_10001F408(v6, v4);
      v7 = xpc_pipe_routine_reply();
      xpc_release(v6);
      if (!v7)
      {
        goto LABEL_11;
      }

      if (v7 != 32)
      {
        _os_assumes_log();
        goto LABEL_11;
      }
    }

    sub_10001F964(v4);
    goto LABEL_11;
  }

  sub_100012F44(v4, 0);
LABEL_11:
  if (byte_10007F103 == 1)
  {
    v8 = sub_1000130C0(v4);
    sub_10004749C(65541, "coalition_reap(%llu) [%s]", a1, v8);
  }

  sub_10000E878(a1);
  v9 = sub_10001F33C();
  v10 = sub_100010B1C(v4);
  sub_10001C5A0(v9, v10, 0);
  return 0;
}

_BYTE *sub_10001F754(uint64_t a1)
{
  v2 = sub_10000E74C(a1);
  v3 = sub_100012E18(v2, *(a1 + 8), *(a1 + 16), *a1, sub_10000E84C);
  v4 = sub_10001F33C();
  v5 = sub_100010B1C(v3);
  sub_10001C5A0(v4, v5, v3);
  return v3;
}

_BYTE *sub_10001F7BC(const void *a1, _DWORD *a2)
{
  if (*a2)
  {
    sub_100054404();
  }

  if (!a1)
  {
    sub_100054404();
  }

  v4 = qword_10007E038;
  if (!qword_10007E038)
  {
    v4 = sub_100049AE8(32, sub_10001F8A4);
    qword_10007E038 = v4;
  }

  v5 = sub_100049A74(v4, a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100010B1C(v5);
    sub_10004749C(5, "Coalition Cache Hit: %s [%llu]", a1, v7);

    return sub_100012EB4(v6, v8);
  }

  else
  {
    v10 = sub_10001F754(a2);
    v11 = qword_10007E038;
    v13 = sub_100012EB4(v10, v12);
    sub_10004988C(v11, a1, v13);
    return v10;
  }
}

uint64_t sub_10001F8A4(const char *a1, uint64_t a2)
{
  v4 = sub_100010B1C(a2);
  sub_10004749C(5, "Coalition Cache Evicted: %s [%llu]", a1, v4);

  return sub_100012EE8(a2, v5);
}

rb_tree_t **sub_10001F900(uint64_t a1)
{
  v2 = sub_10001F33C();

  return sub_10001C668(v2, a1);
}

void *sub_10001F964(void *a1)
{
  result = sub_1000130D8(a1, 2);
  if (byte_10007E030 == 1)
  {
    v3 = qword_10007E048;
    if (!qword_10007E048)
    {
      v3 = sub_100010918();
      qword_10007E048 = v3;
    }

    return sub_1000109BC(v3, a1);
  }

  return result;
}

void sub_10001F9E4(uint64_t a1)
{
  os_map_str_delete();
  free(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_10001B690(v2, 0);
  }
}