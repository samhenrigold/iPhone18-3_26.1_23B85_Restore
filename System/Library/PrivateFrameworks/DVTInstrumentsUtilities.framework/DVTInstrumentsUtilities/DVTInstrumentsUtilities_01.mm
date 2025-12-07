__int128 *sub_2480AAEB8(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_2480ABC1C(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_24808AAEC(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t sub_2480AAF58(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 56));
  while (*(a1 + 120))
  {
    pthread_cond_wait((a1 + 8), (a1 + 56));
  }

  *(a1 + 120) = 3;
  pthread_attr_init(&v4);
  pthread_attr_setschedpolicy(&v4, 2);
  pthread_attr_getschedparam(&v4, &v3);
  v3.sched_priority = 50;
  pthread_attr_setschedparam(&v4, &v3);
  pthread_create(a1, &v4, sub_2480AAF3C, a1);
  pthread_attr_destroy(&v4);
  return pthread_mutex_unlock((a1 + 56));
}

uint64_t sub_2480AB038(uint64_t a1)
{
  pthread_mutex_lock((a1 + 56));
  while (1)
  {
    v2 = *(a1 + 120);
    if ((v2 - 1) < 3)
    {
      *(a1 + 120) = 4;
      pthread_cond_signal_thread_np((a1 + 8), *a1);
      goto LABEL_5;
    }

    if (!v2)
    {
      break;
    }

LABEL_5:
    pthread_cond_wait((a1 + 8), (a1 + 56));
  }

  pthread_mutex_unlock((a1 + 56));
  v3 = *a1;

  return pthread_join(v3, 0);
}

uint64_t sub_2480AB0BC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 56));
  if (*(a1 + 256))
  {
    v4 = 0;
  }

  else
  {
    v5 = 1000000000 * *a2 + 1000 * *(a2 + 8);
    v6 = *(a1 + 128);
    v7 = *(a1 + 144) + v6;
    v8 = (1000000000 * *(a1 + 160) + 1000 * *(a1 + 168)) % v7 + v5 / v7 * v7 - v5;
    if (v8 >= v7 / -2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 144) + v6;
    }

    v10 = v9 + v8;
    if (v8 > v7 / 2)
    {
      v4 = v8 - v7;
    }

    else
    {
      v4 = v10;
    }

    v11 = *(a1 + 520) + v4;
    v12 = -(v11 * 0.01 + v4 * 0.12 + (v4 - *(a1 + 528)) * 0.0015);
    *(a1 + 144) = v12;
    v13 = v6 + v12;
    v14 = *(a1 + 124);
    if (v13 < v6 >> 1 || v13 > v6 + (v6 >> 1))
    {
      v16 = 0;
      v17 = 0;
      *(a1 + 144) = 0;
    }

    else
    {
      v16 = v11 + v4;
      v6 += v12;
      v17 = v4;
    }

    *(a1 + 152) = v6 / v14 / 0x3E8;
    *(a1 + 520) = v16;
    *(a1 + 528) = v17;
    *(a1 + 8 * (*(a1 + 264) % 0x1EuLL) + 280) = v4;
  }

  pthread_mutex_unlock((a1 + 56));
  return v4;
}

uint64_t sub_2480AB244(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 56));
  *(a1 + 136) = a2;

  return pthread_mutex_unlock((a1 + 56));
}

uint64_t sub_2480AB288(uint64_t a1, char a2)
{
  *a1 = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = a2;
  *(a1 + 136) = xmmword_2480B9490;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 241) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 520) = 0u;
  pthread_mutex_init((a1 + 56), 0);
  pthread_cond_init((a1 + 8), 0);
  v3 = *(a1 + 136);
  *(a1 + 128) = v3;
  *(a1 + 152) = v3 / *(a1 + 124) / 0x3E8;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  return a1;
}

void sub_2480AB374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = (v10 + 232);
  sub_24808AA4C(&a10);
  a10 = (v10 + 208);
  sub_24808AA4C(&a10);
  a10 = v12;
  sub_24808AA4C(&a10);
  _Unwind_Resume(a1);
}

void sub_2480AB3CC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2480AB428(exception, a1);
  __cxa_throw(exception, off_278EFA240, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2480AB428(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2480AB45C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2480A333C();
}

void **sub_2480AB4A4(void **a1)
{
  sub_2480AB4D8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2480AB4D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_24808AAEC(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *sub_2480AB52C(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2480AB5EC(a1, a2);
  }

  return a1;
}

void sub_2480AB5EC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2480AB628(a1, a2);
  }

  sub_2480AB3B4();
}

void sub_2480AB628(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2480A333C();
}

uint64_t *sub_2480AB670(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2480AB6F8(result, a4);
  }

  return result;
}

void sub_2480AB6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24808AA4C(&a9);
  _Unwind_Resume(a1);
}

void sub_2480AB6F8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2480AB45C(a1, a2);
  }

  sub_2480AB3B4();
}

void *sub_2480AB734(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_2480AB7BC(v7);
  return v4;
}

uint64_t sub_2480AB7BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2480AB7F4(a1);
  }

  return a1;
}

void sub_2480AB7F4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_24808AAEC(v3);
    }

    v1 -= 16;
  }
}

char *sub_2480AB838(void *a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_2480ABA1C(a1, a2, a1[1], &a2[16 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_2480ABA80(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_2480ABA1C(a1, v5, v10, &v5[16 * a5]);
        v18 = (v7 + v16);
      }

      sub_2480ABBA4(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_2480AB3B4();
    }

    v13 = &a2[-v11];
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_2480AB45C(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_2480AB4A4(v30);
    return v19;
  }

  return v5;
}

void *sub_2480ABA1C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_2480ABB40(&v11, a2, v7, v6);
}

void *sub_2480ABA80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_2480ABB08(v7);
  return v4;
}

uint64_t sub_2480ABB08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2480AB7F4(a1);
  }

  return a1;
}

void *sub_2480ABB40(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_24808AAEC(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_2480ABBA4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_24808AAEC(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__int128 *sub_2480ABC1C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_24808AAEC(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2480ABF14(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    objc_msgSend_finishedWithMode_(v2, v4, @"Failed", v5, v6);

    objc_end_catch();
    JUMPOUT(0x2480ABED4);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2480AC030(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a3;
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = objc_msgSend_initWithFormat_arguments_(v11, v12, v10, &a9, v13);
  if (objc_msgSend_length(v14, v15, v16, v17, v18))
  {
    v26 = objc_msgSend_dataUsingEncoding_(v14, v19, 4, v20, v21);
    do
    {
      v27 = objc_msgSend_fileDescriptor(a1, v22, v23, v24, v25);
      v28 = v26;
      v33 = objc_msgSend_bytes(v28, v29, v30, v31, v32);
      v38 = objc_msgSend_length(v26, v34, v35, v36, v37);
      v39 = write(v27, v33, v38);
      v44 = v39 > 0;
      if (v39 < 1)
      {
        break;
      }

      v45 = v39;
      if (v39 != objc_msgSend_length(v26, v40, v41, v42, v43))
      {
        v50 = objc_msgSend_length(v26, v46, v47, v48, v49);
        v53 = objc_msgSend_subdataWithRange_(v26, v51, v45, v50 - v45, v52);

        v45 = 0;
        v26 = v53;
      }
    }

    while (v45 != objc_msgSend_length(v26, v46, v47, v48, v49));
  }

  else
  {
    v44 = 1;
  }

  return v44;
}

uint64_t static XRFeatureFlag.internalSignposts.getter()
{
  if (qword_27EE864F8 != -1)
  {
    swift_once();
  }

  v0 = byte_27EE86598;
  v1 = byte_27EE8659A;
  if ([objc_opt_self() isAppleInternal])
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t static XRFeatureFlag._runAsAppleInternal.getter()
{
  if (qword_27EE864F0 != -1)
  {
    swift_once();
  }

  return byte_27EE86562;
}

XRFeatureFlag __swiftcall XRFeatureFlag.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for XRFeatureFlag()
{
  result = qword_27EE86520;
  if (!qword_27EE86520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE86520);
  }

  return result;
}

__n128 sub_2480AC3F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2480AC400(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2480AC420(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for XRTimeRange()
{
  if (!qword_27EE86528)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE86528);
    }
  }
}

uint64_t static FeatureFlag.subscript.getter(uint64_t a1)
{
  v2 = [objc_opt_self() isAppleInternal];
  v3 = 48;
  if (v2)
  {
    v3 = 50;
  }

  return *(a1 + v3);
}

uint64_t FeatureFlag.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeatureFlag.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeatureFlag.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t FeatureFlag.Source.description.getter()
{
  v1 = *v0;
  v2 = 0x20746C7561666564;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6665642072657375;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t FeatureFlag.Source.hashValue.getter()
{
  v1 = *v0;
  sub_2480B4958();
  MEMORY[0x24C1C51C0](v1);
  return sub_2480B4988();
}

uint64_t sub_2480AC700()
{
  v1 = *v0;
  sub_2480B4958();
  MEMORY[0x24C1C51C0](v1);
  return sub_2480B4988();
}

uint64_t sub_2480AC774(uint64_t a1)
{
  v2 = *v1;
  sub_2480B4958();
  MEMORY[0x24C1C51C0](v2);
  return sub_2480B4988();
}

unint64_t sub_2480AC808()
{
  v1 = *v0;
  v2 = 0x20746C7561666564;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6665642072657375;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void __swiftcall FeatureFlag.init(_:key:defaultValue:override:description:)(DVTInstrumentsUtilities::FeatureFlag *__return_ptr retstr, Swift::String _, Swift::String_optional key, Swift::Bool defaultValue, Swift::Bool_optional override, Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  LODWORD(v39) = defaultValue;
  v8 = key.value._object;
  v9 = key.value._countAndFlagsBits;
  v10 = _._object;
  v11 = _._countAndFlagsBits;
  v13 = sub_2480ACD58(&qword_27EE865A0, &qword_2480B94E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v40 = v11;
  v41 = v10;
  if (v8)
  {
    v17 = v9;
  }

  else
  {
    v46 = v11;
    v47 = v10;
    sub_2480B46E8();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_2480ACDA0();
    sub_2480ACDF4();
    v37 = sub_2480ACE48();
    sub_2480B48B8();
    (*(v14 + 8))(v16, v13);
    v46 = 21080;
    v47 = 0xE200000000000000;
    MEMORY[0x24C1C5020](*&v43[0], *(&v43[0] + 1));

    v17 = v46;
    v8 = v47;
  }

  v18 = v39 & 1;
  if (override.value == 2)
  {
    v39 = object;
    v19 = objc_opt_self();

    v20 = [v19 processInfo];
    v21 = [v20 environment];

    v22 = sub_2480B46F8();
    if (*(v22 + 16) && (sub_2480ADAEC(v17, v8), (v23 & 1) != 0))
    {

      v24 = sub_2480B4748();

      value = [v24 BOOLValue];

      v26 = DVTInstrumentsUtilities_FeatureFlag_Source_environment;
    }

    else
    {

      v27 = objc_opt_self();
      v28 = [v27 standardUserDefaults];
      v29 = sub_2480B4748();
      v30 = [v28 objectForKey_];

      if (v30)
      {
        sub_2480B48F8();
        swift_unknownObjectRelease();
        sub_2480ADB64(v43);
        v31 = [v27 standardUserDefaults];
        v32 = sub_2480B4748();
        value = [v31 BOOLForKey_];

        v33 = sub_2480B4908();
        *&v43[0] = 45;
        *(&v43[0] + 1) = 0xE100000000000000;
        MEMORY[0x24C1C5020](v17, v8);

        MEMORY[0x28223BE20](v34);
        v37 = v43;
        v35 = sub_2480ADBCC(sub_2480ADD30, (&v38 - 4), v33);

        if (v35)
        {
          v26 = DVTInstrumentsUtilities_FeatureFlag_Source_commandLine;
        }

        else
        {
          v26 = DVTInstrumentsUtilities_FeatureFlag_Source_userDefault;
        }
      }

      else
      {

        memset(v43, 0, sizeof(v43));
        sub_2480ADB64(v43);
        v26 = DVTInstrumentsUtilities_FeatureFlag_Source_defaultValue;
        value = v18;
      }
    }

    object = v39;
  }

  else
  {
    value = override.value;
    v26 = DVTInstrumentsUtilities_FeatureFlag_Source_override;
  }

  v36 = v41;
  retstr->name._countAndFlagsBits = v40;
  retstr->name._object = v36;
  retstr->key._countAndFlagsBits = v17;
  retstr->key._object = v8;
  retstr->description.value._countAndFlagsBits = countAndFlagsBits;
  retstr->description.value._object = object;
  retstr->defaultValue = v18;
  retstr->source = v26;
  retstr->_isEnabled = value;
}

uint64_t sub_2480ACD58(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2480ACDA0()
{
  result = qword_27EE865A8;
  if (!qword_27EE865A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865A8);
  }

  return result;
}

unint64_t sub_2480ACDF4()
{
  result = qword_27EE865B0;
  if (!qword_27EE865B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865B0);
  }

  return result;
}

unint64_t sub_2480ACE48()
{
  result = qword_27EE865B8;
  if (!qword_27EE865B8)
  {
    sub_2480ACEAC(&qword_27EE865A0, &qword_2480B94E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865B8);
  }

  return result;
}

uint64_t sub_2480ACEAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t FeatureFlag.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 49);
  sub_2480B4798();
  sub_2480B4798();
  sub_2480B4978();
  if (v2)
  {
    sub_2480B4798();
  }

  sub_2480B4978();
  MEMORY[0x24C1C51C0](v3);
  return sub_2480B4978();
}

uint64_t FeatureFlag.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 49);
  sub_2480B4958();
  sub_2480B4798();
  sub_2480B4798();
  sub_2480B4978();
  if (v1)
  {
    sub_2480B4798();
  }

  sub_2480B4978();
  MEMORY[0x24C1C51C0](v2);
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t sub_2480AD080@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_2480AD08C()
{
  sub_2480B4958();
  FeatureFlag.hash(into:)(v1);
  return sub_2480B4988();
}

uint64_t sub_2480AD0D0(uint64_t a1)
{
  sub_2480B4958();
  FeatureFlag.hash(into:)(v2);
  return sub_2480B4988();
}

void sub_2480AD110()
{
  v0 = sub_2480ACD58(&qword_27EE865A0, &qword_2480B94E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23[-v2];
  v27 = 0xD000000000000014;
  v28 = 0x80000002480BF150;
  sub_2480B46E8();
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_2480ACDA0();
  sub_2480ACDF4();
  v22 = sub_2480ACE48();
  sub_2480B48B8();
  (*(v1 + 8))(v3, v0);
  v27 = 21080;
  v28 = 0xE200000000000000;
  MEMORY[0x24C1C5020](*&v24[0], *(&v24[0] + 1));

  v5 = v27;
  v4 = v28;
  v6 = objc_opt_self();

  v7 = [v6 processInfo];
  v8 = [v7 environment];

  v9 = sub_2480B46F8();
  if (*(v9 + 16) && (sub_2480ADAEC(v5, v4), (v10 & 1) != 0))
  {

    v11 = sub_2480B4748();

    v12 = [v11 BOOLValue];

    v13 = 3;
  }

  else
  {

    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    v16 = sub_2480B4748();
    v17 = [v15 objectForKey_];

    if (v17)
    {
      sub_2480B48F8();
      swift_unknownObjectRelease();
      sub_2480ADB64(v24);
      v18 = [v14 standardUserDefaults];
      v19 = sub_2480B4748();
      v12 = [v18 BOOLForKey_];

      v20 = sub_2480B4908();
      *&v24[0] = 45;
      *(&v24[0] + 1) = 0xE100000000000000;
      MEMORY[0x24C1C5020](v5, v4);

      MEMORY[0x28223BE20](v21);
      v22 = v24;
      LOBYTE(v19) = sub_2480ADBCC(sub_2480AE228, &v23[-32], v20);

      if (v19)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {

      memset(v24, 0, sizeof(v24));
      sub_2480ADB64(v24);
      v13 = 0;
      v12 = 1;
    }
  }

  *&xmmword_27EE86530 = 0xD000000000000014;
  *(&xmmword_27EE86530 + 1) = 0x80000002480BF150;
  qword_27EE86540 = v5;
  unk_27EE86548 = v4;
  *&xmmword_27EE86550 = 0xD00000000000007FLL;
  *(&xmmword_27EE86550 + 1) = 0x80000002480BF170;
  byte_27EE86560 = 1;
  byte_27EE86561 = v13;
  byte_27EE86562 = v12;
}

uint64_t static FeatureFlag.runAsAppleInternal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE864F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_27EE86540;
  v7[0] = xmmword_27EE86530;
  v7[1] = *&qword_27EE86540;
  v2 = xmmword_27EE86550;
  v8[0] = xmmword_27EE86550;
  v3 = *(&xmmword_27EE86550 + 15);
  *(v8 + 15) = *(&xmmword_27EE86550 + 15);
  *a1 = xmmword_27EE86530;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 47) = v3;
  return sub_2480ADE9C(v7, v6);
}

void sub_2480AD600()
{
  v0 = sub_2480ACD58(&qword_27EE865A0, &qword_2480B94E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23[-v2];
  v27 = 0xD000000000000019;
  v28 = 0x80000002480BF1F0;
  sub_2480B46E8();
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_2480ACDA0();
  sub_2480ACDF4();
  v22 = sub_2480ACE48();
  sub_2480B48B8();
  (*(v1 + 8))(v3, v0);
  v27 = 21080;
  v28 = 0xE200000000000000;
  MEMORY[0x24C1C5020](*&v24[0], *(&v24[0] + 1));

  v5 = v27;
  v4 = v28;
  v6 = objc_opt_self();

  v7 = [v6 processInfo];
  v8 = [v7 environment];

  v9 = sub_2480B46F8();
  if (*(v9 + 16) && (sub_2480ADAEC(v5, v4), (v10 & 1) != 0))
  {

    v11 = sub_2480B4748();

    v12 = [v11 BOOLValue];

    v13 = 3;
  }

  else
  {

    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    v16 = sub_2480B4748();
    v17 = [v15 objectForKey_];

    if (v17)
    {
      sub_2480B48F8();
      swift_unknownObjectRelease();
      sub_2480ADB64(v24);
      v18 = [v14 standardUserDefaults];
      v19 = sub_2480B4748();
      v12 = [v18 BOOLForKey_];

      v20 = sub_2480B4908();
      *&v24[0] = 45;
      *(&v24[0] + 1) = 0xE100000000000000;
      MEMORY[0x24C1C5020](v5, v4);

      MEMORY[0x28223BE20](v21);
      v22 = v24;
      LOBYTE(v19) = sub_2480ADBCC(sub_2480AE228, &v23[-32], v20);

      if (v19)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {

      memset(v24, 0, sizeof(v24));
      sub_2480ADB64(v24);
      v13 = 0;
      v12 = 0;
    }
  }

  *&xmmword_27EE86568 = 0xD000000000000019;
  *(&xmmword_27EE86568 + 1) = 0x80000002480BF1F0;
  qword_27EE86578 = v5;
  unk_27EE86580 = v4;
  *&xmmword_27EE86588 = 0xD000000000000070;
  *(&xmmword_27EE86588 + 1) = 0x80000002480BF210;
  byte_27EE86598 = 0;
  byte_27EE86599 = v13;
  byte_27EE8659A = v12;
}

uint64_t static FeatureFlag.internalSignposts.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE864F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_27EE86578;
  v7[0] = xmmword_27EE86568;
  v7[1] = *&qword_27EE86578;
  v2 = xmmword_27EE86588;
  v8[0] = xmmword_27EE86588;
  v3 = *(&xmmword_27EE86588 + 15);
  *(v8 + 15) = *(&xmmword_27EE86588 + 15);
  *a1 = xmmword_27EE86568;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 47) = v3;
  return sub_2480ADE9C(v7, v6);
}

unint64_t sub_2480ADAEC(uint64_t a1, uint64_t a2)
{
  sub_2480B4958();
  sub_2480B4798();
  v4 = sub_2480B4988();

  return sub_2480ADC78(a1, a2, v4);
}

uint64_t sub_2480ADB64(uint64_t a1)
{
  v2 = sub_2480ACD58(&qword_27EE865C0, &qword_2480B94E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2480ADBCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_2480ADC78(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2480B4948())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s23DVTInstrumentsUtilities11FeatureFlagV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 49);
  v17 = *(a1 + 49);
  v14 = *(a2 + 50);
  v15 = *(a1 + 50);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2480B4948() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_2480B4948() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!v9)
  {
    return 0;
  }

  if (v3 == v10 && v5 == v9)
  {
    result = 0;
    if (v6 != v11)
    {
      return result;
    }

    goto LABEL_18;
  }

  v13 = sub_2480B4948();
  result = 0;
  if ((v13 & 1) == 0)
  {
    return result;
  }

LABEL_17:
  if (v6 != v11)
  {
    return result;
  }

LABEL_18:
  if (v17 == v16)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

unint64_t sub_2480ADED8()
{
  result = qword_27EE865C8;
  if (!qword_27EE865C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865C8);
  }

  return result;
}

unint64_t sub_2480ADF3C()
{
  result = qword_27EE865D0;
  if (!qword_27EE865D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865D0);
  }

  return result;
}

__n128 sub_2480ADF90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2480ADFAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_2480ADFF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2480AE1C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2480B4948() & 1;
  }
}

uint64_t sub_2480AE244()
{
  if (qword_27EE86518 != -1)
  {
    swift_once();
  }

  v0 = off_27EE86600;
  if (*(off_27EE86600 + 2) && (v1 = sub_2480ADAEC(0x49656C7070417349, 0xEF6C616E7265746ELL), (v2 & 1) != 0))
  {
    sub_2480AEC74(v0[7] + 32 * v1, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_2480ACD58(&qword_27EE86618, &qword_2480B97A0);
  result = swift_dynamicCast();
  byte_27EE865D8 = result & v4;
  return result;
}

uint64_t sub_2480AE32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EE86518 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a1 = v8;
    a2 = v9;
  }

  v4 = off_27EE86600;
  if (*(off_27EE86600 + 2) && (v5 = sub_2480ADAEC(a1, a2), (v6 & 1) != 0))
  {
    sub_2480AEC74(v4[7] + 32 * v5, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_2480ACD58(&qword_27EE86618, &qword_2480B97A0);
  sub_2480ACD58(&qword_27EE86620, &qword_2480B97A8);
  if (swift_dynamicCast())
  {
    return v10;
  }

  return a3;
}

uint64_t static XRInternalizedSettingsStore.appleInternal.getter()
{
  if (qword_27EE86500 != -1)
  {
    swift_once();
  }

  return byte_27EE865D8;
}

uint64_t sub_2480AE480()
{
  result = sub_2480AE4F4(0x53736C6F626D7953, 0xEC00000074656568, 0xD000000000000012, 0x80000002480BF2B0, 0xD000000000000086, 0x80000002480BF2D0);
  qword_27EE865E0 = result;
  *algn_27EE865E8 = v1;
  return result;
}

uint64_t sub_2480AE4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EE86518 != -1)
  {
    v15 = a1;
    v16 = a2;
    swift_once();
    a1 = v15;
    a2 = v16;
  }

  v9 = off_27EE86600;
  if (*(off_27EE86600 + 2))
  {
    v10 = sub_2480ADAEC(a1, a2);
    if (v11)
    {
      sub_2480AEC74(v9[7] + 32 * v10, v18);
      sub_2480ACD58(&qword_27EE86628, &qword_2480B97B0);
      sub_2480ACD58(&qword_27EE86620, &qword_2480B97A8);
      if (swift_dynamicCast())
      {
        if (*(v17 + 16))
        {
          v12 = sub_2480ADAEC(a3, a4);
          if (v13)
          {
            sub_2480AEC74(*(v17 + 56) + 32 * v12, v18);

            goto LABEL_11;
          }
        }
      }
    }
  }

  memset(v18, 0, sizeof(v18));
LABEL_11:
  sub_2480ACD58(&qword_27EE865C0, &qword_2480B94E8);
  if (swift_dynamicCast())
  {
    return v17;
  }

  return a5;
}

uint64_t static XRInternalizedSettingsStore.symbolsPermissionError_iOS.getter()
{
  if (qword_27EE86508 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE865E0;

  return v0;
}

uint64_t sub_2480AE6E8()
{
  v0 = sub_2480AEB64(MEMORY[0x277D84F90]);
  v1 = sub_2480AE32C(0xD00000000000001ALL, 0x80000002480B9750, v0);

  return sub_2480AE75C(v1, &qword_27EE865F0);
}

uint64_t sub_2480AE75C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_2480ADAEC(0x65446E69616D6F44, 0xEE0073746C756166);
    if (v5)
    {
      sub_2480AEC74(*(a1 + 56) + 32 * v4, v10);
      sub_2480ACD58(&qword_27EE86608, "Rz");
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v6 = sub_2480ADAEC(0xD000000000000010, 0x80000002480BF290), (v7 & 1) != 0))
        {
          sub_2480AEC74(*(a1 + 56) + 32 * v6, v10);

          sub_2480ACD58(&qword_27EE86610, "Xz");
          result = swift_dynamicCast();
          if (result)
          {
            *a2 = v9;
            a2[1] = v9;
            return result;
          }
        }

        else
        {
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t static XRInternalizedSettingsStore.symbolicationModernization.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EE86510 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27EE865F0;
  v3 = *algn_27EE865F8;
  *a1 = qword_27EE865F0;
  a1[1] = v3;

  return sub_2480AE918(v2, v3);
}

uint64_t sub_2480AE918(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XRInternalizedSettingsStore(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XRInternalizedSettingsStore(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2480AEA50(uint64_t *a1, int a2)
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

uint64_t sub_2480AEA98(uint64_t result, int a2, int a3)
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

void sub_2480AEAE4()
{
  v0 = [objc_opt_self() internalizedSettings];
  sub_2480ACD58(&qword_27EE86628, &qword_2480B97B0);
  v1 = sub_2480B46F8();

  off_27EE86600 = v1;
}

unint64_t sub_2480AEB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2480ACD58(&qword_27EE86630, &qword_2480B97B8);
    v3 = sub_2480B4918();
    v4 = a1 + 32;

    while (1)
    {
      sub_2480AECD0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2480ADAEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2480AED40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_2480AEC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2480AECD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480ACD58(&qword_27EE86638, &qword_2480B97C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2480AED40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

BOOL static XRTimeRange.== infix(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - 1;
  v5 = -a2 < a1 || a2 == 0;
  v6 = v4 + a2;
  if (v5)
  {
    v6 = -1;
  }

  v7 = -a4 < a1 || a4 == 0;
  v8 = v4 + a4;
  if (v7)
  {
    v8 = -1;
  }

  v9 = v6 == v8;
  return a1 == a3 && v9;
}

BOOL sub_2480AED90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 > -a2 || a2 == 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = a2 + a1 - 1;
  }

  if (a1 > -a4 || a4 == 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = a4 + a1 - 1;
  }

  v8 = v5 == v7;
  return a1 == a3 && v8;
}

uint64_t XRTimeRange.actualStart.getter(uint64_t result)
{
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t XRTimeRange.actualLength.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v2 = a2;
  }

  if (a1 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t Duration.truncatedNanoseconds.getter(uint64_t a1, uint64_t a2)
{
  result = sub_2480B49B8();
  v3 = 1000000000 * result;
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2480B49B8();
  result = v3 + v4 / 1000000000;
  if (__OFADD__(v3, v4 / 1000000000))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t StringProtocol.kebabCaseToWords<>()(uint64_t a1, uint64_t a2)
{
  v4[0] = 45;
  v4[1] = 0xE100000000000000;
  return sub_2480B111C(v4, 0x7FFFFFFFFFFFFFFFLL, 1, v2, a1, *(*(a2 + 8) + 8), MEMORY[0x277D835C8]);
}

uint64_t sub_2480AEF2C(uint64_t a1, unint64_t a2)
{
  v62 = sub_2480B4638();
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[0] = a1;
  v67[1] = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2480B9800;
    v17 = sub_2480B4818();
    result = v16;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    *(v16 + 48) = v19;
    *(v16 + 56) = v20;
    return result;
  }

  v57 = a2;
  result = sub_2480AFBA4(a1, a2);
  if (!v9)
  {
    __break(1u);
    return result;
  }

  v10 = sub_2480B4708();

  if (v10)
  {
    v63 = a1;
    v64 = v57;

    v11 = sub_2480B4808();
    v63 = 97;
    v64 = 0xE100000000000000;
    MEMORY[0x24C1C5020](v11);

    v12 = sub_2480AEF2C(v63, v64);

    result = v12;
    v13 = *(v12 + 16);
    if (v13)
    {
      sub_2480B0F50(v12, v12 + 32, 1, (2 * v13) | 1);
      v15 = v14;

      return v15;
    }

    return result;
  }

  v21 = v57;
  v22 = sub_2480B47A8();
  v23 = 7;
  if (((v21 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v23 = 11;
  }

  v59 = 4 * v7;
  if (4 * v7 < v22 >> 14)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    v60 = (v5 + 8);
    v5 = MEMORY[0x277D84F90];
    v10 = 15;
    v2 = (v23 | (v7 << 16));
    while (1)
    {
      v24 = a1;
      v63 = sub_2480B4818();
      v64 = v25;
      v65 = v26;
      v66 = v27;
      v28 = v61;
      sub_2480B4628();
      sub_2480B1234();
      v29 = sub_2480B48E8();
      v31 = v30;
      v32 = *v60;
      (*v60)(v28, v62);

      if (v31)
      {
        v50 = v10 >> 14;
        goto LABEL_31;
      }

      v58 = v32;
      if (v29 >> 14 < v10 >> 14)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2480B0AE8(0, *(v5 + 2) + 1, 1, v5);
      }

      v34 = *(v5 + 2);
      v33 = *(v5 + 3);
      if (v34 >= v33 >> 1)
      {
        v5 = sub_2480B0AE8((v33 > 1), v34 + 1, 1, v5);
      }

      *(v5 + 2) = v34 + 1;
      v35 = &v5[16 * v34];
      *(v35 + 4) = v10;
      *(v35 + 5) = v29;
      if (v59 < v29 >> 14)
      {
        goto LABEL_38;
      }

      v56 = v29 >> 14;
      v36 = v5;
      v5 = v2;
      a1 = v24;
      v2 = v57;
      v63 = sub_2480B4818();
      v64 = v37;
      v65 = v38;
      v66 = v39;
      v40 = v61;
      sub_2480B4618();
      v41 = sub_2480B48E8();
      v43 = v42;
      v10 = v44;
      v58(v40, v62);

      if (v10)
      {
        break;
      }

      if ((sub_2480B47A8() ^ v41) < 0x4000)
      {
        v2 = v5;
        v5 = v36;
      }

      else
      {
        v45 = sub_2480B47B8();
        if (v56 > v45 >> 14)
        {
          goto LABEL_40;
        }

        v2 = v5;
        v5 = v36;
        v47 = *(v36 + 2);
        v46 = *(v36 + 3);
        if (v47 >= v46 >> 1)
        {
          v49 = v45;
          v5 = sub_2480B0AE8((v46 > 1), v47 + 1, 1, v5);
          v45 = v49;
        }

        *(v5 + 2) = v47 + 1;
        v48 = &v5[16 * v47];
        *(v48 + 4) = v29;
        *(v48 + 5) = v45;
        v29 = v45;
      }

      v10 = v29;
      if (v59 < v43 >> 14)
      {
        goto LABEL_39;
      }
    }

    v10 = v29;
    v2 = v5;
    v5 = v36;
    v50 = v56;
LABEL_31:
    if (v59 < v50)
    {
      goto LABEL_42;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_33;
    }
  }

  isUniquelyReferenced_nonNull_native = sub_2480B0AE8(0, *(v5 + 2) + 1, 1, v5);
  v5 = isUniquelyReferenced_nonNull_native;
LABEL_33:
  v53 = *(v5 + 2);
  v52 = *(v5 + 3);
  if (v53 >= v52 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_2480B0AE8((v52 > 1), v53 + 1, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
  }

  *(v5 + 2) = v53 + 1;
  v54 = &v5[16 * v53];
  *(v54 + 4) = v10;
  *(v54 + 5) = v2;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *(&v56 - 2) = v67;
  v55 = sub_2480AFBEC(sub_2480B15A4, (&v56 - 4), v5);

  return v55;
}

void *StringProtocol.camelCaseToWords<>()(uint64_t a1, uint64_t a2)
{
  v59 = sub_2480B4638();
  v5 = *(v59 - 8);
  v6 = MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a2 + 8);
  v11 = *(v49 + 8);
  v12 = a1;
  if (sub_2480B4858())
  {
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2480B9800;
    sub_2480B4898();
    return v13;
  }

  v48 = a2;
  v53 = v11;
  result = sub_2480B4878();
  if (*(&v63 + 1))
  {
    v15 = sub_2480B4708();

    if (v15)
    {
      (*(v8 + 16))(v10, v2, a1);
      v16 = sub_2480B4808();
      *&v63 = 97;
      *(&v63 + 1) = 0xE100000000000000;
      MEMORY[0x24C1C5020](v16);

      v13 = sub_2480AEF2C(v63, *(&v63 + 1));

      v17 = *(v13 + 16);
      if (v17)
      {
        sub_2480B0F50(v13, v13 + 32, 1, (2 * v17) | 1);
        v19 = v18;

        return v19;
      }

      return v13;
    }

    sub_2480B4838();
    v20 = v66;
    *&v60 = v66;
    sub_2480B4848();
    v21 = v63;
    sub_2480B4868();
    v22 = v60;
    v23 = v60 >> 14;
    if (v60 >> 14 < v21 >> 14)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    else
    {
      v57 = (v5 + 8);
      v10 = MEMORY[0x277D84F90];
      v51 = v60;
      v52 = v12;
      v50 = v60 >> 14;
      while (1)
      {
        *&v60 = v21;
        *(&v60 + 1) = v22;
        v21 = v2;
        sub_2480B48A8();
        v60 = v63;
        v61 = v64;
        v62 = v65;
        v24 = v58;
        sub_2480B4628();
        v25 = sub_2480B1234();
        v26 = sub_2480B48E8();
        v28 = v27;
        v56 = *v57;
        v56(v24, v59);

        if (v28)
        {
          v29 = v20 >> 14;
          goto LABEL_26;
        }

        v55 = v25;
        v29 = v26 >> 14;
        if (v26 >> 14 < v20 >> 14)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2480B0AE8(0, *(v10 + 2) + 1, 1, v10);
        }

        v31 = *(v10 + 2);
        v30 = *(v10 + 3);
        if (v31 >= v30 >> 1)
        {
          v10 = sub_2480B0AE8((v30 > 1), v31 + 1, 1, v10);
        }

        *(v10 + 2) = v31 + 1;
        v32 = &v10[16 * v31];
        *(v32 + 4) = v20;
        *(v32 + 5) = v26;
        if (v23 < v29)
        {
          goto LABEL_33;
        }

        v54 = v10;
        *&v60 = v26;
        *(&v60 + 1) = v22;
        v22 = v21;
        sub_2480B48A8();
        v20 = v65;
        v60 = v63;
        v61 = v64;
        v62 = v65;
        v33 = v58;
        sub_2480B4618();
        v34 = sub_2480B48E8();
        v21 = v35;
        v37 = v36;
        v56(v33, v59);

        if (v37)
        {
          break;
        }

        *&v60 = v26;
        sub_2480B4848();
        if ((v63 ^ v34) < 0x4000)
        {
          v2 = v22;
          v23 = v50;
          v22 = v51;
          v10 = v54;
        }

        else
        {
          *&v60 = v34;
          v2 = v22;
          sub_2480B4718();
          v38 = v63;
          v10 = v54;
          if (v26 >> 14 > v63 >> 14)
          {
            goto LABEL_35;
          }

          v40 = *(v54 + 2);
          v39 = *(v54 + 3);
          if (v40 >= v39 >> 1)
          {
            v10 = sub_2480B0AE8((v39 > 1), v40 + 1, 1, v54);
          }

          v23 = v50;
          v22 = v51;
          *(v10 + 2) = v40 + 1;
          v41 = &v10[16 * v40];
          *(v41 + 4) = v26;
          *(v41 + 5) = v38;
          v26 = v38;
        }

        v20 = v26;
        if (v23 < v21 >> 14)
        {
          goto LABEL_34;
        }
      }

      v20 = v26;
      v21 = v22;
      v23 = v50;
      v22 = v51;
      v10 = v54;
LABEL_26:
      if (v23 < v29)
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }
    }

    isUniquelyReferenced_nonNull_native = sub_2480B0AE8(0, *(v10 + 2) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
LABEL_28:
    v44 = *(v10 + 2);
    v43 = *(v10 + 3);
    if (v44 >= v43 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2480B0AE8((v43 > 1), v44 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 2) = v44 + 1;
    v45 = &v10[16 * v44];
    *(v45 + 4) = v20;
    *(v45 + 5) = v22;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v46 = v48;
    *(&v47 - 4) = v52;
    *(&v47 - 3) = v46;
    *(&v47 - 2) = v21;
    v13 = sub_2480AFBEC(sub_2480B1288, (&v47 - 6), v10);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480AFBA4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2480B47E8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2480AFBEC(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2480B0CF8(0, v4, 0);
  v5 = v21;
  for (i = (a3 + 32); ; ++i)
  {
    v17 = *i;
    a1(&v18, &v17);
    if (v3)
    {
      break;
    }

    v9 = v18;
    v10 = v19;
    v11 = v20;
    v21 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      v16 = v18;
      sub_2480B0CF8((v12 > 1), v13 + 1, 1);
      v9 = v16;
      v5 = v21;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 32 * v13;
    *(v14 + 32) = v9;
    *(v14 + 48) = v10;
    *(v14 + 56) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t String.pluralized.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_2480B4678();
  MEMORY[0x28223BE20](v3);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2480ACD58(&qword_27EE86650, &qword_2480B9818);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v40 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = v36 - v8;
  v9 = sub_2480B46D8();
  MEMORY[0x28223BE20](v9 - 8);
  v38 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2480B4698();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v39 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = sub_2480ACD58(&qword_27EE86658, &qword_2480B9820);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v36 - v17;
  v19 = sub_2480B45F8();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_2480B4658();
  v37 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  if (sub_2480B4768() == 1868983913 && v24 == 0xE400000000000000)
  {
  }

  else
  {
    v25 = sub_2480B4948();

    if ((v25 & 1) == 0)
    {
      sub_2480B45E8();
      v26 = *MEMORY[0x277CC8648];
      v27 = sub_2480B45C8();
      v28 = *(v27 - 8);
      v36[1] = v3;
      v29 = v28;
      (*(v28 + 104))(v18, v26, v27);
      (*(v29 + 56))(v18, 0, 1, v27);
      sub_2480B45D8();
      sub_2480B4648();

      sub_2480B46C8();
      sub_2480B46A8();
      v30 = v37;
      v31 = v41;
      (*(v37 + 16))(v41, v22, v20);
      (*(v30 + 56))(v31, 0, 1, v20);
      sub_2480B12D4(v31, v40);
      sub_2480B1344();
      sub_2480B46B8();
      sub_2480B1398(v31);
      v32 = v39;
      sub_2480B4688();
      sub_2480B4668();
      v33 = v43;
      v34 = *(v42 + 8);
      v34(v32, v43);
      sub_2480B1400();
      v23 = sub_2480B47F8();
      v34(v15, v33);
      (*(v30 + 8))(v22, v20);
      return v23;
    }
  }

  return v23;
}

unint64_t Array<A>.toTitleCase()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    sub_2480B0D18(0, v1, 0);
    v2 = v33;
    v31 = v1;
    sub_2480ACD58(&qword_27EE86670, &qword_2480B9828);
    v3 = 0;
    while (1)
    {
      v32 = v2;
      v4 = sub_2480B4918();

      v5 = &unk_285A38240;
      v6 = 11;
      do
      {
        v8 = *(v5 - 3);
        v7 = *(v5 - 2);
        v10 = *(v5 - 1);
        v9 = *v5;

        result = sub_2480ADAEC(v8, v7);
        if (v12)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v13 = (v4[6] + 16 * result);
        *v13 = v8;
        v13[1] = v7;
        v14 = (v4[7] + 16 * result);
        *v14 = v10;
        v14[1] = v9;
        v15 = v4[2];
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          goto LABEL_18;
        }

        v4[2] = v17;
        v5 += 4;
        --v6;
      }

      while (v6);

      sub_2480ACD58(&qword_27EE86678, &qword_2480B9830);
      swift_arrayDestroy();
      v18 = sub_2480B48C8();
      if (!v4[2])
      {
        break;
      }

      v20 = sub_2480ADAEC(v18, v19);
      v22 = v21;

      if ((v22 & 1) == 0)
      {

        goto LABEL_12;
      }

      v23 = (v4[7] + 16 * v20);
      v24 = *v23;
      v25 = v23[1];

LABEL_13:
      v2 = v32;
      v28 = *(v32 + 16);
      v27 = *(v32 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2480B0D18((v27 > 1), v28 + 1, 1);
        v2 = v32;
      }

      ++v3;
      *(v2 + 16) = v28 + 1;
      v29 = v2 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v25;
      if (v3 == v31)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    sub_2480B1234();
    v24 = sub_2480B48D8();
    v25 = v26;

    goto LABEL_13;
  }

LABEL_16:
  sub_2480ACD58(&qword_27EE86610, "Xz");
  sub_2480B1458(&qword_27EE86680, &qword_27EE86610, "Xz", MEMORY[0x277D83958]);
  v30 = sub_2480B4728();

  return v30;
}

uint64_t Array<A>.toKebabCase()()
{
  sub_2480ACD58(&qword_27EE86688, &qword_2480B9838);
  sub_2480B1458(&qword_27EE86690, &qword_27EE86688, &qword_2480B9838, MEMORY[0x277D83970]);
  sub_2480B1234();
  sub_2480B4828();
  v0 = sub_2480B4768();

  return v0;
}

char *Array<A>.pluralizeLast()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = (a1 + 32 * v2);
    v5 = *v4;
    v6 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2480B9800;

    v10 = MEMORY[0x24C1C4FE0](v5, v6, v8, v7);
    String.pluralized.getter(v10, v11);

    v12 = sub_2480B4818();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    *(v9 + 48) = v16;
    *(v9 + 56) = v18;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v20 = *(v9 + 16);
  v21 = __OFADD__(v20, v3);
  v22 = v20 + v3;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v24 = sub_2480B0BEC(0, v22 & ~(v22 >> 63), 0, MEMORY[0x277D84F90]);
    v23 = swift_unknownObjectRetain();
    sub_2480B14A0(v23, a1 + 32, 0, (2 * v3) | 1);
    swift_unknownObjectRelease();
    sub_2480B1028(v9);
    swift_unknownObjectRelease();
    return v24;
  }

  return result;
}

unint64_t sub_2480B0814(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v30 = *(a2 + 16);
  while (1)
  {
    ++v3;
    if (a1)
    {
      break;
    }

    v26 = sub_2480B48C8();
    v28 = v27;

    MEMORY[0x24C1C5020](v26, v28);
LABEL_16:

    if (v3 == v2)
    {
      return 0;
    }

    a1 = 1;
  }

  v31 = v3;
  sub_2480ACD58(&qword_27EE86670, &qword_2480B9828);
  v4 = sub_2480B4918();

  v5 = &unk_285A38240;
  v6 = 11;
  while (1)
  {
    v8 = *(v5 - 3);
    v7 = *(v5 - 2);
    v10 = *(v5 - 1);
    v9 = *v5;

    result = sub_2480ADAEC(v8, v7);
    if (v12)
    {
      break;
    }

    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v4[6] + 16 * result);
    *v13 = v8;
    v13[1] = v7;
    v14 = (v4[7] + 16 * result);
    *v14 = v10;
    v14[1] = v9;
    v15 = v4[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_21;
    }

    v4[2] = v17;
    v5 += 4;
    if (!--v6)
    {

      sub_2480ACD58(&qword_27EE86678, &qword_2480B9830);
      swift_arrayDestroy();
      v18 = sub_2480B48C8();
      if (v4[2])
      {
        v20 = sub_2480ADAEC(v18, v19);
        v22 = v21;

        v3 = v31;
        if (v22)
        {
          v23 = (v4[7] + 16 * v20);
          v24 = *v23;
          v25 = v23[1];

LABEL_15:
          v2 = v30;
          MEMORY[0x24C1C5020](v24, v25);
          goto LABEL_16;
        }
      }

      else
      {

        v3 = v31;
      }

      sub_2480B1234();
      v24 = sub_2480B48D8();
      v25 = v29;

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_2480B0AE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE866A0, &qword_2480B9850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2480B0BEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2480B0CF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480B0D38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2480B0D18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480B0E44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2480B0D38(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2480B0E44(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE86698, &qword_2480B9848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2480B0F50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_2480B1028(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2480B0BEC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2480B111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x28223BE20](a1);
  (*(v12 + 16))(&v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v13, v14);
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a1;
  return sub_2480B4888();
}

unint64_t sub_2480B1234()
{
  result = qword_27EE86640;
  if (!qword_27EE86640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE86640);
  }

  return result;
}

uint64_t sub_2480B12D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480ACD58(&qword_27EE86650, &qword_2480B9818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2480B1344()
{
  result = qword_27EE86660;
  if (!qword_27EE86660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE86660);
  }

  return result;
}

uint64_t sub_2480B1398(uint64_t a1)
{
  v2 = sub_2480ACD58(&qword_27EE86650, &qword_2480B9818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2480B1400()
{
  result = qword_27EE86668;
  if (!qword_27EE86668)
  {
    sub_2480B4678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE86668);
  }

  return result;
}

uint64_t sub_2480B1458(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2480ACEAC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2480B14A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2480B0BEC(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = *(v7 + 2);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 2) = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_2480B15A4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2480B4818();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t XREngineeringTypeID.attributes.getter(unsigned __int16 a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = XR_ENGINEERING_ATTRIBUTES_BY_ETYPE;
  memset(&v2[1], 0, 32);
  v2[3] = unk_2480B8A78;
  v2[4] = xmmword_2480B8A88;
  v2[5] = unk_2480B8A98;
  v2[6] = xmmword_2480B8AA8;
  v2[7] = unk_2480B8AB8;
  v2[8] = xmmword_2480B8AC8;
  v2[9] = unk_2480B8AD8;
  v2[10] = xmmword_2480B8AE8;
  v2[11] = unk_2480B8AF8;
  v2[12] = xmmword_2480B8B08;
  v2[13] = unk_2480B8B18;
  v2[14] = xmmword_2480B8B28;
  v2[15] = unk_2480B8B38;
  v2[16] = xmmword_2480B8B48;
  v2[17] = unk_2480B8B58;
  v2[18] = xmmword_2480B8B68;
  v2[19] = unk_2480B8B78;
  v2[20] = xmmword_2480B8B88;
  v2[21] = unk_2480B8B98;
  v2[22] = xmmword_2480B8BA8;
  v2[23] = unk_2480B8BB8;
  v2[24] = xmmword_2480B8BC8;
  v2[25] = unk_2480B8BD8;
  v2[26] = xmmword_2480B8BE8;
  v2[27] = unk_2480B8BF8;
  v2[28] = xmmword_2480B8C08;
  v2[29] = unk_2480B8C18;
  v2[30] = xmmword_2480B8C28;
  v2[31] = unk_2480B8C38;
  v2[32] = xmmword_2480B8C48;
  v2[33] = unk_2480B8C58;
  v2[34] = xmmword_2480B8C68;
  v2[35] = unk_2480B8C78;
  v2[36] = xmmword_2480B8C88;
  v2[37] = unk_2480B8C98;
  v2[38] = xmmword_2480B8CA8;
  v2[39] = unk_2480B8CB8;
  v2[40] = xmmword_2480B8CC8;
  v2[41] = unk_2480B8CD8;
  v2[42] = xmmword_2480B8CE8;
  v2[43] = unk_2480B8CF8;
  v2[44] = xmmword_2480B8D08;
  v2[45] = unk_2480B8D18;
  v2[46] = xmmword_2480B8D28;
  v2[47] = unk_2480B8D38;
  v2[48] = xmmword_2480B8D48;
  v2[49] = unk_2480B8D58;
  v2[50] = xmmword_2480B8D68;
  v2[51] = unk_2480B8D78;
  v2[52] = xmmword_2480B8D88;
  v2[53] = unk_2480B8D98;
  v2[54] = xmmword_2480B8DA8;
  v2[55] = unk_2480B8DB8;
  v2[56] = xmmword_2480B8DC8;
  v2[57] = unk_2480B8DD8;
  v2[58] = xmmword_2480B8DE8;
  v2[59] = unk_2480B8DF8;
  v2[60] = xmmword_2480B8E08;
  v2[61] = unk_2480B8E18;
  v2[62] = xmmword_2480B8E28;
  v2[63] = unk_2480B8E38;
  v2[64] = xmmword_2480B8E48;
  v2[65] = xmmword_2480B8E58;
  v2[66] = xmmword_2480B8E68;
  v2[67] = xmmword_2480B8E78;
  v2[68] = xmmword_2480B8E88;
  v2[69] = xmmword_2480B8E98;
  v2[70] = xmmword_2480B8EA8;
  v2[71] = xmmword_2480B8EB8;
  v2[72] = xmmword_2480B8EC8;
  v2[73] = xmmword_2480B8ED8;
  v2[74] = xmmword_2480B8EE8;
  v2[75] = xmmword_2480B8EF8;
  v2[76] = xmmword_2480B8F08;
  v2[77] = xmmword_2480B8F18;
  v2[78] = xmmword_2480B8F28;
  v2[79] = xmmword_2480B8F38;
  v2[80] = xmmword_2480B8F48;
  v2[81] = xmmword_2480B8F58;
  v2[82] = xmmword_2480B8F68;
  v2[83] = xmmword_2480B8F78;
  v2[84] = xmmword_2480B8F88;
  v2[85] = xmmword_2480B8F98;
  v2[86] = xmmword_2480B8FA8;
  v2[87] = xmmword_2480B8FB8;
  v2[88] = xmmword_2480B8FC8;
  v2[89] = xmmword_2480B8FD8;
  v2[90] = xmmword_2480B8FE8;
  v2[91] = xmmword_2480B8FF8;
  v2[92] = xmmword_2480B9008;
  v2[93] = xmmword_2480B9018;
  v2[94] = xmmword_2480B9028;
  v2[95] = xmmword_2480B9038;
  v2[96] = xmmword_2480B9048;
  v2[97] = xmmword_2480B9058;
  v2[98] = xmmword_2480B9068;
  v2[99] = xmmword_2480B9078;
  v2[100] = xmmword_2480B9088;
  v2[101] = xmmword_2480B9098;
  v2[102] = xmmword_2480B90A8;
  v2[103] = xmmword_2480B90B8;
  v2[104] = xmmword_2480B90C8;
  v2[105] = xmmword_2480B90D8;
  v2[106] = xmmword_2480B90E8;
  v2[107] = xmmword_2480B90F8;
  v2[108] = xmmword_2480B9108;
  v2[109] = xmmword_2480B9118;
  v2[110] = xmmword_2480B9128;
  v2[111] = xmmword_2480B9138;
  v2[112] = xmmword_2480B9148;
  v2[113] = xmmword_2480B9158;
  v2[114] = xmmword_2480B9168;
  v2[115] = xmmword_2480B9178;
  v2[116] = xmmword_2480B9188;
  v2[117] = xmmword_2480B9198;
  v2[118] = xmmword_2480B91A8;
  v2[119] = xmmword_2480B91B8;
  v2[120] = xmmword_2480B91C8;
  v2[121] = xmmword_2480B91D8;
  v2[122] = xmmword_2480B91E8;
  v2[123] = xmmword_2480B91F8;
  v2[124] = xmmword_2480B9208;
  v2[125] = xmmword_2480B9218;
  v2[126] = xmmword_2480B9228;
  v2[127] = xmmword_2480B9238;
  v2[128] = xmmword_2480B9248;
  v2[129] = xmmword_2480B9258;
  v2[130] = xmmword_2480B9268;
  v2[131] = xmmword_2480B9278;
  v2[132] = xmmword_2480B9288;
  v2[133] = xmmword_2480B9298;
  v2[134] = xmmword_2480B92A8;
  v2[135] = xmmword_2480B92B8;
  v2[136] = xmmword_2480B92C8;
  v2[137] = xmmword_2480B92D8;
  v2[138] = xmmword_2480B92E8;
  v2[139] = xmmword_2480B92F8;
  return *(v2 + a1);
}

uint64_t XREngineeringTypeID.mnemonic.getter(unsigned __int16 a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = XR_ENGINEERING_MNEMONIC_BY_ETYPE;
  v4[1] = *&off_278EFA500;
  v4[2] = xmmword_278EFA510;
  v4[3] = *&off_278EFA520;
  v4[4] = xmmword_278EFA530;
  v4[5] = *&off_278EFA540;
  v4[6] = xmmword_278EFA550;
  v4[7] = *&off_278EFA560;
  v4[8] = xmmword_278EFA570;
  v4[9] = *&off_278EFA580;
  v4[10] = xmmword_278EFA590;
  v4[11] = *&off_278EFA5A0;
  v4[12] = xmmword_278EFA5B0;
  v4[13] = *&off_278EFA5C0;
  v4[14] = xmmword_278EFA5D0;
  v4[15] = *&off_278EFA5E0;
  v4[16] = xmmword_278EFA5F0;
  v4[17] = *&off_278EFA600;
  v4[18] = xmmword_278EFA610;
  v4[19] = *&off_278EFA620;
  v4[20] = xmmword_278EFA630;
  v4[21] = *&off_278EFA640;
  v4[22] = xmmword_278EFA650;
  v4[23] = *&off_278EFA660;
  v4[24] = xmmword_278EFA670;
  v4[25] = *&off_278EFA680;
  v4[26] = xmmword_278EFA690;
  v4[27] = *&off_278EFA6A0;
  v4[28] = xmmword_278EFA6B0;
  v4[29] = *&off_278EFA6C0;
  v4[30] = xmmword_278EFA6D0;
  v4[31] = *&off_278EFA6E0;
  v4[32] = xmmword_278EFA6F0;
  v4[33] = *&off_278EFA700;
  v4[34] = xmmword_278EFA710;
  v4[35] = *&off_278EFA720;
  v4[36] = xmmword_278EFA730;
  v4[37] = *&off_278EFA740;
  v4[38] = xmmword_278EFA750;
  v4[39] = *&off_278EFA760;
  v4[40] = xmmword_278EFA770;
  v4[41] = *&off_278EFA780;
  v4[42] = xmmword_278EFA790;
  v4[43] = *&off_278EFA7A0;
  v4[44] = xmmword_278EFA7B0;
  v4[45] = *&off_278EFA7C0;
  v4[46] = xmmword_278EFA7D0;
  v4[47] = *&off_278EFA7E0;
  v4[48] = xmmword_278EFA7F0;
  v4[49] = *&off_278EFA800;
  v4[50] = xmmword_278EFA810;
  v4[51] = *&off_278EFA820;
  v4[52] = xmmword_278EFA830;
  v4[53] = *&off_278EFA840;
  v4[54] = xmmword_278EFA850;
  v4[55] = *&off_278EFA860;
  v4[56] = xmmword_278EFA870;
  v4[57] = *&off_278EFA880;
  v4[58] = xmmword_278EFA890;
  v4[59] = *&off_278EFA8A0;
  v4[60] = xmmword_278EFA8B0;
  v4[61] = *&off_278EFA8C0;
  v4[62] = xmmword_278EFA8D0;
  v4[63] = *&off_278EFA8E0;
  v4[64] = xmmword_278EFA8F0;
  v4[65] = xmmword_278EFA900;
  v4[66] = xmmword_278EFA910;
  v4[67] = xmmword_278EFA920;
  v4[68] = xmmword_278EFA930;
  v4[69] = xmmword_278EFA940;
  v4[70] = xmmword_278EFA950;
  v4[71] = xmmword_278EFA960;
  v4[72] = xmmword_278EFA970;
  v4[73] = xmmword_278EFA980;
  v4[74] = xmmword_278EFA990;
  v4[75] = xmmword_278EFA9A0;
  v4[76] = xmmword_278EFA9B0;
  v4[77] = xmmword_278EFA9C0;
  v4[78] = xmmword_278EFA9D0;
  v4[79] = xmmword_278EFA9E0;
  v4[80] = xmmword_278EFA9F0;
  v4[81] = xmmword_278EFAA00;
  v4[82] = xmmword_278EFAA10;
  v4[83] = xmmword_278EFAA20;
  v4[84] = xmmword_278EFAA30;
  v4[85] = xmmword_278EFAA40;
  v4[86] = xmmword_278EFAA50;
  v4[87] = xmmword_278EFAA60;
  v4[88] = xmmword_278EFAA70;
  v4[89] = xmmword_278EFAA80;
  v4[90] = xmmword_278EFAA90;
  v4[91] = xmmword_278EFAAA0;
  v4[92] = xmmword_278EFAAB0;
  v4[93] = xmmword_278EFAAC0;
  v4[94] = xmmword_278EFAAD0;
  v4[95] = xmmword_278EFAAE0;
  v4[96] = xmmword_278EFAAF0;
  v4[97] = xmmword_278EFAB00;
  v4[98] = xmmword_278EFAB10;
  v4[99] = xmmword_278EFAB20;
  v4[100] = xmmword_278EFAB30;
  v4[101] = xmmword_278EFAB40;
  v4[102] = xmmword_278EFAB50;
  v4[103] = xmmword_278EFAB60;
  v4[104] = xmmword_278EFAB70;
  v4[105] = xmmword_278EFAB80;
  v4[106] = xmmword_278EFAB90;
  v4[107] = xmmword_278EFABA0;
  v4[108] = xmmword_278EFABB0;
  v4[109] = xmmword_278EFABC0;
  v4[110] = xmmword_278EFABD0;
  v4[111] = xmmword_278EFABE0;
  v4[112] = xmmword_278EFABF0;
  v4[113] = xmmword_278EFAC00;
  v4[114] = xmmword_278EFAC10;
  v4[115] = xmmword_278EFAC20;
  v4[116] = xmmword_278EFAC30;
  v4[117] = xmmword_278EFAC40;
  v4[118] = xmmword_278EFAC50;
  v4[119] = xmmword_278EFAC60;
  v4[120] = xmmword_278EFAC70;
  v4[121] = xmmword_278EFAC80;
  v4[122] = xmmword_278EFAC90;
  v4[123] = xmmword_278EFACA0;
  v4[124] = xmmword_278EFACB0;
  v4[125] = xmmword_278EFACC0;
  v4[126] = xmmword_278EFACD0;
  v4[127] = xmmword_278EFACE0;
  v4[128] = xmmword_278EFACF0;
  v4[129] = xmmword_278EFAD00;
  v4[130] = xmmword_278EFAD10;
  v4[131] = xmmword_278EFAD20;
  v4[132] = xmmword_278EFAD30;
  v4[133] = xmmword_278EFAD40;
  v4[134] = xmmword_278EFAD50;
  v4[135] = xmmword_278EFAD60;
  v4[136] = xmmword_278EFAD70;
  v4[137] = xmmword_278EFAD80;
  v4[138] = xmmword_278EFAD90;
  v4[139] = xmmword_278EFADA0;
  v1 = *(v4 + a1);
  v2 = sub_2480B4758();

  return v2;
}

uint64_t XREngineeringTypeID.title.getter(unsigned __int16 a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = XR_ENGINEERING_TITLE_BY_ETYPE;
  v4[1] = *&off_278EFB680;
  v4[2] = xmmword_278EFB690;
  v4[3] = *&off_278EFB6A0;
  v4[4] = xmmword_278EFB6B0;
  v4[5] = *&off_278EFB6C0;
  v4[6] = xmmword_278EFB6D0;
  v4[7] = *&off_278EFB6E0;
  v4[8] = xmmword_278EFB6F0;
  v4[9] = *&off_278EFB700;
  v4[10] = xmmword_278EFB710;
  v4[11] = *&off_278EFB720;
  v4[12] = xmmword_278EFB730;
  v4[13] = *&off_278EFB740;
  v4[14] = xmmword_278EFB750;
  v4[15] = *&off_278EFB760;
  v4[16] = xmmword_278EFB770;
  v4[17] = *&off_278EFB780;
  v4[18] = xmmword_278EFB790;
  v4[19] = *&off_278EFB7A0;
  v4[20] = xmmword_278EFB7B0;
  v4[21] = *&off_278EFB7C0;
  v4[22] = xmmword_278EFB7D0;
  v4[23] = *&off_278EFB7E0;
  v4[24] = xmmword_278EFB7F0;
  v4[25] = *&off_278EFB800;
  v4[26] = xmmword_278EFB810;
  v4[27] = *&off_278EFB820;
  v4[28] = xmmword_278EFB830;
  v4[29] = *&off_278EFB840;
  v4[30] = xmmword_278EFB850;
  v4[31] = *&off_278EFB860;
  v4[32] = xmmword_278EFB870;
  v4[33] = *&off_278EFB880;
  v4[34] = xmmword_278EFB890;
  v4[35] = *&off_278EFB8A0;
  v4[36] = xmmword_278EFB8B0;
  v4[37] = *&off_278EFB8C0;
  v4[38] = xmmword_278EFB8D0;
  v4[39] = *&off_278EFB8E0;
  v4[40] = xmmword_278EFB8F0;
  v4[41] = *&off_278EFB900;
  v4[42] = xmmword_278EFB910;
  v4[43] = *&off_278EFB920;
  v4[44] = xmmword_278EFB930;
  v4[45] = *&off_278EFB940;
  v4[46] = xmmword_278EFB950;
  v4[47] = *&off_278EFB960;
  v4[48] = xmmword_278EFB970;
  v4[49] = *&off_278EFB980;
  v4[50] = xmmword_278EFB990;
  v4[51] = *&off_278EFB9A0;
  v4[52] = xmmword_278EFB9B0;
  v4[53] = *&off_278EFB9C0;
  v4[54] = xmmword_278EFB9D0;
  v4[55] = *&off_278EFB9E0;
  v4[56] = xmmword_278EFB9F0;
  v4[57] = *&off_278EFBA00;
  v4[58] = xmmword_278EFBA10;
  v4[59] = *&off_278EFBA20;
  v4[60] = xmmword_278EFBA30;
  v4[61] = *&off_278EFBA40;
  v4[62] = xmmword_278EFBA50;
  v4[63] = *&off_278EFBA60;
  v4[64] = xmmword_278EFBA70;
  v4[65] = xmmword_278EFBA80;
  v4[66] = xmmword_278EFBA90;
  v4[67] = xmmword_278EFBAA0;
  v4[68] = xmmword_278EFBAB0;
  v4[69] = xmmword_278EFBAC0;
  v4[70] = xmmword_278EFBAD0;
  v4[71] = xmmword_278EFBAE0;
  v4[72] = xmmword_278EFBAF0;
  v4[73] = xmmword_278EFBB00;
  v4[74] = xmmword_278EFBB10;
  v4[75] = xmmword_278EFBB20;
  v4[76] = xmmword_278EFBB30;
  v4[77] = xmmword_278EFBB40;
  v4[78] = xmmword_278EFBB50;
  v4[79] = xmmword_278EFBB60;
  v4[80] = xmmword_278EFBB70;
  v4[81] = xmmword_278EFBB80;
  v4[82] = xmmword_278EFBB90;
  v4[83] = xmmword_278EFBBA0;
  v4[84] = xmmword_278EFBBB0;
  v4[85] = xmmword_278EFBBC0;
  v4[86] = xmmword_278EFBBD0;
  v4[87] = xmmword_278EFBBE0;
  v4[88] = xmmword_278EFBBF0;
  v4[89] = xmmword_278EFBC00;
  v4[90] = xmmword_278EFBC10;
  v4[91] = xmmword_278EFBC20;
  v4[92] = xmmword_278EFBC30;
  v4[93] = xmmword_278EFBC40;
  v4[94] = xmmword_278EFBC50;
  v4[95] = xmmword_278EFBC60;
  v4[96] = xmmword_278EFBC70;
  v4[97] = xmmword_278EFBC80;
  v4[98] = xmmword_278EFBC90;
  v4[99] = xmmword_278EFBCA0;
  v4[100] = xmmword_278EFBCB0;
  v4[101] = xmmword_278EFBCC0;
  v4[102] = xmmword_278EFBCD0;
  v4[103] = xmmword_278EFBCE0;
  v4[104] = xmmword_278EFBCF0;
  v4[105] = xmmword_278EFBD00;
  v4[106] = xmmword_278EFBD10;
  v4[107] = xmmword_278EFBD20;
  v4[108] = xmmword_278EFBD30;
  v4[109] = xmmword_278EFBD40;
  v4[110] = xmmword_278EFBD50;
  v4[111] = xmmword_278EFBD60;
  v4[112] = xmmword_278EFBD70;
  v4[113] = xmmword_278EFBD80;
  v4[114] = xmmword_278EFBD90;
  v4[115] = xmmword_278EFBDA0;
  v4[116] = xmmword_278EFBDB0;
  v4[117] = xmmword_278EFBDC0;
  v4[118] = xmmword_278EFBDD0;
  v4[119] = xmmword_278EFBDE0;
  v4[120] = xmmword_278EFBDF0;
  v4[121] = xmmword_278EFBE00;
  v4[122] = xmmword_278EFBE10;
  v4[123] = xmmword_278EFBE20;
  v4[124] = xmmword_278EFBE30;
  v4[125] = xmmword_278EFBE40;
  v4[126] = xmmword_278EFBE50;
  v4[127] = xmmword_278EFBE60;
  v4[128] = xmmword_278EFBE70;
  v4[129] = xmmword_278EFBE80;
  v4[130] = xmmword_278EFBE90;
  v4[131] = xmmword_278EFBEA0;
  v4[132] = xmmword_278EFBEB0;
  v4[133] = xmmword_278EFBEC0;
  v4[134] = xmmword_278EFBED0;
  v4[135] = xmmword_278EFBEE0;
  v4[136] = xmmword_278EFBEF0;
  v4[137] = xmmword_278EFBF00;
  v4[138] = xmmword_278EFBF10;
  v4[139] = xmmword_278EFBF20;
  v1 = *(v4 + a1);
  v2 = sub_2480B4758();

  return v2;
}

uint64_t XREngineeringTypeID.swiftTypeName.getter(unsigned __int16 a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = XR_ENGINEERING_SWIFT_NAME_BY_ETYPE;
  v4[1] = *&off_278EFADC0;
  v4[2] = xmmword_278EFADD0;
  v4[3] = *&off_278EFADE0;
  v4[4] = xmmword_278EFADF0;
  v4[5] = *&off_278EFAE00;
  v4[6] = xmmword_278EFAE10;
  v4[7] = *&off_278EFAE20;
  v4[8] = xmmword_278EFAE30;
  v4[9] = *&off_278EFAE40;
  v4[10] = xmmword_278EFAE50;
  v4[11] = *&off_278EFAE60;
  v4[12] = xmmword_278EFAE70;
  v4[13] = *&off_278EFAE80;
  v4[14] = xmmword_278EFAE90;
  v4[15] = *&off_278EFAEA0;
  v4[16] = xmmword_278EFAEB0;
  v4[17] = *&off_278EFAEC0;
  v4[18] = xmmword_278EFAED0;
  v4[19] = *&off_278EFAEE0;
  v4[20] = xmmword_278EFAEF0;
  v4[21] = *&off_278EFAF00;
  v4[22] = xmmword_278EFAF10;
  v4[23] = *&off_278EFAF20;
  v4[24] = xmmword_278EFAF30;
  v4[25] = *&off_278EFAF40;
  v4[26] = xmmword_278EFAF50;
  v4[27] = *&off_278EFAF60;
  v4[28] = xmmword_278EFAF70;
  v4[29] = *&off_278EFAF80;
  v4[30] = xmmword_278EFAF90;
  v4[31] = *&off_278EFAFA0;
  v4[32] = xmmword_278EFAFB0;
  v4[33] = *&off_278EFAFC0;
  v4[34] = xmmword_278EFAFD0;
  v4[35] = *&off_278EFAFE0;
  v4[36] = xmmword_278EFAFF0;
  v4[37] = *&off_278EFB000;
  v4[38] = xmmword_278EFB010;
  v4[39] = *&off_278EFB020;
  v4[40] = xmmword_278EFB030;
  v4[41] = *&off_278EFB040;
  v4[42] = xmmword_278EFB050;
  v4[43] = *&off_278EFB060;
  v4[44] = xmmword_278EFB070;
  v4[45] = *&off_278EFB080;
  v4[46] = xmmword_278EFB090;
  v4[47] = *&off_278EFB0A0;
  v4[48] = xmmword_278EFB0B0;
  v4[49] = *&off_278EFB0C0;
  v4[50] = xmmword_278EFB0D0;
  v4[51] = *&off_278EFB0E0;
  v4[52] = xmmword_278EFB0F0;
  v4[53] = *&off_278EFB100;
  v4[54] = xmmword_278EFB110;
  v4[55] = *&off_278EFB120;
  v4[56] = xmmword_278EFB130;
  v4[57] = *&off_278EFB140;
  v4[58] = xmmword_278EFB150;
  v4[59] = *&off_278EFB160;
  v4[60] = xmmword_278EFB170;
  v4[61] = *&off_278EFB180;
  v4[62] = xmmword_278EFB190;
  v4[63] = *&off_278EFB1A0;
  v4[64] = xmmword_278EFB1B0;
  v4[65] = xmmword_278EFB1C0;
  v4[66] = xmmword_278EFB1D0;
  v4[67] = xmmword_278EFB1E0;
  v4[68] = xmmword_278EFB1F0;
  v4[69] = xmmword_278EFB200;
  v4[70] = xmmword_278EFB210;
  v4[71] = xmmword_278EFB220;
  v4[72] = xmmword_278EFB230;
  v4[73] = xmmword_278EFB240;
  v4[74] = xmmword_278EFB250;
  v4[75] = xmmword_278EFB260;
  v4[76] = xmmword_278EFB270;
  v4[77] = xmmword_278EFB280;
  v4[78] = xmmword_278EFB290;
  v4[79] = xmmword_278EFB2A0;
  v4[80] = xmmword_278EFB2B0;
  v4[81] = xmmword_278EFB2C0;
  v4[82] = xmmword_278EFB2D0;
  v4[83] = xmmword_278EFB2E0;
  v4[84] = xmmword_278EFB2F0;
  v4[85] = xmmword_278EFB300;
  v4[86] = xmmword_278EFB310;
  v4[87] = xmmword_278EFB320;
  v4[88] = xmmword_278EFB330;
  v4[89] = xmmword_278EFB340;
  v4[90] = xmmword_278EFB350;
  v4[91] = xmmword_278EFB360;
  v4[92] = xmmword_278EFB370;
  v4[93] = xmmword_278EFB380;
  v4[94] = xmmword_278EFB390;
  v4[95] = xmmword_278EFB3A0;
  v4[96] = xmmword_278EFB3B0;
  v4[97] = xmmword_278EFB3C0;
  v4[98] = xmmword_278EFB3D0;
  v4[99] = xmmword_278EFB3E0;
  v4[100] = xmmword_278EFB3F0;
  v4[101] = xmmword_278EFB400;
  v4[102] = xmmword_278EFB410;
  v4[103] = xmmword_278EFB420;
  v4[104] = xmmword_278EFB430;
  v4[105] = xmmword_278EFB440;
  v4[106] = xmmword_278EFB450;
  v4[107] = xmmword_278EFB460;
  v4[108] = xmmword_278EFB470;
  v4[109] = xmmword_278EFB480;
  v4[110] = xmmword_278EFB490;
  v4[111] = xmmword_278EFB4A0;
  v4[112] = xmmword_278EFB4B0;
  v4[113] = xmmword_278EFB4C0;
  v4[114] = xmmword_278EFB4D0;
  v4[115] = xmmword_278EFB4E0;
  v4[116] = xmmword_278EFB4F0;
  v4[117] = xmmword_278EFB500;
  v4[118] = xmmword_278EFB510;
  v4[119] = xmmword_278EFB520;
  v4[120] = xmmword_278EFB530;
  v4[121] = xmmword_278EFB540;
  v4[122] = xmmword_278EFB550;
  v4[123] = xmmword_278EFB560;
  v4[124] = xmmword_278EFB570;
  v4[125] = xmmword_278EFB580;
  v4[126] = xmmword_278EFB590;
  v4[127] = xmmword_278EFB5A0;
  v4[128] = xmmword_278EFB5B0;
  v4[129] = xmmword_278EFB5C0;
  v4[130] = xmmword_278EFB5D0;
  v4[131] = xmmword_278EFB5E0;
  v4[132] = xmmword_278EFB5F0;
  v4[133] = xmmword_278EFB600;
  v4[134] = xmmword_278EFB610;
  v4[135] = xmmword_278EFB620;
  v4[136] = xmmword_278EFB630;
  v4[137] = xmmword_278EFB640;
  v4[138] = xmmword_278EFB650;
  v4[139] = xmmword_278EFB660;
  v1 = *(v4 + a1);
  v2 = sub_2480B4758();

  return v2;
}

Swift::String __swiftcall HexFormatStyle.format(_:)(Swift::UInt64 a1)
{
  if (*v1 == 1)
  {
    sub_2480B26E0();
    sub_2480B47D8();
    v2 = sub_2480B4778();
    v4 = v3;

    MEMORY[0x24C1C5020](v2, v4);
  }

  else
  {
    sub_2480B26E0();
    v5 = sub_2480B47D8();
    MEMORY[0x24C1C5020](v5);
  }

  v6 = 30768;
  v7 = 0xE200000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_2480B26E0()
{
  result = qword_27EE866A8;
  if (!qword_27EE866A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866A8);
  }

  return result;
}

uint64_t sub_2480B2754()
{
  sub_2480B4958();
  MEMORY[0x24C1C51C0](0);
  return sub_2480B4988();
}

uint64_t sub_2480B27C0(uint64_t a1)
{
  sub_2480B4958();
  MEMORY[0x24C1C51C0](0);
  return sub_2480B4988();
}

uint64_t sub_2480B281C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7361637265707075 && a2 == 0xEA00000000006465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2480B4948();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2480B28C4(uint64_t a1)
{
  v2 = sub_2480B2AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480B2900(uint64_t a1)
{
  v2 = sub_2480B2AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HexFormatStyle.encode(to:)(void *a1)
{
  v2 = sub_2480ACD58(&qword_27EE866B0, &qword_2480B9860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480B2A74(a1, a1[3]);
  sub_2480B2AB8();
  sub_2480B49A8();
  sub_2480B4938();
  return (*(v3 + 8))(v5, v2);
}

void *sub_2480B2A74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2480B2AB8()
{
  result = qword_27EE866B8;
  if (!qword_27EE866B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866B8);
  }

  return result;
}

uint64_t HexFormatStyle.hashValue.getter()
{
  sub_2480B4958();
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t HexFormatStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2480ACD58(&qword_27EE866C0, &qword_2480B9868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_2480B2A74(a1, a1[3]);
  sub_2480B2AB8();
  sub_2480B4998();
  if (!v2)
  {
    v9 = sub_2480B4928();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return sub_2480B2F10(a1);
}

uint64_t sub_2480B2CD8@<X0>(Swift::UInt64 *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = HexFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t sub_2480B2D20(void *a1)
{
  v2 = sub_2480ACD58(&qword_27EE866B0, &qword_2480B9860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480B2A74(a1, a1[3]);
  sub_2480B2AB8();
  sub_2480B49A8();
  sub_2480B4938();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2480B2E58()
{
  sub_2480B4958();
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t sub_2480B2ECC(uint64_t a1)
{
  sub_2480B4958();
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t sub_2480B2F10(void *a1)
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

unint64_t sub_2480B2F60()
{
  result = qword_27EE866C8;
  if (!qword_27EE866C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866C8);
  }

  return result;
}

unint64_t sub_2480B2FB8()
{
  result = qword_27EE866D0;
  if (!qword_27EE866D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866D0);
  }

  return result;
}

unint64_t sub_2480B3010()
{
  result = qword_27EE866D8;
  if (!qword_27EE866D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866D8);
  }

  return result;
}

unint64_t sub_2480B3068()
{
  result = qword_27EE866E0;
  if (!qword_27EE866E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HexFormatStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HexFormatStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2480B3248()
{
  result = qword_27EE866E8;
  if (!qword_27EE866E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866E8);
  }

  return result;
}

unint64_t sub_2480B32A0()
{
  result = qword_27EE866F0;
  if (!qword_27EE866F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866F0);
  }

  return result;
}

unint64_t sub_2480B32F8()
{
  result = qword_27EE866F8;
  if (!qword_27EE866F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866F8);
  }

  return result;
}

void sub_2480B3378()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 198, @"[worker holdsItinerary:workersItinerary]");
}

void sub_2480B33EC()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 203, @"[worker holdsItinerary:workersItinerary]");
}

void sub_2480B3460()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 204, @"[team.members containsObject:worker]");
}

void sub_2480B34D4()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 215, @"agent == _ownerID");
}

void sub_2480B36E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a1, a2, @"XREngineeringValue.m", 293, @"The allowed subelements are constant engineering values.");
}

void sub_2480B3754(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 134217984;
  v6 = objc_msgSend_count(a1, a2, a3, a4, a5);
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Key Value Typed Array has not even number of elements: %ld", &v5, 0xCu);
}

void sub_2480B3A98(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "NSURL *_etypesdefURL(void)_block_invoke", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v11, v10, @"XREngineeringTypeDefinitions.m", 217, @"Didn't find the engineering_types file in the bundle");

  *a1 = qword_27EE86910;
}

void sub_2480B3B24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSURL *_etypesdefURL(void)_block_invoke", v6, v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v9, v8, @"XREngineeringTypeDefinitions.m", 218, @"Didn't find the engineering_types file in the bundle");
}

void sub_2480B3BC4(void *a1, void *a2)
{
  v3 = a1;
  v8 = objc_msgSend_localizedDescription(a2, v4, v5, v6, v7);
  LODWORD(v15) = 138412290;
  *(&v15 + 4) = v8;
  sub_24809C4E8(&dword_248087000, v9, v10, "Archiving object to deep copy failed with error: %@", v11, v12, v13, v14, v15, DWORD2(v15));
}

void sub_2480B3C5C(void *a1, void *a2)
{
  v3 = a1;
  v8 = objc_msgSend_localizedDescription(a2, v4, v5, v6, v7);
  LODWORD(v15) = 138412290;
  *(&v15 + 4) = v8;
  sub_24809C4E8(&dword_248087000, v9, v10, "Unarchiving deep copied object failed with error: %@", v11, v12, v13, v14, v15, DWORD2(v15));
}

void sub_2480B3D08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a1, a2, @"NSObject+DVTInstrumentsUtilities.m", 74, @"Invalid parameter not satisfying: %@", @"[self isKindOfClass:NSString.class] || [self isKindOfClass:NSArray.class]");
}

void sub_2480B3D84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a1, a2, @"XRCapabilityRequirements.m", 155, @"Internal error converting contents to plist");
}

void sub_2480B3DFC(void *a1, uint64_t *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_begin_catch(a1);
  *a3 = v5;
  v6 = v5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v7 = *a2;
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Agent '%@' threw an exception and will be sent to its final destination in the failed mode. Exception: %@.", &v8, 0x16u);
  }
}

void sub_2480B3F00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a1, a2, @"XRMobileAgent.m", 68, @"Invalid parameter not satisfying: %@", @"activationStop != nil");
}

void sub_2480B3FA8(void *a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_description(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_mode(a1, v8, v9, v10, v11);
  v17 = objc_msgSend_currentStop(*a2, v13, v14, v15, v16);
  v18 = 138412802;
  v19 = v7;
  v20 = 2112;
  v21 = v12;
  v22 = 2112;
  v23 = v17;
  _os_log_error_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Agent %@ did not set its itinerary in mode %@ after passing through stop %@", &v18, 0x20u);
}

void sub_2480B408C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_description(a1, a2, a3, a4, a5);
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Agent %@ has been lost.  Recovering by sending it to its final destination in the failure mode.", &v6, 0xCu);
}

void sub_2480B4124(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_mode(a1, a2, a3, a4, a5);
  v8 = *(a2 + 40);
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Agent '%@' attempted to set a nil next stop.  The current mode is '%@'.  The next mode is '%@'.  Moving to final destination in the failed mode.", &v9, 0x20u);
}

void sub_2480B4210(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_agentDiagnosticsName(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_mode(a1, v7, v8, v9, v10);
  v12 = 138543618;
  v13 = v6;
  v14 = 2114;
  v15 = v11;
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Agent %{public}@ has no stop set and it's not in park movement. Last mode: %{public}@", &v12, 0x16u);
}

void sub_2480B42CC(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "A next stop of nil was set for the itinerary '%@'.  If this agent continues there will be another fault with the details.", &v1, 0xCu);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}