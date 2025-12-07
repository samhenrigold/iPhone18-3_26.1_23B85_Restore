void sub_23A030634(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::Resume(OALSource *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v5 = (*(*(this + 10) + 16))();
  v6 = *(this + 76);
  if (v6 != 4115)
  {
    if (v6 == 56579)
    {
      operator new();
    }

LABEL_13:
    v7 = 0;
LABEL_14:
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(this + 86) = 1;
  v7 = OALSource::AddRenderProc(this);
  if (!v7)
  {
    *(this + 76) = 4114;
    v9 = *(this + 52);
    if (v9)
    {
      SourceNotifications::CallSourceNotifications(v9, 4112);
    }

    goto LABEL_13;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_14;
  }

  v8 = *this;
  *buf = 136315906;
  v12 = "oalSource.cpp";
  v13 = 1024;
  v14 = 1634;
  v15 = 2048;
  v16 = v8;
  v17 = 2048;
  v18 = v7;
  _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::Resume FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
  if (v5)
  {
LABEL_15:
    (*(*(this + 10) + 24))(this + 80);
  }

LABEL_16:
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return v7;
}

void sub_23A0308D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::AddRenderProc(OALSource *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 236))
  {
    return 0;
  }

  v3 = *(this + 58);
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 27) = OALSource::SourceInputProc;
  *(this + 28) = this;
  v4 = OALContext::SetBusRenderProc(*(this + 1), v3, (this + 216));
  if (v4 || (v4 = AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0), v4))
  {
    v1 = v4;
  }

  else
  {
    v1 = OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
    if (!v1)
    {
      *(this + 236) = 1;
      return v1;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = *this;
    v7 = 136315906;
    v8 = "oalSource.cpp";
    v9 = 1024;
    v10 = 2594;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v1;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::AddRenderProc FAILED - OALSource = %ld : result = %ld", &v7, 0x26u);
  }

  return v1;
}

uint64_t OALSource::Play(OALSource *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v14 = (*(*(this + 10) + 16))();
  if (*(this + 71) == 1735095154)
  {
    started = OALSource::StartRenderer(this);
    goto LABEL_6;
  }

  if (!*(this + 12))
  {
    v6 = 0;
    if (v14 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v8 = *(this + 76);
  v9 = v8 - 1;
  if ((v8 - 56577) <= 5)
  {
    if (((1 << v9) & 0x32) == 0)
    {
      if (((1 << v9) & 9) != 0)
      {
        operator new();
      }

      operator new();
    }

LABEL_20:
    operator new();
  }

  if (v8 == 4115)
  {
    started = OALSource::Resume(this);
LABEL_6:
    v6 = started;
    if (!started)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v8 == 4114)
  {
    *(this + 86) = -1;
    goto LABEL_20;
  }

  OALSource::PrepBufferQueueForPlayback(this);
  v11 = *(this + 3);
  v6 = 0xFFFFFFFFLL;
  if (!*v11 || (v12 = *v11 + ((*(this + 14) << 48) >> 43), v12 == v11[1]) || (v6 = OALSource::SetupMixerBus(this, (*(v12 + 8) + 304)), v6) || (v6 = OALSource::AddRenderProc(this), v6))
  {
LABEL_7:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = *this;
      *buf = 136315906;
      v16 = "oalSource.cpp";
      v17 = 1024;
      v18 = 1481;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::Play FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
      if (v14 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (v14 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(this + 19) = 1;
  *(this + 76) = 4114;
  v13 = *(this + 52);
  if (v13)
  {
    SourceNotifications::CallSourceNotifications(v13, 4112);
  }

  v6 = 0;
  *(this + 86) = 1;
  *(this + 60) = 0;
  if (v14 == 1)
  {
LABEL_22:
    (*(*(this + 10) + 24))(this + 80);
  }

LABEL_23:
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return v6;
}

void sub_23A030EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CAGuard::Locker::~Locker(&a9);
  if (v10 != v11)
  {
    atomic_fetch_add((v9 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(a1);
}

void OALSource::Rewind(OALSource *this)
{
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v32 = (*(*(this + 10) + 16))();
  *(this + 85) = 0;
  v5 = *(this + 76);
  if (v5 <= 56576)
  {
    switch(v5)
    {
      case 4114:
        *(this + 76) = 56580;
        *(this + 86) = -1;
        operator new();
      case 4115:
        v19 = *(this + 58);
        if (v19 != -1)
        {
          OALContext::SetBusAsAvailable(*(this + 1), v19);
          *(this + 58) = -1;
        }

        OALSource::ClearActiveQueue(this);
        v20 = *(this + 3);
        v21 = *(this + 4);
        *(this + 3) = v21;
        *(this + 4) = v20;
        v23 = *v21;
        v22 = v21[1];
        v24 = *(v20 + 8) - *v20;
        v25 = v22 - *v21;
        v7 = v22 == *v21;
        *(v21 + 6) = v25 >> 5;
        *(v20 + 24) = v24 >> 5;
        *(this + 12) = *(v20 + 24) + *(v21 + 6);
        if (!v7)
        {
          v26 = v25 - 32;
          v27 = v23;
          if (v26 < 0x20)
          {
            goto LABEL_38;
          }

          v28 = (v26 >> 5) + 1;
          v27 = v23 + 32 * (v28 & 0xFFFFFFFFFFFFFFELL);
          v29 = (v23 + 48);
          v30 = v28 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *(v29 - 4) = 0;
            *v29 = 0;
            v29 += 8;
            v30 -= 2;
          }

          while (v30);
          if (v28 != (v28 & 0xFFFFFFFFFFFFFFELL))
          {
LABEL_38:
            do
            {
              *(v27 + 16) = 0;
              v27 += 32;
            }

            while (v27 != v22);
          }
        }

        break;
      case 4116:
        OALSource::ClearActiveQueue(this);
        v8 = *(this + 3);
        v9 = *(this + 4);
        *(this + 3) = v9;
        *(this + 4) = v8;
        v11 = *v9;
        v10 = v9[1];
        v12 = *(v8 + 8) - *v8;
        v13 = v10 - *v9;
        v7 = v10 == *v9;
        *(v9 + 6) = v13 >> 5;
        *(v8 + 24) = v12 >> 5;
        *(this + 12) = *(v8 + 24) + *(v9 + 6);
        if (!v7)
        {
          v14 = v13 - 32;
          v15 = v11;
          if (v14 < 0x20)
          {
            goto LABEL_39;
          }

          v16 = (v14 >> 5) + 1;
          v15 = v11 + 32 * (v16 & 0xFFFFFFFFFFFFFFELL);
          v17 = (v11 + 48);
          v18 = v16 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *(v17 - 4) = 0;
            *v17 = 0;
            v17 += 8;
            v18 -= 2;
          }

          while (v18);
          if (v16 != (v16 & 0xFFFFFFFFFFFFFFELL))
          {
LABEL_39:
            do
            {
              *(v15 + 16) = 0;
              v15 += 32;
            }

            while (v15 != v10);
          }
        }

        break;
      default:
        goto LABEL_10;
    }

    *(this + 14) = 0;
    *(this + 60) = 0;
    *(this + 76) = 4113;
    v31 = *(this + 52);
    if (v31)
    {
      SourceNotifications::CallSourceNotifications(v31, 4112);
    }
  }

  else
  {
    v6 = v5 - 56577;
    v7 = v6 > 5 || v6 == 3;
    if (!v7)
    {
      *(this + 76) = 56580;
      operator new();
    }
  }

LABEL_10:
  if (v32 == 1)
  {
    (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }
}

void sub_23A03125C(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::Pause(OALSource *this)
{
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  result = (*(*(this + 10) + 16))();
  v6 = *(this + 76);
  if ((v6 - 56578) <= 4 && ((1 << (v6 - 2)) & 0x19) != 0)
  {
    operator new();
  }

  if (v6 == 4114)
  {
    *(this + 86) = -1;
    operator new();
  }

  if (result == 1)
  {
    result = (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return result;
}

void sub_23A031454(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

void OALSource::Stop(OALSource *this)
{
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v10 = (*(*(this + 10) + 16))();
  *(this + 85) = 0;
  v5 = *(this + 76);
  if ((v5 - 56578) <= 4 && v5 != 56580)
  {
    operator new();
  }

  if (v5 == 4114)
  {
    *(this + 76) = 56577;
    *(this + 86) = -1;
    operator new();
  }

  if (v5 == 4115)
  {
    v7 = *(this + 58);
    if (v7 != -1)
    {
      OALContext::SetBusAsAvailable(*(this + 1), v7);
      *(this + 58) = -1;
      *(this + 76) = 4116;
      v8 = *(this + 52);
      if (v8)
      {
        SourceNotifications::CallSourceNotifications(v8, 4112);
      }

      if (*(*(this + 3) + 24))
      {
        v9 = *(this + 52);
        if (v9)
        {
          SourceNotifications::CallSourceNotifications(v9, 4118);
        }
      }
    }
  }

  if (v10 == 1)
  {
    (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }
}

void sub_23A0316B8(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

void SourceNotifications::CallSourceNotifications(SourceNotifications *this, int a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v5 = (*(*v2 + 16))(*(this + 3));
    v7 = *this;
    v6 = *(this + 1);
    if (*this != v6)
    {
      v8 = *this;
      do
      {
        if (*v8 == a2)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___ZN19SourceNotifications26CallSourceNotificationsImpEj_block_invoke;
          block[3] = &__block_descriptor_tmp;
          block[4] = this;
          block[5] = v7;
          v11 = a2;
          dispatch_async(global_queue, block);
          v6 = *(this + 1);
        }

        v8 += 6;
        v7 += 24;
      }

      while (v8 != v6);
    }

    if (v5)
    {
      (*(*v2 + 24))(v2);
    }
  }
}

uint64_t OALSource::GetQueueOffset(OALSource *this, int a2)
{
  v4 = *(this + 1);
  v5 = pthread_self();
  v6 = *(v4 + 480);
  if (v5 != v6)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v7 = (*(*(this + 10) + 16))(this + 80);
  if (a2 == 1)
  {
    v33 = *(this + 4);
    v34 = *v33;
    if (*v33 == v33[1])
    {
      v35 = 0;
      v36 = *(this + 14);
      if (v36)
      {
LABEL_31:
        v37 = 0;
        v38 = 0;
        v39 = 8;
        do
        {
          while (1)
          {
            v40 = *(this + 3);
            if (*v40 + v39 - 8 != v40[1])
            {
              break;
            }

            ++v37;
            v39 += 32;
            if (v37 >= v36)
            {
              goto LABEL_35;
            }
          }

          FrameCount = OALBuffer::GetFrameCount(*(*v40 + v39));
          v36 = *(this + 14);
          v38 += FrameCount;
          ++v37;
          v39 += 32;
        }

        while (v37 < v36);
LABEL_35:
        v42 = 32 * v36;
        v43 = *(this + 3);
        v44 = *v43;
        v45 = v43[1];
        v46 = v44 + 32 * v36;
        if (v46 == v45)
        {
          goto LABEL_58;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v35 = 0;
      do
      {
        v35 += OALBuffer::GetFrameCount(*(v34 + 8));
        v34 += 32;
      }

      while (v34 != v33[1]);
      v36 = *(this + 14);
      if (v36)
      {
        goto LABEL_31;
      }
    }

    v42 = 0;
    v38 = 0;
    v50 = *(this + 3);
    v44 = *v50;
    v45 = v50[1];
    v46 = v44;
    if (v44 == v45)
    {
      goto LABEL_58;
    }

LABEL_46:
    v51 = *(*(v46 + 8) + 320);
    if (v51)
    {
      v52 = *(v46 + 16) / v51;
      if (*(this + 71) == 1735095154)
      {
LABEL_59:
        v58 = (this + 376);
        goto LABEL_60;
      }

LABEL_48:
      v53 = v44 + v42;
      if (v44)
      {
        v54 = v53 == v45;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        v55 = *(this + 4);
        v53 = *v55;
        v56 = v55[1];
        if (!v53 || v53 == v56)
        {
          goto LABEL_82;
        }
      }

      v58 = (*(v53 + 8) + 304);
LABEL_60:
      v49 = ((v38 + v35 + v52) / *v58);
      if (!v7)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

LABEL_58:
    v52 = 0;
    if (*(this + 71) == 1735095154)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  if (a2 == 2)
  {
    v22 = *(this + 4);
    v23 = *v22;
    if (*v22 == v22[1])
    {
      v24 = 0;
      v25 = *(this + 14);
      if (v25)
      {
LABEL_21:
        v26 = 0;
        v27 = 0;
        v28 = 8;
        do
        {
          while (1)
          {
            v29 = *(this + 3);
            if (*v29 + v28 - 8 != v29[1])
            {
              break;
            }

            ++v26;
            v28 += 32;
            if (v26 >= v25)
            {
              goto LABEL_25;
            }
          }

          v30 = OALBuffer::GetFrameCount(*(*v29 + v28));
          v25 = *(this + 14);
          v27 += v30;
          ++v26;
          v28 += 32;
        }

        while (v26 < v25);
LABEL_25:
        v31 = *(this + 3);
        v32 = *v31 + 32 * v25;
        if (v32 == v31[1])
        {
LABEL_42:
          v49 = (v27 + v24);
          if (!v7)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

LABEL_39:
        v48 = *(*(v32 + 8) + 320);
        if (v48)
        {
          v49 = v27 + v24 + *(v32 + 16) / v48;
          if (!v7)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v24 = 0;
      do
      {
        v24 += OALBuffer::GetFrameCount(*(v23 + 8));
        v23 += 32;
      }

      while (v23 != v22[1]);
      v25 = *(this + 14);
      if (v25)
      {
        goto LABEL_21;
      }
    }

    v27 = 0;
    v47 = *(this + 3);
    v32 = *v47;
    if (*v47 == v47[1])
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a2 != 3)
  {
    goto LABEL_82;
  }

  v8 = *(this + 4);
  v9 = *v8;
  if (*v8 != v8[1])
  {
    v10 = 0;
    do
    {
      v10 += OALBuffer::GetFrameCount(*(v9 + 8));
      v9 += 32;
    }

    while (v9 != v8[1]);
    v11 = *(this + 14);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_63:
    v17 = 0;
    v13 = 0;
    v59 = *(this + 3);
    v19 = *v59;
    v20 = v59[1];
    v21 = v19;
    if (v19 == v20)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v10 = 0;
  v11 = *(this + 14);
  if (!v11)
  {
    goto LABEL_63;
  }

LABEL_11:
  v12 = 0;
  v13 = 0;
  v14 = 8;
  do
  {
    while (1)
    {
      v15 = *(this + 3);
      if (*v15 + v14 - 8 != v15[1])
      {
        break;
      }

      ++v12;
      v14 += 32;
      if (v12 >= v11)
      {
        goto LABEL_15;
      }
    }

    v16 = OALBuffer::GetFrameCount(*(*v15 + v14));
    v11 = *(this + 14);
    v13 += v16;
    ++v12;
    v14 += 32;
  }

  while (v12 < v11);
LABEL_15:
  v17 = 32 * v11;
  v18 = *(this + 3);
  v19 = *v18;
  v20 = v18[1];
  v21 = v19 + 32 * v11;
  if (v21 == v20)
  {
    goto LABEL_66;
  }

LABEL_64:
  v60 = *(*(v21 + 8) + 320);
  if (v60)
  {
    v61 = *(v21 + 16) / v60;
    goto LABEL_67;
  }

LABEL_66:
  v61 = 0;
LABEL_67:
  v62 = v13 + v10 + v61;
  if (*(this + 71) == 1735095154)
  {
    v49 = *(this + 100) * v62;
    if (!v7)
    {
      goto LABEL_84;
    }

LABEL_83:
    (*(*(this + 10) + 24))(this + 80);
    goto LABEL_84;
  }

  v63 = v19 + v17;
  if (v19)
  {
    v64 = v63 == v20;
  }

  else
  {
    v64 = 1;
  }

  if (v64 && ((v65 = *(this + 4), v63 = *v65, v66 = v65[1], v63) ? (v67 = v63 == v66) : (v67 = 1), v67) || (v68 = *(v63 + 8), (v69 = *(v68 + 324)) == 0))
  {
LABEL_82:
    v49 = 0;
    if (!v7)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v49 = *(v68 + 320) * (v62 / v69);
  if (v7)
  {
    goto LABEL_83;
  }

LABEL_84:
  if (v5 != v6)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return v49;
}

void sub_23A031D54(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

float OALSource::GetQueueOffsetSecondsFloat(OALSource *this)
{
  v2 = this + 80;
  v3 = (*(*(this + 10) + 16))(this + 80);
  v4 = *(v2 - 6);
  v5 = *v4;
  if (*v4 != v4[1])
  {
    v6 = 0;
    do
    {
      v6 += OALBuffer::GetFrameCount(*(v5 + 8));
      v5 += 32;
    }

    while (v5 != v4[1]);
    v7 = *(this + 14);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    v13 = 0;
    v9 = 0;
    v18 = *(this + 3);
    v15 = *v18;
    v16 = v18[1];
    v17 = v15;
    if (v15 == v16)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v6 = 0;
  v7 = *(this + 14);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = 0;
  v9 = 0;
  v10 = 8;
  do
  {
    while (1)
    {
      v11 = *(this + 3);
      if (*v11 + v10 - 8 != v11[1])
      {
        break;
      }

      ++v8;
      v10 += 32;
      if (v8 >= v7)
      {
        goto LABEL_9;
      }
    }

    FrameCount = OALBuffer::GetFrameCount(*(*v11 + v10));
    v7 = *(this + 14);
    v9 += FrameCount;
    ++v8;
    v10 += 32;
  }

  while (v8 < v7);
LABEL_9:
  v13 = 32 * v7;
  v14 = *(this + 3);
  v15 = *v14;
  v16 = v14[1];
  v17 = v15 + 32 * v7;
  if (v17 == v16)
  {
LABEL_25:
    v20 = 0;
    if (*(this + 71) == 1735095154)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

LABEL_13:
  v19 = *(*(v17 + 8) + 320);
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = *(v17 + 16) / v19;
  if (*(this + 71) == 1735095154)
  {
LABEL_26:
    v27 = (this + 376);
    goto LABEL_27;
  }

LABEL_15:
  v21 = v15 + v13;
  if (v15)
  {
    v22 = v21 == v16;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = *(this + 4);
    v21 = *v23;
    v24 = v23[1];
    v25 = 0.0;
    if (!v21 || v21 == v24)
    {
      goto LABEL_28;
    }
  }

  v27 = (*(v21 + 8) + 304);
LABEL_27:
  v25 = (v9 + v6 + v20) / *v27;
LABEL_28:
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v25;
}

uint64_t OALSource::SetQueueOffset(OALSource *this, int a2, float a3)
{
  if (a3 < 0.0)
  {
    goto LABEL_52;
  }

  switch(a2)
  {
    case 3:
      if (*(this + 71) == 1735095154)
      {
        v5 = a3 / *(this + 100);
      }

      else
      {
        v7 = *(this + 3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *v7 + ((*(this + 14) << 48) >> 43);
        if (v8)
        {
          v11 = v10 == v9;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v5 = 0;
        }

        else
        {
          v5 = *(*(v10 + 8) + 324) * (a3 / *(*(v10 + 8) + 320));
        }
      }

      break;
    case 2:
      v5 = a3;
      break;
    case 1:
      if (*(this + 71) == 1735095154)
      {
        v4 = (this + 376);
      }

      else
      {
        v12 = *(this + 3);
        v13 = *v12;
        v14 = v12[1];
        v15 = *v12 + ((*(this + 14) << 48) >> 43);
        if (v13)
        {
          v16 = v15 == v14;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v5 = 0;
          goto LABEL_24;
        }

        v4 = (*(v15 + 8) + 304);
      }

      v5 = (*v4 * a3);
LABEL_24:
      if (v5 >= a3)
      {
        break;
      }

LABEL_52:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 40963;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    default:
      return 40963;
  }

  v17 = *(this + 1);
  v18 = pthread_self();
  v19 = *(v17 + 480);
  if (v18 != v19)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v20 = (*(*(this + 10) + 16))();
  result = 0;
  v21 = *(this + 76);
  if (v21 > 56576)
  {
    if ((v21 - 56577) >= 6)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if ((v21 - 4115) >= 2 && v21 != 4113)
  {
    if (v21 != 4114)
    {
LABEL_35:
      if (!v20)
      {
        goto LABEL_47;
      }

LABEL_46:
      v26 = result;
      (*(*(this + 10) + 24))(this + 80);
      result = v26;
      goto LABEL_47;
    }

LABEL_30:
    v22 = *(this + 3);
    v23 = *v22;
    if (*v22 == v22[1])
    {
      if (v5)
      {
LABEL_34:
        result = 40963;
        goto LABEL_35;
      }
    }

    else
    {
      v24 = 0;
      do
      {
        v24 += OALBuffer::GetFrameCount(*(v23 + 8));
        v23 += 32;
      }

      while (v23 != v22[1]);
      if (v5 > v24)
      {
        goto LABEL_34;
      }
    }

    *(this + 86) = -1;
    *(this + 89) = v5;
    operator new();
  }

  result = 0;
  *(this + 85) = v5;
  if (v20)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v18 != v19)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return result;
}

void sub_23A03231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CAGuard::Locker::~Locker(&a9);
  if (v10 != v11)
  {
    atomic_fetch_add((v9 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(a1);
}

uint64_t OALSource::SetRenderCallback(OALSource *this, uint64_t a2, int a3, unsigned int a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = *(this + 1);
  v11 = pthread_self();
  v12 = *(v10 + 480);
  if (v11 != v12)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v13 = (*(*(this + 10) + 16))();
  v14 = *(this + 76);
  if ((v14 - 56577) <= 5)
  {
    if (((1 << (v14 - 1)) & 0x36) == 0)
    {
      if (!a2)
      {
        *(this + 71) = 4144;
        *(this + 45) = 0;
      }

      operator new();
    }

LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = *this;
      *buf = 136315906;
      v18 = "oalSource.cpp";
      v19 = 1024;
      v20 = 2084;
      v21 = 2048;
      v22 = v15;
      v23 = 2048;
      a2 = 40964;
      v24 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::SetRenderCallback FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      a2 = 40964;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

LABEL_14:
    (*(*(this + 10) + 24))(this + 80);
    goto LABEL_15;
  }

  if ((v14 - 4114) < 2)
  {
    goto LABEL_10;
  }

  OALSource::FlushBufferQueue(this);
  if (a2)
  {
    *(this + 45) = a2;
    *(this + 46) = a5;
    FillInASBD(this + 376, a3, a4);
    *(this + 71) = 1735095154;
    CAStreamBasicDescription::Print((this + 376), *MEMORY[0x277D85E08]);
    a2 = 0;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(this + 71) = 4144;
    *(this + 45) = 0;
    if (v13)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (v11 != v12)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return a2;
}

void sub_23A032618(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::AddNotification(OALSource *this, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v4 = *(this + 52);
  if (!v4)
  {
    operator new();
  }

  return SourceNotifications::AddSourceNotification(v4, a2, a3, a4);
}

void sub_23A032724(_Unwind_Exception *a1)
{
  MEMORY[0x23EE824D0](v3, 0x10F1C40976EDA9DLL);
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
    MEMORY[0x23EE824D0](v2, v1);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EE824D0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t SourceNotifications::AddSourceNotification(SourceNotifications *this, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v8 = *(this + 3);
  v9 = (*(*v8 + 16))(v8);
  v10 = v9;
  v11 = *this;
  v12 = *(this + 1);
  if (*this != v12)
  {
    while (*v11 != a2 || *(v11 + 8) != a3 || *(v11 + 16) != a4)
    {
      v11 += 24;
      if (v11 == v12)
      {
        goto LABEL_10;
      }
    }
  }

  if (v11 != v12)
  {
    v13 = 4294967246;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_11;
  }

LABEL_10:
  LODWORD(v15) = a2;
  *(&v15 + 1) = a3;
  v16 = a4;
  std::vector<SourceNotifyInfo>::push_back[abi:ne200100](this, &v15);
  v13 = 0;
  if (v10)
  {
LABEL_11:
    (*(*v8 + 24))(v8);
  }

  return v13;
}

void sub_23A032898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t OALSource::RemoveNotification(uint64_t this, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v4 = *(this + 416);
  if (v4)
  {
    v8 = v4[3];
    this = (*(*v8 + 16))(v8);
    v10 = *v4;
    v9 = v4[1];
    if (*v4 != v9)
    {
      while (*v10 != a2 || *(v10 + 8) != a3 || *(v10 + 16) != a4)
      {
        v10 += 24;
        if (v10 == v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v10 != v9)
    {
      v11 = v9 - (v10 + 24);
      if (v9 != v10 + 24)
      {
        v12 = this;
        memmove(v10, (v10 + 24), v9 - (v10 + 24));
        this = v12;
      }

      v4[1] = v10 + v11;
    }

LABEL_12:
    if (this)
    {
      return (*(*v8 + 24))(v8);
    }
  }

  return this;
}

uint64_t OALSource::SetRenderQuality(OALSource *this, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (IsValidRenderQuality(a2))
  {
    *(this + 111) = a2;
    v4 = *(this + 58);
    if (v4 == -1)
    {
      return 0;
    }

    else
    {
      v5 = OALContext::SetSourceDesiredRenderQualityOnBus(*(this + 1), a2, v4);
      if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v6 = *this;
        v9 = 136315906;
        v10 = "oalSource.cpp";
        v11 = 1024;
        v12 = 2551;
        v13 = 2048;
        v14 = v6;
        v15 = 2048;
        v16 = v5;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateBusRenderQuality FAILED - OALSource = %ld : result = %ld", &v9, 0x26u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = *this;
      v9 = 136315650;
      v10 = "oalSource.cpp";
      v11 = 1024;
      v12 = 2157;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALSource::SetRenderQuality called - OALSource = %ld: Invalid Render Quality", &v9, 0x1Cu);
    }

    return 4294967246;
  }

  return v5;
}

void *OALSource::ClearMessageQueue(void *this)
{
  while (1)
  {
    v1 = this[53];
    if (!v1)
    {
      break;
    }

    v2 = this[53];
    atomic_compare_exchange_strong(this + 53, &v2, 0);
    if (v2 == v1)
    {
      this = 0;
      do
      {
        v3 = this;
        this = v1;
        v1 = *v1;
        *this = v3;
      }

      while (v1);
      do
      {
        v4 = *this;
        MEMORY[0x23EE824D0]();
        this = v4;
      }

      while (v4);
      return this;
    }
  }

  return this;
}

void OALSource::UpdateQueue(OALSource *this)
{
  if (*(this + 14))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 3);
      v4 = *v3;
      v5 = v3[1];
      if (v4)
      {
        v6 = v4 == v5;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v7 = *(this + 4);
        v8 = *v4;
        v9 = *(v4 + 1);
        v10 = v4[6];
        LODWORD(v18) = v8;
        *(&v18 + 1) = v9;
        v19 = 0;
        v20 = v10;
        std::vector<BufferInfo>::push_back[abi:ne200100](v7, &v18);
        *(v7 + 24) = (*(v7 + 8) - *v7) >> 5;
        v11 = *(this + 3);
        v13 = *v11;
        v12 = v11[1];
        if (*v11 == v12)
        {
          v16 = *v11;
        }

        else
        {
          v14 = v12 - (v13 + 32);
          if (v12 != v13 + 32)
          {
            memmove(*v11, v13 + 32, v12 - (v13 + 32));
          }

          v15 = *v11;
          v16 = &v13[v14];
          v11[1] = &v13[v14];
          v13 = v15;
        }

        *(v11 + 6) = (v16 - v13) >> 5;
        *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
        v17 = *(this + 52);
        if (v17)
        {
          SourceNotifications::CallSourceNotifications(v17, 4118);
        }
      }

      ++v2;
    }

    while (v2 < *(this + 14));
    *(this + 14) = 0;
  }
}

uint64_t OALSource::CalculateDistanceAndAzimuth(uint64_t this, float *a2, float *a3, float *a4, float *a5)
{
  *a5 = 1.0;
  v5 = *(this + 8);
  v6 = v5[89];
  v7 = v5[90];
  v8 = v5[91];
  v9 = v5[93];
  v10 = v5[94];
  v11 = v5[95];
  v12 = v5[96];
  v13 = v5[97];
  v14 = v5[98];
  if (*(this + 284) != 1735095154)
  {
    v18 = *(this + 24);
    v15 = 0.0;
    if (*v18)
    {
      v19 = *v18 + ((*(this + 56) << 48) >> 43);
      v16 = 0.0;
      v17 = 0.0;
      if (v19 == v18[1])
      {
        goto LABEL_62;
      }

      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      if (*(*(v19 + 8) + 332) != 1)
      {
        goto LABEL_62;
      }

      goto LABEL_8;
    }

LABEL_32:
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_62;
  }

  if (!*(this + 360))
  {
    v15 = 0.0;
    goto LABEL_32;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (*(this + 404) != 1)
  {
    goto LABEL_62;
  }

LABEL_8:
  v20 = *(this + 244) - v5[87];
  v21 = *(this + 248) - v5[88];
  if (*(this + 280))
  {
    v21 = *(this + 248);
    v20 = *(this + 244);
    v22 = *(this + 240);
  }

  else
  {
    v22 = *(this + 240) - v5[86];
  }

  v23 = (v10 * v14) - (v11 * v13);
  v24 = (v11 * v12) - (v9 * v14);
  v25 = (v9 * v13) - (v10 * v12);
  v26 = sqrtf(((v24 * v24) + (v23 * v23)) + (v25 * v25));
  if (v26 != 0.0)
  {
    v27 = 1.0 / v26;
    v23 = v23 * v27;
    v24 = v24 * v27;
    v25 = v25 * v27;
  }

  v28 = sqrtf(((v10 * v10) + (v9 * v9)) + (v11 * v11));
  if (v28 != 0.0)
  {
    v29 = 1.0 / v28;
    v9 = v9 * v29;
    v10 = v10 * v29;
    v11 = v11 * v29;
  }

  v15 = sqrtf(((v20 * v20) + (v22 * v22)) + (v21 * v21));
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v85 = v5[90];
  if (v15 > 0.0)
  {
    v83 = v5[89];
    v84 = v5[91];
    v36 = v22 * (1.0 / v15);
    v37 = v20 * (1.0 / v15);
    v38 = v21 * (1.0 / v15);
    v39 = (v24 * v11) - (v25 * v10);
    v40 = (v25 * v9) - (v23 * v11);
    v41 = (v23 * v10) - (v24 * v9);
    v42 = ((v37 * v40) + (v36 * v39)) + (v38 * v41);
    v79 = v39;
    v80 = v38;
    v43 = v36 - (v42 * v39);
    v44 = v37 - (v42 * v40);
    v45 = v38 - (v42 * v41);
    v46 = sqrtf(((v44 * v44) + (v43 * v43)) + (v45 * v45));
    v81 = v36;
    v82 = v37;
    v77 = v40;
    v78 = v41;
    v47 = this;
    v48 = a5;
    v49 = a2;
    v50 = a3;
    v51 = a4;
    if (v46 != 0.0)
    {
      v52 = 1.0 / v46;
      v43 = v43 * v52;
      v44 = v44 * v52;
      v45 = v45 * v52;
    }

    v53 = acosf(((v24 * v44) + (v43 * v23)) + (v45 * v25)) * 180.0 / 3.14159265;
    v54 = fabsf(v53);
    if (v54 >= 1.0e15 || v54 <= 1.0e-15)
    {
      v53 = 0.0;
    }

    if ((((v10 * v44) + (v43 * v9)) + (v45 * v11)) < 0.0)
    {
      v53 = 360.0 - v53;
    }

    if (v53 < 0.0 || v53 > 270.0)
    {
      v57 = 450.0;
    }

    else
    {
      v57 = 90.0;
    }

    v16 = v57 - v53;
    a4 = v51;
    a3 = v50;
    a2 = v49;
    a5 = v48;
    this = v47;
    v6 = v83;
    v8 = v84;
    v7 = v85;
    v31 = v81;
    v30 = v82;
    v34 = v79;
    v35 = v80;
    v33 = v77;
    v32 = v78;
  }

  if (v31 != 0.0 || v30 != 0.0 || v35 != 0.0)
  {
    v58 = this;
    v59 = a5;
    v60 = a2;
    v61 = a3;
    v62 = a4;
    v63 = v30;
    v64 = v31;
    v65 = v35;
    v66 = acosf(((v30 * v33) + (v31 * v34)) + (v35 * v32)) * -180.0 / 3.14159274 + 90.0;
    v67 = fabsf(v66);
    if (v67 >= 1.0e15 || v67 <= 1.0e-15)
    {
      v66 = 0.0;
    }

    if (v66 <= 90.0)
    {
      v17 = v66;
    }

    else
    {
      v17 = 180.0 - v66;
    }

    if (v17 < -90.0)
    {
      v17 = -180.0 - v17;
    }

    a4 = v62;
    a3 = v61;
    a2 = v60;
    a5 = v59;
    this = v58;
    v7 = v85;
    v30 = v63;
    v31 = v64;
    v35 = v65;
  }

  v69 = v5[84];
  if (v69 > 0.0)
  {
    v70 = *(this + 252);
    v71 = *(this + 256);
    v72 = *(this + 260);
    if (v6 != 0.0 || v7 != 0.0 || v8 != 0.0 || v70 != 0.0 || v71 != 0.0 || v72 != 0.0)
    {
      v73 = sqrtf(((v30 * v30) + (v31 * v31)) + (v35 * v35));
      v74 = (v5[83] - (v69 * fminf(-(((v7 * v30) + (v31 * v6)) + (v35 * v8)) / v73, v5[83] / v69))) / (v5[83] - (v69 * fminf(-(((v30 * v71) + (v31 * v70)) + (v35 * v72)) / v73, v5[83] / v69)));
      v75 = 1.0;
      if (v74 != 0.0)
      {
        v76 = fabsf(v74);
        v75 = 16.0;
        if (v76 <= 1.0e15)
        {
          v75 = 0.125;
          if (v76 >= 1.0e-15)
          {
            v75 = 16.0;
            if (v74 <= 16.0)
            {
              v75 = v74;
              if (v74 < 0.125)
              {
                v75 = 0.125;
              }
            }
          }
        }
      }

      *a5 = v75;
    }
  }

LABEL_62:
  *a2 = v15;
  *a3 = v16;
  *a4 = v17;
  return this;
}

uint64_t OALSource::ConeAttenuation(OALSource *this)
{
  v2 = *(this + 66);
  if (v2 == 0.0 && *(this + 67) == 0.0 && *(this + 68) == 0.0 || (v3 = *(this + 72), v3 == 360.0) && *(this + 73) == 360.0)
  {
    if (*(this + 75) != 1.0)
    {
      *(this + 75) = 1065353216;
      return 1;
    }

    return 0;
  }

  v5 = *(this + 1);
  v6 = v5[86] - *(this + 60);
  v7 = v5[87] - *(this + 61);
  v8 = v5[88] - *(this + 62);
  v9 = sqrtf(((v7 * v7) + (v6 * v6)) + (v8 * v8));
  if (v9 != 0.0)
  {
    v10 = 1.0 / v9;
    v6 = v6 * v10;
    v7 = v7 * v10;
    v8 = v8 * v10;
  }

  v11 = *(this + 67);
  v12 = *(this + 68);
  v13 = sqrtf(((v11 * v11) + (v2 * v2)) + (v12 * v12));
  if (v13 != 0.0)
  {
    v14 = 1.0 / v13;
    v2 = v2 * v14;
    v11 = v11 * v14;
    v12 = v12 * v14;
  }

  v15 = acosf(((v7 * v11) + (v6 * v2)) + (v8 * v12)) * 180.0 / 3.14159265;
  v16 = fabsf(v15);
  v17 = fabsf(v3) * 0.5;
  v18 = 1.0;
  if (v16 > v17)
  {
    v19 = fabsf(*(this + 73)) * 0.5;
    if (v16 >= v19)
    {
      v18 = *(this + 74);
      if (v18 != *(this + 75))
      {
        goto LABEL_16;
      }

      return 0;
    }

    v18 = 1.0 - ((v16 - v17) / (v19 - v17)) + (((v16 - v17) / (v19 - v17)) * *(this + 74));
  }

  if (v18 != *(this + 75))
  {
LABEL_16:
    *(this + 75) = v18;
    return 1;
  }

  return 0;
}

uint64_t OALSource::UpdateBusFormat(OALSource *this)
{
  if (*(this + 71) == 1735095154)
  {
    v2 = this + 376;
    v3 = *(this + 58);
    if (v3 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(this + 3);
    v6 = *v5;
    v7 = v5[1];
    v8 = *v5 + ((*(this + 14) << 48) >> 43);
    if (v6)
    {
      v9 = v8 == v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }

    v2 = (*(v8 + 8) + 304);
    v3 = *(this + 58);
    if (v3 == -1)
    {
LABEL_3:
      result = OALContext::SetBusFormat(*(this + 1), v3, v2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  *(this + 27) = 0;
  *(this + 28) = 0;
  if (!OALContext::SetBusRenderProc(*(this + 1), v3, (this + 216)))
  {
    AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
  }

  OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
  *(this + 236) = 0;
  result = OALContext::SetBusFormat(*(this + 1), *(this + 58), v2);
  if (!result)
  {
LABEL_15:
    result = OALSource::AddRenderProc(this);
    if (!result)
    {
      *(this + 18) = 0;
    }
  }

  return result;
}

uint64_t OALSource::SourceInputProc(OALSource *this, void *a2, unsigned int *a3, const AudioTimeStamp *a4, unsigned int a5, AudioBufferList *a6, AudioBufferList *a7)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = OALSource::DoRender(this, a6, a5);
  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "oalSource.cpp";
    v11 = 1024;
    v12 = 2649;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: SourceInputProc FAILED - result = %ld", &v9, 0x1Cu);
  }

  return v7;
}

uint64_t OALSource::DoRender(OALSource *this, AudioBufferList *a2, unsigned int a3)
{
  v140 = *MEMORY[0x277D85DE8];
  if (*(this + 71) == 1735095154)
  {
    v6 = *(this + 100) * a3;
    v7 = (this + 408);
    goto LABEL_53;
  }

  v8 = *(this + 3);
  v9 = *v8;
  v10 = v8[1];
  v11 = *v8 + ((*(this + 14) << 48) >> 43);
  if (v9)
  {
    v12 = v11 == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  v14 = v11;
  if (v12)
  {
    v15 = *(this + 4);
    v14 = *v15;
    v16 = v15[1];
    if (!v14 || v14 == v16)
    {
      v6 = 0;
      goto LABEL_19;
    }
  }

  v18 = *(v14 + 8);
  v19 = *(v18 + 324);
  if (v19)
  {
    v6 = *(v18 + 320) * (a3 / v19);
    if (v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0;
    if (v13)
    {
LABEL_19:
      v20 = 0;
      mData = a2->mBuffers[0].mData;
      atomic_fetch_add(this + 17, 1u);
      if (*(this + 16))
      {
        goto LABEL_57;
      }

      goto LABEL_20;
    }
  }

  v7 = (*(v11 + 8) + 336);
LABEL_53:
  if (*v7 == 8)
  {
    v20 = -128;
  }

  else
  {
    v20 = 0;
  }

  mData = a2->mBuffers[0].mData;
  atomic_fetch_add(this + 17, 1u);
  if (*(this + 16))
  {
LABEL_57:
    if (a2->mNumberBuffers)
    {
      v47 = 0;
      p_mData = &a2->mBuffers[0].mData;
      do
      {
        bzero(*p_mData, *(p_mData - 1));
        ++v47;
        p_mData += 2;
      }

      while (v47 < a2->mNumberBuffers);
    }

    result = 0;
    goto LABEL_176;
  }

LABEL_20:
  if (*(this + 19) == 1)
  {
    v22 = *(this + 58);
    if (v22 != -1)
    {
      v23 = AudioUnitReset(*(*(this + 1) + 32), 1u, v22);
      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v24 = *this;
          *buf = 136315906;
          *&buf[4] = "oalSource.cpp";
          v134 = 1024;
          v135 = 1290;
          v136 = 2048;
          v137 = v24;
          v138 = 2048;
          v139 = v23;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::ResetMixerBus FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
        }
      }
    }

    *(this + 19) = 0;
  }

  if (*(this + 71) != 1735095154)
  {
    OALSource::UpdateQueue(this);
    v29 = *(this + 3);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(this + 14);
    v33 = *v29 + 32 * v32;
    if (*v29)
    {
      v34 = v33 == v31;
    }

    else
    {
      v34 = 1;
    }

    if (!v34)
    {
      v49 = v32 + 1;
      while (!*v33 || !*(*(v33 + 8) + 288))
      {
        *(v33 + 20) = 2;
        *(this + 14) = v49;
        v33 = v30 + 32 * v49++;
        if (v33 == v31)
        {
          goto LABEL_37;
        }
      }

LABEL_64:
      if (*(this + 71) == 1735095154)
      {
        v50 = (this + 400);
        v51 = 1;
      }

      else
      {
        v53 = *(this + 3);
        v54 = *v53;
        v55 = v53[1];
        v56 = *v53 + ((*(this + 14) << 48) >> 43);
        if (v54)
        {
          v57 = v56 == v55;
        }

        else
        {
          v57 = 1;
        }

        if (v57 && ((v58 = *(this + 4), v56 = *v58, v59 = v58[1], v56) ? (v60 = v56 == v59) : (v60 = 1), v60) || (v61 = *(v56 + 8), (v62 = *(v61 + 324)) == 0))
        {
          v52 = 0;
          goto LABEL_88;
        }

        v51 = v62 == 1;
        v50 = (v61 + 320);
      }

      v52 = *v50 * v51;
LABEL_88:
      OALSource::ChangeChannelSettings(this);
      v65 = *(v33 + 8);
      v66 = *(v33 + 16);
      if (*(v65 + 300) - v66 < v6)
      {
        v28 = 0;
        if (!a3)
        {
          goto LABEL_165;
        }

        v131 = (this + 400);
        while (1)
        {
          if (*(this + 60))
          {
            goto LABEL_165;
          }

          v67 = *(this + 3);
          v68 = *v67;
          v69 = v67[1];
          v70 = *(this + 14);
          v71 = *v67 + 32 * v70;
          if (*v67)
          {
            v72 = v71 == v69;
          }

          else
          {
            v72 = 1;
          }

          if (v72)
          {
LABEL_158:
            *(this + 60) = 1;
            OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 1);
            goto LABEL_165;
          }

          while (1)
          {
            if (*v71)
            {
              v73 = *(v71 + 8);
              v74 = *(v73 + 288);
              if (v74)
              {
                break;
              }
            }

            *(v71 + 20) = 2;
            *(this + 14) = ++v70;
            v71 = v68 + 32 * v70;
            if (v71 == v69)
            {
              goto LABEL_158;
            }
          }

          *(v71 + 20) = 1;
          v75 = *(this + 71);
          v76 = (this + 400);
          v77 = v28;
          if (v75 != 1735095154)
          {
            v78 = 32 * v70;
            v79 = v68 + v78;
            if (v68 + v78 == v69 && ((v80 = *(this + 4), v79 = *v80, v81 = v80[1], v79) ? (v82 = v79 == v81) : (v82 = 1), v82) || (v83 = *(v79 + 8), (v84 = *(v83 + 324)) == 0))
            {
              v85 = a2->mBuffers[0].mData;
              v87 = (v71 + 16);
              v86 = *(v71 + 16);
              v88 = (*(v73 + 300) - v86);
              goto LABEL_114;
            }

            v76 = (v83 + 320);
            v77 = v28 / v84;
          }

          v85 = a2->mBuffers[0].mData + (*v76 * v77);
          v87 = (v71 + 16);
          v86 = *(v71 + 16);
          v88 = (*(v73 + 300) - v86);
          if (v75 == 1735095154)
          {
            v89 = v88 / *v131;
            if (v89 >= a3 - v28)
            {
              v89 = a3 - v28;
            }

            v130 = v89;
            v90 = *v131 * v89;
            goto LABEL_123;
          }

          v78 = 32 * v70;
LABEL_114:
          v91 = v68 + v78;
          if (v91 == v69)
          {
            v130 = 0;
            v93 = *(this + 4);
            v91 = *v93;
            if (!*v93 || v91 == v93[1])
            {
              v90 = 0;
              goto LABEL_123;
            }
          }

          else
          {
            v92 = *(*(v91 + 8) + 324) * (v88 / *(*(v91 + 8) + 320));
            if (v92 >= a3 - v28)
            {
              v92 = a3 - v28;
            }

            v130 = v92;
          }

          v94 = *(v91 + 8);
          v90 = *(v94 + 324);
          if (v90)
          {
            v90 = *(v94 + 320) * (v130 / v90);
          }

LABEL_123:
          if ((*(this + 237) & 1) == 0)
          {
            v129 = v87;
            v128 = v90;
            memcpy(v85, (v74 + v86), v90);
            v90 = v128;
            v87 = v129;
            v86 = *(v71 + 16);
            v73 = *(v71 + 8);
            v75 = *(this + 71);
          }

          v95 = v86 + v90;
          *v87 = v86 + v90;
          v96 = *(v73 + 300);
          if (v75 == 1735095154)
          {
            v97 = 1;
            v98 = (this + 400);
            goto LABEL_133;
          }

          v99 = *(this + 3);
          if (*v99 && (v100 = *v99 + ((*(this + 14) << 48) >> 43), v100 != v99[1]) || (v101 = *(this + 4), (v100 = *v101) != 0) && v100 != v101[1])
          {
            v102 = *(v100 + 8);
            v103 = *(v102 + 324);
            if (v103)
            {
              v97 = v103 == 1;
              v98 = (v102 + 320);
LABEL_133:
              if (v96 - v95 < *v98 * v97)
              {
                v104 = *(this + 14);
                *(this + 14) = v104 + 1;
                v105 = *(this + 3);
                v106 = *v105;
                if (!*v105 || (v107 = v105[1], v108 = v106 + 32 * (v104 + 1), v108 == v107))
                {
LABEL_141:
                  if (*(this + 69) == 1)
                  {
                    OALSource::ClearActiveQueue(this);
                    v110 = *(this + 3);
                    v111 = *(this + 4);
                    *(this + 3) = v111;
                    *(this + 4) = v110;
                    v113 = *v111;
                    v112 = v111[1];
                    v114 = *(v110 + 8) - *v110;
                    v115 = v112 - *v111;
                    v12 = v112 == *v111;
                    *(v111 + 6) = v115 >> 5;
                    *(v110 + 24) = v114 >> 5;
                    *(this + 12) = *(v110 + 24) + *(v111 + 6);
                    if (!v12)
                    {
                      v116 = v115 - 32;
                      v117 = v113;
                      if (v116 < 0x20)
                      {
                        goto LABEL_179;
                      }

                      v118 = (v116 >> 5) + 1;
                      v117 = v113 + 32 * (v118 & 0xFFFFFFFFFFFFFFELL);
                      v119 = (v113 + 48);
                      v120 = v118 & 0xFFFFFFFFFFFFFFELL;
                      do
                      {
                        *(v119 - 4) = 0;
                        *v119 = 0;
                        v119 += 8;
                        v120 -= 2;
                      }

                      while (v120);
                      if (v118 != (v118 & 0xFFFFFFFFFFFFFFELL))
                      {
LABEL_179:
                        do
                        {
                          *(v117 + 16) = 0;
                          v117 += 32;
                        }

                        while (v117 != v112);
                      }
                    }

                    *(this + 14) = 0;
                    *(this + 60) = 0;
                    v121 = *(this + 52);
                    if (v121 && *(this + 69))
                    {
                      SourceNotifications::CallSourceNotifications(v121, 36864);
                    }
                  }

                  else
                  {
                    *(this + 60) = 1;
                    OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 1);
                  }
                }

                else
                {
                  v109 = v104 + 2;
                  while (!*v108 || !*(*(v108 + 8) + 288))
                  {
                    *(v108 + 20) = 2;
                    *(this + 14) = v109;
                    v108 = v106 + 32 * v109++;
                    if (v108 == v107)
                    {
                      goto LABEL_141;
                    }
                  }
                }
              }
            }
          }

          v28 += v130;
          if (v28 >= a3)
          {
            goto LABEL_165;
          }
        }
      }

      if ((*(this + 237) & 1) == 0)
      {
        v122 = *(this + 86);
        if (v122 == -1 || v122 == 1)
        {
          memcpy(mData, (*(v65 + 288) + v66), v6);
          LODWORD(v66) = *(v33 + 16);
        }

        else
        {
          a2->mBuffers[0].mData = (*(v65 + 288) + v66);
        }
      }

      *(v33 + 16) = v66 + v6;
      v123 = v6;
      if (*(this + 71) == 1735095154)
      {
        v28 = v123 / *(this + 100);
      }

      else
      {
        v28 = 0;
        v124 = *(this + 3);
        if (*v124)
        {
          v125 = *v124 + ((*(this + 14) << 48) >> 43);
          if (v125 != v124[1])
          {
            v28 = *(*(v125 + 8) + 324) * (v123 / *(*(v125 + 8) + 320));
          }
        }
      }

LABEL_165:
      if ((*(this + 237) & 1) == 0 && v28 < a3)
      {
        memset(a2->mBuffers[0].mData + v28 * v52, v20, v6 - v28 * v52);
      }

      v126 = *(this + 86);
      if (v126 == -1)
      {
        v127 = 1;
      }

      else
      {
        if (v126 != 1)
        {
          goto LABEL_173;
        }

        v127 = 0;
      }

      OALSource::Ramp(this, a2, v127);
      *(this + 86) = -2;
LABEL_173:
      if (*(this + 237))
      {
        result = 1397312581;
      }

      else
      {
        result = 0;
      }

      goto LABEL_176;
    }

LABEL_37:
    if (*(this + 69))
    {
      v35 = *(this + 4);
      *(this + 3) = v35;
      *(this + 4) = v29;
      v37 = *v35;
      v36 = *(v35 + 8);
      v38 = v31 - v30;
      v39 = v36 - *v35;
      v12 = v36 == *v35;
      *(v35 + 24) = v39 >> 5;
      *(v29 + 6) = v38 >> 5;
      *(this + 12) = *(v29 + 6) + *(v35 + 24);
      if (v12)
      {
        v52 = 0;
        v28 = 0;
        *(this + 14) = 0;
        *(this + 60) = 0;
        goto LABEL_165;
      }

      v40 = v39 - 32;
      v41 = v37;
      if (v40 <= 0x1F)
      {
        goto LABEL_180;
      }

      v42 = (v40 >> 5) + 1;
      v41 = v37 + 32 * (v42 & 0xFFFFFFFFFFFFFFELL);
      v43 = (v37 + 48);
      v44 = v42 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v43 - 4) = 0;
        *v43 = 0;
        v43 += 8;
        v44 -= 2;
      }

      while (v44);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_180:
        do
        {
          *(v41 + 16) = 0;
          v41 += 32;
        }

        while (v41 != v36);
      }

      *(this + 14) = 0;
      *(this + 60) = 0;
      if (v37)
      {
        v45 = 1;
        v33 = v37;
        while (!*v33 || !*(*(v33 + 8) + 288))
        {
          *(v33 + 20) = 2;
          *(this + 14) = v45;
          v33 = v37 + 32 * v45++;
          if (v33 == v36)
          {
            goto LABEL_68;
          }
        }

        v46 = *(this + 52);
        if (v46)
        {
          SourceNotifications::CallSourceNotifications(v46, 36864);
        }

        goto LABEL_64;
      }
    }

    else
    {
      *(this + 60) = 1;
      OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 1);
    }

LABEL_68:
    v52 = 0;
    v28 = 0;
    goto LABEL_165;
  }

  v25 = *(this + 45);
  if (!v25)
  {
    result = 1397312581;
    goto LABEL_176;
  }

  *buf = mData;
  v132 = v6;
  result = v25(*this, v6, buf, &v132, *(this + 46));
  if (!result)
  {
    v27 = v132;
    if (*(this + 71) == 1735095154)
    {
      v28 = v27 / *(this + 100);
      if (v28 <= a3)
      {
LABEL_86:
        OALSource::ChangeChannelSettings(this);
        v52 = 0;
        goto LABEL_165;
      }
    }

    else
    {
      v28 = 0;
      v63 = *(this + 3);
      if (!*v63)
      {
        goto LABEL_86;
      }

      v64 = *v63 + ((*(this + 14) << 48) >> 43);
      if (v64 == v63[1])
      {
        goto LABEL_86;
      }

      v28 = *(*(v64 + 8) + 324) * (v27 / *(*(v64 + 8) + 320));
      if (v28 <= a3)
      {
        goto LABEL_86;
      }
    }

    result = 4294967246;
  }

LABEL_176:
  atomic_fetch_add(this + 17, 0xFFFFFFFF);
  return result;
}

uint64_t OALSource::Ramp(uint64_t this, AudioBufferList *a2, int a3)
{
  v3 = *(this + 284);
  if (v3 == 1735095154)
  {
    v4 = *(this + 408);
    if (v4 != 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(this + 24);
    v9 = *v8;
    v10 = v8[1];
    v11 = *v8 + ((*(this + 56) << 48) >> 43);
    if (v9)
    {
      v12 = v11 == v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return this;
    }

    v4 = *(*(v11 + 8) + 336);
    if (v4 != 8)
    {
LABEL_3:
      if (v4 != 16)
      {
        return this;
      }

      mNumberChannels = a2->mBuffers[0].mNumberChannels;
      v6 = a2->mBuffers[0].mDataByteSize >> 1;
      if (v3 == 1735095154)
      {
        v7 = (this + 376);
      }

      else
      {
        v16 = *(this + 24);
        v17 = 0.0;
        if (!*v16)
        {
          goto LABEL_17;
        }

        v18 = *v16 + ((*(this + 56) << 48) >> 43);
        if (v18 == v16[1])
        {
          goto LABEL_17;
        }

        v7 = (*(v18 + 8) + 304);
      }

      v17 = *v7 * 0.00579999993;
LABEL_17:
      v19 = vcvtmd_u64_f64(v17);
      if (v6 / mNumberChannels < v19)
      {
        v19 = v6 / mNumberChannels;
      }

      v20 = 1.0;
      if (a3)
      {
        v20 = -1.0;
      }

      if (v19)
      {
        v21 = vcvtd_n_s64_f64((v20 / v19), 0xFuLL);
        v22 = v6 - v19 * mNumberChannels;
        if (!a3)
        {
          v22 = 0;
        }

        v23 = (a2->mBuffers[0].mData + 2 * v22);
        if (mNumberChannels <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = mNumberChannels;
        }

        if (mNumberChannels >= 0x10)
        {
          v40 = 0;
          for (i = 0; i < v19; ++i)
          {
            v42 = v23 + 2;
            v23 = (v23 + 2 * (v24 & 0xFFFFFFF0));
            v43 = vdupq_n_s16(v40);
            this = v24 & 0xFFFFFFF0;
            do
            {
              v44 = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v43.i8, *v42), 0xFuLL), vmull_high_s16(v43, *v42->i8), 0xFuLL);
              *v42[-2].i8 = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v43.i8, v42[-2]), 0xFuLL), vmull_high_s16(v43, *v42[-2].i8), 0xFuLL);
              *v42->i8 = v44;
              v42 += 4;
              this -= 16;
            }

            while (this);
            v45 = v24 - (v24 & 0xFFFFFFF0);
            if ((v24 & 0xFFFFFFF0) != v24)
            {
              do
              {
                this = (v23->i16[0] * v40) >> 15;
                v23->i16[0] = this;
                v23 = (v23 + 2);
                --v45;
              }

              while (v45);
            }

            v40 += v21;
          }
        }

        else
        {
          v25 = 0;
          for (j = 0; j < v19; ++j)
          {
            v27 = v24;
            do
            {
              v23->i16[0] = (v23->i16[0] * v25) >> 15;
              v23 = (v23 + 2);
              --v27;
            }

            while (v27);
            v25 += v21;
          }
        }
      }

      return this;
    }
  }

  v14 = a2->mBuffers[0].mNumberChannels;
  mDataByteSize = a2->mBuffers[0].mDataByteSize;
  if (v3 == 1735095154)
  {
    v15 = (this + 376);
  }

  else
  {
    v28 = *(this + 24);
    v29 = 0.0;
    if (!*v28)
    {
      goto LABEL_37;
    }

    v30 = *v28 + ((*(this + 56) << 48) >> 43);
    if (v30 == v28[1])
    {
      goto LABEL_37;
    }

    v15 = (*(v30 + 8) + 304);
  }

  v29 = *v15 * 0.00579999993;
LABEL_37:
  v31 = vcvtmd_u64_f64(v29);
  if (mDataByteSize / v14 < v31)
  {
    v31 = mDataByteSize / v14;
  }

  v32 = 1.0;
  if (a3)
  {
    v32 = -1.0;
  }

  if (v31)
  {
    v33 = vcvtd_n_s64_f64((v32 / v31), 0xFuLL);
    v34 = mDataByteSize - v31 * v14;
    if (!a3)
    {
      v34 = 0;
    }

    v35 = (a2->mBuffers[0].mData + v34);
    if (v14 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v14;
    }

    if (v14 > 0xF)
    {
      v46 = v36 & 0xFFFFFFF0;
      if (v46 == v36)
      {
        v47 = 0;
        v48 = 0;
        v49.i64[0] = 0x8080808080808080;
        v49.i64[1] = 0x8080808080808080;
        do
        {
          v50 = 0;
          v51 = vdupq_n_s16(v48);
          do
          {
            v52 = veorq_s8(v35[v50 / 0x10], v49);
            v53 = vmovl_high_s8(v52);
            v54 = vmovl_s8(*v52.i8);
            v66.val[3] = vshrq_n_u32(vmull_high_s16(v51, v53), 0xFuLL);
            v66.val[2] = vshrq_n_u32(vmull_s16(*v51.i8, *v53.i8), 0xFuLL);
            v66.val[1] = vshrq_n_u32(vmull_high_s16(v51, v54), 0xFuLL);
            v66.val[0] = vshrq_n_u32(vmull_s16(*v51.i8, *v54.i8), 0xFuLL);
            v35[v50 / 0x10] = veorq_s8(vqtbl4q_s8(v66, xmmword_23A03A4A0), v49);
            v50 += 16;
          }

          while (v46 != v50);
          v48 += v33;
          ++v47;
          v35 = (v35 + v46);
        }

        while (v47 < v31);
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v57 = v36 - v46;
        v58.i64[0] = 0x8080808080808080;
        v58.i64[1] = 0x8080808080808080;
        do
        {
          v59 = v35;
          v35 = (v35 + v46);
          v60 = vdupq_n_s16(v56);
          v61 = v46;
          do
          {
            v62 = veorq_s8(*v59, v58);
            v63 = vmovl_high_s8(v62);
            v64 = vmovl_s8(*v62.i8);
            v67.val[3] = vshrq_n_u32(vmull_high_s16(v60, v63), 0xFuLL);
            v67.val[2] = vshrq_n_u32(vmull_s16(*v60.i8, *v63.i8), 0xFuLL);
            v67.val[1] = vshrq_n_u32(vmull_high_s16(v60, v64), 0xFuLL);
            v67.val[0] = vshrq_n_u32(vmull_s16(*v60.i8, *v64.i8), 0xFuLL);
            *v59++ = veorq_s8(vqtbl4q_s8(v67, xmmword_23A03A4A0), v58);
            v61 -= 16;
          }

          while (v61);
          v65 = v57;
          do
          {
            v35->i8[0] = (((v35->i8[0] ^ 0x7FFF80u) * v56) >> 15) ^ 0x80;
            v35 = (v35 + 1);
            --v65;
          }

          while (v65);
          v56 += v33;
          ++v55;
        }

        while (v55 < v31);
      }
    }

    else
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = v36;
        do
        {
          v35->i8[0] = (((v35->i8[0] ^ 0x7FFF80u) * v38) >> 15) ^ 0x80;
          v35 = (v35 + 1);
          --v39;
        }

        while (v39);
        v38 += v33;
        ++v37;
      }

      while (v37 < v31);
    }
  }

  return this;
}

uint64_t OALSource::DoPostRender(OALSource *this)
{
  v64 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 17, 1u);
  if (*(this + 16))
  {
    v2 = 0;
    goto LABEL_111;
  }

  if (*(this + 86) != -2)
  {
    goto LABEL_97;
  }

  do
  {
    v3 = *(this + 53);
    if (!v3)
    {
      goto LABEL_97;
    }

    v4 = *(this + 53);
    atomic_compare_exchange_strong(this + 53, &v4, 0);
  }

  while (v4 != v3);
  v5 = 0;
  do
  {
    v6 = v5;
    v5 = v3;
    v3 = *v3;
    *v5 = v6;
  }

  while (v3);
  v7 = 0;
  while (1)
  {
    v9 = *(v5 + 2);
    if (v9 > 5)
    {
      break;
    }

    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        if (*(this + 76) != 4116)
        {
          v15 = *(this + 58);
          if (v15 != -1)
          {
            *(this + 27) = 0;
            *(this + 28) = 0;
            if (!OALContext::SetBusRenderProc(*(this + 1), v15, (this + 216)))
            {
              AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
            }

            OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
            *(this + 236) = 0;
            v16 = *(this + 58);
            if (v16 != -1)
            {
              OALContext::SetBusAsAvailable(*(this + 1), v16);
              *(this + 58) = -1;
            }
          }

          *(this + 76) = 4116;
          v17 = *(this + 52);
          if (v17)
          {
            SourceNotifications::CallSourceNotifications(v17, 4112);
          }

          v18 = *(*(this + 3) + 24);
          OALSource::ClearActiveQueue(this);
          if (v18)
          {
            v19 = *(this + 52);
            if (v19)
            {
              SourceNotifications::CallSourceNotifications(v19, 4118);
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_90;
        }

        if (*(this + 76) != 4113)
        {
          v12 = *(this + 58);
          if (v12 != -1)
          {
            *(this + 27) = 0;
            *(this + 28) = 0;
            if (!OALContext::SetBusRenderProc(*(this + 1), v12, (this + 216)))
            {
              AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
            }

            OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
            *(this + 236) = 0;
            v13 = *(this + 58);
            if (v13 != -1)
            {
              OALContext::SetBusAsAvailable(*(this + 1), v13);
              *(this + 58) = -1;
            }
          }

          *(this + 76) = 4113;
          v14 = *(this + 52);
          if (v14)
          {
            SourceNotifications::CallSourceNotifications(v14, 4112);
          }

          *(this + 60) = 0;
        }
      }

      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v46 = v5[2];
      v47 = *v46;
      OALSource::FlushBufferQueue(this);
      if (v47)
      {
        v48 = *(this + 3);
        if (*v48 == *(v48 + 8))
        {
          *(this + 14) = 0;
          *(this + 60) = 0;
        }

        *buf = v47;
        *&v61[4] = v46;
        *&v61[12] = 0;
        *&v61[20] = 0;
        std::vector<BufferInfo>::push_back[abi:ne200100](v48, buf);
        *(v48 + 24) = (*(v48 + 8) - *v48) >> 5;
        *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
        OALBuffer::UseThisBuffer(v46, this);
        *(this + 71) = 4136;
        *(v5[2] + 352) = 0;
        *(this + 76) = 4116;
        v49 = *(this + 52);
        if (!v49)
        {
          goto LABEL_12;
        }

LABEL_88:
        SourceNotifications::CallSourceNotifications(v49, 4112);
      }

      else
      {
        *(this + 71) = 4144;
        *(this + 352) = 0;
        *(v5[2] + 352) = 0;
        *(this + 76) = 4116;
        v49 = *(this + 52);
        if (v49)
        {
          goto LABEL_88;
        }
      }

LABEL_12:
      *(this + 86) = 0;
      goto LABEL_13;
    }

    if (v9 == 4)
    {
      *(this + 86) = 0;
      v2 = OALSource::Play(this);
      if (v2)
      {
        goto LABEL_92;
      }
    }

    else
    {
      *(this + 76) = 4115;
      v10 = *(this + 52);
      if (v10)
      {
        SourceNotifications::CallSourceNotifications(v10, 4112);
      }

      v11 = *(this + 58);
      if (v11 != -1)
      {
        *(this + 27) = 0;
        *(this + 28) = 0;
        if (!OALContext::SetBusRenderProc(*(this + 1), v11, (this + 216)))
        {
          AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
        }

        OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
        *(this + 236) = 0;
      }

      *(this + 86) = 0;
      v7 = 1;
    }

LABEL_13:
    v8 = *v5;
    MEMORY[0x23EE824D0](v5, 0x1020C40CC5CF236);
    v5 = v8;
    if (!v8)
    {
      goto LABEL_97;
    }
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      *(this + 86) = 1;
      v2 = OALSource::AddRenderProc(this);
      if (v2)
      {
        goto LABEL_92;
      }

      *(this + 76) = 4114;
      v45 = *(this + 52);
      if (v45)
      {
        SourceNotifications::CallSourceNotifications(v45, 4112);
      }
    }

    else
    {
      if (v9 != 7)
      {
        OALSource::PostRenderRemoveBuffersFromQueue(this, *(v5 + 6));
        goto LABEL_12;
      }

      OALSource::ClearActiveQueue(this);
      v20 = *(this + 3);
      v21 = *(this + 4);
      *(this + 3) = v21;
      *(this + 4) = v20;
      v23 = *v21;
      v22 = v21[1];
      v24 = *(v20 + 8) - *v20;
      v26 = v22 - *v21;
      v25 = v22 == *v21;
      *(v21 + 6) = v26 >> 5;
      *(v20 + 24) = v24 >> 5;
      *(this + 12) = *(v20 + 24) + *(v21 + 6);
      if (!v25)
      {
        v27 = v26 - 32;
        v28 = v23;
        if (v27 < 0x20)
        {
          goto LABEL_114;
        }

        v29 = (v27 >> 5) + 1;
        v28 = v23 + 32 * (v29 & 0xFFFFFFFFFFFFFFELL);
        v30 = (v23 + 48);
        v31 = v29 & 0xFFFFFFFFFFFFFFELL;
        do
        {
          *(v30 - 4) = 0;
          *v30 = 0;
          v30 += 8;
          v31 -= 2;
        }

        while (v31);
        if (v29 != (v29 & 0xFFFFFFFFFFFFFFELL))
        {
LABEL_114:
          do
          {
            *(v28 + 16) = 0;
            v28 += 32;
          }

          while (v28 != v22);
        }
      }

      *(this + 14) = 0;
      *(this + 60) = 0;
      v32 = *(this + 52);
      if (v32 && *(this + 69))
      {
        SourceNotifications::CallSourceNotifications(v32, 36864);
      }

      v2 = OALSource::AdvanceQueueToFrameIndex(this, *(this + 89));
      if (v2)
      {
LABEL_92:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v52 = *this;
          *buf = 136315906;
          *v61 = "oalSource.cpp";
          *&v61[8] = 1024;
          *&v61[10] = 3108;
          *&v61[14] = 2048;
          *&v61[16] = v52;
          v62 = 2048;
          v63 = v2;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::DoPostRender FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
        }

        goto LABEL_111;
      }

      OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
      *(this + 89) = 0;
      *(this + 86) = 1;
    }

    goto LABEL_13;
  }

  if (v9 == 11)
  {
    OALSource::ClearActiveQueue(this);
    v33 = *(this + 3);
    v34 = *(this + 4);
    *(this + 3) = v34;
    *(this + 4) = v33;
    v36 = *v34;
    v35 = v34[1];
    v37 = *(v33 + 8) - *v33;
    v38 = v35 - *v34;
    v25 = v35 == *v34;
    *(v34 + 6) = v38 >> 5;
    *(v33 + 24) = v37 >> 5;
    *(this + 12) = *(v33 + 24) + *(v34 + 6);
    if (!v25)
    {
      v39 = v38 - 32;
      v40 = v36;
      if (v39 < 0x20)
      {
        goto LABEL_115;
      }

      v41 = (v39 >> 5) + 1;
      v40 = v36 + 32 * (v41 & 0xFFFFFFFFFFFFFFELL);
      v42 = (v36 + 48);
      v43 = v41 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v42 - 4) = 0;
        *v42 = 0;
        v42 += 8;
        v43 -= 2;
      }

      while (v43);
      if (v41 != (v41 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_115:
        do
        {
          *(v40 + 16) = 0;
          v40 += 32;
        }

        while (v40 != v35);
      }
    }

    *(this + 14) = 0;
    *(this + 60) = 0;
    v44 = *(this + 52);
    if (v44 && *(this + 69))
    {
      SourceNotifications::CallSourceNotifications(v44, 36864);
    }

    OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
    if ((v7 & 1) != 0 && OALSource::AddRenderProc(this))
    {
      v7 = 1;
    }

    else
    {
      *(this + 76) = 4114;
      v50 = *(this + 52);
      if (v50)
      {
        SourceNotifications::CallSourceNotifications(v50, 4112);
      }

      v7 = 0;
      *(this + 86) = 1;
    }

    goto LABEL_13;
  }

  if (v9 == 12)
  {
    OALSource::PostRenderAddBuffersToQueue(this, *(v5 + 6));
    goto LABEL_12;
  }

  if (v9 != 9)
  {
LABEL_90:
    v51 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *v61 = "oalSource.cpp";
      *&v61[8] = 1024;
      *&v61[10] = 3070;
      _os_log_impl(&dword_23A012000, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d      MQ:WARNING - UNIMPLEMENTED MESSAGE...", buf, 0x12u);
    }

    goto LABEL_13;
  }

  OALSource::StopRenderingToBus(this);
  *(this + 76) = 4116;
  v53 = *(this + 52);
  if (v53)
  {
    SourceNotifications::CallSourceNotifications(v53, 4112);
  }

  OALSource::FlushBufferQueue(this);
  *(this + 4) = 1;
  OALSource::ClearMessageQueue(this);
  *(this + 86) = 0;
LABEL_97:
  if (*(this + 60) == 1)
  {
    v54 = *(this + 58);
    if (v54 != -1)
    {
      *(this + 27) = 0;
      *(this + 28) = 0;
      if (!OALContext::SetBusRenderProc(*(this + 1), v54, (this + 216)))
      {
        AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
      }

      OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
      *(this + 236) = 0;
      v55 = *(this + 58);
      if (v55 != -1)
      {
        OALContext::SetBusAsAvailable(*(this + 1), v55);
        *(this + 58) = -1;
      }
    }

    *(this + 76) = 4116;
    v56 = *(this + 52);
    if (v56)
    {
      SourceNotifications::CallSourceNotifications(v56, 4112);
    }

    v57 = *(*(this + 3) + 24);
    OALSource::ClearActiveQueue(this);
    if (v57)
    {
      v58 = *(this + 52);
      if (v58)
      {
        SourceNotifications::CallSourceNotifications(v58, 4118);
      }
    }
  }

  if (!*(this + 53))
  {
    OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 0);
  }

  v2 = 0;
LABEL_111:
  atomic_fetch_add(this + 17, 0xFFFFFFFF);
  return v2;
}

void std::vector<BufferInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::vector<SourceAttachedInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t OALSource::SetReverbSendLevel(OALSource *this, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v5 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  if (v5[88] != a2)
  {
    *(this + 108) = a2;
    v7 = *(this + 58);
    if (v7 != -1)
    {
      v8 = *(this + 1);
      if (*(v8 + 492))
      {
        v9 = result;
        AudioUnitSetParameter(*(v8 + 32), 8u, 1u, v7, a2 * 100.0, 0);
        result = v9;
      }
    }
  }

  if (result)
  {
    return (*(*v5 + 24))(v5);
  }

  return result;
}

uint64_t OALSource::SetOcclusion(uint64_t this, AudioUnitParameterValue a2)
{
  if (a2 < -100.0 || a2 > 0.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (*(this + 436) != a2)
  {
    *(this + 436) = a2;
    v3 = *(this + 232);
    if (v3 != -1)
    {
      v4 = *(*(this + 8) + 32);

      return AudioUnitSetParameter(v4, 0xAu, 1u, v3, a2, 0);
    }
  }

  return this;
}

uint64_t OALSource::SetObstruction(OALSource *this, AudioUnitParameterValue a2)
{
  if (a2 < -100.0 || a2 > 0.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v4 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  if (v4[90] != a2)
  {
    *(this + 110) = a2;
    v6 = *(this + 58);
    if (v6 != -1)
    {
      v7 = *(*(this + 1) + 32);
      v8 = result;
      AudioUnitSetParameter(v7, 0xBu, 1u, v6, a2, 0);
      result = v8;
    }
  }

  if (result)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

void CAMutex::Locker::~Locker(CAMutex::Locker *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))(*this);
  }
}

uint64_t CAStreamBasicDescription::Print(CAStreamBasicDescription *this, __sFILE *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__dst = 0u;
  CA::StreamDescription::AsString(&__p, this, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  strlcpy(__dst, p_p, 0x100uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return fprintf(a2, "%s%s %s\n", "", "AudioStreamBasicDescription:", __dst);
}

void sub_23A035358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CA::StreamDescription::AsString(std::string *__return_ptr a1@<X8>, CA::StreamDescription *this@<X0>, const char *a3@<X1>)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = *(this + 2);
  if (v5 == 1718773105)
  {
    caulk::make_string(a1, "%2u ch, %6.0f Hz, 'freq'", a3, *(this + 7), *this);
    return;
  }

  if (v5 == 1819304813 && *(this + 5) == 1)
  {
    v6 = *(this + 6);
    if (v6 == *(this + 4))
    {
      v7 = *(this + 8);
      if (v6 >= v7 >> 3)
      {
        v8 = *(this + 7);
        if (v8)
        {
          v9 = *(this + 3);
          if ((v9 & 0x20) == 0)
          {
            if (v6 % v8)
            {
              goto LABEL_36;
            }

            v6 /= v8;
          }

          if ((v9 & 2) != 0 || 8 * v6 != v7)
          {
            goto LABEL_36;
          }

          if (v9)
          {
            if ((v9 & 0x1F84) != 0)
            {
              goto LABEL_36;
            }

            if (v6 == 4)
            {
              v11 = 1;
            }

            else
            {
              v11 = 4 * (v6 == 8);
            }
          }

          else
          {
            if ((v9 & 4) == 0)
            {
              goto LABEL_36;
            }

            v10 = (v9 >> 7) & 0x3F;
            if (v10 == 24 && v6 == 4)
            {
              v11 = 3;
            }

            else if (v10 || v6 != 4)
            {
              if (v6 == 2 && v10 == 0)
              {
                v11 = 2;
              }

              else
              {
                v11 = 0;
              }
            }

            else
            {
              v11 = 5;
            }
          }

          if (v11)
          {
            v13 = *(this + 7);
            if (v13 < 2)
            {
              v14 = "";
            }

            else if ((*(this + 12) & 0x20) != 0)
            {
              v14 = ", deinterleaved";
            }

            else
            {
              v14 = ", interleaved";
            }

            caulk::make_string(a1, "%2u ch, %6.0f Hz, %s%s", a3, v13, *this, *(&off_278B468E8 + v11), v14);
            return;
          }
        }
      }
    }
  }

LABEL_36:
  v15 = *(this + 7);
  v16 = *this;
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v5 == 0;
  }

  if (v17 && v16 == 0.0)
  {
    caulk::make_string(a1, "%2u ch, %6.0f Hz", a3, 0, *this);
    return;
  }

  v18 = bswap32(v5);
  v19 = v18 & 0xFF000000;
  v20 = v18 - 32;
  v21 = v18;
  v22 = (v18 >> 8) - 32;
  *(&v65.__r_.__value_.__s + 23) = 4;
  if (((v18 >> 24) - 32) >= 0x5F)
  {
    v19 = 771751936;
  }

  if (((v18 << 8 >> 24) - 32) >= 0x5F)
  {
    v23 = 3014656;
  }

  else
  {
    v23 = v18 & 0xFF0000;
  }

  v24 = v23 | v19;
  v25 = v18 & 0xFF00;
  if (v22 >= 0x5F)
  {
    v25 = 11776;
  }

  if (v20 >= 0x5F)
  {
    v26 = 46;
  }

  else
  {
    v26 = v21;
  }

  LODWORD(v65.__r_.__value_.__l.__data_) = v24 | v25 | v26;
  v65.__r_.__value_.__s.__data_[4] = 0;
  caulk::make_string(&v63, "%2u ch, %6.0f Hz, %s (0x%08X) ", a3, v15, *&v16, &v65, *(this + 3));
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
    v28 = *(this + 2);
    if (v28 <= 1819304812)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v28 = *(this + 2);
    if (v28 <= 1819304812)
    {
LABEL_52:
      if (v28 != 1634492771 && v28 != 1634497332 && v28 != 1718378851)
      {
LABEL_96:
        caulk::make_string(&v65, "%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", v27, *(this + 8), *(this + 4), *(this + 5), *(this + 6));
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v63;
        }

        else
        {
          v40 = v63.__r_.__value_.__r.__words[0];
        }

        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v63.__r_.__value_.__l.__size_;
        }

LABEL_88:
        v42 = std::string::insert(&v65, 0, v40, size);
        v43 = *&v42->__r_.__value_.__l.__data_;
        a1->__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&a1->__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

        v44 = v65.__r_.__value_.__r.__words[0];
        goto LABEL_90;
      }

LABEL_71:
      v36 = *(this + 3);
      if ((v36 - 1) < 4 || !v36 && (v28 == 1634497332 || v28 == 1936487278 || v28 == 1936487267))
      {
        caulk::make_string(&v65, "from %u-bit source, ", v27, CA::StreamDescription::AsString(void)const::kSourceBits[v36]);
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v65;
        }

        else
        {
          v37 = v65.__r_.__value_.__r.__words[0];
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v38 = v65.__r_.__value_.__l.__size_;
        }

        std::string::append(&v63, v37, v38);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v63, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string(&v65, "%u frames/packet", v39, *(this + 5));
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v63;
      }

      else
      {
        v40 = v63.__r_.__value_.__r.__words[0];
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v63.__r_.__value_.__l.__size_;
      }

      goto LABEL_88;
    }
  }

  if (v28 == 1936487278 || v28 == 1936487267)
  {
    goto LABEL_71;
  }

  if (v28 != 1819304813)
  {
    goto LABEL_96;
  }

  v29 = *(this + 3);
  v30 = *(this + 6);
  v31 = "";
  if (!v30)
  {
    goto LABEL_63;
  }

  if ((v29 & 0x20) != 0)
  {
    v32 = 1;
  }

  else
  {
    v32 = *(this + 7);
    if (!v32)
    {
LABEL_63:
      v33 = " signed";
      if ((v29 & 4) == 0)
      {
        v33 = " unsigned";
      }

      if (v29)
      {
        v34 = "float";
      }

      else
      {
        v34 = "integer";
      }

      if (v29)
      {
        v35 = "";
      }

      else
      {
        v35 = v33;
      }

LABEL_128:
      v65.__r_.__value_.__s.__data_[0] = 0;
      if ((v29 & 0x20) != 0)
      {
        v49 = ", deinterleaved";
      }

      else
      {
        v49 = "";
      }

      v46 = "";
      v50 = "";
      goto LABEL_132;
    }
  }

  v45 = v30 / v32;
  if (v30 / v32 < 2)
  {
    v48 = " signed";
    if ((v29 & 4) == 0)
    {
      v48 = " unsigned";
    }

    if (v29)
    {
      v34 = "float";
    }

    else
    {
      v34 = "integer";
    }

    if (v29)
    {
      v35 = "";
    }

    else
    {
      v35 = v48;
    }

    if (v32 > v30)
    {
      goto LABEL_128;
    }

    v45 = 1;
    v46 = "";
  }

  else
  {
    if ((v29 & 2) != 0)
    {
      v46 = " big-endian";
    }

    else
    {
      v46 = " little-endian";
    }

    v47 = " unsigned";
    if ((v29 & 4) != 0)
    {
      v47 = " signed";
    }

    if (v29)
    {
      v34 = "float";
    }

    else
    {
      v34 = "integer";
    }

    if (v29)
    {
      v35 = "";
    }

    else
    {
      v35 = v47;
    }
  }

  v52 = *(this + 7);
  if ((v29 & 0x20) != 0)
  {
    v52 = 1;
  }

  if (v52)
  {
    v52 = 8 * (v30 / v52);
  }

  if (v52 == *(this + 8))
  {
    v65.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if ((v29 & 8) != 0)
    {
      v53 = "";
    }

    else
    {
      v53 = "un";
    }

    snprintf(&v65, 0x20uLL, "%spacked in %u bytes", v53, v45);
    v30 = *(this + 6);
    v29 = *(this + 3);
    if (!v30)
    {
      goto LABEL_152;
    }
  }

  v54 = *(this + 7);
  if ((v29 & 0x20) != 0)
  {
    v54 = 1;
  }

  if (v54)
  {
    v30 = 8 * (v30 / v54);
  }

  else
  {
    v30 = 0;
  }

LABEL_152:
  v55 = *(this + 8);
  v56 = " high-aligned";
  if ((v29 & 0x10) == 0)
  {
    v56 = " low-aligned";
  }

  if ((v55 & 7) == 0 && v30 == v55)
  {
    v50 = "";
  }

  else
  {
    v50 = v56;
  }

  if ((v29 & 0x20) != 0)
  {
    v49 = ", deinterleaved";
  }

  else
  {
    v49 = "";
  }

  if (!v65.__r_.__value_.__s.__data_[0])
  {
LABEL_132:
    if (*v50)
    {
      v31 = ", ";
    }

    if (((v29 >> 7) & 0x3F) != 0)
    {
      goto LABEL_135;
    }

    goto LABEL_165;
  }

  v31 = ", ";
  if (((v29 >> 7) & 0x3F) != 0)
  {
LABEL_135:
    snprintf(__str, 0x14uLL, "%u.%u");
    goto LABEL_166;
  }

LABEL_165:
  snprintf(__str, 0x14uLL, "%u");
LABEL_166:
  caulk::make_string(&v62, "%s-bit%s%s %s%s%s%s%s", v51, __str, v46, v35, v34, v31, &v65, v50, v49);
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &v63;
  }

  else
  {
    v58 = v63.__r_.__value_.__r.__words[0];
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v63.__r_.__value_.__l.__size_;
  }

  v60 = std::string::insert(&v62, 0, v58, v59);
  v61 = *&v60->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    v44 = v62.__r_.__value_.__r.__words[0];
LABEL_90:
    operator delete(v44);
  }

LABEL_91:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }
}

void sub_23A035AF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::string *caulk::make_string@<X0>(std::string *__return_ptr a1@<X8>, caulk *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  result = vsnprintf(0, 0, this, va);
  if (result <= 0)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    return result;
  }

  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, (result + 1), 0);
  v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = a1->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  result = vsnprintf(v7, size, this, va);
  v9 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9 >= result)
    {
      *(&a1->__r_.__value_.__s + 23) = result;
      a1->__r_.__value_.__s.__data_[result] = 0;
      return result;
    }

    return std::string::append(a1, result - v9, 0);
  }

  v9 = a1->__r_.__value_.__l.__size_;
  if (v9 < result)
  {
    return std::string::append(a1, result - v9, 0);
  }

  a1->__r_.__value_.__l.__size_ = result;
  *(a1->__r_.__value_.__r.__words[0] + result) = 0;
  return result;
}

void std::vector<SourceNotifyInfo>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<SourceAttachedInfo>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void CAMutex::CAMutex(CAMutex *this, const char *a2)
{
  *this = &unk_284D29FF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v2 = pthread_mutex_init((this + 24), 0);
  if (v2)
  {
    v3 = v2;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v3;
  }
}

void CAMutex::~CAMutex(CAMutex *this)
{
  *this = &unk_284D29FF8;
  pthread_mutex_destroy((this + 24));
}

{
  *this = &unk_284D29FF8;
  pthread_mutex_destroy((this + 24));
}

{
  *this = &unk_284D29FF8;
  pthread_mutex_destroy((this + 24));

  JUMPOUT(0x23EE824D0);
}

uint64_t CAMutex::Lock(CAMutex *this)
{
  v2 = pthread_self();
  if (pthread_equal(v2, *(this + 2)))
  {
    return 0;
  }

  v4 = pthread_mutex_lock((this + 24));
  if (v4)
  {
    v5 = v4;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v5;
  }

  *(this + 2) = v2;
  return 1;
}

uint64_t CAMutex::Unlock(CAMutex *this)
{
  v2 = pthread_self();
  result = pthread_equal(v2, *(this + 2));
  if (result)
  {
    *(this + 2) = 0;
    result = pthread_mutex_unlock((this + 24));
    if (result)
    {
      v4 = result;
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_284D2A090;
      exception[2] = v4;
    }
  }

  return result;
}

uint64_t CAMutex::Try(CAMutex *this, BOOL *a2)
{
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, *(this + 2)))
  {
    result = 1;
    *a2 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      result = 0;
      *a2 = 0;
    }

    else
    {
      if (v6)
      {
        v7 = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &unk_284D2A090;
        exception[2] = v7;
      }

      *(this + 2) = v4;
      result = 1;
      *a2 = 1;
    }
  }

  return result;
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x23EE824D0);
}

double CAHostTimeBase::Initialize(CAHostTimeBase *this)
{
  mach_timebase_info(&info);
  CAHostTimeBase::sMinDelta = 1;
  CAHostTimeBase::sToNanosNumerator = info.numer;
  CAHostTimeBase::sToNanosDenominator = info.denom;
  *&CAHostTimeBase::sFrequency = info.denom / info.numer * 1000000000.0;
  result = 1.0 / *&CAHostTimeBase::sFrequency;
  *&CAHostTimeBase::sInverseFrequency = 1.0 / *&CAHostTimeBase::sFrequency;
  return result;
}

void CAGuard::CAGuard(CAGuard *this, const char *a2)
{
  CAMutex::CAMutex(this, a2);
  *v2 = &unk_284D2A0B8;
  v3 = pthread_cond_init((v2 + 88), 0);
  if (v3)
  {
    v4 = v3;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v4;
  }
}

void CAGuard::~CAGuard(CAGuard *this)
{
  *this = &unk_284D2A0B8;
  pthread_cond_destroy((this + 88));

  CAMutex::~CAMutex(this);
}

{
  *this = &unk_284D2A0B8;
  pthread_cond_destroy((this + 88));
  CAMutex::~CAMutex(this);

  JUMPOUT(0x23EE824D0);
}

pthread_t CAGuard::Wait(CAGuard *this)
{
  v2 = pthread_self();
  if (!pthread_equal(v2, *(this + 2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = 1;
  }

  *(this + 2) = 0;
  v3 = pthread_cond_wait((this + 88), (this + 24));
  if (v3)
  {
    v6 = v3;
    v7 = __cxa_allocate_exception(0x10uLL);
    *v7 = &unk_284D2A090;
    v7[2] = v6;
  }

  result = pthread_self();
  *(this + 2) = result;
  return result;
}

BOOL CAGuard::WaitFor(CAGuard *this, unint64_t a2)
{
  v4 = pthread_self();
  if (!pthread_equal(v4, *(this + 2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = 1;
  }

  if (a2 <= 0x3B9AC9FF)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 / 0x3B9ACA00;
    a2 %= 0x3B9ACA00uLL;
  }

  v11.tv_sec = v5;
  v11.tv_nsec = a2;
  *(this + 2) = 0;
  v6 = pthread_cond_timedwait_relative_np((this + 88), (this + 24), &v11);
  v7 = v6;
  if (v6 && v6 != 60)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = &unk_284D2A090;
    v10[2] = v7;
  }

  *(this + 2) = pthread_self();
  return v7 == 60;
}

uint64_t CAGuard::WaitUntil(CAGuard *this, uint64_t a2)
{
  v4 = mach_absolute_time();
  pthread_once(&CAHostTimeBase::sIsInited, CAHostTimeBase::Initialize);
  if (CAHostTimeBase::sToNanosNumerator != CAHostTimeBase::sToNanosDenominator)
  {
    v4 = __udivti3();
  }

  if (a2 <= v4)
  {
    return 1;
  }

  v5 = *(*this + 64);

  return v5(this, a2 - v4);
}

uint64_t CAGuard::Notify(CAGuard *this)
{
  result = pthread_cond_signal((this + 88));
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v2;
  }

  return result;
}

uint64_t CAGuard::NotifyAll(CAGuard *this)
{
  result = pthread_cond_broadcast((this + 88));
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v2;
  }

  return result;
}

void OALCaptureDevice::OALCaptureDevice(OALCaptureDevice *this, const char *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6)
{
  *this = a3;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 26) = a6;
  *(this + 14) = 0;
  *(this + 30) = 0;
  FillInASBD(this + 40, a5, a4);
  if (*(this + 14) > a6)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v9 = OALCaptureDevice::InitializeAU(this, v8);
  if (v9)
  {
    v19 = v9;
    v20 = __cxa_allocate_exception(4uLL);
    *v20 = v19;
    __cxa_throw(v20, MEMORY[0x277D827C0], 0);
  }

  v10 = *(this + 13);
  if ((v10 & 0x20) != 0)
  {
    v11 = *(this + 17);
  }

  else
  {
    v11 = 1;
  }

  if ((v10 & 0x20) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(this + 17);
  }

  v13 = operator new(16 * v11 + 32);
  *v13 = "WriteBufferList";
  v13[1] = 0;
  *(v13 + 4) = 0;
  *(v13 + 6) = v11;
  if (v11)
  {
    v14 = (v13 + 4);
    if (v11 == 1)
    {
      v15 = 1;
      do
      {
LABEL_15:
        *v14 = v12;
        *(v14 + 1) = 0;
        *(v14 + 1) = 0;
        v14 += 16;
        --v15;
      }

      while (v15);
      goto LABEL_16;
    }

    v15 = v11 - (v11 & 0xFFFFFFFE);
    v14 += 16 * (v11 & 0xFFFFFFFE);
    v16 = v13 + 7;
    v17 = v11 & 0xFFFFFFFE;
    do
    {
      *(v16 - 6) = v12;
      *(v16 - 5) = 0;
      *(v16 - 2) = v12;
      *(v16 - 1) = 0;
      *(v16 - 2) = 0;
      *v16 = 0;
      v16 += 4;
      v17 -= 2;
    }

    while (v17);
    if ((v11 & 0xFFFFFFFE) != v11)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  *(this + 14) = v13;
  operator new();
}

void sub_23A0368FC(void *a1, int a2)
{
  v4 = v3;
  MEMORY[0x23EE824D0](v4, 0x1010C40829CE571);
  v7 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v8 = *v7;
    v9 = v2[10];
    if (v9)
    {
      OALRingBuffer::~OALRingBuffer(v9);
      MEMORY[0x23EE824D0]();
      v10 = v2[11];
      if (!v10)
      {
LABEL_4:
        v11 = v2[14];
        if (!v11)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = v2[11];
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    MEMORY[0x23EE824D0](v10, 0x1000C4077774924);
    v11 = v2[14];
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_12:
    v15 = *(v11 + 8);
    if (v15)
    {
      MEMORY[0x23EE824B0](v15, 0x1000C8077774924);
    }

    MEMORY[0x23EE824D0](v11, 0x10D0C40C0CFF4BFLL);
LABEL_15:
    exception = __cxa_allocate_exception(4uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v12 = v2[10];
  if (v12)
  {
    OALRingBuffer::~OALRingBuffer(v12);
    MEMORY[0x23EE824D0]();
    v13 = v2[11];
    if (!v13)
    {
LABEL_8:
      v14 = v2[14];
      if (!v14)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = v2[11];
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  MEMORY[0x23EE824D0](v13, 0x1000C4077774924);
  v14 = v2[14];
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_18:
  v17 = *(v14 + 8);
  if (v17)
  {
    MEMORY[0x23EE824B0](v17, 0x1000C8077774924);
  }

  MEMORY[0x23EE824D0](v14, 0x10D0C40C0CFF4BFLL);
LABEL_21:
  v18 = __cxa_allocate_exception(4uLL);
  *v18 = -1;
  __cxa_throw(v18, MEMORY[0x277D827C0], 0);
}

uint64_t OALCaptureDevice::InitializeAU(OALCaptureDevice *this, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  inData = 0;
  v10.componentFlagsMask = 0;
  *&v10.componentType = xmmword_23A03A3D0;
  Next = AudioComponentFindNext(0, &v10);
  if (!Next)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = AudioComponentInstanceNew(Next, this + 4);
  if (v4 || (inData = 0, v4 = AudioUnitSetProperty(*(this + 4), 0x7D3u, 2u, 0, &inData, 4u), v4) || (inData = 1, v4 = AudioUnitSetProperty(*(this + 4), 0x7D3u, 1u, 1u, &inData, 4u), v4) || (v5 = *(this + 56), v12[0] = *(this + 40), v12[1] = v5, v13 = *(this + 9), v4 = AudioUnitSetProperty(*(this + 4), 8u, 2u, 1u, v12, 0x28u), v4) || (v11[0] = OALCaptureDevice::InputProc, v11[1] = this, v4 = AudioUnitSetProperty(*(this + 4), 0x7D5u, 0, 0, v11, 0x10u), v4))
  {
    v6 = v4;
  }

  else
  {
    v6 = AudioUnitInitialize(*(this + 4));
    if (!v6)
    {
      return v6;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = *this;
    *buf = 136315906;
    v16 = "oalCaptureDevice.cpp";
    v17 = 1024;
    v18 = 172;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v6;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::InitializeAU FAILED - OALContext = %ld : result = %ld", buf, 0x26u);
  }

  v8 = *(this + 4);
  if (v8)
  {
    AudioComponentInstanceDispose(v8);
    *(this + 4) = 0;
  }

  return v6;
}

void OALCaptureDevice::~OALCaptureDevice(OALCaptureDevice *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    AudioComponentInstanceDispose(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    MEMORY[0x23EE824D0](v3, 0x1000C4077774924);
  }

  v4 = *(this + 10);
  if (v4)
  {
    OALRingBuffer::~OALRingBuffer(v4);
    MEMORY[0x23EE824D0]();
  }

  v5 = *(this + 14);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      MEMORY[0x23EE824B0](v6, 0x1000C8077774924);
    }

    MEMORY[0x23EE824D0](v5, 0x10D0C40C0CFF4BFLL);
  }
}

uint64_t OALCaptureDevice::InputProc(OALCaptureDevice *this, void *a2, const AudioTimeStamp *a3, const AudioTimeStamp *a4, UInt32 inNumberFrames, unsigned int a6, AudioBufferList *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  ioActionFlags = 0;
  v9 = *(this + 14);
  v10 = *(v9 + 24);
  if (*(v9 + 24))
  {
    if (v10 == 1)
    {
      v11 = 0;
LABEL_7:
      v14 = (v9 + 16 * v11 + 40);
      v15 = v10 - v11;
      do
      {
        *v14 = 0;
        v14 += 2;
        --v15;
      }

      while (v15);
      goto LABEL_9;
    }

    v11 = v10 & 0xFFFFFFFE;
    v12 = (v9 + 56);
    v13 = v11;
    do
    {
      *(v12 - 2) = 0;
      *v12 = 0;
      v12 += 4;
      v13 -= 2;
    }

    while (v13);
    if (v11 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v16 = AudioUnitRender(*(this + 4), &ioActionFlags, a3, 1u, inNumberFrames, (v9 + 24));
  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = *this;
      *buf = 136315906;
      v21 = "oalCaptureDevice.cpp";
      v22 = 1024;
      v23 = 200;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::InputProc FAILED - OALContext = %ld : result = %ld", buf, 0x26u);
    }
  }

  else if (OALRingBuffer::Store(*(this + 10), *(v9 + 40), inNumberFrames, *(this + 2)))
  {
    *(this + 2) += inNumberFrames;
  }

  return v16;
}

void OALCaptureDevice::StartCapture(AudioUnit *this)
{
  AudioOutputUnitStart(this[4]);
  *(this + 12) = 1;
  v2 = this[10];

  OALRingBuffer::Clear(v2);
}

void OALCaptureDevice::StopCapture(AudioUnit *this)
{
  AudioOutputUnitStop(this[4]);
  *(this + 12) = 0;
  v2 = this[10];

  OALRingBuffer::Clear(v2);
}

uint64_t OALCaptureDevice::GetFrames(OALCaptureDevice *this, unsigned int a2, unsigned __int8 *__dst, double a4, double a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(this + 12) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = *this;
      v20 = 136315906;
      v21 = "oalCaptureDevice.cpp";
      v22 = 1024;
      v23 = 241;
      v24 = 2048;
      v25 = v18;
      v26 = 2048;
      v27 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::GetFrames FAILED, device not currently capturing - OALContext = %ld : result = %ld", &v20, 0x26u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 40964;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v7 = *(this + 10);
  v9 = *(v7 + 3);
  v8 = *(v7 + 4);
  v10 = *(this + 3);
  if (v10 < v9)
  {
    *(this + 3) = v9;
    v10 = v9;
  }

  v11 = v8 - v10;
  LODWORD(a5) = *(this + 26);
  v12 = *(this + 12);
  v13 = v12 * *&a5;
  if (v13 < v11)
  {
    v11 = v13;
  }

  if ((v11 / v12) >= a2)
  {
    result = OALRingBuffer::Fetch(v7, __dst, a2, v10);
    if (result)
    {
      v16 = result;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v17 = *this;
        v20 = 136315906;
        v21 = "oalCaptureDevice.cpp";
        v22 = 1024;
        v23 = 255;
        v24 = 2048;
        v25 = v17;
        v26 = 2048;
        v27 = -1;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::GetFrames FAILED, err returned from mRingBuffer->Fetch - OALContext = %ld : result = %ld", &v20, 0x26u);
      }

      return v16;
    }

    else
    {
      *(this + 3) += a2;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = *this;
      v20 = 136315906;
      v21 = "oalCaptureDevice.cpp";
      v22 = 1024;
      v23 = 247;
      v24 = 2048;
      v25 = v14;
      v26 = 2048;
      v27 = -1;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::GetFrames FAILED, not enough captured frames - OALContext = %ld : result = %ld", &v20, 0x26u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t OALCaptureDevice::AvailableFrames(OALCaptureDevice *this, double a2, double a3)
{
  v3 = *(this + 10);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = *(this + 3);
  if (v6 < v5)
  {
    *(this + 3) = v5;
    LODWORD(v6) = v5;
  }

  v7 = v4 - v6;
  LODWORD(a3) = *(this + 26);
  v8 = *(this + 12);
  v9 = v8 * *&a3;
  if (v9 < v7)
  {
    v7 = v9;
  }

  return (v7 / v8);
}

void OALRingBuffer::OALRingBuffer(OALRingBuffer *this)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

void OALRingBuffer::Allocate(OALRingBuffer *this, int a2, int a3)
{
  v6 = *this;
  if (v6)
  {
    free(v6);
    *this = 0;
  }

  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 9) = 0;
  *(this + 2) = a2;
  *(this + 3) = a3;
  v7 = (a3 * a2);
  *(this + 4) = v7;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  *this = v8;
  if (v8)
  {
    bzero(v8, *(this + 4));
  }

  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 9) = 0;
}

void OALRingBuffer::~OALRingBuffer(OALRingBuffer *this)
{
  if (*this)
  {
    v1 = this;
    free(*this);
    this = v1;
    *v1 = 0;
  }

  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 9) = 0;
  *(this + 28) = 0;
}

void OALRingBuffer::Clear(OALRingBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    bzero(v2, *(this + 4));
  }

  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
}

BOOL OALRingBuffer::Store(OALRingBuffer *this, const unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v5 = *(this + 3);
  if (v5 >= a3)
  {
    v6 = a4 + a3;
    v7 = *(this + 4);
    if (v7 + v5 <= a4)
    {
      if (*this)
      {
        v19 = this;
        v20 = a2;
        v21 = a4;
        bzero(*this, *(this + 4));
        a4 = v21;
        this = v19;
        a2 = v20;
      }

      *(this + 3) = 0;
    }

    else
    {
      v8 = *(this + 3);
      if (v8)
      {
        if (v6 > v7)
        {
          if (v7 < a4)
          {
            v9 = a2;
            v10 = *(this + 2);
            v11 = *(this + 4);
            v12 = *(this + 5);
            v13 = (v12 + v10 * (v7 - v8)) % v11;
            v14 = a4;
            v15 = (v12 + v10 * (a4 - v8)) % v11;
            v16 = v15 - v13;
            if (v15 <= v13)
            {
              v25 = this;
              bzero((*this + v13), v11 - v13);
              v17 = v25;
              v18 = *v25;
              v16 = v15;
            }

            else
            {
              v17 = this;
              v18 = (*this + v13);
            }

            bzero(v18, v16);
            a2 = v9;
            this = v17;
            LODWORD(a4) = v14;
          }

          *(this + 4) = v6;
          v26 = v6 - *(this + 3);
          v8 = *(this + 3);
          if (v26 > v8)
          {
            *(this + 5) = (*(this + 5) + (v26 - v8) * *(this + 2)) % *(this + 4);
            *(this + 3) = v26;
            LODWORD(v8) = v26;
          }
        }

        v27 = *(this + 2);
        v28 = *(this + 4);
        v29 = *(this + 5);
        v30 = (v29 + v27 * (a4 - v8)) % v28;
        v31 = (v29 + v27 * (v6 - v8)) % v28;
        v22 = v31 - v30;
        if (v31 <= v30)
        {
          v32 = v28 - v30;
          v33 = this;
          v34 = a2;
          memcpy((*this + v30), a2, v32);
          v23 = *v33;
          a2 = &v34[v32];
          v22 = v31;
        }

        else
        {
          v23 = (*this + v30);
        }

        goto LABEL_12;
      }
    }

    *(this + 5) = 0;
    *(this + 3) = a4;
    *(this + 4) = v6;
    v22 = *(this + 2) * a3;
    v23 = *this;
LABEL_12:
    memcpy(v23, a2, v22);
  }

  return v5 >= a3;
}

uint64_t OALRingBuffer::Fetch(OALRingBuffer *this, unsigned __int8 *__dst, unsigned int a3, uint64_t a4)
{
  v4 = *(this + 3);
  if (a4 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a4 + a3;
  if (v5 > *(this + 4))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 2);
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = (v9 + v7 * (a4 - v4)) % v8;
  v11 = (v9 + v7 * (v5 - v4)) % v8;
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    v16 = v8 - v10;
    memcpy(__dst, (*this + v10), v16);
    v15 = *this;
    v14 = &__dst[v16];
    v12 = v11;
  }

  else
  {
    v13 = (*this + v10);
    v14 = __dst;
    v15 = v13;
  }

  memcpy(v14, v15, v12);
  return 0;
}

void OALCaptureMixer::OALCaptureMixer(OALCaptureMixer *this, OpaqueAudioComponentInstance *a2, double a3, int a4, unsigned int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = a5;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  FillInASBD(this + 8, a4, a3);
  if (*(this + 6) <= a5)
  {
    v13 = 0;
    memset(outData, 0, sizeof(outData));
    ioDataSize = 40;
    Property = AudioUnitGetProperty(*this, 8u, 0, 0, outData, &ioDataSize);
    if (!Property)
    {
      operator new();
    }

    v9 = Property;
    exception = __cxa_allocate_exception(0x104uLL);
    CAXException::CAXException(exception, "AudioUnitGetProperty(mMixerUnit, kAudioUnitProperty_StreamFormat, 0, 0, &mixerOutFormat, &propSize)", v9);
  }

  v8 = __cxa_allocate_exception(4uLL);
  *v8 = 40963;
  __cxa_throw(v8, MEMORY[0x277D827C0], 0);
}

void sub_23A0378A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, __int16 a12, __int16 a13, int a14)
{
  if (a2)
  {
    __cxa_free_exception(v15);
    v18 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v19 = *v18;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 136315650;
        *(&buf + 4) = "oalCaptureMixer.cpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 62;
        a13 = 1024;
        a14 = v19;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::OALCaptureMixer FAILED - result = %d", &buf, 0x18u);
      }

      v20 = *(v14 + 48);
      if (v20)
      {
        OALRingBuffer::~OALRingBuffer(v20);
        MEMORY[0x23EE824D0]();
        *(v14 + 48) = 0;
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = v19;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "oalCaptureMixer.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 70;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::OALCaptureMixer FAILED - Unknown error", &buf, 0x12u);
    }

    v22 = *(v14 + 48);
    if (v22)
    {
      OALRingBuffer::~OALRingBuffer(v22);
      MEMORY[0x23EE824D0]();
      *(v14 + 48) = 0;
    }

    v23 = __cxa_allocate_exception(4uLL);
    *v23 = -1;
    __cxa_throw(v23, MEMORY[0x277D827C0], 0);
  }

  _Unwind_Resume(a1);
}

void sub_23A037A84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CAXException::CAXException(CAXException *this, const char *__s, int a3)
{
  *(this + 64) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy(this, __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 3);
      *(this + 2) = *(__s + 2);
      *(this + 3) = v7;
      *this = v5;
      *(this + 1) = v6;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 7);
      *(this + 6) = *(__s + 6);
      *(this + 7) = v10;
      *(this + 4) = v8;
      *(this + 5) = v9;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 11);
      *(this + 10) = *(__s + 10);
      *(this + 11) = v13;
      *(this + 8) = v11;
      *(this + 9) = v12;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(this + 239) = *(__s + 239);
      *(this + 13) = v15;
      *(this + 14) = v16;
      *(this + 12) = v14;
      *(this + 255) = 0;
    }
  }

  else
  {
    *this = 0;
  }
}

void OALCaptureMixer::~OALCaptureMixer(OALCaptureMixer *this)
{
  if (*(this + 20))
  {
    v2 = 1;
    atomic_compare_exchange_strong(this + 20, &v2, 0);
    AudioUnitRemoveRenderNotify(*this, OALCaptureMixer::RenderCallback, this);
    OALRingBuffer::Clear(*(this + 6));
  }

  v3 = *(this + 6);
  if (v3)
  {
    OALRingBuffer::~OALRingBuffer(v3);
    MEMORY[0x23EE824D0]();
    *(this + 6) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      MEMORY[0x23EE824B0](v5, 0x1000C8077774924);
    }

    MEMORY[0x23EE824D0](v4, 0x10D0C40C0CFF4BFLL);
    *(this + 12) = 0;
  }

  v6 = *(this + 11);
  if (v6)
  {
    AudioConverterDispose(v6);
    *(this + 11) = 0;
  }
}

void OALCaptureMixer::StopCapture(atomic_uint *this)
{
  if (this[20])
  {
    v1 = 1;
    atomic_compare_exchange_strong(this + 20, &v1, 0);
    AudioUnitRemoveRenderNotify(*this, OALCaptureMixer::RenderCallback, this);
    v3 = *(this + 6);

    OALRingBuffer::Clear(v3);
  }
}

void OALCaptureMixer::StartCapture(OALCaptureMixer *this)
{
  v2 = *(this + 20);
  if (!v2)
  {
    v5 = v1;
    atomic_compare_exchange_strong(this + 20, &v2, 1u);
    AudioUnitAddRenderNotify(*this, OALCaptureMixer::RenderCallback, this);
    v4 = *(this + 6);

    OALRingBuffer::Clear(v4);
  }
}

uint64_t OALCaptureMixer::RenderCallback(OALCaptureMixer *this, _DWORD *a2, unsigned int *a3, const AudioTimeStamp *a4, unsigned int a5, void *inInputDataProcUserData, AudioBufferList *a7)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(this + 20))
  {
    return 0;
  }

  result = 0;
  if (!a4 && (*a2 & 0x108) == 8)
  {
    v14[0] = a5;
    v10 = *(this + 12);
    v11 = AudioConverterFillComplexBuffer(*(this + 11), OALCaptureMixer::ConverterProc, inInputDataProcUserData, v14, (v10 + 24), 0);
    if (v11)
    {
      v12 = v11;
      exception = __cxa_allocate_exception(0x104uLL);
      CAXException::CAXException(exception, "AudioConverterFillComplexBuffer(THIS->mAudioConverter, ConverterProc, ioData, &packetCount, abl, NULL)", v12);
    }

    if (OALRingBuffer::Store(*(this + 6), *(v10 + 40), a5, *(this + 8)))
    {
      *(this + 8) += a5;
    }

    return 0;
  }

  return result;
}

void sub_23A037E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int16 a10, __int16 a11, int a12)
{
  if (a2)
  {
    __cxa_free_exception(v12);
    v15 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v16 = *v15;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(a9) = 136315650;
        *(&a9 + 4) = "oalCaptureMixer.cpp";
        WORD6(a9) = 1024;
        *(&a9 + 14) = 157;
        a11 = 1024;
        a12 = v16;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::RenderCallback FAILED - result = %d", &a9, 0x18u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "oalCaptureMixer.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 161;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::RenderCallback FAILED - Unknown error", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x23A037DCCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALCaptureMixer::ConverterProc(OALCaptureMixer *this, OpaqueAudioConverter *a2, unsigned int *a3, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v6 = *a5;
  if (v6)
  {
    v7 = a3 + 4;
    v8 = a5 + 2;
    do
    {
      *v7 = *v8;
      *(v7 - 1) = *(v8 - 1);
      v7 += 4;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t OALCaptureMixer::GetFrames(OALCaptureMixer *this, unsigned int a2, unsigned __int8 *__dst)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(this + 20))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "oalCaptureMixer.cpp";
      v15 = 1024;
      v16 = 196;
      v17 = 2048;
      v18 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::GetFrames FAILED, device not currently capturing - result = %ld", &v13, 0x1Cu);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 40964;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v4 = *(this + 6);
  v6 = *(v4 + 3);
  v5 = *(v4 + 4);
  v7 = *(this + 9);
  if (v7 < v6)
  {
    *(this + 9) = v6;
    v7 = v6;
  }

  v8 = v5 - v7;
  if (*(this + 14) < v8)
  {
    v8 = *(this + 14);
  }

  if (v8 >= a2)
  {
    result = OALRingBuffer::Fetch(v4, __dst, a2, v7);
    if (result)
    {
      v11 = result;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = 136315650;
        v14 = "oalCaptureMixer.cpp";
        v15 = 1024;
        v16 = 210;
        v17 = 2048;
        v18 = -1;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::GetFrames FAILED, err returned from mRingBuffer->Fetch - result = %ld", &v13, 0x1Cu);
      }

      return v11;
    }

    else
    {
      *(this + 9) += a2;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "oalCaptureMixer.cpp";
      v15 = 1024;
      v16 = 202;
      v17 = 2048;
      v18 = -1;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::GetFrames FAILED, not enough captured frames - result = %ld", &v13, 0x1Cu);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t OALCaptureMixer::AvailableFrames(OALCaptureMixer *this)
{
  v1 = *(this + 6);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(this + 9);
  if (v4 < v3)
  {
    *(this + 9) = v3;
    LODWORD(v4) = v3;
  }

  v5 = v2 - v4;
  v6 = *(this + 14);
  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t CABufferList::AllocateBuffers(uint64_t this, unsigned int a2)
{
  if (*(this + 36) < a2)
  {
    operator new[]();
  }

  return this;
}

void alSourceAddNotification_cold_1(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_23A012000, MEMORY[0x277D86220], v1, "%25s:%-5d ERROR: alSourceAddNotification FAILED", v2, v3, v4, v5);
  }

  __cxa_end_catch();
}

void alSourceRemoveNotification_cold_1(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_23A012000, MEMORY[0x277D86220], v1, "%25s:%-5d ERROR: alSourceRemoveNotification FAILED", v2, v3, v4, v5);
  }

  __cxa_end_catch();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}