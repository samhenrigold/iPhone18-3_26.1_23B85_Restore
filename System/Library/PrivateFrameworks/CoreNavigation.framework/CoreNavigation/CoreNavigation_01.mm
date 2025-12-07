uint64_t raven::ConvertProtobufToAccelerometerEvent(float32x2_t *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *a2, raven::AccelerometerEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((this[4].i8[0] & 1) == 0)
  {
    return 0;
  }

  v8 = this[1];
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    *(a2 + 104) = vcvtq_f64_f32(this[2]);
    *(a2 + 15) = this[3].f32[0];
    return 1;
  }

  return result;
}

void sub_1D0B7C308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B7C32C(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0B7C51C(v4, a2);
}

void sub_1D0B7C468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B7C4C0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0B7C32C((a1 + 3), a2);
}

void cnframework::Supervisor::RaiseEvent(uint64_t a1, cnframework::GenericEvent **a2, uint64_t a3)
{
  v5 = *a2;
  if (COERCE__INT64(fabs(*(*a2 + 5) + *(*a2 + 4))) < 0x7FF0000000000000)
  {
    std::mutex::lock((a1 + 416));
    if (*(a1 + 408))
    {
      std::mutex::lock((a1 + 344));
      if (!*(a1 + 320) || (*__p = *(*a2 + 2), sub_1D0B7C8AC((a1 + 328), __p)))
      {
        *(a1 + 320) = 1;
        *(a1 + 328) = *(*a2 + 2);
      }

      std::mutex::unlock((a1 + 344));
      std::recursive_mutex::lock((a1 + 256));
      v8 = *(a1 + 232);
      for (i = *(a1 + 240); v8 != i; ++v8)
      {
        v10 = *v8;
        v11 = a2[1];
        v20[0] = *a2;
        v20[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        cnframework::ActiveObjectBase::ReceiveEvent(v10, v20, a3);
        if (v11)
        {
          sub_1D0B7CAB8(v11);
        }
      }

      std::recursive_mutex::unlock((a1 + 256));
      std::mutex::unlock((a1 + 416));
      std::recursive_mutex::lock((a1 + 256));
      do
      {
        v14 = *(a1 + 232);
        v15 = *(a1 + 240);
        if (v14 == v15)
        {
          break;
        }

        v16 = 0;
        do
        {
          v17 = *v14;
          v18 = *(*v14 + 18);
          *(*v14 + 18) = v18 + 1;
          if (v18 <= 0)
          {
            IsNeeded = cnframework::ActiveObjectBase::HandleNextEventAndDetermineIfMoreWorkIsNeeded(v17, v12, v13);
            v18 = *(v17 + 18) - 1;
            v16 |= IsNeeded != 0;
          }

          *(v17 + 18) = v18;
          ++v14;
        }

        while (v14 != v15);
      }

      while ((v16 & 1) != 0);
      std::recursive_mutex::unlock((a1 + 256));
    }

    else
    {

      std::mutex::unlock((a1 + 416));
    }
  }

  else
  {
    v24 = 3;
    v23 = 4;
    cnframework::GenericEvent::GetEventName(v5, __p);
    v6 = __p[0];
    if (v22 >= 0)
    {
      v6 = __p;
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Supervisor::RaiseEvent() called with event type %s with invalid timestamp %.3lf.", v6, *(*a2 + 5) + *(*a2 + 4));
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

BOOL sub_1D0B7C8AC(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 || (v3 = a1[1], (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    v4 = *a2;
    if (!*a2 && (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      return a1[1] < a2[1];
    }

    if (v2 != v4)
    {
      return v2 < v4;
    }

    v3 = a1[1];
  }

  return v3 < a2[1];
}

void cnframework::ActiveObjectBase::ReceiveEvent(uint64_t result, void *a2, uint64_t a3)
{
  v14 = *(*a2 + 32);
  if (!*(result + 105) || sub_1D0B7CF88(&v14, (result + 112)))
  {
    *(result + 105) = 1;
    *(result + 112) = v14;
  }

  if (*(*a2 + 8) == 1)
  {
    v6 = *(*a2 + 24);
  }

  else
  {
    v16 = 3;
    v15 = 5;
    cnprint::CNPrinter::Print(&v16, &v15, "Attempted to access type of uninitialized GenericEvent.");
    v6 = MEMORY[0x1E69E54A8];
  }

  v7 = *(result + 8);
  v8 = *(result + 16);
  while (v7 != v8)
  {
    if ((sub_1D0B7CA64(*(v7 + 8), v6) || *v7 == 1) && (*(v7 + 24) == a3 || *(v7 + 16) == 1))
    {
      v11 = *a2;
      v12 = a2[1];
      *&v13 = v11;
      *(&v13 + 1) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      cnframework::ActiveObjectBase::AddEventToEventQueue(result, &v13, v9, v10);
      if (v12)
      {
        sub_1D0B7CAB8(v12);
      }

      return;
    }

    v7 += 32;
  }
}

void sub_1D0B7CA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D0B7CA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_1D0B7CAB8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t cnframework::ActiveObjectBase::AddEventToEventQueue(uint64_t a1, __int128 *a2, int8x16_t a3, int8x16_t a4)
{
  v5 = a1;
  if (*(a1 + 208) != 1)
  {
    goto LABEL_14;
  }

  *__p = *(*a2 + 32);
  v42 = CNTimeSpan::operator+(__p, (a1 + 160), *__p, a4);
  v43 = v6;
  a1 = sub_1D0B7C8AC(&v42, (v5 + 112));
  if (!a1)
  {
    goto LABEL_14;
  }

  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  if (v7 != v8)
  {
    v9 = MEMORY[0x1E69E54A8];
    while (1)
    {
      v10 = *v7;
      if (*(*a2 + 8) == 1)
      {
        v11 = *(*a2 + 24);
      }

      else
      {
        LOWORD(v42) = 3;
        LOBYTE(__p[0]) = 5;
        cnprint::CNPrinter::Print(&v42, __p, "Attempted to access type of uninitialized GenericEvent.");
        v11 = v9;
      }

      a1 = sub_1D0B7CA64(v10, v11);
      if (a1)
      {
        break;
      }

      v7 += 2;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(v5 + 88);
  }

  if (v7 == v8 || (*__p = *(*a2 + 32), v12.i64[1] = __p[1], v12.i64[0] = v7[1], v45[0] = 0, v45[1] = 0, *v13.i64 = CNTimeSpan::SetTimeSpan(v45, 0, v12, a4), v42 = CNTimeSpan::operator+(__p, v45, v13, v14), v43 = v15, a1 = sub_1D0B8E6A8(&v42, (v5 + 112)), (a1 & 1) == 0))
  {
    ++*(v5 + 152);
    v16 = 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  if (*(v5 + 152) && ((a1 = CNTimeSpan::operator-((v5 + 112), (v5 + 136), a3, a4), *(v5 + 128) != 1) || v17 + a1 >= 1.0))
  {
    LOWORD(__p[0]) = 3;
    LOBYTE(v45[0]) = 3;
    v22 = *(v5 + 120) + *(v5 + 112);
    (*(*v5 + 16))(&v42, v5);
    if (v44 >= 0)
    {
      v23 = &v42;
    }

    else
    {
      v23 = v42;
    }

    cnprint::CNPrinter::Print(__p, v45, "Warning: time,%.3lf,%s dropped %llu latent event(s) in the past %.1lf second(s)", v22, v23, *(v5 + 152), 1.0);
    if (v44 < 0)
    {
      operator delete(v42);
    }

    *(v5 + 128) = 1;
    *(v5 + 136) = *(v5 + 112);
    *(v5 + 152) = 0;
    if (v16)
    {
      goto LABEL_19;
    }
  }

  else if (v16)
  {
LABEL_19:
    if (!cnprint::CNPrinter::GetLogLevel(a1))
    {
      LOWORD(v45[0]) = 3;
      v41 = 0;
      (*(*v5 + 16))(&v42, v5);
      v18 = v44;
      v19 = v42;
      cnframework::GenericEvent::GetEventName(*a2, __p);
      if (v18 >= 0)
      {
        v20 = &v42;
      }

      else
      {
        v20 = v19;
      }

      v21 = __p[0];
      if (v40 >= 0)
      {
        v21 = __p;
      }

      cnprint::CNPrinter::Print(v45, &v41, "Warning: %s dropping old %s with time %.3lf at time %.3lf", v20, v21, *(*a2 + 40) + *(*a2 + 32), *(v5 + 120) + *(v5 + 112));
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      if (v44 < 0)
      {
        operator delete(v42);
      }
    }

    return v16 ^ 1u;
  }

  v24 = *(v5 + 184);
  v25 = *(v5 + 192);
  if (v24 >= v25)
  {
    v28 = *(v5 + 176);
    v29 = (v24 - v28) >> 4;
    v30 = v29 + 1;
    if ((v29 + 1) >> 60)
    {
      sub_1D0C5663C();
    }

    v31 = v25 - v28;
    if (v31 >> 3 > v30)
    {
      v30 = v31 >> 3;
    }

    if (v31 >= 0x7FFFFFFFFFFFFFF0)
    {
      v32 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      if (!(v32 >> 60))
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v33 = 16 * v29;
    v34 = *a2;
    *(16 * v29) = *a2;
    if (*(&v34 + 1))
    {
      atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v27 = v33 + 16;
    v35 = *(v5 + 176);
    v36 = *(v5 + 184) - v35;
    v37 = v33 - v36;
    memcpy((v33 - v36), v35, v36);
    *(v5 + 176) = v37;
    *(v5 + 184) = v27;
    *(v5 + 192) = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v24 = *a2;
    v26 = *(a2 + 1);
    v24[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = (v24 + 2);
  }

  *(v5 + 184) = v27;
  sub_1D0B7CFF0(*(v5 + 176), v27, (v27 - *(v5 + 176)) >> 4);
  return v16 ^ 1u;
}

void sub_1D0B7CF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D0B7CF88(double *a1, double *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = a1[1];
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_8;
    }
  }

  v4 = *a2;
  if (!*a2 && (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v5 = a1[1] <= a2[1];
    return !v5;
  }

  v5 = v2 <= v4;
  if (v2 == v4)
  {
    v3 = a1[1];
LABEL_8:
    v5 = v3 <= a2[1];
  }

  return !v5;
}

void sub_1D0B7CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v6 = v3 >> 1;
  v7 = (a1 + 16 * (v3 >> 1));
  v8 = *v7;
  v9 = v7[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 - 16);
  v11 = *(a2 - 8);
  v12 = (a2 - 16);
  if (!v11)
  {
    v13 = cnframework::GenericEvent::operator>(v8, v10);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = cnframework::GenericEvent::operator>(v8, v10);
  sub_1D0B7CAB8(v11);
  if (v9)
  {
LABEL_6:
    sub_1D0B7CAB8(v9);
  }

LABEL_7:
  if (!v13)
  {
    return;
  }

  v14 = *(a2 - 16);
  v15 = *(a2 - 8);
  *v12 = 0;
  v12[1] = 0;
  do
  {
    v16 = v12;
    v12 = v7;
    v17 = *v7;
    *v7 = 0;
    v7[1] = 0;
    v18 = v16[1];
    *v16 = v17;
    if (v18)
    {
      sub_1D0B7CAB8(v18);
    }

    if (!v6)
    {
      break;
    }

    v6 = (v6 - 1) >> 1;
    v7 = (a1 + 16 * v6);
    v19 = *v7;
    v20 = v7[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v15)
    {
      v21 = cnframework::GenericEvent::operator>(v19, v14);
      if (!v20)
      {
        continue;
      }

LABEL_16:
      sub_1D0B7CAB8(v20);
      continue;
    }

    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = cnframework::GenericEvent::operator>(v19, v14);
    sub_1D0B7CAB8(v15);
    if (v20)
    {
      goto LABEL_16;
    }
  }

  while (v21);
  v22 = v12[1];
  *v12 = v14;
  v12[1] = v15;
  if (v22)
  {

    sub_1D0B7CAB8(v22);
  }
}

uint64_t cnframework::ActiveObjectBase::HandleNextEventAndDetermineIfMoreWorkIsNeeded(cnframework::ActiveObjectBase *this, int8x16_t a2, int8x16_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(this + 22);
  v4 = *(this + 23);
  if (v3 == v4)
  {
    return 0;
  }

  v6 = *(this + 52);
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = *v3;
      goto LABEL_16;
    }

    return 0;
  }

  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 40);
  v10 = CNTimeSpan::operator-(this + 14, this + 20, a2, a3);
  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v12 && (v10 || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v8 != v10)
  {
    if (v8 >= v10)
    {
      return 0;
    }
  }

  else if (v9 > v11)
  {
    return 0;
  }

LABEL_16:
  v14 = *(v3 + 1);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(this + 22);
    v4 = *(this + 23);
  }

  v15 = (v4 - v3) >> 4;
  if (v15 >= 2)
  {
    v43 = v4;
    v44 = v7;
    v45 = v14;
    v16 = 0;
    v41 = *v3;
    v42 = *(v3 + 1);
    v17 = v3;
    *v3 = 0;
    *(v3 + 1) = 0;
    v40 = v3;
    while (1)
    {
      v18 = &v17[2 * v16 + 2];
      v19 = 2 * v16;
      v16 = (2 * v16) | 1;
      v20 = v19 + 2;
      if (v19 + 2 < v15)
      {
        v21 = *v18;
        v22 = v18[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = v18[2];
        v24 = v18[3];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = cnframework::GenericEvent::operator>(v21, v23);
          sub_1D0B7CAB8(v24);
          if (!v22)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v25 = cnframework::GenericEvent::operator>(v21, v23);
          if (!v22)
          {
LABEL_32:
            if (!v25)
            {
              goto LABEL_27;
            }

LABEL_26:
            v18 += 2;
            v16 = v20;
            goto LABEL_27;
          }
        }

        sub_1D0B7CAB8(v22);
        if (v25)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v26 = *v18;
      *v18 = 0;
      v18[1] = 0;
      v27 = v17[1];
      *v17 = v26;
      if (v27)
      {
        sub_1D0B7CAB8(v27);
      }

      v17 = v18;
      if (v16 > ((v15 - 2) >> 1))
      {
        if (v43 - 16 == v18)
        {
          v31 = v18[1];
          *v18 = v41;
          v18[1] = v42;
          v7 = v44;
          v14 = v45;
          if (v31)
          {
            sub_1D0B7CAB8(v31);
          }
        }

        else
        {
          v28 = *(v43 - 1);
          *(v43 - 2) = 0;
          *(v43 - 1) = 0;
          v29 = v18[1];
          *v18 = v28;
          v7 = v44;
          if (v29)
          {
            sub_1D0B7CAB8(v29);
          }

          v30 = *(v43 - 1);
          *(v43 - 2) = v41;
          *(v43 - 1) = v42;
          v14 = v45;
          if (v30)
          {
            sub_1D0B7CAB8(v30);
          }

          sub_1D0B7CFF0(v40, (v18 + 2), (v18 - v40 + 16) >> 4);
        }

        break;
      }
    }
  }

  v32 = *(this + 23);
  v33 = *(v32 - 8);
  if (v33)
  {
    sub_1D0B7CAB8(v33);
  }

  *(this + 23) = v32 - 16;
  if (!v7 || *(v7 + 8) != 1)
  {
    LOWORD(v46[0]) = 3;
    LOBYTE(v49) = 4;
    (*(*this + 16))(__p, this);
    if (v51 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s received empty event; dropping.", v35);
LABEL_53:
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_55;
  }

  __p[0] = *(v7 + 24);
  v34 = sub_1D0B7D618(this + 4, __p);
  if (!v34)
  {
    v49 = 3;
    v48 = 5;
    (*(*this + 16))(__p, this);
    v36 = v51;
    v37 = __p[0];
    cnframework::GenericEvent::GetEventName(v7, v46);
    v38 = __p;
    if (v36 < 0)
    {
      v38 = v37;
    }

    if (v47 >= 0)
    {
      v39 = v46;
    }

    else
    {
      v39 = v46[0];
    }

    cnprint::CNPrinter::Print(&v49, &v48, "%s has no event handler defined for event type %s.  Dropping event.", v38, v39);
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    goto LABEL_53;
  }

  sub_1D0B7D72C(__p, (v34 + 3));
  v46[0] = this;
  if (!v52)
  {
    sub_1D0C57820();
  }

  (*(*v52 + 48))(v52, v46, v7);
  sub_1D0B7D7C4(__p);
LABEL_55:
  if (v14)
  {
    sub_1D0B7CAB8(v14);
  }

  return 2;
}

void sub_1D0B7D5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (v29)
  {
    sub_1D0B7CAB8(v29);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0B7D618(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v3)
      {
        if (sub_1D0B7CA64(v12[2], *a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1D0B7D72C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1D0B7D7C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1D0B7D844(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v16 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16))
        {
          return 0;
        }
      }

      else
      {
        v16 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2, v11) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2, raven::TimerEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v6 = 0uLL;
  v5 = &unk_1F4CEF300;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0uLL;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0x7FF8000000000000;
  if (raven::ConvertProtobufToTimerEvent(a2, &v5, a3, a4, a5))
  {
    operator new();
  }
}

void sub_1D0B7DD14(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToTimerEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2, raven::TimerEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 20) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ + 8);
  }

  return raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
}

void cnprint::CNPrinter::Print(cnprint::CNPrinter *a1, unsigned __int8 *a2, char *a3, ...)
{
  va_start(va, a3);
  cnprint::CNPrinter::GetCNPrinter(a1);
  v6 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v6))
  {
    va_copy(v6, va);
    cnprint::CNPrinter::PrintCore(&unk_1EC5FB8B8, a1, a2, a3, va);
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

uint64_t sub_1D0B7DED0(uint64_t a1, void *a2)
{
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * *a2;
  v10.__m_ = a1;
  v10.__owns_ = 1;
  std::mutex::lock(a1);
  if (std::chrono::steady_clock::now().__d_.__rep_ < v3.__d_.__rep_)
  {
    while (1)
    {
      if (*(a1 + 112) != 1 || v3.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
        goto LABEL_18;
      }

      v4.__d_.__rep_ = v3.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v4.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_17:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v3.__d_.__rep_)
      {
        goto LABEL_18;
      }
    }

    std::chrono::steady_clock::now();
    v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v5.__d_.__rep_)
    {
      v6 = 0;
      goto LABEL_15;
    }

    if (v5.__d_.__rep_ < 1)
    {
      if (v5.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v6 = 0x8000000000000000;
        goto LABEL_15;
      }
    }

    else if (v5.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_13;
    }

    v6 = 1000 * v5.__d_.__rep_;
LABEL_13:
    if (v6 > (v4.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
      std::condition_variable::__do_timed_wait((a1 + 64), &v10, v7);
      std::chrono::steady_clock::now();
      goto LABEL_17;
    }

LABEL_15:
    v7.__d_.__rep_ = v6 + v4.__d_.__rep_;
    goto LABEL_16;
  }

LABEL_18:
  v8 = *(a1 + 112);
  if ((v8 & 1) == 0)
  {
    *(a1 + 112) = 1;
  }

  if (v10.__owns_)
  {
    std::mutex::unlock(v10.__m_);
  }

  return v8 ^ 1u;
}

void *cnprint::CNPrinter::GetCNPrinter(cnprint::CNPrinter *this)
{
  if ((atomic_load_explicit(&qword_1EC5FB430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EC5FB430))
  {
    cnprint::CNPrinter::CNPrinter(&unk_1EC5FB8B8);
    __cxa_atexit(sub_1D0C70F70, &unk_1EC5FB8B8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EC5FB430);
  }

  return &unk_1EC5FB8B8;
}

BOOL cnframework::GenericEvent::operator>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = v2 > v4;
  if (v2 == v4)
  {
    v6 = v3 > v5;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3 > v5;
  }

  if (v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    return v8;
  }

  else
  {
    return v3 > v5;
  }
}

int64x2_t sub_1D0B7E140(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1D0BA03F0(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  v7 = *v6 + 152 * (v4 % 0x1A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 3952;
  }

  *(v7 - 152) = &unk_1F4CEEEB0;
  *(v7 - 144) = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = *(a2 + 72);
  *(v7 - 96) = *(a2 + 56);
  *(v7 - 80) = v10;
  *(v7 - 128) = v8;
  *(v7 - 112) = v9;
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  *(v7 - 22) = *(a2 + 130);
  *(v7 - 48) = v12;
  *(v7 - 32) = v13;
  *(v7 - 64) = v11;
  result = vaddq_s64(a1[2], xmmword_1D0E82EC0);
  a1[2] = result;
  return result;
}

uint64_t sub_1D0B7E234(int64x2_t *a1)
{
  v2 = (*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x1AuLL)) + 152 * (a1[2].i64[0] % 0x1AuLL));
  (**v2)(v2);
  a1[2] = vaddq_s64(a1[2], xmmword_1D0E76280);

  return sub_1D0B7E2D8(a1, 1);
}

uint64_t sub_1D0B7E2D8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1A)
  {
    a2 = 1;
  }

  if (v2 < 0x34)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 26;
  }

  return v4 ^ 1u;
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::PositionEvent *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t i, double *a9, int *a10)
{
  v11 = a2;
  v595 = *MEMORY[0x1E69E9840];
  if ((*(this + 224) & 1) == 0)
  {
    LOWORD(v574) = 13;
    LOBYTE(v586[0].f64[0]) = 4;
    v24 = (*(*a2 + 16))(a2, a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0], i);
    cnprint::CNPrinter::Print(&v574, v586, "#tre_ao,Not Configured,HandleEvent,PositionEvent,time,%.3lf", v25 + v24);
    return;
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    LOWORD(v574) = 13;
    LOBYTE(v586[0].f64[0]) = 4;
    v26 = (*(*a2 + 16))(a2, a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0], i);
    cnprint::CNPrinter::Print(&v574, v586, "#tre_ao,Invalid PositionEvent,latlon coordinates invalid,time,%.3lf", v27 + v26);
    return;
  }

  v12 = *(a2 + 104);
  if (v12 > 0xD)
  {
    goto LABEL_111;
  }

  v13 = this;
  if (((1 << v12) & 0x2E10) != 0)
  {
    v14 = 0;
    if (*(this + 744) == 1)
    {
      *(this + 536) = *(a2 + 8);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v17 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v17;
      *(this + 552) = v15;
      *(this + 568) = v16;
      v18 = *(a2 + 88);
      v19 = *(a2 + 104);
      v20 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v20;
      *(this + 616) = v18;
      *(this + 632) = v19;
      v21 = *(a2 + 152);
      v22 = *(a2 + 168);
      v23 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v23;
      *(this + 680) = v21;
      *(this + 696) = v22;
    }

    else
    {
      *(this + 66) = &unk_1F4CF0C98;
      *(this + 536) = *(a2 + 8);
      v37 = *(a2 + 24);
      v38 = *(a2 + 40);
      v39 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v39;
      *(this + 552) = v37;
      *(this + 568) = v38;
      v40 = *(a2 + 88);
      v41 = *(a2 + 104);
      v42 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v42;
      *(this + 616) = v40;
      *(this + 632) = v41;
      v21 = *(a2 + 152);
      v43 = *(a2 + 168);
      v23 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v23;
      *(this + 680) = v21;
      *(this + 696) = v43;
      *(this + 744) = 1;
    }

    goto LABEL_13;
  }

  if (((1 << v12) & 0x10C0) != 0)
  {
    if (*(this + 744) == 1)
    {
      *(this + 536) = *(a2 + 8);
      v28 = *(a2 + 24);
      v29 = *(a2 + 40);
      v30 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v30;
      *(this + 552) = v28;
      *(this + 568) = v29;
      v31 = *(a2 + 88);
      v32 = *(a2 + 104);
      v33 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v33;
      *(this + 616) = v31;
      *(this + 632) = v32;
      v34 = *(a2 + 152);
      v35 = *(a2 + 168);
      v36 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v36;
      *(this + 680) = v34;
      *(this + 696) = v35;
    }

    else
    {
      *(this + 66) = &unk_1F4CF0C98;
      *(this + 536) = *(a2 + 8);
      v91 = *(a2 + 24);
      v92 = *(a2 + 40);
      v93 = *(a2 + 72);
      *(this + 584) = *(a2 + 56);
      *(this + 600) = v93;
      *(this + 552) = v91;
      *(this + 568) = v92;
      v94 = *(a2 + 88);
      v95 = *(a2 + 104);
      v96 = *(a2 + 136);
      *(this + 648) = *(a2 + 120);
      *(this + 664) = v96;
      *(this + 616) = v94;
      *(this + 632) = v95;
      v97 = *(a2 + 152);
      v98 = *(a2 + 168);
      v99 = *(a2 + 200);
      *(this + 712) = *(a2 + 184);
      *(this + 728) = v99;
      *(this + 680) = v97;
      *(this + 696) = v98;
      *(this + 744) = 1;
    }

    return;
  }

  if (v12 != 1)
  {
LABEL_111:
    LOWORD(v574) = 13;
    LOBYTE(v586[0].f64[0]) = 4;
    v127 = (*(*a2 + 16))(a2, a3, a4, a5, a6, a7, i);
    cnprint::CNPrinter::Print(&v574, v586, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,type unusable,%hhu", v128 + v127, *(v11 + 104));
    return;
  }

  if (*(this + 744) == 1)
  {
    *(this + 536) = *(a2 + 8);
    v100 = *(a2 + 24);
    v101 = *(a2 + 40);
    v102 = *(a2 + 72);
    *(this + 584) = *(a2 + 56);
    *(this + 600) = v102;
    *(this + 552) = v100;
    *(this + 568) = v101;
    v103 = *(a2 + 88);
    v104 = *(a2 + 104);
    v105 = *(a2 + 136);
    *(this + 648) = *(a2 + 120);
    *(this + 664) = v105;
    *(this + 616) = v103;
    *(this + 632) = v104;
    v21 = *(a2 + 152);
    v106 = *(a2 + 168);
    v23 = *(a2 + 200);
    *(this + 712) = *(a2 + 184);
    *(this + 728) = v23;
    *(this + 680) = v21;
    *(this + 696) = v106;
    v14 = 1;
  }

  else
  {
    *(this + 66) = &unk_1F4CF0C98;
    *(this + 536) = *(a2 + 8);
    v129 = *(a2 + 24);
    v130 = *(a2 + 40);
    v131 = *(a2 + 72);
    *(this + 584) = *(a2 + 56);
    *(this + 600) = v131;
    *(this + 552) = v129;
    *(this + 568) = v130;
    v132 = *(a2 + 88);
    v133 = *(a2 + 104);
    v134 = *(a2 + 136);
    *(this + 648) = *(a2 + 120);
    *(this + 664) = v134;
    *(this + 616) = v132;
    *(this + 632) = v133;
    v21 = *(a2 + 152);
    v135 = *(a2 + 168);
    v23 = *(a2 + 200);
    *(this + 712) = *(a2 + 184);
    *(this + 728) = v23;
    *(this + 680) = v21;
    *(this + 696) = v135;
    v14 = 1;
    *(this + 744) = 1;
  }

LABEL_13:
  if ((*(this + 416) & 1) != 0 || *(this + 2280) != 1)
  {
    if ((*(this + 448) & 1) == 0 && *(this + 2376) == 1)
    {
      trackrun::TrackRunEngineActiveObject::HandleEvent(this, (this + 2288), a9, a10, v21);
    }
  }

  else
  {
    trackrun::TrackRunEngineActiveObject::HandleEvent(this, (this + 2192), a9, a10, v21);
    if (*(v13 + 2280) == 1)
    {
      *(v13 + 274) = &unk_1F4CF0B60;
      v574 = (v13 + 2200);
      sub_1D0E62CA0(&v574);
      *(v13 + 2280) = 0;
    }
  }

  v574 = &unk_1F4CF0BF0;
  BYTE8(v575[3]) = 0;
  LOBYTE(v575[9]) = 0;
  BYTE8(v575[9]) = 0;
  BYTE8(v575[11]) = 0;
  LOBYTE(v575[12]) = 0;
  LOBYTE(v575[22]) = 0;
  LODWORD(v575[3]) = 0;
  memset(v586, 0, 24);
  memset(v593, 0, 23);
  LOBYTE(v575[0]) = 0;
  *(&v575[1] + 1) = v586[1].f64[0];
  *(v575 + 1) = v586[0];
  *(&v575[2] + 1) = 0;
  *(&v575[1] + 9) = *v593;
  BYTE10(v575[22]) = 0;
  WORD4(v575[22]) = v14;
  v44 = *(v13 + 416);
  if ((v44 & 1) == 0 && (*(v13 + 448) & 1) == 0)
  {
    strcpy(v586, "\r");
    v593[0] = 2;
    v89 = (*(*v11 + 16))(v11);
    cnprint::CNPrinter::Print(v586, v593, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,no track data available; cannot perform proximity detection", v90 + v89);
    LODWORD(v575[3]) = 0;
    BYTE10(v575[22]) = 1;
    if (*(v13 + 1800) == 1)
    {
      memcpy(v13 + 1432, v575, 0x16BuLL);
    }

    else
    {
      *(v13 + 178) = &unk_1F4CF0BF0;
      memcpy(v13 + 1432, v575, 0x16BuLL);
      *(v13 + 1800) = 1;
    }

    return;
  }

  if ((*(v13 + 368) & 1) == 0)
  {
    v572.i8[0] = 0;
    v573 = 0;
    strcpy(v586, "\r");
    v593[0] = 4;
    v55 = (*(*v11 + 16))(v11);
    cnprint::CNPrinter::Print(v586, v593, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,failed ConvertLatLonToEastNorth", v56 + v55);
    return;
  }

  v45 = vmulq_f64(vsubq_f64(*(v11 + 7), *(v13 + 22)), *(v13 + 376));
  v572 = vextq_s8(v45, v45, 8uLL);
  v573 = 1;
  v46 = *(v13 + 448);
  if (v46 != 1 || (v48 = *(v13 + 53), v47 = *(v13 + 54), v49 = v47 - v48, v47 == v48))
  {
    v50 = 0;
    v54 = INFINITY;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = 0x4EC4EC4EC4EC4EC5 * (v49 >> 3);
    if (v52 <= 1)
    {
      v52 = 1;
    }

    v53 = (v48 + 32);
    v54 = INFINITY;
    *&v23 = 0;
    do
    {
      *i.i64 = (v45.n128_f64[1] - *(v53 - 1)) * (v45.n128_f64[1] - *(v53 - 1)) + 0.0;
      if (*i.i64 + (v45.n128_f64[0] - *v53) * (v45.n128_f64[0] - *v53) < v54)
      {
        v50 = v51;
        v54 = *i.i64 + (v45.n128_f64[0] - *v53) * (v45.n128_f64[0] - *v53);
      }

      ++v51;
      v53 += 13;
    }

    while (v52 != v51);
  }

  v57 = (v13 + 392);
  if (!v44 || (v59 = *(v13 + 49), v58 = *(v13 + 50), v60 = v58 - v59, v58 == v59))
  {
    v61 = 0;
    v65 = INFINITY;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = 0x4EC4EC4EC4EC4EC5 * (v60 >> 3);
    if (v63 <= 1)
    {
      v63 = 1;
    }

    *&v23 = v45.n128_u64[1];
    v64 = (v59 + 32);
    v65 = INFINITY;
    do
    {
      v66 = (v45.n128_f64[1] - *(v64 - 1)) * (v45.n128_f64[1] - *(v64 - 1)) + 0.0;
      *i.i64 = v66 + (v45.n128_f64[0] - *v64) * (v45.n128_f64[0] - *v64);
      if (*i.i64 < v65)
      {
        v61 = v62;
        v65 = v66 + (v45.n128_f64[0] - *v64) * (v45.n128_f64[0] - *v64);
      }

      ++v62;
      v64 += 13;
    }

    while (v63 != v62);
  }

  if (v54 >= v65)
  {
    v46 = 0;
  }

  v562 = (v13 + 376);
  v563 = v14;
  v566 = v46;
  if ((v46 & 1) == 0)
  {
    v107 = (*v57 + 104 * v61);
    if (!v107[12])
    {
      strcpy(v586, "\r");
      v593[0] = 4;
      v136 = (*(*v11 + 16))(v11);
      cnprint::CNPrinter::Print(v586, v593, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,nearest_track has no lanes cached. Cannot proceed.", v137 + v136);
      return;
    }

    v108 = v107[5];
    v565 = (*v57 + 104 * v61);
    *&v554 = v13 + 392;
    if ((*(v108 + 40) & 1) == 0)
    {
      trackrun::RunningTrackData::RunningTrackLane::PopulateLaneLength(v108, v45.n128_f64[0], v54, v65, *&v23);
      if (*(*(v13 + 35) + 216) == 1)
      {
        v114 = v107[5];
        v113 = v107[6];
        if (v114 != v113)
        {
          v115 = 1;
          do
          {
            trackrun::RunningTrackData::RunningTrackLane::PopulateLaneLength(v114, v109, v110, v111, v112);
            strcpy(v586, "\r");
            v593[0] = 3;
            v116 = -1.0;
            if (*(v114 + 40) == 1)
            {
              v116 = *(v114 + 32);
            }

            cnprint::CNPrinter::Print(v586, v593, "#tre_ao,lane,%zu,length,%.2lf,width,%.2lf", v115++, v116, *(v114 + 64));
            v114 += 72;
          }

          while (v114 != v113);
        }
      }
    }

    v117 = 0;
LABEL_98:
    std::mutex::lock((v13 + 288));
    if (*(v13 + 1800) == 1)
    {
      v120 = *(v13 + 2184);
      v121 = v563;
      if (v120 != 1 || (*(v13 + 1792) & 1) != 0)
      {
        goto LABEL_109;
      }

      v122 = CNTimeSpan::operator-(v13 + 180, v13 + 228, v118, v119);
      *&v586[0].f64[0] = v122;
      v586[0].f64[1] = v123;
      if (v122 < 0 || (v118.n128_f64[0] = v123, v123 < 0.0))
      {
        v122 = CNTimeSpan::operator-(v586, v118, v124);
        v118.n128_u64[0] = v125;
      }

      if (!v122 && (v118.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (v126 = v122 <= 2, v122 == 2))
      {
        v126 = v118.n128_f64[0] <= 0.0;
      }

      if (!v126)
      {
LABEL_109:
        if (v120 == 1)
        {
          memcpy(v13 + 1816, v13 + 1432, 0x16BuLL);
        }

        else if (v120)
        {
          *(v13 + 2184) = 0;
        }

        else
        {
          *(v13 + 226) = &unk_1F4CF0BF0;
          memcpy(v13 + 1816, v13 + 1432, 0x16BuLL);
          *(v13 + 2184) = 1;
        }
      }

      *(v13 + 1800) = 0;
    }

    else
    {
      v121 = v563;
    }

    v152 = v565;
    if ((v566 & 1) == 0)
    {
      v152 = (*(v565 + 6) - 72);
    }

    v153 = sub_1D0B85938(v572.i64, v152, v118);
    v154 = (v11 + 136);
    if (*(v11 + 105))
    {
      v155 = *(v11 + 17) * *(v11 + 17);
    }

    else
    {
      v155 = 0.0;
    }

    LODWORD(v575[3]) = 0;
    v156 = *(v13 + 35);
    *v593 = 4;
    *&v586[0].f64[0] = v593;
    v157 = *(sub_1D0B85E58((v156 + 72), 4, v586) + 3);
    v158 = *(v13 + 35);
    *v593 = 2;
    *&v586[0].f64[0] = v593;
    v159 = *(sub_1D0B85E58((v158 + 72), 2, v586) + 3);
    v160 = *(v13 + 35);
    *v593 = 3;
    *&v586[0].f64[0] = v593;
    v161 = sub_1D0B85E58((v160 + 72), 3, v586);
    v162 = v155 + v157;
    if (v153 < v162)
    {
      v163 = v121;
    }

    else
    {
      v163 = 0;
    }

    if (v163 == 1)
    {
      LODWORD(v575[3]) = 3;
      if ((v566 & 1) == 0)
      {
        if (*(v565 + 12))
        {
          trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(&v572, *(v565 + 5), 1, 0);
          if (v164 < 0.0 || v164 * v164 < v162)
          {
            if (*(v13 + 1416) != 1 || (v165 = *(v13 + 1241), v165 > 5) || ((1 << v165) & 0x34) == 0 || (*(v13 + 816) & 1) != 0 || *(v13 + 2184) != 1 || *(v13 + 466) == 4 || v153 <= *(*(v565 + 6) - 8) * *(*(v565 + 6) - 8))
            {
              LODWORD(v575[3]) = 4;
            }
          }
        }

LABEL_188:
        v169 = sqrt(v153);
        memset(&v575[4], 0, 80);
        LOBYTE(v575[9]) = 1;
        *(&v575[3] + 1) = v169;
        *(&v575[8] + 1) = *(v565 + 8);
        LOBYTE(v575[4]) = *(v565 + 12);
        v575[0] = *(v11 + 8);
        v575[1] = *(v11 + 24);
        v575[2] = *(v11 + 40);
        BYTE10(v575[22]) = 1;
        if (*(v13 + 1800) == 1)
        {
          memcpy(v13 + 1432, v575, 0x16BuLL);
        }

        else
        {
          *(v13 + 178) = &unk_1F4CF0BF0;
          memcpy(v13 + 1432, v575, 0x16BuLL);
          *(v13 + 1800) = 1;
        }

        trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v13 + 352, (v565 + 24), &v578);
        LOWORD(v581.f64[0]) = 13;
        LOBYTE(v583[0]) = 3;
        v170 = *(v11 + 104);
        if (v170 > 9)
        {
          v171 = "Other";
        }

        else
        {
          v171 = off_1E83D8430[v170];
        }

        v172 = *(v13 + 2384);
        sub_1D0B751F4(v586, v171);
        if (v586[1].f64[0] >= 0.0)
        {
          v173 = COERCE_DOUBLE(v586);
        }

        else
        {
          v173 = v586[0].f64[0];
        }

        v174 = *(v11 + 5);
        v175 = *(v11 + 6);
        v176 = (*(*v11 + 16))(v11);
        v178 = v177;
        trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v13, *(v11 + 5), *(v11 + 6), v593);
        if (v593[23] >= 0)
        {
          v179 = v593;
        }

        else
        {
          v179 = *v593;
        }

        v180 = (v11 + 152);
        v181 = v578;
        v182 = v579;
        if (!v580)
        {
          v181 = 0.0;
          v182 = 0.0;
        }

        cnprint::CNPrinter::Print(&v581, v583, "TrackRun-Raw-%u-%s,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,courseUnc,%.2lf,speed,%.2lf,speedUnc,%.2lf,hunc,%.1lf,type,%d,track_prox,%d,dist_to_outer,%.1lf,track_lat,%.7lf,track_lon,%.7lf,num_lanes,%d,odo_valid,%d,odo,%.1lf,odo_dd,%.1lf,odo_dd_unc,%.1lf", v172, *&v173, v175 + v174, v178 + v176, v179, *(v11 + 14), *(v11 + 15), *(v11 + 19), *(v11 + 20), *(v11 + 21), *(v11 + 22), *(v11 + 17), *(v11 + 104), LODWORD(v575[3]), v169, v181, v182, LOBYTE(v575[4]), *(v11 + 184), *(v11 + 24), *(v11 + 25), *(v11 + 26));
        v184 = v565;
        v185 = v562;
        v186 = v563;
        if ((v593[23] & 0x80000000) != 0)
        {
          operator delete(*v593);
        }

        if (SHIBYTE(v586[1].f64[0]) < 0)
        {
          operator delete(*&v586[0].f64[0]);
        }

        if ((*(v13 + 816) != 1 || (v562[248].i8[2] & 1) == 0) && *(*(v13 + 35) + 68) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v183) <= 1)
          {
            strcpy(v586, "\r");
            v593[0] = 1;
            cnprint::CNPrinter::Print(v586, v593, "#tre_ao,DEBUG FORCING TO LANE %d", *(*(v13 + 35) + 69));
          }

          memset(&v586[0].f64[1], 0, 56);
          *&v586[0].f64[0] = &unk_1F4CF0CE0;
          v586[1].f64[1] = 0.0;
          LOBYTE(v586[2].f64[0]) = 0;
          if (*(v13 + 816))
          {
            v187 = *(&v586[1] + 8);
            *(v13 + 760) = *(v586 + 8);
            *(v13 + 776) = v187;
            *(v13 + 792) = *(&v586[2] + 8);
            *(v13 + 808) = LOBYTE(v586[3].f64[1]);
          }

          else
          {
            *(v13 + 94) = &unk_1F4CF0CE0;
            v188 = *(&v586[1] + 8);
            *(v13 + 760) = *(v586 + 8);
            *(v13 + 776) = v188;
            *(v13 + 792) = *(&v586[2] + 8);
            *(v13 + 808) = LOBYTE(v586[3].f64[1]);
            *(v13 + 816) = 1;
          }

          *(v13 + 808) = *(*(v13 + 35) + 69);
          v189 = (v13 + 760);
          v190 = *(v11 + 8);
          v191 = *(v11 + 40);
          *(v13 + 776) = *(v11 + 24);
          *(v13 + 792) = v191;
          *(v13 + 760) = v190;
          if ((v562[248].i8[2] & 1) == 0)
          {
            v586[0].f64[0] = 0.0;
            v586[0].f64[1] = NAN;
            LOBYTE(v586[1].f64[0]) = 0;
            LOBYTE(v586[1].f64[1]) = 0;
            LOBYTE(v586[5].f64[1]) = 0;
            *&v586[0].f64[0] = (*(*v11 + 16))(v11);
            v586[0].f64[1] = v192;
            LOBYTE(v586[1].f64[0]) = v575[4];
            if (LOBYTE(v586[5].f64[1]) == *(v13 + 816))
            {
              if (LOBYTE(v586[5].f64[1]))
              {
                v193 = *(v13 + 776);
                v586[2] = *v189;
                v586[3] = v193;
                v586[4] = *(v13 + 792);
                LOBYTE(v586[5].f64[0]) = *(v13 + 808);
              }
            }

            else if (LOBYTE(v586[5].f64[1]))
            {
              LOBYTE(v586[5].f64[1]) = 0;
            }

            else
            {
              *&v586[1].f64[1] = &unk_1F4CF0CE0;
              v200 = *(v13 + 776);
              v586[2] = *v189;
              v586[3] = v200;
              v586[4] = *(v13 + 792);
              LOBYTE(v586[5].f64[0]) = *(v13 + 808);
              LOBYTE(v586[5].f64[1]) = 1;
            }

            if (trackrun::TrackRunLaneEstimator::Initialize(v13 + 2848))
            {
              strcpy(v593, "\r");
              LOBYTE(v581.f64[0]) = 4;
              cnprint::CNPrinter::Print(v593, &v581, "#tre_ao,lane estimator could not be initialized.");
LABEL_596:
              std::mutex::unlock((v13 + 288));
              return;
            }

            if ((*(v13 + 816) & 1) == 0)
            {
              sub_1D0C42F28();
            }
          }

          v201 = *(v13 + 776);
          if (v562[253].i8[0] == 1)
          {
            *(v13 + 273) = *v189;
            *(v13 + 274) = v201;
            *(v13 + 275) = *(v13 + 792);
            *(v13 + 4416) = *(v13 + 808);
          }

          else
          {
            *(v13 + 273) = *v189;
            *(v13 + 545) = &unk_1F4CF0CE0;
            *(v13 + 274) = v201;
            *(v13 + 275) = *(v13 + 792);
            *(v13 + 4416) = *(v13 + 808);
            v562[253].i8[0] = 1;
          }

          v202 = *(v13 + 808);
          v184 = v565;
          if (v202 <= 1)
          {
            v203 = 1;
          }

          else
          {
            v203 = *(v13 + 808);
          }

          if (v202 > *(v565 + 96))
          {
            v203 = *(v565 + 96);
          }

          if (*(v565 + 96))
          {
            v204 = v203;
          }

          else
          {
            v204 = *(v13 + 808);
          }

          if ((v562[254].i8[8] & 1) == 0)
          {
            v562[254].i8[8] = 1;
          }

          *(v13 + 555) = v204;
          *(v13 + 2216) = 0;
        }

        if (*(v13 + 1416) == 1)
        {
          v205 = *(v13 + 1241);
          if (v205 <= 5 && ((1 << v205) & 0x34) != 0 && (v566 & 1) == 0 && (*(v13 + 416) & 1) != 0 && LODWORD(v575[3]) == 4)
          {
            *(v13 + 198) = 0;
            v562[76] = vdupq_n_s64(0x7FF8000000000000uLL);
            *(v13 + 201) = 0x7FF8000000000000;
            *(v13 + 1616) = 1;
            v206 = *(v11 + 24);
            if (!*(v11 + 184))
            {
              v206 = 0.0;
            }

            *(v13 + 199) = v206;
            *(v13 + 1584) = 0;
            v207 = *(v11 + 25);
            v208 = v207 > 0.0;
            v209 = *(v11 + 21);
            if (v209 <= 0.0)
            {
              v208 = 0;
            }

            if ((v563 & v208) == 1)
            {
              trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceInformation(v13, v11, v184, &v572, v586);
              sub_1D0E695F4(v13 + 350, v586);
              trackrun::TrackRunEngineActiveObject::PruneAcrossTrackDistanceDeque(v13);
              v207 = *(v11 + 25);
              v209 = *(v11 + 21);
            }

            if (*(v13 + 355) && v207 > 0.0 && v209 > 0.0)
            {
              trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceEvidence(v593, v13, v11, v184);
              if ((v562[248].i8[2] & 1) == 0)
              {
                v586[0].f64[0] = 0.0;
                v586[0].f64[1] = NAN;
                LOBYTE(v586[1].f64[0]) = 0;
                LOBYTE(v586[1].f64[1]) = 0;
                LOBYTE(v586[5].f64[1]) = 0;
                *&v586[0].f64[0] = (*(*v11 + 16))(v11);
                v586[0].f64[1] = v210;
                LOBYTE(v586[1].f64[0]) = *(v184 + 96);
                if (*(v13 + 816) == 1)
                {
                  if (LOBYTE(v586[5].f64[1]) == 1)
                  {
                    LOBYTE(v586[5].f64[0]) = *(v13 + 808);
                    v211 = *(v13 + 776);
                    v586[2] = *(v13 + 760);
                    v586[3] = v211;
                    v586[4] = *(v13 + 792);
                  }

                  else if (LOBYTE(v586[5].f64[1]))
                  {
                    LOBYTE(v586[5].f64[1]) = 0;
                  }

                  else
                  {
                    *&v586[1].f64[1] = &unk_1F4CF0CE0;
                    LOBYTE(v586[5].f64[0]) = *(v13 + 808);
                    v284 = *(v13 + 776);
                    v586[2] = *(v13 + 760);
                    v586[3] = v284;
                    v586[4] = *(v13 + 792);
                    LOBYTE(v586[5].f64[1]) = 1;
                  }
                }

                if (trackrun::TrackRunLaneEstimator::Initialize(v13 + 2848))
                {
                  LOWORD(v581.f64[0]) = 13;
                  LOBYTE(v583[0]) = 4;
                  cnprint::CNPrinter::Print(&v581, v583, "#tre_ao,TrackRunLaneEstimator is not initialized. Cannot continue.");
                  goto LABEL_596;
                }
              }

              trackrun::TrackRunLaneEstimator::HandleEvidence((v13 + 2848), v593);
            }

            if (v562[248].i8[2] == 1 && (LOWORD(v285) = *(v13 + 1424), (v285 & 0x100) != 0))
            {
              v285 = v285;
            }

            else if (*(v13 + 816) != 1 || (v285 = *(v13 + 808), !*(v13 + 808)))
            {
              v286 = *(v13 + 355);
              if (v286)
              {
                v287 = (*(*(v13 + 351) + 8 * ((v286 + *(v13 + 354) - 1) / 0x33uLL)) + 80 * ((v286 + *(v13 + 354) - 1) % 0x33uLL));
                v586[1] = v287[1];
                v586[2] = v287[2];
                v586[3] = v287[3];
                v586[4] = v287[4];
                v586[0] = *v287;
              }

              else
              {
                trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceInformation(v13, v11, v184, &v572, v586);
              }

              v290 = 1.0;
              if (*(v184 + 88) == 1 && (v291 = *(v184 + 80), v291 > 0.0) && (v290 = round(-round(v586[1].f64[1] / v291)), v290 < 1.0))
              {
                v289 = 0;
              }

              else
              {
                v292 = *(v184 + 96);
                if (v290 <= v292)
                {
                  v289 = (v290 + -1.0);
                }

                else
                {
                  v289 = v292 - 1;
                }
              }

LABEL_440:
              if (v562[254].i8[8])
              {
                v293 = *(v13 + 35);
                if (*(v293 + 217))
                {
                  v294 = *(v13 + 555);
                  if (*(v13 + 816))
                  {
                    goto LABEL_450;
                  }
                }

                else
                {
                  v294 = *(v13 + 555);
                }

                v295 = v289 + 1;
                if (v294 == v289 + 1)
                {
                  v294 = v289 + 1;
LABEL_450:
                  v297 = v294 - 1;
                  if (v297 >= *(v184 + 96) - 1)
                  {
                    v289 = *(v184 + 96) - 1;
                  }

                  else
                  {
                    v289 = v297;
                  }

                  v296 = *(v13 + 2216) + 1;
LABEL_454:
                  *(v13 + 2216) = v296;
                  ClosestPointOnRing = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(&v572, (*(v184 + 40) + 72 * v289), 0, 1);
                  v300 = v299;
                  v302 = v301;
                  *v593 = ClosestPointOnRing;
                  *&v593[8] = v299;
                  *&v593[16] = v301;
                  *&v593[24] = v303;
                  trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v13 + 352, v593, &v576);
                  if (v577 != 1)
                  {
                    strcpy(v586, "\r");
                    LOBYTE(v581.f64[0]) = 4;
                    v321 = (*(*v11 + 16))(v11);
                    cnprint::CNPrinter::Print(v586, &v581, "#tre_ao,Warning,MatchedPosition,time,%.3lf,current_position,latlng,%.7lf,%.7lf,lane_matched_point has no value", v322 + v321, *(v11 + 14), *(v11 + 15));
                    goto LABEL_488;
                  }

                  v305 = v576;
                  v306 = *(v13 + 1520);
                  *(v13 + 94) = v576;
                  if ((v306 & 1) == 0)
                  {
                    *(v13 + 1520) = 1;
                  }

                  v308 = *v180;
                  v307 = *(v11 + 168);
                  v309.f64[0] = NAN;
                  v309.f64[1] = NAN;
                  v310 = vnegq_f64(v309);
                  v311 = vdupq_n_s64(0x7FF0000000000000uLL);
                  v312 = vuzp1q_s32(vcgeq_s64(vandq_s8(*v180, v310), v311), vcgeq_s64(vandq_s8(v307, v310), v311));
                  *&v312.f64[0] = vmovn_s32(v312);
                  LOWORD(v312.f64[0]) = vmaxv_u16(*&v312.f64[0]);
                  if ((LOBYTE(v312.f64[0]) & 1) == 0)
                  {
                    v312 = vuzp1q_s32(vcgezq_f64(v308), vcgezq_f64(v307));
                    *&v312.f64[0] = vmovn_s32(v312);
                    v307 = vcgtzq_f64(v307);
                    *v307.i8 = vmovn_s64(v307);
                    WORD2(v312.f64[0]) = vuzp1_s16(*&v307, *&v307).i16[2];
                    *v307.i8 = vcltz_s16(vshl_n_s16(*&v312.f64[0], 0xFuLL));
                    *&v312.f64[0] = 0x8000400020001;
                    *v307.i8 = vand_s8(*v307.i8, 0x8000400020001);
                    v307.i16[0] = vaddv_s16(*v307.i8);
                    if ((~v307.u8[0] & 0xF) == 0)
                    {
                      v558 = *v180;
                      *v307.i64 = fmod(v308.f64[0] - v302, 180.0);
                      v312.f64[0] = fabs(*v307.i64);
                      v313 = 1.0;
                      if (*v307.i64 > 0.0)
                      {
                        v313 = -1.0;
                      }

                      v314 = *v307.i64 + v313 * 180.0;
                      if (v312.f64[0] > 90.0)
                      {
                        *v307.i64 = v314;
                      }

                      v312.f64[0] = fabs(*v307.i64);
                      v315 = *(v13 + 35);
                      if (v312.f64[0] <= *(v315 + 192) && (*(v315 + 200) & 1) == 0)
                      {
                        v316 = *v558.i64 - *v307.i64;
                        if (v316 < 0.0 || v316 >= 360.0)
                        {
                          v317 = 1.0;
                          if (v316 <= 0.0)
                          {
                            v317 = 0.0;
                            if (v316 < 0.0)
                            {
                              v317 = -1.0;
                            }
                          }

                          v316 = v316 + v317 * -360.0;
                        }

                        *(v13 + 191) = v316;
                        *(v13 + 1536) = 1;
                        v185 = v562;
                        v186 = v563;
                        if (*(v13 + 1552) != 1 || (v307.i64[0] = *(v13 + 193), v312.f64[0] = *(v315 + 240), *v307.i64 <= v312.f64[0]))
                        {
                          v307.i64[0] = *(v315 + 232);
                          v312.f64[0] = *v154;
                          if (*v307.i64 >= *v154)
                          {
                            v307.i64[0] = *v154;
                          }

                          *(v13 + 193) = v307.i64[0];
                          *(v13 + 1552) = 1;
                          v185 = v562;
                          v186 = v563;
                        }
                      }
                    }
                  }

                  v318 = *(v13 + 1563);
                  if ((v318 & 1) == 0)
                  {
                    v318 = 1;
                    *(v13 + 1563) = 1;
                  }

                  *(v13 + 1562) = v289 + 1;
                  v567 = v289;
                  if (*(v13 + 2184) != 1)
                  {
                    goto LABEL_537;
                  }

                  v304 = CNTimeSpan::operator-(v11 + 2, v13 + 228, v307, v312);
                  *&v586[0].f64[0] = v304;
                  v586[0].f64[1] = v319;
                  if (v304 < 0 || (*v307.i64 = v319, v319 < 0.0))
                  {
                    v304 = CNTimeSpan::operator-(v586, v307, v312);
                    v307.i64[0] = v320;
                  }

                  if ((v304 || (v307.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v304 != 2)
                  {
                    if (v304 > 1)
                    {
                      goto LABEL_537;
                    }
                  }

                  else if (*v307.i64 > 0.0)
                  {
                    goto LABEL_537;
                  }

                  if (*(v13 + 466) == 4 && *(v13 + 2000) == 1 && *(v13 + 1968) == 1 && *(v13 + 1960) == 1 && *(v13 + 1904) == 1 && *(v13 + 1945) == 1)
                  {
                    if ((*(v13 + 368) & 1) == 0)
                    {
                      sub_1D0C42F28();
                    }

                    v339 = (*(v13 + 236) - *(v13 + 44)) * *(v13 + 47) - v300;
                    v340 = (*(v13 + 237) - *(v13 + 45)) * *(v13 + 48) - ClosestPointOnRing;
                    *v307.i64 = sqrt(v340 * v340 + 0.0 + v339 * v339);
                    v312.f64[0] = 11.0;
                    v185 = v562;
                    v186 = v563;
                    if (*v307.i64 < 11.0)
                    {
                      *(v13 + 200) = v307.i64[0];
                      v341 = v318 ^ 1;
                      if (v289)
                      {
                        v341 = 1;
                      }

                      if ((v341 & 1) == 0)
                      {
                        v342 = *(v565 + 5);
                        if (*(v342 + 40) == 1)
                        {
                          v343 = *(v342 + 32);
                          if (v343 >= 392.0 && v343 <= 408.0)
                          {
                            if ((*(v342 + 56) & 1) == 0)
                            {
                              *(v342 + 48) = 400.0 / v343;
                              *(v342 + 56) = 1;
                              v342 = *(v565 + 5);
                              if ((*(v342 + 56) & 1) == 0)
                              {
                                sub_1D0C42F28();
                              }

                              v307.i64[0] = *(v13 + 200);
                            }

                            *v307.i64 = *(v342 + 48) * *v307.i64;
                            *(v13 + 200) = v307.i64[0];
                          }
                        }
                      }

                      v312.f64[0] = *v307.i64 + *(v13 + 247);
                      *(v13 + 199) = *&v312.f64[0];
                      *(v13 + 201) = 0x3FD0000000000000;
                      *(v13 + 792) = 257;
                      v344 = *(v13 + 2736);
                      v186 = v563;
                      if (v344 == 1)
                      {
                        if (*(v13 + 1416) == 1 && *(v13 + 1241) == 4)
                        {
                          v304 = CNTimeSpan::operator-(v11 + 2, v13 + 172, v307, v312);
                          v312.f64[0] = v304;
                          *v307.i64 = v345 + v304;
                          *(v13 + 329) = v307.i64[0];
                          v344 = 1;
                        }

                        else
                        {
                          v530.f64[0] = *(v13 + 329);
                          *(v13 + 329) = 0;
                          *&v530.f64[1] = v307.i64[0];
                          v312 = vaddq_f64(v530, *(v13 + 165));
                          *(v13 + 165) = v312;
                          v312.f64[0] = *(v13 + 340);
                          *v307.i64 = *v307.i64 + v312.f64[0];
                          *(v13 + 340) = v307.i64[0];
                          v344 = *(v11 + 184);
                          if (v344 != 1)
                          {
                            v344 = 1;
                            v186 = v563;
                            goto LABEL_545;
                          }

                          v531 = *(v11 + 25);
                          *(v13 + 332) = v531 + *(v13 + 332);
                          v312.f64[0] = *(v13 + 341);
                          *v307.i64 = v531 + v312.f64[0];
                          *(v13 + 341) = v307.i64[0];
                        }

                        v186 = v563;
                      }

LABEL_545:
                      if (v344)
                      {
                        if (*(v13 + 2792))
                        {
                          *v349.i64 = CNTimeSpan::operator-(v11 + 2, v13 + 344, v307, v312);
                          *v351.i64 = v350 + *v349.i64;
                          *(v13 + 339) = v350 + *v349.i64;
                          v304 = CNTimeSpan::operator-(v11 + 2, v13 + 323, v351, v349);
                          v353 = v352 + v304 - *(v13 + 329) - *(v13 + 330);
                          *(v13 + 328) = v353;
                          if (v353 < 0.0)
                          {
                            strcpy(v586, "\r");
                            LOBYTE(v581.f64[0]) = 3;
                            v354 = (*(*v11 + 16))(v11);
                            cnprint::CNPrinter::Print(v586, &v581, "#tre_ao,%.1lf,Warning:current lap duration is less than 0,limiting to 0,current_lap_duration,%.1lf,current_pause_duration,%.1lf,previous_pauses_duration,%.1lf", v355 + v354, *(v13 + 328), *(v13 + 329), *(v13 + 330));
                            *(v13 + 328) = fmax(*(v13 + 328), 0.0);
                          }
                        }
                      }

                      if (LODWORD(v575[3]) == 4)
                      {
                        v356 = v186;
                      }

                      else
                      {
                        v356 = 0;
                      }

                      if (v356)
                      {
                        if (*(v13 + 2568) != 1)
                        {
LABEL_559:
                          v590 = 0u;
                          v591 = 0u;
                          v588 = 0u;
                          v589 = 0u;
                          v587 = 0u;
                          memset(v586, 0, sizeof(v586));
                          v592 = 1;
                          sub_1D0E6B228(v13 + 2392, v586);
                          v586[0].f64[0] = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(&v572, *(v565 + 5), 0, 0);
                          v586[0].f64[1] = v358;
                          v586[1].f64[0] = v359;
                          v586[1].f64[1] = v360;
                          trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v13 + 352, v586, &v570);
                          v581.f64[0] = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(&v572, (*(v565 + 5) + 72 * *(v565 + 12) - 72), 0, 0);
                          *&v581.f64[1] = v361;
                          v582.f64[0] = v362;
                          v582.f64[1] = v363;
                          trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v13 + 352, &v581, &v568);
                          if (v571 != 1 || (v569 & 1) == 0)
                          {
                            strcpy(v583, "\r");
                            v585[0] = 4;
                            v374 = (*(*v11 + 16))(v11);
                            cnprint::CNPrinter::Print(v583, v585, "#tre_ao,coordinate conversion issue, could not start line,%.1lf", v375 + v374);
                            goto LABEL_596;
                          }

                          *(v13 + 2392) = v570;
                          *(v13 + 2408) = v568;
                          *(v13 + 2457) = *v154 <= *(*(v13 + 35) + 240);
                          trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(v13);
                          if (cnprint::CNPrinter::GetLogLevel(v364) <= 1)
                          {
                            strcpy(v583, "\r");
                            v585[0] = 1;
                            v365 = (*(*v11 + 16))(v11);
                            cnprint::CNPrinter::Print(v583, v585, "#tre_ao,successfully set the start line,%.1lf", v366 + v365);
                          }

                          if (*(v13 + 2736) == 1)
                          {
                            v367 = *(v13 + 339);
                            v368 = *(v13 + 331);
                            v369 = *(v13 + 341);
                            memset(v585, 0, sizeof(v585));
                            memset(&v584, 0, 23);
                            memset(v583, 0, 30);
                            *(v13 + 2576) = 0;
                            v370 = *v585;
                            *(v13 + 2593) = *&v585[16];
                            *(v13 + 2577) = v370;
                            v371 = v584;
                            *(v13 + 327) = 0;
                            *(v13 + 2601) = v371;
                            *(v13 + 167) = 0u;
                            *(v13 + 166) = 0u;
                            *(v13 + 165) = 0u;
                            *(v13 + 164) = 0u;
                            *(v13 + 168) = vdupq_n_s64(0x7FF8000000000000uLL);
                            *(v13 + 1352) = 0;
                            v372 = v583[0];
                            *(v13 + 1355) = WORD2(v583[0]);
                            *(v13 + 2706) = v372;
                            *(v13 + 2736) = 1;
                            *(v13 + 339) = v367;
                            *(v13 + 340) = v368;
                            *(v13 + 341) = v369;
                            v562[248].i8[2] = 0;
                            v562[248].i8[0] = 0;
                            if (*(v13 + 2849) == 1)
                            {
                              *(v13 + 2849) = 0;
                            }

                            if (v562[253].i8[0] == 1)
                            {
                              v562[253].i8[0] = 0;
                            }

                            sub_1D0E6A014(v13 + 350);
                          }

                          else
                          {
                            memset(v585, 0, sizeof(v585));
                            memset(&v584, 0, 23);
                            memset(v583, 0, 30);
                            *(v13 + 2576) = 0;
                            v404 = *v585;
                            *(v13 + 2593) = *&v585[16];
                            *(v13 + 2577) = v404;
                            v405 = v584;
                            *(v13 + 327) = 0;
                            *(v13 + 2601) = v405;
                            *(v13 + 167) = 0u;
                            *(v13 + 166) = 0u;
                            *(v13 + 165) = 0u;
                            *(v13 + 164) = 0u;
                            *(v13 + 168) = vdupq_n_s64(0x7FF8000000000000uLL);
                            *(v13 + 1352) = 0;
                            v406 = v583[0];
                            *(v13 + 170) = *(v583 + 14);
                            *(v13 + 2706) = v406;
                            *(v13 + 2736) = 1;
                          }

                          v407 = *(v11 + 8);
                          v408 = *(v11 + 40);
                          *(v13 + 162) = *(v11 + 24);
                          *(v13 + 163) = v408;
                          *(v13 + 161) = v407;
                          *(v13 + 168) = v305;
                          *(v13 + 2536) = v576;
                          *(v13 + 2552) = 0;
                          *(v13 + 2560) = 1;
                          goto LABEL_612;
                        }

                        v357 = v13 + 2568;
                        if (*(v13 + 2456))
                        {
LABEL_584:
                          if ((*(v13 + 2512) != 1 || *(v13 + 2528) != 1 || (*(v13 + 2496) & 1) == 0) && ((trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(v13), (*(v13 + 2496) & 1) == 0) || (*(v13 + 2528) & 1) == 0) || (*(v13 + 2512) & 1) == 0)
                          {
                            sub_1D0C42F28();
                          }

                          v383 = *(v13 + 308);
                          v384 = *(v13 + 309);
                          v385 = *(v13 + 315);
                          v386 = *(v13 + 313);
                          v581.f64[0] = trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(v593, v13 + 303, 0, 0, 0);
                          *&v581.f64[1] = v387;
                          v582.f64[0] = v388;
                          v582.f64[1] = v389;
                          v391 = (ClosestPointOnRing - v383) * v385 - (v300 - v384) * v386;
                          if (cnprint::CNPrinter::GetLogLevel(v390) <= 1)
                          {
                            strcpy(v586, "\r");
                            LOBYTE(v583[0]) = 1;
                            cnprint::CNPrinter::Print(v586, v583, "#tre_ao,signed dist to inifinite start line,%.1lf", v391);
                          }

                          v392 = *(v565 + 5);
                          if (*(v392 + 40) == 1)
                          {
                            v393 = *(v392 + 32) * 0.4;
                          }

                          else
                          {
                            v393 = 40.0;
                          }

                          if (*v357 != 1)
                          {
                            goto LABEL_612;
                          }

                          if (*(v13 + 2560) != 1)
                          {
                            goto LABEL_612;
                          }

                          v394 = v391 > 0.0;
                          if (*(v13 + 2552) == v394 || *(v13 + 2736) != 1 || *v562[142].i64 <= v393)
                          {
                            goto LABEL_612;
                          }

                          v395 = v393;
                          strcpy(v586, "\r");
                          LOBYTE(v583[0]) = 3;
                          v396 = (*(*v11 + 16))(v11);
                          cnprint::CNPrinter::Print(v586, v583, "#tre_ao,infinite starting line has been crossed,time,%.1lf,workout_number,%d,distance_to_start,%.1lf,current_lap_distance,%.1lf,lap_distance_thresh,%.1lf,lat,lon,%.7lf,%.7lf", v397 + v396, *(v13 + 2384), v391, *(v13 + 331), v395, *&v305, *(&v305 + 1));
                          *(v13 + 2536) = v576;
                          *(v13 + 2552) = v394;
                          *(v13 + 2560) = 1;
                          if ((*(v13 + 2496) & 1) == 0)
                          {
                            sub_1D0C42F28();
                          }

                          trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(v593, v13 + 308, 1, 0, 0);
                          if (fabs(v399) >= 10.0)
                          {
                            goto LABEL_612;
                          }

                          ++*(v13 + 1352);
                          *v398.i64 = fabs(v391);
                          v400 = vdupq_lane_s64(v398.i64[0], 0);
                          v401 = vsubq_f64(v562[142], v400);
                          *(v13 + 167) = v401;
                          *(v13 + 331) = v398.i64[0];
                          v564 = *v398.i64;
                          *(v13 + 332) = v398.i64[0];
                          v570 = 0uLL;
                          v401.i64[0] = *(v11 + 21);
                          if (fabs(*v401.i64) < 2.22044605e-16 || (v401.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                          {
                            v400.i64[0] = 0;
                            *v401.i64 = fmax(*(v13 + 328), 0.0);
                            *(v13 + 333) = v401.i64[0];
                          }

                          else
                          {
                            v586[0] = 0uLL;
                            *v401.i64 = *v398.i64 / *v401.i64;
                            CNTimeSpan::SetTimeSpan(v586, 0, v401, v398);
                            v401.i64[1] = *&v586[0].f64[1];
                            v570 = v586[0];
                            v402 = *&v586[0].f64[0];
                            v400.i64[0] = 0;
                            *v401.i64 = fmax(*(v13 + 328), 0.0);
                            *(v13 + 333) = v401.i64[0];
                            if (v402)
                            {
                              if (v402 < 1)
                              {
                                v521 = 0;
                                goto LABEL_837;
                              }

                              v403 = *&v570.f64[1];
                              goto LABEL_836;
                            }
                          }

                          v402 = 0;
                          v521 = 0;
                          v403 = *&v570.f64[1];
                          if (v570.f64[1] <= 0.0)
                          {
LABEL_837:
                            *&v570.f64[0] = v521;
                            *&v570.f64[1] = v400.i64[0];
                            *v400.i64 = *v400.i64 + v521;
                            *v401.i64 = *v401.i64 - *v400.i64;
                            *(v13 + 333) = v401.i64[0];
                            sub_1D0E6A238(v586, v11 + 8, &v570, v401, v400);
                            v522 = v586[1];
                            *(v13 + 161) = v586[0];
                            *(v13 + 162) = v522;
                            *(v13 + 163) = v586[2];
                            *(v13 + 2632) = 0u;
                            trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(v13 + 352, &v581, v586);
                            if (LOBYTE(v586[1].f64[0]) == 1)
                            {
                              *(v13 + 168) = v586[0];
                            }

                            LOWORD(v568) = 13;
                            v585[0] = 3;
                            v523 = *(v13 + 2384);
                            v524 = *(v13 + 326);
                            v525 = *(v13 + 327);
                            v526 = *(v13 + 323);
                            v527 = *(v13 + 324);
                            trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v13, v524, v525, v583);
                            if ((SBYTE7(v583[1]) & 0x80u) == 0)
                            {
                              v528 = v583;
                            }

                            else
                            {
                              v528 = *&v583[0];
                            }

                            if (v562[254].i8[8] == 1)
                            {
                              v529 = *(v13 + 555);
                            }

                            else
                            {
                              v529 = -1;
                            }

                            cnprint::CNPrinter::Print(&v568, v585, "TrackRun-Lap-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,cur_dist_past_lap_m,%.1lf,lap_count,%d,last_lap_dist,%.2lf,raw_last_lap_dist,%.2lf,last_lap_split_s,%.1lf,workout_duration,%.1lf,workout_dist,%.1lf,raw_workout_dist,%.1lf,current_lane,%lu,last_lap_start_time,%.1lf", v523, *&v525 + v524, v527 + v526, v528, *(v13 + 336), *(v13 + 337), *v180->i64, v564, *(v13 + 1352), *(v13 + 334), *(v13 + 335), *(v13 + 333), *(v13 + 339), *(v13 + 340), *(v13 + 341), v529, *(v13 + 327) + *(v13 + 326) - *(v13 + 333));
                            if (SBYTE7(v583[1]) < 0)
                            {
                              operator delete(*&v583[0]);
                            }

LABEL_612:
                            v289 = v567;
                            if (*(v13 + 2736) == 1)
                            {
                              v409 = *(v13 + 1784);
                              v410 = *(v13 + 168);
                              *(v13 + 1720) = *(v13 + 167);
                              *(v13 + 1736) = v410;
                              v411 = *(v13 + 170);
                              *(v13 + 1752) = *(v13 + 169);
                              *(v13 + 1768) = v411;
                              v412 = *(v13 + 164);
                              *(v13 + 1656) = *(v13 + 163);
                              *(v13 + 1672) = v412;
                              v413 = *(v13 + 166);
                              *(v13 + 1688) = *(v13 + 165);
                              *(v13 + 1704) = v413;
                              v414 = *(v13 + 162);
                              *(v13 + 1624) = *(v13 + 161);
                              *(v13 + 1640) = v414;
                              if ((v409 & 1) == 0)
                              {
                                *(v13 + 1784) = 1;
                              }
                            }

LABEL_488:
                            if ((*(v13 + 1424) & 0x100) != 0)
                            {
                              v323 = *(v13 + 1424) & 0x1FF;
                            }

                            else
                            {
                              if (*(v13 + 816) != 1)
                              {
                                if ((*(v13 + 1561) & 1) == 0)
                                {
                                  *(v13 + 1561) = 1;
                                }

                                *(v13 + 1560) = 1;
                                goto LABEL_496;
                              }

                              v323 = *(v13 + 808) | 0x100;
                            }

                            *(v13 + 780) = v323;
LABEL_496:
                            if (*(v13 + 1520) == 1)
                            {
                              v324 = v289;
                              LOWORD(v581.f64[0]) = 13;
                              LOBYTE(v583[0]) = 3;
                              v325 = *(v13 + 2384);
                              v327 = *(v11 + 5);
                              v326 = *(v11 + 6);
                              v328 = (*(*v11 + 16))(v11);
                              v330 = v329;
                              trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v13, *(v11 + 5), *(v11 + 6), v586);
                              if (v586[1].f64[0] >= 0.0)
                              {
                                v331 = COERCE_DOUBLE(v586);
                              }

                              else
                              {
                                v331 = v586[0].f64[0];
                              }

                              if (*(v13 + 1536))
                              {
                                v332 = (v13 + 1528);
                              }

                              else
                              {
                                v332 = (v11 + 152);
                              }

                              if (*(v13 + 1552))
                              {
                                v333 = (v13 + 1544);
                              }

                              else
                              {
                                v333 = (v11 + 136);
                              }

                              if (*(v13 + 1561) == 1)
                              {
                                v334 = *(v13 + 1560);
                              }

                              else
                              {
                                v334 = 255;
                              }

                              v337 = sqrt((*v572.i64 - ClosestPointOnRing) * (*v572.i64 - ClosestPointOnRing) + 0.0 + (*&v572.i64[1] - v300) * (*&v572.i64[1] - v300));
                              v338 = -1.0;
                              if (*(v13 + 2736) == 1)
                              {
                                v338 = *(v13 + 331);
                              }

                              cnprint::CNPrinter::Print(&v581, v583, "TrackRun-Mat-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,courseUnc,%.2lf,speed,%.2lf,speedUnc,%.2lf,hunc,%.1lf,altitude,%.1lf,vunc,%.1lf,type,%d,track_prox,%d,dist_to_lane_,%.1lf,matched_lane_num,%d,lane_est,%d,lane_count,%hhu,lane_width,%.2lf,odo_valid,%d,odo,%.1lf,odo_dd,%.1lf,odo_dd_unc,%.1lf,odo_diff,%.1lf,odo_dd_diff,%.1lf,current_lap_distance,%.1lf", v325, v326 + v327, v330 + v328, *&v331, *(v13 + 188), *(v13 + 189), *v332, *(v11 + 20), *(v11 + 21), *(v11 + 22), *v333, *(v11 + 16), *(v11 + 18), *(v11 + 104), LODWORD(v575[3]), v337, v324 + 1, v334, *(v13 + 1496), *(*(v565 + 5) + 72 * v324 + 64), *(v13 + 1584), *(v13 + 199), *(v13 + 200), *(v13 + 201), *(v13 + 199) - *(v11 + 24), *(v13 + 200) - *(v11 + 25), v338);
                              if (SHIBYTE(v586[1].f64[0]) < 0)
                              {
                                operator delete(*&v586[0].f64[0]);
                              }
                            }

                            else
                            {
                              strcpy(v586, "\r");
                              LOBYTE(v581.f64[0]) = 4;
                              v335 = (*(*v11 + 16))(v11);
                              cnprint::CNPrinter::Print(v586, &v581, "#tre_ao,Warning,MatchedPosition,time,%.3lf,current_position_east_north_m,latlng,%.8lf,%.8lf,track_position_ has no value.", v336 + v335, *(v11 + 14), *(v11 + 15));
                            }

                            goto LABEL_596;
                          }

LABEL_836:
                          v521 = v402;
                          v400.i64[0] = v403;
                          goto LABEL_837;
                        }

                        if (!*(v13 + 2457) || *(v11 + 21) < 0.05 && (*(v13 + 520) != 1 || *(v13 + 512) - 1 <= 1))
                        {
                          goto LABEL_559;
                        }
                      }

                      else
                      {
                        if ((*(v13 + 2568) & 1) == 0)
                        {
                          goto LABEL_594;
                        }

                        v357 = v13 + 2568;
                        if (*(v13 + 2456))
                        {
                          goto LABEL_584;
                        }
                      }

                      *(v13 + 2456) = 1;
                      LOWORD(v581.f64[0]) = 13;
                      LOBYTE(v583[0]) = 3;
                      if (*(v13 + 816) == 1)
                      {
                        v373 = *(v13 + 808);
                      }

                      else
                      {
                        v373 = -1;
                      }

                      v376 = *(v13 + 2384);
                      v377 = *(v13 + 326);
                      v378 = *(v13 + 327);
                      v379 = *(v13 + 323);
                      v380 = *(v13 + 324);
                      trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v13, v377, v378, v586);
                      if (v586[1].f64[0] >= 0.0)
                      {
                        v381 = COERCE_DOUBLE(v586);
                      }

                      else
                      {
                        v381 = v586[0].f64[0];
                      }

                      if (*(v13 + 816) == 1)
                      {
                        v382 = *(v13 + 808);
                      }

                      else
                      {
                        v382 = -1;
                      }

                      cnprint::CNPrinter::Print(&v581, v583, "TrackRun-Start-%u hint:%d,viewType,MultiCoordinatePolyline,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,latitude1,%.7lf,longitude1,%.7lf,lane_hint,%d", v376, v373, *&v378 + v377, v380 + v379, *&v381, *(v13 + 299), *(v13 + 300), *(v13 + 301), *(v13 + 302), v382);
                      if (SHIBYTE(v586[1].f64[0]) < 0)
                      {
                        operator delete(*&v586[0].f64[0]);
                      }

                      if (*v357)
                      {
                        goto LABEL_584;
                      }

LABEL_594:
                      if (cnprint::CNPrinter::GetLogLevel(v304) <= 1)
                      {
                        strcpy(v586, "\r");
                        LOBYTE(v581.f64[0]) = 1;
                        cnprint::CNPrinter::Print(v586, &v581, "#tre_ao,starting line not populated. Cannot proceed");
                      }

                      goto LABEL_596;
                    }
                  }

LABEL_537:
                  if (*(v11 + 184) == 1)
                  {
                    v307 = *(v11 + 12);
                    v185[76] = v307;
                    v307.i64[0] = *(v11 + 26);
                    *(v13 + 201) = v307.i64[0];
                    *(v13 + 792) = 1;
                  }

                  v344 = *(v13 + 2736);
                  if (v344 == 1)
                  {
                    if (*(v13 + 1416) == 1 && *(v13 + 1241) == 4)
                    {
                      v304 = CNTimeSpan::operator-(v11 + 2, v13 + 172, v307, v312);
                      v312.f64[0] = v304;
                      *v307.i64 = v346 + v304;
                      *(v13 + 329) = v307.i64[0];
                    }

                    else
                    {
                      v347.f64[0] = *(v13 + 329);
                      *(v13 + 329) = 0;
                      v348 = *(v11 + 25);
                      v347.f64[1] = v348;
                      *(v13 + 165) = vaddq_f64(v347, *(v13 + 165));
                      *(v13 + 332) = v348 + *(v13 + 332);
                      v312 = vdupq_lane_s64(*&v348, 0);
                      v307 = vaddq_f64(v312, *(v13 + 170));
                      *(v13 + 170) = v307;
                    }

                    v344 = 1;
                  }

                  goto LABEL_545;
                }

                if (*(v293 + 184) > *(v13 + 2216))
                {
                  goto LABEL_450;
                }
              }

              else
              {
                v295 = v289 + 1;
              }

              *(v13 + 555) = v295;
              v296 = 1;
              v562[254].i8[8] = 1;
              *(v13 + 2216) = 0;
              goto LABEL_454;
            }

            v288 = v285 - 1;
            if (v288 >= *(v184 + 96) - 1)
            {
              v289 = *(v184 + 96) - 1;
            }

            else
            {
              v289 = v288;
            }

            goto LABEL_440;
          }
        }

        if (!v563)
        {
          goto LABEL_596;
        }

        if (*(&v575[3] + 1) < 50.0)
        {
          strcpy(v593, "\r");
          LOBYTE(v581.f64[0]) = 3;
          v212 = *(v13 + 2384);
          v214 = *(v11 + 5);
          v213 = *(v11 + 6);
          v215 = (*(*v11 + 16))(v11, *(&v575[3] + 1));
          v217 = v216;
          trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v13, *(v11 + 5), *(v11 + 6), v586);
          if (v586[1].f64[0] >= 0.0)
          {
            v218 = COERCE_DOUBLE(v586);
          }

          else
          {
            v218 = v586[0].f64[0];
          }

          if (*(v13 + 1561) == 1)
          {
            v219 = *(v13 + 1560);
          }

          else
          {
            v219 = 255;
          }

          v220 = -1.0;
          if (*(v13 + 2736) == 1)
          {
            v220 = *(v13 + 331);
          }

          if (*(v13 + 1416) == 1 && (*(v13 + 1241) - 2) <= 3u)
          {
            v221 = dword_1D0EC1EB0[(*(v13 + 1241) - 2)];
          }

          else
          {
            v221 = 0;
          }

          cnprint::CNPrinter::Print(v593, &v581, "TrackRun-Mat-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,courseUnc,%.2lf,speed,%.2lf,speedUnc,%.2lf,hunc,%.1lf,altitude,%.1lf,vunc,%.1lf,type,%d,track_prox,%d,dist_to_outer_lane_,%.1lf,lane_est,%d,lane_count,%hhu,current_lap_distance,%.1lf,in_a_workout,%d,use_sparse_data,%d", v212, v213 + v214, v217 + v215, *&v218, *(v11 + 14), *(v11 + 15), *(v11 + 19), *(v11 + 20), *(v11 + 21), *(v11 + 22), *(v11 + 17), *(v11 + 16), *(v11 + 18), *(v11 + 104), LODWORD(v575[3]), v169, v219, *(v13 + 1496), v220, v221, v117);
          if (SHIBYTE(v586[1].f64[0]) < 0)
          {
            operator delete(*&v586[0].f64[0]);
          }
        }

        if (v153 <= *(*(v13 + 35) + 112))
        {
          goto LABEL_596;
        }

        if (*(v13 + 416))
        {
          v586[0].f64[0] = v554;
          sub_1D0E62CA0(v586);
          *(v13 + 416) = 0;
          if ((*(v13 + 2280) & 1) == 0)
          {
            goto LABEL_295;
          }
        }

        else if ((*(v13 + 2280) & 1) == 0)
        {
          goto LABEL_596;
        }

        *(v13 + 274) = &unk_1F4CF0B60;
        *&v586[0].f64[0] = v13 + 2200;
        sub_1D0E62CA0(v586);
        *(v13 + 2280) = 0;
LABEL_295:
        strcpy(v586, "\r");
        v593[0] = 3;
        v222 = (*(*v11 + 16))(v11);
        cnprint::CNPrinter::Print(v586, v593, "#tre_ao,time,%.3lf,user is no longer near any track, clearing non-sparse track data.", v223 + v222);
        goto LABEL_596;
      }

LABEL_187:
      BYTE9(v575[22]) = 1;
      goto LABEL_188;
    }

    if (v153 >= v155 + *(v161 + 3))
    {
      v166 = 1;
    }

    else
    {
      v166 = v121;
    }

    if (v166)
    {
      if (v153 < v155 + v159)
      {
LABEL_169:
        LODWORD(v575[3]) = 2;
        goto LABEL_185;
      }

      LODWORD(v575[3]) = 1;
      if (v121 && *(v13 + 2184) == 1 && *(v13 + 466) != 1)
      {
        trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(v13);
      }
    }

    else
    {
      LODWORD(v575[3]) = 3;
      if (*(v13 + 1104) == 1 && *(v13 + 1048) == 1 && *(v13 + 880) == 1 && sub_1D0B9D420(v13 + 111, v11 + 2) && (!*(v13 + 928) || sub_1D0B8E6A8(v13 + 117, v11 + 2)))
      {
        v586[0] = *(v13 + 64);
        if (trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(v13, v586))
        {
          v168 = v565;
          if ((v566 & 1) == 0)
          {
            v168 = (*(v565 + 6) - 72);
          }

          if (sub_1D0B85938(v586[0].f64, v168, v167) <= *(*(v13 + 35) + 248) * *(v13 + 130) * (*(*(v13 + 35) + 248) * *(v13 + 130)))
          {
            goto LABEL_169;
          }
        }
      }
    }

LABEL_185:
    if (!v566 || (LODWORD(v575[3]) - 3) > 1)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  *&v554 = v13 + 392;
  v67 = *(v13 + 53) + 104 * v50;
  v68 = *v67;
  v69 = *(v67 + 8);
  v565 = v67;
  if (*v67 != v69)
  {
    v70 = *v67;
    do
    {
      if ((*v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v70[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_82;
      }

      v70 += 2;
    }

    while (v70 != v69);
  }

  if ((v69 - v68) < 0x40)
  {
    goto LABEL_82;
  }

  v71 = 0;
  v72 = *v67;
  do
  {
    v73 = v71;
    if (v72 != v69)
    {
      v74 = *v72;
      v75 = fabs(*v72);
      v76 = v72;
      while (1)
      {
        v77 = *v76;
        if (*v76 != v74)
        {
          if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          v78 = fabs(v77);
          v79 = vabdd_f64(v77, v74);
          if (v78 < v75)
          {
            v78 = v75;
          }

          if (v78 < 1.0)
          {
            v78 = 1.0;
          }

          i.i64[0] = 0x3CB0000000000000;
          if (v79 > v78 * 2.22044605e-16)
          {
            break;
          }
        }

        v80 = v76[1];
        v81 = v72[1];
        if (v80 != v81)
        {
          if ((*&v80 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          v83 = fabs(v80);
          v84 = fabs(v81);
          v85 = vabdd_f64(v80, v81);
          if (v83 >= v84)
          {
            v86 = v83;
          }

          else
          {
            v86 = v84;
          }

          if (v86 < 1.0)
          {
            v86 = 1.0;
          }

          i.i64[0] = 0x3CB0000000000000;
          if (v85 > v86 * 2.22044605e-16)
          {
            break;
          }
        }

        v76 += 2;
        if (v76 == v69)
        {
          goto LABEL_81;
        }
      }

      v72 = v76;
    }

    if (v72 == v69)
    {
      break;
    }

    v71 = v73 + 1;
  }

  while (v73 < 4);
LABEL_81:
  if (v73 < 3)
  {
    goto LABEL_82;
  }

  if (v68 == v69)
  {
    __assert_rtn("front", "range.hpp", 121, "!boost::empty(rng)");
  }

  v138 = *(v69 - 2);
  v139 = *v68;
  if (*v68 != v138)
  {
    if ((*&v139 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v138 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_82;
    }

    v194 = fabs(v139);
    v195 = fabs(v138);
    v196 = vabdd_f64(v139, v138);
    if (v194 < v195)
    {
      v194 = v195;
    }

    if (v194 < 1.0)
    {
      v194 = 1.0;
    }

    if (v196 > v194 * 2.22044605e-16)
    {
      goto LABEL_82;
    }
  }

  v140 = v68[1];
  v141 = *(v69 - 1);
  if (v140 != v141)
  {
    if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v141 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_82;
    }

    v197 = fabs(v140);
    v198 = fabs(v141);
    v199 = vabdd_f64(v140, v141);
    if (v197 < v198)
    {
      v197 = v198;
    }

    if (v197 < 1.0)
    {
      v197 = 1.0;
    }

    if (v199 > v197 * 2.22044605e-16)
    {
      goto LABEL_82;
    }
  }

  v142 = v68 + 2;
  if (v68 + 2 != v69)
  {
    v143 = fabs(v139);
    v144 = fabs(v140);
    i.i64[0] = 1.0;
    v145 = v68 + 2;
    while (1)
    {
      v146 = *v145;
      if (*v145 != v139)
      {
        if ((*&v139 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        v147 = fabs(v146);
        v148 = vabdd_f64(v146, v139);
        if (v147 < v143)
        {
          v147 = v143;
        }

        if (v147 < 1.0)
        {
          v147 = 1.0;
        }

        if (v148 > v147 * 2.22044605e-16)
        {
          break;
        }
      }

      v149 = v145[1];
      if (v149 != v140)
      {
        if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v149 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        v150 = fabs(v149);
        v151 = vabdd_f64(v149, v140);
        if (v150 < v144)
        {
          v150 = v144;
        }

        if (v150 < 1.0)
        {
          v150 = 1.0;
        }

        if (v151 > v150 * 2.22044605e-16)
        {
          break;
        }
      }

      v145 += 2;
      if (v145 == v69)
      {
        goto LABEL_642;
      }
    }

    if (v145 != v69)
    {
      v224 = v145 + 2;
      if (v145 + 2 != v69)
      {
        v45.n128_f64[0] = fabs(v146);
        while (1)
        {
          v225 = *v224;
          if (*v224 != v146)
          {
            if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v225 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            v226 = fabs(v225);
            v227 = vabdd_f64(v225, v146);
            if (v226 < v45.n128_f64[0])
            {
              v226 = v45.n128_f64[0];
            }

            if (v226 < 1.0)
            {
              v226 = 1.0;
            }

            i.i64[0] = 0x3CB0000000000000;
            if (v227 > v226 * 2.22044605e-16)
            {
              break;
            }
          }

          v228 = v224[1];
          v229 = v145[1];
          if (v228 != v229)
          {
            if ((*&v228 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            v231 = fabs(v228);
            v232 = fabs(v229);
            v233 = vabdd_f64(v228, v229);
            if (v231 >= v232)
            {
              v234 = v231;
            }

            else
            {
              v234 = v232;
            }

            if (v234 < 1.0)
            {
              v234 = 1.0;
            }

            i.i64[0] = 0x3CB0000000000000;
            if (v233 > v234 * 2.22044605e-16)
            {
              break;
            }
          }

          v224 += 2;
          if (v224 == v69)
          {
            goto LABEL_642;
          }
        }

        if (v224 != v69)
        {
          v10 = 1.0;
          v235 = v68;
          v557 = v69 - 2;
          do
          {
            v236 = v145;
            v145 = v224;
            v586[0].f64[0] = 1.0;
            v237 = v236;
            v238 = v235;
            v45.n128_f64[0] = sub_1D0B827D0(v224, v236, v235, v586[0].f64, v45);
            if (v45.n128_f64[0] == 0.0 || (v45.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && (v45.n128_f64[0] = fabs(v45.n128_f64[0]), v45.n128_f64[0] <= v586[0].f64[0] * 2.22044605e-16))
            {
              v239 = v237[1];
              v240 = v145[1] - v239;
              v241 = *v237 - *v145;
              if (v241 == 0.0 || COERCE_UNSIGNED_INT64(fabs(*v237 - *v145)) <= 0x7FEFFFFFFFFFFFFFLL && ((v244 = fabs(v241), v244 >= 1.0) ? (v245 = v244) : (v245 = 1.0), *i.i64 = v245 * 2.22044605e-16, v244 <= *i.i64))
              {
                if (v240 == 0.0)
                {
                  goto LABEL_82;
                }

                if (COERCE_UNSIGNED_INT64(fabs(v145[1] - v239)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v242 = fabs(v240);
                  v243 = v242 >= 1.0 ? v242 : 1.0;
                  *i.i64 = v243 * 2.22044605e-16;
                  if (v242 <= *i.i64)
                  {
                    goto LABEL_82;
                  }
                }
              }

              v45.n128_f64[0] = v239 * v240 - v241 * *v237 + v238[1] * -v240 + v241 * *v238;
              if (v45.n128_f64[0] <= 0.0)
              {
                goto LABEL_82;
              }
            }

            v224 = v145;
            if (v145 != v69)
            {
              v224 = v145 + 2;
              if (v145 + 2 == v69)
              {
                break;
              }

              v45.n128_f64[0] = *v145;
              v246 = fabs(*v145);
              while (1)
              {
                v247 = *v224;
                if (*v224 != v45.n128_f64[0])
                {
                  if ((v45.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v247 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  v248 = fabs(v247);
                  v249 = vabdd_f64(v247, v45.n128_f64[0]);
                  if (v248 < v246)
                  {
                    v248 = v246;
                  }

                  if (v248 < 1.0)
                  {
                    v248 = 1.0;
                  }

                  if (v249 > v248 * 2.22044605e-16)
                  {
                    break;
                  }
                }

                v250 = v224[1];
                v251 = v145[1];
                if (v250 != v251)
                {
                  if ((*&v250 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v251 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  v253 = fabs(v250);
                  *i.i64 = fabs(v251);
                  v254 = vabdd_f64(v250, v251);
                  if (v253 >= *i.i64)
                  {
                    v255 = v253;
                  }

                  else
                  {
                    v255 = *i.i64;
                  }

                  if (v255 < 1.0)
                  {
                    v255 = 1.0;
                  }

                  if (v254 > v255 * 2.22044605e-16)
                  {
                    break;
                  }
                }

                v224 += 2;
                if (v224 == v69)
                {
                  goto LABEL_367;
                }
              }
            }

            v235 = v237;
          }

          while (v224 != v69);
LABEL_367:
          v45.n128_f64[0] = *v68;
          v256 = *v557;
          if (*v68 == *v557)
          {
            goto LABEL_864;
          }

          if ((v45.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v256 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v416 = fabs(v45.n128_f64[0]);
            v417 = fabs(v256);
            v418 = vabdd_f64(v45.n128_f64[0], v256);
            if (v416 < v417)
            {
              v416 = v417;
            }

            if (v416 < 1.0)
            {
              v416 = 1.0;
            }

            if (v418 <= v416 * 2.22044605e-16)
            {
LABEL_864:
              v257 = v68[1];
              v258 = *(v69 - 1);
              v259 = fabs(v257);
              if (v257 == v258)
              {
                goto LABEL_369;
              }

              if ((*&v257 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v258 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v419 = fabs(v258);
                v420 = vabdd_f64(v257, v258);
                if (v259 >= v419)
                {
                  v419 = v259;
                }

                if (v419 < 1.0)
                {
                  v419 = 1.0;
                }

                *i.i64 = v419 * 2.22044605e-16;
                if (v420 <= *i.i64)
                {
LABEL_369:
                  v260 = v68;
                  if (v557 != v68)
                  {
                    v261 = fabs(v256);
                    v262 = fabs(v258);
                    v260 = v69 - 2;
                    v263 = v69 - 2;
                    while (1)
                    {
                      v264 = *(v263 - 2);
                      v263 -= 2;
                      v265 = v264;
                      if (v264 != v256)
                      {
                        if ((*&v256 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v265 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          break;
                        }

                        v266 = fabs(v265);
                        v267 = vabdd_f64(v265, v256);
                        if (v266 < v261)
                        {
                          v266 = v261;
                        }

                        if (v266 < 1.0)
                        {
                          v266 = 1.0;
                        }

                        if (v267 > v266 * 2.22044605e-16)
                        {
                          break;
                        }
                      }

                      v268 = *(v260 - 1);
                      if (v268 != v258)
                      {
                        if ((*&v258 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v268 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          break;
                        }

                        v269 = fabs(v268);
                        v270 = vabdd_f64(v268, v258);
                        if (v269 < v262)
                        {
                          v269 = v262;
                        }

                        if (v269 < 1.0)
                        {
                          v269 = 1.0;
                        }

                        if (v270 > v269 * 2.22044605e-16)
                        {
                          break;
                        }
                      }

                      v260 = v263;
                      if (v263 == v68)
                      {
                        v260 = v68;
                        break;
                      }
                    }
                  }

                  v271 = fabs(v45.n128_f64[0]);
                  while (1)
                  {
                    v272 = *v142;
                    if (*v142 != v45.n128_f64[0])
                    {
                      if ((v45.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v272 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      v273 = fabs(v272);
                      v274 = vabdd_f64(v272, v45.n128_f64[0]);
                      if (v273 < v271)
                      {
                        v273 = v271;
                      }

                      if (v273 < 1.0)
                      {
                        v273 = 1.0;
                      }

                      if (v274 > v273 * 2.22044605e-16)
                      {
                        break;
                      }
                    }

                    v275 = v142[1];
                    if (v275 != v257)
                    {
                      if ((*&v257 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v275 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      v276 = fabs(v275);
                      v277 = vabdd_f64(v275, v257);
                      if (v276 < v259)
                      {
                        v276 = v259;
                      }

                      if (v276 < 1.0)
                      {
                        v276 = 1.0;
                      }

                      if (v277 > v276 * 2.22044605e-16)
                      {
                        break;
                      }
                    }

                    v142 += 2;
                    if (v142 == v69)
                    {
                      v142 = v69;
                      break;
                    }
                  }

                  v586[0].f64[0] = 1.0;
                  v278 = sub_1D0B827D0(v142, v68, v260 - 2, v586[0].f64, v45);
                  if (v278 == 0.0 || (*&v278 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v278) <= v586[0].f64[0] * 2.22044605e-16)
                  {
                    v279 = v68[1];
                    v280 = v142[1] - v279;
                    v281 = *v68 - *v142;
                    if (v281 == 0.0)
                    {
                      goto LABEL_865;
                    }

                    if (COERCE_UNSIGNED_INT64(fabs(*v68 - *v142)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      v421 = fabs(v281);
                      v422 = 1.0;
                      if (v421 >= 1.0)
                      {
                        v422 = v421;
                      }

                      *i.i64 = v422 * 2.22044605e-16;
                      if (v421 <= *i.i64)
                      {
LABEL_865:
                        if (v280 == 0.0)
                        {
                          goto LABEL_82;
                        }

                        if (COERCE_UNSIGNED_INT64(fabs(v142[1] - v279)) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          v282 = fabs(v280);
                          v283 = 1.0;
                          if (v282 >= 1.0)
                          {
                            v283 = v282;
                          }

                          *i.i64 = v283 * 2.22044605e-16;
                          if (v282 <= *i.i64)
                          {
                            goto LABEL_82;
                          }
                        }
                      }
                    }

                    if (v279 * v280 - v281 * *v68 + *(v260 - 1) * -v280 + v281 * *(v260 - 2) <= 0.0)
                    {
                      goto LABEL_82;
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

LABEL_642:
  v576 = 0uLL;
  v577 = 0;
  v423 = *v565;
  v424 = *(v565 + 1);
  if (*v565 == v424)
  {
    v430 = 0.0;
  }

  else
  {
    v425 = (v423 + 2);
    v426 = *v423;
    i = *v423;
    if (v423 + 2 != v424)
    {
      do
      {
        v427 = *v425++;
        i = vbslq_s8(vcgtq_f64(i, v427), v427, i);
        v426 = vbslq_s8(vcgtq_f64(v427, v426), v427, v426);
      }

      while (v425 != v424);
    }

    v428 = vabdq_f64(v426, i);
    v429 = v428.f64[1];
    if (v428.f64[1] < v428.f64[0])
    {
      v429 = v428.f64[0];
    }

    v10 = *&i.i64[1];
    v430 = 1.0;
    if (v429 != 0.0)
    {
      v431 = v429 == INFINITY;
      if (v429 >= 1.0)
      {
        v432 = v429;
      }

      else
      {
        v432 = 1.0;
      }

      if (v429 > v432 * 2.22044605e-16)
      {
        v431 = 1;
      }

      if (v429 != INFINITY && v429 < 10000000.0 && v431)
      {
        v559 = i.i64[0];
        v434 = 10000000.0 / v429 + 0.5;
        sub_1D0B828E4(2 * (v434 >= 9.22337204e18));
        v435 = vcvtmd_s64_f64(v434);
        if (v435 < 1)
        {
          v532 = "factor >= 1";
          v533 = 86;
          v534 = "get_rescale_policy.hpp";
          v535 = "scale_box_to_integer_range";
LABEL_854:
          __assert_rtn(v535, v534, v533, v532);
        }

        v430 = v435;
        v423 = *v565;
        v424 = *(v565 + 1);
        i.i64[0] = v559;
      }
    }
  }

  *v593 = i.i64[0];
  *&v593[8] = v10;
  *&v593[16] = vdupq_n_s64(0xFFFFFFFFFFB3B4C0);
  v594 = v430;
  LOBYTE(v568) = 0;
  v578 = 0.0;
  v579 = 0.0;
  v580 = 0;
  if ((v424 - v423) < 0x11 || v424 == v423)
  {
    v486 = 0.0;
    v487 = 0.0;
    v488 = *&v565;
    goto LABEL_749;
  }

  v586[4].f64[0] = NAN;
  v586[4].f64[1] = NAN;
  v586[5] = 0uLL;
  LOBYTE(v587) = 0;
  *(&v587 + 1) = -1;
  LOWORD(v588) = 0;
  v436.f64[0] = NAN;
  v436.f64[1] = NAN;
  v586[2] = vnegq_f64(v436);
  v586[3] = vnegq_f64(0);
  v586[0].f64[0] = 0.0;
  memset(&v586[0].f64[1], 255, 24);
  v437 = (v423[1] - v10) * v430 + -5000000.0;
  if (v437 >= 0.0)
  {
    v438 = 0.5;
  }

  else
  {
    v438 = -0.5;
  }

  v439 = v437 + v438;
  if (v437 + v438 <= -9.22337204e18)
  {
    v440 = 1;
  }

  else
  {
    v440 = 2 * (v437 + v438 >= 9.22337204e18);
  }

  sub_1D0B828E4(v440);
  v441 = *&v593[16] + (*v423 - *v593) * v594;
  if (v441 >= 0.0)
  {
    v442 = 0.5;
  }

  else
  {
    v442 = -0.5;
  }

  v443 = v441 + v442;
  if (v441 + v442 <= -9.22337204e18)
  {
    v444 = 1;
  }

  else
  {
    v444 = 2 * (v441 + v442 >= 9.22337204e18);
  }

  sub_1D0B828E4(v444);
  v445 = v423 + 2;
  if (v423 + 2 == v424)
  {
    v487 = 0.0;
    v486 = 0.0;
    v519 = 0;
    goto LABEL_831;
  }

  v536 = v13;
  v538 = 0;
  v542 = 0;
  v547 = 0;
  v555 = 0;
  v560 = 0;
  v446 = 0.0;
  v550 = 0;
  v541 = (v424 - v423) >> 4;
  v447 = ceil(v443);
  v448 = floor(v443);
  if (v443 >= 0.0)
  {
    v447 = v448;
  }

  v449 = v447;
  v450 = ceil(v439);
  v451 = floor(v439);
  if (v439 >= 0.0)
  {
    v450 = v451;
  }

  v452 = v450;
  v545 = 0x7FFFFFFFFFFFFFFFLL;
  *&v453 = -0.0;
  v454.f64[0] = NAN;
  v454.f64[1] = NAN;
  v540 = vnegq_f64(v454);
  v539 = vnegq_f64(0);
  v548 = 1;
  *&v455 = -0.0;
  v543 = v424;
  v544 = 0x7FFFFFFFFFFFFFFFLL;
  v546 = 1;
  do
  {
    v456 = *&v449;
    v457 = *&v452;
    v458 = v560;
    v459 = v555;
    v552 = v445;
    v460 = *&v593[24] + (v445[1] - *&v593[8]) * v594;
    if (v460 >= 0.0)
    {
      v461 = 0.5;
    }

    else
    {
      v461 = -0.5;
    }

    v462 = v460 + v461;
    if (v460 + v461 <= -9.22337204e18)
    {
      v463 = 1;
    }

    else
    {
      v463 = 2 * (v460 + v461 >= 9.22337204e18);
    }

    sub_1D0B828E4(v463);
    v464 = ceil(v462);
    v465 = floor(v462);
    if (v462 >= 0.0)
    {
      v466 = v465;
    }

    else
    {
      v466 = v464;
    }

    v467 = *&v593[16] + (*v552 - *v593) * v594;
    if (v467 >= 0.0)
    {
      v468 = 0.5;
    }

    else
    {
      v468 = -0.5;
    }

    v469 = v467 + v468;
    if (v467 + v468 <= -9.22337204e18)
    {
      v470 = 1;
    }

    else
    {
      v470 = 2 * (v467 + v468 >= 9.22337204e18);
    }

    sub_1D0B828E4(v470);
    v452 = v466;
    v471 = ceil(v469);
    v472 = floor(v469);
    if (v469 >= 0.0)
    {
      v471 = v472;
    }

    v449 = v471;
    if (*&v456 <= v471)
    {
      v473 = 0;
    }

    else
    {
      v473 = -1;
    }

    if (*&v456 < v471)
    {
      v474 = 1;
    }

    else
    {
      v474 = v473;
    }

    if (*&v457 <= v452)
    {
      v475 = 0;
    }

    else
    {
      v475 = -1;
    }

    if (*&v457 < v452)
    {
      v475 = 1;
    }

    v555 = v475;
    v560 = v474;
    v476 = *&v453;
    if (v474)
    {
      goto LABEL_715;
    }

    if (*&v456 != v449 || *&v457 != v452)
    {
      v560 = 0;
LABEL_715:
      v478 = 0;
      if (v446 == 0.0)
      {
        goto LABEL_727;
      }

      goto LABEL_716;
    }

    v478 = 1;
    v560 = -99;
    v555 = -99;
    if (v446 == 0.0)
    {
      goto LABEL_727;
    }

LABEL_716:
    if (v560 != v458 || *&v446 > 0xAuLL || v555 != v459)
    {
      if ((v547 & 1) == 0)
      {
        v538 = 0xEEEEEEEEEEEEEEEFLL * ((*&v579 - *&v578) >> 3);
      }

      sub_1D0B8295C(&v578, v586);
      *(&v586[4] + 8) = xmmword_1D0E7A2D0;
      v586[0].f64[0] = 0.0;
      v586[2] = v540;
      v586[3] = v539;
      LOWORD(v588) = 0;
LABEL_727:
      *&v586[4].f64[0] = v548 - 1;
      v586[0].f64[1] = 0.0;
      v586[1].f64[0] = NAN;
      v586[1].f64[1] = NAN;
      LOBYTE(v587) = v478;
      *(&v587 + 1) = v550;
      *&v586[5].f64[1] = v541;
      v481 = v543;
      if (!(v478 & 1 | ((v546 & 1) == 0)))
      {
        v546 = 0;
        LOBYTE(v588) = 1;
      }

      *&v586[0].f64[0] = __PAIR64__(v555, v560);
      v586[2].f64[0] = v456;
      v586[2].f64[1] = v457;
      v482 = v456;
      v586[3].f64[0] = v456;
      v586[3].f64[1] = v457;
      if (*&v456 > v449)
      {
        *&v586[2].f64[0] = v449;
        v482 = *&v449;
      }

      if (*&v456 < v449)
      {
        *&v586[3].f64[0] = v449;
        v456 = *&v449;
      }

      v544 = *&v482;
      v483 = *&v457;
      if (*&v457 > v452)
      {
        *&v586[2].f64[1] = v466;
        v483 = v466;
      }

      v545 = v483;
      v446 = 0.0;
      v542 = v478;
      v547 = v478;
      if (*&v457 < v452)
      {
        goto LABEL_736;
      }

      goto LABEL_737;
    }

    v485 = v544;
    v484 = v545;
    if (v544 >= v449)
    {
      v485 = v471;
    }

    if (v455 <= v449)
    {
      *&v456 = v471;
    }

    else
    {
      v456 = *&v455;
    }

    if (v545 >= v452)
    {
      v484 = v466;
    }

    v544 = v485;
    v545 = v484;
    *&v586[2].f64[0] = v485;
    *&v586[2].f64[1] = v484;
    v586[3].f64[0] = v456;
    v457 = v476;
    v481 = v543;
    if (*&v476 < v452)
    {
LABEL_736:
      *&v586[3].f64[1] = v466;
      *&v457 = v466;
    }

LABEL_737:
    ++*&v446;
    v550 += v478 ^ 1u;
    v445 = v552 + 2;
    *&v586[4].f64[1] = v548;
    v586[5].f64[0] = v446;
    ++v548;
    *&v453 = v457;
    *&v455 = v456;
  }

  while (v552 + 2 != v481);
  v13 = v536;
  v519 = v538;
  if ((v542 & 1) == 0)
  {
    v519 = 0xEEEEEEEEEEEEEEEFLL * ((*&v579 - *&v578) >> 3);
  }

  sub_1D0B8295C(&v578, v586);
  v487 = v578;
  v486 = v579;
LABEL_831:
  v488 = *&v565;
  if (v519 < 0xEEEEEEEEEEEEEEEFLL * ((*&v486 - *&v487) >> 3))
  {
    v520 = (*&v487 + 120 * v519);
    if ((v520[12] & 1) == 0)
    {
      *(v520 + 113) = 1;
    }
  }

LABEL_749:
  v586[0].f64[0] = v488;
  *&v586[0].f64[1] = v585;
  *&v586[1].f64[0] = v593;
  *&v586[1].f64[1] = &v576;
  *&v586[2].f64[0] = &v568;
  LODWORD(v586[2].f64[1]) = 0;
  BYTE4(v586[2].f64[1]) = 1;
  if (0xEEEEEEEEEEEEEEEFLL * ((*&v486 - *&v487) >> 3) < 0x11)
  {
    while (*&v487 != *&v486)
    {
      v516 = *&v487;
      *&v487 += 120;
      if (*&v487 != *&v486)
      {
        v517 = *&v487;
        do
        {
          if (*(v516 + 6) >= *(v517 + 4) && *(v516 + 4) <= *(v517 + 6))
          {
            v518 = *(v516 + 7) >= *(v517 + 5) && *(v516 + 5) <= *(v517 + 7);
            if (v518 && (v516[24] & 1) == 0 && (v517[24] & 1) == 0)
            {
              if (!sub_1D0B82AC0(SLODWORD(v586[2].f64[1]), **&v586[0].f64[0], *(*&v586[0].f64[0] + 8), v516, SLODWORD(v586[2].f64[1]), **&v586[0].f64[0], *(*&v586[0].f64[0] + 8), v517, SBYTE4(v586[2].f64[1]), *&v586[0].f64[1], *&v586[1].f64[0], *&v586[1].f64[1], *&v586[2].f64[0]))
              {
                goto LABEL_798;
              }

              v486 = v579;
            }
          }

          v517 += 30;
        }

        while (v517 != *&v486);
      }
    }
  }

  else
  {
    memset(v583, 0, 24);
    v489.f64[0] = NAN;
    v489.f64[1] = NAN;
    v581 = vnegq_f64(v489);
    v582 = vnegq_f64(0);
    v570.f64[0] = v487;
    if (*&v487 != *&v486)
    {
      v549 = v11;
      v551 = v486;
      v537 = v13;
      v490 = 0x7FFFFFFFFFFFFFFFLL;
      v491 = 0x8000000000000000;
      v492 = 0x8000000000000000;
      v493 = 0x7FFFFFFFFFFFFFFFLL;
      v494 = 0x8000000000000000;
      v495 = 0x7FFFFFFFFFFFFFFFLL;
      v496 = 0x8000000000000000;
      v497 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v553 = v497;
        v556 = v492;
        v561 = v493;
        v499 = *(*&v487 + 32);
        v498 = *(*&v487 + 40);
        v500 = *(*&v487 + 48);
        v501 = *(*&v487 + 56);
        sub_1D0E6BC48(v583, &v570);
        if (v498 <= v494)
        {
          v502 = v494;
        }

        else
        {
          v502 = v498;
        }

        if (v498 <= v494)
        {
          v503 = v491;
        }

        else
        {
          v503 = v498;
        }

        if (v498 >= v495)
        {
          v504 = v495;
        }

        else
        {
          v504 = v498;
        }

        if (v498 >= v495)
        {
          v505 = v490;
        }

        else
        {
          v505 = v498;
        }

        if (v499 <= v496)
        {
          v506 = v496;
        }

        else
        {
          v506 = v499;
        }

        v507 = v556;
        v508 = v561;
        if (v499 > v496)
        {
          v507 = v499;
        }

        v497 = v553;
        if (v499 < v553)
        {
          v497 = v499;
          v508 = v499;
        }

        if (v501 <= v502)
        {
          v491 = v503;
        }

        else
        {
          v491 = v501;
        }

        if (v501 <= v502)
        {
          v494 = v502;
        }

        else
        {
          v494 = v501;
        }

        if (v501 >= v504)
        {
          v490 = v505;
        }

        else
        {
          v490 = v501;
        }

        if (v501 >= v504)
        {
          v495 = v504;
        }

        else
        {
          v495 = v501;
        }

        if (v500 <= v506)
        {
          v492 = v507;
        }

        else
        {
          v492 = v500;
        }

        if (v500 <= v506)
        {
          v496 = v506;
        }

        else
        {
          v496 = v500;
        }

        if (v500 >= v497)
        {
          v493 = v508;
        }

        else
        {
          v493 = v500;
        }

        if (v500 < v497)
        {
          v497 = v500;
        }

        *&v487 += 120;
        v570.f64[0] = v487;
      }

      while (*&v487 != *&v551);
      *&v581.f64[0] = v493;
      *&v581.f64[1] = v490;
      *&v582.f64[0] = v492;
      *&v582.f64[1] = v491;
      v13 = v537;
      v11 = v549;
    }

    sub_1D0E6B6BC(&v581, v583, 0, v586);
    if (*&v583[0])
    {
      operator delete(*&v583[0]);
    }
  }

LABEL_798:
  if (v578 != 0.0)
  {
    operator delete(*&v578);
  }

  v509 = v568;
  if (v568 == 1 && v576 == *(&v576 + 1))
  {
    v532 = "! boost::empty(turns)";
    v533 = 94;
    v534 = "has_valid_self_turns.hpp";
    v535 = "apply";
    goto LABEL_854;
  }

  if (v576)
  {
    *(&v576 + 1) = v576;
    operator delete(v576);
  }

  if ((v509 & 1) == 0)
  {
    v510 = *v565;
    v511 = *(v565 + 1);
    if ((v511 - *v565) >= 0x40)
    {
      v512 = (v511 - 16);
      if (v512 != v510)
      {
        v513 = 0.0;
        v514 = v512;
        do
        {
          v515 = *(v514 - 2);
          v514 -= 2;
          v513 = v513 + (*v512 + v515) * (v512[1] - *(v512 - 1));
          v512 = v514;
        }

        while (v514 != v510);
        if (v513 * 0.5 > 0.0)
        {
          v117 = 1;
          goto LABEL_98;
        }
      }
    }
  }

LABEL_82:
  strcpy(v586, "\r");
  v593[0] = 4;
  v87 = (*(*v11 + 16))(v11);
  cnprint::CNPrinter::Print(v586, v593, "#tre_ao,HandleEvent,PositionEvent,time,%.3lf,nearest_track does not have a valid bounding box. Cannot proceed.", v88 + v87);
}

void sub_1D0B82518(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v25.__vftable) = 3;
    LOBYTE(v34) = 5;
    cnprint::CNPrinter::Print(&v25, &v34, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v10 = *(a3 + 16);
    if (v10)
    {
      v11 = (*(*v10 + 16))(v10);
    }

    else
    {
      v11 = MEMORY[0x1E69E54A8];
    }

    v17 = (*(v11 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v17 != (off_1F4CF0CC0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v17, (off_1F4CF0CC0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v25.__vftable = 0;
      std::bad_cast::bad_cast(&v25);
      v25.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v25);
    }

    v18 = *(a3 + 16);
    v25.__vftable = &unk_1F4CF0C98;
    v26 = v18[1];
    v19 = v18[4];
    v20 = v18[5];
    v21 = v18[3];
    v27 = v18[2];
    v30 = v20;
    v29 = v19;
    v28 = v21;
    v22 = v18[8];
    v23 = v18[9];
    v24 = v18[7];
    *v31 = v18[6];
    *&v31[48] = v23;
    *&v31[32] = v22;
    *&v31[16] = v24;
    v16 = v18[12];
    v13 = v18[13];
    v15 = v18[10];
    v14 = v18[11];
    *&v31[64] = v15;
    *&v32[16] = v13;
    *v32 = v16;
    *&v31[80] = v14;
  }

  else
  {
    v34 = 3;
    v33 = 5;
    if (*(a3 + 8) == 1)
    {
      v12 = *(a3 + 24);
    }

    else
    {
      LOWORD(v25.__vftable) = 3;
      v35 = 5;
      cnprint::CNPrinter::Print(&v25, &v35, "Attempted to access type of uninitialized GenericEvent.");
      v12 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v34, &v33, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v12 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CF0CC0 & 0x7FFFFFFFFFFFFFFFLL));
    v26 = 0uLL;
    v29 = 0uLL;
    v25.__vftable = &unk_1F4CF0C98;
    v27 = 0uLL;
    v30 = 0uLL;
    v28 = 0uLL;
    memset(v31, 0, 24);
    v16 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v31[24] = v16;
    *&v31[40] = v16;
    *&v31[56] = v16;
    *&v31[72] = v16;
    *&v31[88] = 0x7FF8000000000000;
    *v32 = 0;
    *&v32[8] = v16;
    *&v32[24] = 0x7FF8000000000000;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v4, &v25, v16, v13, v14, v15, v8, v9, v6, v7);
}

double sub_1D0B827D0(double *result, double *a2, double *a3, double *a4, __n128 a5)
{
  v5 = result[1];
  v21[0] = *result;
  v21[1] = v5;
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a3[1];
  v19[0] = *a3;
  v19[1] = v7;
  v8 = v21[0] - v19[0];
  v28[0] = v21[0] - v19[0];
  v9 = v6 - v7;
  v27[0] = v6 - v7;
  v10 = v5 - v7;
  v26[0] = v5 - v7;
  v11 = v20[0] - v19[0];
  v25[0] = v20[0] - v19[0];
  v12 = vabdd_f64(v21[0], v19[0]);
  v13 = vabdd_f64(v6, v7);
  v14 = vabdd_f64(v5, v7);
  v15 = vabdd_f64(v20[0], v19[0]);
  if (v12 < v13)
  {
    v12 = v13;
  }

  if (v12 < v14)
  {
    v12 = v14;
  }

  if (v12 < v15)
  {
    v12 = v15;
  }

  if (v12 < 1.0)
  {
    v12 = 1.0;
  }

  *a4 = v12;
  v16 = v8 * v9;
  v24[0] = v8 * v9;
  v17 = v11 * v10;
  v18 = v8 * v9 - v11 * v10;
  v22 = fabs(v8 * v9) + fabs(v11 * v10);
  v23[0] = v11 * v10;
  if (vabdd_f64(v8 * v9, v11 * v10) < v22 * 3.33066907e-16 && (v16 <= 0.0 || v17 > 0.0) && (v16 >= 0.0 || v17 < 0.0))
  {
    return sub_1D0E0C744(v21, v20, v19, v28, v27, v26, v25, v24, v23, &v22);
  }

  return v18;
}

uint64_t sub_1D0B828E4(uint64_t result)
{
  if (result == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v2 = sub_1D0E6B5FC(exception);
    v3 = &unk_1F4CF1030;
    v4 = std::exception::~exception;
    goto LABEL_6;
  }

  if (result == 1)
  {
    v5 = __cxa_allocate_exception(8uLL);
    v5->__vftable = 0;
    v2 = sub_1D0E6B5C4(v5);
    v3 = &unk_1F4CF1018;
    v4 = std::exception::~exception;
LABEL_6:
    __cxa_throw(v2, v3, v4);
  }

  return result;
}

void sub_1D0B8295C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v12 = *a1;
    v13 = v3 - *a1;
    v14 = 0xEEEEEEEEEEEEEEEFLL * (v13 >> 3) + 1;
    if (v14 > 0x222222222222222)
    {
      sub_1D0C5663C();
    }

    v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x111111111111111)
    {
      v16 = 0x222222222222222;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x222222222222222)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v17 = a2[5];
    v18 = 8 * (v13 >> 3);
    *(v18 + 64) = a2[4];
    *(v18 + 80) = v17;
    *(v18 + 96) = a2[6];
    *(v18 + 112) = *(a2 + 14);
    v19 = a2[1];
    *v18 = *a2;
    *(v18 + 16) = v19;
    v20 = a2[3];
    v11 = v18 + 120;
    v21 = v18 - v13;
    *(v18 + 32) = a2[2];
    *(v18 + 48) = v20;
    memcpy((v18 - v13), v12, v13);
    *a1 = v21;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    *(v3 + 64) = v8;
    v11 = v3 + 120;
  }

  *(a1 + 8) = v11;
}

uint64_t sub_1D0B82AC0(int a1, double *a2, double *a3, int *a4, int a5, double *a6, double *a7, int *a8, char a9, uint64_t a10, double *a11, uint64_t *a12, BOOL *a13)
{
  v13 = a8;
  v14 = a7;
  v16 = a4;
  v593 = *MEMORY[0x1E69E9840];
  if (*(a4 + 96) == 1 && (*(a4 + 10) + 1) < *(a4 + 11) || *(a8 + 96) == 1 && (*(a8 + 10) + 1) < *(a8 + 11))
  {
    return 1;
  }

  v18 = *a4;
  v499 = *a8;
  v20 = *(a4 + 8);
  v19 = *(a4 + 9);
  v21 = *(a4 + 13);
  v22 = &a2[2 * v20];
  v487 = &a2[2 * v19 + 2];
  v479 = *a4;
  if (16 * v20 == 16 * v19)
  {
    goto LABEL_33;
  }

  v24 = *(a4 + 8);
  v25 = 0;
  v26 = &a2[2 * v20];
  v27 = v22 + 2;
  v506 = v22;
  v485 = *(a4 + 13);
  v493 = v24;
  while (1)
  {
    v28 = *(a11 + 3) + (v27[1] - a11[1]) * a11[4];
    if (v28 >= 0.0)
    {
      v29 = 0.5;
    }

    else
    {
      v29 = -0.5;
    }

    v30 = v28 + v29;
    if (v30 <= -9.22337204e18)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * (v30 >= 9.22337204e18);
    }

    sub_1D0B828E4(v31);
    v32 = *(a11 + 2) + (*v27 - *a11) * a11[4];
    if (v32 >= 0.0)
    {
      v33 = 0.5;
    }

    else
    {
      v33 = -0.5;
    }

    v34 = v32 + v33;
    if (v32 + v33 <= -9.22337204e18)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2 * (v32 + v33 >= 9.22337204e18);
    }

    sub_1D0B828E4(v35);
    v36 = ceil(v34);
    v37 = floor(v34);
    if (v34 >= 0.0)
    {
      v36 = v37;
    }

    v38 = v36;
    if (v18 != 1)
    {
      if (v18 != -1)
      {
        v22 = v506;
        v16 = a4;
        v20 = v493;
        v21 = v485;
        goto LABEL_32;
      }

      if (*(v13 + 6) >= v38)
      {
        v40 = v24;
        v16 = a4;
        v22 = v26;
        v20 = v40;
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (*(v13 + 4) <= v38)
    {
      break;
    }

LABEL_27:
    v39 = v27 + 2;
    ++v24;
    ++v21;
    ++v25;
    v26 = v27;
    v27 = v39;
    if (v39 == v487)
    {
      v22 = v39 - 2;
      v20 = v24;
      goto LABEL_31;
    }
  }

  v22 = v27 - 2;
  v21 = v485 + v25;
  v20 = v493 + v25;
LABEL_31:
  v16 = a4;
LABEL_32:
  v14 = a7;
LABEL_33:
  v17 = 1;
  if (v22 + 2 == v487)
  {
    return v17;
  }

  v486 = v21;
  v41 = &a2[2 * (v22 != a2)];
  v483 = v22 + 2;
  if (v22 + 2 != a3)
  {
    v41 = v22 + 2;
  }

  v42 = v41 != a2;
  v43 = v41 + 2;
  v44 = &a2[2 * v42];
  if (v43 == a3)
  {
    v43 = v44;
  }

  v482 = v43;
  v476 = a6 + 2;
  v45 = 0.5;
  v46 = -0.5;
  v47 = v22;
  v488 = v14;
  v489 = a6;
  v490 = v13;
  while (2)
  {
    v48 = *(a11 + 3) + (v47[1] - a11[1]) * a11[4];
    if (v48 >= 0.0)
    {
      v49 = v45;
    }

    else
    {
      v49 = v46;
    }

    v50 = v48 + v49;
    if (v50 <= -9.22337204e18)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2 * (v50 >= 9.22337204e18);
    }

    sub_1D0B828E4(v51);
    v480 = v47;
    v52 = *(a11 + 2) + (*v47 - *a11) * a11[4];
    if (v52 >= 0.0)
    {
      v53 = v45;
    }

    else
    {
      v53 = v46;
    }

    v54 = v52 + v53;
    if (v52 + v53 <= -9.22337204e18)
    {
      v55 = 1;
    }

    else
    {
      v55 = 2 * (v52 + v53 >= 9.22337204e18);
    }

    sub_1D0B828E4(v55);
    v56 = ceil(v54);
    v57 = floor(v54);
    if (v54 >= 0.0)
    {
      v56 = v57;
    }

    v58 = v56;
    if (v479 == -1)
    {
      if (*(v13 + 4) > v58)
      {
        return 1;
      }
    }

    else if (v479 == 1 && *(v13 + 6) < v58)
    {
      return 1;
    }

    v59 = *(a11 + 1);
    v535 = *a11;
    v529[0] = v16;
    v494 = v20;
    v529[1] = v20;
    *&v530 = v47;
    *(&v530 + 1) = v483;
    v531[0] = v482;
    v531[1] = a2;
    v531[2] = a3;
    v532 = 1;
    v534 = 0;
    v536 = v59;
    v61 = *(v13 + 8);
    v60 = *(v13 + 9);
    v62 = &a6[2 * v61];
    v537 = *(a11 + 4);
    v63 = v62 + 2;
    v64 = *(v13 + 13);
    v501 = &v476[2 * v60];
    if (v62 + 2 == v501)
    {
      v79 = &a6[2 * v61];
      goto LABEL_85;
    }

    v65 = 0;
    v66 = v62;
    v502 = v64;
    v497 = v61;
    while (2)
    {
      v67 = *(a11 + 3) + (v63[1] - a11[1]) * a11[4];
      if (v67 >= 0.0)
      {
        v68 = v45;
      }

      else
      {
        v68 = v46;
      }

      v69 = v67 + v68;
      if (v69 <= -9.22337204e18)
      {
        v70 = 1;
      }

      else
      {
        v70 = 2 * (v69 >= 9.22337204e18);
      }

      sub_1D0B828E4(v70);
      v71 = *(a11 + 2) + (*v63 - *a11) * a11[4];
      if (v71 >= 0.0)
      {
        v72 = v45;
      }

      else
      {
        v72 = v46;
      }

      v73 = v71 + v72;
      if (v71 + v72 <= -9.22337204e18)
      {
        v74 = 1;
      }

      else
      {
        v74 = 2 * (v71 + v72 >= 9.22337204e18);
      }

      sub_1D0B828E4(v74);
      v75 = ceil(v73);
      v76 = floor(v73);
      if (v73 >= 0.0)
      {
        v75 = v76;
      }

      v77 = v75;
      if (v499 != 1)
      {
        if (v499 != -1)
        {
          v79 = v62;
          v14 = v488;
          a6 = v489;
          v61 = v497;
          v64 = v502;
          goto LABEL_85;
        }

        if (*(a4 + 6) >= v77)
        {
          a6 = v489;
          v79 = v66;
          v14 = v488;
          goto LABEL_85;
        }

LABEL_79:
        v78 = v63 + 2;
        ++v61;
        ++v64;
        ++v65;
        v66 = v63;
        v63 = v78;
        if (v78 == v501)
        {
          v79 = v78 - 2;
          goto LABEL_84;
        }

        continue;
      }

      break;
    }

    if (*(a4 + 4) > v77)
    {
      goto LABEL_79;
    }

    v79 = v63 - 2;
    v64 = v502 + v65;
    v61 = v497 + v65;
LABEL_84:
    v14 = v488;
    a6 = v489;
LABEL_85:
    v80 = v79 + 2;
    v16 = a4;
    v81 = v494;
    if (v79 + 2 == v501)
    {
      ++v486;
      v13 = v490;
      goto LABEL_858;
    }

    v503 = v64;
    v82 = &a6[2 * (v79 != a6)];
    if (v80 != v14)
    {
      v82 = v79 + 2;
    }

    v83 = v82 != a6;
    v84 = v82 + 2;
    v85 = &a6[2 * v83];
    if (v84 == v14)
    {
      v84 = v85;
    }

    v507 = v84;
    ++v486;
    v13 = v490;
    while (2)
    {
      v86 = v81;
      v87 = a6;
      v88 = v14;
      v89 = v13;
      v504 = v80;
      v90 = *(a11 + 3) + (v79[1] - a11[1]) * a11[4];
      if (v90 >= 0.0)
      {
        v91 = v45;
      }

      else
      {
        v91 = v46;
      }

      v92 = v90 + v91;
      if (v92 <= -9.22337204e18)
      {
        v93 = 1;
      }

      else
      {
        v93 = 2 * (v92 >= 9.22337204e18);
      }

      v94 = v79;
      sub_1D0B828E4(v93);
      v505 = v94;
      v95 = *(a11 + 2) + (*v94 - *a11) * a11[4];
      if (v95 >= 0.0)
      {
        v96 = v45;
      }

      else
      {
        v96 = v46;
      }

      v97 = v95 + v96;
      if (v95 + v96 <= -9.22337204e18)
      {
        v98 = 1;
      }

      else
      {
        v98 = 2 * (v95 + v96 >= 9.22337204e18);
      }

      sub_1D0B828E4(v98);
      v99 = ceil(v97);
      v100 = floor(v97);
      if (v97 >= 0.0)
      {
        v99 = v100;
      }

      v101 = v99;
      if (v499 == -1)
      {
        v102 = xmmword_1D0E7DD30;
        if (*(v16 + 4) > v101)
        {
          goto LABEL_857;
        }

LABEL_110:
        v13 = v89;
        v14 = v88;
        a6 = v87;
        v81 = v86;
        if (a1 == a5 && *(v16 + 2) == *(v13 + 2) && *(v16 + 3) == *(v13 + 3) && a9 && (v503 == v486 || !v86 && *(v16 + 11) - 2 <= v61))
        {
LABEL_243:
          v79 = v505 + 2;
          v80 = v504 + 2;
          ++v61;
          v191 = &a6[2 * (v507 != a6)];
          if (v507 + 2 != v14)
          {
            v191 = v507 + 2;
          }

          v507 = v191;
          ++v503;
          if (v80 == v501)
          {
            goto LABEL_858;
          }

          continue;
        }

        v103 = 0;
        v104 = *(a11 + 1);
        v526 = *a11;
        v528 = *(a11 + 4);
        v519[0] = v13;
        v519[1] = v61;
        v520 = v505;
        v521 = v504;
        v522[0] = v507;
        v522[1] = a6;
        v522[2] = v14;
        v523 = 0;
        v525 = 0;
        v527 = v104;
        LODWORD(v509) = 0;
        BYTE4(v509) = 0;
        *(&v509 + 1) = -1;
        LOWORD(v510) = 0;
        *&v105 = -1;
        *(&v105 + 1) = -1;
        do
        {
          v106 = &v508 + v103;
          *(v106 + 10) = 0;
          *(v106 + 3) = v105;
          *(v106 + 4) = v105;
          *(v106 + 10) = -1;
          *(v106 + 88) = v102;
          v103 += 80;
          *(v106 + 13) = 0;
          *(v106 + 14) = 0;
        }

        while (v103 != 160);
        *v511 = a1;
        *&v511[8] = *(v16 + 1);
        *&v511[24] = v86;
        *&v512 = -1;
        *v515 = a5;
        *&v515[8] = *(v13 + 1);
        v498 = v61;
        *&v515[24] = v61;
        *&v516 = -1;
        v495 = *a12;
        v496 = a12[1];
        v560 = v529;
        v561 = v519;
        v570 = a11;
        v571 = v529;
        v572 = v519;
        v573 = 0;
        v107 = v530;
        v108 = *(a11 + 3) + (*(v530 + 8) - a11[1]) * a11[4];
        if (v108 >= 0.0)
        {
          v109 = v45;
        }

        else
        {
          v109 = v46;
        }

        v110 = v108 + v109;
        if (v108 + v109 <= -9.22337204e18)
        {
          v111 = 1;
        }

        else
        {
          v111 = 2 * (v108 + v109 >= 9.22337204e18);
        }

        sub_1D0B828E4(v111);
        v112 = ceil(v110);
        v113 = floor(v110);
        if (v110 >= 0.0)
        {
          v112 = v113;
        }

        v563 = v112;
        v114 = *(a11 + 2) + (*v107 - *a11) * a11[4];
        if (v114 >= 0.0)
        {
          v115 = v45;
        }

        else
        {
          v115 = v46;
        }

        v116 = v114 + v115;
        if (v114 + v115 <= -9.22337204e18)
        {
          v117 = 1;
        }

        else
        {
          v117 = 2 * (v114 + v115 >= 9.22337204e18);
        }

        sub_1D0B828E4(v117);
        v118 = ceil(v116);
        v119 = floor(v116);
        if (v116 >= 0.0)
        {
          v118 = v119;
        }

        v562 = v118;
        v120 = *(&v530 + 1);
        v121 = *(a11 + 3) + (*(*(&v530 + 1) + 8) - a11[1]) * a11[4];
        if (v121 >= 0.0)
        {
          v122 = v45;
        }

        else
        {
          v122 = v46;
        }

        v123 = v121 + v122;
        if (v121 + v122 <= -9.22337204e18)
        {
          v124 = 1;
        }

        else
        {
          v124 = 2 * (v121 + v122 >= 9.22337204e18);
        }

        sub_1D0B828E4(v124);
        v125 = ceil(v123);
        v126 = floor(v123);
        if (v123 >= 0.0)
        {
          v125 = v126;
        }

        v565 = v125;
        v127 = *(a11 + 2) + (*v120 - *a11) * a11[4];
        if (v127 >= 0.0)
        {
          v128 = v45;
        }

        else
        {
          v128 = v46;
        }

        v129 = v127 + v128;
        if (v127 + v128 <= -9.22337204e18)
        {
          v130 = 1;
        }

        else
        {
          v130 = 2 * (v127 + v128 >= 9.22337204e18);
        }

        sub_1D0B828E4(v130);
        v131 = ceil(v129);
        v132 = floor(v129);
        if (v129 >= 0.0)
        {
          v131 = v132;
        }

        v564 = v131;
        v133 = v520;
        v134 = *(a11 + 3) + (v520[1] - a11[1]) * a11[4];
        if (v134 >= 0.0)
        {
          v135 = v45;
        }

        else
        {
          v135 = v46;
        }

        v136 = v134 + v135;
        if (v134 + v135 <= -9.22337204e18)
        {
          v137 = 1;
        }

        else
        {
          v137 = 2 * (v134 + v135 >= 9.22337204e18);
        }

        sub_1D0B828E4(v137);
        v138 = ceil(v136);
        v139 = floor(v136);
        if (v136 >= 0.0)
        {
          v138 = v139;
        }

        v567 = v138;
        v140 = *(a11 + 2) + (*v133 - *a11) * a11[4];
        if (v140 >= 0.0)
        {
          v141 = v45;
        }

        else
        {
          v141 = v46;
        }

        v142 = v140 + v141;
        if (v140 + v141 <= -9.22337204e18)
        {
          v143 = 1;
        }

        else
        {
          v143 = 2 * (v140 + v141 >= 9.22337204e18);
        }

        sub_1D0B828E4(v143);
        v144 = ceil(v142);
        v145 = floor(v142);
        if (v142 >= 0.0)
        {
          v144 = v145;
        }

        v566 = v144;
        v146 = v521;
        v147 = *(a11 + 3) + (v521[1] - a11[1]) * a11[4];
        if (v147 >= 0.0)
        {
          v148 = v45;
        }

        else
        {
          v148 = v46;
        }

        v149 = v147 + v148;
        if (v147 + v148 <= -9.22337204e18)
        {
          v150 = 1;
        }

        else
        {
          v150 = 2 * (v147 + v148 >= 9.22337204e18);
        }

        sub_1D0B828E4(v150);
        v151 = ceil(v149);
        v152 = floor(v149);
        if (v149 >= 0.0)
        {
          v151 = v152;
        }

        v153 = v151;
        v569 = v151;
        v154 = *(a11 + 2) + (*v146 - *a11) * a11[4];
        if (v154 >= 0.0)
        {
          v155 = v45;
        }

        else
        {
          v155 = v46;
        }

        v156 = v154 + v155;
        if (v154 + v155 <= -9.22337204e18)
        {
          v157 = 1;
        }

        else
        {
          v157 = 2 * (v154 + v155 >= 9.22337204e18);
        }

        sub_1D0B828E4(v157);
        v158 = ceil(v156);
        v159 = floor(v156);
        if (v156 >= 0.0)
        {
          v158 = v159;
        }

        v160 = v158;
        v568 = v158;
        v574[0] = v529;
        v574[1] = a11;
        v574[2] = &v562;
        v574[3] = &v564;
        v575 = 0;
        v576[0] = v519;
        v576[1] = a11;
        v576[2] = &v566;
        v576[3] = &v568;
        v577 = 0;
        v579 = v574;
        v580 = v576;
        v581 = v576;
        v582 = v574;
        v161 = v530;
        v162 = v520;
        v539 = v530;
        v538[0] = v520;
        v538[1] = v521;
        v164 = *v530;
        v163 = *(v530 + 8);
        v165 = *v521;
        v166 = v521[1];
        v168 = v562 == v564 && v563 == v565;
        v170 = v566 == v160 && v567 == v153;
        v171 = *v520;
        v172 = v520[1];
        if (v168 && v170)
        {
          if (v562 == v160 && v563 == v153)
          {
            v173 = 0;
            a6 = v489;
            v13 = v490;
            v14 = v488;
            v81 = v494;
            v45 = 0.5;
            do
            {
              v174 = &v540 + v173;
              *(v174 + 40) = xmmword_1D0E7DD30;
              *(v174 + 7) = 0;
              *(v174 + 8) = 0;
              *(v174 + 9) = 1;
              *(v174 + 10) = 0;
              v173 += 56;
              v174[88] = 0;
            }

            while (v173 != 112);
            *&v540 = 1;
            *(&v540 + 1) = v164;
            *&v541 = v163;
            memset(&v551[2], 0, 40);
            v586 = *&v545[16];
            *v587 = v546;
            *&v587[16] = v547;
            v588 = v548;
            *&v583[32] = v542;
            *&v583[48] = v543;
            v584 = v544;
            v585 = *v545;
            *v583 = v540;
            *&v583[16] = v541;
            v589 = 48;
            *v590 = *v551;
            *&v590[16] = *&v551[16];
            *&v590[26] = *&v551[26];
            v591 = a10;
            v16 = a4;
            v46 = -0.5;
            goto LABEL_202;
          }

          v187 = 0;
          *&v540 = 0;
          a6 = v489;
          v13 = v490;
          v14 = v488;
          v81 = v494;
          v45 = 0.5;
          do
          {
            v188 = &v540 + v187;
            *(v188 + 40) = xmmword_1D0E7DD30;
            *(v188 + 7) = 0;
            *(v188 + 8) = 0;
            *(v188 + 9) = 1;
            *(v188 + 10) = 0;
            v187 += 56;
            v188[88] = 0;
          }

          while (v187 != 112);
          memset(&v551[2], 0, 40);
          v586 = *&v545[16];
          *v587 = v546;
          *&v587[16] = v547;
          v588 = v548;
          *&v583[32] = v542;
          *&v583[48] = v543;
          v584 = v544;
          v585 = *v545;
          *v583 = v540;
          *&v583[16] = v541;
          v589 = 100;
          *v590 = *v551;
          *&v590[16] = *&v551[16];
          *&v590[26] = *&v551[26];
          v16 = a4;
          goto LABEL_239;
        }

        if (v562 >= v564)
        {
          v175 = v564;
        }

        else
        {
          v175 = v562;
        }

        if (v562 <= v564)
        {
          v176 = v564;
        }

        else
        {
          v176 = v562;
        }

        if (v566 >= v160)
        {
          v177 = v158;
        }

        else
        {
          v177 = v566;
        }

        if (v566 <= v160)
        {
          v178 = v158;
        }

        else
        {
          v178 = v566;
        }

        if (v176 < v177 || v178 < v175 || (v563 >= v565 ? (v179 = v565) : (v179 = v563), v563 <= v565 ? (v180 = v565) : (v180 = v563), v567 >= v153 ? (v181 = v153) : (v181 = v567), v567 <= v153 ? (v182 = v153) : (v182 = v567), v180 < v181 || v182 < v179))
        {
          v185 = 0;
          *&v540 = 0;
          do
          {
            v186 = &v540 + v185;
            *(v186 + 40) = xmmword_1D0E7DD30;
            *(v186 + 7) = 0;
            *(v186 + 8) = 0;
            *(v186 + 9) = 1;
            *(v186 + 10) = 0;
            v185 += 56;
            v186[88] = 0;
          }

          while (v185 != 112);
          goto LABEL_235;
        }

        v474 = *(*(&v530 + 1) + 8);
        v477 = **(&v530 + 1);
        *&v540 = 0x3FF0000000000000;
        v183 = sub_1D0E6E618(v566, v567, v160, v153, v562, v563, &v540);
        if (v183 == 0.0)
        {
          goto LABEL_232;
        }

        if ((*&v183 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v192 = fabs(v183);
          if (v183 > 0.0)
          {
            v184 = 1;
          }

          else
          {
            v184 = -1;
          }

          if (v192 <= *&v540 * 2.22044605e-16)
          {
LABEL_232:
            v184 = 0;
          }
        }

        else if (v183 > 0.0)
        {
          v184 = 1;
        }

        else
        {
          v184 = -1;
        }

        *&v540 = 0x3FF0000000000000;
        v193 = sub_1D0E6E618(v566, v567, v568, v569, v564, v565, &v540);
        if (v193 == 0.0)
        {
LABEL_256:
          v194 = 0;
          goto LABEL_265;
        }

        if ((*&v193 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v195 = fabs(v193);
          if (v193 > 0.0)
          {
            v194 = 1;
          }

          else
          {
            v194 = -1;
          }

          if (v195 <= *&v540 * 2.22044605e-16)
          {
            goto LABEL_256;
          }
        }

        else if (v193 > 0.0)
        {
          v194 = 1;
        }

        else
        {
          v194 = -1;
        }

LABEL_265:
        if (v194 * v184 == 1)
        {
          v196 = 0;
          *&v540 = 0;
          do
          {
            v197 = &v540 + v196;
            *(v197 + 40) = xmmword_1D0E7DD30;
            *(v197 + 7) = 0;
            *(v197 + 8) = 0;
            *(v197 + 9) = 1;
            *(v197 + 10) = 0;
            v196 += 56;
            v197[88] = 0;
          }

          while (v196 != 112);
LABEL_235:
          memset(&v551[2], 0, 40);
          v14 = v488;
          v586 = *&v545[16];
          *v587 = v546;
          *&v587[16] = v547;
          v588 = v548;
          *&v583[32] = v542;
          *&v583[48] = v543;
          v584 = v544;
          v585 = *v545;
          *v583 = v540;
          *&v583[16] = v541;
          v589 = 100;
          *v590 = *v551;
          *&v590[16] = *&v551[16];
          *&v590[26] = *&v551[26];
          a6 = v489;
          v13 = v490;
          v16 = a4;
          v81 = v494;
          v45 = 0.5;
LABEL_239:
          v46 = -0.5;
          v61 = v498;
          v591 = a10;
          goto LABEL_240;
        }

        *&v540 = 0x3FF0000000000000;
        v198 = sub_1D0E6E618(v562, v563, v564, v565, v566, v567, &v540);
        if (v198 == 0.0)
        {
          goto LABEL_270;
        }

        if ((*&v198 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v200 = fabs(v198);
          if (v198 > 0.0)
          {
            v199 = 1;
          }

          else
          {
            v199 = -1;
          }

          if (v200 <= *&v540 * 2.22044605e-16)
          {
LABEL_270:
            v199 = 0;
          }
        }

        else if (v198 > 0.0)
        {
          v199 = 1;
        }

        else
        {
          v199 = -1;
        }

        *&v540 = 0x3FF0000000000000;
        v201 = sub_1D0E6E618(v562, v563, v564, v565, v568, v569, &v540);
        if (v201 == 0.0)
        {
LABEL_280:
          v202 = 0;
          goto LABEL_289;
        }

        if ((*&v201 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v203 = fabs(v201);
          if (v201 > 0.0)
          {
            v202 = 1;
          }

          else
          {
            v202 = -1;
          }

          if (v203 <= *&v540 * 2.22044605e-16)
          {
            goto LABEL_280;
          }
        }

        else if (v201 > 0.0)
        {
          v202 = 1;
        }

        else
        {
          v202 = -1;
        }

LABEL_289:
        v204 = v477;
        if (v202 * v199 == 1)
        {
          v205 = 0;
          *&v540 = 0;
          do
          {
            v206 = &v540 + v205;
            *(v206 + 40) = xmmword_1D0E7DD30;
            *(v206 + 7) = 0;
            *(v206 + 8) = 0;
            *(v206 + 9) = 1;
            *(v206 + 10) = 0;
            v205 += 56;
            v206[88] = 0;
          }

          while (v205 != 112);
          goto LABEL_235;
        }

        v207 = v564;
        v208 = v562;
        v209 = v564 - v562;
        v210 = v568;
        v211 = v566;
        v212 = v568 - v566;
        v213 = v565 - v563;
        v214 = v569 - v567;
        if (v194 | v184 | v199 | v202)
        {
          v215 = v214 * v209;
          v216 = v213 * v212;
          v217 = v213 * v212 - v214 * v209;
          if (v213 * v212 != v214 * v209)
          {
            v472 = v194;
            v473 = v184;
            v478 = v199;
            if (v215 >= v216)
            {
              v220 = (v563 - v567) * v212 + v214 * (v566 - v562);
            }

            else
            {
              v220 = -((v563 - v567) * v212 + v214 * (v566 - v562));
            }

            if (v215 - v216 >= 0)
            {
              v223 = v215 - v216;
            }

            else
            {
              v223 = v216 - v215;
            }

            v225 = v220 * 1000000.0 / v223;
            if (v217 >= 0)
            {
              v224 = v213 * v212 - v214 * v209;
            }

            else
            {
              v224 = v214 * v209 - v213 * v212;
            }

            if (v217 >= 0)
            {
              v221 = v213 * (v562 - v566) + (v567 - v563) * v209;
            }

            else
            {
              v221 = -(v213 * (v562 - v566) + (v567 - v563) * v209);
            }

            v222 = v221 * 1000000.0 / v224;
            goto LABEL_329;
          }

          v184 = 0;
          v194 = 0;
          v199 = 0;
          v202 = 0;
        }

        if (v209 < 0)
        {
          v209 = v562 - v564;
        }

        if (v213 < 0)
        {
          v213 = v563 - v565;
        }

        if ((v212 & 0x8000000000000000) != 0)
        {
          v212 = v566 - v568;
        }

        if ((v214 & 0x8000000000000000) != 0)
        {
          v214 = v567 - v569;
        }

        if (v168)
        {
          v218 = v212 >= v214;
        }

        else
        {
          if (!v170)
          {
            if (v212 >= v209)
            {
              v212 = v209;
            }

            if (v214 >= v213)
            {
              v214 = v213;
            }

            if (v212 == v214)
            {
              if (v212)
              {
                v219 = 257;
              }

              else
              {
                v219 = 1;
              }
            }

            else if (v212 <= v214)
            {
              v219 = 256;
            }

            else
            {
              v219 = 257;
            }

LABEL_311:
            if ((v219 & 0x100) == 0)
            {
              v472 = v194;
              v473 = v184;
              v478 = v199;
              v220 = 0;
              v221 = 0;
              v222 = 0.0;
              v223 = 1;
              v224 = 1;
              v225 = 0.0;
LABEL_329:
              v228 = 0;
              v229 = v204 - v164;
              v230 = v165 - v171;
              v231 = v474 - v163;
              v232 = v166 - v172;
              v13 = v490;
              v81 = v494;
              do
              {
                v233 = &v540 + v228;
                *(v233 + 40) = xmmword_1D0E7DD30;
                *(v233 + 7) = 0;
                *(v233 + 8) = 0;
                *(v233 + 9) = 1;
                *(v233 + 10) = 0;
                v228 += 56;
                v233[88] = 0;
              }

              while (v228 != 112);
              v475 = v202;
              *&v540 = 1;
              v234 = v231 * v231 + v229 * v229;
              v235 = v232 * v232 + v230 * v230;
              if (v234 >= v235)
              {
                v236 = v231 * v231 + v229 * v229;
              }

              else
              {
                v236 = v232 * v232 + v230 * v230;
              }

              v45 = 0.5;
              v46 = -0.5;
              v470 = v224;
              v471 = v221;
              if (v236 <= 0.0)
              {
                goto LABEL_340;
              }

              v237 = vabdd_f64(0.5, v222 / 1000000.0);
              v238 = v237 + v237;
              if (v238 > 1.0)
              {
                v238 = 1.0;
              }

              v239 = vabdd_f64(0.5, v225 / 1000000.0);
              v240 = v239 + v239;
              if (v240 > 1.0)
              {
                v240 = 1.0;
              }

              if (1.0 - v234 / v236 + v240 * 5.0 <= 1.0 - v235 / v236 + v238 * 5.0)
              {
                v241 = v225;
                v242 = v222;
                v243 = v162;
                v229 = v230;
                v231 = v232;
              }

              else
              {
LABEL_340:
                v241 = v225;
                v242 = v222;
                v243 = v161;
                v221 = v220;
                v224 = v223;
              }

              sub_1D0E70240(&v540 + 1, v243, v221, v224, v229, v231);
              v14 = v488;
              a6 = v489;
              v61 = v498;
              v545[8] = 1;
              *(&v542 + 1) = v220;
              *&v543 = v223;
              *(&v543 + 1) = v241;
              *&v544 = v471;
              *(&v544 + 1) = v470;
              *v545 = v242;
              v245 = xmmword_1D0E7DD30;
              if (!(v473 | v478))
              {
                v247 = -1;
                if (v475 == 1)
                {
                  v248 = -1;
                }

                else
                {
                  v248 = 1;
                }

                if (v475 == 1)
                {
                  v249 = 1;
                }

                else
                {
                  v249 = -1;
                }

                v250 = 102;
                v251 = -1;
                v246 = v472;
                goto LABEL_418;
              }

              v246 = v472;
              if (!(v472 | v475))
              {
                if (v478 == 1)
                {
                  v248 = -1;
                }

                else
                {
                  v248 = 1;
                }

                if (v478 == 1)
                {
                  v249 = 1;
                }

                else
                {
                  v249 = -1;
                }

                v247 = 1;
                v250 = 116;
                v251 = 1;
                goto LABEL_418;
              }

              if (v472 | v478)
              {
                if (v473 | v475)
                {
                  v247 = v478;
                  if (v478)
                  {
                    if (v473)
                    {
                      if (v475)
                      {
                        if (v472)
                        {
                          v247 = -1;
                          if (v475 == 1)
                          {
                            v248 = -1;
                          }

                          else
                          {
                            v248 = 1;
                          }

                          if (v475 == 1)
                          {
                            v249 = 1;
                          }

                          else
                          {
                            v249 = -1;
                          }

                          v250 = 105;
                          v251 = -1;
                          goto LABEL_418;
                        }

                        v251 = 0;
                        if (v475 == 1)
                        {
                          v248 = 1;
                        }

                        else
                        {
                          v248 = -1;
                        }

                        v247 = 1;
                      }

                      else
                      {
                        v247 = 0;
                        if (v472 == 1)
                        {
                          v248 = 1;
                        }

                        else
                        {
                          v248 = -1;
                        }

                        v251 = 1;
                      }

                      v250 = 109;
                      goto LABEL_400;
                    }

                    v251 = 0;
                    if (v475 == 1)
                    {
                      v249 = 1;
                    }

                    else
                    {
                      v249 = -1;
                    }

                    v247 = -1;
                    if (v475 == 1)
                    {
                      v248 = -1;
                    }

                    else
                    {
                      v248 = 1;
                    }
                  }

                  else
                  {
                    v251 = -1;
                    if (v475 == 1)
                    {
                      v248 = -1;
                    }

                    else
                    {
                      v248 = 1;
                    }

                    if (v475 == 1)
                    {
                      v249 = 1;
                    }

                    else
                    {
                      v249 = -1;
                    }
                  }

                  v250 = 115;
                  goto LABEL_418;
                }

                if (v478 == 1)
                {
                  v248 = 1;
                }

                else
                {
                  v248 = -1;
                }

                v251 = 1;
                v247 = -1;
              }

              else
              {
                if (v475 == 1)
                {
                  v248 = 1;
                }

                else
                {
                  v248 = -1;
                }

                v251 = -1;
                v247 = 1;
              }

              v250 = 97;
LABEL_400:
              v249 = v248;
LABEL_418:
              v586 = *&v545[16];
              *v587 = v546;
              *&v587[16] = v547;
              v588 = v548;
              *&v583[32] = v542;
              *&v583[48] = v543;
              v584 = v544;
              v585 = *v545;
              *v583 = v540;
              *&v583[16] = v541;
              v589 = v250;
              *&v590[2] = v247;
              *&v590[6] = v251;
              *&v590[10] = v248;
              *&v590[14] = v249;
              *&v590[18] = v473;
              *&v590[22] = v246;
              *&v590[26] = v478;
              *&v590[30] = v475;
              *&v590[34] = v247;
              *&v590[38] = v251;
              v16 = a4;
LABEL_419:
              v591 = a10;
              v592 = a11;
              if (v589 == 100)
              {
LABEL_240:
                v189 = a12[1];
                if (v189 - *a12 < (v496 - v495))
                {
                  __assert_rtn("pos", "range.hpp", 96, "i <= boost::size(rng)");
                }

                v190 = v496 - v495 + *a12;
                *a13 = v189 != v190;
                if (v189 != v190)
                {
                  return 0;
                }

                goto LABEL_243;
              }

              v558[0] = v516;
              v558[1] = v517;
              v559 = v518;
              v554[1] = v513;
              v555 = v514;
              v556 = *v515;
              v557 = *&v515[16];
              *&v551[32] = v510;
              v552 = *v511;
              v553 = *&v511[16];
              v554[0] = v512;
              *v551 = v508;
              *&v551[16] = v509;
              if (v589 > 0x68u)
              {
                if (v589 == 105)
                {
                  *&v551[16] = 2;
                  if (!*v583)
                  {
                    goto LABEL_864;
                  }

                  *v551 = *&v583[8];
                  *(v554 + 8) = *&v583[40];
                  *(&v554[1] + 1) = *&v583[56];
                  *(v558 + 8) = v584;
                  *(&v558[1] + 1) = v585;
                  v267 = *&v590[26] == 1;
                  *&v551[80 * (*&v590[26] != 1) + 40] = 1;
                  *&v551[80 * v267 + 40] = 2;
                  goto LABEL_802;
                }

                if (v589 != 116)
                {
                  if (v589 != 109)
                  {
LABEL_202:
                    v61 = v498;
                    goto LABEL_240;
                  }

                  *&v551[16] = 4;
                  *v551 = *&v583[8];
                  v252 = 0;
                  v253 = 1;
                  v254 = 40;
                  if (*&v590[38] == 1)
                  {
                    do
                    {
                      v255 = v253;
                      v256 = *&v590[4 * v252 + 34];
                      if (v256 == -1)
                      {
                        v258 = &v551[80 * v252 + 40];
                        *(v258 + 3) = v245;
                        *(v258 + 8) = 0;
                      }

                      else if (v256 == 1)
                      {
                        v257 = &v551[80 * v252 + 40];
                        v257[3] = vdupq_n_s64(1uLL);
                        v257[4].i64[0] = 0x412E848000000000;
                      }

                      else
                      {
                        v259 = &v583[v254];
                        v260 = &v551[80 * v252 + 40];
                        *(v260 + 3) = *v259;
                        *(v260 + 8) = *(v259 + 2);
                      }

                      v253 = 0;
                      v254 = 64;
                      v252 = 1;
                    }

                    while ((v255 & 1) != 0);
                    v261 = *&v590[26];
                    v262 = v579[2];
                    v263 = v579[3];
                    v264 = sub_1D0E6E4CC(v580);
                    *&v540 = 0x3FF0000000000000;
                    v265 = sub_1D0E6E618(*v262, v262[1], *v263, v263[1], *v264, v264[1], &v540);
                    if (v265 == 0.0)
                    {
                      goto LABEL_432;
                    }

                    if ((*&v265 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                    {
                      v352 = fabs(v265);
                      if (v265 > 0.0)
                      {
                        v266 = 1;
                      }

                      else
                      {
                        v266 = -1;
                      }

                      if (v352 <= *&v540 * 2.22044605e-16)
                      {
LABEL_432:
                        v266 = 0;
                      }
                    }

                    else if (v265 > 0.0)
                    {
                      v266 = 1;
                    }

                    else
                    {
                      v266 = -1;
                    }

                    if (!(v261 + v266))
                    {
                      v353 = v266 == -1;
                      v354 = v266 != -1;
LABEL_601:
                      *&v551[80 * v354 + 40] = 1;
                      *&v551[80 * v353 + 40] = 2;
LABEL_736:
                      a6 = v489;
                      v16 = a4;
                      goto LABEL_737;
                    }

                    v355 = v580[2];
                    v356 = v580[3];
                    v357 = sub_1D0E6E4CC(v580);
                    *&v540 = 0x3FF0000000000000;
                    v358 = sub_1D0E6E618(*v355, v355[1], *v356, v356[1], *v357, v357[1], &v540);
                    if (v358 == 0.0)
                    {
                      goto LABEL_594;
                    }

                    if ((*&v358 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                    {
                      v396 = fabs(v358);
                      if (v358 > 0.0)
                      {
                        v359 = 1;
                      }

                      else
                      {
                        v359 = -1;
                      }

                      if (v396 <= *&v540 * 2.22044605e-16)
                      {
LABEL_594:
                        v359 = 0;
                      }
                    }

                    else if (v358 > 0.0)
                    {
                      v359 = 1;
                    }

                    else
                    {
                      v359 = -1;
                    }

                    v397 = v580[3];
                    v398 = sub_1D0E6E4CC(v580);
                    v399 = v579[3];
                    *&v540 = 0x3FF0000000000000;
                    v400 = sub_1D0E6E618(*v397, v397[1], *v398, v398[1], *v399, v399[1], &v540);
                    if (v400 == 0.0)
                    {
LABEL_693:
                      v401 = 0;
                      goto LABEL_712;
                    }

                    if ((*&v400 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                    {
                      v407 = fabs(v400);
                      if (v400 > 0.0)
                      {
                        v401 = 1;
                      }

                      else
                      {
                        v401 = -1;
                      }

                      if (v407 <= *&v540 * 2.22044605e-16)
                      {
                        goto LABEL_693;
                      }
                    }

                    else if (v400 > 0.0)
                    {
                      v401 = 1;
                    }

                    else
                    {
                      v401 = -1;
                    }

LABEL_712:
                    if ((v266 & v261) != 0xFFFFFFFF || v359 != 1)
                    {
                      if (v261 == 1 && v266 == 1 && v359 == -1)
                      {
                        if (v401 == -1)
                        {
                          v408 = 1;
                        }

                        else
                        {
                          v408 = 3;
                        }

                        *&v551[40] = 1;
                        goto LABEL_733;
                      }

                      if (v261 == v266 && v261 == v359)
                      {
                        v409 = (v359 == 1) ^ (v401 == 0);
                        if (v401 * v261 == -1)
                        {
                          v411 = v579[2];
                          v410 = v579[3];
                          v412 = v580[3];
                          v413 = *v411;
                          v414 = v411[1];
                          v415 = *v410;
                          v416 = v410[1];
                          v417 = *v412;
                          v418 = v412[1];
                          *&v540 = 0x3FF0000000000000;
                          v419 = sub_1D0E6E618(v413, v414, v415, v416, v417, v418, &v540);
                          if (v419 == 0.0)
                          {
LABEL_725:
                            v420 = 0;
                            goto LABEL_825;
                          }

                          if ((*&v419 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                          {
                            v449 = fabs(v419);
                            if (v419 > 0.0)
                            {
                              v420 = 1;
                            }

                            else
                            {
                              v420 = -1;
                            }

                            if (v449 <= *&v540 * 2.22044605e-16)
                            {
                              goto LABEL_725;
                            }
                          }

                          else if (v419 > 0.0)
                          {
                            v420 = 1;
                          }

                          else
                          {
                            v420 = -1;
                          }

LABEL_825:
                          v450 = v579[3];
                          v451 = sub_1D0E6E4CC(v579);
                          v452 = v580[3];
                          *&v540 = 0x3FF0000000000000;
                          v453 = sub_1D0E6E618(*v450, v450[1], *v451, v451[1], *v452, v452[1], &v540);
                          if (v453 == 0.0)
                          {
LABEL_826:
                            v454 = 0;
                            goto LABEL_845;
                          }

                          if ((*&v453 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                          {
                            v461 = fabs(v453);
                            if (v453 > 0.0)
                            {
                              v454 = 1;
                            }

                            else
                            {
                              v454 = -1;
                            }

                            if (v461 <= *&v540 * 2.22044605e-16)
                            {
                              goto LABEL_826;
                            }
                          }

                          else if (v453 > 0.0)
                          {
                            v454 = 1;
                          }

                          else
                          {
                            v454 = -1;
                          }

LABEL_845:
                          v462 = v454 * v420;
                          v81 = v494;
                          v14 = v488;
                          if (v462 == 1)
                          {
                            v463 = v579;
                            v464 = v580;
                            goto LABEL_853;
                          }

                          goto LABEL_855;
                        }

LABEL_748:
                        v14 = v488;
                        v81 = v494;
                        goto LABEL_855;
                      }

                      if (!v266)
                      {
                        v16 = a4;
                        if (v261 != v359)
                        {
                          if (v359 == 1)
                          {
                            v430 = 2;
                          }

                          else
                          {
                            v430 = 1;
                          }

                          *&v551[40] = v430;
                          v431 = 3;
                          goto LABEL_805;
                        }

LABEL_804:
                        v431 = 4;
                        *&v551[40] = 4;
LABEL_805:
                        DWORD2(v555) = v431;
LABEL_812:
                        v14 = v488;
                        a6 = v489;
                        goto LABEL_737;
                      }

                      goto LABEL_780;
                    }

LABEL_732:
                    v408 = 2;
                    *&v551[40] = 2;
LABEL_733:
                    DWORD2(v555) = v408;
LABEL_734:
                    v551[20] = 1;
LABEL_735:
                    v14 = v488;
                    goto LABEL_736;
                  }

                  do
                  {
                    v289 = v253;
                    v290 = *&v590[4 * v252 + 34];
                    if (v290 == -1)
                    {
                      v292 = &v551[80 * v252 + 40];
                      *(v292 + 3) = v245;
                      *(v292 + 8) = 0;
                    }

                    else if (v290 == 1)
                    {
                      v291 = &v551[80 * v252 + 40];
                      v291[3] = vdupq_n_s64(1uLL);
                      v291[4].i64[0] = 0x412E848000000000;
                    }

                    else
                    {
                      v293 = &v583[v254];
                      v294 = &v551[80 * v252 + 40];
                      *(v294 + 3) = *v293;
                      *(v294 + 8) = *(v293 + 2);
                    }

                    v253 = 0;
                    v254 = 64;
                    v252 = 1;
                  }

                  while ((v289 & 1) != 0);
                  v295 = *&v590[18];
                  v296 = v581[2];
                  v297 = v581[3];
                  v298 = sub_1D0E6E4CC(v582);
                  *&v540 = 0x3FF0000000000000;
                  v299 = sub_1D0E6E618(*v296, v296[1], *v297, v297[1], *v298, v298[1], &v540);
                  if (v299 == 0.0)
                  {
                    goto LABEL_462;
                  }

                  if ((*&v299 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v360 = fabs(v299);
                    if (v299 > 0.0)
                    {
                      v300 = 1;
                    }

                    else
                    {
                      v300 = -1;
                    }

                    if (v360 <= *&v540 * 2.22044605e-16)
                    {
LABEL_462:
                      v300 = 0;
                    }
                  }

                  else if (v299 > 0.0)
                  {
                    v300 = 1;
                  }

                  else
                  {
                    v300 = -1;
                  }

                  if (!(v295 + v300))
                  {
                    v353 = v300 != -1;
                    v354 = v300 == -1;
                    goto LABEL_601;
                  }

                  v361 = v582[2];
                  v362 = v582[3];
                  v363 = sub_1D0E6E4CC(v582);
                  *&v540 = 0x3FF0000000000000;
                  v364 = sub_1D0E6E618(*v361, v361[1], *v362, v362[1], *v363, v363[1], &v540);
                  if (v364 == 0.0)
                  {
                    goto LABEL_603;
                  }

                  if ((*&v364 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v402 = fabs(v364);
                    if (v364 > 0.0)
                    {
                      v365 = 1;
                    }

                    else
                    {
                      v365 = -1;
                    }

                    if (v402 <= *&v540 * 2.22044605e-16)
                    {
LABEL_603:
                      v365 = 0;
                    }
                  }

                  else if (v364 > 0.0)
                  {
                    v365 = 1;
                  }

                  else
                  {
                    v365 = -1;
                  }

                  v403 = v582[3];
                  v404 = sub_1D0E6E4CC(v582);
                  v405 = v581[3];
                  *&v540 = 0x3FF0000000000000;
                  v406 = sub_1D0E6E618(*v403, v403[1], *v404, v404[1], *v405, v405[1], &v540);
                  if (v406 == 0.0)
                  {
LABEL_703:
                    v401 = 0;
                    goto LABEL_730;
                  }

                  if ((*&v406 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v421 = fabs(v406);
                    if (v406 > 0.0)
                    {
                      v401 = 1;
                    }

                    else
                    {
                      v401 = -1;
                    }

                    if (v421 <= *&v540 * 2.22044605e-16)
                    {
                      goto LABEL_703;
                    }
                  }

                  else if (v406 > 0.0)
                  {
                    v401 = 1;
                  }

                  else
                  {
                    v401 = -1;
                  }

LABEL_730:
                  if ((v300 & v295) == 0xFFFFFFFF && v365 == 1)
                  {
                    goto LABEL_732;
                  }

                  if (v295 == 1 && v300 == 1 && v365 == -1)
                  {
                    if (v401 == -1)
                    {
                      v422 = 1;
                    }

                    else
                    {
                      v422 = 3;
                    }

                    *&v551[40] = v422;
                    DWORD2(v555) = 1;
                    goto LABEL_734;
                  }

                  if (v295 != v300 || v295 != v365)
                  {
                    if (!v300)
                    {
                      v16 = a4;
                      if (v295 != v365)
                      {
                        if (v365 == 1)
                        {
                          v448 = 2;
                        }

                        else
                        {
                          v448 = 1;
                        }

                        DWORD2(v555) = v448;
                        *&v551[40] = 3;
                        goto LABEL_812;
                      }

                      goto LABEL_804;
                    }

LABEL_780:
                    *&v551[16] = 8;
                    goto LABEL_735;
                  }

                  v409 = (v365 == 1) ^ (v401 != 0);
                  if (v401 * v295 != -1)
                  {
                    goto LABEL_748;
                  }

                  v438 = v581[2];
                  v437 = v581[3];
                  v439 = v582[3];
                  v440 = *v438;
                  v441 = v438[1];
                  v442 = *v437;
                  v443 = v437[1];
                  v444 = *v439;
                  v445 = v439[1];
                  *&v540 = 0x3FF0000000000000;
                  v446 = sub_1D0E6E618(v440, v441, v442, v443, v444, v445, &v540);
                  if (v446 == 0.0)
                  {
                    goto LABEL_807;
                  }

                  if ((*&v446 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v455 = fabs(v446);
                    if (v446 > 0.0)
                    {
                      v447 = 1;
                    }

                    else
                    {
                      v447 = -1;
                    }

                    if (v455 <= *&v540 * 2.22044605e-16)
                    {
LABEL_807:
                      v447 = 0;
                    }
                  }

                  else if (v446 > 0.0)
                  {
                    v447 = 1;
                  }

                  else
                  {
                    v447 = -1;
                  }

                  v456 = v581[3];
                  v457 = sub_1D0E6E4CC(v581);
                  v458 = v582[3];
                  *&v540 = 0x3FF0000000000000;
                  v459 = sub_1D0E6E618(*v456, v456[1], *v457, v457[1], *v458, v458[1], &v540);
                  if (v459 == 0.0)
                  {
LABEL_836:
                    v460 = 0;
                    goto LABEL_851;
                  }

                  if ((*&v459 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v465 = fabs(v459);
                    if (v459 > 0.0)
                    {
                      v460 = 1;
                    }

                    else
                    {
                      v460 = -1;
                    }

                    if (v465 <= *&v540 * 2.22044605e-16)
                    {
                      goto LABEL_836;
                    }
                  }

                  else if (v459 > 0.0)
                  {
                    v460 = 1;
                  }

                  else
                  {
                    v460 = -1;
                  }

LABEL_851:
                  v466 = v460 * v447;
                  v81 = v494;
                  v14 = v488;
                  if (v466 == 1)
                  {
                    v463 = v581;
                    v464 = v582;
LABEL_853:
                    if (sub_1D0E702A4(**(v463 + 24), *(*(v463 + 24) + 8), **(v464 + 16), *(*(v464 + 16) + 8), **(v464 + 24), *(*(v464 + 24) + 8)) * v401 == -1)
                    {
                      v409 ^= 1u;
                    }
                  }

LABEL_855:
                  *&v551[80 * v409 + 40] = 1;
                  *&v551[80 * (v409 ^ 1) + 40] = 2;
                  v551[20] = 1;
                  a6 = v489;
                  v16 = a4;
                  goto LABEL_802;
                }

                v268 = 0;
                *&v551[16] = 3;
                *v551 = *&v583[8];
                v269 = 1;
                v270 = 40;
                do
                {
                  v271 = v269;
                  v272 = *&v590[4 * v268 + 34];
                  if (v272 == -1)
                  {
                    v274 = &v551[80 * v268 + 40];
                    *(v274 + 3) = v245;
                    *(v274 + 8) = 0;
                  }

                  else if (v272 == 1)
                  {
                    v273 = &v551[80 * v268 + 40];
                    v273[3] = vdupq_n_s64(1uLL);
                    v273[4].i64[0] = 0x412E848000000000;
                  }

                  else
                  {
                    v275 = &v583[v270];
                    v276 = &v551[80 * v268 + 40];
                    *(v276 + 3) = *v275;
                    *(v276 + 8) = *(v275 + 2);
                  }

                  v269 = 0;
                  v270 = 64;
                  v268 = 1;
                }

                while ((v271 & 1) != 0);
                v277 = v580[2];
                v278 = v580[3];
                v279 = sub_1D0E6E4CC(v579);
                *&v540 = 0x3FF0000000000000;
                v280 = sub_1D0E6E618(*v277, v277[1], *v278, v278[1], *v279, v279[1], &v540);
                if (v280 == 0.0)
                {
                  goto LABEL_447;
                }

                if ((*&v280 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                {
                  v301 = fabs(v280);
                  if (v280 > 0.0)
                  {
                    v281 = 1;
                  }

                  else
                  {
                    v281 = -1;
                  }

                  if (v301 <= *&v540 * 2.22044605e-16)
                  {
LABEL_447:
                    v281 = 0;
                  }
                }

                else if (v280 > 0.0)
                {
                  v281 = 1;
                }

                else
                {
                  v281 = -1;
                }

                v302 = *&v590[26];
                v303 = v579[2];
                v304 = v579[3];
                v305 = sub_1D0E6E4CC(v580);
                *&v540 = 0x3FF0000000000000;
                v306 = sub_1D0E6E618(*v303, v303[1], *v304, v304[1], *v305, v305[1], &v540);
                if (v306 == 0.0)
                {
LABEL_472:
                  v307 = 0;
                  goto LABEL_481;
                }

                if ((*&v306 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                {
                  v308 = fabs(v306);
                  if (v306 > 0.0)
                  {
                    v307 = 1;
                  }

                  else
                  {
                    v307 = -1;
                  }

                  if (v308 <= *&v540 * 2.22044605e-16)
                  {
                    goto LABEL_472;
                  }
                }

                else if (v306 > 0.0)
                {
                  v307 = 1;
                }

                else
                {
                  v307 = -1;
                }

LABEL_481:
                if (v307 * v302 != -1)
                {
                  v309 = v580[3];
                  v310 = sub_1D0E6E4CC(v580);
                  v311 = sub_1D0E6E4CC(v579);
                  *&v540 = 0x3FF0000000000000;
                  v312 = sub_1D0E6E618(*v309, v309[1], *v310, v310[1], *v311, v311[1], &v540);
                  if (v312 == 0.0)
                  {
LABEL_483:
                    v313 = 0;
                    goto LABEL_516;
                  }

                  if ((*&v312 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v328 = fabs(v312);
                    if (v312 > 0.0)
                    {
                      v313 = 1;
                    }

                    else
                    {
                      v313 = -1;
                    }

                    if (v328 <= *&v540 * 2.22044605e-16)
                    {
                      goto LABEL_483;
                    }
                  }

                  else if (v312 > 0.0)
                  {
                    v313 = 1;
                  }

                  else
                  {
                    v313 = -1;
                  }

LABEL_516:
                  v330 = v579[2];
                  v329 = v579[3];
                  v331 = sub_1D0E6E4CC(v579);
                  *&v540 = 0x3FF0000000000000;
                  v332 = sub_1D0E6E618(*v330, v330[1], *v329, v329[1], *v331, v331[1], &v540);
                  if (v332 != 0.0)
                  {
                    if ((*&v332 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                    {
                      if (v332 > 0.0)
                      {
                        v333 = 1;
                      }

                      else
                      {
                        v333 = -1;
                      }

                      goto LABEL_526;
                    }

                    v334 = fabs(v332);
                    if (v332 > 0.0)
                    {
                      v333 = 1;
                    }

                    else
                    {
                      v333 = -1;
                    }

                    if (v334 > *&v540 * 2.22044605e-16)
                    {
                      goto LABEL_526;
                    }
                  }

                  v333 = 0;
LABEL_526:
                  v336 = v580[2];
                  v335 = v580[3];
                  v337 = sub_1D0E6E4CC(v580);
                  *&v540 = 0x3FF0000000000000;
                  v338 = sub_1D0E6E618(*v336, v336[1], *v335, v335[1], *v337, v337[1], &v540);
                  a6 = v489;
                  v16 = a4;
                  if (v338 == 0.0)
                  {
                    goto LABEL_527;
                  }

                  if ((*&v338 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                  {
                    if (v338 > 0.0)
                    {
                      v339 = 1;
                    }

                    else
                    {
                      v339 = -1;
                    }

                    goto LABEL_536;
                  }

                  v340 = fabs(v338);
                  v339 = v338 > 0.0 ? 1 : -1;
                  if (v340 <= *&v540 * 2.22044605e-16)
                  {
LABEL_527:
                    v339 = 0;
                  }

LABEL_536:
                  if (v307)
                  {
                    v341 = 1;
                  }

                  else
                  {
                    v341 = v339 * v302 == 1;
                  }

                  v342 = !v341;
                  if (v333 != v302 && v333 != v307 && (v307 | v302 || v333 == -1))
                  {
                    if (v339 == 1)
                    {
                      v348 = 2;
                    }

                    else
                    {
                      v348 = 1;
                    }

                    if (v307 == 1 || v302 == 1)
                    {
                      v350 = 1;
                    }

                    else
                    {
                      v350 = 2;
                    }

                    if (v342)
                    {
                      v350 = 3;
                    }

                    *&v551[40] = v348;
                    DWORD2(v555) = v350;
                    v13 = v490;
                    v14 = v488;
                    v81 = v494;
                    if (v342)
                    {
                      goto LABEL_802;
                    }
                  }

                  else
                  {
                    if (!((v313 != 0) | v342 & 1))
                    {
                      *&v551[40] = 4;
                      DWORD2(v555) = 4;
                      v13 = v490;
                      v14 = v488;
LABEL_737:
                      v81 = v494;
                      goto LABEL_802;
                    }

                    v343 = v313;
                    v13 = v490;
                    v14 = v488;
                    v81 = v494;
                    if (!v281)
                    {
                      if (v339 == 1)
                      {
                        v366 = 2;
                      }

                      else
                      {
                        v366 = 1;
                      }

                      if (v342)
                      {
                        v347 = 3;
                      }

                      else
                      {
                        v347 = v366;
                      }

                      *&v551[40] = 3;
                      goto LABEL_619;
                    }

                    if (v281 == v343 && v339 * v281 != -1)
                    {
                      v344 = v339 == 1;
                      if (v339 == 1)
                      {
                        v345 = 1;
                      }

                      else
                      {
                        v345 = 2;
                      }

                      if (v344)
                      {
                        v346 = 2;
                      }

                      else
                      {
                        v346 = 1;
                      }

                      if (v342)
                      {
                        v347 = 3;
                      }

                      else
                      {
                        v347 = v346;
                      }

                      *&v551[40] = v345;
                      goto LABEL_619;
                    }

                    if (v343 + v339)
                    {
                      if (v281 != -v339)
                      {
                        goto LABEL_802;
                      }

                      if (v339 == 1)
                      {
                        v424 = 2;
                      }

                      else
                      {
                        v424 = 1;
                      }

                      *&v551[40] = v424;
                      DWORD2(v555) = v424;
                      if (v342)
                      {
                        v347 = 3;
LABEL_619:
                        DWORD2(v555) = v347;
                        goto LABEL_802;
                      }
                    }

                    else
                    {
                      if (v339 == 1)
                      {
                        v367 = 2;
                      }

                      else
                      {
                        v367 = 1;
                      }

                      if (v339 == 1)
                      {
                        v368 = 1;
                      }

                      else
                      {
                        v368 = 2;
                      }

                      *&v551[40] = v367;
                      DWORD2(v555) = v368;
                    }
                  }

                  v551[20] = 1;
                  goto LABEL_802;
                }

                v314 = v579[2];
                v315 = v579[3];
                v316 = sub_1D0E6E4CC(v579);
                *&v540 = 0x3FF0000000000000;
                v317 = *v315;
                v318 = v315[1];
                a6 = v489;
                v319 = sub_1D0E6E618(*v314, v314[1], v317, v318, *v316, v316[1], &v540);
                v13 = v490;
                v16 = a4;
                if (v319 == 0.0)
                {
                  goto LABEL_485;
                }

                if ((*&v319 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                {
                  v369 = fabs(v319);
                  if (v319 > 0.0)
                  {
                    v320 = 1;
                  }

                  else
                  {
                    v320 = -1;
                  }

                  if (v369 <= *&v540 * 2.22044605e-16)
                  {
LABEL_485:
                    v320 = 0;
                  }
                }

                else if (v319 > 0.0)
                {
                  v320 = 1;
                }

                else
                {
                  v320 = -1;
                }

                v81 = v494;
                if (v320 == v302)
                {
                  if (!v281)
                  {
                    if (v307 == 1)
                    {
                      v377 = 1;
                    }

                    else
                    {
                      v377 = 2;
                    }

                    *&v551[40] = 3;
                    goto LABEL_647;
                  }

                  if (v281 == v307)
                  {
                    if (v307 == 1)
                    {
                      v370 = 1;
                    }

                    else
                    {
                      v370 = 2;
                    }

                    *&v551[40] = v370;
                    DWORD2(v555) = v370;
LABEL_793:
                    v551[20] = 1;
                    goto LABEL_801;
                  }
                }

                if (v320 == v307)
                {
                  v371 = v580[3];
                  v372 = sub_1D0E6E4CC(v580);
                  v373 = sub_1D0E6E4CC(v579);
                  *&v540 = 0x3FF0000000000000;
                  v81 = v494;
                  v374 = *v372;
                  v375 = v372[1];
                  v16 = a4;
                  v376 = sub_1D0E6E618(*v371, v371[1], v374, v375, *v373, v373[1], &v540);
                  if (v376 == 0.0)
                  {
LABEL_642:
                    v377 = 4;
                    *&v551[40] = 4;
LABEL_647:
                    DWORD2(v555) = v377;
LABEL_801:
                    v14 = v488;
                    goto LABEL_802;
                  }

                  if ((*&v376 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                  {
                    v432 = fabs(v376);
                    if (v376 > 0.0)
                    {
                      v423 = 1;
                    }

                    else
                    {
                      v423 = -1;
                    }

                    if (v432 <= *&v540 * 2.22044605e-16)
                    {
                      goto LABEL_642;
                    }
                  }

                  else if (v376 > 0.0)
                  {
                    v423 = 1;
                  }

                  else
                  {
                    v423 = -1;
                  }

                  if (v423 == v307)
                  {
                    if (v307 == 1)
                    {
                      v433 = 1;
                    }

                    else
                    {
                      v433 = 2;
                    }

                    if (v307 == 1)
                    {
                      v434 = 2;
                    }

                    else
                    {
                      v434 = 1;
                    }

                    *&v551[40] = v433;
                    DWORD2(v555) = v434;
                    goto LABEL_793;
                  }
                }

                if (v307 == 1)
                {
                  v435 = 2;
                }

                else
                {
                  v435 = 1;
                }

                if (v307 == 1)
                {
                  v436 = 1;
                }

                else
                {
                  v436 = 2;
                }

                *&v551[40] = v435;
                DWORD2(v555) = v436;
                goto LABEL_801;
              }

              if (v589 != 99)
              {
                if (v589 != 101 || (v589 & 0x100) != 0)
                {
                  goto LABEL_202;
                }

                sub_1D0E6DED0(v551, v583, &v578);
                goto LABEL_802;
              }

              if ((v589 & 0x100) != 0)
              {
                v282 = v14;
                v549[0] = v516;
                v549[1] = v517;
                v550 = v518;
                *&v545[16] = v513;
                v546 = v514;
                v547 = *v515;
                v548 = *&v515[16];
                v542 = v510;
                v543 = *v511;
                v544 = *&v511[16];
                *v545 = v512;
                v540 = v508;
                v541 = v509;
                v283 = *&v590[38];
                if (*&v590[34] == 1)
                {
                  v284 = v579[2];
                  v285 = v579[3];
                  v286 = sub_1D0E6E4CC(v579);
                  *&v539 = 0x3FF0000000000000;
                  v287 = sub_1D0E6E618(*v284, v284[1], *v285, v285[1], *v286, v286[1], &v539);
                  if (v287 == 0.0 || (*&v287 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v287) <= *&v539 * 2.22044605e-16)
                  {
                    a6 = v489;
                    v16 = a4;
                  }

                  else
                  {
                    if (v287 <= 0.0)
                    {
                      v351 = 1;
                    }

                    else
                    {
                      v351 = 2;
                    }

                    a6 = v489;
                    v16 = a4;
                    DWORD2(v546) = 3;
                    DWORD2(v542) = v351;
                    LODWORD(v541) = 5;
                    if (*v583 <= 1uLL)
                    {
                      goto LABEL_864;
                    }

                    v540 = *&v583[24];
                    *&v545[8] = v586;
                    *&v545[24] = *v587;
                    *(v549 + 8) = *&v587[8];
                    *(&v549[1] + 1) = *&v587[24];
                    *&v539 = a12;
                    sub_1D0E6DD24(&v539, &v540);
                  }
                }

                if (v283 == 1)
                {
                  v425 = v580[2];
                  v426 = v580[3];
                  v427 = sub_1D0E6E4CC(v580);
                  *&v539 = 0x3FF0000000000000;
                  v428 = sub_1D0E6E618(*v425, v425[1], *v426, v426[1], *v427, v427[1], &v539);
                  if (v428 == 0.0 || (*&v428 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v428) <= *&v539 * 2.22044605e-16)
                  {
                    v16 = a4;
                  }

                  else
                  {
                    if (v428 <= 0.0)
                    {
                      v429 = 1;
                    }

                    else
                    {
                      v429 = 2;
                    }

                    v16 = a4;
                    DWORD2(v546) = v429;
                    DWORD2(v542) = 3;
                    LODWORD(v541) = 5;
                    if (!*v583)
                    {
                      goto LABEL_864;
                    }

                    v540 = *&v583[8];
                    *&v545[8] = *&v583[40];
                    *&v545[24] = *&v583[56];
                    *(v549 + 8) = v584;
                    *(&v549[1] + 1) = v585;
                    *&v539 = a12;
                    sub_1D0E6DD24(&v539, &v540);
                  }
                }

                v81 = v494;
                v14 = v282;
                goto LABEL_202;
              }

              if (!*&v590[34])
              {
                sub_1D0E6DED0(v551, v583, &v578);
                *&v551[16] = 5;
LABEL_802:
                *&v540 = a12;
                sub_1D0E6DD24(&v540, v551);
                goto LABEL_202;
              }

              if (vabdd_f64(*&v585, *&v587[24]) >= 50.0)
              {
                v288 = *&v585 < *&v587[24];
              }

              else
              {
                v540 = v584;
                sub_1D0E6F7F8(&v540);
                v539 = *&v587[8];
                sub_1D0E6F7F8(&v539);
                v288 = sub_1D0E6F6E4(v540, *(&v540 + 1), v539, *(&v539 + 1));
              }

              *&v551[16] = 5;
              if (*v583 <= v288)
              {
LABEL_864:
                __assert_rtn("assign_point", "get_turn_info.hpp", 164, "index < info.count");
              }

              *v551 = *&v583[16 * v288 + 8];
              v321 = &v583[56 * v288 + 40];
              *(v554 + 8) = *v321;
              *(&v554[1] + 1) = *(v321 + 2);
              *(v558 + 8) = *(v321 + 24);
              *(&v558[1] + 1) = *(v321 + 5);
              v322 = *&v590[34];
              if (!*&v590[34])
              {
                __assert_rtn("apply", "get_turn_info.hpp", 1033, "arrival_p != 0");
              }

              v323 = v579[2];
              v324 = v579[3];
              v325 = sub_1D0E6E4CC(v579);
              *&v540 = 0x3FF0000000000000;
              v326 = sub_1D0E6E618(*v323, v323[1], *v324, v324[1], *v325, v325[1], &v540);
              if (v326 == 0.0)
              {
                goto LABEL_507;
              }

              if ((*&v326 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
              {
                v378 = fabs(v326);
                if (v326 > 0.0)
                {
                  v327 = 1;
                }

                else
                {
                  v327 = -1;
                }

                if (v378 <= *&v540 * 2.22044605e-16)
                {
LABEL_507:
                  v327 = 0;
                }
              }

              else if (v326 > 0.0)
              {
                v327 = 1;
              }

              else
              {
                v327 = -1;
              }

              v379 = v580[2];
              v380 = v580[3];
              v381 = sub_1D0E6E4CC(v580);
              *&v540 = 0x3FF0000000000000;
              v382 = sub_1D0E6E618(*v379, v379[1], *v380, v380[1], *v381, v381[1], &v540);
              if (v382 != 0.0)
              {
                if ((*&v382 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                {
                  if (v382 > 0.0)
                  {
                    v383 = 1;
                  }

                  else
                  {
                    v383 = -1;
                  }

LABEL_662:
                  if (v322 == 1)
                  {
                    v385 = v327;
                  }

                  else
                  {
                    v385 = v383;
                  }

                  if (v385 * v322 == 1)
                  {
                    v386 = 1;
                  }

                  else
                  {
                    v386 = 2;
                  }

                  if (v385 * v322 == 1)
                  {
                    v387 = 2;
                  }

                  else
                  {
                    v387 = 1;
                  }

                  v388 = v385 == 0;
                  if (v385)
                  {
                    v389 = v386;
                  }

                  else
                  {
                    v389 = 4;
                  }

                  if (v388)
                  {
                    v390 = 4;
                  }

                  else
                  {
                    v390 = v387;
                  }

                  *&v551[40] = v389;
                  DWORD2(v555) = v390;
                  if (v327)
                  {
                    v391 = *v551;
                    v392 = *&v551[8];
                    v393 = (*&v551[8] - *(*(&v530 + 1) + 8)) * (*&v551[8] - *(*(&v530 + 1) + 8)) + (*v551 - **(&v530 + 1)) * (*v551 - **(&v530 + 1));
                    v16 = a4;
                    v81 = v494;
                    v14 = v488;
                  }

                  else
                  {
                    v81 = v494;
                    v14 = v488;
                    if ((v534 & 1) == 0)
                    {
                      sub_1D0E6E1B8(v529, *(&v530 + 1), v531);
                      v533 = *v531[0];
                      v534 = 1;
                    }

                    v391 = *v551;
                    v392 = *&v551[8];
                    v393 = (*&v551[8] - *(&v533 + 1)) * (*&v551[8] - *(&v533 + 1)) + (*v551 - *&v533) * (*v551 - *&v533);
                    v16 = a4;
                  }

                  *&v555 = v393;
                  if (v383)
                  {
                    v394 = *v521;
                    v395 = v521[1];
                  }

                  else
                  {
                    if ((v525 & 1) == 0)
                    {
                      sub_1D0E6E1B8(v519, v521, v522);
                      v524 = *v522[0];
                      v525 = 1;
                      v391 = *v551;
                      v392 = *&v551[8];
                    }

                    v395 = *(&v524 + 1);
                    v394 = *&v524;
                  }

                  a6 = v489;
                  v559 = (v392 - v395) * (v392 - v395) + (v391 - v394) * (v391 - v394);
                  goto LABEL_802;
                }

                v384 = fabs(v382);
                if (v382 > 0.0)
                {
                  v383 = 1;
                }

                else
                {
                  v383 = -1;
                }

                if (v384 > *&v540 * 2.22044605e-16)
                {
                  goto LABEL_662;
                }
              }

              v383 = 0;
              goto LABEL_662;
            }

            if (v219)
            {
              v16 = a4;
              v45 = 0.5;
              v46 = -0.5;
              if (v168)
              {
                v226 = v161;
                v227 = v562;
                v208 = v566;
                v207 = v568;
LABEL_351:
                v244 = 1;
LABEL_394:
                sub_1D0E6E738(v583, v226, v227, v208, v207, v244);
LABEL_404:
                a6 = v489;
                v13 = v490;
                v14 = v488;
                v81 = v494;
                v245 = xmmword_1D0E7DD30;
                v61 = v498;
                goto LABEL_419;
              }

              if (v170)
              {
                v226 = v162;
                v227 = v566;
LABEL_393:
                v244 = 0;
                goto LABEL_394;
              }
            }

            else
            {
              v16 = a4;
              v45 = 0.5;
              v46 = -0.5;
              if (v168)
              {
                v226 = v161;
                v227 = v563;
                v208 = v567;
                v207 = v569;
                goto LABEL_351;
              }

              if (v170)
              {
                v226 = v162;
                v227 = v567;
                v208 = v563;
                v207 = v565;
                goto LABEL_393;
              }

              v208 = v563;
              v207 = v565;
              v211 = v567;
              v210 = v569;
            }

            sub_1D0E6EA6C(v583, &v539, v538, v208, v207, v211, v210);
            goto LABEL_404;
          }

          v218 = v209 >= v213;
        }

        if (v218)
        {
          v219 = 257;
        }

        else
        {
          v219 = 256;
        }

        goto LABEL_311;
      }

      break;
    }

    v102 = xmmword_1D0E7DD30;
    if (v499 != 1 || *(v16 + 6) >= v101)
    {
      goto LABEL_110;
    }

LABEL_857:
    v13 = v89;
    v14 = v88;
    a6 = v87;
    v81 = v86;
LABEL_858:
    v47 = v480 + 2;
    v467 = v483 + 2;
    v20 = v81 + 1;
    v468 = &a2[2 * (v482 != a2)];
    if (v482 + 2 != a3)
    {
      v468 = v482 + 2;
    }

    v482 = v468;
    v483 += 2;
    if (v467 != v487)
    {
      continue;
    }

    return 1;
  }
}

double sub_1D0B85938(double *a1, double **a2, __n128 a3)
{
  v5 = *a2;
  v4 = a2[1];
  if ((v4 - *a2) >= 0x40)
  {
    v39 = 0;
    v40 = 0;
    v7 = v4 - 4;
    do
    {
      if (v7 + 2 == v5)
      {
        break;
      }

      v8 = sub_1D0B85B94(a1, v7 + 2, v7, &v39, a3);
      v7 -= 2;
    }

    while ((v8 & 1) != 0);
    if ((v40 & 1) == 0)
    {
      result = 0.0;
      if (v39)
      {
        return result;
      }
    }

    v5 = *a2;
    v4 = a2[1];
  }

  if (v4 == v5)
  {
    return 0.0;
  }

  v10 = *a1;
  v11 = a1[1];
  if (v5 + 2 == v4)
  {
    v20 = *v5;
    v21 = v5[1];
    v22 = v20 - v20;
    v23 = v21 - v21;
    v24 = v10 - *v5;
    v25 = (v21 - v21) * (v11 - v21) + v24 * (v20 - v20);
    if (v25 <= 0.0)
    {
      return v24 * v24 + 0.0 + (v11 - v21) * (v11 - v21);
    }

    v26 = v23 * v23 + v22 * v22;
    if (v26 <= v25)
    {
      return v24 * v24 + 0.0 + (v11 - v21) * (v11 - v21);
    }

    else
    {
      return (v10 - (v20 + v22 * (v25 / v26))) * (v10 - (v20 + v22 * (v25 / v26))) + 0.0 + (v11 - (v21 + v23 * (v25 / v26))) * (v11 - (v21 + v23 * (v25 / v26)));
    }
  }

  else
  {
    v12 = v5[2];
    v13 = v5[3];
    v14 = v5[1];
    v15 = v12 - *v5;
    v16 = v13 - v14;
    v17 = v10 - *v5;
    v18 = (v11 - v14) * (v13 - v14) + v17 * v15;
    if (v18 <= 0.0)
    {
      result = v17 * v17 + 0.0 + (v11 - v14) * (v11 - v14);
    }

    else
    {
      v19 = v16 * v16 + v15 * v15;
      if (v19 <= v18)
      {
        result = (v10 - v12) * (v10 - v12) + 0.0 + (v11 - v13) * (v11 - v13);
      }

      else
      {
        result = (v10 - (*v5 + v15 * (v18 / v19))) * (v10 - (*v5 + v15 * (v18 / v19))) + 0.0 + (v11 - (v14 + v16 * (v18 / v19))) * (v11 - (v14 + v16 * (v18 / v19)));
      }
    }

    if (v5 + 4 != v4)
    {
      v27 = v5 + 3;
      v28 = result;
      while (1)
      {
        v29 = v27[1];
        v30 = v27[2];
        v31 = *(v27 - 1);
        v32 = v29 - v31;
        v33 = v30 - *v27;
        v34 = v11 - *v27;
        v35 = v34 * v33 + (v10 - v31) * (v29 - v31);
        if (v35 <= 0.0)
        {
          v37 = (v10 - v31) * (v10 - v31) + 0.0 + v34 * v34;
        }

        else
        {
          v36 = v33 * v33 + v32 * v32;
          v37 = v36 <= v35 ? (v10 - v29) * (v10 - v29) + 0.0 + (v11 - v30) * (v11 - v30) : (v10 - (v31 + v32 * (v35 / v36))) * (v10 - (v31 + v32 * (v35 / v36))) + 0.0 + (v11 - (*v27 + v33 * (v35 / v36))) * (v11 - (*v27 + v33 * (v35 / v36)));
        }

        if (v37 == 0.0)
        {
          break;
        }

        if (v37 < v28)
        {
          result = v37;
          v28 = v37;
        }

        v38 = v27 + 3;
        v27 += 2;
        if (v38 == v4)
        {
          return result;
        }
      }

      return 0.0;
    }
  }

  return result;
}

uint64_t sub_1D0B85B94(double *a1, double *a2, double *a3, uint64_t a4, __n128 a5)
{
  a5.n128_f64[0] = *a1;
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a1)
  {
    v8 = 1;
  }

  else if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (a5.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = fabs(v6);
    v10 = fabs(a5.n128_f64[0]);
    v11 = vabdd_f64(v6, a5.n128_f64[0]);
    if (v9 < v10)
    {
      v9 = v10;
    }

    if (v9 < 1.0)
    {
      v9 = 1.0;
    }

    v8 = v11 <= v9 * 2.22044605e-16;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == a5.n128_f64[0])
  {
    v12 = 1;
LABEL_13:
    if (v8 && v12)
    {
      v13 = a1[1];
      v14 = a2[1];
      v15 = a3[1];
      v16 = v14 > v13 || v15 < v13;
      if (!v16 || (v14 >= v13 ? (v17 = v15 > v13) : (v17 = 1), !v17))
      {
        *(a4 + 4) = 1;
      }

      goto LABEL_62;
    }

    if (v8)
    {
      goto LABEL_31;
    }

    if (v12)
    {
      v19 = 1;
      v20 = v6 <= a5.n128_f64[0];
      v21 = -1;
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (a5.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v33 = fabs(v7);
    v34 = fabs(a5.n128_f64[0]);
    v35 = vabdd_f64(v7, a5.n128_f64[0]);
    if (v33 < v34)
    {
      v33 = v34;
    }

    if (v33 < 1.0)
    {
      v33 = 1.0;
    }

    v12 = v35 <= v33 * 2.22044605e-16;
    goto LABEL_13;
  }

  if (v8)
  {
LABEL_31:
    v19 = -1;
    v20 = v7 <= a5.n128_f64[0];
    v21 = 1;
LABEL_34:
    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    if (v8)
    {
      v23 = a2;
    }

    else
    {
      v23 = a3;
    }

    v24 = a1[1];
    v25 = v23[1];
    if (v24 != v25)
    {
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_48;
      }

      v26 = fabs(v24);
      v27 = fabs(v25);
      v28 = vabdd_f64(v24, v25);
      if (v26 < v27)
      {
        v26 = v27;
      }

      if (v26 < 1.0)
      {
        v26 = 1.0;
      }

      if (v28 > v26 * 2.22044605e-16)
      {
LABEL_48:
        if (v24 >= v25)
        {
          v29 = v22;
        }

        else
        {
          v29 = -v22;
        }

        goto LABEL_51;
      }
    }

    goto LABEL_70;
  }

LABEL_53:
  if (v6 < a5.n128_f64[0] && v7 > a5.n128_f64[0])
  {
    v22 = 2;
    goto LABEL_69;
  }

  if (v6 > a5.n128_f64[0] && v7 < a5.n128_f64[0])
  {
    v22 = -2;
LABEL_69:
    v39 = 1.0;
    v36 = sub_1D0B827D0(a2, a3, a1, &v39, a5);
    if (v36 != 0.0)
    {
      if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v38 = fabs(v36);
        if (v36 > 0.0)
        {
          v29 = 1;
        }

        else
        {
          v29 = -1;
        }

        if (v38 <= v39 * 2.22044605e-16)
        {
          goto LABEL_70;
        }
      }

      else if (v36 > 0.0)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

LABEL_51:
      if (v22 * v29 >= 1)
      {
        *a4 += v22;
      }

      goto LABEL_62;
    }

LABEL_70:
    v32 = 0;
    *(a4 + 4) = 1;
    *a4 = 0;
    return v32 & 1;
  }

LABEL_62:
  v32 = *(a4 + 4) ^ 1;
  return v32 & 1;
}

uint64_t *sub_1D0B85E58(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) == 1 && fabs(*(a1 + 24)) >= 2.22044605e-16 && (v4.f64[0] = *(a1 + 32), fabs(v4.f64[0]) >= 2.22044605e-16))
  {
    v4.f64[1] = *(a1 + 24);
    v6 = vdivq_f64(*a2, v4);
    *a3 = vaddq_f64(vextq_s8(v6, v6, 8uLL), *a1);
    v5 = 1;
  }

  else
  {
    v8 = 13;
    v7 = 4;
    cnprint::CNPrinter::Print(&v8, &v7, "#tre_ao,empty origin or zero values scale factors, cannot perform coordinate transform.");
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
}

void *trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(*(a1 + 280) + 66) == 1)
  {
    v7[2] = v4;
    v7[3] = v5;
    v7[0] = a2;
    v7[1] = a3;
    return cnnavigation::iOSTimeToLocalTime(v7, a4);
  }

  else
  {

    return sub_1D0B751F4(a4, &unk_1D0ED80C5);
  }
}

void cnprint::CNPrinter::PrintCore(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3, char *__format, va_list a5)
{
  v99 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 160) & 7) == 0)
  {
    return;
  }

  v7 = *a3;
  v8 = v7 != 255 && v7 >= *(a1 + 152);
  if (!v8 || vsnprintf(__str, 0x800uLL, __format, a5) < 1)
  {
    return;
  }

  sub_1D0B751F4(v81, __str);
  v10 = *(a1 + 160);
  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = *(a1 + 176);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = *a2;
  v13 = a1 + 176;
  do
  {
    v14 = *(v11 + 32);
    v8 = v14 >= v12;
    v15 = v14 < v12;
    if (v8)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v13 == a1 + 176 || v12 < *(v13 + 32))
  {
    goto LABEL_17;
  }

  if ((v82 & 0x80u) == 0)
  {
    v60 = v81;
  }

  else
  {
    v60 = v81[0];
  }

  v61 = *a3;
  if (v61 <= 2)
  {
    if (v61 == 1)
    {
      v68 = *(v13 + 40);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136642819;
        *&buf[4] = v60;
        _os_log_debug_impl(&dword_1D0B71000, v68, OS_LOG_TYPE_DEBUG, "%{sensitive}s", buf, 0xCu);
      }

      goto LABEL_17;
    }

    if (v61 == 2)
    {
      v63 = *(v13 + 40);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 136642819;
        *&buf[4] = v60;
        v64 = v63;
        v65 = OS_LOG_TYPE_INFO;
LABEL_122:
        _os_log_impl(&dword_1D0B71000, v64, v65, "%{sensitive}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v61 != 3)
    {
      if (v61 == 4)
      {
        v67 = *(v13 + 40);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 136642819;
          *&buf[4] = v60;
          _os_log_error_impl(&dword_1D0B71000, v67, OS_LOG_TYPE_ERROR, "%{sensitive}s", buf, 0xCu);
        }
      }

      else if (v61 == 5)
      {
        v62 = *(v13 + 40);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          *buf = 136642819;
          *&buf[4] = v60;
          _os_log_fault_impl(&dword_1D0B71000, v62, OS_LOG_TYPE_FAULT, "%{sensitive}s", buf, 0xCu);
        }
      }

      goto LABEL_17;
    }

    v66 = *(v13 + 40);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136642819;
      *&buf[4] = v60;
      v64 = v66;
      v65 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_122;
    }
  }

LABEL_17:
  if ((*(a1 + 160) & 7) != 0)
  {
    if ((v10 & 1) == 0 || (v16 = vcnt_s8((*(a1 + 160) & 7)), v16.i16[0] = vaddlv_u8(v16), v16.u32[0] >= 2uLL))
    {
      sub_1D0BC2F00(buf);
      v80 = time(0);
      v17 = localtime(&v80);
      v18 = *&v17->tm_sec;
      v19 = *&v17->tm_mon;
      v20 = *&v17->tm_isdst;
      tm_zone = v17->tm_zone;
      v77 = v19;
      v78 = v20;
      v76 = v18;
      MEMORY[0x1D387E950](&v87, &v93);
      if (v87 == 1)
      {
        std::ios_base::getloc((&v93 + *(v93 - 24)));
        std::locale::use_facet(&v84, MEMORY[0x1E69E5378]);
        std::locale::~locale(&v84);
        v21 = (&v93 + *(v93 - 24));
        if (v21[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v21);
          v22 = std::locale::use_facet(&v83, MEMORY[0x1E69E5318]);
          v23 = (v22->__vftable[2].~facet_0)(v22, 32);
          std::locale::~locale(&v83);
          v21[1].__fmtflags_ = v23;
        }

        if (!std::time_put<char,std::ostreambuf_iterator<char>>::put())
        {
          std::ios_base::clear((&v93 + *(v93 - 24)), *(&v95[2].__locale_ + *(v93 - 24)) | 1);
        }
      }

      MEMORY[0x1D387E960](&v87);
      sub_1D0BCD7C4(&v93, "\t", 1);
      v24 = pthread_self();
      sub_1D0BC2944(&v87);
      v25 = *(v87 - 3);
      v26 = std::locale::classic();
      v27 = (&v87 + v25);
      std::ios_base::getloc(v27);
      std::ios_base::imbue(v27, v26);
      std::locale::~locale(&v84);
      rdbuf = v27->__rdbuf_;
      if (rdbuf)
      {
        (*(rdbuf->__locale_ + 2))(rdbuf, v26);
        std::locale::locale(v74, rdbuf + 1);
        std::locale::operator=(rdbuf + 1, v26);
        std::locale::~locale(v74);
      }

      std::locale::~locale(&v73);
      MEMORY[0x1D387E980](&v87, v24);
      sub_1D0BC2E5C(&v84, &v88);
      if ((v86 & 0x80u) == 0)
      {
        locale = &v84;
      }

      else
      {
        locale = v84.__locale_;
      }

      if ((v86 & 0x80u) == 0)
      {
        v30 = v86;
      }

      else
      {
        v30 = v85;
      }

      v31 = sub_1D0BCD7C4(&v93, locale, v30);
      if (v86 < 0)
      {
        operator delete(v84.__locale_);
      }

      v87 = *MEMORY[0x1E69E54E8];
      *(&v87 + *(v87 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      v88 = MEMORY[0x1E69E5548] + 16;
      if (v90 < 0)
      {
        operator delete(v89[7].__locale_);
      }

      v88 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v89);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](&v91);
      sub_1D0BCD7C4(v31, "\t", 1);
      cnprint::CNPrinter::GetLogLevelString(a3, &v87);
      if (SHIBYTE(v89[0].__locale_) >= 0)
      {
        v32 = &v87;
      }

      else
      {
        v32 = v87;
      }

      if (SHIBYTE(v89[0].__locale_) >= 0)
      {
        locale_high = HIBYTE(v89[0].__locale_);
      }

      else
      {
        locale_high = v88;
      }

      v34 = sub_1D0BCD7C4(&v93, v32, locale_high);
      sub_1D0BCD7C4(v34, "\t", 1);
      sub_1D0B751F4(&v84, "0x0");
      if ((v86 & 0x80u) == 0)
      {
        v35 = &v84;
      }

      else
      {
        v35 = v84.__locale_;
      }

      if ((v86 & 0x80u) == 0)
      {
        v36 = v86;
      }

      else
      {
        v36 = v85;
      }

      v37 = sub_1D0BCD7C4(&v93, v35, v36);
      sub_1D0BCD7C4(v37, "\t", 1);
      v38 = getpid();
      v39 = MEMORY[0x1D387E9C0](&v93, v38);
      sub_1D0BCD7C4(v39, "\t", 1);
      v40 = sub_1D0BCD7C4(&v93, "unknown:", 8);
      sub_1D0BCD7C4(v40, "\t", 1);
      std::operator+<char>();
      v41 = std::string::append(&v71, ".", 1uLL);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      cnprint::CNPrinter::GetLogCategoryString(a2, v69);
      if ((v70 & 0x80u) == 0)
      {
        v43 = v69;
      }

      else
      {
        v43 = v69[0];
      }

      if ((v70 & 0x80u) == 0)
      {
        v44 = v70;
      }

      else
      {
        v44 = v69[1];
      }

      v45 = std::string::append(&v72, v43, v44);
      v46 = *&v45->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = std::string::append(&v73, "]", 1uLL);
      v48 = *&v47->__r_.__value_.__l.__data_;
      v75 = v47->__r_.__value_.__r.__words[2];
      *&v74[0].__locale_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (v70 < 0)
      {
        operator delete(v69[0]);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v75 >= 0)
      {
        v49 = v74;
      }

      else
      {
        v49 = v74[0].__locale_;
      }

      if (v75 >= 0)
      {
        v50 = HIBYTE(v75);
      }

      else
      {
        v50 = v74[1].__locale_;
      }

      v51 = sub_1D0BCD7C4(&v93, v49, v50);
      sub_1D0BCD7C4(v51, "\t", 1);
      if ((v82 & 0x80u) == 0)
      {
        v52 = v81;
      }

      else
      {
        v52 = v81[0];
      }

      if ((v82 & 0x80u) == 0)
      {
        v53 = v82;
      }

      else
      {
        v53 = v81[1];
      }

      v54 = sub_1D0BCD7C4(&v93, v52, v53);
      sub_1D0BCD7C4(v54, "\n", 1);
      sub_1D0BC2E5C(&v73, &v94);
      if ((*(a1 + 160) & 2) != 0)
      {
        if (*(a1 + 344) || !sub_1D0C71260((a1 + 192), &unk_1D0ED80C5) && (*(a1 + 344) || (std::ofstream::open(), *(a1 + 344))))
        {
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v73;
          }

          else
          {
            v55 = v73.__r_.__value_.__r.__words[0];
          }

          v56 = strlen(v55);
          sub_1D0BCD7C4((a1 + 216), v55, v56);
        }
      }

      if ((*(a1 + 160) & 4) != 0)
      {
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v73;
        }

        else
        {
          v57 = v73.__r_.__value_.__r.__words[0];
        }

        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v73.__r_.__value_.__l.__size_;
        }

        sub_1D0BCD7C4(MEMORY[0x1E69E5310], v57, size);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74[0].__locale_);
      }

      if (v86 < 0)
      {
        operator delete(v84.__locale_);
      }

      if (SHIBYTE(v89[0].__locale_) < 0)
      {
        operator delete(v87);
      }

      *buf = *MEMORY[0x1E69E54D8];
      v59 = *(MEMORY[0x1E69E54D8] + 72);
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
      v93 = v59;
      v94 = MEMORY[0x1E69E5548] + 16;
      if (v96 < 0)
      {
        operator delete(v95[7].__locale_);
      }

      v94 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v95);
      std::iostream::~basic_iostream();
      MEMORY[0x1D387EBF0](&v97);
    }
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }
}

void sub_1D0B86C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, std::locale a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (a2)
  {
    MEMORY[0x1D387E960](&a42, a2, a3, a4, a5, a6, a7, a8);
    __cxa_begin_catch(a1);
    std::ios_base::__set_badbit_and_consider_rethrow((v42 + *(STACK[0x220] - 24)));
    __cxa_end_catch();
    JUMPOUT(0x1D0B863E4);
  }

  _Unwind_Resume(a1);
}

void sub_1D0B86E94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a2 + 0x4000;
  sub_1D0B88E94(v35, a3);
  v5 = sub_1D0B8910C((v3 + 17824), v35);
  v6 = *(v3 + 17864);
  if (v6 >= *(*(v3 + 232) + 984))
  {
    *(v3 + 248) = 0;
    *(v3 + 272) = 0;
    *(v3 + 280) = 0;
    *(v4 + 705) = 0;
    v25 = *(v3 + 17832);
    v26 = *(v3 + 17840);
    if (v26 == v25)
    {
      v26 = *(v3 + 17832);
    }

    else
    {
      v27 = *(v3 + 17856);
      v28 = &v25[v27 / 0x1A];
      v29 = v25[(v27 + v6) / 0x1A] + 152 * ((v27 + v6) % 0x1A);
      if (*v28 + 152 * (v27 % 0x1A) != v29)
      {
        v30 = (*v28 + 152 * (v27 % 0x1A));
        do
        {
          v31 = *v30;
          v30 += 19;
          (*v31)(v5);
          if (v30 - *v28 == 3952)
          {
            v32 = v28[1];
            ++v28;
            v30 = v32;
          }
        }

        while (v30 != v29);
        v26 = *(v3 + 17840);
        v25 = *(v3 + 17832);
      }
    }

    *(v3 + 17864) = 0;
    v33 = v26 - v25;
    if (v33 >= 3)
    {
      do
      {
        operator delete(*v25);
        v25 = (*(v3 + 17832) + 8);
        *(v3 + 17832) = v25;
        v33 = (*(v3 + 17840) - v25) >> 3;
      }

      while (v33 > 2);
    }

    if (v33 == 1)
    {
      v34 = 13;
    }

    else
    {
      if (v33 != 2)
      {
        return;
      }

      v34 = 26;
    }

    *(v3 + 17856) = v34;
  }

  else if (v6)
  {
    while (1)
    {
      v7 = *(v3 + 17856);
      v8 = *(*(v3 + 17832) + 8 * (v7 / 0x1A));
      v57 = &unk_1F4CEF658;
      if (!*(v3 + 248))
      {
        return;
      }

      v9 = v8 + 152 * (v7 % 0x1A);
      v10 = v3 + 288 + 48 * *(v3 + 284);
      v11 = *(v10 + 40);
      v12 = *(v10 + 24);
      v58 = *(v10 + 8);
      v59 = v12;
      v60 = v11;
      v13 = (*(*v9 + 16))(v9);
      v15.n128_f64[0] = v14;
      if (v58 || (v16 = *(&v58 + 1), (*(&v58 + 1) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
      {
        if (v13)
        {
          v17 = 1;
        }

        else
        {
          v17 = (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        }

        if (v17 && v58 != v13)
        {
          if (v58 < v13)
          {
            return;
          }

          goto LABEL_16;
        }

        v16 = *(&v58 + 1);
      }

      if (v16 < v14)
      {
        return;
      }

LABEL_16:
      v53 = 0;
      v54 = 0;
      v53 = (*(*v9 + 16))(v9, v15);
      v54 = v18;
      v55 = *(v9 + 104);
      v56 = *(v9 + 120);
      if (!cnestimation::RotationStabilizedAccelerationEstimator::AddAcceleration(v3 + 17088, &v53, v56, v19))
      {
        if (*(v4 + 705) == 1)
        {
          v20 = *(v3 + 17104);
          v21 = *(v3 + 17112);
          v22 = *(v3 + 17120);
          v23 = *(v3 + 17160);
          v24 = *(v3 + 17184);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0;
          v36 = &unk_1F4CEE768;
          v37 = v20;
          v38 = v21;
          v44 = 0x7FF8000000000000;
          v45 = *(v3 + 17168);
          v47 = vsubq_f64(v55, v45);
          v46 = v24;
          v48 = v56 - v24;
          v49 = v22;
          v50 = *(v4 + 744);
          v51 = *(v4 + 760);
          v52 = v23;
          operator new();
        }

        sub_1D0B7E234((v3 + 17824));
        if (*(v3 + 17864))
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1D0B874BC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1D0B87544(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000004;
  *(a1 + 24) = 0x100000004;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDEBB8;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 4)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}