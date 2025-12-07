uint64_t sub_225097E80(char a1)
{
  if (!a1)
  {
    return 0x5574736575716572;
  }

  if (a1 == 1)
  {
    return 0x74616D726F66;
  }

  return 0x436567617373656DLL;
}

unint64_t sub_225097EE4()
{
  result = qword_280D54D40;
  if (!qword_280D54D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D54D40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartialTrafficLog.ResponseConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x225098004);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s17DataSecurityCheckC5ActorC5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_225098104()
{
  result = qword_280D54D30;
  if (!qword_280D54D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D54D30);
  }

  return result;
}

unint64_t sub_225098158()
{
  result = qword_280D53AF8;
  if (!qword_280D53AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AF8);
  }

  return result;
}

void sub_2250981BC()
{
}

void sub_225098224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_225094964();
  v27 = v26;
  v38 = v28;
  v39 = v29;
  v31 = v30;
  v34 = sub_2250B0DFC(v32, v33);
  sub_225072D1C();
  v36 = v35;
  sub_22507CA80();
  MEMORY[0x28223BE20](v37);
  sub_22507EDF4();
  sub_225073BAC(v31, v31[3]);
  v27();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v24)
  {
    sub_22508D04C(v38, v39);
    sub_225097804();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22508D128(v38, v39);
  }

  (*(v36 + 8))(v25, v34);
  sub_225095814();
}

uint64_t sub_225098394()
{
  sub_2250B0DFC(&qword_27D7195E8, &qword_225446568);
  sub_225072D1C();
  sub_22507CA80();
  MEMORY[0x28223BE20](v1);
  sub_22507EDF4();
  sub_2250FBBFC();
  v2 = sub_225097E2C();
  sub_225095388(&type metadata for PartialTrafficLog.ResponseConfiguration.CodingKeys, v3, v2);
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_225097EE4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = sub_2250FBBAC();
  return v5(v4);
}

unint64_t sub_225098510()
{
  result = qword_280D53D10;
  if (!qword_280D53D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D10);
  }

  return result;
}

unint64_t sub_2250985BC()
{
  result = qword_280D53D28;
  if (!qword_280D53D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D28);
  }

  return result;
}

uint64_t sub_2250986A8()
{

  return swift_slowAlloc();
}

void sub_2250986D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_2250986F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_2250988F4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void *sub_22509891C(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_225098A2C(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_225098B20(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_225098A2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2250B0DFC(a3, a4);
  v8 = a5(0);
  sub_22507D394(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_225098B20(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_225072BF0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_2250974FC();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_2250974FC();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_225098BF8(uint64_t a1, void *a2, uint64_t a3)
{
  while (1)
  {
    v4 = objc_msgSend_position(a2, a2, a3);
    if (v4 >= objc_msgSend_length(a2, v5, v6) || (objc_msgSend_hasError(a2, v7, v8) & 1) != 0)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v32 = 0;
      v12 = objc_msgSend_position(a2, v7, v8) + 1;
      if (v12 >= objc_msgSend_position(a2, v13, v14) && (v17 = objc_msgSend_position(a2, v15, v16) + 1, v17 <= objc_msgSend_length(a2, v18, v19)))
      {
        v20 = objc_msgSend_data(a2, v15, v16);
        v23 = objc_msgSend_position(a2, v21, v22);
        objc_msgSend_getBytes_range_(v20, v24, &v32, v23, 1);

        v27 = objc_msgSend_position(a2, v25, v26);
        objc_msgSend_setPosition_(a2, v28, v27 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v15, v16);
      }

      v11 |= (v32 & 0x7F) << v9;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      if (v10++ >= 9)
      {
        v30 = 0;
        goto LABEL_15;
      }
    }

    v30 = objc_msgSend_hasError(a2, v7, v8) ? 0 : v11;
LABEL_15:
    if (objc_msgSend_hasError(a2, v7, v8))
    {
      break;
    }

    v8 = v30 & 7;
    if (v8 == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return objc_msgSend_hasError(a2, v7, v8) ^ 1;
}

void sub_225098D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_subscriptionsByServerID(WeakRetained, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v6);

  if (v11)
  {
    objc_msgSend__handleSubscriptionSaved_responseCode_(WeakRetained, v12, v6, v5);
  }

  else
  {
    objc_msgSend__handleSubscriptionDeleted_responseCode_(WeakRetained, v12, v6, v5);
  }
}

void sub_225099148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_sync_exit(v16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_225099480(uint64_t a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_checkoutCount(*(a1 + 32), a2, a3) <= 0)
  {
    __assert_rtn("[CKDMMCS drop]_block_invoke", "CKDMMCS.m", 129, "self.checkoutCount > 0");
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_checkoutCount(v6, v4, v5);
  objc_msgSend_setCheckoutCount_(v6, v8, v7 - 1);
  result = objc_msgSend_checkoutCount(*(a1 + 32), v9, v10);
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v14 = *(a1 + 32);
    v15 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v12, v13);
    v18 = objc_msgSend_path(*(a1 + 32), v16, v17);
    v20 = objc_msgSend_objectForKey_(v15, v19, v18);

    if (v14 == v20)
    {
      v34 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v21, v22);
      v37 = objc_msgSend_path(*(a1 + 32), v35, v36);
      objc_msgSend_removeObjectForKey_(v34, v38, v37);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        v27 = v23;
        v30 = objc_msgSend_path(v26, v28, v29);
        v33 = objc_msgSend_CKSanitizedPath(v30, v31, v32);
        v42 = 138412546;
        v43 = v26;
        v44 = 2114;
        v45 = v33;
        _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "%@ not in the sharedWrappers map at key %{public}@", &v42, 0x16u);
      }
    }

    objc_msgSend_drop(*(*(a1 + 32) + 40), v24, v25);
    v39 = *(a1 + 32);
    v40 = *(v39 + 40);
    *(v39 + 40) = 0;

    result = objc_msgSend_tearDownMMCSEngineWithContext_(CKDMMCSEngineContext, v41, *(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

void sub_2250996C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sharedCachesQueue(CKDAssetCache, a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2250997FC;
  block[3] = &unk_278545A00;
  block[4] = *(a1 + 32);
  dispatch_sync(v4, block);
}

void sub_2250997FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_checkoutCount(*(a1 + 32), a2, a3);
  if (v4 <= 0)
  {
    __assert_rtn("[CKDAssetCache drop]_block_invoke_2", "CKDAssetCache.m", 472, "checkoutCount > 0");
  }

  v6 = v4;
  objc_msgSend_setCheckoutCount_(*(a1 + 32), v5, v4 - 1);
  if (v6 == 1)
  {
    objc_msgSend_setDidDrop_(*(a1 + 32), v7, 1);
    v8 = MEMORY[0x277CBC880];
    v9 = MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = MEMORY[0x277CBC828];
    v11 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 32);
      v39 = 138412290;
      v40 = v37;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Did drop: %@", &v39, 0xCu);
    }

    v14 = objc_msgSend_directoryContext(*(a1 + 32), v12, v13);
    v17 = objc_msgSend_containerCloudKitDirectory(v14, v15, v16);

    v18 = *(a1 + 32);
    v21 = objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v19, v20);
    v23 = objc_msgSend_objectForKey_(v21, v22, v17);

    v24 = *v9;
    v25 = *v8;
    if (v18 == v23)
    {
      if (v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v24);
      }

      v28 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v38 = *(a1 + 32);
        v39 = 138412290;
        v40 = v38;
        _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Removing from sharedCache map: %@", &v39, 0xCu);
      }

      v31 = objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v29, v30);
      objc_msgSend_removeObjectForKey_(v31, v32, v17);

      v33 = *(a1 + 32);
      v34 = *(v33 + 40);
      *(v33 + 40) = 0;

      v35 = *(a1 + 32);
      v36 = *(v35 + 48);
      *(v35 + 48) = 0;
    }

    else
    {
      if (v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v24);
      }

      v26 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v39 = 138412290;
        v40 = v27;
        _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Not in the sharedCache map: %@", &v39, 0xCu);
      }
    }
  }
}

uint64_t sub_225099D10(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_MMCSEngine(*(a1 + 32), a2, a3);
  MMCSEngineDestroy();
  v5 = *(a1 + 32);

  return objc_msgSend_setMMCSEngine_(v5, v4, 0);
}

void sub_225099E0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    objc_msgSend_assertLocked(*(a1 + 88), a2, a3);
    if (!*(a1 + 64))
    {
      if (*(a1 + 8) == 1)
      {
        v4 = objc_autoreleasePoolPush();
        if (*(a1 + 72))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v5 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v10 = *(a1 + 72);
            v11 = v5;
            v14 = objc_msgSend_ckShortDescription(v10, v12, v13);
            v15 = 138412290;
            v16 = v14;
            _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Discarding container: %@", &v15, 0xCu);
          }

          v6 = *(a1 + 72);
          *(a1 + 72) = 0;
        }

        objc_autoreleasePoolPop(v4);
      }

      v7 = sub_225099FA8(a1);
      objc_msgSend_discardContentIfPossible(v7, v8, v9);
    }
  }
}

id sub_225099FA8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    WeakRetained = objc_loadWeakRetained(v1 + 2);
    objc_sync_exit(v1);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

uint64_t sub_22509B4D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v62) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v62, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v62 & 0x7F) << v10;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v40 = objc_msgSend_position(a2, v32, v9, v62) + 1;
            if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
            {
              v48 = objc_msgSend_data(a2, v43, v44);
              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_getBytes_range_(v48, v52, &v62, v51, 1);

              v55 = objc_msgSend_position(a2, v53, v54);
              objc_msgSend_setPosition_(a2, v56, v55 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v43, v44);
            }

            v39 |= (v62 & 0x7F) << v37;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v30 = v38++ >= 9;
            if (v30)
            {
              v57 = 0;
              goto LABEL_43;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v57 = 0;
          }

          else
          {
            v57 = v39;
          }

LABEL_43:
          *(a1 + 32) = v57;
          goto LABEL_44;
        }

        if (v32 == 4)
        {
          v35 = objc_alloc_init(CKDPRecord);
          objc_storeStrong((a1 + 24), v35);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v35, a2, v36))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v35 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 16), v35);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
            goto LABEL_46;
          }

LABEL_30:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadString();
          v34 = *(a1 + 8);
          *(a1 + 8) = v33;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordTypeReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordFieldReadFrom(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44 & 0x7F) << v10;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        v33 = objc_alloc_init(CKDPFieldAction);
        objc_msgSend_addAction_(a1, v36, v33);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F263C(&v33->super.super.isa, a2, v37))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v32 == 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
        objc_storeStrong(a1 + 2, v33);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v34))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v40 = objc_msgSend_position(a2, v38, v39);
      if (v40 >= objc_msgSend_length(a2, v41, v42))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPRecordFieldValue);
    objc_storeStrong(a1 + 3, v33);
    v44 = 0;
    v45 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordFieldValueReadFrom(v33, a2, v35))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordFieldIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordFieldValueReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v128) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v128) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v128, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v128 & 0x7F) << v10;
      if ((v128 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 128) |= 4u;
        while (1)
        {
          LOBYTE(v128) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v128) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v128, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v128 & 0x7F) << v33;
          if ((v128 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
LABEL_94:
            *(a1 + 120) = v53;
            goto LABEL_81;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

        goto LABEL_94;
      case 2u:
        v79 = PBReaderReadData();
        v80 = 40;
        goto LABEL_56;
      case 4u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          LOBYTE(v128) = 0;
          v61 = objc_msgSend_position(a2, v32, v9, v128) + 1;
          if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
          {
            v69 = objc_msgSend_data(a2, v64, v65);
            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_getBytes_range_(v69, v73, &v128, v72, 1);

            v76 = objc_msgSend_position(a2, v74, v75);
            objc_msgSend_setPosition_(a2, v77, v76 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v64, v65);
          }

          v60 |= (v128 & 0x7F) << v58;
          if ((v128 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v30 = v59++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_88;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v60;
        }

LABEL_88:
        *(a1 + 16) = v78;
        goto LABEL_81;
      case 5u:
        *(a1 + 128) |= 1u;
        v128 = 0;
        v105 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v105 >= objc_msgSend_position(a2, v106, v107) && (v110 = objc_msgSend_position(a2, v108, v109) + 8, v110 <= objc_msgSend_length(a2, v111, v112)))
        {
          v118 = objc_msgSend_data(a2, v108, v109);
          v121 = objc_msgSend_position(a2, v119, v120);
          objc_msgSend_getBytes_range_(v118, v122, &v128, v121, 8);

          v125 = objc_msgSend_position(a2, v123, v124);
          objc_msgSend_setPosition_(a2, v126, v125 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v108, v109);
        }

        *(a1 + 8) = v128;
        goto LABEL_81;
      case 6u:
        v54 = objc_alloc_init(MEMORY[0x277CBC240]);
        objc_storeStrong((a1 + 48), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 7u:
        v79 = PBReaderReadString();
        v80 = 112;
LABEL_56:
        v102 = *(a1 + v80);
        *(a1 + v80) = v79;

        goto LABEL_81;
      case 8u:
        v54 = objc_alloc_init(MEMORY[0x277CBC258]);
        objc_storeStrong((a1 + 72), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPLocationCoordinateReadFrom())
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 9u:
        v54 = objc_alloc_init(MEMORY[0x277CBC270]);
        objc_storeStrong((a1 + 96), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReferenceReadFrom())
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0xAu:
        v54 = objc_alloc_init(CKDPAsset);
        objc_storeStrong((a1 + 32), v54);
        v128 = 0;
        v129 = 0;
        if (PBReaderPlaceMark() && CKDPAssetReadFrom(v54, a2, v114))
        {
          goto LABEL_80;
        }

        goto LABEL_98;
      case 0xBu:
        v54 = objc_alloc_init(CKDPRecordFieldValue);
        objc_msgSend_addListValue_(a1, v113, v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldValueReadFrom(v54, a2))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0xCu:
        v54 = objc_alloc_init(CKDPPackage);
        objc_storeStrong((a1 + 88), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !sub_225309318(&v54->super.super.isa, a2, v56))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0xDu:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 128) |= 8u;
        while (1)
        {
          LOBYTE(v128) = 0;
          v84 = objc_msgSend_position(a2, v32, v9, v128) + 1;
          if (v84 >= objc_msgSend_position(a2, v85, v86) && (v89 = objc_msgSend_position(a2, v87, v88) + 1, v89 <= objc_msgSend_length(a2, v90, v91)))
          {
            v92 = objc_msgSend_data(a2, v87, v88);
            v95 = objc_msgSend_position(a2, v93, v94);
            objc_msgSend_getBytes_range_(v92, v96, &v128, v95, 1);

            v99 = objc_msgSend_position(a2, v97, v98);
            objc_msgSend_setPosition_(a2, v100, v99 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v87, v88);
          }

          v83 |= (v128 & 0x7F) << v81;
          if ((v128 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v30 = v82++ >= 9;
          if (v30)
          {
            LOBYTE(v101) = 0;
            goto LABEL_90;
          }
        }

        v101 = (v83 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_90:
        *(a1 + 124) = v101;
        goto LABEL_81;
      case 0xEu:
        v54 = objc_alloc_init(CKDPFieldCryptoFeatureSet);
        objc_storeStrong((a1 + 24), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F5068(v54, a2, v57))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0x11u:
        v54 = objc_alloc_init(CKDPStreamingAsset);
        objc_storeStrong((a1 + 104), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !sub_225362FFC(&v54->super.super.isa, a2, v55))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0x14u:
        v54 = objc_alloc_init(CKDPMergeableValue);
        objc_storeStrong((a1 + 80), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPMergeableValueReadFrom(v54, a2, v103))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0x15u:
        v54 = objc_alloc_init(CKDPEncryptedMergeableValue);
        objc_storeStrong((a1 + 56), v54);
        v128 = 0;
        v129 = 0;
        if (PBReaderPlaceMark() && CKDPEncryptedMergeableValueReadFrom(v54, a2, v104))
        {
LABEL_80:
          PBReaderRecallMark();

LABEL_81:
          v115 = objc_msgSend_position(a2, v32, v9);
          if (v115 >= objc_msgSend_length(a2, v116, v117))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_98:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_81;
    }
  }
}

uint64_t CKDPProtectionInfoReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = &OBJC_IVAR___CKDPProtectionInfo__protectionInfo;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadString();
    v33 = &OBJC_IVAR___CKDPProtectionInfo__protectionInfoTag;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPAssetReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v144) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v144) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v144, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v144 & 0x7F) << v10;
      if ((v144 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = PBReaderReadString();
        v34 = 112;
        goto LABEL_84;
      case 2u:
        v33 = PBReaderReadData();
        v34 = 152;
        goto LABEL_84;
      case 4u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 168) |= 0x10u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v99 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v99 >= objc_msgSend_position(a2, v100, v101) && (v104 = objc_msgSend_position(a2, v102, v103) + 1, v104 <= objc_msgSend_length(a2, v105, v106)))
          {
            v107 = objc_msgSend_data(a2, v102, v103);
            v110 = objc_msgSend_position(a2, v108, v109);
            objc_msgSend_getBytes_range_(v107, v111, &v144, v110, 1);

            v114 = objc_msgSend_position(a2, v112, v113);
            objc_msgSend_setPosition_(a2, v115, v114 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v102, v103);
          }

          v98 |= (v144 & 0x7F) << v96;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v30 = v97++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_100;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v98;
        }

LABEL_100:
        v139 = 40;
        goto LABEL_105;
      case 5u:
        v33 = PBReaderReadString();
        v34 = 104;
        goto LABEL_84;
      case 6u:
        v33 = PBReaderReadData();
        v34 = 96;
        goto LABEL_84;
      case 8u:
        v33 = PBReaderReadString();
        v34 = 80;
        goto LABEL_84;
      case 9u:
        v33 = PBReaderReadString();
        v34 = 144;
        goto LABEL_84;
      case 0xAu:
        v116 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_storeStrong((a1 + 128), v116);
        v144 = 0;
        v145 = 0;
        if (PBReaderPlaceMark() && CKDPRecordIdentifierReadFrom())
        {
          goto LABEL_67;
        }

        goto LABEL_108;
      case 0xBu:
        v33 = PBReaderReadString();
        v34 = 160;
        goto LABEL_84;
      case 0xDu:
        v33 = PBReaderReadString();
        v34 = 88;
        goto LABEL_84;
      case 0xEu:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 168) |= 8u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v79 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
          {
            v87 = objc_msgSend_data(a2, v82, v83);
            v90 = objc_msgSend_position(a2, v88, v89);
            objc_msgSend_getBytes_range_(v87, v91, &v144, v90, 1);

            v94 = objc_msgSend_position(a2, v92, v93);
            objc_msgSend_setPosition_(a2, v95, v94 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v82, v83);
          }

          v78 |= (v144 & 0x7F) << v76;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v30 = v77++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_96;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v78;
        }

LABEL_96:
        v139 = 32;
        goto LABEL_105;
      case 0xFu:
        v116 = objc_alloc_init(CKDPProtectionInfo);
        objc_storeStrong((a1 + 120), v116);
        v144 = 0;
        v145 = 0;
        if (PBReaderPlaceMark() && CKDPProtectionInfoReadFrom(v116, a2, v117))
        {
LABEL_67:
          PBReaderRecallMark();

LABEL_106:
          v140 = objc_msgSend_position(a2, v32, v9);
          if (v140 >= objc_msgSend_length(a2, v141, v142))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_108:

        return 0;
      case 0x11u:
        v33 = PBReaderReadData();
        v34 = 136;
        goto LABEL_84;
      case 0x12u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 168) |= 4u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v59 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
          {
            v67 = objc_msgSend_data(a2, v62, v63);
            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_getBytes_range_(v67, v71, &v144, v70, 1);

            v74 = objc_msgSend_position(a2, v72, v73);
            objc_msgSend_setPosition_(a2, v75, v74 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v62, v63);
          }

          v58 |= (v144 & 0x7F) << v56;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v30 = v57++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_92;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v58;
        }

LABEL_92:
        v139 = 24;
        goto LABEL_105;
      case 0x14u:
        v33 = PBReaderReadData();
        v34 = 56;
        goto LABEL_84;
      case 0x15u:
        v33 = PBReaderReadString();
        v34 = 48;
        goto LABEL_84;
      case 0x16u:
        v33 = PBReaderReadString();
        v34 = 72;
        goto LABEL_84;
      case 0x17u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 168) |= 2u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v121 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v121 >= objc_msgSend_position(a2, v122, v123) && (v126 = objc_msgSend_position(a2, v124, v125) + 1, v126 <= objc_msgSend_length(a2, v127, v128)))
          {
            v129 = objc_msgSend_data(a2, v124, v125);
            v132 = objc_msgSend_position(a2, v130, v131);
            objc_msgSend_getBytes_range_(v129, v133, &v144, v132, 1);

            v136 = objc_msgSend_position(a2, v134, v135);
            objc_msgSend_setPosition_(a2, v137, v136 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v124, v125);
          }

          v120 |= (v144 & 0x7F) << v118;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v30 = v119++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_104;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v120;
        }

LABEL_104:
        v139 = 16;
        goto LABEL_105;
      case 0x18u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 168) |= 1u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v144, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v144 & 0x7F) << v35;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_88;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v37;
        }

LABEL_88:
        v139 = 8;
LABEL_105:
        *(a1 + v139) = v55;
        goto LABEL_106;
      case 0x19u:
        v33 = PBReaderReadData();
        v34 = 64;
LABEL_84:
        v138 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_106;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_106;
    }
  }
}

uint64_t CKDPRecordReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  while (2)
  {
    if (v5 >= objc_msgSend_length(a2, v6, v7) || (objc_msgSend_hasError(a2, v8, v9) & 1) != 0)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v99) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v99) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v99, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v99 & 0x7F) << v10;
      if ((v99 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_16;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_16:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = PBReaderReadString();
        v34 = 64;
        goto LABEL_83;
      case 2u:
        v36 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_storeStrong((a1 + 144), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 3u:
        v36 = objc_alloc_init(CKDPRecordType);
        objc_storeStrong((a1 + 200), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v36, a2, v83))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 4u:
        v36 = objc_alloc_init(MEMORY[0x277CBC250]);
        v89 = 56;
        goto LABEL_76;
      case 5u:
        v36 = objc_alloc_init(CKDPDateStatistics);
        objc_storeStrong((a1 + 184), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPDateStatisticsReadFrom(v36, a2, v91))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 7u:
        v36 = objc_alloc_init(CKDPRecordField);
        objc_msgSend_addFields_(a1, v84, v36);
        goto LABEL_58;
      case 8u:
        v36 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 152), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v36, a2, v88))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 9u:
        v36 = objc_alloc_init(MEMORY[0x277CBC250]);
        v89 = 88;
LABEL_76:
        objc_storeStrong((a1 + v89), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0xAu:
        v36 = PBReaderReadString();
        if (v36)
        {
          objc_msgSend_addConflictLoserEtags_(a1, v93, v36);
        }

        goto LABEL_99;
      case 0xBu:
        v33 = PBReaderReadString();
        v34 = 96;
        goto LABEL_83;
      case 0xCu:
        v36 = objc_alloc_init(CKDPRecordField);
        objc_msgSend_addPluginFields_(a1, v61, v36);
LABEL_58:
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldReadFrom(&v36->super.super.isa, a2, v85))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0xDu:
        v36 = objc_alloc_init(CKDPProtectionInfo);
        v86 = 128;
        goto LABEL_72;
      case 0xFu:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 220) |= 1u;
        while (1)
        {
          LOBYTE(v99) = 0;
          v65 = objc_msgSend_position(a2, v32, v9, v99) + 1;
          if (v65 >= objc_msgSend_position(a2, v66, v67) && (v70 = objc_msgSend_position(a2, v68, v69) + 1, v70 <= objc_msgSend_length(a2, v71, v72)))
          {
            v73 = objc_msgSend_data(a2, v68, v69);
            v76 = objc_msgSend_position(a2, v74, v75);
            objc_msgSend_getBytes_range_(v73, v77, &v99, v76, 1);

            v80 = objc_msgSend_position(a2, v78, v79);
            objc_msgSend_setPosition_(a2, v81, v80 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v68, v69);
          }

          v64 |= (v99 & 0x7F) << v62;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v30 = v63++ >= 9;
          if (v30)
          {
            v82 = 0;
            goto LABEL_108;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v82 = 0;
        }

        else
        {
          v82 = v64;
        }

LABEL_108:
        *(a1 + 112) = v82;
        goto LABEL_100;
      case 0x10u:
        v36 = objc_alloc_init(CKDPShare);
        objc_storeStrong((a1 + 160), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareReadFrom(v36, a2, v58))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x11u:
        v33 = PBReaderReadData();
        v34 = 24;
        goto LABEL_83;
      case 0x12u:
        v36 = objc_alloc_init(CKDPProtectionInfo);
        v86 = 32;
LABEL_72:
        objc_storeStrong((a1 + v86), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v36, a2, v90))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x15u:
        v36 = objc_alloc_init(CKDPRecordChainParent);
        objc_storeStrong((a1 + 16), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordChainParentReadFrom(v36, a2, v95))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x16u:
        v36 = objc_alloc_init(CKDPRecordStableUrl);
        objc_storeStrong((a1 + 168), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordStableUrlReadFrom(v36, a2, v94))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x17u:
        v36 = PBReaderReadData();
        if (v36)
        {
          objc_msgSend_addTombstonedPublicKeyIDs_(a1, v35, v36);
        }

        goto LABEL_99;
      case 0x18u:
        v33 = PBReaderReadData();
        v34 = 208;
LABEL_83:
        v92 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_100;
      case 0x1Au:
        v36 = objc_alloc_init(CKDPStorageExpiration);
        objc_storeStrong((a1 + 176), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !sub_2253624AC(v36, a2, v96))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x1Cu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 220) |= 2u;
        while (1)
        {
          LOBYTE(v99) = 0;
          v40 = objc_msgSend_position(a2, v32, v9, v99) + 1;
          if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
          {
            v48 = objc_msgSend_data(a2, v43, v44);
            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_getBytes_range_(v48, v52, &v99, v51, 1);

            v55 = objc_msgSend_position(a2, v53, v54);
            objc_msgSend_setPosition_(a2, v56, v55 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v43, v44);
          }

          v39 |= (v99 & 0x7F) << v37;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v30 = v38++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_104;
          }
        }

        v57 = (v39 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_104:
        *(a1 + 216) = v57;
        goto LABEL_100;
      case 0x1Du:
        v36 = objc_alloc_init(MEMORY[0x277CBC240]);
        objc_storeStrong((a1 + 72), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x1Eu:
        v36 = objc_alloc_init(CKDPRecordCryptoFeatureSet);
        objc_storeStrong((a1 + 8), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !sub_22531CCC0(v36, a2, v60))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x1Fu:
        v36 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v87 = 136;
        goto LABEL_96;
      case 0x20u:
        v36 = objc_alloc_init(CKDPRecordOneTimeStableUrlInfo);
        objc_storeStrong((a1 + 104), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordOneTimeStableUrlInfoReadFrom(v36, a2, v59))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x21u:
        v36 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v87 = 40;
LABEL_96:
        objc_storeStrong((a1 + v87), v36);
        v99 = 0;
        v100 = 0;
        if (PBReaderPlaceMark() && sub_2253101B8(v36, a2, v97))
        {
LABEL_98:
          PBReaderRecallMark();
LABEL_99:

LABEL_100:
          v5 = objc_msgSend_position(a2, v32, v9);
          continue;
        }

LABEL_110:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_100;
    }
  }
}

uint64_t CKDPDateStatisticsReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC240]);
        v33 = 16;
      }

      else
      {
        if ((v31 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v32 = objc_alloc_init(MEMORY[0x277CBC240]);
        v33 = 8;
      }

      objc_storeStrong((a1 + v33), v32);
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22509E008(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  if (a1 == 2)
  {
    return 0;
  }

  if (a1 != 3)
  {
    v4 = objc_alloc(MEMORY[0x277CBC360]);
    v6 = objc_msgSend_initWithCode_format_(v4, v5, 12, @"Unexpected reference type", v1, v2);
    objc_exception_throw(v6);
  }

  return *MEMORY[0x277CBC070];
}

uint64_t sub_22509EBFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_volumeIndex(v3, v4, v5);
  v7 = *(*(a1 + 32) + 96);
  v10 = objc_msgSend_volumeUUID(v3, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v11, v6, v10);

  v14 = objc_msgSend_volumeUUID(v3, v12, v13);
  v15 = *(*(a1 + 32) + 88);
  v18 = objc_msgSend_volumeIndex(v3, v16, v17);

  objc_msgSend_setObject_forKeyedSubscript_(v15, v19, v14, v18);
  return 0;
}

uint64_t sub_22509ED3C(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_volumeIndex(v3, v4, v5);
  if (v6 && (v9 = v6, objc_msgSend_volumeUUID(v3, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v13 = objc_msgSend_volumeUUID(v3, v11, v12);
    v15 = objc_msgSend_deviceIDForVolumeUUID_(CKDVolumeManager, v14, v13);

    if (v15)
    {
      os_unfair_lock_lock((*(a1 + 40) + 80));
      v17 = *(a1 + 40);
      v20 = objc_msgSend_volumeIndex(v3, v18, v19);
      v23 = objc_msgSend_volumeUUID(v3, v21, v22);
      objc_msgSend__lockedSetVolumeIndex_forVolumeUUID_(v17, v24, v20, v23);

      os_unfair_lock_unlock((*(a1 + 40) + 80));
    }

    else
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v3);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
      {
        v30 = 138412290;
        v31 = v3;
        _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Volume %@ is not mounted. Deleting all asset handles for this volume", &v30, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = v3;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Invalid device volume %@", &v30, 0xCu);
    }

    v27 = objc_msgSend_deleteObject_(*(a1 + 40), v26, v3);
  }

  return 0;
}

void sub_22509F0B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);
  objc_msgSend_finishWithError_(WeakRetained, v6, v5);
}

void sub_22509FA5C(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  objc_msgSend_setFullRecordsToFetch_(v3, v4, *(a1 + 32));
  v7 = objc_msgSend_forceDecryptionAttempt(*(a1 + 40), v5, v6);
  objc_msgSend_setForcePCSDecrypt_(v3, v8, v7);
  v11 = objc_msgSend_useRecordCache(*(a1 + 40), v9, v10);
  objc_msgSend_setUseRecordCache_(v3, v12, v11);
  objc_initWeak(&location, *(a1 + 40));
  objc_initWeak(&from, v3);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2250A6060;
  v39[3] = &unk_27854B230;
  objc_copyWeak(v44, &location);
  v13 = *(a1 + 64);
  v43 = v47;
  v44[1] = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v40 = v14;
  v41 = v15;
  v42 = *(a1 + 56);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v16, v39);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_2250A7CC0;
  v34 = &unk_27854B258;
  objc_copyWeak(&v37, &location);
  objc_copyWeak(&v38, &from);
  v36 = v47;
  v35 = *(a1 + 56);
  objc_msgSend_setCompletionBlock_(v3, v17, &v31);
  objc_msgSend_setCurrentFetchOp_(*(a1 + 40), v18, v3, v31, v32, v33, v34);
  v21 = objc_msgSend_fetchGroup(*(a1 + 40), v19, v20);
  dispatch_group_enter(v21);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = *(a1 + 40);
    v30 = objc_msgSend_ckShortDescription(v27, v28, v29);
    *buf = 134218754;
    v50 = v3;
    v51 = 2114;
    v52 = v26;
    v53 = 2048;
    v54 = v27;
    v55 = 2114;
    v56 = v30;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %p for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(*(a1 + 40), v23, v24);
  kdebug_trace();

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v37);

  objc_destroyWeak(v44);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(v47, 8);
}

void sub_22509FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, id a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2250A01A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2250A01C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setError_(WeakRetained, v4, v3);

  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_leave(v7);
}

void sub_2250A0728(void *a1, void *a2, void *a3)
{
  v31 = a1;
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_actions(v5, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_identifier(v5, v13, v14);
    v18 = objc_msgSend_name(v15, v16, v17);

    v20 = objc_msgSend_objectForKeyedSubscript_(v6, v19, v18);

    if (v20)
    {
      v22 = objc_msgSend_objectForKeyedSubscript_(v6, v21, v18);
      v25 = objc_msgSend_actions(v22, v23, v24);
      v28 = objc_msgSend_actions(v5, v26, v27);
      objc_msgSend_addObjectsFromArray_(v25, v29, v28);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v6, v21, v5, v18);
      objc_msgSend_addFields_(v31, v30, v5);
    }
  }

  else
  {
    objc_msgSend_addFields_(v31, v13, v5);
  }
}

__CFString *CKStringForAccountType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"platform";
  }

  else
  {
    return off_278545850[a1 - 1];
  }
}

id CKDescriptionForIdentitySet(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v4 = PCSIdentitySetCopyService();
  objc_msgSend_appendFormat_(v3, v5, @"<PCSIdentitySetRef %p service: %@, identities: {\n", a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v8 = v3;
  PCSIdentitySetEnumeratePublicKeys();
  objc_msgSend_appendString_(v8, v6, @"}>");

  return v8;
}

void sub_2250A1740(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2250A1778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_2250A261C(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 32);
      v19 = v9;
      v22 = objc_msgSend_zoneID(v18, v20, v21);
      *buf = 138412546;
      v25 = v22;
      v26 = 2112;
      v27 = v8;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the database for %@: %@", buf, 0x16u);
    }

    v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
    dispatch_group_leave(v12);
  }

  else
  {
    v13 = objc_msgSend_zoneID(*(a1 + 32), v6, v7);
    v16 = objc_msgSend_databaseScope(*(a1 + 32), v14, v15);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22527F328;
    v23[3] = &unk_27854B9D0;
    v23[4] = *(a1 + 32);
    objc_msgSend_fetchPCSDataForZoneWithID_databaseScope_withCompletionHandler_(v5, v17, v13, v16, v23);
  }
}

void sub_2250A2838(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(v5, v8, v9);
  objc_msgSend__handleDecryptedZonePCSData_withError_(*(a1 + 32), v10, v7, v6);

  if (!v6 && objc_msgSend_wasFetchedFromCache(*(a1 + 32), v11, v12))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = v13;
      v20 = objc_msgSend_zoneID(v16, v18, v19);
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Zone PCS was fetched from cache for %{public}@, checking key rolling requirements", &v22, 0xCu);
    }

    objc_msgSend__checkAndUpdateZonePCSIfNeeded(*(a1 + 32), v14, v15);
  }

  v21 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v11, v12);
  dispatch_group_leave(v21);
}

void sub_2250A3EC8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 480), a2);
  v4 = a2;
  v7 = objc_msgSend_forcePCSDecrypt(*(a1 + 32), v5, v6);
  objc_msgSend_setForcePCSDecrypt_(*(*(a1 + 32) + 480), v8, v7);
  v11 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v9, v10);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2250A6E9C;
  v18[3] = &unk_278545A00;
  v19 = v11;
  v12 = *(*(a1 + 32) + 480);
  v13 = v11;
  objc_msgSend_setCompletionBlock_(v12, v14, v18);
  v17 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v15, v16);
  dispatch_group_enter(v17);
}

uint64_t sub_2250A4128(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
          if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
          {
            v49 = objc_msgSend_data(a2, v44, v45);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v44, v45);
          }

          v40 |= (v63[0] & 0x7F) << v38;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v30 = v39++ >= 9;
          if (v30)
          {
            v58 = 0;
            goto LABEL_38;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v58 = 0;
        }

        else
        {
          v58 = v40;
        }

LABEL_38:
        *(a1 + 16) = v58;
      }

      else if (v32 == 2)
      {
        v36 = PBReaderReadData();
        v37 = *(a1 + 24);
        *(a1 + 24) = v36;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPZoneRetrieveChangesResponseChangedZone);
        objc_msgSend_addChangedZones_(a1, v34, v33);
        v63[0] = 0;
        v63[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22538C520(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2250A4730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_requestInfos(WeakRetained, v1, v2);
  objc_msgSend_removeAllObjects(v3, v4, v5);

  v8 = objc_msgSend_error(WeakRetained, v6, v7);
  objc_msgSend_finishWithError_(WeakRetained, v9, v8);
}

id sub_2250A4DF4(char a1, const char *a2)
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 3);
  v6 = v3;
  if ((a1 & 2) != 0)
  {
    objc_msgSend_addObject_(v3, v4, @"local-fetch-only");
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  objc_msgSend_addObject_(v6, v4, @"wants-parent");
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  objc_msgSend_addObject_(v6, v4, @"wants-zoneish");
  if ((a1 & 0x10) != 0)
  {
LABEL_5:
    objc_msgSend_addObject_(v6, v4, @"wants-per-participant");
  }

LABEL_6:
  v7 = MEMORY[0x277CCACA8];
  if (objc_msgSend_count(v6, v4, v5))
  {
    v9 = objc_msgSend_componentsJoinedByString_(v6, v8, @"|");
    v11 = objc_msgSend_stringWithFormat_(v7, v10, @"(%@)", v9);
  }

  else
  {
    v11 = objc_msgSend_stringWithFormat_(v7, v8, @"(%@)", @"none");
  }

  return v11;
}

void sub_2250A57A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2250A6060(uint64_t a1, void *a2, void *a3, void *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v70 = v8;
  v72 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    v13 = *(a1 + 72);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/CKDRecordFetchAggregator.m");
    v18 = objc_msgSend_operationID(*(a1 + 32), v16, v17);
    v20 = v18;
    if (v72)
    {
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v19, v13, WeakRetained, v15, 376, @"Trying to invoke the record fetch completion block on completed operation %@ with record %@ and record ID %@%@%@", v18, v7, v70, @". Error was ", v72);
    }

    else
    {
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v19, v13, WeakRetained, v15, 376, @"Trying to invoke the record fetch completion block on completed operation %@ with record %@ and record ID %@%@%@", v18, v7, v70, &stru_28385ED00, &stru_28385ED00);
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v59 = v21;
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = *(a1 + 40);
    v65 = objc_msgSend_ckShortDescription(v62, v63, v64);
    v66 = v65;
    *buf = 138544642;
    v67 = @" Error was ";
    v80 = v61;
    v68 = &stru_28385ED00;
    v81 = 2048;
    if (!v72)
    {
      v67 = &stru_28385ED00;
    }

    v82 = v62;
    if (v72)
    {
      v68 = v72;
    }

    v83 = 2114;
    v84 = v65;
    v85 = 2112;
    v86 = v70;
    v87 = 2114;
    v88 = v67;
    v89 = 2112;
    v90 = v68;
    _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "Record fetcher <%{public}@: %p; %{public}@> fetched a record with ID %@.%{public}@%@", buf, 0x3Eu);
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v22, v70);
  if (!objc_msgSend_count(v23, v24, v25))
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v26, v27);
    v29 = *(a1 + 72);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/CKDRecordFetchAggregator.m");
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v32, v29, WeakRetained, v31, 380, @"Didn't get any fetch infos for record with ID %@", v70);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v23;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v74, v78, 16);
  if (v34)
  {
    v37 = v34;
    v73 = *v75;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v75 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v74 + 1) + 8 * i);
        v40 = objc_msgSend_record(v39, v35, v36);
        v43 = objc_msgSend_etag(v40, v41, v42);
        if (!v43)
        {

LABEL_20:
          objc_msgSend_setError_(v39, v35, v72);
          objc_msgSend_setRecord_(v39, v57, v9);
          objc_msgSend_setState_(v39, v58, 3);
          continue;
        }

        v46 = v43;
        v47 = objc_msgSend_record(v39, v44, v45);
        v50 = objc_msgSend_etag(v47, v48, v49);
        objc_msgSend_etag(v9, v51, v52);
        v54 = v53 = v9;
        isEqualToString = objc_msgSend_isEqualToString_(v50, v55, v54);

        v9 = v53;
        if (isEqualToString)
        {
          goto LABEL_20;
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v74, v78, 16);
    }

    while (v37);
  }
}

uint64_t sub_2250A6D8C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v9 = objc_msgSend_operationID(v5, v7, v8);
    v10 = 138543362;
    v11 = v9;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "All records have been decrypted for operation %{public}@", &v10, 0xCu);
  }

  return objc_msgSend_finishWithError_(*(a1 + 32), v3, 0);
}

void sub_2250A754C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2250A7618(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_2250A783C(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 134217984;
    v10 = v8;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Clearing all entries in PCS cache %p", &v9, 0xCu);
  }

  v5 = objc_msgSend_cacheEntries(*(a1 + 32), v3, v4);
  objc_msgSend_removeAllObjects(v5, v6, v7);
}

void sub_2250A7CC0(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = objc_msgSend_error(v3, v4, v5);

  v9 = MEMORY[0x277CBC830];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v13 = v10;
      v16 = objc_msgSend_error(v3, v14, v15);
      *buf = 138412290;
      v73 = v16;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Error fetching records: %@", buf, 0xCu);
    }

    v17 = objc_msgSend_error(WeakRetained, v11, v12);

    if (!v17)
    {
      v18 = objc_msgSend_error(v3, v7, v8);
      objc_msgSend_setError_(WeakRetained, v19, v18);
    }
  }

  v59 = v3;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = objc_msgSend_allValues(*(a1 + 32), v7, v8);
  v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v68, v81, 16);
  if (v62)
  {
    v61 = *v69;
    v21 = *MEMORY[0x277CBC120];
    do
    {
      v22 = 0;
      do
      {
        if (*v69 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v63 = v22;
        v23 = *(*(&v68 + 1) + 8 * v22);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v24 = v23;
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v64, v80, 16);
        if (v26)
        {
          v29 = v26;
          v30 = *v65;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v65 != v30)
              {
                objc_enumerationMutation(v24);
              }

              v32 = *(*(&v64 + 1) + 8 * i);
              if (objc_msgSend_state(v32, v27, v28) <= 2)
              {
                v35 = objc_msgSend_error(WeakRetained, v27, v28);
                if (v35)
                {
                  objc_msgSend_setError_(v32, v33, v35);
                }

                else
                {
                  v36 = MEMORY[0x277CBC560];
                  v37 = objc_msgSend_recordID(v32, v33, v34);
                  v39 = objc_msgSend_errorWithDomain_code_format_(v36, v38, v21, 2003, @"We didn't get a callback for record %@", v37);
                  objc_msgSend_setError_(v32, v40, v39);
                }

                objc_msgSend_setState_(v32, v41, 3);
              }
            }

            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v64, v80, 16);
          }

          while (v29);
        }

        v22 = v63 + 1;
      }

      while (v63 + 1 != v62);
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v68, v81, 16);
    }

    while (v62);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v43 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v53 = v43;
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v58 = objc_msgSend_ckShortDescription(WeakRetained, v56, v57);
    *buf = 134218754;
    v73 = v59;
    v74 = 2114;
    v75 = v55;
    v76 = 2048;
    v77 = WeakRetained;
    v78 = 2114;
    v79 = v58;
    _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Fetch records operation %p completed for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(WeakRetained, v44, v45);
  kdebug_trace();
  objc_msgSend_setCurrentFetchOp_(WeakRetained, v46, 0);
  v49 = objc_msgSend_fetchSource(WeakRetained, v47, v48);
  dispatch_source_merge_data(v49, 1uLL);

  v52 = objc_msgSend_fetchGroup(WeakRetained, v50, v51);
  dispatch_group_leave(v52);
}

void sub_2250A8DA8(uint64_t a2@<X8>)
{
  sub_2250A8DDC();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_2250A8DF0()
{
  v1 = sub_2250B0DFC(&qword_27D718AF0, &qword_225443AB8);
  sub_2250B2170(v1);
  v2 = sub_2250B0DFC(&qword_27D718AF8, &unk_225443AC0);
  sub_2250B2170(v2);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2250A8EF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A901C()
{
  sub_2250C87B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2250A905C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A9094()
{
  MEMORY[0x22AA65EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A90CC()
{
  v29 = type metadata accessor for SessionID();
  sub_225072D1C();
  v2 = v1;
  v32 = *(v1 + 80);
  v3 = (v32 + 32) & ~v32;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v8 = v7;
  v31 = *(v7 + 80);
  v9 = (v3 + v5 + v31) & ~v31;
  v11 = *(v10 + 64);
  v12 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507D394(v12);
  v14 = *(v13 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v28 = *(v16 + 64);
  v30 = type metadata accessor for Entitlements();
  sub_225072D1C();
  v18 = v17;
  v19 = *(v17 + 80);
  v27 = *(v20 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v29);
  (*(v8 + 8))(v0 + v9, v6);
  v21 = type metadata accessor for SessionInvalidationContext();
  if (!sub_22507C8E8(v0 + v15, 1, v21))
  {
    sub_22507E428();
    (*(v22 + 8))(v0 + v15, v21);
  }

  v23 = (((((v28 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + v23 + 8) & ~v19;
  v25 = (v27 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v18 + 8))(v0 + v24, v30);

  return MEMORY[0x2821FE8E8](v0, ((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v32 | v31 | v19 | v14 | 7);
}

uint64_t sub_2250A93B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2250A93CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2250A9414()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9464()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2250A9514()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A954C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2250A9594()
{
  type metadata accessor for ResolvedBundleID();
  sub_225072BF0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2250A963C()
{
  v1 = type metadata accessor for ResolvedBundleID();
  sub_225072D1C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2250A9704()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250A9740()
{
  v1 = type metadata accessor for ResolvedBundleID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2250A981C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();

  return sub_22507C8E8(a1, a2, v4);
}

uint64_t sub_2250A9864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();

  return sub_22507C8C0(a1, a2, a2, v4);
}

uint64_t sub_2250A98B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A98E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9930()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2250A9970()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250A9A18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A9A50()
{

  sub_2250EBCC4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2250A9AB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9AF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2250A9B90()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2250A9BF8()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9C50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250A9C90()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2250A9CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = type metadata accessor for TimeZone();
      v10 = *(a3 + 40);
    }

    return sub_22507C8E8(a1 + v10, a2, v9);
  }
}

uint64_t sub_2250A9DC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = type metadata accessor for TimeZone();
      v10 = *(a4 + 40);
    }

    return sub_22507C8C0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2250A9EA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_2250FBC20();
  }

  type metadata accessor for Date();
  v5 = sub_2250FBCAC(*(a3 + 20));

  return sub_22507C8E8(v5, v6, v7);
}

void sub_2250A9F18()
{
  sub_2250FBCC4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_2250FBCAC(*(v4 + 20));

    sub_22507C8C0(v5, v6, v0, v7);
  }
}

uint64_t sub_2250A9F90(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_2250FBC20();
  }

  if (*(*(type metadata accessor for Date() - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    type metadata accessor for URL();
    v5 = *(a3 + 24);
  }

  v6 = sub_2250FBCAC(v5);

  return sub_22507C8E8(v6, v7, v8);
}

void sub_2250AA048()
{
  sub_2250FBCC4();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(type metadata accessor for Date() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      type metadata accessor for URL();
      v8 = *(v5 + 24);
    }

    v9 = sub_2250FBCAC(v8);

    sub_22507C8C0(v9, v10, v0, v11);
  }
}

uint64_t sub_2250AA1C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2250F78E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2250AA208@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2250F7BB8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2250AA248@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2250F870C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2250AA304()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250AA3B4()
{

  sub_22507E758();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2250AA3EC()
{
  _Block_release(*(v0 + 16));
  sub_22507E758();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2250AA420()
{

  sub_22509877C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

id sub_2250AB6D8(id result)
{
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = result;
  v3 = sub_2250B2038(result, &selRef_cloudKitToken);
  if (!v4)
  {
LABEL_11:
    v19.receiver = v1;
    v19.super_class = type metadata accessor for CKCredentialInterceptingAccount();
    return objc_msgSendSuper2(&v19, sel_aa_updateTokensWithProvisioningResponse_, v2);
  }

  v5 = v3;
  v6 = v4;
  result = [v1 accountStore];
  if (!result)
  {
    goto LABEL_13;
  }

  v7 = result;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_2250B1E5C(v8, v9, v7);

  result = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];
  if (result)
  {
    v11 = result;
    v12 = sub_2250B2038(v1, &selRef_username);
    if (v13)
    {
      v14 = MEMORY[0x22AA62D80](v12);
    }

    else
    {
      v14 = 0;
    }

    [v11 setUsername_];

    v15 = [objc_allocWithZone(MEMORY[0x277CB8F38]) init];
    sub_2250B2104(v5, v6, v15, &selRef_setToken_);
    [v11 setCredential_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = v11;
      [v17 setFakeCKAccount_];
    }

    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_2250AB960(void *a1, SEL *a2)
{
  swift_unknownObjectWeakInit();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CKCredentialInterceptingAccount();
  v5 = objc_msgSendSuper2(&v7, *a2, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_2250ABA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCredentialInterceptingAccount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2250ABA70()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 appleAccount];
  v7 = [v6 accountProperties];

  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  strcpy(v29, "localizedError");
  v29[15] = -18;
  v8 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v8)
  {
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CKLog.getter();
  sub_22508DF28(v29, v28);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    (*(v3 + 8))(v5, v2);
    sub_225073BF0(v29);
    v25 = v28;
    goto LABEL_7;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v27 = v13;
  *v12 = 136315394;
  v14 = sub_2250B2098([v9 appleAccount], &selRef_username);
  v16 = v15;

  if (!v16)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v17 = sub_225095AFC(v14, v16, &v27);

  *(v12 + 4) = v17;
  *(v12 + 12) = 2080;
  v18 = sub_225073BAC(v28, v28[3]);
  MEMORY[0x28223BE20](v18);
  (*(v20 + 16))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = String.init<A>(describing:)();
  v23 = v22;
  sub_225073BF0(v28);
  v24 = sub_225095AFC(v21, v23, &v27);

  *(v12 + 14) = v24;
  _os_log_impl(&dword_22506F000, v10, v11, "\n=\n==\n===\n====\n=====\n======\n=======\n\nIMPORTANT ERROR FOLLOWS:\nYou need to sign in to the account %s in Settings, possibly due to outdated Terms and Conditions. Error: %s \n\n=======\n======\n=====\n====\n===\n==\n=", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AA65DF0](v13, -1, -1);
  MEMORY[0x22AA65DF0](v12, -1, -1);

  (*(v3 + 8))(v5, v2);
  v25 = v29;
LABEL_7:
  sub_225073BF0(v25);
}

id sub_2250ABE40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v113 = a5;
  v120 = a3;
  v12 = type metadata accessor for DispatchTime();
  v116 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedAccountStore];
  v16 = [v15 accountStore];

  if (!v16)
  {
    goto LABEL_66;
  }

  v115 = v12;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v16;
  v19 = sub_2250B1E5C(v17, v18, v16);
  v20 = [objc_allocWithZone(type metadata accessor for CKCredentialInterceptingAccount()) initWithAccountType_];
  if (!v20)
  {
    goto LABEL_67;
  }

  v21 = v20;
  sub_2250B2104(a1, a2, v21, &selRef_setUsername_);
  v22 = objc_allocWithZone(MEMORY[0x277CB8F38]);

  v117 = sub_2250B0EA4(v120, a4);
  [v21 setCredential:?];
  v112 = v21;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = [(objc_class *)isa CKDeepCopy];

  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = sub_2250FC41C(v25);

  if (!v26)
  {
    v26 = Dictionary.init(dictionaryLiteral:)();
  }

  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [(objc_class *)v27 CKDeepCopy];

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = sub_2250FC41C(v29);

  if (!v30)
  {
    v30 = Dictionary.init(dictionaryLiteral:)();
  }

  v118 = v19;
  v114 = v30;
  if (a6)
  {
    v31 = MEMORY[0x22AA62D80](v113, a6);
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = MEMORY[0x22AA62D80](v120, a4);

  v34 = [v32 initWithAppleAccount:v112 hsa2RecoveryKey:v31 hsa2AccountPassword:v33];

  swift_unknownObjectWeakAssign();
  v35 = dispatch_semaphore_create(0);
  Dictionary.init(dictionaryLiteral:)();
  v36 = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *&v129 = sub_2250B21B8;
  *(&v129 + 1) = v37;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v128 = sub_2250B2D88;
  *(&v128 + 1) = &unk_28385A2B8;
  v38 = _Block_copy(&aBlock);
  v39 = v35;

  v120 = v34;
  [v34 renewAuthTokenWithOptions:v36 completionHandler:v38];
  _Block_release(v38);

  static DispatchTime.distantFuture.getter();
  v108 = v39;
  MEMORY[0x22AA630F0](v14);
  (*(v116 + 8))(v14, v115);
  v40 = 0;
  v41 = 1 << *(v26 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v26 + 64);
  v44 = (v41 + 63) >> 6;
  if (!v43)
  {
LABEL_14:
    while (1)
    {
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_62;
      }

      if (v45 >= v44)
      {
        v43 = 0;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        goto LABEL_19;
      }

      v43 = *(v26 + 64 + 8 * v45);
      ++v40;
      if (v43)
      {
        v40 = v45;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v45 = v40;
LABEL_18:
    v46 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v47 = v46 | (v45 << 6);
    v48 = (*(v26 + 48) + 16 * v47);
    v50 = *v48;
    v49 = v48[1];
    sub_22508DF28(*(v26 + 56) + 32 * v47, v123);
    *&v124 = v50;
    *(&v124 + 1) = v49;
    sub_2250B28C8(v123, &v125);

LABEL_19:
    aBlock = v124;
    v128 = v125;
    v129 = v126;
    v51 = *(&v124 + 1);
    if (!*(&v124 + 1))
    {
      break;
    }

    v52 = aBlock;
    sub_2250B28C8(&v128, &v124);
    v53 = [v120 appleAccount];
    sub_225073BAC(&v124, *(&v125 + 1));
    v54 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_2250B1F50(v54, v52, v51, v53);

    swift_unknownObjectRelease();
    sub_225073BF0(&v124);
    if (!v43)
    {
      goto LABEL_14;
    }
  }

  v55 = sub_2250FC6B4(v114);

  if (v55)
  {
    v56 = 0;
    v57 = v55 + 64;
    v58 = 1 << *(v55 + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(v55 + 64);
    v61 = (v58 + 63) >> 6;
    v62 = v118;
    v63 = v119;
    v64 = v117;
    v111 = v55;
    v110 = v55 + 64;
    v109 = v61;
LABEL_28:
    if (!v60)
    {
      while (1)
      {
        v65 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_65;
        }

        if (v65 >= v61)
        {

          v104 = v62;
          v105 = v108;
          v106 = v112;
          goto LABEL_60;
        }

        v60 = *(v57 + 8 * v65);
        ++v56;
        if (v60)
        {
          goto LABEL_33;
        }
      }
    }

    v65 = v56;
LABEL_33:
    v115 = v65;
    v66 = __clz(__rbit64(v60)) | (v65 << 6);
    v67 = (*(v55 + 48) + 16 * v66);
    v68 = *v67;
    v69 = v67[1];
    v70 = *(*(v55 + 56) + 8 * v66);

    v71 = MEMORY[0x22AA62D80](v68, v69);

    v72 = [v120 appleAccount];
    v114 = v71;
    v113 = v71;
    v73 = [v72 propertiesForDataclass_];

    if (v73)
    {
      v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v74 = Dictionary.init(dictionaryLiteral:)();
    }

    v75 = 0;
    v116 = (v60 - 1) & v60;
    v76 = 1 << *(v70 + 32);
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & *(v70 + 64);
    v79 = (v76 + 63) >> 6;
    while (v78)
    {
      v80 = v75;
LABEL_46:
      v81 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v82 = v81 | (v80 << 6);
      v83 = (*(v70 + 48) + 16 * v82);
      v85 = *v83;
      v84 = v83[1];
      sub_22508DF28(*(v70 + 56) + 32 * v82, v123);
      *&v124 = v85;
      *(&v124 + 1) = v84;
      sub_2250B28C8(v123, &v125);

LABEL_47:
      aBlock = v124;
      v128 = v125;
      v129 = v126;
      v86 = *(&v124 + 1);
      if (!*(&v124 + 1))
      {

        v102 = [v120 appleAccount];
        sub_2250B1EC0(v74, v114, v102);

        v103 = v113;
        v56 = v115;
        v62 = v118;
        v63 = v119;
        v64 = v117;
        v55 = v111;
        v57 = v110;
        v61 = v109;
        v60 = v116;
        goto LABEL_28;
      }

      v87 = aBlock;
      sub_2250B28C8(&v128, v123);
      *&v122[0] = v87;
      *(&v122[0] + 1) = v86;
      AnyHashable.init<A>(_:)();
      sub_22508DF28(v123, v122);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v74;
      v89 = sub_2250D727C(&v124);
      v91 = v74[2];
      v92 = (v90 & 1) == 0;
      v93 = v91 + v92;
      if (__OFADD__(v91, v92))
      {
        goto LABEL_63;
      }

      v94 = v89;
      v95 = v90;
      sub_2250B0DFC(&qword_27D718C98, &unk_225443F20);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v93))
      {
        v96 = sub_2250D727C(&v124);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_68;
        }

        v94 = v96;
      }

      v74 = v121;
      if (v95)
      {
        v98 = (v121[7] + 32 * v94);
        sub_225073BF0(v98);
        sub_2250B28C8(v122, v98);
        sub_2250B28FC(&v124);
        sub_225073BF0(v123);
      }

      else
      {
        v121[(v94 >> 6) + 8] |= 1 << v94;
        sub_22508DECC(&v124, v74[6] + 40 * v94);
        sub_2250B28C8(v122, (v74[7] + 32 * v94));
        sub_2250B28FC(&v124);
        sub_225073BF0(v123);
        v99 = v74[2];
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          goto LABEL_64;
        }

        v74[2] = v101;
      }
    }

    while (1)
    {
      v80 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v80 >= v79)
      {
        v78 = 0;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        goto LABEL_47;
      }

      v78 = *(v70 + 64 + 8 * v80);
      ++v75;
      if (v78)
      {
        v75 = v80;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v104 = v112;
  v106 = v119;
  v64 = v118;
  v105 = v117;
  v63 = v108;
LABEL_60:

  return v120;
}

uint64_t sub_2250AC9EC()
{
  _s29ExplicitCredentialAccountListCMa();
  v0 = swift_allocObject();
  sub_2250B0DFC(&qword_27D718C90, &qword_225443F18);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = result;
  off_27D718AC8 = v0;
  return result;
}

uint64_t sub_2250ACA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_2250ACAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_2250ACB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_2250ACBD4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_2250ACC54@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *result;
  if (*(*result + 16) && (result = sub_2250D72C0(a2, a3, a4, a5), (v8 & 1) != 0))
  {
    v9 = *(*(v7 + 56) + 8 * result);
    result = v9;
  }

  else
  {
    v9 = 0;
  }

  *a6 = v9;
  return result;
}

double sub_2250ACCC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22507DF9C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22508DF28(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2250ACD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22507DF9C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_2250ACD74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2250D727C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_22508DF28(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2250ACDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22507DF9C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void sub_2250ACE30()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_2250B28D8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_2250ACE8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  sub_225102674(v11, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  *a1 = v13;
}

uint64_t sub_2250ACF24()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id static CKDBackingExplicitCredentialsAccount.explicitCredentialsAccount(withEmail:password:recoveryKey:propertyOverrides:overridesByDataclass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a5;
  v15 = type metadata accessor for Logger();
  sub_225072D1C();
  v59 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() currentPersona];
  if (v20)
  {
    v21 = v20;
    v58 = v15;
    v22 = CKPersona.isDataSeparated.getter();
    if (v22 != 2 && (v22 & 1) != 0)
    {
      v23 = [v21 identifier];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v24;

      if (a7)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250ACCC0(v25, v26, a7, &v63);

        if (*(&v64 + 1))
        {
          if (swift_dynamicCast())
          {
            v57 = v62;
            v27 = v55 == v61 && v56 == v62;
            if (v27 || (v54 = v61, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {

              goto LABEL_15;
            }

LABEL_31:
            CKLog.getter();

            v45 = v56;

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = sub_225082610();
              v61 = swift_slowAlloc();
              *v48 = 136315650;
              v49 = sub_225095AFC(v55, v45, &v61);

              *(v48 + 4) = v49;
              *(v48 + 12) = 2080;
              *(v48 + 14) = sub_225095AFC(a1, a2, &v61);
              *(v48 + 22) = 2080;
              *&v63 = v54;
              *(&v63 + 1) = v57;
              sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
              v50 = String.init<A>(describing:)();
              v52 = sub_225095AFC(v50, v51, &v61);

              *(v48 + 24) = v52;
              _os_log_impl(&dword_22506F000, v46, v47, "Current persona identifier %s does not match persona override on requested fake account %s: %s. Not returning an account", v48, 0x20u);
              swift_arrayDestroy();
              sub_22507C9FC();
              sub_22507C9FC();
            }

            else
            {
            }

            (*(v59 + 8))(v19, v58);
            return 0;
          }

LABEL_30:
          v54 = 0;
          v57 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      sub_22507F168(&v63, &qword_27D718AE0, &unk_225443AA0);
      goto LABEL_30;
    }
  }

  if (a7)
  {
LABEL_15:
    v28 = a7;
    goto LABEL_17;
  }

  v28 = Dictionary.init(dictionaryLiteral:)();
LABEL_17:
  v29 = a3;

  if (a8)
  {
    v30 = a8;
  }

  else
  {
    v30 = Dictionary.init(dictionaryLiteral:)();
  }

  if (*(v28 + 16) || *(v30 + 16))
  {
    sub_2250B0D98();

    v31 = sub_22507F254();
    return sub_2250ABE40(v31, v32, v33, v34, v60, a6, v28, v30);
  }

  else
  {

    if (qword_27D718AC0 != -1)
    {
      v37 = swift_once();
    }

    v38 = *(off_27D718AC8 + 2);
    MEMORY[0x28223BE20](v37);
    *(&v53 - 4) = a1;
    *(&v53 - 3) = a2;
    *(&v53 - 2) = v29;
    *(&v53 - 1) = a4;
    os_unfair_lock_lock(v38 + 6);
    sub_2250B0DDC(&v38[4], &v63);
    os_unfair_lock_unlock(v38 + 6);
    v35 = v63;
    if (!v63)
    {
      v59 = sub_2250B0D98();

      v39 = Dictionary.init(dictionaryLiteral:)();
      Dictionary.init(dictionaryLiteral:)();
      v40 = sub_22507F254();
      v35 = sub_2250ABE40(v40, v41, v42, v43, v60, a6, v39, v44);
      sub_2250ACE30();
    }
  }

  return v35;
}

void sub_2250AD6B8(uint64_t a1, void *a2, const void *a3)
{
  v156 = a3;
  v169 = type metadata accessor for DispatchTime();
  v157 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v153 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v154 = &v150 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v151 = &v150 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v152 = &v150 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v150 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v159 = &v150 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v150 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v150 - v22;
  CKLog.getter();
  v24 = a2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
  v164 = 0;
  v155 = v6;
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    v31 = sub_2250B2098([v24 appleAccount], &selRef_username);
    v28 = v24;
    if (!v32)
    {
LABEL_59:
      _Block_release(v156);

      __break(1u);
LABEL_60:
      _Block_release(v156);

      __break(1u);
LABEL_61:
      _Block_release(v156);

      __break(1u);
      return;
    }

    v33 = v31;
    v34 = v32;

    v35 = sub_225095AFC(v33, v34, &aBlock);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_22506F000, v25, v26, "Fetching account info for fake account with email %s", v29, 0xCu);
    sub_225073BF0(v30);
    MEMORY[0x22AA65DF0](v30, -1, -1);
    MEMORY[0x22AA65DF0](v29, -1, -1);

    v6 = v155;
    v170 = *(v155 + 8);
    v170(v23, v5);
    v24 = v28;
  }

  else
  {

    v170 = *(v6 + 8);
    v170(v23, v5);
  }

  v36 = v157;
  v37 = [objc_opt_self() sharedAccountStore];
  v167 = [v37 accountStore];

  v163 = sub_2250B2038(v24, &selRef_hsa2RecoveryKey);
  v165 = v39;
  v166 = v5;
  v171 = v24;
  v40 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
  if (!v39)
  {
    goto LABEL_20;
  }

  v162 = (v6 + 8);
  *&v161 = &v174;
  v41 = (v36 + 8);
  v42 = 2;
  *&v38 = 138412290;
  v158 = v38;
  while (1)
  {
    CKLog.getter();
    v43 = v24;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v28->entrysize = v158;
      *&v28->count = v43;
      *v46 = v24;
      v47 = v43;
      _os_log_impl(&dword_22506F000, v44, v45, "Calculating HSA2DevicePassword for %@", v28, 0xCu);
      sub_22507F168(v46, &unk_27D719030, &qword_225443AB0);
      MEMORY[0x22AA65DF0](v46, -1, -1);
      MEMORY[0x22AA65DF0](v28, -1, -1);
    }

    v170(v21, v5);
    v48 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
    v49 = sub_2250B2098([v43 appleAccount], &selRef_username);
    if (v50)
    {
      v28 = v50;
      v51 = MEMORY[0x22AA62D80](v49);
    }

    else
    {
      v51 = 0;
    }

    [v48 setUsername_];

    [v48 setIsUsernameEditable_];
    [v48 setServiceType_];
    v52 = sub_2250B2038(v43, &selRef_hsa2AccountPassword);
    if (v53)
    {
      v28 = v53;
      v54 = MEMORY[0x22AA62D80](v52);
    }

    else
    {
      v54 = 0;
    }

    [v48 _setPassword_];

    sub_2250B1FE0(v163, v165, v48);
    [v48 setAuthenticationType_];
    [v48 setIsEphemeral_];
    v55 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
    if (!v55)
    {
      _Block_release(v156);
      __break(1u);
LABEL_57:
      _Block_release(v156);

      __break(1u);
LABEL_58:
      _Block_release(v156);

      __break(1u);
      goto LABEL_59;
    }

    v56 = v55;
    [v55 setDelegate_];
    v57 = dispatch_semaphore_create(0);
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    v176 = sub_2250B2D68;
    v177 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v173 = 1107296256;
    v174 = sub_2250AFE7C;
    v175 = &unk_28385A268;
    v59 = _Block_copy(&aBlock);
    v28 = v48;
    v60 = v57;

    [v56 authenticateWithContext:v28 completion:v59];
    _Block_release(v59);

    v61 = v168;
    static DispatchTime.distantFuture.getter();
    MEMORY[0x22AA630F0](v61);
    (*v41)(v61, v169);
    v62 = sub_2250B2038(v43, &selRef_hsa2DevicePassword);
    if (v63)
    {
      v64 = v62;
      v65 = v63;

      v66 = objc_allocWithZone(MEMORY[0x277CB8F38]);
      v67 = sub_2250B0EA4(v64, v65);
      v68 = [v43 appleAccount];
      [v68 setCredential_];

      v5 = v166;
      v24 = v171;
      v36 = v157;
      v6 = v155;
      v40 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
LABEL_20:
      v162 = (v36 + 8);
      v163 = &v174;
      v165 = v6 + 8;
      v69 = 2;
      *&v38 = v40[337];
      v161 = v38;
      v70 = &selRef_allowsPowerNapScheduling;
      v71 = v167;
      if (!v167)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v72 = swift_allocObject();
        *(v72 + 16) = 0;
        *(v72 + 24) = 0;
        *(v72 + 32) = 0;
        v73 = v71;
        v74 = dispatch_semaphore_create(0);
        v75 = [v24 v70[38]];
        v76 = swift_allocObject();
        *(v76 + 16) = v72;
        *(v76 + 24) = v74;
        v176 = sub_2250B2D5C;
        v177 = v76;
        aBlock = MEMORY[0x277D85DD0];
        v173 = 1107296256;
        v174 = sub_2250B2D88;
        v175 = &unk_28385A218;
        v77 = _Block_copy(&aBlock);

        v78 = v74;

        [v73 aa:v75 updatePropertiesForAppleAccount:v77 completion:?];
        v79 = v77;
        v80 = v78;
        _Block_release(v79);

        v81 = v168;
        static DispatchTime.distantFuture.getter();
        MEMORY[0x22AA630F0](v81);
        (*v162)(v81, v169);
        os_unfair_lock_lock((v72 + 16));
        v82 = *(v72 + 24);
        LOBYTE(v75) = *(v72 + 32);
        sub_2250B21A0(v82, v75);
        os_unfair_lock_unlock((v72 + 16));
        if (v75)
        {
          aBlock = v82;
          v83 = v82;
          sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
          swift_willThrowTypedImpl();

          sub_2250B21AC(v82, 1);

          v70 = &selRef_allowsPowerNapScheduling;
        }

        else
        {
          v164 = v73;
          if (v82)
          {
            v116 = v171;
            v117 = [v171 ckAccount];
            if (v117)
            {

              v118 = v152;
              CKLog.getter();
              v24 = v116;
              v119 = Logger.logObject.getter();
              v120 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v119, v120))
              {
                v121 = v80;
                v122 = swift_slowAlloc();
                v123 = swift_slowAlloc();
                v178 = v123;
                *v122 = 136315394;
                v124 = sub_2250B2098([v24 appleAccount], &selRef_username);
                if (!v125)
                {
                  goto LABEL_60;
                }

                v126 = v124;
                v127 = v125;

                v128 = sub_225095AFC(v126, v127, &v178);

                *(v122 + 4) = v128;
                *(v122 + 12) = 2080;
                aBlock = sub_2250B2038(v24, &selRef_dsid);
                v173 = v129;
                sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
                v130 = String.init<A>(describing:)();
                v132 = sub_225095AFC(v130, v131, &v178);

                *(v122 + 14) = v132;
                _os_log_impl(&dword_22506F000, v119, v120, "Initialized fake account with email %s and dsid %s", v122, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x22AA65DF0](v123, -1, -1);
                MEMORY[0x22AA65DF0](v122, -1, -1);

                v133 = v164;
                v134 = &v180;
                goto LABEL_53;
              }

LABEL_54:

              v133 = v164;
              v148 = v118;
              v149 = v5;
            }

            else
            {
              v118 = v151;
              CKLog.getter();
              v24 = v116;
              v119 = Logger.logObject.getter();
              v135 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v119, v135))
              {
                goto LABEL_54;
              }

              v136 = v80;
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v178 = v138;
              *v137 = 136315394;
              v139 = sub_2250B2098([v24 appleAccount], &selRef_username);
              if (!v140)
              {
                goto LABEL_61;
              }

              v141 = v139;
              v142 = v140;

              v143 = sub_225095AFC(v141, v142, &v178);

              *(v137 + 4) = v143;
              *(v137 + 12) = 2080;
              aBlock = sub_2250B2038(v24, &selRef_dsid);
              v173 = v144;
              sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
              v145 = String.init<A>(describing:)();
              v147 = sub_225095AFC(v145, v146, &v178);

              *(v137 + 14) = v147;
              _os_log_impl(&dword_22506F000, v119, v135, "Initialized fake AppleAccount for email %s / dsid %s lacked a cloudKit auth token", v137, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA65DF0](v138, -1, -1);
              MEMORY[0x22AA65DF0](v137, -1, -1);

              v133 = v164;
              v134 = &v179;
LABEL_53:
              v148 = *(v134 - 32);
              v149 = v166;
            }

            v170(v148, v149);

            v113 = v156;
            (*(v156 + 2))(v156, 1, 0);

            goto LABEL_45;
          }

          v92 = v80;
          v93 = v160;
          CKLog.getter();
          v43 = v171;
          v94 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();
          v70 = &selRef_allowsPowerNapScheduling;
          if (os_log_type_enabled(v94, v28))
          {
            v95 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            aBlock = v24;
            *v95 = v161;
            v96 = sub_2250B2098([v43 appleAccount], &selRef_username);
            if (!v97)
            {
              goto LABEL_58;
            }

            v98 = v96;
            v99 = v97;

            v100 = sub_225095AFC(v98, v99, &aBlock);

            *(v95 + 4) = v100;
            _os_log_impl(&dword_22506F000, v94, v28, "Error initializing fake account with email %s,  no error available", v95, 0xCu);
            sub_225073BF0(v24);
            MEMORY[0x22AA65DF0](v24, -1, -1);
            MEMORY[0x22AA65DF0](v95, -1, -1);

            v5 = v166;
            v170(v160, v166);
            v70 = &selRef_allowsPowerNapScheduling;
          }

          else
          {

            v170(v93, v5);
          }

          type metadata accessor for CKError(0);
          v178 = 9;
          sub_2250B19E8(MEMORY[0x277D84F90]);
          sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);
          _BridgedStoredNSError.init(_:userInfo:)();
          v82 = aBlock;
          swift_willThrow();

          v164 = 0;
        }

        v71 = v167;
        if (!v69)
        {
LABEL_38:
          v101 = v154;
          CKLog.getter();
          v102 = v82;
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            *v105 = 138412290;
            v107 = v82;
            v108 = _swift_stdlib_bridgeErrorToNSError();
            *(v105 + 4) = v108;
            *v106 = v108;
            _os_log_impl(&dword_22506F000, v103, v104, "Giving up on auth token renewal due to too many errors: %@", v105, 0xCu);
            sub_22507F168(v106, &unk_27D719030, &qword_225443AB0);
            MEMORY[0x22AA65DF0](v106, -1, -1);
            MEMORY[0x22AA65DF0](v105, -1, -1);
          }

          v170(v101, v5);
          swift_willThrow();

          goto LABEL_44;
        }

        while (1)
        {

          --v69;
          v24 = v171;
          if (v71)
          {
            break;
          }

LABEL_23:
          v84 = v159;
          CKLog.getter();
          v43 = v24;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v85, v86))
          {
            v24 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            aBlock = v28;
            *v24 = v161;
            v87 = sub_2250B2098([v43 v70[38]], &selRef_username);
            if (!v88)
            {
              goto LABEL_57;
            }

            v89 = v87;
            v90 = v88;

            v91 = sub_225095AFC(v89, v90, &aBlock);

            *(v24 + 1) = v91;
            _os_log_impl(&dword_22506F000, v85, v86, "Error initializing fake account with email %s, no account store available", v24, 0xCu);
            sub_225073BF0(v28);
            MEMORY[0x22AA65DF0](v28, -1, -1);
            MEMORY[0x22AA65DF0](v24, -1, -1);

            v170(v84, v5);
            v70 = &selRef_allowsPowerNapScheduling;
            v71 = v167;
          }

          else
          {

            v170(v84, v5);
          }

          type metadata accessor for CKError(0);
          v178 = 9;
          sub_2250B19E8(MEMORY[0x277D84F90]);
          sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);
          _BridgedStoredNSError.init(_:userInfo:)();
          v82 = aBlock;
          swift_willThrow();
          v164 = 0;
          if (!v69)
          {
            goto LABEL_38;
          }
        }
      }
    }

    v5 = v166;
    v24 = v171;
    if (!v42)
    {
      break;
    }

    --v42;
  }

  v109 = v153;
  CKLog.getter();
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_22506F000, v110, v111, "Giving up on auth token renewal due to too many HSA2 errors", v112, 2u);
    MEMORY[0x22AA65DF0](v112, -1, -1);
  }

  v170(v109, v5);
  type metadata accessor for CKError(0);
  v178 = 9;
  sub_2250B19E8(MEMORY[0x277D84F90]);
  sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);
  _BridgedStoredNSError.init(_:userInfo:)();
  v82 = aBlock;
  swift_willThrow();

LABEL_44:
  v113 = v156;
  v114 = v82;
  v115 = _convertErrorToNSError(_:)();
  v113[2](v113, 0, v115);

LABEL_45:
  _Block_release(v113);
}

void CKDBackingExplicitCredentialsAccount.renewAuthToken(options:completionHandler:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v160 = a3;
  v161 = a2;
  v176 = type metadata accessor for DispatchTime();
  sub_225072D1C();
  v162 = v4;
  MEMORY[0x28223BE20](v5);
  v175 = v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = 0;
  v7 = type metadata accessor for Logger();
  sub_225072D1C();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22507F2B4();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v158 - v13;
  MEMORY[0x28223BE20](v12);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v15);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v16);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v17);
  sub_22507E6C4();
  sub_22507F2B4();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v158 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v158 - v22;
  CKLog.getter();
  v24 = v3;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = os_log_type_enabled(v25, v26);
  v172 = v7;
  v174 = v14;
  v178 = v24;
  v159 = v9;
  if (v27)
  {
    v28 = sub_22507CA14();
    v29 = sub_225082610();
    aBlock = v29;
    *v28 = 136315138;
    v30 = sub_2250B2098([v24 appleAccount], &selRef_username);
    v32 = v31;

    if (!v32)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v33 = sub_225095AFC(v30, v32, &aBlock);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_22506F000, v25, v26, "Fetching account info for fake account with email %s", v28, 0xCu);
    sub_225073BF0(v29);
    sub_22507C9FC();
    sub_22507C9FC();

    sub_22507E988();
    v7 = v172;
    v177 = *(v34 + 8);
    v177(v23, v172);
    v24 = v178;
  }

  else
  {

    v177 = *(v9 + 8);
    v177(v23, v7);
    v26 = v9;
  }

  v35 = [objc_opt_self() sharedAccountStore];
  v36 = [v35 accountStore];

  v169 = sub_2250B2038(v24, &selRef_hsa2RecoveryKey);
  v173 = v36;
  v38 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
  v171 = v39;
  if (v39)
  {
    v168 = (v26 + 8);
    *&v167 = &v181;
    v166 = (v162 + 8);
    v40 = 2;
    *&v37 = 138412290;
    v163 = v37;
    v41 = &selRef_handleUserIdentityDiscoveryForLookupInfo_userIdentity_;
    for (i = v21; ; v21 = i)
    {
      CKLog.getter();
      v42 = v24;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = sub_22507CA14();
        v46 = sub_2250986A8();
        *v45 = v163;
        *(v45 + 4) = v42;
        *v46 = v178;
        v47 = v42;
        _os_log_impl(&dword_22506F000, v43, v44, "Calculating HSA2DevicePassword for %@", v45, 0xCu);
        sub_22507F168(v46, &unk_27D719030, &qword_225443AB0);
        sub_22507C9FC();
        sub_22507C9FC();
      }

      v177(v21, v7);
      v48 = [objc_allocWithZone(MEMORY[0x277CF0170]) v41[344]];
      v49 = sub_2250B2098([v42 appleAccount], &selRef_username);
      if (v50)
      {
        v51 = MEMORY[0x22AA62D80](v49);
      }

      else
      {
        v51 = 0;
      }

      [v48 setUsername_];

      [v48 setIsUsernameEditable_];
      [v48 setServiceType_];
      v52 = sub_2250B2038(v42, &selRef_hsa2AccountPassword);
      if (v53)
      {
        v54 = MEMORY[0x22AA62D80](v52);
      }

      else
      {
        v54 = 0;
      }

      [v48 _setPassword_];

      sub_2250B1FE0(v169, v171, v48);
      [v48 setAuthenticationType_];
      [v48 setIsEphemeral_];
      v55 = v41;
      v56 = [objc_allocWithZone(MEMORY[0x277CF0178]) v41[344]];
      if (!v56)
      {
        break;
      }

      v57 = v56;
      [v56 setDelegate_];
      v58 = dispatch_semaphore_create(0);
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      sub_225072BB0(v59);
      v181 = sub_2250AFE7C;
      v182 = &unk_28385A078;
      v60 = _Block_copy(&aBlock);
      v36 = v48;
      v61 = v58;

      [v57 authenticateWithContext:v36 completion:v60];
      _Block_release(v60);

      v62 = v175;
      static DispatchTime.distantFuture.getter();
      MEMORY[0x22AA630F0](v62);
      (*v166)(v62, v176);
      v63 = sub_2250B2038(v42, &selRef_hsa2DevicePassword);
      if (v64)
      {
        v65 = v63;
        v66 = v64;

        v67 = objc_allocWithZone(MEMORY[0x277CB8F38]);
        v68 = sub_2250B0EA4(v65, v66);
        v23 = [v42 appleAccount];
        [v23 setCredential_];

        v7 = v172;
        v36 = v173;
        v24 = v178;
        v26 = v159;
        v38 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
        goto LABEL_20;
      }

      if (!v40)
      {

        v117 = v158[2];
        CKLog.getter();
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_22506F000, v118, v119, "Giving up on auth token renewal due to too many HSA2 errors", v120, 2u);
          sub_22507C9FC();
        }

        v177(v117, v172);
        type metadata accessor for CKError(0);
        sub_225075248();
        v185 = v121;
        sub_2250B19E8(MEMORY[0x277D84F90]);
        sub_225072D04();
        sub_2250B2370(v122, v123, &unk_225443DC8);
        sub_2250755F0();
        _BridgedStoredNSError.init(_:userInfo:)();
        v78 = aBlock;
        swift_willThrow();

        goto LABEL_44;
      }

      --v40;
      v7 = v172;
      v24 = v178;
      v41 = v55;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_20:
  v169 = &v181;
  v168 = (v162 + 8);
  v171 = v26 + 8;
  v69 = 2;
  *&v37 = v38[337];
  v167 = v37;
  if (!v36)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 32) = 0;
    v71 = v36;
    v72 = dispatch_semaphore_create(0);
    v73 = [v24 appleAccount];
    v74 = swift_allocObject();
    *(v74 + 16) = v70;
    *(v74 + 24) = v72;
    sub_225072BB0(v74);
    v181 = sub_2250B2D88;
    v182 = &unk_28385A028;
    v75 = _Block_copy(&aBlock);

    v76 = v72;
    v77 = v71;

    [v71 aa:v73 updatePropertiesForAppleAccount:v75 completion:?];
    _Block_release(v75);

    v23 = v175;
    static DispatchTime.distantFuture.getter();
    MEMORY[0x22AA630F0](v23);
    (*v168)(v23, v176);
    os_unfair_lock_lock((v70 + 16));
    v78 = *(v70 + 24);
    v79 = *(v70 + 32);
    sub_2250B21A0(v78, *(v70 + 32));
    os_unfair_lock_unlock((v70 + 16));
    if (v79)
    {
      break;
    }

    if (v78)
    {
      v176 = v77;
      v126 = v178;
      v127 = [v178 ckAccount];
      if (v127)
      {

        sub_22507E988();
        CKLog.getter();
        v128 = v126;
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.info.getter();
        if (sub_22507C910(v130))
        {
          v131 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          *v131 = 136315394;
          v132 = sub_2250B2098([v128 appleAccount], &selRef_username);
          v134 = v133;

          if (!v134)
          {
            goto LABEL_59;
          }

          v135 = sub_225095AFC(v132, v134, &v185);

          *(v131 + 4) = v135;
          *(v131 + 12) = 2080;
          aBlock = sub_2250B2038(v128, &selRef_dsid);
          v180 = v136;
          sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
          v137 = String.init<A>(describing:)();
          v139 = sub_225095AFC(v137, v138, &v185);

          *(v131 + 14) = v139;
          sub_22507CC30(&dword_22506F000, v140, v141, "Initialized fake account with email %s and dsid %s");
          swift_arrayDestroy();
          sub_22507C9FC();
          sub_22507C9FC();

          v142 = v176;
          v143 = &v184;
          goto LABEL_52;
        }

LABEL_53:

        v142 = v176;
        v156 = v79;
        v157 = v7;
      }

      else
      {
        sub_22507E988();
        CKLog.getter();
        v128 = v126;
        v129 = Logger.logObject.getter();
        v144 = static os_log_type_t.error.getter();
        if (!sub_22507C910(v144))
        {
          goto LABEL_53;
        }

        v145 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *v145 = 136315394;
        v146 = sub_2250B2098([v128 appleAccount], &selRef_username);
        v148 = v147;

        if (!v148)
        {
          goto LABEL_60;
        }

        v149 = sub_225095AFC(v146, v148, &v185);

        *(v145 + 4) = v149;
        *(v145 + 12) = 2080;
        aBlock = sub_2250B2038(v128, &selRef_dsid);
        v180 = v150;
        sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
        v151 = String.init<A>(describing:)();
        v153 = sub_225095AFC(v151, v152, &v185);

        *(v145 + 14) = v153;
        sub_22507CC30(&dword_22506F000, v154, v155, "Initialized fake AppleAccount for email %s / dsid %s lacked a cloudKit auth token");
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C9FC();

        v142 = v176;
        v143 = &v183;
LABEL_52:
        v156 = *(v143 - 32);
        v157 = v172;
      }

      v177(v156, v157);

      v161(1, 0);

      return;
    }

    v170 = v76;
    v92 = v77;
    sub_22507E988();
    CKLog.getter();
    v24 = v178;
    v93 = v178;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (sub_22507C910(v95))
    {
      v96 = sub_22507CA14();
      v97 = sub_225082610();
      v98 = [v93 appleAccount];
      v99 = sub_2250B2098(v98, &selRef_username);
      v101 = v100;

      if (!v101)
      {
        goto LABEL_57;
      }

      v102 = sub_225095AFC(v99, v101, &aBlock);

      *(v96 + 4) = v102;
      _os_log_impl(&dword_22506F000, v94, v23, "Error initializing fake account with email %s,  no error available", v96, 0xCu);
      sub_225073BF0(v97);
      sub_22507C9FC();
      sub_22507C9FC();

      v7 = v172;
      v177(v164, v172);
      v24 = v178;
    }

    else
    {

      sub_22509861C();
      v106();
    }

    type metadata accessor for CKError(0);
    sub_225075248();
    v185 = v107;
    sub_2250B19E8(MEMORY[0x277D84F90]);
    sub_225072D04();
    sub_2250B2370(&unk_280D53590, v108, &unk_225443DC8);
    sub_2250755F0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v78 = aBlock;
    LOBYTE(v23) = aBlock;
    swift_willThrow();

    v170 = 0;
    v36 = v173;
    if (!v69)
    {
      goto LABEL_38;
    }

LABEL_36:
    while (1)
    {

      --v69;
      if (v36)
      {
        break;
      }

LABEL_24:
      CKLog.getter();
      v81 = v24;
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (sub_22507C910(v83))
      {
        v84 = sub_22507CA14();
        v85 = sub_225082610();
        v86 = [v81 appleAccount];
        v87 = sub_2250B2098(v86, &selRef_username);
        v89 = v88;

        if (!v89)
        {
          goto LABEL_56;
        }

        v90 = sub_225095AFC(v87, v89, &aBlock);

        *(v84 + 4) = v90;
        _os_log_impl(&dword_22506F000, v82, v23, "Error initializing fake account with email %s, no account store available", v84, 0xCu);
        sub_225073BF0(v85);
        sub_22507C9FC();
        sub_22507C9FC();

        sub_22509861C();
        v91();
        v36 = v173;
        v24 = v178;
      }

      else
      {

        sub_22509861C();
        v103();
      }

      type metadata accessor for CKError(0);
      sub_225075248();
      v185 = v104;
      sub_2250B19E8(MEMORY[0x277D84F90]);
      sub_225072D04();
      sub_2250B2370(&unk_280D53590, v105, &unk_225443DC8);
      sub_2250755F0();
      _BridgedStoredNSError.init(_:userInfo:)();
      v78 = aBlock;
      LOBYTE(v23) = aBlock;
      swift_willThrow();
      v170 = 0;
      if (!v69)
      {
        goto LABEL_38;
      }
    }
  }

  aBlock = v78;
  v80 = v78;
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  swift_willThrowTypedImpl();

  sub_2250B21AC(v78, 1);

  v36 = v173;
  v24 = v178;
  if (v69)
  {
    goto LABEL_36;
  }

LABEL_38:
  CKLog.getter();
  v109 = v78;
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = sub_22507CA14();
    v113 = sub_2250986A8();
    *v112 = 138412290;
    v114 = v78;
    v115 = _swift_stdlib_bridgeErrorToNSError();
    *(v112 + 4) = v115;
    *v113 = v115;
    _os_log_impl(&dword_22506F000, v110, v111, "Giving up on auth token renewal due to too many errors: %@", v112, 0xCu);
    sub_22507F168(v113, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  sub_22509861C();
  v116();
  swift_willThrow();
LABEL_44:

  v124 = v161;
  v125 = v78;
  v124(0, v78);
}

uint64_t sub_2250AFE7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2250B0DFC(&unk_27D718C70, &qword_225443EF8);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

Swift::Int sub_2250AFF2C(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    os_unfair_lock_lock((a3 + 16));
    sub_2250B21AC(*(a3 + 24), *(a3 + 32));
    *(a3 + 24) = a2;
    *(a3 + 32) = 1;
  }

  else
  {
    os_unfair_lock_lock((a3 + 16));
    sub_2250B21AC(*(a3 + 24), *(a3 + 32));
    *(a3 + 24) = a1 & 1;
    *(a3 + 32) = 0;
  }

  os_unfair_lock_unlock((a3 + 16));
  return OS_dispatch_semaphore.signal()();
}

void sub_2250AFFBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2250B00F4()
{
  sub_2250ABA70();
  type metadata accessor for CKError(0);
  sub_225075248();
  *(v0 + 24) = v1;
  sub_2250B19E8(MEMORY[0x277D84F90]);
  sub_225072D04();
  sub_2250B2370(v2, v3, &unk_225443DC8);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_2250B0248(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2250B02F0;

  return CKDBackingExplicitCredentialsAccount.updateAccountPropertiesAndSave()();
}

uint64_t sub_2250B02F0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void sub_2250B0480(void *a1)
{
  v3 = sub_2250B2098([v1 appleAccount], &selRef_aa_password);
  if (v4)
  {
    v5 = MEMORY[0x22AA62D80](v3);
  }

  else
  {
    v5 = 0;
  }

  [a1 _setPassword_];
}

id CKDBackingExplicitCredentialsAccount.ckAccount.getter()
{
  v1 = [v0 fakeCKAccount];

  return v1;
}

void sub_2250B0660()
{
  v1 = [v0 appleAccount];
  v2 = [v1 credential];

  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_2250B2098(v2, &selRef_password);
  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKDBackingExplicitCredentialsAccount.cloudKitAuthToken()()
{
  v1 = [v0 ckAccount];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  v3 = [v1 credential];

  if (v3)
  {
    v4 = sub_2250B2098(v3, &selRef_token);
    if (!v5)
    {
LABEL_4:
      type metadata accessor for CKError(0);
      sub_225075248();
      sub_2250B19E8(MEMORY[0x277D84F90]);
      sub_225072D04();
      v8 = sub_2250B2370(v6, v7, &unk_225443DC8);
      sub_22507CE70(v8, v9);
      v4 = swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKDBackingExplicitCredentialsAccount.iCloudAuthToken()()
{
  v1 = [v0 appleAccount];
  v2 = [v1 credential];

  if (v2)
  {
    v3 = sub_2250B2098(v2, &selRef_token);
    if (!v4)
    {
      type metadata accessor for CKError(0);
      sub_225075248();
      sub_2250B19E8(MEMORY[0x277D84F90]);
      sub_225072D04();
      v7 = sub_2250B2370(v5, v6, &unk_225443DC8);
      sub_22507CE70(v7, v8);
      v3 = swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_2250B08C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();
  v8 = v7;

  v9 = MEMORY[0x22AA62D80](v6, v8);

  return v9;
}

uint64_t CKDBackingExplicitCredentialsAccount.authenticationController(_:shouldContinueWithAuthenticationResults:error:for:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  sub_225072D1C();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = v32 - v14;
  if (a3)
  {
    v16 = a3;
    CKLog.getter();
    v17 = a3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_22507CA14();
      v21 = sub_2250986A8();
      *v20 = 138412290;
      v22 = a3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_22506F000, v18, v19, "Couldn't do the AKAppleIDAuthenticationContext dance: %@", v20, 0xCu);
      sub_22507F168(v21, &unk_27D719030, &qword_225443AB0);
      sub_22507C9FC();
      sub_22507C9FC();
    }

    else
    {
    }

    (*(v8 + 8))(v15, v6);
    return 0;
  }

  if (a2)
  {
    *&v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v33 + 1) = v24;
    v25 = [a2 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    if (*(&v34 + 1))
    {
      if (swift_dynamicCast())
      {
        sub_2250B2104(v32[0], v32[1], v3, &selRef_setHsa2DevicePassword_);
        return 0;
      }
    }

    else
    {
      sub_22507F168(v35, &qword_27D718AE0, &unk_225443AA0);
    }

    CKLog.getter();
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_22507CA14();
      v30 = sub_2250986A8();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = a2;
      v31 = v26;
      _os_log_impl(&dword_22506F000, v27, v28, "Successfully pulled results, but didn't include password: %@", v29, 0xCu);
      sub_22507F168(v30, &unk_27D719030, &qword_225443AB0);
      sub_22507C9FC();
      sub_22507C9FC();
    }

    (*(v8 + 8))(v12, v6);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_2250B0D98()
{
  result = qword_27D718AD8;
  if (!qword_27D718AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D718AD8);
  }

  return result;
}

uint64_t sub_2250B0DFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2250B0E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_2250B0EA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x22AA62D80](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPassword_];

  return v4;
}

uint64_t sub_2250B0F08(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D535A0, type metadata accessor for CKError, &unk_225443D1C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2250B0F74(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D535A0, type metadata accessor for CKError, &unk_225443D1C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2250B0FE0(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);

  return MEMORY[0x28211CA68](a1, v2);
}

void sub_2250B104C()
{
  sub_22507D314();
  nullsub_2();
  *v0 = v1;
}

uint64_t sub_2250B1074(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D53550, type metadata accessor for CKUnderlyingError, &unk_22544409C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2250B10E0(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D53550, type metadata accessor for CKUnderlyingError, &unk_22544409C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2250B114C(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError, &unk_22544426C);

  return MEMORY[0x28211CA68](a1, v2);
}

BOOL sub_2250B11CC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2250B11F8(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_2250B121C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_2250B1298(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2250B1304(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2250B1370(void *a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2250B1400(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2250B1490(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError, &unk_22544426C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2250B14FC(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError, &unk_22544426C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2250B1568(void *a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError, &unk_22544426C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2250B15F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError, &unk_22544426C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int sub_2250B1674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_2250B16D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2250B16E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2250FC33C();
  *a1 = result;
  return result;
}

uint64_t sub_2250B1718@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B11BC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B1748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250E18F8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B1778@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B11C4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B17B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2250B11F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2250B17E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2250B121C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2250B1830@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B1254(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError, &unk_225443DC8);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2250B1930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError, &unk_22544426C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2250B19C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B0E44(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2250B19E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  sub_2250B0DFC(&qword_27D719790, &qword_225443F00);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2250B2858(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_22507DF9C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2250B28C8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2250B1B20(uint64_t a1, unint64_t a2)
{
  v3 = sub_2250B1B6C(a1, a2);
  sub_2250B1C84(&unk_283859FB0);
  return v3;
}

uint64_t sub_2250B1B6C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_2251025D4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2250B1C84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2250B1D68(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2250B1D68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2250B0DFC(&qword_27D718C88, &qword_225443F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_2250B1E5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x22AA62D80](a1);

  v5 = [a3 accountTypeWithAccountTypeIdentifier_];

  return v5;
}

void sub_2250B1EC0(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 setProperties:isa forDataclass:a2];
}

void sub_2250B1F50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x22AA62D80](a2, a3);

  [a4 setAccountProperty:a1 forKey:v6];
}

void sub_2250B1FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x22AA62D80](a1, a2);
  [a3 _setMasterKey_];
}

uint64_t sub_2250B2038(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_2250B2098(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_2250B2104(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x22AA62D80](a1);

  [a3 *a4];
}

uint64_t sub_2250B2188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2250B21A0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2250B21AC(id a1, char a2)
{
  if (a2)
  {
  }
}

__n128 sub_2250B2224(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2250B2230(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2250B2270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2250B22CC(uint64_t a1, int a2)
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

uint64_t sub_2250B22EC(uint64_t result, int a2, int a3)
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

uint64_t sub_2250B2370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2250B23BC()
{
  result = qword_27D718B88;
  if (!qword_27D718B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718B88);
  }

  return result;
}

unint64_t sub_2250B258C()
{
  result = qword_280D535A8;
  if (!qword_280D535A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D535A8);
  }

  return result;
}

uint64_t sub_2250B2670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2250B271C;

  return sub_2250B0248(v2, v3);
}

uint64_t sub_2250B271C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2250B2810(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2250B2858(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D718C80, &qword_225443F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2250B28C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2250B2C28(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2250B2DDC()
{
  v1[22] = v0;
  v2 = sub_2250B0DFC(&qword_27D718E10, &unk_225444450);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250B2EA8, 0, 0);
}

uint64_t sub_2250B2EA8()
{
  v1 = v0[24];
  v11 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[26] = v4;
  [v4 setQualityOfService_];
  v5 = [objc_allocWithZone(MEMORY[0x277CBC518]) init];
  v0[27] = v5;
  [v5 setResolvedConfiguration_];
  sub_2250B3334();
  v6 = v5;
  v7 = v3;
  v8 = sub_2250B3378(v6, v7);
  v0[28] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2250B3104;
  swift_continuation_init();
  v0[17] = v2;
  v9 = sub_225073808(v0 + 14);
  sub_2250B0DFC(&unk_27D718E18, &unk_225447AC0);
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  CheckedContinuation.init(continuation:function:)();
  (*(v1 + 32))(v9, v11, v2);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2250B33D4;
  v0[13] = &unk_28385A3D0;
  [v7 fetchImportantUserIDsForOperation:v8 withCompletionHandler:?];
  (*(v1 + 8))(v9, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2250B3104()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_2250B32A4;
  }

  else
  {
    v2 = sub_2250B3214;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2250B3214()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2250B32A4(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

unint64_t sub_2250B3334()
{
  result = qword_280D533F8;
  if (!qword_280D533F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D533F8);
  }

  return result;
}

id sub_2250B3378(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithOperationInfo:a1 container:a2];

  return v4;
}

void sub_2250B33D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v11 = a4;
    sub_2250ED780(v5, v11);
  }

  else
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_2250ED814(v5, v6, v8, v10, v9);
  }
}

uint64_t sub_2250B34B4()
{
  v1 = [v0 accountID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_2250B350C(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  v3 = type metadata accessor for ResolvedBundleID();
  v119 = *(v3 - 8);
  v120 = v3;
  MEMORY[0x28223BE20](v3);
  v118 = &v89[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  v117 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v116 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v89[-v8];
  v9 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v114 = *(v9 - 8);
  v115 = v9;
  MEMORY[0x28223BE20](v9);
  v113 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration.Payload();
  v109 = *(v11 - 8);
  v110 = v11;
  MEMORY[0x28223BE20](v11);
  v108 = &v89[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x28223BE20](v13);
  v105 = &v89[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for BundleID.Payload();
  v122 = *(v15 - 8);
  v123 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v93 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v89[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v89[-v20];
  v22 = type metadata accessor for BundleID();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v92 = &v89[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v94 = &v89[-v27];
  MEMORY[0x28223BE20](v26);
  v29 = &v89[-v28];
  v30 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v89[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v36 = &v89[-v35];
  v124 = a2;
  AnySessionConfiguration.application.getter();
  AuthenticatedSession.Configuration.Application.bundleID.getter();
  v37 = *(v31 + 8);
  v38 = v36;
  v39 = v30;
  v37(v38, v30);
  BundleID.payload.getter();
  v41 = v122;
  v40 = v123;
  v103 = v23;
  v42 = *(v23 + 8);
  v104 = v22;
  v102 = v42;
  v101 = v23 + 8;
  v42(v29, v22);
  v43 = *(v41 + 88);
  v44 = v43(v21, v40);
  v45 = *MEMORY[0x277CFAAF8];
  if (v44 == *MEMORY[0x277CFAAF8])
  {
    (*(v41 + 96))(v21, v40);
    v46 = v21[1];
    v100 = *v21;
    v111 = v46;
  }

  else
  {
    (*(v41 + 8))(v21, v40);
    v100 = 0;
    v111 = 0;
  }

  AnySessionConfiguration.application.getter();
  v47 = v105;
  AuthenticatedSession.Configuration.Application.pushRegistration.getter();
  v37(v34, v39);
  v48 = v108;
  AuthenticatedSession.Configuration.Application.PushRegistration.payload.getter();
  (*(v106 + 8))(v47, v107);
  v50 = v109;
  v49 = v110;
  v51 = (*(v109 + 88))(v48, v110) == *MEMORY[0x277CFAA00];
  v52 = v116;
  v91 = v43;
  v90 = v45;
  if (v51)
  {
    (*(v50 + 96))(v48, v49);
    v53 = v94;
    v54 = v104;
    (*(v103 + 32))(v94, v48, v104);
    v55 = v95;
    BundleID.payload.getter();
    v56 = v55;
    v102(v53, v54);
    v57 = v123;
    v51 = v43(v55, v123) == v45;
    v59 = v117;
    v61 = v114;
    v60 = v115;
    v63 = v112;
    v62 = v113;
    if (v51)
    {
      (*(v122 + 96))(v56, v57);
      v58 = v56[1];
      v110 = *v56;
    }

    else
    {
      (*(v122 + 8))(v56, v57);
      v110 = 0;
      v58 = 0;
    }
  }

  else
  {
    (*(v50 + 8))(v48, v49);
    v110 = 0;
    v58 = 0;
    v59 = v117;
    v61 = v114;
    v60 = v115;
    v63 = v112;
    v62 = v113;
  }

  AnySessionConfiguration.account.getter();
  if (sub_22507C8E8(v63, 1, v60) == 1)
  {
    sub_2250C86F4(v63, &unk_27D718ED0, &qword_225444FF0);
  }

  else
  {
    (*(v61 + 32))(v62, v63, v60);
    v64 = v96;
    AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
    AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
    (*(v97 + 8))(v64, v98);
    v65 = v99;
    if ((*(v59 + 88))(v52, v99) == *MEMORY[0x277CFAA20])
    {
      (*(v59 + 96))(v52, v65);
      v66 = v92;
      v67 = v52;
      v68 = v104;
      (*(v103 + 32))(v92, v67, v104);
      v69 = v93;
      BundleID.payload.getter();
      v102(v66, v68);
      (*(v61 + 8))(v62, v60);
      v70 = v123;
      v71 = v91(v69, v123);
      if (v71 == v90)
      {
        (*(v122 + 96))(v69, v70);
        v73 = *v69;
        v72 = v69[1];

        goto LABEL_17;
      }

      (*(v122 + 8))(v69, v70);
    }

    else
    {
      (*(v61 + 8))(v62, v60);
      (*(v59 + 8))(v52, v65);
    }
  }

  v73 = 0;
  v72 = 0;
LABEL_17:
  v74 = v121;
  v75 = type metadata accessor for Entitlements();
  v76 = v118;
  v77 = dispatch thunk of EntitlementsProtocol.bundleID.getter();
  v78 = MEMORY[0x22AA62510](v77);
  v80 = v79;
  (*(v119 + 8))(v76, v120);
  v81 = MEMORY[0x22AA62D80](v78, v80);

  if (v111)
  {
    v82 = MEMORY[0x22AA62D80](v100, v111);

    if (v72)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v82 = 0;
    if (v72)
    {
LABEL_19:
      v83 = MEMORY[0x22AA62D80](v73, v72);

      if (v58)
      {
        goto LABEL_20;
      }

LABEL_24:
      v84 = 0;
      if (v72)
      {
        goto LABEL_21;
      }

LABEL_25:
      v85 = 0;
      goto LABEL_26;
    }
  }

  v83 = 0;
  if (!v58)
  {
    goto LABEL_24;
  }

LABEL_20:
  v84 = MEMORY[0x22AA62D80](v110, v58);

  if (!v72)
  {
    goto LABEL_25;
  }

LABEL_21:
  v85 = MEMORY[0x22AA62D80](v73, v72);

LABEL_26:
  v86 = [objc_allocWithZone(CKDApplicationID) initWithApplicationBundleIdentifier:v81 applicationBundleIdentifierOverrideForContainerAccess:v82 applicationBundleIdentifierOverrideForNetworkAttribution:v83 applicationBundleIdentifierOverrideForPushTopicGeneration:v84 applicationBundleIdentifierOverrideForTCC:v85];

  v87 = type metadata accessor for AnySessionConfiguration();
  (*(*(v87 - 8) + 8))(v124, v87);
  (*(*(v75 - 8) + 8))(v74, v75);
  return v86;
}

uint64_t sub_2250B4150(uint64_t a1)
{
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);

  return CheckedContinuation.init(continuation:function:)();
}

char *sub_2250B41D8(void *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v96 = a3;
  ObjectType = swift_getObjectType();
  v76 = type metadata accessor for AnySessionConfiguration.CustomConfigurationError();
  sub_225072D1C();
  v75 = v9;
  MEMORY[0x28223BE20](v10);
  sub_225072C00();
  v81 = v12 - v11;
  sub_22507E434();
  v95 = type metadata accessor for Entitlements();
  sub_225072D1C();
  v82 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v15);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v20 = sub_22507CD44(v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  v101 = type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v103 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  type metadata accessor for SessionID();
  sub_225072D1C();
  v99 = v29;
  v100 = v28;
  MEMORY[0x28223BE20](v28);
  sub_2250986C0();
  v30 = &v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex];
  *v30 = 0;
  *(v30 + 1) = 0;
  v88 = v30 + 8;
  result = [a1 ckSessionID];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = result;
  v90 = ObjectType;
  type metadata accessor for CKSessionID();
  v94 = v32;
  sub_2250C87F4();
  swift_dynamicCastClassUnconditional();
  result = [a1 ckSessionConfiguration];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v33 = result;
  v93 = a2;
  type metadata accessor for CKSessionConfiguration();
  sub_2250C87F4();
  swift_dynamicCastClassUnconditional();
  v92 = a1;
  v34 = [a1 ckPreviousSessionInvalidationContext];
  v98 = v34;
  if (v34)
  {
    type metadata accessor for CKSessionInvalidationContext();
    v34 = swift_dynamicCastClassUnconditional();
  }

  CKSessionID.sessionID.getter();
  v35 = *(v99 + 32);
  v87 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID;
  v35(&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID], v4, v100);
  CKSessionConfiguration.anySessionConfiguration.getter();
  v36 = *(v103 + 32);
  v97 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionConfiguration;
  v36(&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionConfiguration], v27, v101);
  v89 = v33;
  v77 = v27;
  if (v34)
  {
    swift_unknownObjectRetain();
    CKSessionInvalidationContext.sessionInvalidationContext.getter();
    swift_unknownObjectRelease();
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = type metadata accessor for SessionInvalidationContext();
  sub_22507C8C0(v22, v37, 1, v38);
  v86 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_previousInvalidationContext;
  sub_2250C8588(v22, &v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_previousInvalidationContext], &unk_27D718E60, &unk_225444780);
  v39 = v92;
  v40 = [v92 testDeviceReferenceProtocol];
  v84 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol;
  *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol] = v40;
  v85 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionAcquisitionClientProxy;
  *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionAcquisitionClientProxy] = v93;
  swift_unknownObjectRetain();
  v41 = v96;
  v42 = [v96 processScopedClientProxy];
  v43 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_processScopedClientProxy;
  *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_processScopedClientProxy] = v42;
  v44 = v91;
  sub_22507369C();
  v83 = v43;
  if (v44)
  {
    v45 = v101;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v99 + 8))(&v5[v87], v100);
    (*(v103 + 8))(&v5[v97], v45);
    sub_2250C86F4(&v5[v86], &unk_27D718E60, &unk_225444780);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_2250C86F4(v88, &qword_27D718F88, &unk_225444960);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements;
    v73 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements;
    v47 = v82;
    v48 = v95;
    (*(v82 + 32))(&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements], v18, v95);
    v49 = *(v47 + 16);
    v71 = v47 + 16;
    v72 = v49;
    v50 = &v5[v46];
    v51 = v78;
    v49(v78, v50, v48);
    v52 = v103;
    v53 = *(v103 + 16);
    v69 = v103 + 16;
    v70 = v53;
    v54 = v77;
    v55 = v101;
    v53(v77, &v5[v97], v101);
    v56 = EntitlementsProtocol.ckCompatibilityOverlay(configuration:)();
    v57 = *(v52 + 8);
    v58 = v54;
    v59 = v55;
    v91 = v52 + 8;
    v77 = v57;
    (v57)(v58, v55);
    v60 = *(v47 + 8);
    v61 = v95;
    v78 = v47 + 8;
    v74 = v60;
    v60(v51, v95);
    v62 = [*&v5[v43] clientEntitlements];
    sub_22510792C(v56);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v62 entitlementsByAddingOverlay_];

    *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_overlaidCKEntitlements] = v64;
    v70(v79, &v5[v97], v59);
    v72(v80, &v5[v73], v61);
    _s17CloudCoreInternal23AnySessionConfigurationV8validate12entitlementsyx_tAC06CustomF5ErrorOYKAA20EntitlementsProtocolRzlF();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v65 = sub_2250953C4();
    v66(v65);
    v67 = sub_2250C8830();
    v68(v67);
    v102.receiver = v5;
    v102.super_class = v90;
    v5 = objc_msgSendSuper2(&v102, sel_init);

    swift_unknownObjectRelease();
  }

  return v5;
}

void sub_2250B4C44(uint64_t a1, uint64_t a2)
{
  sub_2250C88E8();
  v66 = v3;
  v67 = v4;
  v68 = type metadata accessor for Entitlements();
  sub_225072D1C();
  v61 = v5;
  MEMORY[0x28223BE20](v6);
  v65 = v7;
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v10 = sub_22507D394(v9);
  v62 = v11;
  v63 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v72 = &v52 - v13;
  sub_22507E434();
  v71 = type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v64 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v70 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22507E434();
  v69 = type metadata accessor for SessionID();
  sub_225072D1C();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v23 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v24 = sub_22507CD44(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - v25;
  v27 = v2 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex));
  v28 = *(v27 + 8);

  os_unfair_lock_unlock(v27);
  if (v28)
  {

    __break(1u);
  }

  else
  {
    v29 = type metadata accessor for TaskPriority();
    sub_22507C8C0(v26, 1, 1, v29);
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = v26;
    v30 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionConfiguration;
    v31 = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol);
    v32 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_previousInvalidationContext;
    v33 = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionAcquisitionClientProxy);
    v55 = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_processScopedClientProxy);
    v56 = v33;
    v34 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements;
    v57 = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_overlaidCKEntitlements);
    v58 = v31;
    v35 = *(v19 + 16);
    v54 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35(v54, v2 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID, v69);
    v36 = v64;
    (*(v64 + 16))(v70, v2 + v30, v71);
    sub_2250C853C(v2 + v32, v72, &unk_27D718E60, &unk_225444780);
    v37 = v61;
    (*(v61 + 16))(v8, v2 + v34, v68);
    v38 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v39 = (v21 + *(v36 + 80) + v38) & ~*(v36 + 80);
    v40 = (v16 + *(v62 + 80) + v39) & ~*(v62 + 80);
    v62 = (v63 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (*(v37 + 80) + v53 + 8) & ~*(v37 + 80);
    v41 = &v65[v52 + 7] & 0xFFFFFFFFFFFFFFF8;
    v65 = v8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    (*(v19 + 32))(v43 + v38, v54, v69);
    (*(v36 + 32))(v43 + v39, v70, v71);
    sub_2250C8588(v72, v43 + v40, &unk_27D718E60, &unk_225444780);
    v44 = v63;
    *(v43 + v62) = v58;
    v45 = v55;
    *(v43 + v44) = v56;
    v46 = v52;
    *(v43 + v53) = v45;
    (*(v37 + 32))(v43 + v46, v65, v68);
    v47 = v57;
    *(v43 + v41) = v57;
    v48 = (v43 + v42);
    v49 = v67;
    *v48 = v66;
    v48[1] = v49;
    *(v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8)) = v59;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v50 = v45;
    v51 = v47;

    sub_2250B5ADC(0, 0, v60, &unk_225444798, v43);

    sub_2250C8920();
  }
}

uint64_t sub_2250B5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  *(v8 + 80) = v14;
  *(v8 + 96) = v15;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = type metadata accessor for Entitlements();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  *(v8 + 152) = swift_task_alloc();
  v10 = type metadata accessor for AnySessionConfiguration();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = type metadata accessor for SessionID();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250B5354, 0, 0);
}

uint64_t sub_2250B5354()
{
  v1 = v0[24];
  v2 = v0[23];
  v32 = v0[22];
  v33 = v0[25];
  v3 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v4 = v0[17];
  v24 = v0[18];
  v25 = v0[16];
  v31 = v0[13];
  v23 = v0[11];
  v29 = v0[14];
  v30 = v0[10];
  v27 = v0[12];
  v28 = v0[9];
  v26 = v0[8];
  v5 = v0[5];
  v19 = v0[6];
  v20 = v0[7];
  sub_2250B0DFC(&unk_27D718E70, &qword_2254447A0);
  _StringGuts.grow(_:)(26);
  sub_22509583C();
  sub_2250C8748(v6, v7, MEMORY[0x277CFAB10]);
  dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x22AA62E50](0xD000000000000018, 0x8000000225479720);
  v8 = ExponentialNetworkBackoff<>.init(label:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)();
  v0[26] = v8;
  (*(v1 + 16))(v33, v5, v2);
  (*(v3 + 16))(v32, v19, v21);
  sub_2250C853C(v20, v22, &unk_27D718E60, &unk_225444780);
  (*(v4 + 16))(v24, v23, v25);
  sub_2250B0DFC(&qword_27D718E80, &qword_2254447A8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v9 = v27;

  swift_unknownObjectRetain();
  v10 = v30;

  v11 = sub_2250B6B9C(v33, v32, v22, v26, v28, v30, v24, v9, v8, v31, v29);
  v0[27] = v11;
  v13 = v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v15 = Strong;
    v16 = swift_task_alloc();
    v0[29] = v16;
    *(v16 + 16) = v15;
    *(v16 + 24) = v13;
    v17 = swift_task_alloc();
    v0[30] = v17;
    *v17 = v0;
    v17[1] = sub_2250B5778;

    return MEMORY[0x282200830]();
  }

  else
  {
    sub_2250B7EE8();

    sub_22507CC50();

    return v18();
  }
}

uint64_t sub_2250B5778()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v7 = sub_2250B5914;
  }

  else
  {

    v7 = sub_2250B587C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2250B587C()
{
  sub_22507CE94();
  v1 = *(v0 + 224);

  sub_22507CC50();

  return v2();
}

uint64_t sub_2250B5914()
{
  sub_22507CE94();
  v1 = *(v0 + 224);

  sub_225075274();

  return v2();
}

uint64_t sub_2250B59B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2250B59D8, 0, 0);
}

uint64_t sub_2250B59D8()
{
  sub_225072C10();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex;
  os_unfair_lock_lock(v2);

  *(v2 + 8) = v1;

  os_unfair_lock_unlock(v2);

  return MEMORY[0x2822009F8](sub_2250B5A68, v1, 0);
}

uint64_t sub_2250B5A68()
{
  sub_22507CE94();
  sub_2250B87CC();
  sub_225075274();

  return v0();
}

uint64_t sub_2250B5ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2250C853C(a3, v21 - v9, &qword_27D7190D0, &qword_225445B10);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_22507C8E8(v10, 1, v11);

  if (v12 == 1)
  {
    sub_2250C86F4(v10, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_2250C86F4(a3, &qword_27D7190D0, &qword_225445B10);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2250C86F4(a3, &qword_27D7190D0, &qword_225445B10);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_2250B5DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2250C88E8();
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for SessionID();
  sub_225072D1C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_225072C00();
  v12 = v11 - v10;
  type metadata accessor for Logger();
  sub_225072D1C();
  v33 = v14;
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  sub_2250986C0();
  v15 = &v3[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex];
  os_unfair_lock_lock(&v3[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex]);
  v16 = *(v15 + 1);

  os_unfair_lock_unlock(v15);
  CCLog.getter();

  v17 = v3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v32 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v17;
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v21 = 136315394;
    (*(v8 + 16))(v12, &v20[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID], v6);
    sub_22509583C();
    sub_2250C8748(v22, v23, MEMORY[0x277CFAB10]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = ObjectType;
    v26 = v25;
    (*(v8 + 8))(v12, v6);
    v27 = sub_225095AFC(v24, v26, &v35);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;

    sub_2250B0DFC(&qword_27D718F88, &unk_225444960);
    v28 = String.init<A>(describing:)();
    v30 = sub_225095AFC(v28, v29, &v35);

    *(v21 + 14) = v30;
    ObjectType = v31;
    _os_log_impl(&dword_22506F000, v18, v19, "%s: daemon session acquirer in de-init, cancelling acquisition of %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_22507C9FC();
    sub_22507C9FC();
  }

  (*(v33 + 8))(v4, v34);
  if (v16)
  {

    sub_2250B7EE8();
  }

  v36.receiver = v32;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_dealloc);
  sub_2250C8920();
}

uint64_t type metadata accessor for CKDSessionAcquirer(uint64_t a1)
{
  result = qword_280D53780;
  if (!qword_280D53780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250B6330(uint64_t a1)
{
  type metadata accessor for SessionID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnySessionConfiguration();
    if (v2 <= 0x3F)
    {
      sub_2250B649C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Entitlements();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2250B649C(uint64_t a1)
{
  if (!qword_280D535E0)
  {
    type metadata accessor for SessionInvalidationContext();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_280D535E0);
    }
  }
}

uint64_t sub_2250B64F8(void *a1)
{
  v2 = type metadata accessor for SessionID();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v40 = *(v2 - 8) + 64;
    v5 = type metadata accessor for AnySessionConfiguration();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v41 = *(v5 - 8) + 64;
      sub_2250B649C(319);
      v3 = v7;
      if (v8 <= 0x3F)
      {
        v42 = *(v7 - 8) + 64;
        v43 = "\b";
        v44 = &unk_2254444E0;
        v45 = "\b";
        v9 = swift_checkMetadataState();
        v3 = v9;
        if (v10 <= 0x3F)
        {
          v46 = *(v9 - 8) + 64;
          v47 = MEMORY[0x277D833E8] + 64;
          v48 = MEMORY[0x277D833E8] + 64;
          v11 = swift_checkMetadataState();
          v12 = v11;
          if (v13 > 0x3F)
          {
            return v11;
          }

          else
          {
            v49 = *(v11 - 8) + 64;
            v50 = MEMORY[0x277D83428] + 64;
            v51 = &unk_225444548;
            v15 = a1[12];
            v14 = a1[13];
            v16 = a1[14];
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v19 = a1[15];
            v18 = a1[16];
            v20 = a1[17];
            v21 = *(swift_getAssociatedConformanceWitness() + 8);
            v29 = v12;
            v30 = v3;
            v31 = v15;
            v32 = v14;
            v33 = AssociatedTypeWitness;
            v34 = v16;
            v35 = v19;
            v36 = v18;
            v37 = v20;
            v38 = v21;
            v22 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(319, &v29);
            if (v23 > 0x3F)
            {
              return v22;
            }

            else
            {
              v52 = *(v22 - 8) + 64;
              v53 = &unk_225444560;
              v24 = swift_getAssociatedTypeWitness();
              v25 = *(swift_getAssociatedConformanceWitness() + 8);
              v29 = v12;
              v30 = v3;
              v31 = v15;
              v32 = v14;
              v33 = v24;
              v34 = v16;
              v35 = v19;
              v36 = v18;
              v37 = v20;
              v38 = v25;
              v26 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(319, &v29);
              v3 = v26;
              if (v27 <= 0x3F)
              {
                v54 = *(v26 - 8) + 64;
                v55 = &unk_225444578;
                v56 = "\b";
                v57 = &unk_225444578;
                v58 = &unk_225444590;
                v59 = &unk_2254445A8;
                return swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

void sub_2250B68A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2250C88E8();
  v24 = type metadata accessor for PropertyDescription();
  sub_2250C8890();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_225072C00();
  v23 = v8 - v7;
  sub_22507E434();
  v9 = type metadata accessor for OSLogPrivacy();
  v10 = sub_22507CD44(v9);
  MEMORY[0x28223BE20](v10);
  sub_2250986C0();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  sub_2250C8890();
  v12 = *(v11 + 72);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_225444470;
  ObjectType = type metadata accessor for SessionID();
  sub_225073808(v25);
  sub_22507E428();
  (*(v15 + 16))();
  static OSLogPrivacy.public.getter();
  sub_2250C8868();
  PropertyDescription.init(_:_:privacy:)();
  ObjectType = type metadata accessor for AnySessionConfiguration();
  sub_225073808(v25);
  sub_22507E428();
  (*(v16 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v17 = *(v3 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol);
  if (v17)
  {
    ObjectType = swift_getObjectType();
    v25[0] = v17;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    sub_225072BD8();
    v22 = sub_22509891C(1, 3, 1, v14, v18, v19, v20, v21);
    swift_unknownObjectRelease();
    v22[2] = 3;
    (*(v5 + 32))(v22 + 2 * v12 + v13, v23, v24);
  }

  sub_2250C8920();
}

uint64_t sub_2250B6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v59 = a8;
  v56 = a6;
  v57 = a7;
  v64 = a5;
  v54 = a4;
  v65 = a3;
  v47 = a2;
  v52 = a1;
  v58 = a10;
  v61 = a9;
  v62 = a11;
  v14 = type metadata accessor for AnySessionConfiguration();
  v46 = v14;
  v50 = *(v14 - 8);
  v15 = v50;
  MEMORY[0x28223BE20](v14);
  v60 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Entitlements();
  v45 = *(v63 - 8);
  v17 = v45;
  MEMORY[0x28223BE20](v63);
  v55 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v19 = qword_280D538D0;
  v20 = type metadata accessor for SessionInvalidationContext();
  sub_22507C8C0(v11 + v19, 1, 1, v20);
  v21 = v11 + *(*v11 + 240);
  *v21 = 0;
  *(v21 + 8) = 2;
  v22 = v11 + *(*v11 + 248);
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 2;
  v23 = v11 + *(*v11 + 256);
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 0;
  *(v23 + 24) = 2;
  sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  swift_storeEnumTagMultiPayload();
  v24 = (v11 + *(*v11 + 272));
  *v24 = 0;
  v24[1] = 0;
  *(v11 + *(*v11 + 280)) = 0;
  v25 = (v11 + *(*v11 + 288));
  *v25 = 0;
  v25[1] = 0;
  *(v11 + *(*v11 + 296)) = 0;
  v26 = v11 + *(*v11 + 304);
  *v26 = 0;
  *(v26 + 4) = 0;
  v27 = qword_280D53830;
  v51 = type metadata accessor for SessionID();
  v53 = *(v51 - 8);
  (*(v53 + 16))(v11 + v27, a1, v51);
  v28 = *(v15 + 16);
  v48 = v15 + 16;
  v49 = v28;
  v28((v11 + qword_280D538E8), a2, v14);
  swift_beginAccess();
  sub_2250C8684(v65, v11 + v19);
  swift_endAccess();
  *(v11 + qword_280D538C8) = v54;
  *(v11 + qword_280D538C0) = v64;
  v29 = v56;
  *(v11 + qword_280D538D8) = v56;
  v30 = *(*v11 + 200);
  v44 = *(v17 + 16);
  v31 = v57;
  v44(v11 + v30, v57, v63);
  v32 = v59;
  *(v11 + *(*v11 + 208)) = v59;
  *(v11 + *(*v11 + 232)) = v61;
  v33 = v25[1];
  v43 = *v25;
  v42 = v33;
  v34 = v62;
  *v25 = v58;
  v25[1] = v34;
  v58 = v29;
  v59 = v32;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2250C76A8(v43, v42);
  v35 = v55;
  v36 = v63;
  v44(v55, v31, v63);
  v37 = v60;
  v38 = v47;
  v39 = v46;
  v49(v60, v47, v46);
  v40 = sub_2250B350C(v35, v37);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v45 + 8))(v31, v36);
  sub_2250C86F4(v65, &unk_27D718E60, &unk_225444780);
  (*(v50 + 8))(v38, v39);
  (*(v53 + 8))(v52, v51);
  *(v11 + *(*v11 + 216)) = v40;
  return v11;
}

Swift::Int sub_2250B7170(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_2250B7240(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_2250AB664(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_2250B7308()
{
  v1 = v0 + *(*v0 + 240);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  sub_2250C85D4(v2, v3);
  return v5;
}

uint64_t sub_2250B735C()
{
  if (*(v0 + *(*v0 + 248) + 16) > 1u)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t sub_2250B73A4()
{
  if (*(v0 + *(*v0 + 256) + 24) > 1u)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t sub_2250B73EC()
{
  v1 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v4 = *(*v0 + 264);
  swift_beginAccess();
  sub_2250C853C(v0 + v4, v3, &unk_27D718E90, &qword_2254447C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *v3;
    v7 = sub_2250B0DFC(&qword_27D718F58, &qword_2254448C8);
    sub_2250C7F30(&v3[*(v7 + 48)]);
  }

  else
  {
    sub_2250C86F4(v3, &unk_27D718E90, &qword_2254447C8);
    return 0;
  }

  return v6;
}

void sub_2250B7520(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v92 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  MEMORY[0x28223BE20](v92);
  v93 = &v88 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v91 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v88 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v88 - v12;
  v95 = *(*v1 + 296);
  v14 = *(v1 + v95);
  v15 = v3 < 2 || v14 >= v3;
  if (!v15 && (sub_2250B8B48() & 1) == 0)
  {
    v16 = v6;
    CCLog.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v90 = v11;
      v20 = v19;
      v21 = swift_slowAlloc();
      v94 = v5;
      v22 = v21;
      v97[0] = v21;
      *v20 = 136315138;
      type metadata accessor for SessionID();
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;

      v26 = sub_225095AFC(v23, v25, v97);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_22506F000, v17, v18, "%s: restarting daemon acquisition", v20, 0xCu);
      sub_225073BF0(v22);
      v27 = v22;
      v5 = v94;
      MEMORY[0x22AA65DF0](v27, -1, -1);
      v28 = v20;
      v11 = v90;
      MEMORY[0x22AA65DF0](v28, -1, -1);
    }

    else
    {
    }

    v6 = v16;
    (*(v16 + 8))(v13, v5);
    v3 = 2;
  }

  CCLog.getter();

  v29 = v11;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v97[0] = v89;
    *v32 = 136315650;
    v90 = v29;
    type metadata accessor for SessionID();
    v94 = v5;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;

    v36 = sub_225095AFC(v33, v35, v97);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v96 = v14;
    sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
    v37 = String.init<A>(describing:)();
    v39 = sub_225095AFC(v37, v38, v97);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    v96 = v3;
    v40 = String.init<A>(describing:)();
    v42 = sub_225095AFC(v40, v41, v97);

    *(v32 + 24) = v42;
    v5 = v94;
    _os_log_impl(&dword_22506F000, v30, v31, "%s: State Transition: %s -> %s", v32, 0x20u);
    v43 = v89;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v43, -1, -1);
    MEMORY[0x22AA65DF0](v32, -1, -1);

    v44 = *(v6 + 8);
    v44(v90, v5);
  }

  else
  {

    v44 = *(v6 + 8);
    v44(v29, v5);
  }

  *(v2 + v95) = v3;
  if (v3 <= 2 && *(v2 + *(*v2 + 272) + 8))
  {
    v45 = v91;
    CCLog.getter();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v95 = v6;
      v49 = v48;
      v90 = swift_slowAlloc();
      v97[0] = v90;
      *v49 = 136315394;
      LODWORD(v89) = v47;
      type metadata accessor for SessionID();
      v94 = v5;
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;

      v53 = sub_225095AFC(v50, v52, v97);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v96 = v3;
      sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
      v54 = String.init<A>(describing:)();
      v56 = sub_225095AFC(v54, v55, v97);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_22506F000, v46, v89, "%s: Keeping the previous resolved persona ID while transitioning to %s", v49, 0x16u);
      v57 = v90;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v57, -1, -1);
      MEMORY[0x22AA65DF0](v49, -1, -1);

      v58 = v94;
      v59 = v45;
    }

    else
    {

      v59 = v45;
      v58 = v5;
    }

    v44(v59, v58);
  }

  if (v3 != v14 && v14 >= 3 && v3 <= 3)
  {
    v62 = sub_2250B7308();
    if (v62)
    {
      *(v62 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor) = 0;
    }

    v63 = v2 + *(*v2 + 240);
    v64 = *v63;
    *v63 = 0;
    v65 = *(v63 + 8);
    *(v63 + 8) = 2;
    sub_2250C79F8(v64, v65);
  }

  if (v3 != v14 && v14 >= 4 && v3 <= 4)
  {
    v68 = sub_2250B735C();
    if (v68)
    {
      *(v68 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor) = 0;
    }

    v69 = v2 + *(*v2 + 248);
    v70 = *v69;
    v71 = *(v69 + 8);
    *v69 = 0;
    *(v69 + 8) = 0;
    v72 = *(v69 + 16);
    *(v69 + 16) = 2;
    sub_2250C7A0C(v70, v71, v72);
  }

  if (v3 != v14 && v14 >= 5 && v3 <= 5)
  {
    v75 = sub_2250B73A4();
    if (v75)
    {
      *(v75 + 16) = 0;
    }

    v76 = v2 + *(*v2 + 256);
    v77 = *v76;
    v78 = *(v76 + 8);
    v79 = *(v76 + 16);
    *v76 = 0;
    *(v76 + 8) = 0;
    *(v76 + 16) = 0;
    v80 = *(v76 + 24);
    *(v76 + 24) = 2;
    sub_2250C7A68(v77, v78, v79, v80, MEMORY[0x277D85008]);
  }

  if (v3 != v14 && v14 >= 6 && v3 <= 6)
  {
    v83 = sub_2250B73EC();
    if (v83)
    {
      *(v83 + 16) = 0;
    }

    v84 = v93;
    swift_storeEnumTagMultiPayload();
    v85 = *(*v2 + 264);
    swift_beginAccess();
    sub_2250C7ACC(v84, v2 + v85, &unk_27D718E90, &qword_2254447C8);
    swift_endAccess();
    goto LABEL_62;
  }

  if (v3 <= 7)
  {
LABEL_62:
    v86 = *(*v2 + 280);
    v87 = *(v2 + v86);
    *(v2 + v86) = 0;
  }

  switch(v3)
  {
    case 2u:
      sub_2250B9AE8();
      break;
    case 3u:
      sub_2250BE96C();
      break;
    case 4u:
      sub_2250BF334();
      break;
    case 5u:
      sub_2250BFF84();
      break;
    case 6u:
      sub_2250C0F4C();
      break;
    case 7u:
      sub_2250C1FD8();
      break;
    case 8u:
      sub_2250C3100();
      break;
    case 9u:
      sub_2250C4138();
      break;
    default:
      return;
  }
}

uint64_t sub_2250B7EE8()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    v17 = sub_225095AFC(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22506F000, v9, v10, "%s: cancelling daemon acquisition", v12, 0xCu);
    sub_225073BF0(v13);
    MEMORY[0x22AA65DF0](v13, -1, -1);
    v18 = v12;
    v4 = v23;
    MEMORY[0x22AA65DF0](v18, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v8, v5);
  v19 = v1 + *(*v1 + 304);
  os_unfair_lock_lock(v19);
  *(v19 + 4) = 1;
  os_unfair_lock_unlock(v19);
  v20 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v4, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;

  sub_2250E1D44();
}

uint64_t sub_2250B8220()
{
  sub_225072C10();
  sub_2250B8278();
  sub_225075274();

  return v0();
}

uint64_t sub_2250B8278()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    v13 = sub_225095AFC(v10, v12, v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22506F000, v6, v7, "%s: cancelling daemon acquisition on actor", v8, 0xCu);
    sub_225073BF0(v9);
    MEMORY[0x22AA65DF0](v9, -1, -1);
    MEMORY[0x22AA65DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  v14 = v1 + *(*v1 + 304);
  os_unfair_lock_lock(v14);
  *(v14 + 4) = 1;
  os_unfair_lock_unlock(v14);
  return sub_2250B84E4();
}

uint64_t sub_2250B84E4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(*v0 + 304);
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 4);
  os_unfair_lock_unlock(v5);
  if (v6 & 1) != 0 || (result = static Task<>.isCancelled.getter(), (result))
  {
    CCLog.getter();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v1;
      v12 = v11;
      v19 = v11;
      *v10 = 136315138;
      type metadata accessor for SessionID();
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;

      v16 = sub_225095AFC(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22506F000, v8, v9, "%s: daemon acquisition was cancelled", v10, 0xCu);
      sub_225073BF0(v12);
      MEMORY[0x22AA65DF0](v12, -1, -1);
      MEMORY[0x22AA65DF0](v10, -1, -1);

      (*(v2 + 8))(v4, v18);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    sub_2250B7520(1u);
    type metadata accessor for CancellationError();
    sub_2250C8748(&qword_280D535B0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    CancellationError.init()();
    return swift_willThrow();
  }

  return result;
}

void sub_2250B87CC()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v4;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315138;
    type metadata accessor for SessionID();
    v19 = v1;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;

    v16 = sub_225095AFC(v13, v15, v20);
    v2 = v19;

    *(v11 + 4) = v16;
    _os_log_impl(&dword_22506F000, v8, v9, "%s: starting daemon acquisition", v11, 0xCu);
    sub_225073BF0(v12);
    MEMORY[0x22AA65DF0](v12, -1, -1);
    MEMORY[0x22AA65DF0](v11, -1, -1);

    (*(v5 + 8))(v7, v18);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_2250B84E4();
  if (!v2)
  {
    v17 = *(*v3 + 296);
    if (*(v3 + v17))
    {
      if (*(v3 + v17) != 1)
      {
        v20[0] = 0;
        v20[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
        MEMORY[0x22AA62E50](0xD000000000000012, 0x80000002254797A0);
        MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
        v21 = *(v3 + v17);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    else
    {
      sub_2250B7520(2u);
    }
  }
}

uint64_t sub_2250B8B48()
{
  v1 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v131 = *(v1 - 8);
  v132 = v1;
  MEMORY[0x28223BE20](v1);
  v130 = &v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v127 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v136 = &v126 - v6;
  v7 = type metadata accessor for Logger();
  v141 = *(v7 - 8);
  v142 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v128 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v134 = &v126 - v11;
  MEMORY[0x28223BE20](v10);
  v133 = &v126 - v12;
  v13 = type metadata accessor for SaltedHash();
  v135 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v143 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v126 - v19;
  v21 = type metadata accessor for SessionInvalidationContext();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v138 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v137 = &v126 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v126 - v27;
  v29 = qword_280D538D0;
  swift_beginAccess();
  v140 = v29;
  sub_2250C853C(v0 + v29, v20, &unk_27D718E60, &unk_225444780);
  if (sub_22507C8E8(v20, 1, v21) == 1)
  {
    sub_2250C86F4(v20, &unk_27D718E60, &unk_225444780);
    return 1;
  }

  v31 = *(v22 + 32);
  v129 = v21;
  v31(v28, v20, v21);
  v32 = *(*v0 + 280);
  v139 = v0;
  v33 = *&v32[v0];
  v34 = v22;
  if (v33)
  {
    v35 = v33;
    v36 = [v35 deviceID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    SessionInvalidationContext.deviceIDHash.getter();
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_225444480;
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    LOBYTE(v35) = SaltedHash.matches(_:)();

    (*(v135 + 1))(v15, v13);
    if ((v35 & 1) == 0)
    {
      v54 = v133;
      CCLog.getter();
      v55 = v139;

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v145[0] = v59;
        *v58 = 136315138;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;

        v63 = sub_225095AFC(v60, v62, v145);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_22506F000, v56, v57, "%s: Previous invalidation context is from a different device ID.", v58, 0xCu);
        sub_225073BF0(v59);
        MEMORY[0x22AA65DF0](v59, -1, -1);
        MEMORY[0x22AA65DF0](v58, -1, -1);

        (*(v141 + 8))(v133, v142);
      }

      else
      {

        (*(v141 + 8))(v54, v142);
      }

      v64 = v129;
      (*(v22 + 8))(v28, v129);
      v65 = v143;
      sub_22507C8C0(v143, 1, 1, v64);
      v66 = v140;
      swift_beginAccess();
      v67 = v55 + v66;
      goto LABEL_49;
    }
  }

  v133 = v32;
  v135 = v28;
  v41 = SessionInvalidationContext.primaryServiceName.getter();
  v43 = v42;
  v44 = v136;
  AnySessionConfiguration.encryption.getter();
  v45 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v44, 1, v45) == 1)
  {
    sub_2250C86F4(v44, &unk_27D7190E0, &unk_2254447D0);
    v47 = v137;
    v46 = v138;
    if (!v43)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  v48 = v130;
  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  (*(*(v45 - 8) + 8))(v44, v45);
  v49 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
  v51 = v50;
  (*(v131 + 8))(v48, v132);
  v47 = v137;
  if (!v43)
  {
    v46 = v138;
    if (!v51)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  v46 = v138;
  if (!v51)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v41 == v49 && v43 == v51)
  {

    goto LABEL_39;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
LABEL_39:
    v93 = v139;
    v94 = *&v133[v139];
    if (!v94)
    {
LABEL_53:
      (*(v34 + 8))(v135, v129);
      return 1;
    }

    v95 = v34;
    v96 = [v94 account];
    v97 = [v96 accountID];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    v101 = sub_2250C8B38(v98, v100);
    v103 = v102;

    sub_22508D04C(v101, v103);
    v105 = SessionInvalidationContext.privilegedInfoHash.getter();
    v106 = v104;
    if (v103 >> 60 == 15)
    {
      if (v104 >> 60 == 15)
      {
        sub_22508D128(v101, v103);

        sub_2250C7B18(v101, v103);
LABEL_52:
        v34 = v95;
        goto LABEL_53;
      }
    }

    else if (v104 >> 60 != 15)
    {
      sub_22508D04C(v101, v103);
      sub_2250C7B2C(v105, v106);
      v125 = MEMORY[0x22AA62370](v101, v103, v105, v106);
      sub_2250C7B18(v105, v106);
      sub_22508D128(v101, v103);
      sub_2250C7B18(v105, v106);
      sub_2250C7B18(v101, v103);
      if (v125)
      {
        sub_22508D128(v101, v103);

        goto LABEL_52;
      }

      goto LABEL_45;
    }

    sub_2250C7B18(v101, v103);
    sub_2250C7B18(v105, v106);
LABEL_45:
    CCLog.getter();
    v107 = v129;
    (*(v95 + 16))(v46, v135, v129);
    sub_22508D04C(v101, v103);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.info.getter();
    sub_22508D128(v101, v103);
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v138 = v96;
      v111 = v46;
      v112 = v110;
      v137 = swift_slowAlloc();
      v144 = v137;
      *v112 = 136315394;
      v145[0] = SessionInvalidationContext.privilegedInfoHash.getter();
      v145[1] = v113;
      sub_2250B0DFC(&qword_27D718EA8, &qword_2254447E0);
      v114 = String.init<A>(describing:)();
      v116 = v115;
      v117 = *(v95 + 8);
      v117(v111, v129);
      v118 = sub_225095AFC(v114, v116, &v144);

      *(v112 + 4) = v118;
      *(v112 + 12) = 2080;
      sub_22508D04C(v101, v103);
      v119 = Data.description.getter();
      v121 = v120;
      sub_22508D128(v101, v103);
      v122 = sub_225095AFC(v119, v121, &v144);
      v107 = v129;

      *(v112 + 14) = v122;
      _os_log_impl(&dword_22506F000, v108, v109, "Previous invalidation context has a different privileged info hash from the new session configuration, ignoring it. Previous privileged info hash %s, session configuration privileged info hash %s", v112, 0x16u);
      v123 = v137;
      swift_arrayDestroy();
      v93 = v139;
      MEMORY[0x22AA65DF0](v123, -1, -1);
      MEMORY[0x22AA65DF0](v112, -1, -1);

      sub_22508D128(v101, v103);
    }

    else
    {

      sub_22508D128(v101, v103);
      v117 = *(v95 + 8);
      v117(v46, v107);
    }

    (*(v141 + 8))(v128, v142);
    v117(v135, v107);
    v65 = v143;
    sub_22507C8C0(v143, 1, 1, v107);
    v124 = v140;
    swift_beginAccess();
    v67 = v93 + v124;
    goto LABEL_49;
  }

LABEL_23:
  v68 = v134;
  CCLog.getter();
  v69 = v135;
  v70 = v129;
  (*(v34 + 16))(v47, v135, v129);
  v71 = v139;

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v145[0] = v137;
    *v74 = 136315394;
    v75 = SessionInvalidationContext.primaryServiceName.getter();
    if (v76)
    {
      v77 = v75;
    }

    else
    {
      v77 = 7104878;
    }

    v78 = v70;
    if (v76)
    {
      v79 = v76;
    }

    else
    {
      v79 = 0xE300000000000000;
    }

    v138 = *(v34 + 8);
    (v138)(v47, v78);
    v80 = sub_225095AFC(v77, v79, v145);

    *(v74 + 4) = v80;
    *(v74 + 12) = 2080;
    v81 = v127;
    AnySessionConfiguration.encryption.getter();
    if (sub_22507C8E8(v81, 1, v45) == 1)
    {
      sub_2250C86F4(v81, &unk_27D7190E0, &unk_2254447D0);
      v82 = v134;
      v83 = v135;
    }

    else
    {
      v85 = v130;
      AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
      (*(*(v45 - 8) + 8))(v81, v45);
      v86 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
      v88 = v87;
      (*(v131 + 8))(v85, v132);
      v82 = v134;
      v83 = v135;
      if (v88)
      {
        v89 = v86;
LABEL_36:
        v90 = sub_225095AFC(v89, v88, v145);

        *(v74 + 14) = v90;
        _os_log_impl(&dword_22506F000, v72, v73, "Previous invalidation context has a different primary service name from the new session configuration, ignoring it. Previous service name %s. Session configuration service name %s", v74, 0x16u);
        v91 = v137;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v91, -1, -1);
        MEMORY[0x22AA65DF0](v74, -1, -1);

        (*(v141 + 8))(v82, v142);
        v70 = v129;
        (v138)(v83, v129);
        goto LABEL_37;
      }
    }

    v88 = 0xE300000000000000;
    v89 = 7104878;
    goto LABEL_36;
  }

  v84 = *(v34 + 8);
  v84(v47, v70);
  (*(v141 + 8))(v68, v142);
  v84(v69, v70);
LABEL_37:
  v65 = v143;
  sub_22507C8C0(v143, 1, 1, v70);
  v92 = v140;
  swift_beginAccess();
  v67 = v71 + v92;
LABEL_49:
  sub_2250C7ACC(v65, v67, &unk_27D718E60, &unk_225444780);
  swift_endAccess();
  return 0;
}