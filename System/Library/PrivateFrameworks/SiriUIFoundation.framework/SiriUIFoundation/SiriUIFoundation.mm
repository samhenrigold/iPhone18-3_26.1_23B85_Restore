void SRUIFInvokeOnMainQueue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v1 = block;
  }
}

id SRUIFConstructLaunchContextForLaunchStarted()
{
  v0 = objc_alloc_init(MEMORY[0x277D5AB78]);
  [v0 setExists:1];
  v1 = objc_alloc_init(MEMORY[0x277D5AB68]);
  [v1 setStartedOrChanged:v0];

  return v1;
}

void SRUIFSetLanguageCode(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (([v1 isEqualToString:__currentLanguageCode] & 1) == 0)
  {
    v2 = [v1 copy];
    v3 = __currentLanguageCode;
    __currentLanguageCode = v2;

    v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:__currentLanguageCode];
    v5 = __currentLocale;
    __currentLocale = v4;

    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "SRUIFSetLanguageCode";
      v10 = 2112;
      v11 = __currentLanguageCode;
      _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s Updated language code: %@", &v8, 0x16u);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"com.apple.siri.ui.foundation.LanguageCodeDidChangeNotification" object:0];
    [v7 postNotificationName:@"com.apple.siri.assistantUI.LanguageCodeDidChangeNotification" object:0];
  }
}

__CFString *SRUIFSiriSessionStateGetDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"SRUIFSiriSessionStateIdle";
  }

  else
  {
    return off_279C628C0[a1 - 1];
  }
}

__CFString *SRUIFSiriSessionEventGetDescription(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"SRUIFSiriSessionEventDirectRequestBegan";
  }

  else
  {
    return off_279C628E0[a1 - 1];
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_269523410(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2, uint64_t *a3)
{

  v6 = sub_2695234DC(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2695235E8(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v14;
}

unint64_t sub_2695234DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_269524FE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_269562DE0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2695235E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__CFString *SRUIFSpeechSynthesisResultGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"SRUIFSpeechSynthesisResultUnknown";
  }

  else
  {
    return off_279C62AD0[a1 - 1];
  }
}

void sub_269523F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_269524FE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_26952518C(a1, a2);
  sub_2695252C0(&unk_287A10248);
  return v3;
}

void *sub_269525030(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C800, &qword_269567968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_26952518C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269525030(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_269562DE0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_269562BF0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269525030(v10, 0);
        result = sub_269562DA0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_2695252C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_26955EBE8(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*(result + 16))
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v15 + 32], (result + 32), v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *(v3 + 2);
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *(v3 + 2) = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_269525924()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26952595C()
{
  MEMORY[0x26D640E40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269525994(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x2821FE8E8](v8, 40, 7);
}

uint64_t sub_2695259D4()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;

  *(v0 + 80), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 96), v22, v23, v24, v25, v26, v27, v28;
  *(v0 + 112), v29, v30, v31, v32, v33, v34, v35;
  if (*(v0 + 144))
  {
  }

  *(v0 + 160), v36, v37, v38, v39, v40, v41, v42;
  *(v0 + 168), v43, v44, v45, v46, v47, v48, v49;

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_269525A5C()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_269525A9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_269525AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clientStateManagerDelegate];
  *a2 = result;
  return result;
}

id sub_269525B3C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 audioSessionID];
  *a2 = result;
  return result;
}

uint64_t sub_269525B8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_269525B9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void sub_269526730(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_269526880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695269C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_269526B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269527128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_269527384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695275FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695278E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2695285D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695296C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_26952AC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26952B188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id SRUIFStringForUserAttentionType(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"face"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"touch"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [v3 addObject:@"raise gesture"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"button press"];
  }

LABEL_6:
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = v5;
  v7 = &stru_287A10D80;
  if (a1 == 7)
  {
    v7 = @" (all)";
  }

  v8 = [v4 initWithFormat:@"[%@]%@", v5, v7];

  return v8;
}

__CFString *SRUIFStringForUserAttentionGainEvent(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"SRUIFUserAttentionGainEventUndefined";
  }

  else
  {
    return off_279C61B08[a1 - 1];
  }
}

__CFString *SRUIFStringForUserAttentionLossEvent(uint64_t a1)
{
  v1 = @"SRUIFUserAttentionLossEventUndefined";
  if (a1 == 1)
  {
    v1 = @"SRUIFUserAttentionLossEventFaceDetection";
  }

  if (a1 == 2)
  {
    return @"SRUIFUserAttentionLossEventLowerDeviceGesture";
  }

  else
  {
    return v1;
  }
}

void sub_26952BE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t SRUIFShouldInstrumentLaunchContextForAceCommand(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
      v3 = [v1 commands];
      v2 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        v4 = *v8;
        while (2)
        {
          for (i = 0; i != v2; ++i)
          {
            if (*v8 != v4)
            {
              objc_enumerationMutation(v3);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = 1;
              goto LABEL_15;
            }
          }

          v2 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
          if (v2)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id SRUIFConstructLaunchContextForLaunchEnded()
{
  v0 = objc_alloc_init(MEMORY[0x277D5AB70]);
  [v0 setExists:1];
  v1 = objc_alloc_init(MEMORY[0x277D5AB68]);
  [v1 setEnded:v0];

  return v1;
}

void SRUIFPopulateSendCommandWithInstrumentationTurn(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 commands];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setTurnId:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

uint64_t SRUIFResponseModeToSISchemaResponseMode(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"displayonly"])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"displayforward"])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"voiceonly"])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"voiceforward"])
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void SRUIFInstrumentVoiceLaunchSignpost(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = a1;
  v4 = os_signpost_id_generate(v2);
  v5 = [v3 voiceTriggerEventInfo];

  v6 = [v5 objectForKey:@"triggerEndMachTime"];

  v7 = [v6 unsignedLongLongValue];
  *buf = 0;
  mach_get_times();
  v8 = v2;
  v9 = v8;
  if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v11 = v9;
  }

  else
  {
    if (os_signpost_enabled(v8))
    {
      *buf = 134349056;
      *&buf[4] = v7;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v4, "voiceUILaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v10 = v9;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v10, OS_SIGNPOST_INTERVAL_END, v4, "voiceUILaunch", "", buf, 2u);
    }
  }
}

void SRUIFInstrumentButtonLaunchSignpost(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = os_signpost_id_generate(v2);
  *buf = 0;
  mach_get_times();
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v7 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 134349056;
      *&buf[4] = a1;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "buttonLaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v6 = v5;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v6, OS_SIGNPOST_INTERVAL_END, v3, "buttonLaunch", "", buf, 2u);
    }
  }
}

void SRUIFInstrumentQuickTypeGestureLaunchSignpost(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = os_signpost_id_generate(v2);
  *buf = 0;
  mach_get_times();
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v7 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 134349056;
      *&buf[4] = a1;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "quickTypeLaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v6 = v5;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v6, OS_SIGNPOST_INTERVAL_END, v3, "quickTypeLaunch", "", buf, 2u);
    }
  }
}

void SRUIFInstrumentQuickTypeTamaleLaunchSignpost(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0C8];
  v3 = os_signpost_id_generate(v2);
  *buf = 0;
  mach_get_times();
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v7 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 134349056;
      *&buf[4] = a1;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "quickTypeTamaleLaunch", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
    }

    v6 = v5;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v6, OS_SIGNPOST_INTERVAL_END, v3, "quickTypeTamaleLaunch", "", buf, 2u);
    }
  }
}

os_signpost_id_t SRUIFInstrumentQuickTypeFaceDetectionPollingStartSignpost()
{
  v0 = *MEMORY[0x277CEF0C8];
  v1 = os_signpost_id_generate(v0);
  v2 = v0;
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "quickTypeFaceDetectionPolling", "", v5, 2u);
  }

  return v1;
}

void SRUIFInstrumentQuickTypeFaceDetectionPollingEndSignpost(os_signpost_id_t a1)
{
  v2 = *MEMORY[0x277CEF0C8];
  v3 = v2;
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_END, a1, "quickTypeFaceDetectionPolling", "", v4, 2u);
  }
}

os_signpost_id_t SRUIFInstrumentQuickTypeFaceDetectionGateStartSignpost()
{
  v0 = *MEMORY[0x277CEF0C8];
  v1 = os_signpost_id_generate(v0);
  v2 = v0;
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "quickTypeFaceDetectionGate", "", v5, 2u);
  }

  return v1;
}

void SRUIFInstrumentQuickTypeFaceDetectionGateEndSignpost(os_signpost_id_t a1)
{
  v2 = *MEMORY[0x277CEF0C8];
  v3 = v2;
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_26951F000, v3, OS_SIGNPOST_INTERVAL_END, a1, "quickTypeFaceDetectionGate", "", v4, 2u);
  }
}

void sub_26952D38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26952EFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26952FCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695335F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_269533D30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_2695347FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, id a62)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v62 + 72));
  objc_destroyWeak((v62 + 64));
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a61);
  objc_destroyWeak((v63 - 208));
  objc_destroyWeak((v63 - 200));
  _Unwind_Resume(a1);
}

void sub_269534C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_26953548C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 184));
  objc_destroyWeak((v4 - 192));
  _Unwind_Resume(a1);
}

void sub_2695360B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695366E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_269537410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953A2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953AAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26953AC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ASBDForSAUIAD(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 sampleRate];
  [v4 doubleValue];
  *a2 = v5;

  v6 = [v3 formatID];
  *(a2 + 8) = [v6 unsignedIntValue];

  v7 = [v3 formatFlags];
  *(a2 + 12) = [v7 unsignedIntValue];

  v8 = [v3 bytesPerPacket];
  *(a2 + 16) = [v8 unsignedIntValue];

  v9 = [v3 framesPerPacket];
  *(a2 + 20) = [v9 unsignedIntValue];

  v10 = [v3 bytesPerFrame];
  *(a2 + 24) = [v10 unsignedIntValue];

  v11 = [v3 channelsPerFrame];
  *(a2 + 28) = [v11 unsignedIntValue];

  v12 = [v3 bitsPerChannel];
  *(a2 + 32) = [v12 unsignedIntValue];

  v13 = [v3 reserved];

  *(a2 + 36) = [v13 unsignedIntValue];
}

void sub_26953D9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

id SRUIFFileURLForConversationWithIdentifier(void *a1)
{
  v1 = a1;
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library"];
  v4 = [v3 stringByAppendingPathComponent:@"Assistant"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:v1 isDirectory:0];

  return v6;
}

void sub_26953F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26953F3A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26953F704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SRUIFMaxIntervalForDisplayingPreviousConversation(uint64_t a1, uint64_t a2)
{
  if (SRUIFMaxIntervalForDisplayingPreviousConversation_onceToken != -1)
  {
    SRUIFMaxIntervalForDisplayingPreviousConversation_cold_1();
  }

  return SRUIFMaxIntervalForDisplayingPreviousConversation_maxInterval;
}

void __SRUIFMaxIntervalForDisplayingPreviousConversation_block_invoke()
{
  v2 = [[SRUIFPreferences alloc] initWithSuiteName:@"com.apple.SiriViewService"];
  v0 = [(SRUIFPreferences *)v2 integerForKey:@"MaxIntervalForDisplayingPreviousConversation"];
  v1 = 30;
  if (v0 > 0)
  {
    v1 = v0;
  }

  if (v0 == -1)
  {
    v1 = -1;
  }

  SRUIFMaxIntervalForDisplayingPreviousConversation_maxInterval = v1;
}

void sub_2695424B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2695434B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2695443F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2695460F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269547904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FirstCharacterOfStringIsInCharacterSetInString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v6 = [v3 rangeOfCharacterFromSet:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6, [MEMORY[0x277CCA900] characterSetWithCharactersInString:v4], v8 = objc_claimAutoreleasedReturnValue(), v9 = 1, v10 = objc_msgSend(v3, "rangeOfCharacterFromSet:options:range:", v8, 1, v7, 1), v8, v10 != v7))
  {
    v9 = 0;
  }

  return v9;
}

void sub_26954917C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__94(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id SpeechRequest.init(text:voice:promptStyle:)(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2, void *a3, uint64_t a4, SRUIFMarkerCapableSpeechSynthesizer *a5)
{
  v6 = v5;
  v10 = sub_269562BA0();
  a2, v11, v12, v13, v14, v15, v16, v17;
  if (a5)
  {
    v18 = sub_269562BA0();
    a5, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v18 = 0;
  }

  v26 = [objc_allocWithZone(v6) initWithText:v10 voice:a3 promptStyle:v18];

  return v26;
}

{
  v6 = sub_2695506FC(a1, a2, a3, a4, a5);

  return v6;
}

id sub_26955066C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_269562BB0();
  v9 = v8;
  if (a5)
  {
    a5 = sub_269562BB0();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4;
  v13 = sub_2695506FC(v7, v9, v12, a5, v11);

  return v13;
}

id sub_2695506FC(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2, uint64_t a3, uint64_t a4, SRUIFMarkerCapableSpeechSynthesizer *a5)
{
  v6 = v5;
  swift_getObjectType();
  v11 = sub_269562BA0();
  a2, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v6 initWithText:v11 voice:a3];

  if (a5)
  {
    v20 = sub_269562BB0();
    v28 = v21;
    if (v20 != a4 || v21 != a5)
    {
      v30 = sub_269562E30();
      v28, v31, v32, v33, v34, v35, v36, v37;
      if (v30)
      {
        v45 = a5;
        goto LABEL_9;
      }

      v48 = sub_269562BB0();
      v28 = v21;
      if (v48 != a4 || v21 != a5)
      {
        v50 = sub_269562E30();
        v28, v51, v52, v53, v54, v55, v56, v57;
        if ((v50 & 1) == 0)
        {
          v58 = sub_269562BB0();
          v66 = v59;
          if (v58 == a4 && v59 == a5)
          {
            a5, v59, v60, v61, v62, v63, v64, v65;
            v66, v67, v68, v69, v70, v71, v72, v73;
          }

          else
          {
            v74 = sub_269562E30();
            a5, v75, v76, v77, v78, v79, v80, v81;
            v66, v82, v83, v84, v85, v86, v87, v88;
            if ((v74 & 1) == 0)
            {
              goto LABEL_11;
            }
          }

LABEL_10:
          v46 = sub_269562A60();
          sub_269562A70();

LABEL_11:
          sub_269562A80();
          return v19;
        }

        v45 = a5;
LABEL_9:
        v45, v38, v39, v40, v41, v42, v43, v44;
        goto LABEL_10;
      }
    }

    a5, v21, v22, v23, v24, v25, v26, v27;
    v45 = v28;
    goto LABEL_9;
  }

  return v19;
}

uint64_t sub_269550920(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269550940(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_26955097C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SRUIFProtectedVariableWriteResponse.hashValue.getter()
{
  v1 = *v0;
  sub_269562E70();
  MEMORY[0x26D640340](v1);
  return sub_269562E90();
}

uint64_t sub_269550A6C()
{
  v1 = *v0;
  sub_269562E70();
  MEMORY[0x26D640340](v1);
  return sub_269562E90();
}

uint64_t sub_269550AE0(uint64_t a1)
{
  v2 = *v1;
  sub_269562E70();
  MEMORY[0x26D640340](v2);
  return sub_269562E90();
}

id SRUIFProtectedVariableCoordinator.__allocating_init(storageKey:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey] = a1;
  v4 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *&v3[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_authContext] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CD47B8]) initWithDomain:0 authenticationContext:v4];
  *&v3[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage] = v5;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SRUIFProtectedVariableCoordinator.init(storageKey:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey] = a1;
  v2 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *&v1[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_authContext] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CD47B8]) initWithDomain:0 authenticationContext:v2];
  *&v1[OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SRUIFProtectedVariableCoordinator();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_269550CEC()
{
  v1 = v0[18];
  v2 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
  v0[19] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_269550E30;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4D0, &qword_2695672C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_269551068;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 BOOLForKey:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_269550E30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_269550FAC;
  }

  else
  {
    v2 = sub_269550F40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269550F40()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269550FAC()
{
  v1 = *(v0 + 152);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_269551068(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_269551198(char a1)
{
  v32[14] = *MEMORY[0x277D85DE8];
  if (qword_28031C488 != -1)
  {
    swift_once();
  }

  v3 = sub_269562AD0();
  __swift_project_value_buffer(v3, qword_28031CF30);
  v4 = sub_269562AC0();
  v5 = sub_269562CA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_26951F000, v4, v5, "Setting %{BOOL}d", v6, 8u);
    MEMORY[0x26D640DD0](v6, -1, -1);
  }

  v7 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
  v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v9 = v7;
  v10 = [v8 initWithBool_];
  v11 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4D8, &qword_2695672C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2695672A0;
  sub_269562D90();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v13 = sub_2695525B0(inited);
  swift_setDeallocating();
  sub_2695526CC(inited + 32, &qword_28031C4E0, &unk_2695672D0);
  v14 = sub_269562B70();
  v13, v15, v16, v17, v18, v19, v20, v21;
  v32[0] = 0;
  LODWORD(v13) = [v9 setObject:v10 forKey:v11 withOptions:v14 error:v32];

  if (v13)
  {
    return v32[0];
  }

  v23 = v32[0];
  v24 = sub_269562A20();

  swift_willThrow();
  v25 = v24;
  v26 = sub_269562AC0();
  v27 = sub_269562CA0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v24;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_26951F000, v26, v27, "Set response %@", v28, 0xCu);
    sub_2695526CC(v29, &qword_28031C4E8, &unk_2695675B0);
    MEMORY[0x26D640DD0](v29, -1, -1);
    MEMORY[0x26D640DD0](v28, -1, -1);
  }

  return swift_willThrow();
}

uint64_t sub_269551538()
{
  if (qword_28031C488 != -1)
  {
    swift_once();
  }

  v1 = sub_269562AD0();
  v0[19] = __swift_project_value_buffer(v1, qword_28031CF30);
  v2 = sub_269562AC0();
  v3 = sub_269562CA0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26951F000, v2, v3, "Resetting", v4, 2u);
    MEMORY[0x26D640DD0](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
  v0[20] = v6;
  v7 = *(v5 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storageKey);
  v0[2] = v0;
  v0[3] = sub_269551728;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4F0, &qword_2695672E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_269551A0C;
  v0[13] = &block_descriptor_4;
  v0[14] = v8;
  [v6 removeObjectForKey:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_269551728()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_26955189C;
  }

  else
  {
    v2 = sub_269551838;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269551838()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26955189C()
{
  v2 = v0[20];
  v1 = v0[21];
  swift_willThrow();

  v3 = sub_269562C90();
  v4 = v1;
  v5 = sub_269562AC0();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26951F000, v5, v3, "%@", v8, 0xCu);
    sub_2695526CC(v9, &qword_28031C4E8, &unk_2695675B0);
    MEMORY[0x26D640DD0](v9, -1, -1);
    MEMORY[0x26D640DD0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_269551A0C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

void sub_269551AB8(void *a1)
{
  if ([a1 code] == 5)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16SiriUIFoundation33SRUIFProtectedVariableCoordinator_storage);
    v3 = sub_269562A10();
    v5[4] = sub_269551BA8;
    v5[5] = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_269551D58;
    v5[3] = &block_descriptor_7;
    v4 = _Block_copy(v5);
    [v2 processError:v3 completionHandler:v4];
    _Block_release(v4);
  }
}

void sub_269551BA8(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28031C488 != -1)
    {
      swift_once();
    }

    v3 = sub_269562AD0();
    __swift_project_value_buffer(v3, qword_28031CF30);
    v4 = sub_269562C90();
    v5 = a1;
    oslog = sub_269562AC0();

    if (os_log_type_enabled(oslog, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_26951F000, oslog, v4, "%@", v6, 0xCu);
      sub_2695526CC(v7, &qword_28031C4E8, &unk_2695675B0);
      MEMORY[0x26D640DD0](v7, -1, -1);
      MEMORY[0x26D640DD0](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void sub_269551D58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id SRUIFProtectedVariableCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SRUIFProtectedVariableCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRUIFProtectedVariableCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269551EF4()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    v4 = *(v0 + 8);

    return v4(exclaveCapability);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269551F98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269552028;

  return sub_269550CCC();
}

uint64_t sub_269552028(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_269552130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2695521C0;

  return sub_269551518();
}

uint64_t sub_2695521C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2695522D8()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_28031CF30);
  __swift_project_value_buffer(v0, qword_28031CF30);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

unint64_t sub_269552378(uint64_t a1)
{
  v2 = sub_269562D70();

  return sub_269552430(a1, v2);
}

unint64_t sub_2695523BC(uint64_t a1, uint64_t a2)
{
  sub_269562E70();
  sub_269562BE0();
  v4 = sub_269562E90();
  return sub_2695524F8(a1, a2, v4);
}

unint64_t sub_269552430(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_269553450(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D640240](v9, a1);
      sub_2695534AC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2695524F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_269562E30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2695525B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C510, &unk_269567490);
    v3 = sub_269562E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_2695533D0(v4, v13);
      result = sub_269552378(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_269553440(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2695526CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269552748()
{
  result = qword_28031C4F8;
  if (!qword_28031C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C4F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SRUIFProtectedVariableWriteResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SRUIFProtectedVariableWriteResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinating.deviceSupportsProtectedValue()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269552A28;

  return v7(a1, a2);
}

uint64_t sub_269552A28(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinating.protectedValue()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2695535B8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinating.reset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2695535C0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinator.protectedValue()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269552EDC;

  return v5();
}

uint64_t sub_269552EDC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of SRUIFProtectedVariableCoordinator.reset()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2695521C0;

  return v5();
}

unint64_t sub_269553174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C820, &unk_269567480);
    v3 = sub_269562E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2695523BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_269553278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C500, &qword_269567970);
    v3 = sub_269562E20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2695523BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2695533D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4E0, &unk_2695672D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_269553440(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_269553564()
{
  result = qword_280D00238;
  if (!qword_280D00238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D00238);
  }

  return result;
}

uint64_t sub_2695535C8()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_280D002B0);
  __swift_project_value_buffer(v0, qword_280D002B0);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

uint64_t sub_26955365C()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_28031CF48);
  __swift_project_value_buffer(v0, qword_28031CF48);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

uint64_t ResponseCoordinationMarkAnnotation.markName.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static ResponseCoordinationMarkAnnotation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_269562E30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_269553780(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_269562E30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2695537F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269553838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2695538BC(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C540, &qword_269567598);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C548, &unk_2695675A0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_269553A04(uint64_t a1, unint64_t a2, int a3)
{
  v151 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C518, &qword_269567540);
  v155 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v150 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v143 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C520, &qword_269567548);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v143 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C528, &qword_269567550);
  sub_269562A90();
  *&v160 = a1;
  *(&v160 + 1) = a2;
  v148 = a2;
  sub_269554178();
  sub_2695541CC();
  v14 = sub_269562B90();
  (*(v11 + 8))(v13, v10);
  v23 = *(v14 + 16);
  if (v23)
  {
    v152 = a1;
    v24 = 0;
    v156 = 0;
    v154 = v155[2];
    v25 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v144 = v14;
    v26 = v14 + v25;
    v149 = v155[9];
    v153 = (v155 + 1);
    v155 = MEMORY[0x277D84F90];
    v27 = 15;
    *&v22 = 136315138;
    v145 = v22;
    v28 = v148;
    v154(v9, v14 + v25, v5);
    while (1)
    {
      v14 = v9;
      if (sub_269562AB0() >> 14 < v27 >> 14)
      {
        __break(1u);
        goto LABEL_43;
      }

      v57 = sub_269562C00();
      if ((v57 ^ v58) >= 0x4000)
      {
        v65 = v60;
        v66 = MEMORY[0x26D640090]();
        v68 = v67;
        v65, v67, v69, v70, v71, v72, v73, v74;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v79 = v155;
        }

        else
        {
          v79 = sub_2695538BC(0, (v155[2] + 1), 1, v155, v75, v76, v77, v78);
        }

        v81 = v79[2];
        v80 = v79[3];
        if (v81 >= v80 >> 1)
        {
          v79 = sub_2695538BC((v80 > 1), (v81 + 1), 1, v79, v75, v76, v77, v78);
        }

        v79[2] = v81 + 1;
        v155 = v79;
        v82 = &v79[5 * v81];
        v82[4] = v66;
        v82[5] = v68;
        v83 = v156;
        v82[6] = v24;
        v82[7] = v83;
        v82[8] = 0;
        v28 = v148;
      }

      else
      {
        v60, v58, v59, v60, v61, v62, v63, v64;
      }

      swift_getKeyPath();
      sub_269562AA0();

      v84 = v159;
      v85 = v150;
      if (v159)
      {
        break;
      }

      swift_getKeyPath();
      sub_269562AA0();

      v84 = v162;
      if (v162)
      {
        goto LABEL_4;
      }

      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v86 = sub_269562AD0();
      __swift_project_value_buffer(v86, qword_280D002B0);
      v154(v85, v9, v5);
      v87 = v85;
      v88 = sub_269562AC0();
      v89 = sub_269562C90();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *&v160 = v147;
        *v90 = v145;
        *&v157 = sub_269562AB0();
        v146 = sub_269562BC0();
        v92 = v91;
        (*v153)(v87, v5);
        v93 = sub_269523410(v146, v92, &v160);
        v94 = v92;
        v28 = v148;
        v94, v95, v96, v97, v98, v99, v100, v101;
        *(v90 + 4) = v93;
        _os_log_impl(&dword_26951F000, v88, v89, "#response_coordination no name identifier for the parsed mark at index: %s, not adding annotation", v90, 0xCu);
        v102 = v147;
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x26D640DD0](v102, -1, -1);
        MEMORY[0x26D640DD0](v90, -1, -1);

        v156, v103, v104, v105, v106, v107, v108, v109;
      }

      else
      {

        v156, v110, v111, v112, v113, v114, v115, v116;
        (*v153)(v87, v5);
      }

      v24 = 0;
      v156 = 0;
LABEL_5:
      v14 = v9;
      v44 = sub_269562AB0();
      if (v151)
      {
        v27 = v45;
      }

      else
      {
        v27 = v44;
      }

      (*v153)(v9, v5);
      v26 += v149;
      if (!--v23)
      {
        v144, v46, v47, v48, v49, v50, v51, v52;
        a1 = v152;
        goto LABEL_29;
      }

      v154(v9, v26, v5);
    }

    v160 = v157;
    v161 = v158;
LABEL_4:
    v24 = MEMORY[0x26D640090](v160, *(&v160 + 1), v161, v84);
    v30 = v29;
    v84, v29, v31, v32, v33, v34, v35, v36;
    v156, v37, v38, v39, v40, v41, v42, v43;
    v156 = v30;
    goto LABEL_5;
  }

  v14, v15, v16, v17, v18, v19, v20, v21;
  v24 = 0;
  v156 = 0;
  v155 = MEMORY[0x277D84F90];
  v27 = 15;
  v28 = v148;
LABEL_29:
  v117 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v117 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v117 < v27 >> 14)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v137 = sub_2695538BC(0, (v155[2] + 1), 1, v155, v53, v54, v55, v56);
    goto LABEL_38;
  }

  v118 = sub_269562C00();
  if ((v118 ^ v119) >> 14)
  {
    v126 = v121;
    v27 = MEMORY[0x26D640090]();
    v14 = v127;
    v126, v127, v128, v129, v130, v131, v132, v133;
  }

  else
  {
    v121, v119, v120, v121, v122, v123, v124, v125;
    if (!v156)
    {
      return v155;
    }

    v27 = 0;
    v14 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

  v137 = v155;
LABEL_38:
  v139 = v137[2];
  v138 = v137[3];
  if (v139 >= v138 >> 1)
  {
    v137 = sub_2695538BC((v138 > 1), (v139 + 1), 1, v137, v53, v54, v55, v56);
  }

  v140 = v156;
  v156, v134, v135, v136, v53, v54, v55, v56;
  result = v137;
  v137[2] = v139 + 1;
  v142 = &v137[5 * v139];
  v142[4] = v27;
  v142[5] = v14;
  v142[6] = v24;
  v142[7] = v140;
  v142[8] = 0;
  return result;
}

unint64_t sub_269554178()
{
  result = qword_28031C530;
  if (!qword_28031C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C530);
  }

  return result;
}

unint64_t sub_2695541CC()
{
  result = qword_28031C538;
  if (!qword_28031C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C520, &qword_269567548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C538);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_269554278@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_2695542F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary + 8);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier + 8);
  if (!v2)
  {

    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v4 = sub_269562BA0();
  v2, v5, v6, v7, v8, v9, v10, v11;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_269562BA0();
  v3, v13, v14, v15, v16, v17, v18, v19;
LABEL_6:
  v20 = [objc_allocWithZone(SRUIFLatencyInformation) initWithLatencySummary:v4 taskIdentifier:v12 shouldShow:v1 >= 0.6];

  return v20;
}

void sub_26955443C(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = (v8 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier);
  v12 = *(v8 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier + 8);
  if (!v12 || (*v11 == a1 ? (v13 = v12 == a2) : (v13 = 0), !v13 && (sub_269562E30() & 1) == 0))
  {
    v14 = (v8 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary);
    v15 = *(v8 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary + 8);
    *v14 = 0;
    v14[1] = 0;
    v15, a2, a3, v12, a5, a6, a7, a8;
    *(v8 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType) = 0;
    *(v8 + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress) = 0;
  }

  v16 = v11[1];
  *v11 = a1;
  v11[1] = a2;

  v16, v17, v18, v19, v20, v21, v22, v23;
}

void sub_26955455C(void *a1)
{
  v3 = sub_269562A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 progress];
  if (v7 > 0.0)
  {
    [a1 progress];
    *&v1[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress] = v8;
    v9 = [a1 progressDescription];
    if (v9)
    {
      v10 = v1;
      v11 = v9;
      v12 = sub_269562BB0();
      v14 = v13;

      v42[0] = v12;
      v42[1] = v14;
      sub_2695629F0();
      sub_269554AAC();
      v15 = sub_269562D40();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v14, v18, v19, v20, v21, v22, v23, v24;
      v32 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v32 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v1 = v10;
        v33 = &v10[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary];
        v34 = *&v10[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary + 8];
        *v33 = v15;
        v33[1] = v17;
        v34, v25, v26, v27, v28, v29, v30, v31;
        v10[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType] = 1;
      }

      else
      {
        v17, v25, v26, v27, v28, v29, v30, v31;
        v1 = v10;
      }
    }

    if (qword_28031C498 != -1)
    {
      swift_once();
    }

    v35 = sub_269562AD0();
    __swift_project_value_buffer(v35, qword_28031CF60);
    v36 = v1;
    v37 = sub_269562AC0();
    v38 = sub_269562CA0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = sub_2695542F4();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&dword_26951F000, v37, v38, "Processsing latency progress update: %@", v39, 0xCu);
      sub_269554A44(v40);
      MEMORY[0x26D640DD0](v40, -1, -1);
      MEMORY[0x26D640DD0](v39, -1, -1);
    }
  }
}

id SRUIFLatencyStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SRUIFLatencyStateManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress] = 0;
  v0[OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SRUIFLatencyStateManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SRUIFLatencyStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRUIFLatencyStateManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2695549AC()
{
  v0 = sub_269562AD0();
  __swift_allocate_value_buffer(v0, qword_28031CF60);
  __swift_project_value_buffer(v0, qword_28031CF60);
  sub_269553564();
  sub_269562D20();
  return sub_269562AE0();
}

uint64_t sub_269554A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C4E8, &unk_2695675B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269554AAC()
{
  result = qword_28031C570;
  if (!qword_28031C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C570);
  }

  return result;
}

unint64_t sub_269554BC4()
{
  result = qword_28031C578;
  if (!qword_28031C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C578);
  }

  return result;
}

uint64_t withCheckedThrowingCancellingContinuation<A>(isolation:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_269562C20();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[10] = v9;
  v8[11] = v11;

  return MEMORY[0x2822009F8](sub_269554CBC, v9, v11);
}

uint64_t sub_269554CBC()
{
  v19 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
  v17 = *(v0 + 56);
  SafeSingleCheckedContinuation.init()(v6, v18);
  v7 = v18[0];
  v8 = v18[1];
  *(v0 + 96) = v18[0];
  *(v0 + 104) = v8;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 72) = v17;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  v10[2] = v1;
  v10[3] = v3;
  v10[4] = v2;
  v10[5] = v7;
  v10[6] = v8;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_269554E38;
  v12 = *(v0 + 72);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);

  return MEMORY[0x282200830](v15, &unk_269567708, v9, sub_269555BC8, v10, v13, v14, v12);
}

uint64_t sub_269554E38()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_269554FC8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_269554F5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_269554F5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269554FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SafeSingleCheckedContinuation.init()@<X0>(uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v24 = a4;
  v5 = sub_269562C50();
  v6 = sub_269562D30();
  v23 = sub_269562D30();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v23 - v10;
  v12 = *(v23 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v23 - v14;
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v23 - v17;
  (*(*(v5 - 8) + 56))(&v23 - v17, 1, 1, v5);
  (*(*(a2 - 8) + 56))(v15, 1, 1, a2);
  v19 = *(TupleTypeMetadata2 + 48);
  (*(v16 + 32))(v11, v18, v6);
  (*(v12 + 32))(&v11[v19], v15, v23);
  v20 = sub_269556DC8(v11, TupleTypeMetadata2);
  (*(v8 + 8))(v11, TupleTypeMetadata2);
  v21 = v24;
  *v24 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28031C580, &qword_269567710);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 1;
  v21[1] = result;
  return result;
}

uint64_t sub_269555338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_269562C20();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[12] = v9;
  v8[13] = v11;

  return MEMORY[0x2822009F8](sub_2695553E4, v9, v11);
}

uint64_t sub_2695553E4()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_2695554C8;
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A0](v11, v9, v10, v7, v8, sub_2695570A4, v2, v6);
}

uint64_t sub_2695554C8()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];

    return MEMORY[0x2822009F8](sub_269555600, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_269555600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269555664(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2695521C0;

  return sub_269555338(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_269555754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C508, &unk_269567980);
  v11 = sub_269562C50();
  v12 = sub_269562D30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  v21 = a2;
  v22 = a3;
  v16 = *(v11 - 8);
  (*(v16 + 16))(&v19 - v14, a1, v11);
  (*(v16 + 56))(v15, 0, 1, v11);
  v17 = type metadata accessor for SafeSingleCheckedContinuation(0, a6, v10, MEMORY[0x277D84950]);
  SafeSingleCheckedContinuation.setContinuation(_:)(v15, v17);
  (*(v13 + 8))(v15, v12);
  v21 = a2;
  v22 = a3;
  return v20(&v21);
}

void SafeSingleCheckedContinuation.setContinuation(_:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  sub_269562C50();
  sub_269562D30();
  sub_269562D30();
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_269556E44(v3 + v4, &v6);
  os_unfair_lock_unlock((v3 + v5));
}

void sub_2695559E8(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_28031C490 != -1)
  {
    swift_once();
  }

  v10 = sub_269562AD0();
  __swift_project_value_buffer(v10, qword_28031CF48);

  v11 = sub_269562AC0();
  v12 = sub_269562C80();
  a2, v13, v14, v15, v16, v17, v18, v19;
  if (os_log_type_enabled(v11, v12))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_269523410(a1, a2, v26);
    _os_log_impl(&dword_26951F000, v11, v12, "Detected Cancellation %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D640DD0](v21, -1, -1);
    MEMORY[0x26D640DD0](v20, -1, -1);
  }

  v26[0] = a3;
  v26[1] = a4;
  sub_269562C60();
  sub_26955704C();
  v22 = swift_allocError();
  sub_269562B60();
  v25 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C508, &unk_269567980);
  v24 = type metadata accessor for SafeSingleCheckedContinuation(0, a5, v23, MEMORY[0x277D84950]);
  SafeSingleCheckedContinuation.cancel(_:)(&v25, v24);
}

void SafeSingleCheckedContinuation.cancel(_:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = v2[1];
  os_unfair_lock_lock((v4 + 20));
  if (*(v4 + 16))
  {
    *(v4 + 16) = 0;
    os_unfair_lock_unlock((v4 + 20));
    MEMORY[0x28223BE20](v5);
    sub_269562C50();
    sub_269562D30();
    sub_269562D30();
    v6 = *(*v3 + *MEMORY[0x277D841D0] + 16);
    v7 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v7));
    sub_269556E64(v3 + v6);
    os_unfair_lock_unlock((v3 + v7));
  }

  else
  {

    os_unfair_lock_unlock((v4 + 20));
  }
}

uint64_t SafeSingleCheckedContinuation.init(continuation:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v27 = a5;
  v28 = a1;
  v6 = sub_269562C50();
  v7 = sub_269562D30();
  v25 = sub_269562D30();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v25 - v10;
  v12 = *(v25 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v25 - v14;
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(v6 - 8);
  (*(v19 + 16))(&v25 - v17, v28, v6);
  (*(v19 + 56))(v18, 0, 1, v6);
  (*(*(a3 - 8) + 56))(v15, 1, 1, a3);
  v20 = *(TupleTypeMetadata2 + 48);
  (*(v16 + 32))(v11, v18, v7);
  (*(v12 + 32))(&v11[v20], v15, v25);
  v21 = sub_269556DC8(v11, TupleTypeMetadata2);
  (*(v26 + 8))(v11, TupleTypeMetadata2);
  v22 = v27;
  *v27 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28031C580, &qword_269567710);
  v23 = swift_allocObject();
  *(v23 + 20) = 0;
  result = (*(v19 + 8))(v28, v6);
  *(v23 + 16) = 1;
  v22[1] = v23;
  return result;
}

uint64_t sub_26955604C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char *a6@<X8>)
{
  v30 = a2;
  v32 = a6;
  v29 = sub_269562C50();
  v8 = sub_269562D30();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v28 = &v27 - v9;
  v10 = sub_269562D30();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(a4 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v27 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(v11 + 16))(v14, a1 + *(TupleTypeMetadata2 + 48), v10);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v11 + 8))(v14, v10);
    result = (*(v31 + 24))(a1, v30, v8);
LABEL_6:
    v26 = 0;
    goto LABEL_7;
  }

  (*(v15 + 32))(v19, v14, a4);
  v22 = v31;
  v23 = v28;
  (*(v31 + 16))(v28, v30, v8);
  v24 = v29;
  v25 = *(v29 - 8);
  if ((*(v25 + 48))(v23, 1, v29) != 1)
  {
    (*(v15 + 16))(v27, v19, a4);
    sub_269562C30();
    (*(v15 + 8))(v19, a4);
    result = (*(v25 + 8))(v23, v24);
    goto LABEL_6;
  }

  (*(v15 + 8))(v19, a4);
  result = (*(v22 + 8))(v23, v8);
  v26 = 1;
LABEL_7:
  *v32 = v26;
  return result;
}

void SafeSingleCheckedContinuation.resume(returning:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = v2[1];
  os_unfair_lock_lock((v4 + 20));
  if (*(v4 + 16))
  {
    *(v4 + 16) = 0;
    os_unfair_lock_unlock((v4 + 20));
    MEMORY[0x28223BE20](v5);
    sub_269562C50();
    sub_269562D30();
    sub_269562D30();
    v6 = *(*v3 + *MEMORY[0x277D841D0] + 16);
    v7 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v7));
    sub_269556E84(v3 + v6);
    os_unfair_lock_unlock((v3 + v7));
  }

  else
  {

    os_unfair_lock_unlock((v4 + 20));
  }
}

uint64_t sub_269556568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269562C50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  if (!(*(v10 + 48))(a1, 1, v9))
  {
    (*(v10 + 16))(v12, a1, v9);
    (*(v6 + 16))(v8, a2, a3);
    sub_269562C40();
    (*(v10 + 8))(v12, v9);
  }

  v13 = sub_269562D30();
  (*(*(v13 - 8) + 8))(a1, v13);
  return (*(v10 + 56))(a1, 1, 1, v9);
}

void SafeSingleCheckedContinuation.resume(throwing:caller:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *v4;
  v6 = v4[1];
  os_unfair_lock_lock((v6 + 20));
  if (*(v6 + 16))
  {
    *(v6 + 16) = 0;
    os_unfair_lock_unlock((v6 + 20));
    MEMORY[0x28223BE20](v7);
    sub_269562C50();
    sub_269562D30();
    sub_269562D30();
    v8 = *(*v5 + *MEMORY[0x277D841D0] + 16);
    v9 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v5 + v9));
    sub_269556EA4(v5 + v8);
    os_unfair_lock_unlock((v5 + v9));
  }

  else
  {

    os_unfair_lock_unlock((v6 + 20));
  }
}

uint64_t sub_2695568D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269562C50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  if (!(*(v11 + 48))(a1, 1, v10))
  {
    (*(v11 + 16))(v13, a1, v10);
    (*(v7 + 16))(v9, a2, a4);
    sub_269562C30();
    (*(v11 + 8))(v13, v10);
  }

  v14 = sub_269562D30();
  (*(*(v14 - 8) + 8))(a1, v14);
  return (*(v11 + 56))(a1, 1, 1, v10);
}

uint64_t sub_269556AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269562C50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  if (!(*(v11 + 48))(a1, 1, v10))
  {
    (*(v11 + 16))(v13, a1, v10);
    (*(v7 + 16))(v9, a2, a4);
    sub_269562C30();
    (*(v11 + 8))(v13, v10);
  }

  v14 = sub_269562D30();
  (*(*(v14 - 8) + 8))(a1, v14);
  (*(v11 + 56))(a1, 1, 1, v10);
  v15 = sub_269562D30();
  v16 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v15 - 8) + 8))(a1 + v16, v15);
  (*(v7 + 16))(a1 + v16, a2, a4);
  return (*(v7 + 56))(a1 + v16, 0, 1, a4);
}

uint64_t sub_269556DC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_269562DD0();
  return sub_269562DC0();
}

uint64_t sub_269556EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_269556F18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269556F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269556FB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

unint64_t sub_26955704C()
{
  result = qword_28031C608;
  if (!qword_28031C608)
  {
    sub_269562C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C608);
  }

  return result;
}

uint64_t sub_2695570F4()
{
  sub_269562E70();
  sub_269562BE0();
  return sub_269562E90();
}

uint64_t sub_269557140(uint64_t a1)
{
  sub_269562E70();
  sub_269562BE0();
  return sub_269562E90();
}

uint64_t sub_269557188(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_269562E30();
  }
}

void sub_2695571B8(uint64_t a1)
{
  if ([*(v1 + 48) count] >= 1)
  {
    v3 = *(v1 + 48);
    v4 = [v3 count];
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v5 = [v3 objectAtIndex_];

      if (v5)
      {
        v5[9] = a1;

        goto LABEL_5;
      }
    }

    __break(1u);
    return;
  }

LABEL_5:
  v6 = *(v1 + 48);

  [v6 enqueueObject_];
}

uint64_t sub_269557280(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_269525B8C(*(v8 + 32), *(v8 + 40));

  *(v8 + 64), v9, v10, v11, v12, v13, v14, v15;

  return MEMORY[0x2821FE8D8](v8, 98, 7);
}

void *sub_2695572D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 56), v16, v17, v18, v19, v20, v21, v22;
  v23 = *(v8 + 72);
  *(v8 + 72) = 0;

  if (v23)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v24 = *(v23 + 72);
      swift_retain_n();

      v23 = v24;
    }

    while (v24);
  }

  return v8;
}

uint64_t sub_269557360(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_2695572D0(a1, a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8D8](v8, 80, 7);
}

id sub_2695573E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_2695574F8(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id SRUIFMarkerCapableSpeechSynthesizer.audioSessionID.getter()
{
  v1 = [v0 synthesizer];
  v2 = [v1 audioSessionID];

  return v2;
}

void SRUIFMarkerCapableSpeechSynthesizer.audioSessionID.setter(uint64_t a1)
{
  v3 = [v1 synthesizer];
  [v3 setAudioSessionID_];
}

char *sub_2695576DC(void *a1)
{
  v2 = v1;
  v4 = sub_269562CD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269562CC0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_269562B30();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_queue;
  sub_26955FCF4(0, &qword_28031C798, 0x277D85C78);
  sub_269562B20();
  sub_269562CB0();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v4);
  *&v2[v10] = sub_269562D00();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  v12 = MEMORY[0x277D84F90];
  *&v2[v11] = sub_269553174(MEMORY[0x277D84F90]);
  v13 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  *&v2[v13] = sub_269553278(v12);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v14 = sub_269562AD0();
  __swift_project_value_buffer(v14, qword_280D002B0);
  v15 = sub_269562AC0();
  v16 = sub_269562C70();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26951F000, v15, v16, "#response_coordination init'd SRUIFMarkerCapableSpeechSynthesizer", v17, 2u);
    MEMORY[0x26D640DD0](v17, -1, -1);
  }

  *&v2[OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_synthesizer] = a1;
  v24.receiver = v2;
  v24.super_class = SRUIFMarkerCapableSpeechSynthesizer;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v24, sel_init);
  v20 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_synthesizer;
  v21 = *&v19[OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_synthesizer];
  v22 = v19;
  [v21 setDelegate_];
  [*&v19[v20] setClientStateManagerDelegate_];

  return v22;
}

uint64_t sub_269557A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269562B40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = [v3 queue];
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_269562B50();
  result = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v12 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  swift_beginAccess();
  v13 = *&v3[v12];
  if (*(v13 + 16) && (v14 = sub_2695535C4(), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 16 * v14 + 8);
    swift_endAccess();
    v17 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
    swift_beginAccess();
    v18 = *&v3[v17];
    v19 = *(v18 + 16);

    if (v19)
    {
      v20 = sub_2695535C4();
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);
        swift_endAccess();

        v16, v23, v24, v25, v26, v27, v28, v29;
        result = [*(v22 + 48) count];
        if ((result & 0x8000000000000000) == 0)
        {
          v30 = result;
          if (result)
          {
            for (i = 0; v30 != i; ++i)
            {
              v32 = [*(v22 + 48) objectAtIndex_];
              if (v32)
              {
                v33 = v32;
                v34 = v32[4] == a1 && v32[5] == a2;
                if (v34 || (sub_269562E30() & 1) != 0)
                {

                  return v33;
                }
              }
            }
          }

          return 0;
        }

LABEL_24:
        __break(1u);
        return result;
      }
    }

    swift_endAccess();
    v16, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.enqueue(_:)(SRUIFSpeechSynthesisRequest_optional *a1)
{
  v3 = [v1 synthesizer];
  [v3 enqueueSpeechSynthesisRequest_];
}

void SRUIFMarkerCapableSpeechSynthesizer.enqueuePhatic(completion:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 synthesizer];
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_269560300;
    v7[3] = &block_descriptor_0;
    a1 = _Block_copy(v7);
  }

  [v6 enqueuePhaticWithCompletion_];
  _Block_release(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269557FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_269562A10();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.processDelayedItem(_:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v5 = sub_269562B00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_269562B30();
  v9 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 queue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = countAndFlagsBits;
  v14[3] = object;
  v14[4] = v13;
  aBlock[4] = sub_269558624;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269558630;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);

  sub_269562B10();
  v16[1] = MEMORY[0x277D84F90];
  sub_269558674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C628, &qword_269567790);
  sub_2695586CC();
  sub_269562D50();
  MEMORY[0x26D6401B0](0, v11, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16[0]);
}

void sub_2695582E0(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
      swift_beginAccess();
      v8 = *&v6[v7];
      if (*(v8 + 16) && (v9 = sub_2695535C4(), (v10 & 1) != 0))
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();

        v12 = *(v11 + 48);

        v13 = [v12 frontObject];

        if (v13)
        {
          swift_beginAccess();
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            v16 = [v14 synthesizer];

            v17 = *(v13 + 5);

            v18 = sub_269562BA0();
            v17, v19, v20, v21, v22, v23, v24, v25;
            [v16 processDelayedItem_];
          }

          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v26 = sub_269562AD0();
  __swift_project_value_buffer(v26, qword_280D002B0);

  v27 = sub_269562AC0();
  v28 = sub_269562CA0();
  v3, v29, v30, v31, v32, v33, v34, v35;
  if (os_log_type_enabled(v27, v28))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v51[0] = v37;
    *v36 = 136315138;
    if (v3)
    {
      v38 = a1;
    }

    else
    {
      v38 = 7104878;
    }

    if (v3)
    {
      v39 = v3;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    v40 = sub_269523410(v38, v39, v51);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v36 + 4) = v40;
    _os_log_impl(&dword_26951F000, v27, v28, "#response_coordination could not look up delayed item id %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x26D640DD0](v37, -1, -1);
    MEMORY[0x26D640DD0](v36, -1, -1);
  }

  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v50 = [v48 synthesizer];

    if (v3)
    {
      v3 = sub_269562BA0();
    }

    [v50 processDelayedItem_];
  }
}

uint64_t sub_269558630(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_269558674()
{
  result = qword_28031C620;
  if (!qword_28031C620)
  {
    sub_269562B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C620);
  }

  return result;
}

unint64_t sub_2695586CC()
{
  result = qword_28031C630;
  if (!qword_28031C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031C628, &qword_269567790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C630);
  }

  return result;
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.cancel()()
{
  v1 = sub_269562B00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_269562B30();
  v5 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0]);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 queue];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_269558CD8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269558630;
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);

  sub_269562B10();
  v11[1] = MEMORY[0x277D84F90];
  sub_269558674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C628, &qword_269567790);
  sub_2695586CC();
  sub_269562D50();
  MEMORY[0x26D6401B0](0, v7, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11[0]);
}

void sub_2695589E8(uint64_t a1)
{
  if (qword_280D00240 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v2 = sub_269562AD0();
    __swift_project_value_buffer(v2, qword_280D002B0);
    v3 = sub_269562AC0();
    v4 = sub_269562C70();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26951F000, v3, v4, "#response_coordination cancel", v5, 2u);
      MEMORY[0x26D640DD0](v5, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v7 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
    v8 = Strong;
    swift_beginAccess();
    v9 = *&v8[v7];

    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    swift_beginAccess();
    v13 = 0;
    v39 = a1;
    while (v12)
    {
LABEL_13:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v13 << 6);
      v17 = *(*(v9 + 48) + 16 * v16 + 8);
      *(*(*(v9 + 56) + 8 * v16) + 97) = 1;
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;

        v20 = [v19 delegate];

        if (v20)
        {
          v21 = sub_269562BA0();
          v17, v22, v23, v24, v25, v26, v27, v28;
          [v20 speechSynthesisDidStopSpeakingWithIdentifier:v21 queueIsEmpty:1];

          swift_unknownObjectRelease();
        }

        else
        {

          v17, v29, v30, v31, v32, v33, v34, v35;
        }

        a1 = v39;
      }
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= ((v10 + 63) >> 6))
      {

        goto LABEL_19;
      }

      v12 = *(v9 + 64 + 8 * v14);
      ++v13;
      if (v12)
      {
        v13 = v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_19:
  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    v38 = [v36 synthesizer];

    [v38 cancel];
  }
}

void sub_269558D7C(SEL *a1)
{
  v3 = [v1 synthesizer];
  [v3 *a1];
}

void sub_269558DE8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = a1;
  v4 = [v5 synthesizer];
  [v4 *a3];
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.prewarmIfNeededKeepActive(_:)(Swift::Bool a1)
{
  v3 = [v1 synthesizer];
  [v3 prewarmIfNeededKeepActive_];
}

void SRUIFMarkerCapableSpeechSynthesizer.duckTTSVolume(to:rampTime:completion:)(void *a1, uint64_t a2, float a3, double a4)
{
  v5 = v4;
  v10 = [v5 synthesizer];
  if (a1)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_269551D58;
    v12[3] = &block_descriptor_13;
    a1 = _Block_copy(v12);
  }

  *&v11 = a3;
  [v10 duckTTSVolumeTo:a1 rampTime:v11 completion:a4];
  _Block_release(a1);
}

void sub_2695590F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_269562A10();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void SRUIFMarkerCapableSpeechSynthesizer.isSynthesisQueueEmpty(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 synthesizer];
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_269559234;
    v7[3] = &block_descriptor_16;
    a1 = _Block_copy(v7);
  }

  [v6 isSynthesisQueueEmpty_];
  _Block_release(a1);
}

double sub_269559234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void SRUIFMarkerCapableSpeechSynthesizer.enqueue(_:identifier:sessionId:provisionally:eligibleAfterDuration:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6, void *a7, uint64_t a8, double a9)
{
  v10 = v9;
  v18 = [v10 synthesizer];
  if (a3)
  {
    a3 = sub_269562BA0();
  }

  if (a5)
  {
    a5 = sub_269562BA0();
  }

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_269560300;
    v19[3] = &block_descriptor_19;
    a7 = _Block_copy(v19);
  }

  [v18 enqueueAudioData:a1 identifier:a3 sessionId:a5 provisionally:a6 & 1 eligibleAfterDuration:a7 completion:a9];
  _Block_release(a7);
}

void SRUIFMarkerCapableSpeechSynthesizer.enqueueText(_:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:)(void *a1, SRUIFMarkerCapableSpeechSynthesizer *a2, uint64_t a3, SRUIFMarkerCapableSpeechSynthesizer *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(), uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v198 = a7;
  v199 = a6;
  v210 = a1;
  v32 = sub_269562B00();
  v203 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v191 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_269562A50();
  v181 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v189 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v211 = a20;
  v35 = sub_269562AD0();
  __swift_project_value_buffer(v35, qword_280D002B0);

  v36 = sub_269562AC0();
  v37 = sub_269562CA0();
  a2, v38, v39, v40, v41, v42, v43, v44;
  a4, v45, v46, v47, v48, v49, v50, v51;
  v52 = os_log_type_enabled(v36, v37);
  v197 = a8;
  v196 = a5;
  v200 = a3;
  v192 = v32;
  v202 = a4;
  v204 = a2;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v193 = v25;
    v55 = v54;
    aBlock = v54;
    *v53 = 136315394;
    if (a4)
    {
      v56 = a3;
    }

    else
    {
      v56 = 7104878;
    }

    if (a4)
    {
      v57 = a4;
    }

    else
    {
      v57 = 0xE300000000000000;
    }

    v58 = sub_269523410(v56, v57, &aBlock);
    v57, v59, v60, v61, v62, v63, v64, v65;
    *(v53 + 4) = v58;
    *(v53 + 12) = 2080;
    if (a2)
    {
      v66 = v210;
    }

    else
    {
      v66 = 7104878;
    }

    if (a2)
    {
      v67 = a2;
    }

    else
    {
      v67 = 0xE300000000000000;
    }

    v68 = sub_269523410(v66, v67, &aBlock);
    v67, v69, v70, v71, v72, v73, v74, v75;
    *(v53 + 14) = v68;
    _os_log_impl(&dword_26951F000, v36, v37, "#response_coordination incoming enqueueText (id=%s: %s)", v53, 0x16u);
    swift_arrayDestroy();
    v76 = v193;
    MEMORY[0x26D640DD0](v55, -1, -1);
    MEMORY[0x26D640DD0](v53, -1, -1);
  }

  else
  {
    v76 = v25;
  }

  v205 = a22;
  v201 = a23;
  LODWORD(v208) = a16;
  LODWORD(v207) = a15;
  LODWORD(v206) = a18;
  v209 = a21;
  if (v211)
  {
    v77 = [v76 delegate];
    if (v77)
    {
      v210 = v77;
      v211 = sub_269562BA0();
      v78 = swift_allocObject();
      *(v78 + 16) = v206 & 1;
      v79 = v200;
      *(v78 + 24) = v76;
      *(v78 + 32) = v79;
      v80 = v196;
      *(v78 + 40) = v202;
      *(v78 + 48) = v80;
      v195 = a24;
      v81 = v198;
      *(v78 + 56) = v199;
      *(v78 + 64) = v81;
      *(v78 + 72) = v197;
      *(v78 + 80) = a10;
      *(v78 + 88) = a11;
      *(v78 + 96) = a12;
      v194 = a12;
      *(v78 + 104) = a13;
      *(v78 + 112) = a14;
      *(v78 + 120) = v207 & 1;
      *(v78 + 121) = v208 & 1;
      *(v78 + 128) = a9;
      *(v78 + 136) = a17 & 1;
      v82 = v209;
      v83 = v205;
      *(v78 + 144) = v209;
      *(v78 + 152) = v83;
      *(v78 + 160) = v201;
      *(v78 + 168) = a24;
      v217 = sub_26955FA58;
      v218 = v78;
      aBlock = MEMORY[0x277D85DD0];
      v214 = 1107296256;
      v215 = sub_26955AC58;
      v216 = &block_descriptor_32;
      v84 = _Block_copy(&aBlock);

      v85 = v76;

      v86 = v81;

      sub_26955FA04(v82, v83);

      v87 = v211;
      [v210 speechSynthesisGetPreparedTextForIdentifier:v211 completion:v84];
      swift_unknownObjectRelease();
      _Block_release(v84);
    }

    return;
  }

  v185 = a11;
  v186 = a13;
  v187 = a10;
  v188 = a14;
  v194 = a12;
  v88 = v204;
  v195 = a24;
  LODWORD(v193) = a17;
  if (!v204 || !v202)
  {
    v159 = [v76 synthesizer];
    if (v88)
    {
      v160 = sub_269562BA0();
      if (v202)
      {
LABEL_32:
        v161 = sub_269562BA0();
        goto LABEL_35;
      }
    }

    else
    {
      v160 = 0;
      if (v202)
      {
        goto LABEL_32;
      }
    }

    v161 = 0;
LABEL_35:
    if (v199)
    {
      v162 = sub_269562BA0();
    }

    else
    {
      v162 = 0;
    }

    if (v187)
    {
      v163 = sub_269562BA0();
    }

    else
    {
      v163 = 0;
    }

    if (v194)
    {
      v164 = sub_269562BA0();
    }

    else
    {
      v164 = 0;
    }

    if (v188)
    {
      v165 = sub_269562BA0();
      v166 = v209;
      if (v209)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v165 = 0;
      v166 = v209;
      if (v209)
      {
LABEL_46:
        v217 = v166;
        v218 = v205;
        aBlock = MEMORY[0x277D85DD0];
        v214 = 1107296256;
        v215 = sub_269560300;
        v216 = &block_descriptor_22;
        v167 = _Block_copy(&aBlock);

        if (v201)
        {
LABEL_47:
          v168 = sub_269562B70();
LABEL_51:
          if (v195)
          {
            v169 = sub_269562B70();
          }

          else
          {
            v169 = 0;
          }

          BYTE3(v171) = v206 & 1;
          BYTE2(v171) = v193 & 1;
          BYTE1(v171) = v208 & 1;
          LOBYTE(v171) = v207 & 1;
          [v159 enqueueText:v160 identifier:v161 sessionId:v162 preferredVoice:v198 language:v163 gender:v164 promptStyle:a9 isPhonetic:v165 provisionally:v171 eligibleAfterDuration:0 delayed:v167 canUseServerTTS:v168 preparationIdentifier:v169 completion:? analyticsContext:? speakableContextInfo:?];

          _Block_release(v167);
          return;
        }

LABEL_50:
        v168 = 0;
        goto LABEL_51;
      }
    }

    v167 = 0;
    if (v201)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v183 = a19;

  v89 = v210;
  v90 = sub_269553A04(v210, v88, 1);
  v91 = objc_allocWithZone(MEMORY[0x277CEF370]);
  v92 = v202;
  swift_bridgeObjectRetain_n();
  v93 = [v91 init];
  _s9SupertaskCMa();
  v94 = swift_allocObject();
  v95 = v88;
  v96 = v94;
  *(v94 + 80) = 1;
  *(v94 + 88) = 0;
  *(v94 + 96) = 1;
  v97 = v200;
  *(v94 + 16) = v200;
  *(v94 + 24) = v92;
  *(v94 + 64) = v95;
  *(v94 + 72) = 0;
  v98 = v209;
  v99 = v205;
  *(v94 + 32) = v209;
  *(v94 + 40) = v99;
  *(v94 + 48) = v93;
  *(v94 + 56) = v89;
  v100 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  sub_26955FA04(v98, v99);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v212 = *&v76[v100];
  *&v76[v100] = 0x8000000000000000;
  sub_26955F3F4(v96, v97, v92, isUniquelyReferenced_nonNull_native);
  v92, v102, v103, v104, v105, v106, v107, v108;
  *&v76[v100] = v212;
  swift_endAccess();
  v184 = v90;
  v116 = *(v90 + 2);
  if (v116)
  {
    v117 = 0;
    v118 = 0;
    ++v181;
    v180 = v207 & 1;
    v179 = v208 & 1;
    v178 = v193 & 1;
    v177 = v206 & 1;
    v176 = (v203 + 8);
    v119 = (v184 + 64);
    v193 = v76;
    v182 = v116;
    do
    {
      v210 = v117;
      v211 = v117 + 1;
      v120 = *(v119 - 4);
      v121 = *(v119 - 3);
      v208 = v118;
      v209 = v120;
      v122 = *(v119 - 2);
      v123 = *(v119 - 1);
      v205 = v122;
      v206 = v121;
      v124 = v117 == 0;
      LODWORD(v203) = v117 == 0;
      v207 = *v119;

      v125 = v189;
      sub_269562A40();
      v126 = sub_269562A30();
      v128 = v127;
      (*v181)(v125, v190);
      if (v123)
      {
        v129 = v122;
      }

      else
      {
        v129 = 0;
      }

      _s7SubtaskCMa();
      v130 = swift_allocObject();
      *(v130 + 72) = 0;
      v131 = v200;
      v132 = v202;
      *(v130 + 16) = v200;
      *(v130 + 24) = v132;
      *(v130 + 32) = v126;
      *(v130 + 40) = v128;
      *(v130 + 48) = v129;
      *(v130 + 56) = v123;
      *(v130 + 64) = v124;
      v133 = swift_allocObject();

      v134 = v193;
      swift_unknownObjectWeakInit();
      v135 = swift_allocObject();
      *(v135 + 16) = v133;
      *(v135 + 24) = v130;

      v136 = [v134 queue];
      v137 = v191;
      v138 = sub_269562AF0();
      v204 = &v175;
      MEMORY[0x28223BE20](v138);
      *(&v175 - 30) = v134;
      *(&v175 - 29) = v130;
      *(&v175 - 28) = v131;
      *(&v175 - 27) = v132;
      v139 = v206;
      *(&v175 - 26) = v209;
      *(&v175 - 25) = v139;
      *(&v175 - 24) = v205;
      *(&v175 - 23) = v123;
      v140 = v198;
      v141 = v196;
      *(&v175 - 22) = v207;
      *(&v175 - 21) = v141;
      *(&v175 - 20) = v199;
      *(&v175 - 19) = v140;
      v142 = v187;
      *(&v175 - 18) = v197;
      *(&v175 - 17) = v142;
      v143 = v194;
      *(&v175 - 16) = v185;
      *(&v175 - 15) = v143;
      v144 = v188;
      *(&v175 - 14) = v186;
      *(&v175 - 13) = v144;
      *(&v175 - 96) = v180;
      *(&v175 - 95) = v179;
      *(&v175 - 11) = a9;
      *(&v175 - 80) = v203;
      *(&v175 - 79) = v178;
      *(&v175 - 78) = v177;
      *(&v175 - 9) = v183;
      *(&v175 - 8) = 0;
      *(&v175 - 7) = sub_26955FA38;
      v170 = v135;
      v171 = v201;
      v172 = v195;
      v173 = v210;
      v174 = v184;
      v118 = v208;
      sub_269562CE0();

      v123, v145, v146, v147, v148, v149, v150, v151;
      v139, v152, v153, v154, v155, v156, v157, v158;

      (*v176)(v137, v192);
      v119 += 5;
      v117 = v211;
    }

    while (v182 != v211);
  }

  v184, v109, v110, v111, v112, v113, v114, v115;
}

void sub_26955A324(uint64_t a1, unint64_t a2, int a3, int a4, char *a5, uint64_t a6, SRUIFMarkerCapableSpeechSynthesizer *a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v139 = a8;
  v145 = a6;
  v143 = a24;
  v142 = a23;
  v153 = a21;
  LODWORD(v152) = a20;
  LODWORD(v151) = a19;
  LODWORD(v150) = a18;
  v141 = a17;
  v134 = a16;
  v140 = a15;
  v135 = a14;
  v138 = a13;
  v137 = a12;
  v136 = a10;
  v31 = sub_269562B00();
  v148 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_269562A50();
  v35 = MEMORY[0x28223BE20](v34);
  LODWORD(v149) = a4 & (a3 ^ 1);
  v38 = a7;
  if (!a2 || !a7)
  {
    v103 = [a5 synthesizer];
    if (a2)
    {
      v104 = sub_269562BA0();
    }

    else
    {
      v104 = 0;
    }

    if (v38)
    {
      v105 = sub_269562BA0();
    }

    else
    {
      v105 = 0;
    }

    v133 = a11;
    if (v136)
    {
      v106 = sub_269562BA0();
    }

    else
    {
      v106 = 0;
    }

    if (v138)
    {
      v107 = sub_269562BA0();
    }

    else
    {
      v107 = 0;
    }

    if (v140)
    {
      v108 = sub_269562BA0();
    }

    else
    {
      v108 = 0;
    }

    if (v141)
    {
      v109 = sub_269562BA0();
      v110 = v153;
      if (v153)
      {
LABEL_27:
        aBlock[4] = v110;
        aBlock[5] = a22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_269560300;
        aBlock[3] = &block_descriptor_113;
        v111 = _Block_copy(aBlock);

        goto LABEL_30;
      }
    }

    else
    {
      v109 = 0;
      v110 = v153;
      if (v153)
      {
        goto LABEL_27;
      }
    }

    v111 = 0;
LABEL_30:
    if (v142)
    {
      v112 = sub_269562B70();
      if (v143)
      {
LABEL_32:
        v113 = sub_269562B70();
LABEL_35:
        BYTE3(v115) = v149 & 1;
        BYTE2(v115) = v152 & 1;
        BYTE1(v115) = v151 & 1;
        LOBYTE(v115) = v150 & 1;
        [v103 enqueueText:v104 identifier:v105 sessionId:v106 preferredVoice:v133 language:v107 gender:v108 promptStyle:a9 isPhonetic:v109 provisionally:v115 eligibleAfterDuration:0 delayed:v111 canUseServerTTS:v112 preparationIdentifier:v113 completion:? analyticsContext:? speakableContextInfo:?];

        _Block_release(v111);
        return;
      }
    }

    else
    {
      v112 = 0;
      if (v143)
      {
        goto LABEL_32;
      }
    }

    v113 = 0;
    goto LABEL_35;
  }

  v147 = v37;
  v129 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v35;
  v131 = v33;
  v132 = v31;

  v144 = sub_269553A04(a1, a2, 1);
  v39 = objc_allocWithZone(MEMORY[0x277CEF370]);
  swift_bridgeObjectRetain_n();
  v40 = [v39 init];
  _s9SupertaskCMa();
  v41 = swift_allocObject();
  *(v41 + 80) = 1;
  *(v41 + 88) = 0;
  *(v41 + 96) = 1;
  v42 = v145;
  *(v41 + 16) = v145;
  *(v41 + 24) = a7;
  *(v41 + 64) = a2;
  *(v41 + 72) = 0;
  v43 = v153;
  *(v41 + 32) = v153;
  *(v41 + 40) = a22;
  *(v41 + 48) = v40;
  *(v41 + 56) = a1;
  v44 = a7;
  v45 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  sub_26955FA04(v43, a22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v154 = *&a5[v45];
  *&a5[v45] = 0x8000000000000000;
  sub_26955F3F4(v41, v42, v44, isUniquelyReferenced_nonNull_native);
  v44, v47, v48, v49, v50, v51, v52, v53;
  *&a5[v45] = v154;
  swift_endAccess();
  v61 = *(v144 + 2);
  if (v61)
  {
    v62 = 0;
    v63 = 0;
    v127 = (v147 + 1);
    v126 = v150 & 1;
    v125 = v151 & 1;
    v124 = v152 & 1;
    v123 = v149 & 1;
    v122 = (v148 + 8);
    v121 = a5;
    v64 = (v144 + 64);
    v120 = v44;
    v133 = a11;
    v128 = v61;
    do
    {
      v152 = v63;
      v153 = v62 + 1;
      v65 = *(v64 - 4);
      v66 = *(v64 - 3);
      v67 = *(v64 - 2);
      v68 = *(v64 - 1);
      v148 = v67;
      v149 = v66;
      v146 = v62 == 0;
      v150 = *v64;
      v151 = v65;

      v69 = v129;
      sub_269562A40();
      v70 = sub_269562A30();
      v72 = v71;
      (*v127)(v69, v130);
      if (v68)
      {
        v73 = v67;
      }

      else
      {
        v73 = 0;
      }

      _s7SubtaskCMa();
      v74 = swift_allocObject();
      *(v74 + 72) = 0;
      v75 = v145;
      v76 = v120;
      *(v74 + 16) = v145;
      *(v74 + 24) = v76;
      *(v74 + 32) = v70;
      *(v74 + 40) = v72;
      *(v74 + 48) = v73;
      *(v74 + 56) = v68;
      *(v74 + 64) = v62 == 0;
      v77 = swift_allocObject();

      v78 = v121;
      swift_unknownObjectWeakInit();
      v79 = swift_allocObject();
      *(v79 + 16) = v77;
      *(v79 + 24) = v74;

      v80 = [v78 queue];
      v81 = v131;
      v82 = sub_269562AF0();
      v147 = &v119;
      MEMORY[0x28223BE20](v82);
      *(&v119 - 30) = v78;
      *(&v119 - 29) = v74;
      *(&v119 - 28) = v75;
      *(&v119 - 27) = v76;
      v83 = v149;
      *(&v119 - 26) = v151;
      *(&v119 - 25) = v83;
      *(&v119 - 24) = v148;
      *(&v119 - 23) = v68;
      v84 = v133;
      v85 = v139;
      *(&v119 - 22) = v150;
      *(&v119 - 21) = v85;
      *(&v119 - 20) = v136;
      *(&v119 - 19) = v84;
      v86 = v138;
      *(&v119 - 18) = v137;
      *(&v119 - 17) = v86;
      v87 = v140;
      *(&v119 - 16) = v135;
      *(&v119 - 15) = v87;
      v88 = v141;
      *(&v119 - 14) = v134;
      *(&v119 - 13) = v88;
      *(&v119 - 96) = v126;
      *(&v119 - 95) = v125;
      *(&v119 - 11) = a9;
      *(&v119 - 80) = v146;
      *(&v119 - 79) = v124;
      *(&v119 - 78) = v123;
      *(&v119 - 9) = 0;
      *(&v119 - 8) = 0;
      *(&v119 - 7) = sub_2695602B4;
      v114 = v79;
      v115 = v142;
      v116 = v143;
      v117 = v62;
      v118 = v144;
      v63 = v152;
      sub_269562CE0();

      v68, v89, v90, v91, v92, v93, v94, v95;
      v83, v96, v97, v98, v99, v100, v101, v102;

      (*v122)(v81, v132);
      v64 += 5;
      v62 = v153;
    }

    while (v128 != v153);
  }

  v144, v54, v55, v56, v57, v58, v59, v60;
}

void sub_26955AC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_269562BB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(v5, v7, a3);

  v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_26955B048(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_26955B0C0(uint64_t a1, uint64_t a2, SRUIFMarkerCapableSpeechSynthesizer *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_26955F3F4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_2695535C4();
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_26955F6F8();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_26955F244(v16, v33);
      *v4 = v33;
    }
  }
}

void sub_26955B1B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_26955B230(*(a4 + 32), *(a4 + 40), a1, a2);
  }
}

void sub_26955B230(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_269562B00();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v14 = sub_269562AD0();
  __swift_project_value_buffer(v14, qword_280D002B0);

  v15 = a4;
  v16 = sub_269562AC0();
  v17 = sub_269562C70();
  a2, v18, v19, v20, v21, v22, v23, v24;

  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v63 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v64 = a1;
    v28 = v27;
    v66[0] = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_269523410(v64, a2, v66);
    *(v26 + 12) = 2080;
    v65 = a3;
    type metadata accessor for SRUIFSpeechSynthesisResult(0);
    v29 = sub_269562BC0();
    v62 = v5;
    v31 = v30;
    v32 = sub_269523410(v29, v30, v66);
    v61 = a3;
    v33 = v32;
    v31, v34, v35, v36, v37, v38, v39, v40;
    *(v26 + 14) = v33;
    *(v26 + 22) = 2080;
    v65 = a4;
    v41 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C810, &qword_269567978);
    v42 = sub_269562BC0();
    v44 = v43;
    v45 = sub_269523410(v42, v43, v66);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v26 + 24) = v45;
    v53 = v17;
    v54 = v61;
    v5 = v62;
    _os_log_impl(&dword_26951F000, v16, v53, "#response_coordination speakTextCompletion completion (id = %s): result=%s, error=%s", v26, 0x20u);
    swift_arrayDestroy();
    v55 = v28;
    a1 = v64;
    MEMORY[0x26D640DD0](v55, -1, -1);
    v56 = v26;
    v11 = v63;
    MEMORY[0x26D640DD0](v56, -1, -1);
  }

  else
  {

    v54 = a3;
  }

  v57 = [v5 queue];
  sub_269562AF0();
  v58 = swift_allocObject();
  v59 = swift_unknownObjectWeakInit();
  MEMORY[0x28223BE20](v59);
  *(&v60 - 6) = v58;
  *(&v60 - 5) = a1;
  *(&v60 - 4) = a2;
  *(&v60 - 3) = a4;
  *(&v60 - 2) = v54;
  sub_269562CE0();
  (*(v11 + 8))(v13, v10);
}

void sub_26955B5AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27)
{
  v32 = a5[1];
  v114 = *a5;
  v112 = a5[3];
  v34 = *(a2 + 32);
  v33 = *(a2 + 40);
  v35 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = *&a1[v35];
  *&a1[v35] = 0x8000000000000000;
  sub_26955F570(a3, a4, v34, v33, isUniquelyReferenced_nonNull_native);
  v33, v37, v38, v39, v40, v41, v42, v43;
  *&a1[v35] = v118;
  swift_endAccess();
  v44 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  if (*(*&a1[v44] + 16) && (sub_2695535C4(), (v45 & 1) != 0))
  {
    swift_endAccess();

    sub_2695571B8(a2);
  }

  else
  {
    swift_endAccess();
  }

  v110 = [a1 synthesizer];
  if (v32)
  {
    v109 = sub_269562BA0();
  }

  else
  {
    v109 = 0;
  }

  v108 = sub_269562BA0();
  if (a7)
  {
    v107 = sub_269562BA0();
    v46 = a13;
    if (a11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v107 = 0;
    v46 = a13;
    if (a11)
    {
LABEL_10:
      v106 = sub_269562BA0();
      v47 = a15;
      if (v46)
      {
        goto LABEL_11;
      }

LABEL_15:
      v105 = 0;
      v48 = a21;
      if (v47)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  v106 = 0;
  v47 = a15;
  if (!v46)
  {
    goto LABEL_15;
  }

LABEL_11:
  v105 = sub_269562BA0();
  v48 = a21;
  if (v47)
  {
LABEL_12:
    v116 = sub_269562BA0();
    goto LABEL_17;
  }

LABEL_16:
  v116 = 0;
LABEL_17:
  if (v48)
  {
    v115 = sub_269562BA0();
  }

  else
  {
    v115 = 0;
  }

  v49 = a25;
  aBlock[4] = a22;
  aBlock[5] = a23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269560300;
  aBlock[3] = &block_descriptor_122;
  v50 = _Block_copy(aBlock);

  if (a24)
  {
    v51 = sub_269562B70();
  }

  else
  {
    v51 = 0;
  }

  if (a25)
  {
    v49 = sub_269562B70();
  }

  BYTE3(v104) = a19 & 1;
  BYTE2(v104) = (a17 ^ 1 | a18) & 1;
  LOWORD(v104) = a16 & 0x101;
  [v110 enqueueText:v109 identifier:v108 sessionId:v107 preferredVoice:a8 language:v106 gender:v105 promptStyle:a9 isPhonetic:v116 provisionally:v104 eligibleAfterDuration:v115 delayed:v50 canUseServerTTS:v51 preparationIdentifier:v49 completion:? analyticsContext:? speakableContextInfo:?];

  _Block_release(v50);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v52 = sub_269562AD0();
  __swift_project_value_buffer(v52, qword_280D002B0);

  v53 = sub_269562AC0();
  v54 = sub_269562CA0();
  v112, v55, v56, v57, v58, v59, v60, v61;
  v32, v62, v63, v64, v65, v66, v67, v68;

  if (os_log_type_enabled(v53, v54))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v69 = 134219010;
    if (__OFADD__(a26, 1))
    {
      __break(1u);
    }

    else
    {
      v78 = v70;
      *(v69 + 4) = a26 + 1;
      *(v69 + 12) = 2048;
      *(v69 + 14) = *(a27 + 16);
      a27, v71, v72, v73, v74, v75, v76, v77;
      *(v69 + 22) = 2080;

      v79 = sub_269523410(v34, v33, aBlock);
      v33, v80, v81, v82, v83, v84, v85, v86;
      *(v69 + 24) = v79;
      *(v69 + 32) = 2080;
      if (v32)
      {
        v87 = v114;
      }

      else
      {
        v87 = 7104878;
      }

      if (v32)
      {
        v88 = v32;
      }

      else
      {
        v88 = 0xE300000000000000;
      }

      v89 = sub_269523410(v87, v88, aBlock);
      v88, v90, v91, v92, v93, v94, v95, v96;
      *(v69 + 34) = v89;
      *(v69 + 42) = 1024;
      *(v69 + 44) = a17 & 1;
      _os_log_impl(&dword_26951F000, v53, v54, "#response_coordination enqueued dialog chunk [count=%ld/%ld; id=%s]: %s; isFirst=%{BOOL}d", v69, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x26D640DD0](v78, -1, -1);
      MEMORY[0x26D640DD0](v69, -1, -1);
    }
  }

  else
  {

    a27, v97, v98, v99, v100, v101, v102, v103;
  }
}

void sub_26955BBC0(uint64_t a1, uint64_t a2, SRUIFMarkerCapableSpeechSynthesizer *a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = sub_269557A64(a2, a3);
  if (!v11)
  {
    if (qword_280D00240 != -1)
    {
      swift_once();
    }

    v51 = sub_269562AD0();
    __swift_project_value_buffer(v51, qword_280D002B0);

    v52 = sub_269562AC0();
    v53 = sub_269562C90();
    a3, v54, v55, v56, v57, v58, v59, v60;
    if (os_log_type_enabled(v52, v53))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v140 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_269523410(a2, a3, &v140);
      _os_log_impl(&dword_26951F000, v52, v53, "#response_coordination received completion for unknown taskId = %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x26D640DD0](v62, -1, -1);
      MEMORY[0x26D640DD0](v61, -1, -1);
    }

    goto LABEL_28;
  }

  v12 = v11;
  if (!a4)
  {
    if (a5 == 1)
    {
      v63 = v11[9];
      if (v63)
      {
        v64 = qword_280D00240;

        if (v64 != -1)
        {
          swift_once();
        }

        v65 = sub_269562AD0();
        __swift_project_value_buffer(v65, qword_280D002B0);

        v66 = sub_269562AC0();
        v67 = sub_269562CA0();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v140 = v138;
          *v68 = 136315138;
          v69 = *(v63 + 32);
          v70 = *(v63 + 40);

          v71 = sub_269523410(v69, v70, &v140);
          v70, v72, v73, v74, v75, v76, v77, v78;
          *(v68 + 4) = v71;
          _os_log_impl(&dword_26951F000, v66, v67, "#response_coordination process next task: %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v138);
          MEMORY[0x26D640DD0](v138, -1, -1);
          MEMORY[0x26D640DD0](v68, -1, -1);
        }

        v79 = [v10 synthesizer];
        v80 = *(v63 + 40);

        v81 = sub_269562BA0();
        v80, v82, v83, v84, v85, v86, v87, v88;
        [v79 processDelayedItem_];

        goto LABEL_28;
      }

      v129 = v11[2];
      v124 = v11[3];

      v126 = v129;
      v127 = v124;
      v128 = 1;
    }

    else
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v89 = sub_269562AD0();
      __swift_project_value_buffer(v89, qword_280D002B0);

      v90 = sub_269562AC0();
      v91 = sub_269562C90();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v140 = v139;
        *v92 = 136315394;
        type metadata accessor for SRUIFSpeechSynthesisResult(0);
        v93 = sub_269562BC0();
        v95 = v94;
        v96 = a5;
        v97 = sub_269523410(v93, v94, &v140);
        v95, v98, v99, v100, v101, v102, v103, v104;
        *(v92 + 4) = v97;
        *(v92 + 12) = 2080;
        v106 = v12[2];
        v105 = v12[3];

        v107 = sub_269523410(v106, v105, &v140);
        v105, v108, v109, v110, v111, v112, v113, v114;
        *(v92 + 14) = v107;
        a5 = v96;
        _os_log_impl(&dword_26951F000, v90, v91, "#response_coordination speak completion result unsuccessful = %s; cancelling rest of speech synthesis in supertask %s", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D640DD0](v139, -1, -1);
        MEMORY[0x26D640DD0](v92, -1, -1);
      }

      v116 = v12[2];
      v115 = v12[3];

      sub_26955FE3C(v116, v115);
      v115, v117, v118, v119, v120, v121, v122, v123;
      v125 = v12[2];
      v124 = v12[3];

      v126 = v125;
      v127 = v124;
      v128 = a5;
    }

    sub_26955C2E4(v126, v127, v128, 0);

    v124, v130, v131, v132, v133, v134, v135, v136;
LABEL_28:

    return;
  }

  v13 = a4;
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v137 = a5;
  v14 = sub_269562AD0();
  __swift_project_value_buffer(v14, qword_280D002B0);
  v15 = a4;
  v16 = sub_269562AC0();
  v17 = sub_269562C70();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v140 = v19;
    *v18 = 136315138;
    v20 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C508, &unk_269567980);
    v21 = sub_269562BC0();
    v23 = v22;
    v24 = sub_269523410(v21, v22, &v140);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    _os_log_impl(&dword_26951F000, v16, v17, "#response_coordination speak completion error = %s; cancelling rest of speech synthesis", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D640DD0](v19, -1, -1);
    MEMORY[0x26D640DD0](v18, -1, -1);
  }

  v32 = v12[2];
  v33 = v12[3];
  v34 = a4;

  sub_26955FE3C(v32, v33);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v43 = v12[2];
  v42 = v12[3];

  sub_26955C2E4(v43, v42, v137, a4);

  v42, v44, v45, v46, v47, v48, v49, v50;
}

void sub_26955C2E4(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_269562B40();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = [v5 queue];
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_269562B50();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_14;
  }

  v15 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  v16 = *&v5[v15];
  if (*(v16 + 16) && (v17 = sub_2695535C4(), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v20 = *(v19 + 32);
    if (v20)
    {
      v21 = *(v19 + 40);
      v22 = qword_280D00240;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = sub_269562AD0();
      __swift_project_value_buffer(v23, qword_280D002B0);

      v24 = sub_269562AC0();
      v25 = sub_269562CA0();
      a2, v26, v27, v28, v29, v30, v31, v32;
      if (os_log_type_enabled(v24, v25))
      {
        v33 = swift_slowAlloc();
        v59 = a4;
        v34 = v33;
        v35 = swift_slowAlloc();
        v58 = v21;
        v36 = v35;
        v60[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_269523410(a1, a2, v60);
        _os_log_impl(&dword_26951F000, v24, v25, "#response_coordination executing completion for supertask %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v37 = v36;
        v21 = v58;
        MEMORY[0x26D640DD0](v37, -1, -1);
        v38 = v34;
        a4 = v59;
        MEMORY[0x26D640DD0](v38, -1, -1);
      }

      v20(a3, a4);
      swift_beginAccess();
      v39 = *&v5[v15];
      if (*(v39 + 16) && (v40 = sub_2695535C4(), (v41 & 1) != 0))
      {
        v42 = *(*(v39 + 56) + 8 * v40);
        swift_endAccess();

        sub_269525B8C(v20, v21);
        v43 = *(v42 + 32);
        v44 = *(v42 + 40);
        *(v42 + 32) = 0;
        *(v42 + 40) = 0;
        sub_269525B8C(v43, v44);
      }

      else
      {
        swift_endAccess();
        sub_269525B8C(v20, v21);
      }

      return;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_280D00240 != -1)
  {
    goto LABEL_19;
  }

LABEL_14:
  v45 = sub_269562AD0();
  __swift_project_value_buffer(v45, qword_280D002B0);

  v46 = sub_269562AC0();
  v47 = sub_269562C70();
  a2, v48, v49, v50, v51, v52, v53, v54;
  if (os_log_type_enabled(v46, v47))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60[0] = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_269523410(a1, a2, v60);
    _os_log_impl(&dword_26951F000, v46, v47, "#response_coordination missing completion for id %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x26D640DD0](v56, -1, -1);
    MEMORY[0x26D640DD0](v55, -1, -1);
  }
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidStartSpeaking(withIdentifier:)(Swift::String_optional withIdentifier)
{
  v2 = v1;
  object = withIdentifier.value._object;
  countAndFlagsBits = withIdentifier.value._countAndFlagsBits;
  v5 = sub_269562B00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_269562B30();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v11 = sub_269562AD0();
  __swift_project_value_buffer(v11, qword_280D002B0);

  v12 = sub_269562AC0();
  v13 = sub_269562CA0();
  object, v14, v15, v16, v17, v18, v19, v20;
  if (os_log_type_enabled(v12, v13))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = countAndFlagsBits;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    v44 = v2;
    v45 = v8;
    v24 = v5;
    v25 = v6;
    if (object)
    {
      v26 = v46;
    }

    else
    {
      v26 = 7104878;
    }

    v27 = v9;
    if (object)
    {
      v28 = object;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_269523410(v26, v28, aBlock);
    v30 = v28;
    v9 = v27;
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v21 + 4) = v29;
    v6 = v25;
    v5 = v24;
    v2 = v44;
    v8 = v45;
    _os_log_impl(&dword_26951F000, v12, v13, "#response_coordination [pre-restore] speechSynthesisDidStartSpeaking (withIdentifier=%s)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v38 = v23;
    countAndFlagsBits = v46;
    MEMORY[0x26D640DD0](v38, -1, -1);
    MEMORY[0x26D640DD0](v21, -1, -1);
  }

  v39 = [v2 queue];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = countAndFlagsBits;
  v41[4] = object;
  aBlock[4] = sub_26955FACC;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269558630;
  aBlock[3] = &block_descriptor_39;
  v42 = _Block_copy(aBlock);

  v43 = v47;
  sub_269562B10();
  v49 = MEMORY[0x277D84F90];
  sub_269558674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C628, &qword_269567790);
  sub_2695586CC();
  sub_269562D50();
  MEMORY[0x26D6401B0](0, v43, v8, v42);
  _Block_release(v42);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v43, v48);
}

void sub_26955CB84(uint64_t a1, uint64_t a2, SRUIFMarkerCapableSpeechSynthesizer *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (!a3 || (v7 = sub_269557A64(a2, a3)) == 0)
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v79 = sub_269562AD0();
      __swift_project_value_buffer(v79, qword_280D002B0);

      v80 = sub_269562AC0();
      v81 = sub_269562C90();
      a3, v82, v83, v84, v85, v86, v87, v88;
      if (os_log_type_enabled(v80, v81))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v118 = v90;
        *v89 = 136315138;
        if (a3)
        {
          v91 = a2;
        }

        else
        {
          v91 = 7104878;
        }

        if (a3)
        {
          v92 = a3;
        }

        else
        {
          v92 = 0xE300000000000000;
        }

        v93 = sub_269523410(v91, v92, &v118);
        v92, v94, v95, v96, v97, v98, v99, v100;
        *(v89 + 4) = v93;
        _os_log_impl(&dword_26951F000, v80, v81, "#response_coordination [unrestored] speechSynthesisDidStartSpeaking (withIdentifier=%s)", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x26D640DD0](v90, -1, -1);
        MEMORY[0x26D640DD0](v89, -1, -1);
      }

      v101 = [v6 delegate];
      if (v101)
      {
        v102 = v101;
        if (a3)
        {
          a3 = sub_269562BA0();
        }

        [v102 speechSynthesisDidStartSpeakingWithIdentifier_];

        swift_unknownObjectRelease();
      }

      goto LABEL_34;
    }

    v8 = v7;
    v9 = &off_279C63000;
    if (*(v7 + 64) == 1)
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v10 = sub_269562AD0();
      __swift_project_value_buffer(v10, qword_280D002B0);

      v11 = sub_269562AC0();
      v12 = sub_269562C70();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v118 = v14;
        *v13 = 136315138;
        v15 = v8[2];
        v16 = v8[3];

        v17 = sub_269523410(v15, v16, &v118);
        v16, v18, v19, v20, v21, v22, v23, v24;
        *(v13 + 4) = v17;
        v9 = &off_279C63000;
        _os_log_impl(&dword_26951F000, v11, v12, "#response_coordination [post-restore] speechSynthesisDidStartSpeaking (withIdentifier=%s)", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x26D640DD0](v14, -1, -1);
        MEMORY[0x26D640DD0](v13, -1, -1);
      }

      v25 = [v6 v9[389]];
      if (v25)
      {
        v26 = v25;
        v27 = v8[3];

        v28 = sub_269562BA0();
        v27, v29, v30, v31, v32, v33, v34, v35;
        [v26 speechSynthesisDidStartSpeakingWithIdentifier_];

        swift_unknownObjectRelease();
      }
    }

    v36 = v8[7];
    if (v36)
    {

      if (![v6 v9[389]])
      {

        v36, v103, v104, v105, v106, v107, v108, v109;
        goto LABEL_34;
      }

      v37 = swift_dynamicCastObjCProtocolConditional();
      if (!v37)
      {

        v36, v110, v111, v112, v113, v114, v115, v116;

        swift_unknownObjectRelease();
        return;
      }

      v38 = v37;
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v39 = sub_269562AD0();
      __swift_project_value_buffer(v39, qword_280D002B0);

      v40 = sub_269562AC0();
      v41 = sub_269562CA0();

      a3, v42, v43, v44, v45, v46, v47, v48;
      if (os_log_type_enabled(v40, v41))
      {
        v49 = swift_slowAlloc();
        v117 = v38;
        v50 = swift_slowAlloc();
        v118 = v50;
        *v49 = 136315394;
        *(v49 + 4) = sub_269523410(a2, a3, &v118);
        *(v49 + 12) = 2080;
        v51 = v8[2];
        v52 = v8[3];

        v53 = sub_269523410(v51, v52, &v118);
        v52, v54, v55, v56, v57, v58, v59, v60;
        *(v49 + 14) = v53;
        _os_log_impl(&dword_26951F000, v40, v41, "#response_coordination [post-restore] speechSynthesisDidReachMarker (startAnnotation: = %s; withIdentifier=%s)", v49, 0x16u);
        swift_arrayDestroy();
        v61 = v50;
        v38 = v117;
        MEMORY[0x26D640DD0](v61, -1, -1);
        MEMORY[0x26D640DD0](v49, -1, -1);
      }

      v62 = sub_269562BA0();
      v36, v63, v64, v65, v66, v67, v68, v69;
      v70 = v8[3];

      v71 = sub_269562BA0();
      v70, v72, v73, v74, v75, v76, v77, v78;
      [v38 speechSynthesisDidReachMarker:v62 withIdentifier:v71];
      swift_unknownObjectRelease();
    }

LABEL_34:
  }
}

void sub_26955D1B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, SRUIFMarkerCapableSpeechSynthesizer *))
{
  if (a3)
  {
    v6 = sub_269562BB0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);

  v8, v10, v11, v12, v13, v14, v15, v16;
}

void SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidFinish(_:withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269562B00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [v4 queue];
  sub_269562AF0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v13;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_269562CE0();
  (*(v9 + 8))(v11, v8);
}

void sub_26955D3B0(uint64_t a1, SEL *a2, const char *a3, char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (!a2 || !a4)
  {
    goto LABEL_22;
  }

  v9 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_supertaskLookup;
  swift_beginAccess();
  v10 = *&v8[v9];
  v11 = *(v10 + 16);
  v12 = a2;
  if (!v11 || (v13 = sub_2695535C4(), (v14 & 1) == 0))
  {
    swift_endAccess();
LABEL_20:

    goto LABEL_22;
  }

  v15 = (*(v10 + 56) + 16 * v13);
  v17 = *v15;
  v16 = v15[1];
  swift_endAccess();
  v18 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  v19 = *&v8[v18];
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = sub_2695535C4();
    if (v22)
    {
      v120 = v17;
      v23 = *(*(v19 + 56) + 8 * v21);
      swift_endAccess();
      v24 = *(v23 + 48);

      v25 = [v24 count];
      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_62:
        swift_once();
LABEL_42:
        v72 = sub_269562AD0();
        __swift_project_value_buffer(v72, qword_280D002B0);

        v73 = sub_269562AC0();
        v74 = sub_269562C70();
        v16, v75, v76, v77, v78, v79, v80, v81;
        v119 = v74;
        if (os_log_type_enabled(v73, v74))
        {
          v89 = swift_slowAlloc();
          v90 = v73;
          v91 = swift_slowAlloc();
          v123[0] = v91;
          *v89 = 136315138;
          v92 = sub_269523410(v120, v16, v123);
          v93 = v16;
          v94 = v92;
          v93, v95, v96, v97, v98, v99, v100, v101;
          *(v89 + 4) = v94;
          _os_log_impl(&dword_26951F000, v90, v119, "#response_coordination supertaskId %s: beginTimestamp unexpectedly nil", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v91);
          MEMORY[0x26D640DD0](v91, -1, -1);
          v102 = v89;
          a2 = &off_279C63000;
          MEMORY[0x26D640DD0](v102, -1, -1);
        }

        else
        {
          v16, v82, v83, v84, v85, v86, v87, v88;
        }

        v12 = v122;
        goto LABEL_48;
      }

      v26 = v25;
      if (v25)
      {
        v121 = v16;
        v122 = v12;
        v27 = 0;
        v124 = v23;
        while (1)
        {
          v28 = [*(v23 + 48) objectAtIndex_];
          if (v28)
          {
            v35 = v28;
            v36 = v28[5];
            v37 = v28[4] == a3 && v36 == a4;
            if (v37 || (sub_269562E30() & 1) != 0)
            {
              if (*(v35 + 64) == 1)
              {
                v121, v36, v29, v30, v31, v32, v33, v34;
                v55 = [(SEL *)v12 beginTimestamp];

                v56 = v124;
                *(v124 + 72) = v55;
                *(v56 + 80) = 0;

                return;
              }

              v16 = v121;
              v64 = v124;
              if (v35[9] && *(v124 + 97) != 1)
              {

                v121, v103, v104, v105, v106, v107, v108, v109;
              }

              else
              {
                a2 = &off_279C63000;
                *(v124 + 88) = [(SEL *)v12 endTimestamp];
                *(v64 + 96) = 0;
                if (*(v64 + 80) == 1)
                {
                  if (qword_280D00240 == -1)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_62;
                }

                v121, v65, v66, v67, v68, v69, v70, v71;
LABEL_48:
                v110 = v124;
                if (*(v124 + 80) == 1)
                {
                  v111 = [(SEL *)v12 beginTimestamp];
                }

                else
                {
                  v111 = *(v124 + 72);
                }

                if (*(v110 + 96) == 1)
                {
                  v112 = [v122 a2[98]];
                }

                else
                {
                  v112 = *(v110 + 88);
                }

                v113 = objc_allocWithZone(MEMORY[0x277CEF4A8]);
                v114 = sub_269562BA0();
                v115 = [v113 initWithUtterance:v114 beginTimestamp:v111 endTimestamp:v112];

                v116 = [v8 delegate];
                if (v116)
                {
                  [v116 speechSynthesisDidFinish_];
                  swift_unknownObjectRelease();
                }

                v117 = [v8 delegate];
                if (v117)
                {
                  v118 = v117;
                  if ([v117 respondsToSelector_])
                  {
                    a4 = sub_269562BA0();
                    [v118 speechSynthesisDidFinish:v115 withIdentifier:a4];

                    swift_unknownObjectRelease();
                    goto LABEL_29;
                  }

LABEL_32:
                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }

              return;
            }
          }

          ++v27;
          v23 = v124;
          if (v26 == v27)
          {

            v121, v57, v58, v59, v60, v61, v62, v63;

            goto LABEL_22;
          }
        }
      }

      v16, v48, v49, v50, v51, v52, v53, v54;
      goto LABEL_20;
    }
  }

  swift_endAccess();

  v16, v38, v39, v40, v41, v42, v43, v44;
LABEL_22:
  v45 = [v8 delegate];
  if (v45)
  {
    [v45 speechSynthesisDidFinish_];
    swift_unknownObjectRelease();
  }

  v46 = [v8 delegate];
  if (v46)
  {
    v47 = v46;
    if (([v46 respondsToSelector_] & 1) == 0)
    {

      goto LABEL_32;
    }

    if (a4)
    {
      a4 = sub_269562BA0();
    }

    [v47 speechSynthesisDidFinish:a2 withIdentifier:a4];

    swift_unknownObjectRelease();
LABEL_29:
  }

  else
  {
  }
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidStopSpeaking(withIdentifier:queueIsEmpty:)(Swift::String_optional withIdentifier, Swift::Bool queueIsEmpty)
{
  v3 = v2;
  object = withIdentifier.value._object;
  countAndFlagsBits = withIdentifier.value._countAndFlagsBits;
  v7 = sub_269562B00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D00240 != -1)
  {
    swift_once();
  }

  v11 = sub_269562AD0();
  __swift_project_value_buffer(v11, qword_280D002B0);

  v12 = sub_269562AC0();
  v13 = sub_269562CA0();
  object, v14, v15, v16, v17, v18, v19, v20;
  if (os_log_type_enabled(v12, v13))
  {
    v21 = swift_slowAlloc();
    v45 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v44 = v8;
    v24 = v23;
    v46 = v23;
    *v22 = 136315394;
    v43 = v10;
    v25 = v3;
    v26 = queueIsEmpty;
    if (object)
    {
      v27 = countAndFlagsBits;
    }

    else
    {
      v27 = 7104878;
    }

    if (object)
    {
      v28 = object;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_269523410(v27, v28, &v46);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v22 + 4) = v29;
    queueIsEmpty = v26;
    v3 = v25;
    v10 = v43;
    *(v22 + 12) = 1024;
    *(v22 + 14) = queueIsEmpty;
    _os_log_impl(&dword_26951F000, v12, v13, "#response_coordination [pre-restore] speechSynthesisDidStopSpeaking (id = %s, queueIsEmpty=%{BOOL}d)", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v37 = v24;
    v8 = v44;
    MEMORY[0x26D640DD0](v37, -1, -1);
    v38 = v22;
    v7 = v45;
    MEMORY[0x26D640DD0](v38, -1, -1);
  }

  v39 = [v3 queue];
  sub_269562AF0();
  v40 = swift_allocObject();
  v41 = swift_unknownObjectWeakInit();
  MEMORY[0x28223BE20](v41);
  *(&v42 - 4) = v40;
  *(&v42 - 3) = countAndFlagsBits;
  *(&v42 - 2) = object;
  *(&v42 - 8) = queueIsEmpty;
  sub_269562CE0();
  (*(v8 + 8))(v10, v7);
}

void sub_26955DF14(uint64_t a1, uint64_t a2, SRUIFMarkerCapableSpeechSynthesizer *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a3 && (v10 = sub_269557A64(a2, a3)) != 0)
    {
      v11 = v10;
      if (*(v10 + 72))
      {
        v12 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
        swift_beginAccess();
        v13 = *&v9[v12];
        if (*(v13 + 16))
        {
          v14 = sub_2695535C4();
          if (v15)
          {
            v16 = *(*(v13 + 56) + 8 * v14);
            swift_endAccess();
            v17 = *(v16 + 48);
            v18 = [v17 dequeueObject];

            return;
          }
        }
      }

      else
      {
        if (qword_280D00240 != -1)
        {
          swift_once();
        }

        v47 = sub_269562AD0();
        __swift_project_value_buffer(v47, qword_280D002B0);

        v48 = sub_269562AC0();
        v49 = sub_269562C70();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v76[0] = v77;
          *v50 = 136315394;
          v51 = *(v11 + 16);
          v52 = *(v11 + 24);

          v53 = sub_269523410(v51, v52, v76);
          v52, v54, v55, v56, v57, v58, v59, v60;
          *(v50 + 4) = v53;
          *(v50 + 12) = 1024;
          *(v50 + 14) = a4 & 1;
          _os_log_impl(&dword_26951F000, v48, v49, "#response_coordination [post-restore] speechSynthesisDidStopSpeaking (id = %s, queueIsEmpty=%{BOOL}d)", v50, 0x12u);
          v61 = v77;
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x26D640DD0](v61, -1, -1);
          MEMORY[0x26D640DD0](v50, -1, -1);
        }

        v62 = [v9 delegate];
        if (v62)
        {
          v63 = v62;
          v64 = *(v11 + 24);

          v65 = sub_269562BA0();
          v64, v66, v67, v68, v69, v70, v71, v72;
          [v63 speechSynthesisDidStopSpeakingWithIdentifier:v65 queueIsEmpty:a4 & 1];

          swift_unknownObjectRelease();
        }

        v73 = *(v11 + 16);
        v74 = *(v11 + 24);
        swift_beginAccess();

        sub_26955B0C0(0, v73, v74);
      }

      swift_endAccess();
    }

    else
    {
      if (qword_280D00240 != -1)
      {
        swift_once();
      }

      v19 = sub_269562AD0();
      __swift_project_value_buffer(v19, qword_280D002B0);

      v20 = sub_269562AC0();
      v21 = sub_269562C90();
      a3, v22, v23, v24, v25, v26, v27, v28;
      if (os_log_type_enabled(v20, v21))
      {
        v77 = v4;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v29 = 136315138;
        if (a3)
        {
          v32 = a2;
        }

        else
        {
          v32 = 7104878;
        }

        v75 = v9;
        v76[0] = v30;
        v33 = a4;
        if (a3)
        {
          v34 = a3;
        }

        else
        {
          v34 = 0xE300000000000000;
        }

        v35 = sub_269523410(v32, v34, v76);
        v36 = v34;
        a4 = v33;
        v9 = v75;
        v36, v37, v38, v39, v40, v41, v42, v43;
        *(v29 + 4) = v35;
        _os_log_impl(&dword_26951F000, v20, v21, "#response_coordination [unrestored] speechSynthesisDidStopSpeaking (withIdentifier=%s)", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x26D640DD0](v31, -1, -1);
        MEMORY[0x26D640DD0](v29, -1, -1);
      }

      v44 = [v9 delegate];
      if (v44)
      {
        v45 = v44;
        if (a3)
        {
          v46 = sub_269562BA0();
        }

        else
        {
          v46 = 0;
        }

        [v45 speechSynthesisDidStopSpeakingWithIdentifier:v46 queueIsEmpty:a4 & 1];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidUpdatePowerLevel(to:)(Swift::Float to)
{
  v3 = [v1 delegate];
  if (v3)
  {
    *&v4 = to;
    [v3 speechSynthesisDidUpdatePowerLevelTo_];

    swift_unknownObjectRelease();
  }
}

void sub_26955E570(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = [v5 delegate];
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      a2 = sub_269562BA0();
    }

    if (a3)
    {
      v11[4] = a3;
      v11[5] = a4;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_26955AC58;
      v11[3] = &block_descriptor_91;
      a3 = _Block_copy(v11);
    }

    [v10 speechSynthesisGetPreparedTextForIdentifier:a2 completion:a3];
    swift_unknownObjectRelease();
    _Block_release(a3);
  }
}

void sub_26955E75C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_269562BA0();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

id SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisRequestsForceAudioSessionActive(completion:)(void *a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 delegate];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      if (a1)
      {
        v8[4] = a1;
        v8[5] = a2;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 1107296256;
        v8[2] = sub_26955E8F0;
        v8[3] = &block_descriptor_44;
        a1 = _Block_copy(v8);
      }

      [v7 speechSynthesisRequestsForceAudioSessionActiveWithCompletion_];
      _Block_release(a1);
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_26955E8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void sub_26955EA38(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v7 = a1;
  swift_unknownObjectRetain();
  v6 = [v7 clientStateManagerDelegate];
  if (v6)
  {
    [v6 *a4];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

id SRUIFMarkerCapableSpeechSynthesizer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_26955EBE8(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C800, &qword_269567968);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void sub_26955ECDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C820, &unk_269567480);
  v35 = v4;
  v6 = sub_269562E10();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_269562E70();
      sub_269562BE0();
      v25 = sub_269562E90();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_26955EF84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C500, &qword_269567970);
  v38 = v4;
  v6 = sub_269562E10();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_269562E70();
      sub_269562BE0();
      v28 = sub_269562E90();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_26955F244(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_269562D60() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_269562E70();

      sub_269562BE0();
      v10 = sub_269562E90();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_26955F3F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2695535C4();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26955ECDC(v16, a4 & 1);
      v11 = sub_2695535C4();
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_269562E60();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_26955F6F8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_26955F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2695535C4();
  v21 = *(v12 + 16);
  v22 = (v14 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = v14;
  v26 = *(v12 + 24);
  if (v26 < v24 || (a5 & 1) == 0)
  {
    if (v26 < v24 || (a5 & 1) != 0)
    {
      sub_26955EF84(v24, a5 & 1);
      v13 = sub_2695535C4();
      if ((v25 & 1) != (v14 & 1))
      {
LABEL_18:
        sub_269562E60();
        __break(1u);
        return;
      }
    }

    else
    {
      v27 = v13;
      sub_26955F868();
      v13 = v27;
    }
  }

  v28 = *v6;
  if (v25)
  {
    v29 = (v28[7] + 16 * v13);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    v30, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v28[(v13 >> 6) + 8] |= 1 << v13;
  v31 = (v28[6] + 16 * v13);
  *v31 = a3;
  v31[1] = a4;
  v32 = (v28[7] + 16 * v13);
  *v32 = a1;
  v32[1] = a2;
  v33 = v28[2];
  v23 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

void sub_26955F6F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031C820, &unk_269567480);
  v2 = *v0;
  v3 = sub_269562E00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_26955F868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031C500, &qword_269567970);
  v2 = *v0;
  v3 = sub_269562E00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_26955FA04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26955FB64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26955FBAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26955FBFC()
{
  result = qword_28031C788;
  if (!qword_28031C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C788);
  }

  return result;
}

unint64_t sub_26955FC54()
{
  result = qword_28031C790;
  if (!qword_28031C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031C790);
  }

  return result;
}

uint64_t sub_26955FCF4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_26955FD7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 64);
  v7[0] = *(v0 + 48);
  v7[1] = v5;
  v6 = *(v0 + 88);
  v8 = *(v0 + 80);
  sub_26955B5AC(v1, v2, v3, v4, v7, v6, *(v0 + 96), *(v0 + 104), *(v0 + 168), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 176), *(v0 + 177), *(v0 + 178), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
}

void sub_26955FE3C(uint64_t a1, SRUIFMarkerCapableSpeechSynthesizer *a2)
{
  v3 = v2;
  v6 = sub_269562B40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v57[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = [v3 queue];
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_269562B50();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = OBJC_IVAR___SRUIFMarkerCapableSpeechSynthesizer_pendingTasks;
  swift_beginAccess();
  v12 = *&v3[v11];
  if (!*(v12 + 16) || (v13 = sub_2695535C4(), (v14 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_18;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  swift_beginAccess();
  v16 = *&v3[v11];
  v17 = *(v16 + 16);

  if (!v17 || (v18 = sub_2695535C4(), (v19 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_17;
  }

  v20 = *(*(v16 + 56) + 8 * v18);
  swift_endAccess();
  v21 = [*(v20 + 48) dequeueAllObjects];
  if (!v21)
  {
LABEL_17:

LABEL_18:
    if (qword_280D00240 == -1)
    {
LABEL_19:
      v37 = sub_269562AD0();
      __swift_project_value_buffer(v37, qword_280D002B0);

      v38 = sub_269562AC0();
      v39 = sub_269562C90();
      a2, v40, v41, v42, v43, v44, v45, v46;
      if (os_log_type_enabled(v38, v39))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v57[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_269523410(a1, a2, v57);
        _os_log_impl(&dword_26951F000, v38, v39, "#response_coordination unable to find subtasks in supertask %s; could not cancel", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x26D640DD0](v48, -1, -1);
        MEMORY[0x26D640DD0](v47, -1, -1);
      }

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_19;
  }

  v22 = v21;
  _s7SubtaskCMa();
  v23 = sub_269562C10();

  *(v15 + 97) = 1;
  if (v23 >> 62)
  {
    v24 = sub_269562DF0();
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_26:

    v23, v49, v50, v51, v52, v53, v54, v55;
    return;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_9:
  v56 = v15;
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D640270](v25, v23);
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      ++v25;
      v27 = [v3 synthesizer];
      v28 = *(v26 + 40);

      v29 = sub_269562BA0();
      v28, v30, v31, v32, v33, v34, v35, v36;
      [v27 cancelSynthesisForIdentifier_];
    }

    while (v24 != v25);
    goto LABEL_26;
  }

  __break(1u);
}

id VRXFeedbackConverter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VRXFeedbackConverter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VRXFeedbackConverter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VRXFeedbackConverter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VRXFeedbackConverter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}