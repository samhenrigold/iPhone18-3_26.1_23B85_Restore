void PowerStats::submitWakeInfoMetric_sync(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30[0]) = 0;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of wake info", v30, 2u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x29EDCAA00];
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == v10)
    {
      xpc_retain(v9);
      v11 = v9;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v12) == v10)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  v14 = xpc_int64_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF008], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF468], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(a4);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF358], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE588], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_int64_create(524465);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE660], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (v13)
  {
    xpc_retain(v13);
    v24 = v13;
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE580], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  if (*(a1 + 104) && *(a1 + 112))
  {
    if (v11)
    {
      xpc_retain(v11);
      v26 = v11;
      v27 = *(a1 + 104);
      if (v27)
      {
LABEL_32:
        v28 = _Block_copy(v27);
        goto LABEL_35;
      }
    }

    else
    {
      v26 = xpc_null_create();
      v27 = *(a1 + 104);
      if (v27)
      {
        goto LABEL_32;
      }
    }

    v28 = 0;
LABEL_35:
    v29 = *(a1 + 112);
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 1174405120;
    v30[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v30[3] = &__block_descriptor_tmp_30;
    if (v28)
    {
      aBlock = _Block_copy(v28);
      object = v26;
      if (v26)
      {
LABEL_37:
        xpc_retain(v26);
LABEL_40:
        dispatch_async(v29, v30);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        xpc_release(v26);
        goto LABEL_45;
      }
    }

    else
    {
      aBlock = 0;
      object = v26;
      if (v26)
      {
        goto LABEL_37;
      }
    }

    object = xpc_null_create();
    goto LABEL_40;
  }

LABEL_45:
  xpc_release(v13);
  xpc_release(v11);
}

void PowerStats::setPowerdownMessage(uint64_t a1, xpc_object_t *a2)
{
  theArray = 0xAAAAAAAAAAAAAAAALL;
  value = xpc_dictionary_get_value(*a2, abm::kKeyPowerDownMessageList[0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(cf, &object, v4);
  v5 = cf[0];
  if (cf[0])
  {
    v6 = CFGetTypeID(cf[0]);
    if (v6 == CFArrayGetTypeID())
    {
      theArray = v5;
      CFRetain(v5);
      v7 = cf[0];
      if (!cf[0])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
  theArray = 0;
  v7 = cf[0];
  if (cf[0])
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  xpc_release(object);
  v8 = 0;
  v9 = (a1 + 48);
  while (1)
  {
    Count = CFArrayGetCount(v5);
    v5 = theArray;
    if (Count <= v8)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    v12 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      goto LABEL_13;
    }

    cf[0] = 0xAAAAAAAAAAAAAAAALL;
    cf[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 == CFDictionaryGetTypeID())
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    ctu::cf::dict_adapter::dict_adapter(cf, v14);
    ctu::cf::MakeCFString::MakeCFString(&object, abm::kKeyPowerDownMessageQMISvc[0]);
    Int = ctu::cf::map_adapter::getInt(cf, object);
    MEMORY[0x29C26DF80](&object);
    ctu::cf::MakeCFString::MakeCFString(&object, abm::kKeyPowerDownMessageId[0]);
    v16 = ctu::cf::map_adapter::getInt(cf, object);
    MEMORY[0x29C26DF80](&object);
    v17 = *v9;
    v18 = (a1 + 48);
    v19 = (a1 + 48);
    if (*v9)
    {
      while (1)
      {
        while (1)
        {
          v19 = v17;
          v20 = *(v17 + 7);
          if (Int == v20)
          {
            break;
          }

          if (Int >= v20)
          {
            if (v20 >= Int)
            {
              v24 = 1;
            }

            else
            {
              v24 = -1;
            }

            if ((v24 & 0x80) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }

LABEL_21:
          v17 = *v19;
          v18 = v19;
          if (!*v19)
          {
            goto LABEL_38;
          }
        }

        v21 = *(v19 + 8);
        if (v16 < v21)
        {
          goto LABEL_21;
        }

        v22 = v21 == v16;
        if (v21 >= v16)
        {
          v23 = 1;
        }

        else
        {
          v23 = -1;
        }

        if (v22)
        {
          v23 = 0;
        }

        if ((v23 & 0x80) == 0)
        {
LABEL_40:
          v25 = v19;
          goto LABEL_12;
        }

LABEL_36:
        v17 = *(v19 + 1);
        if (!v17)
        {
          v18 = v19 + 8;
          break;
        }
      }
    }

LABEL_38:
    v25 = operator new(0x28uLL);
    *(v25 + 28) = Int | (v16 << 32);
    *(v25 + 9) = 0;
    *v25 = 0;
    *(v25 + 1) = 0;
    *(v25 + 2) = v19;
    *v18 = v25;
    v26 = **(a1 + 40);
    if (v26)
    {
      *(a1 + 40) = v26;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 48), v25);
    ++*(a1 + 56);
LABEL_12:
    ++*(v25 + 9);
    MEMORY[0x29C26DFC0](cf);
LABEL_13:
    ++v8;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void PowerStats::submitLowPowerStatsMetric_sync(os_log_t *this)
{
  v1 = this;
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of low power stats", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5 || (v5 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v5) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v5);
      v6 = v5;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v5 = 0;
  }

  xpc_release(v5);
  v7 = xpc_int64_create(*(v1 + 3));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF288], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_int64_create((*(v1 + 4) + *(v1 + 2)));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEAE0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_int64_create(*(v1 + 5));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEEC8], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(v1 + 6));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBE768], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(*(v1 + 8));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEC20], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(*(v1 + 7));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBED48], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_array_create(0, 0);
  if (v19 || (v19 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v19) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v19);
      v20 = v19;
    }

    else
    {
      v20 = xpc_null_create();
    }
  }

  else
  {
    v20 = xpc_null_create();
    v19 = 0;
  }

  xpc_release(v19);
  v21 = v1[5];
  v22 = v1 + 6;
  if (v21 == (v1 + 6))
  {
    v23 = 0;
    if (v20)
    {
LABEL_57:
      xpc_retain(v20);
      v41 = v20;
      goto LABEL_60;
    }
  }

  else
  {
    xarray = v20;
    v56 = v4;
    v57 = v6;
    v55 = v1;
    LODWORD(v23) = 0;
    key = *MEMORY[0x29EDBEEC0];
    v59 = *MEMORY[0x29EDBED58];
    v58 = *MEMORY[0x29EDBE760];
    v24 = *MEMORY[0x29EDBE758];
    do
    {
      isa_high = HIDWORD(v21[3].isa);
      isa_low = LODWORD(v21[4].isa);
      v27 = HIDWORD(v21[4].isa);
      v28 = xpc_dictionary_create(0, 0, 0);
      if (v28 || (v28 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26F9F0](v28) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v28);
          v29 = v28;
        }

        else
        {
          v29 = xpc_null_create();
        }
      }

      else
      {
        v29 = xpc_null_create();
        v28 = 0;
      }

      xpc_release(v28);
      v30 = xpc_int64_create(0);
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, key, v30);
      v31 = xpc_null_create();
      xpc_release(v30);
      xpc_release(v31);
      v32 = xpc_int64_create(isa_high);
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, v59, v32);
      v33 = xpc_null_create();
      xpc_release(v32);
      xpc_release(v33);
      v34 = xpc_int64_create(isa_low);
      if (!v34)
      {
        v34 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, v58, v34);
      v35 = xpc_null_create();
      xpc_release(v34);
      xpc_release(v35);
      v36 = xpc_int64_create(v27);
      if (!v36)
      {
        v36 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, v24, v36);
      v37 = xpc_null_create();
      xpc_release(v36);
      xpc_release(v37);
      xpc_array_append_value(xarray, v29);
      xpc_release(v29);
      isa = v21[1].isa;
      if (isa)
      {
        do
        {
          v39 = isa;
          isa = isa->isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v39 = v21[2].isa;
          v40 = v39->isa == v21;
          v21 = v39;
        }

        while (!v40);
      }

      v23 = (v27 + v23);
      v21 = v39;
    }

    while (v39 != v22);
    v1 = v55;
    v4 = v56;
    v6 = v57;
    v20 = xarray;
    if (xarray)
    {
      goto LABEL_57;
    }
  }

  v41 = xpc_null_create();
LABEL_60:
  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBED50], v41);
  v42 = xpc_null_create();
  xpc_release(v41);
  xpc_release(v42);
  v43 = xpc_int64_create(v23);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF148], v43);
  v44 = xpc_null_create();
  xpc_release(v43);
  xpc_release(v44);
  v45 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE588], v45);
  v46 = xpc_null_create();
  xpc_release(v45);
  xpc_release(v46);
  v47 = xpc_int64_create(524466);
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE660], v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  if (v6)
  {
    xpc_retain(v6);
    v49 = v6;
  }

  else
  {
    v49 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE580], v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  if (v1[13] && v1[14])
  {
    if (v4)
    {
      xpc_retain(v4);
      v51 = v4;
      v52 = v1[13];
      if (v52)
      {
LABEL_73:
        v53 = _Block_copy(v52);
        goto LABEL_76;
      }
    }

    else
    {
      v51 = xpc_null_create();
      v52 = v1[13];
      if (v52)
      {
        goto LABEL_73;
      }
    }

    v53 = 0;
LABEL_76:
    v54 = v1[14];
    *buf = MEMORY[0x29EDCA5F8];
    v63 = 1174405120;
    v64 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v65 = &__block_descriptor_tmp_30;
    if (v53)
    {
      aBlock = _Block_copy(v53);
      object = v51;
      if (v51)
      {
LABEL_78:
        xpc_retain(v51);
LABEL_81:
        dispatch_async(v54, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v53)
        {
          _Block_release(v53);
        }

        xpc_release(v51);
        goto LABEL_86;
      }
    }

    else
    {
      aBlock = 0;
      object = v51;
      if (v51)
      {
        goto LABEL_78;
      }
    }

    object = xpc_null_create();
    goto LABEL_81;
  }

LABEL_86:
  xpc_release(v20);
  xpc_release(v6);
  xpc_release(v4);
}

void sub_2973588A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(v16);
  xpc_release(object);
  xpc_release(a12);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void PowerStats::reportStats(os_log_t *this, int a2)
{
  if (a2 == 524466)
  {
    PowerStats::submitLowPowerStatsMetric_sync(this);
  }
}

void PowerStats::registerStatsHandler(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 112);
  *(a1 + 112) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void PowerStats::dumpState(os_log_t *this)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I --------------- ABM Power state ---------------", buf, 2u);
    v2 = *this;
    v3 = &xmmword_29742F000;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
LABEL_3:
      v4 = "9LogDumpDB";
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = &xmmword_29742F000;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_3;
    }
  }

  v7 = *(this + 3);
  *buf = *(v3 + 41);
  v24 = v7;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Idle sleep reverted due to BB events: %u", buf, 8u);
  v2 = *this;
  v4 = "9LogDumpDB";
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = *(this + 2);
  v9 = *(this + 4);
  *buf = *(v4 + 212);
  v24 = v8;
  v25 = 1024;
  v26 = v9;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I BB events deferred on idle sleep: %u, on forced sleep: %u", buf, 0xEu);
  v2 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = *(this + 5);
  *buf = *(v3 + 41);
  v24 = v10;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Forced sleep during BB event handling: %u", buf, 8u);
  v2 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
LABEL_6:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v12 = *(this + 7);
  v11 = *(this + 8);
  v13 = *(this + 6);
  *buf = 67109632;
  v24 = v11;
  v25 = 1024;
  v26 = v12;
  v27 = 1024;
  v28 = v13;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Number of idle sleeps: %u, forced sleeps: %u, wakes: %u", buf, 0x14u);
  v2 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    v5 = this[5];
    v6 = this + 6;
    if (v5 == (this + 6))
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_14:
  v14 = *(this + 20);
  v15 = *(this + 21);
  *buf = *(v4 + 212);
  v24 = v14;
  v25 = 1024;
  v26 = v15;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Last wake duration: %u, sleep duration: %u", buf, 0xEu);
  v5 = this[5];
  v6 = this + 6;
  if (v5 == (this + 6))
  {
    return;
  }

  do
  {
LABEL_17:
    v16 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      isa = v5[4].isa;
      isa_high = HIDWORD(v5[4].isa);
      v19 = HIDWORD(v5[3].isa);
      *buf = 67109632;
      v24 = v19;
      v25 = 1024;
      v26 = isa;
      v27 = 1024;
      v28 = isa_high;
      _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Received message QMI_SVC 0x%x, ID 0x%x, %u times after powerdown", buf, 0x14u);
    }

    v20 = v5[1].isa;
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = v20->isa;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v5[2].isa;
        v22 = v21->isa == v5;
        v5 = v21;
      }

      while (!v22);
    }

    v5 = v21;
  }

  while (v21 != v6);
}

void std::__shared_ptr_pointer<PowerStats *,std::shared_ptr<PowerStats>::__shared_ptr_default_delete<PowerStats,PowerStats>,std::allocator<PowerStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<PowerStats *,std::shared_ptr<PowerStats>::__shared_ptr_default_delete<PowerStats,PowerStats>,std::allocator<PowerStats>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    PowerStats::~PowerStats(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<PowerStats *,std::shared_ptr<PowerStats>::__shared_ptr_default_delete<PowerStats,PowerStats>,std::allocator<PowerStats>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029743334CLL)
  {
    if (((v2 & 0x800000029743334CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029743334CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029743334CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

PowerStats **std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](PowerStats **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    PowerStats::~PowerStats(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

atomic_ullong *CircularFileLogWriter::create@<X0>(__int128 *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = operator new(0xB8uLL);
  CircularFileLogWriter::CircularFileLogWriter(v4, a1);

  return std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(a2, v4);
}

uint64_t CircularFileLogWriter::CircularFileLogWriter(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x29EDC91D0] + 16;
  v4 = dispatch_queue_create("CircularFileLogWriter", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = v4;
    dispatch_retain(v4);
    *(a1 + 32) = 0;
    dispatch_release(v5);
    *a1 = &unk_2A1E3A7A8;
    *(a1 + 40) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *a2;
      *(a1 + 64) = *(a2 + 2);
      *(a1 + 48) = v6;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *a1 = &unk_2A1E3A7A8;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 48), *a2, *(a2 + 1));
LABEL_6:
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 5);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v8 = a2[3];
    *(a1 + 112) = *(a2 + 8);
    *(a1 + 96) = v8;
  }

  v9 = *(a2 + 72);
  *(a1 + 136) = *(a2 + 88);
  *(a1 + 120) = v9;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_29735918C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v4 = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (!v4)
  {
LABEL_4:
    ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
    _Unwind_Resume(a1);
  }

LABEL_7:
  (*(*v4 + 8))(v4);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void CircularFileLogWriter::open(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_11;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ___ZN21CircularFileLogWriter4openEv_block_invoke(uint64_t a1)
{
  v37[2] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *(v1 + 152) = 0;
  *(v1 + 156) = 0;
  if (*(v1 + 40))
  {
    std::ostream::flush();
    v2 = *(v1 + 40);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(v1 + 40);
    *(v1 + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  *(v1 + 144) = *(v1 + 120) / *(v1 + 128);
  v4 = *(v1 + 95);
  if (v4 >= 0)
  {
    v5 = *(v1 + 95);
  }

  else
  {
    v5 = *(v1 + 80);
  }

  v6 = v5 + 8;
  if (v5 + 8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = (v1 + 72);
  if (v6 < 0x17)
  {
    memset(&v35, 0, sizeof(v35));
    v9 = &v35;
    *(&v35.__r_.__value_.__s + 23) = v5 + 8;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v9 = operator new(v8);
    v35.__r_.__value_.__l.__size_ = v5 + 8;
    v35.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v35.__r_.__value_.__r.__words[0] = v9;
  }

  if (v4 >= 0)
  {
    v10 = (v1 + 72);
  }

  else
  {
    v10 = *v7;
  }

  memmove(v9, v10, v5);
LABEL_20:
  strcpy(v9 + v5, "/latest-");
  v11 = *(v1 + 71);
  if (v11 >= 0)
  {
    v12 = (v1 + 48);
  }

  else
  {
    v12 = *(v1 + 48);
  }

  if (v11 >= 0)
  {
    v13 = *(v1 + 71);
  }

  else
  {
    v13 = *(v1 + 56);
  }

  v14 = std::string::append(&v35, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v36.st_uid = *(&v14->__r_.__value_.__l + 2);
  *&v36.st_dev = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(v1 + 119);
  if (v16 >= 0)
  {
    v17 = (v1 + 96);
  }

  else
  {
    v17 = *(v1 + 96);
  }

  if (v16 >= 0)
  {
    v18 = *(v1 + 119);
  }

  else
  {
    v18 = *(v1 + 104);
  }

  v19 = std::string::append(&v36, v17, v18);
  v20 = v19->__r_.__value_.__r.__words[0];
  v37[0] = v19->__r_.__value_.__l.__size_;
  *(v37 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  v22 = v37[0];
  *(v1 + 160) = v20;
  *(v1 + 168) = v22;
  *(v1 + 175) = *(v37 + 7);
  *(v1 + 183) = v21;
  if (SHIBYTE(v36.st_gid) < 0)
  {
    operator delete(*&v36.st_dev);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_36:
  v23 = *(v1 + 95);
  if (v23 >= 0)
  {
    v24 = *(v1 + 95);
  }

  else
  {
    v24 = *(v1 + 80);
  }

  v25 = v24 + 1;
  if (v24 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v25 < 0x17)
  {
    memset(&v36, 0, 24);
    v27 = &v36;
    HIBYTE(v36.st_gid) = v24 + 1;
    if (!v24)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if ((v25 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v25 | 7) + 1;
    }

    v27 = operator new(v26);
    v36.st_ino = v24 + 1;
    *&v36.st_uid = v26 | 0x8000000000000000;
    *&v36.st_dev = v27;
  }

  if (v23 >= 0)
  {
    v28 = (v1 + 72);
  }

  else
  {
    v28 = *v7;
  }

  memmove(v27, v28, v24);
LABEL_50:
  *&v27[v24] = 47;
  if (v23 < 0)
  {
    operator delete(*v7);
  }

  *v7 = *&v36.st_dev;
  *(v1 + 88) = *&v36.st_uid;
  v29.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v29.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v36.st_blksize = v29;
  *v36.st_qspare = v29;
  v36.st_birthtimespec = v29;
  *&v36.st_size = v29;
  v36.st_mtimespec = v29;
  v36.st_ctimespec = v29;
  *&v36.st_uid = v29;
  v36.st_atimespec = v29;
  *&v36.st_dev = v29;
  if (*(v1 + 95) >= 0)
  {
    v30 = (v1 + 72);
  }

  else
  {
    v30 = *(v1 + 72);
  }

  if (!stat(v30, &v36) && (*(v1 + 95) >= 0 ? (v31 = (v1 + 72)) : (v31 = *(v1 + 72)), (v32 = opendir(v31), (v33 = v32) != 0) && (v34 = readdir(v32), closedir(v33), v34)))
  {
    CircularFileLogWriter::getFileIndex_sync(v1, (v1 + 156), (v1 + 152));
  }

  else
  {
    support::fs::createDir((v1 + 72), 0x1EDu, 1);
  }

  CircularFileLogWriter::openNewLog_sync(v1);
}

void sub_2973596CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CircularFileLogWriter::close_sync(CircularFileLogWriter *this)
{
  *(this + 19) = 0;
  result = *(this + 5);
  if (result)
  {
    std::ostream::flush();
    v3 = *(this + 5);
    if (std::filebuf::close())
    {
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void CircularFileLogWriter::getFileIndex_sync(CircularFileLogWriter *this, unsigned int *a2, unsigned int *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v6;
  v59 = v6;
  *&v56[0].__locale_ = v6;
  v57 = v6;
  v46[23] = 10;
  strcpy(v46, "([0-9]{8})");
  v7 = *(this + 119);
  if (v7 >= 0)
  {
    v8 = this + 96;
  }

  else
  {
    v8 = *(this + 12);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 119);
  }

  else
  {
    v9 = *(this + 13);
  }

  v10 = std::string::append(v46, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  __dst.__traits_.__col_ = v10->__r_.__value_.__r.__words[2];
  *&__dst.__traits_.__loc_.__locale_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v56, &__dst, 0);
  if (SHIBYTE(__dst.__traits_.__col_) < 0)
  {
    operator delete(__dst.__traits_.__loc_.__locale_);
    if ((v46[23] & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_60:
    operator delete(*v46);
    goto LABEL_9;
  }

  if ((v46[23] & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_9:
  __p = 0;
  v54 = 0;
  v55 = 0;
  support::fs::readDir(this + 72, &__p);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAA00;
  v51 = v12;
  v48 = 0;
  v50 = 0uLL;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  v52 = 0;
  memset(v46, 0, sizeof(v46));
  v13 = __p;
  v14 = v54;
  if (__p == v54)
  {
    *a2 = 0;
    *a3 = 0;
    v39 = __p;
    if (!__p)
    {
      goto LABEL_57;
    }

    goto LABEL_62;
  }

  v43 = a3;
  v15 = 0;
  v16 = 0;
  v17 = &v47;
  v18 = 1;
  do
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64 = v19;
    v61 = 0xAAAAAAAAAAAAAA00;
    __dst.__start_.__ptr_ = 0xAAAAAAAAAAAAAAAALL;
    __dst.__start_.__cntrl_ = 0;
    __dst.__end_ = 0;
    v62 = 0;
    v63 = 0;
    LOBYTE(v64) = 0;
    BYTE8(v64) = 0;
    v65 = 0;
    memset(&__dst, 0, 40);
    second = *(&v13->matched + 7);
    if (second >= 0)
    {
      first = v13;
    }

    else
    {
      first = v13->first;
    }

    if (second < 0)
    {
      second = v13->second;
    }

    v22 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v56, first, &second[first], &__dst, 0);
    v23 = *(&v13->matched + 7);
    if (v23 >= 0)
    {
      v24 = v13;
    }

    else
    {
      v24 = v13->first;
    }

    if (v23 < 0)
    {
      v23 = v13->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v46, v24, &v23[v24], &__dst, 0);
    if (__dst.__traits_.__loc_.__locale_)
    {
      __dst.__traits_.__ct_ = __dst.__traits_.__loc_.__locale_;
      operator delete(__dst.__traits_.__loc_.__locale_);
    }

    if (v22)
    {
      memset(&__dst, 170, 24);
      v25 = (*v46 + 16);
      if (*&v46[8] == *v46)
      {
        v25 = v17;
      }

      if (*v25 != 1)
      {
        memset(&__dst, 0, 24);
        goto LABEL_39;
      }

      v26 = &v46[24];
      if (*&v46[8] != *v46)
      {
        v26 = *v46;
      }

      v27 = *v26;
      v28 = (*v46 + 8);
      if (*&v46[8] == *v46)
      {
        v28 = &v46[32];
      }

      v29 = *v28;
      v30 = *v28 - v27;
      if (v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v45 = v18;
      if (v30 > 0x16)
      {
        v44 = v16;
        v34 = v17;
        v35 = v14;
        v36 = v15;
        if ((v30 | 7) == 0x17)
        {
          v37 = 25;
        }

        else
        {
          v37 = (v30 | 7) + 1;
        }

        p_dst = operator new(v37);
        __dst.__traits_.__ct_ = v30;
        __dst.__traits_.__col_ = (v37 | 0x8000000000000000);
        __dst.__traits_.__loc_.__locale_ = p_dst;
        v15 = v36;
        v14 = v35;
        v17 = v34;
        v16 = v44;
        if (v29 == v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
        HIBYTE(__dst.__traits_.__col_) = *v28 - v27;
        p_dst = &__dst;
        if (v29 == v27)
        {
LABEL_37:
          *(p_dst + v30) = 0;
          v18 = v45;
LABEL_39:
          v32 = std::stoul(&__dst, 0, 10);
          if (v18)
          {
            v33 = v32;
          }

          else
          {
            v33 = v15;
          }

          if (v33 >= v32)
          {
            v15 = v32;
          }

          else
          {
            v15 = v33;
          }

          if (v16 < v32)
          {
            v16 = v32 + 1;
          }

          if (SHIBYTE(__dst.__traits_.__col_) < 0)
          {
            operator delete(__dst.__traits_.__loc_.__locale_);
          }

          v18 = 0;
          goto LABEL_12;
        }
      }

      memmove(p_dst, v27, v30);
      goto LABEL_37;
    }

LABEL_12:
    ++v13;
  }

  while (v13 != v14);
  v38 = *v46;
  *a2 = v15;
  *v43 = v16;
  if (v38)
  {
    *&v46[8] = v38;
    operator delete(v38);
  }

  v39 = __p;
  if (!__p)
  {
LABEL_57:
    v40 = v59;
    if (!v59)
    {
      goto LABEL_71;
    }

LABEL_69:
    if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    goto LABEL_71;
  }

LABEL_62:
  v41 = v54;
  if (v54 == v39)
  {
    v54 = v39;
    operator delete(v39);
    v40 = v59;
    if (!v59)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  do
  {
    v42 = *(v41 - 1);
    v41 -= 3;
    if (v42 < 0)
    {
      operator delete(*v41);
    }
  }

  while (v41 != v39);
  v54 = v39;
  operator delete(__p);
  v40 = v59;
  if (v59)
  {
    goto LABEL_69;
  }

LABEL_71:
  std::locale::~locale(v56);
}

void sub_297359C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, std::locale a36)
{
  std::vector<std::string>::~vector[abi:ne200100](&a33);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a36);
  _Unwind_Resume(a1);
}

void CircularFileLogWriter::openNewLog_sync(CircularFileLogWriter *this)
{
  if (*(this + 5))
  {
    std::ostream::flush();
    v2 = *(this + 5);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(this + 5);
    *(this + 5) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = this + 160;
  v5 = this + 160;
  if (*(this + 183) < 0)
  {
    v5 = *v4;
  }

  unlink(v5);
  v6 = *(this + 38);
  *(this + 38) = v6 + 1;
  CircularFileLogWriter::generateFileName_sync(&v20, this, v6);
  v7 = *(this + 95);
  if (v7 >= 0)
  {
    v8 = this + 72;
  }

  else
  {
    v8 = *(this + 9);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 95);
  }

  else
  {
    v9 = *(this + 10);
  }

  v10 = std::string::insert(&v20, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v12 = operator new(0x238uLL);
  v12[58] = 0;
  v13 = MEMORY[0x29EDC9560] + 64;
  v12[52] = MEMORY[0x29EDC9560] + 64;
  v14 = *(MEMORY[0x29EDC9520] + 16);
  v15 = *(MEMORY[0x29EDC9520] + 8);
  *v12 = v15;
  *(v12 + *(v15 - 24)) = v14;
  v16 = (v12 + *(*v12 - 24));
  std::ios_base::init(v16, v12 + 1);
  v17 = MEMORY[0x29EDC9560] + 24;
  v16[1].__vftable = 0;
  v16[1].__fmtflags_ = -1;
  *v12 = v17;
  v12[52] = v13;
  MEMORY[0x29C26E940](v12 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v12 + *(*v12 - 24)), *(v12 + *(*v12 - 24) + 32) | 4);
  }

  v18 = *(this + 5);
  *(this + 5) = v12;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v12 = *(this + 5);
  }

  if (v12[16])
  {
    support::fs::getFileName(&v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v20;
    }

    else
    {
      v19 = v20.__r_.__value_.__r.__words[0];
    }

    if (*(this + 183) < 0)
    {
      v4 = *v4;
    }

    symlink(v19, v4);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  CircularFileLogWriter::clearOldLogs_sync(this);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_297359FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void CircularFileLogWriter::close(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter5closeEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t ___ZN21CircularFileLogWriter5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 152) = 0;
  result = *(v1 + 40);
  if (result)
  {
    std::ostream::flush();
    v3 = *(v1 + 40);
    if (std::filebuf::close())
    {
      result = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
      result = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!result)
      {
        return result;
      }
    }

    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void CircularFileLogWriter::clear(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter5clearEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_5_0;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

BOOL CircularFileLogWriter::clear_sync(CircularFileLogWriter *this)
{
  *(this + 19) = 0;
  if (*(this + 5))
  {
    std::ostream::flush();
    v2 = *(this + 5);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(this + 5);
    *(this + 5) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = (this + 160);
  if (*(this + 183) < 0)
  {
    unlink(*v4);
    v5 = this + 72;
  }

  else
  {
    unlink(v4);
    v5 = this + 72;
  }

  return support::fs::removeDir(v5);
}

void CircularFileLogWriter::write(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN21CircularFileLogWriter5writeENSt3__110shared_ptrIN3ctu10LogMessageEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_6_4;
  v3 = *a2;
  v2 = a2[1];
  v5[4] = a1;
  v5[5] = v3;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped((a1 + 8), v5);
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void ___ZN21CircularFileLogWriter5writeENSt3__110shared_ptrIN3ctu10LogMessageEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CircularFileLogWriter::write_sync(v2, v4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

CircularFileLogWriter *CircularFileLogWriter::write_sync(CircularFileLogWriter *result, uint64_t *a2)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (!*a2)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 5);
  if (!v4 || !*(v4 + 128))
  {
    return result;
  }

  v6 = *(v2 + 71);
  if (v6 < 0)
  {
    v7 = *(v2 + 56) + 1;
    if (v7 < 2)
    {
      return result;
    }
  }

  else
  {
    v7 = v6 + 1;
    if ((v6 + 1) < 2)
    {
      return result;
    }
  }

  v8 = *(v2 + 8);
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[7] = v9;
  v44[8] = v9;
  v44[5] = v9;
  v44[6] = v9;
  v44[3] = v9;
  v44[4] = v9;
  v44[1] = v9;
  v44[2] = v9;
  v43 = v9;
  v44[0] = v9;
  *__p = v9;
  v42 = v9;
  v39 = v9;
  v40 = v9;
  v37 = v9;
  v38 = v9;
  v36 = v9;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v36);
  v10.n128_f64[0] = v8 / 1000000000.0;
  v11 = v37;
  *(&v37 + *(v37 - 24) + 8) |= 4u;
  *(&v37 + *(v11 - 24) + 16) = 3;
  v12 = MEMORY[0x29C26EA40](&v37, v10);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " [", 2);
  LOBYTE(__dst.__locale_) = ctu::asChar();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &__dst, 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "] ", 2);
  v16 = *(*a2 + 47);
  if (v16 >= 0)
  {
    v17 = *a2 + 24;
  }

  else
  {
    v17 = *(*a2 + 24);
  }

  if (v16 >= 0)
  {
    v18 = *(*a2 + 47);
  }

  else
  {
    v18 = *(*a2 + 32);
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
  v20 = &v37 + *(v37 - 24);
  if ((v20[32] & 5) != 0)
  {
    v21 = v7 - 1;
    v22 = *(v3 + 16);
    if (v7 - 1 > v22)
    {
      goto LABEL_53;
    }

LABEL_18:
    v23 = *(v3 + 5) + *(**(v3 + 5) - 24);
    if ((*(v23 + 32) & 5) != 0)
    {
      if (v21 - 1 <= v22)
      {
LABEL_23:
        if ((*(*a2 + 71) & 0x8000000000000000) != 0)
        {
          if (*(*a2 + 56))
          {
            goto LABEL_27;
          }
        }

        else if (*(*a2 + 71))
        {
LABEL_27:
          v24 = *(v3 + 5);
          v25 = BYTE8(v43);
          if ((BYTE8(v43) & 0x10) == 0)
          {
LABEL_28:
            if ((v25 & 8) == 0)
            {
              v26 = 0;
              HIBYTE(v48) = 0;
              p_dst = &__dst;
              goto LABEL_44;
            }

            v29 = &v38 + 1;
            v28 = *(&v39 + 1);
LABEL_35:
            v30 = *v29;
            v26 = v28 - *v29;
            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v26 >= 0x17)
            {
              if ((v26 | 7) == 0x17)
              {
                v31 = 25;
              }

              else
              {
                v31 = (v26 | 7) + 1;
              }

              p_dst = operator new(v31);
              v47 = v26;
              v48 = v31 | 0x8000000000000000;
              __dst.__locale_ = p_dst;
            }

            else
            {
              HIBYTE(v48) = v28 - *v29;
              p_dst = &__dst;
              if (!v26)
              {
                goto LABEL_44;
              }
            }

            memmove(p_dst, v30, v26);
LABEL_44:
            *(p_dst + v26) = 0;
            if (v48 >= 0)
            {
              locale = &__dst;
            }

            else
            {
              locale = __dst.__locale_;
            }

            if (v48 >= 0)
            {
              v33 = HIBYTE(v48);
            }

            else
            {
              v33 = v47;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, locale, v33);
            if (SHIBYTE(v48) < 0)
            {
              operator delete(__dst.__locale_);
            }

            std::ostream::write();
            std::ios_base::getloc((*(v3 + 5) + *(**(v3 + 5) - 24)));
            v34 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
            (v34->__vftable[2].~facet_0)(v34, 10);
            std::locale::~locale(&__dst);
            std::ostream::put();
            std::ostream::flush();
            goto LABEL_53;
          }

LABEL_31:
          v28 = v43;
          if (v43 < *(&v40 + 1))
          {
            *&v43 = *(&v40 + 1);
            v28 = *(&v40 + 1);
          }

          v29 = &v40;
          goto LABEL_35;
        }

        v24 = *(v3 + 5);
        v25 = BYTE8(v43);
        if ((BYTE8(v43) & 0x10) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }
    }

    else
    {
      (*(**(v23 + 40) + 32))(&__dst);
      if (v49 + v21 <= *(v3 + 16))
      {
        goto LABEL_23;
      }
    }

    CircularFileLogWriter::openNewLog_sync(v3);
    goto LABEL_23;
  }

  (*(**(v20 + 5) + 32))(&__dst);
  v21 = v49 + v7;
  v22 = *(v3 + 16);
  if (v49 + v7 <= v22)
  {
    goto LABEL_18;
  }

LABEL_53:
  *&v36 = *MEMORY[0x29EDC9528];
  v35 = *(MEMORY[0x29EDC9528] + 72);
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v37 = v35;
  *(&v37 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v37 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v38);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26EC90](v44);
}

void sub_29735AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](&a25);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIN3ctu10LogMessageEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIN3ctu10LogMessageEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CircularFileLogWriter::writeBuffer(CircularFileLogWriter *this, const char *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN21CircularFileLogWriter11writeBufferEPKcm_block_invoke;
  v5[3] = &__block_descriptor_tmp_7;
  v5[4] = this;
  v5[5] = a2;
  v5[6] = a3;
  v6 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v6;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

uint64_t CircularFileLogWriter::writeBuffer_sync(uint64_t this, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = a3;
    if (a3)
    {
      v4 = this;
      v5 = *(this + 40);
      if (v5)
      {
        if (v5[16])
        {
          v6 = a2;
          if (*(this + 136) == 1)
          {
            while (1)
            {
              v9 = v5 + *(*v5 - 24);
              if ((v9[32] & 5) != 0)
              {
                v10 = *(v4 + 16);
                if (v3 - 1 <= v10)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                (*(**(v9 + 5) + 32))(v13);
                v10 = *(v4 + 16);
                if (v14 + v3 <= v10)
                {
                  goto LABEL_20;
                }
              }

              v11 = *(v4 + 5) + *(**(v4 + 5) - 24);
              if ((*(v11 + 32) & 5) != 0)
              {
                break;
              }

              (*(**(v11 + 40) + 32))(v13);
              v7 = v14;
              if (v10 != v14)
              {
                goto LABEL_8;
              }

LABEL_9:
              CircularFileLogWriter::openNewLog_sync(v4);
              v5 = *(v4 + 5);
            }

            v7 = -1;
LABEL_8:
            v8 = v10 - v7;
            std::ostream::write();
            v6 += v8;
            v3 -= v8;
            goto LABEL_9;
          }

          v12 = v5 + *(*v5 - 24);
          if ((v12[32] & 5) != 0)
          {
            if ((a3 - 1) <= *(this + 128))
            {
              goto LABEL_20;
            }
          }

          else
          {
            (*(**(v12 + 5) + 32))(v13);
            if ((v14 + v3) <= *(v4 + 16))
            {
LABEL_20:
              this = *(v4 + 5);
              if (this)
              {
                return std::ostream::write();
              }

              return this;
            }
          }

          CircularFileLogWriter::openNewLog_sync(v4);
          goto LABEL_20;
        }
      }
    }
  }

  return this;
}

void CircularFileLogWriter::setCapacity(CircularFileLogWriter *this, uint64_t a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN21CircularFileLogWriter11setCapacityEm_block_invoke;
  v2[3] = &__block_descriptor_tmp_8;
  v2[4] = this;
  v2[5] = a2;
  ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped(this + 1, v2);
}

void ___ZN21CircularFileLogWriter11setCapacityEm_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 15) = v2;
  *(v1 + 18) = v2 / *(v1 + 16);
  CircularFileLogWriter::clearOldLogs_sync(v1);
}

void CircularFileLogWriter::clearOldLogs_sync(CircularFileLogWriter *this)
{
  v1 = *(this + 39);
  if (*(this + 18) < (*(this + 38) - v1))
  {
    v3 = this + 72;
    do
    {
      *(this + 39) = v1 + 1;
      CircularFileLogWriter::generateFileName_sync(&v12, this, v1);
      v4 = *(this + 95);
      if (v4 >= 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = *(this + 9);
      }

      if (v4 >= 0)
      {
        v6 = *(this + 95);
      }

      else
      {
        v6 = *(this + 10);
      }

      v7 = std::string::insert(&v12, 0, v5, v6);
      v13 = *v7;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v9 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
      v10 = v13.__r_.__value_.__r.__words[0];
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v13;
      }

      else
      {
        v11 = v13.__r_.__value_.__r.__words[0];
      }

      if (remove(v11, v8))
      {
        unlink(v11);
      }

      if (v9 < 0)
      {
        operator delete(v10);
      }

      v1 = *(this + 39);
    }

    while (*(this + 18) < (*(this + 38) - v1));
  }
}

void sub_29735B140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CircularFileLogWriter::closeRunningLog_sync(CircularFileLogWriter *this)
{
  result = *(this + 5);
  if (result)
  {
    std::ostream::flush();
    v3 = *(this + 5);
    if (std::filebuf::close())
    {
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void CircularFileLogWriter::generateFileName_sync(std::string *__return_ptr a1@<X8>, CircularFileLogWriter *this@<X0>, uint64_t a3@<X1>)
{
  v28 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v5;
  v27 = v5;
  *__str = v5;
  v25 = v5;
  snprintf(__str, 0x40uLL, "%08zu", a3);
  v6 = *(this + 71);
  if (v6 >= 0)
  {
    v7 = *(this + 71);
  }

  else
  {
    v7 = *(this + 7);
  }

  v8 = v7 + 1;
  if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 < 0x17)
  {
    memset(&v22, 0, sizeof(v22));
    v10 = &v22;
    *(&v22.__r_.__value_.__s + 23) = v7 + 1;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v8 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v8 | 7) + 1;
    }

    v10 = operator new(v9);
    v22.__r_.__value_.__l.__size_ = v7 + 1;
    v22.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v22.__r_.__value_.__r.__words[0] = v10;
  }

  if (v6 >= 0)
  {
    v11 = this + 48;
  }

  else
  {
    v11 = *(this + 6);
  }

  memmove(v10, v11, v7);
LABEL_15:
  *&v10[v7] = 46;
  v12 = strlen(__str);
  v13 = std::string::append(&v22, __str, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v17 = *(this + 12);
  v16 = this + 96;
  v15 = v17;
  v18 = v16[23];
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = v16[23];
  }

  else
  {
    v20 = *(v16 + 1);
  }

  v21 = std::string::append(&v23, v19, v20);
  *a1 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(v22.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void sub_29735B3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void CircularFileLogWriter::~CircularFileLogWriter(void **this)
{
  CircularFileLogWriter::~CircularFileLogWriter(this);

  operator delete(v1);
}

{
  *this = &unk_2A1E3A7A8;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
    if ((*(this + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[12]);
  if ((*(this + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(this[9]);
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = this[5];
    this[5] = 0;
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  operator delete(this[6]);
  v2 = this[5];
  this[5] = 0;
  if (v2)
  {
LABEL_6:
    (*(*v2 + 8))(v2);
  }

LABEL_7:
  v3 = this[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

atomic_ullong *std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E3A898;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_29735B678(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1}::operator() const(CircularFileLogWriter*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CircularFileLogWriter *,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter *)#1},std::allocator<CircularFileLogWriter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CircularFileLogWriter *,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter *)#1},std::allocator<CircularFileLogWriter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1}::operator() const(CircularFileLogWriter*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E3A8E0;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21CircularFileLogWriterEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21CircularFileLogWriterEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL defaults::get(char *a1, char *a2, std::string *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBD2C0]) && strcasecmp(v6, *MEMORY[0x29EDBD2B8]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {

                          return defaults::tracesettings::get(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A1399E40;
                          if (os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v9 = a1;
                            }

                            else
                            {
                              v9 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v10 = a2;
                            }

                            else
                            {
                              v10 = *a2;
                            }

                            v11 = 136315394;
                            v12 = v9;
                            v13 = 2080;
                            v14 = v10;
                            _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Invalid domain; domain='%s' key='%s'", &v11, 0x16u);
                          }

                          return 0;
                        }
                      }

                      goto LABEL_33;
                    }

                    goto LABEL_60;
                  }

                  goto LABEL_57;
                }

                goto LABEL_54;
              }

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        goto LABEL_39;
      }

      goto LABEL_42;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBD2C0]) && strcasecmp(a1, *MEMORY[0x29EDBD2B8]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_33:

                    return defaults::tailspin::get(a2, a3);
                  }

LABEL_60:

                  return defaults::profile::get(a2, a3);
                }

LABEL_57:

                return defaults::systemlogs::get(a2, a3);
              }

LABEL_54:

              return defaults::logfilter::get(a2, a3);
            }

LABEL_51:

            return defaults::ttr::get(a2, a3);
          }

LABEL_48:

          return defaults::compression::get(a2, a3);
        }

LABEL_45:

        return defaults::bbipc::get(a2, a3);
      }

LABEL_39:

      return defaults::ipc::get(a2, a3);
    }

LABEL_42:

    return defaults::coredump::get(a2, a3);
  }

  return defaults::bbtrace::get(a2, a3);
}

BOOL defaults::bbtrace::get(char *a1, std::string::size_type *a2)
{
  v64 = *MEMORY[0x29EDCA608];
  v4 = a1[23];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v5)
    {
      v6 = strcasecmp(a1, *MEMORY[0x29EDBE798]);
      if (v6)
      {
        v7 = strcasecmp(a1, *MEMORY[0x29EDBEA30]);
        if (v7)
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]) && strcasecmp(a1, *MEMORY[0x29EDBF208]))
          {
            if (!strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
            {
              goto LABEL_128;
            }

            if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
            {
              v8 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
              v9 = a1;
              if (v8)
              {
                goto LABEL_10;
              }

LABEL_25:
              v18 = capabilities::trace::defaultHistorySizeMB(v8);
              if (v18 >= 0x7FFFFFFF)
              {
                v19 = 0x7FFFFFFF;
              }

              else
              {
                v19 = v18;
              }

              util::to_str<int>(&v63, v19);
              goto LABEL_83;
            }
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_29:
    v20 = capabilities::trace::enabledByDefault(v5);
    std::to_string(&v63, v20);
LABEL_33:
    *v62 = v63.__r_.__value_.__l.__size_;
    v23 = v63.__r_.__value_.__r.__words[0];
    *&v62[7] = *(&v63.__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v23;
    a2[1] = *v62;
    *(a2 + 15) = *&v62[7];
    *(a2 + 23) = v24;
    return 1;
  }

  v9 = *a1;
  v5 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = strcasecmp(v9, *MEMORY[0x29EDBE798]);
  if (!v6)
  {
LABEL_30:
    v21 = capabilities::trace::supportsHighTPutByDefault(v6);
    std::to_string(&v63, v21);
    goto LABEL_33;
  }

  v7 = strcasecmp(v9, *MEMORY[0x29EDBEA30]);
  if (!v7)
  {
LABEL_31:
    v22 = capabilities::trace::supportsDataLoggingByDefault(v7);
    std::to_string(&v63, v22);
    goto LABEL_33;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE590]) || !strcasecmp(v9, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_128;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE880]))
  {
LABEL_32:
    std::to_string(&v63, 0);
    goto LABEL_33;
  }

  v8 = strcasecmp(v9, *MEMORY[0x29EDBE6E8]);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_10:
  v10 = MEMORY[0x29EDBD4C8];
  v11 = *MEMORY[0x29EDBD4C8];
  v12 = strcasecmp(v9, *MEMORY[0x29EDBD4C8]);
  if (!v12)
  {
    v26 = capabilities::radio::maverick(v12);
    if (v26 & 1) != 0 || (capabilities::radio::ice(v26))
    {
      util::to_str<diag::config::DuringAPSleep>(&v63);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v11 = *v10;
  }

  v13 = *a1;
  if ((v4 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  v15 = strcasecmp(v14, v11);
  if (!v15)
  {
    v16 = capabilities::radio::initium(v15);
    if (v16)
    {
      v17 = capabilities::trace::defaultSleepTraceMode(v16);
      util::to_str<unsigned int>(&v63, v17);
LABEL_83:
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v63;
      return 1;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = v13;
  }

  v28 = strcasecmp(v27, *MEMORY[0x29EDBD4B8]);
  if (!v28)
  {
    if (capabilities::radio::maverick(v28))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = v13;
  }

  v30 = strcasecmp(v29, *MEMORY[0x29EDBD4B0]);
  if (!v30)
  {
    if (capabilities::radio::maverick(v30))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v31 = a1;
  }

  else
  {
    v31 = v13;
  }

  v32 = strcasecmp(v31, *MEMORY[0x29EDBD4D0]);
  if (!v32)
  {
    if (capabilities::radio::maverick(v32))
    {
      util::to_str<unsigned int>(&v63, 3u);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = v13;
  }

  v34 = strcasecmp(v33, *MEMORY[0x29EDBD4D8]);
  if (!v34)
  {
    if (capabilities::radio::maverick(v34))
    {
      util::to_str<diag::config::Recovery>(&v63);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v35 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBD4C0]))
    {
      goto LABEL_72;
    }

LABEL_82:
    util::to_str<BOOL>(&v63, 0);
    goto LABEL_83;
  }

  v35 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBD4C0]))
  {
    goto LABEL_82;
  }

LABEL_72:
  v36 = strcasecmp(v35, *MEMORY[0x29EDBF200]);
  if (!v36)
  {
    v37 = capabilities::radio::maverick(v36);
    if (v37)
    {
      goto LABEL_88;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v38 = strcasecmp(a1, *MEMORY[0x29EDBF418]);
    v39 = a1;
    if (v38)
    {
      goto LABEL_77;
    }

LABEL_87:
    v37 = capabilities::radio::ice(v38);
    if (!v37)
    {
      v41 = "None";
LABEL_92:
      std::string::__assign_external(a2, v41);
      return 1;
    }

LABEL_88:
    if (config::hw::watch(v37))
    {
      v41 = "Lite";
    }

    else
    {
      v41 = "Default";
    }

    goto LABEL_92;
  }

  v39 = *a1;
  v38 = strcasecmp(*a1, *MEMORY[0x29EDBF418]);
  if (!v38)
  {
    goto LABEL_87;
  }

LABEL_77:
  v40 = strcasecmp(v39, *MEMORY[0x29EDBD4A8]);
  if (!v40)
  {
    if (capabilities::radio::maverick(v40))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 4;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 4;
      }

      strcpy(a2, "None");
      return 1;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80u) == 0)
  {
    v42 = a1;
  }

  else
  {
    v42 = *a1;
  }

  v43 = strcasecmp(v42, *MEMORY[0x29EDBEF70]);
  if (!v43)
  {
    if (capabilities::radio::maverick(v43))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 5;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 5;
      }

      strcpy(a2, "Sleep");
      return 1;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE938]))
    {
      v44 = strcasecmp(a1, *MEMORY[0x29EDBF2E0]);
      if (v44)
      {
        if (!strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
        {
          goto LABEL_82;
        }

        if (strcasecmp(a1, *MEMORY[0x29EDBF7B0]) && strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
        {
          v45 = strcasecmp(a1, *MEMORY[0x29EDBE790]);
          if (v45)
          {
            v46 = strcasecmp(a1, *MEMORY[0x29EDBEDD8]);
            if (v46)
            {
              v47 = strcasecmp(a1, *MEMORY[0x29EDBEF80]);
              if (v47)
              {
                v48 = a1;
                if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
                {
                  goto LABEL_112;
                }

LABEL_127:
                util::to_str<BOOL>(&v63, 1);
                goto LABEL_83;
              }

LABEL_144:
              count = defaults::bbtrace::transport_read_count(v47);
              util::to_str<unsigned int>(&v63, count);
              goto LABEL_83;
            }

LABEL_143:
            size = defaults::bbtrace::transport_read_size(v46);
            util::to_str<unsigned int>(&v63, size);
            goto LABEL_83;
          }

LABEL_142:
          v54 = capabilities::trace::defaultFileSizeBytes(v45);
          util::to_str<unsigned int>(&v63, v54);
          goto LABEL_83;
        }

LABEL_128:
        if (*(a2 + 23) < 0)
        {
          a2[1] = 0;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 0;
        }

        *a2 = 0;
        return 1;
      }

LABEL_134:
      v53 = capabilities::trace::defaultMemoryFileMaxCount(v44);
      util::to_str<unsigned int>(&v63, v53);
      goto LABEL_83;
    }

LABEL_132:
    if (*(a2 + 23) < 0)
    {
      a2[1] = 17;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 17;
    }

    strcpy(a2, "/usr/lib/bbmasks/");
    return 1;
  }

  v48 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE938]))
  {
    goto LABEL_132;
  }

  v44 = strcasecmp(v48, *MEMORY[0x29EDBF2E0]);
  if (!v44)
  {
    goto LABEL_134;
  }

  if (!strcasecmp(v48, *MEMORY[0x29EDBF7F0]))
  {
    goto LABEL_82;
  }

  if (!strcasecmp(v48, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v48, *MEMORY[0x29EDBF7B8]))
  {
    goto LABEL_128;
  }

  v45 = strcasecmp(v48, *MEMORY[0x29EDBE790]);
  if (!v45)
  {
    goto LABEL_142;
  }

  v46 = strcasecmp(v48, *MEMORY[0x29EDBEDD8]);
  if (!v46)
  {
    goto LABEL_143;
  }

  v47 = strcasecmp(v48, *MEMORY[0x29EDBEF80]);
  if (!v47)
  {
    goto LABEL_144;
  }

  if (!strcasecmp(v48, *MEMORY[0x29EDBF410]))
  {
    goto LABEL_127;
  }

LABEL_112:
  v49 = strcasecmp(v48, *MEMORY[0x29EDBF1F8]);
  if (!v49)
  {
    v50 = capabilities::trace::supportsDataRateObserver(v49);
    if (v50)
    {
      v51 = capabilities::trace::defaultPeakBandwidthMbps(v50);
      if (v51 >= 0xFFFFFFFF)
      {
        v52 = -1;
      }

      else
      {
        v52 = v51;
      }

      util::to_str<unsigned int>(&v63, v52);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) != 0)
  {
    v57 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBFC80]))
    {
      if (strcasecmp(v57, *MEMORY[0x29EDBFC98]))
      {
        if (!strcasecmp(v57, *MEMORY[0x29EDBFC78]))
        {
          goto LABEL_163;
        }

        if (strcasecmp(v57, *MEMORY[0x29EDBFC90]))
        {
          if (strcasecmp(v57, *MEMORY[0x29EDBF2D8]))
          {
            goto LABEL_152;
          }

LABEL_160:
          util::to_str<unsigned int>(&v63, 0x1F4u);
          goto LABEL_83;
        }
      }

LABEL_162:
      util::to_str<trace::LogLevel>(&v63);
      goto LABEL_83;
    }

LABEL_161:
    util::to_str<trace::LogMode>(&v63, 1);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC80]))
  {
    goto LABEL_161;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC98]))
  {
    goto LABEL_162;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC78]))
  {
LABEL_163:
    util::to_str<trace::LogMode>(&v63, 2);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC90]))
  {
    goto LABEL_162;
  }

  v57 = a1;
  if (!strcasecmp(a1, *MEMORY[0x29EDBF2D8]))
  {
    goto LABEL_160;
  }

LABEL_152:
  v58 = strcasecmp(v57, *MEMORY[0x29EDBFCA8]);
  if (!v58 && capabilities::trace::supportsErrorHandling(v58))
  {
    util::to_str<int>(&v63, 0);
    goto LABEL_83;
  }

  sGetOsLogContext();
  v59 = qword_2A1399E40;
  result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v60 = *MEMORY[0x29EDBF8A0];
    if (a1[23] >= 0)
    {
      v61 = a1;
    }

    else
    {
      v61 = *a1;
    }

    LODWORD(v63.__r_.__value_.__l.__data_) = 136315394;
    *(v63.__r_.__value_.__r.__words + 4) = v60;
    WORD2(v63.__r_.__value_.__r.__words[1]) = 2080;
    *(&v63.__r_.__value_.__r.__words[1] + 6) = v61;
    _os_log_error_impl(&dword_297288000, v59, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v63, 0x16u);
    return 0;
  }

  return result;
}

void sub_29735CB10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735C328);
    }

    JUMPOUT(0x29735C330);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::coredump::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v15 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  v5 = v4;
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
    {
      qword_2A1399E38 = 0;
      qword_2A1399E40 = 0;
      __cxa_guard_release(&qword_2A1399E30);
    }

    if (_MergedGlobals_8 == -1)
    {
      v6 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        return v5 == 0;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
      v6 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        return v5 == 0;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(v3 + 23) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    v9 = capabilities::trace::allowed(v4);
    std::to_string(&buf, v9);
    *v13 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v11;
  }

  return v5 == 0;
}

void sub_29735CD4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735CCA4);
    }

    JUMPOUT(0x29735CCACLL);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::ipc::get(char *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(v6, *MEMORY[0x29EDBE6E8]);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10 = capabilities::ipc::defaultPCIBinaryTraceHistorySizeMB(v5);
      std::to_string(&v19, v10);
      goto LABEL_13;
    }

LABEL_10:
    v11 = capabilities::ipc::supportsPCI(v4);
    if (v11)
    {
      LODWORD(v11) = capabilities::trace::enabledByDefault(v11);
    }

    std::to_string(&v19, v11);
    goto LABEL_13;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
  v6 = a1;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = strcasecmp(v6, "BufferCount");
  if (!v7)
  {
    v8 = capabilities::ipc::supportsPCI(v7);
    if (v8)
    {
      v9 = capabilities::ipc::defaultPCIBinaryTraceBufferCount(v8);
      std::to_string(&v19, v9);
LABEL_13:
      *v18 = v19.__r_.__value_.__l.__size_;
      v12 = v19.__r_.__value_.__r.__words[0];
      *&v18[7] = *(&v19.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v18;
      *(a2 + 15) = *&v18[7];
      *(a2 + 23) = v13;
      return 1;
    }
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v15 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v15 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v16 = *MEMORY[0x29EDBF8E8];
  if (a1[23] >= 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = *a1;
  }

  LODWORD(v19.__r_.__value_.__l.__data_) = 136315394;
  *(v19.__r_.__value_.__r.__words + 4) = v16;
  WORD2(v19.__r_.__value_.__r.__words[1]) = 2080;
  *(&v19.__r_.__value_.__r.__words[1] + 6) = v17;
  _os_log_error_impl(&dword_297288000, v15, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v19, 0x16u);
  return 0;
}

void sub_29735CFF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735CE8CLL);
    }

    JUMPOUT(0x29735CE94);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::bbipc::get(char *a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(a1, *MEMORY[0x29EDBE7A0]);
      v6 = a1;
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    v13 = capabilities::trace::enabledByDefault(v4);
    std::to_string(&buf, v13);
    goto LABEL_17;
  }

  v6 = *a1;
  v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = strcasecmp(v6, *MEMORY[0x29EDBE7A0]);
  if (!v5)
  {
LABEL_14:
    v12 = capabilities::ipc::defaultLogLevel(v5);
    std::to_string(&buf, v12);
LABEL_17:
    *v17 = buf.__r_.__value_.__l.__size_;
    v15 = buf.__r_.__value_.__r.__words[0];
    *&v17[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v15;
    *(a2 + 8) = *v17;
    *(a2 + 15) = *&v17[7];
    *(a2 + 23) = v16;
    return 1;
  }

LABEL_4:
  v7 = strcasecmp(v6, *MEMORY[0x29EDBEA38]);
  if (!v7)
  {
    v14 = capabilities::ipc::defaultMHIConfigPayloadSizeBytes(v7);
    std::to_string(&buf, v14);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v8 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v8 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v10 = *MEMORY[0x29EDBE7A8];
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v10;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
  _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  return 0;
}

void sub_29735D28C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735D1E8);
    }

    JUMPOUT(0x29735D1F0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::compression::get(char *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBD4A0]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      CompressionMode = capabilities::trace::getCompressionMode(IsInternalBuild);
    }

    else
    {
      CompressionMode = 2;
    }

    std::to_string(&v11, CompressionMode);
    goto LABEL_18;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBD4A0]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBD340]))
  {
    std::to_string(&v11, 0);
LABEL_18:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    return 1;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v7 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(v11.__r_.__value_.__l.__data_) = 136315394;
  *(v11.__r_.__value_.__r.__words + 4) = v7;
  WORD2(v11.__r_.__value_.__r.__words[1]) = 2080;
  *(&v11.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v11, 0x16u);
  return 0;
}

BOOL defaults::ttr::get(char *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      if (capabilities::radio::initium(IsInternalBuild))
      {
        LODWORD(IsInternalBuild) = 3;
      }

      else
      {
        LODWORD(IsInternalBuild) = 1;
      }
    }

    std::to_string(&buf, IsInternalBuild);
    goto LABEL_19;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBF2D0]))
  {
    std::to_string(&buf, 43200);
LABEL_19:
    *v12 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v12[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v12;
    *(a2 + 15) = *&v12[7];
    *(a2 + 23) = v11;
    return 1;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v7 = *MEMORY[0x29EDBE718];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  return 0;
}

void sub_29735D6F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735D650);
    }

    JUMPOUT(0x29735D658);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::logfilter::get(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    std::to_string(&buf, 512);
    goto LABEL_17;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_15;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEDE8]))
  {
LABEL_14:
    std::to_string(&buf, -1);
LABEL_17:
    *v13 = buf.__r_.__value_.__l.__size_;
    v11 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v12;
    return 1;
  }

LABEL_4:
  v5 = strcasecmp(v4, *MEMORY[0x29EDBF810]);
  if (!v5)
  {
    v10 = capabilities::trace::supportsDuplicateSignatureDetection(v5);
    std::to_string(&buf, v10);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v8 = *MEMORY[0x29EDBE528];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  return 0;
}

void sub_29735D978(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735D8D4);
    }

    JUMPOUT(0x29735D8DCLL);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::systemlogs::get(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
      v5 = a1;
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_14:
      v10 = capabilities::abs::defaultSystemLogsHistory(v4);
      std::to_string(&buf, v10);
LABEL_20:
      *v14 = buf.__r_.__value_.__l.__size_;
      v12 = buf.__r_.__value_.__r.__words[0];
      *&v14[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v14;
      *(a2 + 15) = *&v14[7];
      *(a2 + 23) = v13;
      return 1;
    }

LABEL_15:
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    std::to_string(&buf, IsCarrierBuild);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_15;
  }

  v4 = strcasecmp(v5, *MEMORY[0x29EDBE6E8]);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (!strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    std::to_string(&buf, 1);
    goto LABEL_20;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v8 = *MEMORY[0x29EDBE710];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  return 0;
}

void sub_29735DC1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735DB78);
    }

    JUMPOUT(0x29735DB80);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::profile::get(char *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v4 = *a1;
    if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = a1;
    if (!strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
LABEL_12:
      std::to_string(&buf, 0);
      *v11 = buf.__r_.__value_.__l.__size_;
      v9 = buf.__r_.__value_.__r.__words[0];
      *&v11[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v9;
      *(a2 + 8) = *v11;
      *(a2 + 15) = *&v11[7];
      *(a2 + 23) = v10;
      return 1;
    }
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF7D0]))
  {
    goto LABEL_12;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v7 = *MEMORY[0x29EDBE5B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  return 0;
}

void sub_29735DE6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735DDC8);
    }

    JUMPOUT(0x29735DDD0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tailspin::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v14 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE4C8]);
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
    {
      qword_2A1399E38 = 0;
      qword_2A1399E40 = 0;
      __cxa_guard_release(&qword_2A1399E30);
    }

    if (_MergedGlobals_8 == -1)
    {
      v5 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        return v4 == 0;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
      v5 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        return v4 == 0;
      }
    }

    v6 = *MEMORY[0x29EDBE608];
    if (*(v3 + 23) >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
    _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    std::to_string(&buf, IsInternalBuild);
    *v12 = buf.__r_.__value_.__l.__size_;
    v9 = buf.__r_.__value_.__r.__words[0];
    *&v12[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v9;
    *(a2 + 8) = *v12;
    *(a2 + 15) = *&v12[7];
    *(a2 + 23) = v10;
  }

  return v4 == 0;
}

void sub_29735E068(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735DFC0);
    }

    JUMPOUT(0x29735DFC8);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tracesettings::get(char *a1, std::string *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (!strcasecmp(a1, *MEMORY[0x29EDBEF68]))
    {
LABEL_19:
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = 1;
        a2 = a2->__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = 1;
      }

      LOWORD(a2->__r_.__value_.__l.__data_) = 48;
      return 1;
    }

    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_5;
      }

LABEL_16:
      if ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild())
      {
        v9 = "1";
      }

      else
      {
        v9 = "3";
      }

      std::string::__assign_external(a2, v9);
      return 1;
    }

LABEL_21:
    v10 = abm::helper::asString();
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      *&v15[8] = v12;
      *&v15[16] = v14 | 0x8000000000000000;
      *v15 = v13;
    }

    else
    {
      v15[23] = v11;
      v13 = v15;
      if (!v11)
      {
        v15[0] = 0;
        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_25:
          *&a2->__r_.__value_.__l.__data_ = *v15;
          a2->__r_.__value_.__r.__words[2] = *&v15[16];
          return 1;
        }

LABEL_33:
        operator delete(a2->__r_.__value_.__l.__data_);
        goto LABEL_25;
      }
    }

    memmove(v13, v10, v12);
    v13[v12] = 0;
    if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
  {
    goto LABEL_19;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF098]))
  {
    goto LABEL_21;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEA40]))
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!strcasecmp(v4, *MEMORY[0x29EDBEDD0]))
  {
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }
  }

  v7 = *MEMORY[0x29EDBE600];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  *v15 = 136315394;
  *&v15[4] = v7;
  *&v15[12] = 2080;
  *&v15[14] = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", v15, 0x16u);
  return 0;
}

double util::to_str<BOOL>(std::string *a1, int __val)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E470(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E460);
}

void sub_29735E47C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<int>(std::string *a1, int __val)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E4F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E4E8);
}

void sub_29735E504(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t defaults::bbtrace::history(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultHistorySizeMB(this);
  if (result >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  return result;
}

double util::to_str<diag::config::DuringAPSleep>(std::string *a1)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_29735E598(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E588);
}

void sub_29735E5A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<unsigned int>(std::string *a1, unsigned int __val)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E614(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E604);
}

void sub_29735E620(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<diag::config::Recovery>(std::string *a1)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_29735E6A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E694);
}

void sub_29735E6B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const char *defaults::bbtrace::primary_dmc(defaults::bbtrace *this)
{
  if (config::hw::watch(this))
  {
    return "Lite";
  }

  else
  {
    return "Default";
  }
}

const char *defaults::bbtrace::secondary_dmc(defaults::bbtrace *this)
{
  v1 = capabilities::radio::ice(this);
  if (!v1)
  {
    return "None";
  }

  if (config::hw::watch(v1))
  {
    return "Lite";
  }

  return "Default";
}

uint64_t defaults::bbtrace::transport_read_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_297433540[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_297433550[v2 - 19];
  }
}

uint64_t defaults::bbtrace::transport_read_count(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  else
  {
    v2 = dword_297433540[v1 - 1];
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  switch(v2)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v2 <= 18)
  {
    if (v2 != 2)
    {
      if (v2 == 15 || v2 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v2 > 22)
  {
    if (v2 == 23)
    {
      return result;
    }

    if (v2 == 24)
    {
      return 86;
    }

    return 4;
  }

  if (v2 != 19)
  {
    return 15;
  }

  return result;
}

unint64_t defaults::bbtrace::bandwidth_mbps(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultPeakBandwidthMbps(this);
  if (result >= 0xFFFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

double util::to_str<trace::LogMode>(std::string *a1, int __val)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E9F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E9E8);
}

void sub_29735EA04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<trace::LogLevel>(std::string *a1)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_29735EA6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735EA5CLL);
}

void sub_29735EA78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t defaults::bbtrace::high_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 80;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::low_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::min_file_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_297433540[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_297433550[v2 - 19];
  }
}

capabilities::trace *defaults::ipc::enabled(defaults::ipc *this)
{
  result = capabilities::ipc::supportsPCI(this);
  if (result)
  {

    return capabilities::trace::enabledByDefault(result);
  }

  return result;
}

uint64_t defaults::compression::mode(defaults::compression *this)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if ((IsInternalBuild & 1) == 0)
  {
    IsInternalBuild = TelephonyUtilIsCarrierBuild();
    if (!IsInternalBuild)
    {
      return 2;
    }
  }

  return capabilities::trace::getCompressionMode(IsInternalBuild);
}

uint64_t defaults::ttr::mode(defaults::ttr *this)
{
  result = TelephonyUtilIsInternalBuild();
  if ((result & 1) != 0 || (result = TelephonyUtilIsCarrierBuild(), result))
  {
    if (capabilities::radio::initium(result))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t defaults::ttr::supported(defaults::ttr *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

uint64_t defaults::systemlogs::mode(defaults::systemlogs *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  else
  {
    return TelephonyUtilIsCarrierBuild();
  }
}

unint64_t defaults::tracesettings::config@<X0>(void *a1@<X8>)
{
  v2 = abm::helper::asString();
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (result | 7) + 1;
    }

    v6 = operator new(v5);
    a1[1] = v4;
    a1[2] = v5 | 0x8000000000000000;
    *a1 = v6;
    a1 = v6;
  }

  else
  {
    *(a1 + 23) = result;
    if (!result)
    {
      *a1 = 0;
      return result;
    }
  }

  result = memmove(a1, v2, v4);
  *(a1 + v4) = 0;
  return result;
}

void ___ZL16sGetOsLogContextv_block_invoke_4()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop.default");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *ABMServerRegistryBuilder::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E3A940;
  v6 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = v6;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

__n128 ABMServerRegistryBuilder::ABMServerRegistryBuilder(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void ABMServerRegistryBuilder::~ABMServerRegistryBuilder(ABMServerRegistryBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void ABMServerRegistryBuilder::setupAdaptiveTimerService(uint64_t a1, Registry **a2)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v4 = *RegistryModel;
  if (!*(*RegistryModel + 64))
  {
    (*(**a1 + 32))(&v8);
    v5 = v8;
    v8 = 0uLL;
    v6 = *(v4 + 72);
    *(v4 + 64) = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupQMIServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!**RegistryModel)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6[1];
      *v6 = v7;
      v6[1] = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 8))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = v6[1];
      *v6 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupRouterServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!*(*RegistryModel + 16))
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 24);
      *(v6 + 16) = v7;
      *(v6 + 24) = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 16))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = *(v6 + 24);
      *(v6 + 16) = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3A940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CMHandDetectionDelegate::create(NSObject **a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v6 = unk_2A1399880;
  if (!unk_2A1399880)
  {
    v7 = operator new(1uLL);
    v8 = operator new(0x20uLL);
    *v8 = &unk_2A1E3EA18;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    v9 = off_2A1399888;
    unk_2A1399880 = v7;
    off_2A1399888 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = unk_2A1399880;
  }

  v10 = off_2A1399888;
  v17[0] = v6;
  v17[1] = off_2A1399888;
  if (off_2A1399888)
  {
    atomic_fetch_add_explicit(off_2A1399888 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v6);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v16 = isCMHandDetectionSupported;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_21:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if ((isCMHandDetectionSupported & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x28uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = &unk_2A1E3AA10;
  v13 = v12 + 3;
  v14 = *a1;
  v17[0] = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *a2;
  v18 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  CMHandDetectionDelegate::CMHandDetectionDelegate(v13, v17, &v18);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  *a3 = v13;
  a3[1] = v12;
}

void sub_29735F8AC(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29735F8D8(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
    if (!v2)
    {
LABEL_3:
      std::__shared_weak_count::~__shared_weak_count(v3);
      operator delete(v5);
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  dispatch_release(v2);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void sub_29735F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *CMHandDetectionDelegate::CMHandDetectionDelegate(void *a1, dispatch_object_t *a2, NSObject **a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *a1 = 0;
  a1[1] = 0;
  if ([MEMORY[0x29EDB93A8] isCallHandednessAvailable])
  {
    v7 = operator new(0x40uLL);
    if (v5)
    {
      dispatch_retain(v5);
    }

    if (v6)
    {
      dispatch_retain(v6);
    }

    *v7 = 0;
    v7[1] = 0;
    v7[2] = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    v7[3] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7[4] = 0;
    v7[6] = 0;
    *(v7 + 56) = 0;
    v7[4] = objc_alloc_init(MEMORY[0x29EDB93A8]);
    v8 = operator new(0x20uLL);
    v9 = v8;
    v8[2] = 0;
    v8[1] = 0;
    *v8 = &unk_2A1E3A990;
    v8[3] = v7;
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v7 = v7;
    v7[1] = v8;
    if (!atomic_fetch_add(v8 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v8 + 16))(v8);
      std::__shared_weak_count::__release_weak(v9);
    }

    *a1 = v7;
    a1[1] = v9;
    if (v6)
    {
      dispatch_release(v6);
    }

    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  return a1;
}

void sub_29735FAC0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29735FAE8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
LABEL_3:
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v2);
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_5;
  }

  dispatch_release(v1);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::~CMHandDetectionDelegate(CMHandDetectionDelegate *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

uint64_t CMHandDetectionDelegate::isSupported(CMHandDetectionDelegate *this)
{
  if ((atomic_load_explicit(&qword_2A1399E58, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1399E58))
  {
    return _MergedGlobals_9;
  }

  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v2 = unk_2A1399880;
  if (!unk_2A1399880)
  {
    Capabilities::create_default_global(&v6);
    std::shared_ptr<Capabilities>::operator=[abi:ne200100](&v6);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&v6);
    v2 = unk_2A1399880;
  }

  v4 = v2;
  v5 = off_2A1399888;
  if (off_2A1399888)
  {
    atomic_fetch_add_explicit(off_2A1399888 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  if (Capabilities::isCMHandDetectionSupported(v2))
  {
    v3 = [MEMORY[0x29EDB93A8] isCallHandednessAvailable];
  }

  else
  {
    v3 = 0;
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&v4);
  _MergedGlobals_9 = v3;
  __cxa_guard_release(&qword_2A1399E58);
  return _MergedGlobals_9;
}

void sub_29735FD8C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  __cxa_guard_abort(&qword_2A1399E58);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::registerCallback(uint64_t **a1, const void **a2)
{
  v2 = *a1;
  if (!*a2)
  {
    v4 = 0;
    v7 = *a1;
LABEL_6:
    v5 = 1;
    aBlock = 0;
    ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
    v6 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = _Block_copy(*a2);
  v4 = v3;
  v7 = v2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = 0;
  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }

LABEL_8:
  if ((v5 & 1) == 0)
  {
    _Block_release(v4);
  }
}

const char *CMHandDetectionDelegate::toString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown Hand Detection";
  }

  else
  {
    return off_29EE68148[a1];
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<Capabilities>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke(void *__p)
{
  if (__p)
  {
    v2 = __p[6];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = __p[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = __p[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = __p[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(__p);
  }
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && (*(v3 + 56) & 1) == 0)
  {
    [v4 startCallHandednessUpdates];
    *(v3 + 56) = 1;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297360308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && *(v3 + 56) == 1)
  {
    [v4 stopCallHandednessUpdates];
    *(v3 + 56) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_2973604EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = *a2;
  *(a2 + 8) = 0;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v2 = *a1;
  v14 = *a1;
  v3 = **a1;
  if (!v3[4] || !v2[1])
  {
    goto LABEL_17;
  }

  v4 = v3[1];
  if (!v4 || (v5 = *v3, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = v2[1];
  if (v8)
  {
LABEL_9:
    v8 = _Block_copy(v8);
  }

LABEL_10:
  v9 = v3[6];
  v3[6] = v8;
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = objc_alloc_init(CMHandDetectionDelegateInternal);
  v3[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE_e8_v16__0q8l;
  aBlock[4] = v3;
  aBlock[5] = v5;
  v16 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = _Block_copy(aBlock);
  [(CMHandDetectionDelegateInternal *)v10 registerHandler:&v17, a1, v14];
  if (v17)
  {
    _Block_release(v17);
  }

  [v3[4] setDelegate:v3[5]];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v7);
LABEL_17:
  v11 = v2[1];
  if (v11)
  {
    _Block_release(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_297360820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v17);
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_297360878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
        goto LABEL_16;
      }

      v8 = v5[1];
      if (!v8 || (v9 = *v5, (v10 = std::__shared_weak_count::lock(v8)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v10;
      v12 = operator new(0x10uLL);
      *v12 = v5;
      v12[1] = a2;
      v13 = v5[2];
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = operator new(0x18uLL);
      *v14 = v12;
      v14[1] = v9;
      v14[2] = v11;
      dispatch_async_f(v13, v14, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_(void *a1)
{
  v2 = *a1;
  (*(*(**a1 + 48) + 16))();
  operator delete(v2);
  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_297360B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4)
  {

    *(v3 + 32) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297360D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::shared_ptr<Capabilities>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0uLL;
  v2 = off_2A1399888;
  unk_2A1399880 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3AA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __cxx_global_var_init_12()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<Capabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance, &dword_297288000);
  }

  return result;
}

void ServerLogging::~ServerLogging(ServerLogging *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 10));
    *(this + 10) = 0;
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_5:
      MEMORY[0x29C26DE80](this + 24);
      v3 = *(this + 1);
      if (!v3)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(this + 4));
  MEMORY[0x29C26DE80](this + 24);
  v3 = *(this + 1);
  if (!v3)
  {
    return;
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v3);
}

uint64_t ServerLogging::ServerLogging(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogContext::OsLogContext(&v26, "com.apple.telephony.abm", "server.logging");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 24, &v25);
  MEMORY[0x29C26DE80](&v25);
  ctu::OsLogContext::~OsLogContext(&v26);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v6;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v7;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v8 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&v26);
    v9 = *&v26.__r_.__value_.__l.__data_;
    *&v26.__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&off_2A1399498 + 1);
    off_2A1399498 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    size = v26.__r_.__value_.__l.__size_;
    if (v26.__r_.__value_.__l.__size_ && !atomic_fetch_add((v26.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v8 = off_2A1399498;
  }

  v23 = v8;
  v24 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v12 = *MEMORY[0x29EDBD290];
  v13 = strlen(*MEMORY[0x29EDBD290]);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __dst[1] = v14;
    v22 = v16 | 0x8000000000000000;
    __dst[0] = v15;
LABEL_26:
    memmove(v15, v12, v14);
    *(v14 + v15) = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  HIBYTE(v22) = v13;
  v15 = __dst;
  if (v13)
  {
    goto LABEL_26;
  }

  LOBYTE(__dst[0]) = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
LABEL_21:
    __p = *a3;
    goto LABEL_28;
  }

LABEL_27:
  std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 1));
LABEL_28:
  os_unfair_lock_lock(v8 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = __p;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v25;
  }

  if (v22 >= 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  ctu::cf::plist_adapter::set<std::string>(v8, &v26, v17, 1);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_39:
      os_unfair_lock_unlock(v8 + 10);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_45;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v8 + 10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_46:
    operator delete(__dst[0]);
    v18 = v24;
    if (!v24)
    {
      return a1;
    }

    goto LABEL_47;
  }

LABEL_45:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_46;
  }

LABEL_41:
  v18 = v24;
  if (!v24)
  {
    return a1;
  }

LABEL_47:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  return a1;
}

void sub_297361348(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void ServerLogging::init(os_unfair_lock_s *this)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_13;
  v2[4] = this;
  os_unfair_lock_lock(this + 4);
  ___ZN13ServerLogging4initEv_block_invoke(v2);
  os_unfair_lock_unlock(this + 4);
}

void ___ZN13ServerLogging4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Init", v4, 2u);
  }

  v3 = ServerLogging::monitorSnapshotPath_sync(v1);
  *(v1 + 10) = v3;
  ServerLogging::clearScratchFolders_sync(v3);
}

NSObject *ServerLogging::monitorSnapshotPath_sync(ServerLogging *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = this + 56;
  v2 = *(this + 7);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v19.st_blksize = v4;
  *v19.st_qspare = v4;
  v19.st_birthtimespec = v4;
  *&v19.st_size = v4;
  v19.st_mtimespec = v4;
  v19.st_ctimespec = v4;
  *&v19.st_uid = v4;
  v19.st_atimespec = v4;
  *&v19.st_dev = v4;
  if (*(this + 79) >= 0)
  {
    v5 = this + 56;
  }

  else
  {
    v5 = v2;
  }

  if (stat(v5, &v19))
  {
    v6 = *(this + 3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      if (*(this + 79) < 0)
      {
        v7 = *v3;
      }

      v19.st_dev = 136315138;
      *&v19.st_mode = v7;
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was not found, so recreating it", &v19, 0xCu);
    }

    support::fs::createDir(v3, 0x1EDu, 1);
  }

  if (*(this + 79) < 0)
  {
    v8 = open(*v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = open(v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v9 = v8;
  v10 = v8;
  global_queue = dispatch_get_global_queue(17, 0);
  v12 = dispatch_source_create(MEMORY[0x29EDCA5D8], v10, 0x21uLL, global_queue);
  if (v12)
  {
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_7_0;
    handler[4] = this;
    v18 = v9;
    v13 = v12;
    dispatch_source_set_event_handler(v12, handler);
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 0x40000000;
    v15[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke_8;
    v15[3] = &__block_descriptor_tmp_9;
    v16 = v9;
    dispatch_source_set_cancel_handler(v13, v15);
    dispatch_activate(v13);
    return v13;
  }

  close(v9);
  return 0;
}

void ServerLogging::clearScratchFolders_sync(ServerLogging *this)
{
  v1 = *MEMORY[0x29EDBD250];
  v2 = strlen(*MEMORY[0x29EDBD250]);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    if ((v2 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v2 | 7) + 1;
    }

    v4 = operator new(v5);
    __dst[1] = v3;
    v9 = v5 | 0x8000000000000000;
    __dst[0] = v4;
    goto LABEL_9;
  }

  HIBYTE(v9) = v2;
  v4 = __dst;
  if (v2)
  {
LABEL_9:
    memmove(v4, v1, v3);
  }

  *(v3 + v4) = 0;
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_8);
  capabilities::abs::logScratchPath(__dst, v7);
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29736188C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13ServerLogging24clearScratchFolders_syncEv_block_invoke()
{
  v0 = *MEMORY[0x29EDBD250];
  v1 = strlen(*MEMORY[0x29EDBD250]);
  if (v1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 >= 0x17)
  {
    if ((v1 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (v1 | 7) + 1;
    }

    v3 = operator new(v4);
    __dst[1] = v2;
    v6 = v4 | 0x8000000000000000;
    __dst[0] = v3;
    goto LABEL_9;
  }

  HIBYTE(v6) = v1;
  v3 = __dst;
  if (v1)
  {
LABEL_9:
    memmove(v3, v0, v2);
  }

  *(v2 + v3) = 0;
  support::fs::removeDirContents(__dst, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29736198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ServerLogging::backupFolders_sync(capabilities::abs *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  v7 = (a4 + 8);
  *a4 = 0;
  *(a4 + 16) = 0;
  capabilities::abs::logScratchPath(&__p, a1);
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v39.st_blksize = v8;
  *v39.st_qspare = v8;
  v39.st_birthtimespec = v8;
  *&v39.st_size = v8;
  v39.st_mtimespec = v8;
  v39.st_ctimespec = v8;
  *&v39.st_uid = v8;
  v39.st_atimespec = v8;
  *&v39.st_dev = v8;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (stat(p_p, &v39))
  {
    LODWORD(v10) = 0;
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    v12 = opendir(v11);
    v10 = v12;
    if (v12)
    {
      v13 = readdir(v12);
      closedir(v10);
      LODWORD(v10) = v13 != 0;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v10)
    {
      return;
    }
  }

  else if (!v10)
  {
    return;
  }

  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  v16 = v15 + 7;
  if (v15 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(&__p, 0, sizeof(__p));
    v18 = &__p;
    *(&__p.__r_.__value_.__s + 23) = v15 + 7;
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    __p.__r_.__value_.__l.__size_ = v15 + 7;
    __p.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v18;
  }

  if (v14 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  memmove(v18, v19, v15);
LABEL_29:
  strcpy(v18 + v15, "log-bb-");
  Timestamp::Timestamp(v34);
  Timestamp::asString(v34, 0, 9, v36);
  if ((v37 & 0x80u) == 0)
  {
    v20 = v36;
  }

  else
  {
    v20 = v36[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v21 = v37;
  }

  else
  {
    v21 = v36[1];
  }

  v22 = std::string::append(&__p, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  *&v39.st_uid = *(&v22->__r_.__value_.__l + 2);
  *&v39.st_dev = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = std::string::append(&v39, v25, v26);
  v28 = v27->__r_.__value_.__r.__words[0];
  *v7 = v27->__r_.__value_.__l.__size_;
  *(v7 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
  v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v39.st_gid);
  *a4 = v28;
  *(a4 + 23) = v29;
  if ((st_gid_high & 0x80000000) == 0)
  {
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    operator delete(v36[0]);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34, v35);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  operator delete(*&v39.st_dev);
  if (v37 < 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34, v35);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_49:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_44:
  capabilities::abs::logScratchPath(&v39.st_dev, v31);
  support::fs::moveDirUnique(&v39, a4, &v32);
  if ((v33 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v39.st_gid) & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(*&v39.st_dev);
    return;
  }

  operator delete(v32);
  if (SHIBYTE(v39.st_gid) < 0)
  {
    goto LABEL_51;
  }
}

void sub_297361C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

NSObject *___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v2 + 56);
    if (*(v2 + 79) < 0)
    {
      v4 = *v4;
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was removed", &v6, 0xCu);
  }

  dispatch_release(*(v2 + 80));
  *(v2 + 80) = 0;
  close(*(a1 + 40));
  result = ServerLogging::monitorSnapshotPath_sync(v2);
  *(v2 + 80) = result;
  return result;
}

void initServerLogging(void)
{
  if (initServerLogging(void)::sOnce != -1)
  {
    dispatch_once(&initServerLogging(void)::sOnce, &__block_literal_global_12);
  }
}

uint64_t ___Z17initServerLoggingv_block_invoke()
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v0 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
  v0 = qword_2A1399CD8;
  if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_INFO))
  {
LABEL_4:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v0, OS_LOG_TYPE_INFO, "Initializing server logging and registering log handlers", &buf, 2u);
  }

LABEL_5:
  v1 = pthread_mutex_lock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if (qword_2A1399940)
  {
    goto LABEL_6;
  }

  capabilities::abs::logScratchPath(&buf, v1);
  v4 = strlen(kDaemonLogScratchDir);
  v5 = std::string::append(&buf, kDaemonLogScratchDir, v4);
  v15 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  memset(__p, 170, sizeof(__p));
  capabilities::abs::logSnapshotPath(__p, v5);
  v6 = operator new(0x58uLL);
  ServerLogging::ServerLogging(v6, &v15, __p);
  buf.__r_.__value_.__r.__words[0] = v6;
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__vftable = &unk_2A1E3AAA0;
  v2->__shared_weak_owners_ = 0;
  v2[1].__vftable = v6;
  buf.__r_.__value_.__r.__words[0] = 0;
  v8 = *(v6 + 1);
  if (!v8)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    std::__shared_weak_count::__release_weak(v8);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_15:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

LABEL_16:
  if (buf.__r_.__value_.__r.__words[0])
  {
    ServerLogging::~ServerLogging(buf.__r_.__value_.__l.__data_);
    operator delete(v9);
  }

  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 0x40000000;
  buf.__r_.__value_.__r.__words[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v17 = &__block_descriptor_tmp_13;
  v18 = v6;
  os_unfair_lock_lock(v6 + 4);
  (buf.__r_.__value_.__r.__words[2])(&buf);
  os_unfair_lock_unlock(v6 + 4);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      v10 = off_2A1399948;
      qword_2A1399940 = v6;
      off_2A1399948 = v2;
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  v10 = off_2A1399948;
  qword_2A1399940 = v6;
  off_2A1399948 = v2;
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_6:
  v2 = off_2A1399948;
  if (off_2A1399948)
  {
LABEL_25:
    v3 = 0;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_26;
  }

  v3 = 1;
LABEL_26:
  v11 = pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if ((v3 & 1) != 0 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return abm::debug::registerLogHandlers(v11);
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return abm::debug::registerLogHandlers(v13);
}

void sub_297362200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](&a23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t ctu::cf::plist_adapter::set<std::string>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v9, a3);
  v7 = ctu::cf::plist_adapter::set<std::string>(a1, &v10, v9, v4);
  MEMORY[0x29C26DF80](&v9);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v7;
}

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ServerLogging::~ServerLogging(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297433799)
  {
    if (((v2 & 0x8000000297433799 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297433799))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297433799 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

ServerLogging **std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](ServerLogging **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    ServerLogging::~ServerLogging(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy, &ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_10)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_10 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) == 0)
  {
    v3 = capabilities::radio::initium(v2);
    if ((v3 & 1) == 0)
    {
      capabilities::radio::maverick(v3);
    }
  }

  if (!qword_2A1399E68)
  {
    qword_2A1399E68 = os_log_create("com.apple.telephony.abm", "bbu");
  }

  return MEMORY[0x2A1C6CFB8](0, abm::debug::handleDebugPrintBBU);
}

void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v17 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  if (a2)
  {
    v6 = "misc";
  }

  else
  {
    v6 = "send";
  }

  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  ctu::assign();
  v7 = _MergedGlobals_10;
  if (!_MergedGlobals_10 || !os_log_type_enabled(_MergedGlobals_10, OS_LOG_TYPE_DEBUG))
  {
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v8 = "recv";
  if (a2 != 1)
  {
    v8 = v6;
  }

  v9 = __p;
  *buf = 67109634;
  if (SHIBYTE(__p[2]) < 0)
  {
    v9 = __p[0];
  }

  v12 = v4;
  v13 = 2080;
  v14 = v8;
  v15 = 2080;
  v16 = v9;
  _os_log_debug_impl(&dword_297288000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_7:
    operator delete(__p[0]);
  }
}

void sub_2973628F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v6;
  v29[8] = v6;
  v29[5] = v6;
  v29[6] = v6;
  v29[3] = v6;
  v29[4] = v6;
  v29[1] = v6;
  v29[2] = v6;
  v29[0] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  *__p = v6;
  v23 = v6;
  v24 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v7 = MEMORY[0x29C26EA50](&v22, a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = strlen(a3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v16 = *(&v25 + 1);
    }

    v17 = v25;
    v14 = v16 - v25;
    if ((v16 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_15;
    }

    v17 = *(&v23 + 1);
    v14 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_14:
    v10 = memmove(v15, v17, v14);
  }

LABEL_15:
  *(v15 + v14) = 0;
  v19 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v19 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v10, v11, v12, v13, v19);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x29C26EC90](v29);
}

void sub_297362BBC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a13, MEMORY[0x29EDC9538]);
  MEMORY[0x29C26EC90](va);
  _Unwind_Resume(a1);
}

uint64_t abm::debug::handleDebugPrint(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[1] = v8;
  v41[2] = v8;
  v41[0] = v8;
  ctu::LogMessageBuffer::LogMessageBuffer(v41);
  if (a2 && *a2)
  {
    v9 = MEMORY[0x29C26E350](v41, a2);
    MEMORY[0x29C26E350](v9, ": ");
  }

  MEMORY[0x29C26DEE0](&v39, a3, a4);
  ctu::operator<<();
  v10 = MEMORY[0x29C26DF00](&v39);
  ctu::Clock::now_in_nanoseconds(v10);
  v11 = operator new(0x60uLL);
  v12 = abm::debug::kLogDomainMap[a1];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __p[1] = v14;
    v38 = v16 | 0x8000000000000000;
    __p[0] = v15;
    goto LABEL_12;
  }

  HIBYTE(v38) = v13;
  v15 = __p;
  if (v13)
  {
LABEL_12:
    memmove(v15, v12, v14);
  }

  *(v14 + v15) = 0;
  MEMORY[0x29C26DEC0](v41);
  ctu::LogMessageBuffer::takeMetadata(v41);
  ctu::LogMessage::LogMessage();
  v39 = v11;
  v17 = operator new(0x20uLL);
  v17->__vftable = &unk_2A1E3AB00;
  v17->__shared_owners_ = 0;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v11;
  v40 = v17;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v11 + 2;
    v19 = SHIBYTE(v11[2].__r_.__value_.__r.__words[2]);
    if ((v19 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v18;
      size = v19;
      goto LABEL_18;
    }
  }

  data = v11[2].__r_.__value_.__l.__data_;
  size = v11[2].__r_.__value_.__l.__size_;
LABEL_18:
  v22 = data + size;
  v23 = memchr(data, 10, size);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v24 == v22 || (v25 = v24 + 1, v24 + 1 == v22))
  {
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v28 = *v25;
      if (v28 != 10)
      {
        *v24++ = v28;
      }

      ++v25;
    }

    while (v25 != v22);
    LOBYTE(v19) = *(&v11[2].__r_.__value_.__s + 23);
    if ((v19 & 0x80) == 0)
    {
LABEL_24:
      v26 = v18 + v19;
      v27 = v24 - v18;
      if (v19 >= (v24 - v18))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v30 = v11[2].__r_.__value_.__l.__data_;
  v29 = v11[2].__r_.__value_.__l.__size_;
  v26 = &v30[v29];
  v27 = v24 - v30;
  if (v29 < v24 - v30)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v26 - v24 != -1)
  {
    std::string::__erase_external_with_move(v18, v27, v26 - v24);
    goto LABEL_35;
  }

  if ((v19 & 0x80) == 0)
  {
    *(&v11[2].__r_.__value_.__s + 23) = v27 & 0x7F;
    v18->__r_.__value_.__s.__data_[v27] = 0;
LABEL_35:
    if ((a1 - 1) < 2)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  v34 = v11[2].__r_.__value_.__l.__data_;
  v11[2].__r_.__value_.__l.__size_ = v27;
  v34[v27] = 0;
  if ((a1 - 1) < 2)
  {
    goto LABEL_49;
  }

LABEL_36:
  if (a1)
  {
    v31 = qword_2A1399E68;
    if (qword_2A1399E68 && os_log_type_enabled(qword_2A1399E68, OS_LOG_TYPE_DEFAULT))
    {
      v33 = &v39[2];
      if (SHIBYTE(v39[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v33 = v33->__words[0];
      }

      *buf = 136315138;
      v44 = v33;
      goto LABEL_47;
    }
  }

  else
  {
    v31 = _MergedGlobals_10;
    if (_MergedGlobals_10 && os_log_type_enabled(_MergedGlobals_10, OS_LOG_TYPE_DEFAULT))
    {
      v32 = &v39[2];
      if (SHIBYTE(v39[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v32 = v32->__words[0];
      }

      *buf = 136315138;
      v44 = v32;
LABEL_47:
      _os_log_impl(&dword_297288000, v31, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

LABEL_49:
  v35 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  return MEMORY[0x29C26DF00](v41);
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297433871)
  {
    if (((v2 & 0x8000000297433871 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297433871))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297433871 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t support::fs::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "_wireless");
  }

  else if (result)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "mobile");
  }

  return result;
}

uint64_t support::fs::updateOwner(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        support::fs::readDir(v5, &v57);
        v20 = v57;
        v53 = v58;
        if (v57 == v58)
        {
          updated = 0;
          if (v57)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v57 + 24);
        while (1)
        {
          memset(&v56, 170, sizeof(v56));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v56, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v56.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v56.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = v5[23];
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          if (v24 >= 0)
          {
            v29 = v5;
          }

          else
          {
            v29 = *v5;
          }

          memmove(p_dst, v29, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v56;
          }

          else
          {
            v30 = v56.__r_.__value_.__r.__words[0];
          }

          if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v56.__r_.__value_.__l.__size_;
          }

          v32 = std::string::append(&__dst, v30, size);
          v33 = *&v32->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v34 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
            if ((*(&v56.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v34 == 1)
              {
                if (v56.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v34 == 2 && LOWORD(v56.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v34 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
            if ((*(&v56.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v56.__r_.__value_.__l.__size_ == 1)
          {
            if (*v56.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v56.__r_.__value_.__l.__size_ == 2 && *v56.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v35.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v35.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v35;
          *__dst.st_qspare = v35;
          __dst.st_birthtimespec = v35;
          *&__dst.st_size = v35;
          __dst.st_mtimespec = v35;
          __dst.st_ctimespec = v35;
          *&__dst.st_uid = v35;
          __dst.st_atimespec = v35;
          *&__dst.st_dev = v35;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v46 = &__p) : (v46 = __p.__r_.__value_.__r.__words[0]), (v47 = opendir(v46), (v48 = v47) == 0) || (v49 = readdir(v47), closedir(v48), !v49)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &__p;
            }

            else
            {
              v37 = __p.__r_.__value_.__r.__words[0];
            }

            v38 = strlen(v37);
            if (v38 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v39 = v38;
            if (v38 >= 0x17)
            {
              if ((v38 | 7) == 0x17)
              {
                v41 = 25;
              }

              else
              {
                v41 = (v38 | 7) + 1;
              }

              v40 = operator new(v41);
              __dst.st_ino = v39;
              *&__dst.st_uid = v41 | 0x8000000000000000;
              *&__dst.st_dev = v40;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v38;
              v40 = &__dst;
              if (!v38)
              {
LABEL_84:
                v40[v39] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v43 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v44 = &__dst;
                }

                else
                {
                  v44 = *&__dst.st_dev;
                }

                updated = chown(v44, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v45 = v43;
LABEL_89:
                  operator delete(v45);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v40, v37, v39);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v54, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v54 = __p;
          }

          updated = support::fs::updateOwner(&v54, a2, a3);
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            v45 = v54.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v56.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v53)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v57;
            if (!v57)
            {
              return updated;
            }

LABEL_108:
            v50 = v58;
            v15 = v20;
            if (v58 != v20)
            {
              do
              {
                v51 = *(v50 - 1);
                v50 -= 3;
                if (v51 < 0)
                {
                  operator delete(*v50);
                }
              }

              while (v50 != v20);
              v15 = v57;
            }

            v58 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::isDir(const char *a1)
{
  v1 = a1;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v2;
  *v7.st_qspare = v2;
  v7.st_birthtimespec = v2;
  *&v7.st_size = v2;
  v7.st_mtimespec = v2;
  v7.st_ctimespec = v2;
  *&v7.st_uid = v2;
  v7.st_atimespec = v2;
  *&v7.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v7))
  {
    return 0;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  result = opendir(v4);
  if (result)
  {
    v5 = result;
    v6 = readdir(result);
    closedir(v5);
    return (v6 != 0);
  }

  return result;
}

BOOL support::fs::chown(const char *a1, uid_t a2, gid_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chown(a1, a2, a3) == 0;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            v10 = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        *(a2 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_297363A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    HIBYTE(__p[2]) = 6;
    strcpy(__p, "mobile");
    v5 = getpwnam(__p);
    if (v5)
    {
LABEL_4:
      *a2 = v5->pw_uid;
      *a3 = v5->pw_gid;
      return 1;
    }
  }

  if ((atomic_load_explicit(&qword_2A1399E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E78))
  {
    qword_2A1399E80 = 0;
    qword_2A1399E88 = 0;
    __cxa_guard_release(&qword_2A1399E78);
  }

  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
  }

  v7 = qword_2A1399E88;
  if (os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
  {
    v8 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v8 = __p[0];
    }

    *buf = 136315138;
    v11 = v8;
    _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
    if ((HIBYTE(__p[2]) & 0x80) == 0)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if ((HIBYTE(__p[2]) & 0x80) != 0)
  {
LABEL_11:
    operator delete(__p[0]);
  }

  return 0;
}

BOOL support::fs::writeToCompletion(support::fs *this, char *__buf, size_t __nbyte)
{
  v4 = this;
  do
  {
    v5 = __nbyte;
    if (!__nbyte)
    {
      break;
    }

    v6 = write(v4, __buf, __nbyte);
    __nbyte = v5 - v6;
    __buf += v6;
  }

  while ((v6 & 0x8000000000000000) == 0);
  return v5 == 0;
}

BOOL support::fs::writeToCompletion(FILE *__stream, __sFILE *__ptr, size_t __nitems)
{
  while (1)
  {
    v5 = __nitems;
    if (!__nitems)
    {
      break;
    }

    v6 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __nitems = v5 - v6;
    __ptr = (__ptr + v6);
    if (!v6)
    {
      return v5 == 0;
    }
  }

  fflush(__stream);
  return 1;
}

uint64_t support::fs::openFile(const char *a1, int a2, uint64_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, a2, a3);
}

BOOL support::fs::closeFile(support::fs *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while (v2 && *__error() == 4);
  return v2 == 0;
}

BOOL support::fs::copyFile(const char *a1, const char *a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = strlen(v6);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *&__dst[8] = v8;
    *&__dst[16] = v10 | 0x8000000000000000;
    *__dst = v9;
    goto LABEL_12;
  }

  __dst[23] = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_12:
    memmove(v9, v6, v8);
  }

  v9[v8] = 0;
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v12 = open(v11, 0, 420);
  v13 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    if ((atomic_load_explicit(&qword_2A1399E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E78))
    {
      qword_2A1399E80 = 0;
      qword_2A1399E88 = 0;
      __cxa_guard_release(&qword_2A1399E78);
    }

    if (_MergedGlobals_11 == -1)
    {
      v18 = qword_2A1399E88;
      if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
      v18 = qword_2A1399E88;
      if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    if (a1[23] >= 0)
    {
      v30 = a1;
    }

    else
    {
      v30 = *a1;
    }

    *__dst = 136315138;
    *&__dst[4] = v30;
    _os_log_error_impl(&dword_297288000, v18, OS_LOG_TYPE_ERROR, "Failed to open the source file %s", __dst, 0xCu);
    return 0;
  }

  operator delete(*__dst);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&__dst[8] = v16;
    *&__dst[16] = v20 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_34;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_34:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  if (__dst[23] >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = *__dst;
  }

  v22 = open(v21, 1541, 420);
  v23 = v22;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_40:
    memset(__dst, 170, sizeof(__dst));
    v24 = read(v13, __dst, 0x400uLL);
    if (v24 < 1)
    {
LABEL_46:
      v19 = v24 == 0;
      if (!v24 && a3)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[112] = v27;
        *&__dst[128] = v27;
        *&__dst[80] = v27;
        *&__dst[96] = v27;
        *&__dst[48] = v27;
        *&__dst[64] = v27;
        *&__dst[16] = v27;
        *&__dst[32] = v27;
        *__dst = v27;
        if (fstat(v13, __dst))
        {
          v19 = 0;
        }

        else
        {
          v19 = fchmod(v23, *&__dst[4]) == 0;
        }
      }
    }

    else
    {
      v25 = __dst;
      do
      {
        while (!v24)
        {
          memset(__dst, 170, sizeof(__dst));
          v24 = read(v13, __dst, 0x400uLL);
          v25 = __dst;
          if (v24 <= 0)
          {
            goto LABEL_46;
          }
        }

        v26 = write(v23, v25, v24);
        v24 -= v26;
        v25 += v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
      v19 = 0;
    }

      ;
    }

    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A1399E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E78))
  {
    qword_2A1399E80 = 0;
    qword_2A1399E88 = 0;
    __cxa_guard_release(&qword_2A1399E78);
  }

  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
    v28 = qword_2A1399E88;
    if (!os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

LABEL_67:
    if (a2[23] >= 0)
    {
      v31 = a2;
    }

    else
    {
      v31 = *a2;
    }

    *__dst = 136315138;
    *&__dst[4] = v31;
    _os_log_error_impl(&dword_297288000, v28, OS_LOG_TYPE_ERROR, "Failed to open the destination file %s", __dst, 0xCu);
    goto LABEL_54;
  }

  v28 = qword_2A1399E88;
  if (os_log_type_enabled(qword_2A1399E88, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_67;
  }

LABEL_54:
  v19 = 0;
LABEL_58:
    ;
  }

  return v19;
}

void sub_297364260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::loadFile(uint64_t *a1, void **a2)
{
  v17[89] = *MEMORY[0x29EDCA608];
  memset(v17, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v17, a1, 12);
  if (v17[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v17[88], std::istream::seekg(), v4) && !*(&v17[4] + *(v17[0] - 24)))
  {
    v8 = *a2;
    v7 = a2[1];
    v9 = v7 - *a2;
    v10 = v4 - v9;
    if (v4 <= v9)
    {
      if (v4 < v9)
      {
        a2[1] = &v8[v4];
      }
    }

    else
    {
      v11 = a2[2];
      if (v11 - v7 >= v10)
      {
        v16 = &v7[v10];
        bzero(v7, v4 - v9);
        a2[1] = v16;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v12 = v11 - v8;
        v13 = 2 * v12;
        if (2 * v12 <= v4)
        {
          v13 = v4;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        v15 = operator new(v14);
        bzero(&v15[v9], v4 - v9);
        memcpy(v15, v8, v9);
        *a2 = v15;
        a2[1] = &v15[v4];
        a2[2] = &v15[v14];
        if (v8)
        {
          operator delete(v8);
        }
      }
    }

    std::istream::read();
    v5 = v17[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v17 + *(v17[0] - 24)), *(&v17[4] + *(v17[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v17[0] = *MEMORY[0x29EDC9518];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C26E950](&v17[2]);
  std::istream::~istream();
  MEMORY[0x29C26EC90](&v17[53]);
  return v5;
}

BOOL support::fs::getFileSize(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v5;
    std::istream::seekg();
  }

  return v2 != 0;
}

{
  v7[89] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  memset(v7, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v7, a1, 8);
  v5 = v7[17] != 0;
  if (v7[17])
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v7[88];
    std::istream::seekg();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v7 + *(v7[0] - 24)), *(&v7[4] + *(v7[0] - 24)) | 4);
    }
  }

  v7[0] = *MEMORY[0x29EDC9518];
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C26E950](&v7[2]);
  std::istream::~istream();
  MEMORY[0x29C26EC90](&v7[53]);
  return v5;
}