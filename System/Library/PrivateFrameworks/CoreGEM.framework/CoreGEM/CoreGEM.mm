void sub_245396FE8(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2453A631C();
  }
}

uint64_t sub_2453970B0(uint64_t result)
{
  v1 = result;
  v2 = (result + 396);
  v3 = *(result + 396);
  if (v3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v3 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_24542A030(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        result = sub_2453DC6D0(v5 + 8);
        *(v5 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v6 = *(v1 + 48);
      if (v6)
      {
        result = sub_2453DC6D0(v6 + 8);
        *(v6 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = *(v1 + 56);
      if (v7)
      {
        result = sub_2453DC6D0(v7 + 8);
        *(v7 + 36) = 0;
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v8 = *(v1 + 64);
      if (v8)
      {
        if (*(v8 + 36))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
        }

        *(v8 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      v9 = *(v1 + 72);
      if (v9)
      {
        v10 = *(v9 + 76);
        if (v10)
        {
          *(v9 + 49) = 0u;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 69) = 0;
          *(v9 + 65) = 0;
        }

        *(v9 + 76) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      v11 = *(v1 + 80);
      if (v11)
      {
        if (*(v11 + 32))
        {
          *(v11 + 8) = 0;
          *(v11 + 16) = 0x400000000;
          *(v11 + 24) = 0;
        }

        *(v11 + 32) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v12 = *(v1 + 88);
      if (v12)
      {
        if (*(v12 + 24))
        {
          *(v12 + 8) = 0;
          *(v12 + 16) = 4;
        }

        *(v12 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(v1 + 96);
      if (v13)
      {
        if (*(v13 + 16))
        {
          *(v13 + 8) = 15;
        }

        *(v13 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v14 = *(v1 + 104);
      if (v14)
      {
        if (*(v14 + 44))
        {
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
        }

        *(v14 + 44) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v15 = *(v1 + 112);
      if (v15)
      {
        if (*(v15 + 36))
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
        }

        *(v15 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      result = *(v1 + 120);
      if (result)
      {
        result = sub_24542A204(result);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v16 = *(v1 + 128);
      if (v16)
      {
        if (*(v16 + 20))
        {
          v17 = *(v16 + 8);
          if (v17 != MEMORY[0x277D82C30])
          {
            if (*(v17 + 23) < 0)
            {
              **v17 = 0;
              *(v17 + 8) = 0;
            }

            else
            {
              *v17 = 0;
              *(v17 + 23) = 0;
            }
          }
        }

        *(v16 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v18 = *(v1 + 136);
      if (v18)
      {
        result = sub_2453DC6D0(v18 + 8);
        *(v18 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v19 = *(v1 + 144);
      if (v19)
      {
        if (*(v19 + 20))
        {
          *(v19 + 8) = 0;
        }

        *(v19 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v20 = *(v1 + 152);
      if (v20)
      {
        if (*(v20 + 20))
        {
          *(v20 + 8) = 1;
          *(v20 + 9) = 0;
          *(v20 + 13) = 0;
        }

        *(v20 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = *(v1 + 160);
      if (v21)
      {
        if (*(v21 + 20))
        {
          *(v21 + 8) = 0;
        }

        *(v21 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v22 = *(v1 + 168);
      if (v22)
      {
        if (*(v22 + 20))
        {
          *(v22 + 8) = 0;
          *(v22 + 12) = 0;
        }

        *(v22 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      v23 = *(v1 + 176);
      if (v23)
      {
        if (*(v23 + 20))
        {
          *(v23 + 8) = 0;
        }

        *(v23 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      v24 = *(v1 + 184);
      if (v24)
      {
        if (*(v24 + 16))
        {
          *(v24 + 8) = 0;
        }

        *(v24 + 16) = 0;
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v25 = *(v1 + 192);
      if (v25)
      {
        if (*(v25 + 20))
        {
          v26 = *(v25 + 8);
          if (v26 != MEMORY[0x277D82C30])
          {
            if (*(v26 + 23) < 0)
            {
              **v26 = 0;
              *(v26 + 8) = 0;
            }

            else
            {
              *v26 = 0;
              *(v26 + 23) = 0;
            }
          }
        }

        *(v25 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      v27 = *(v1 + 200);
      if (v27)
      {
        if (*(v27 + 20))
        {
          v28 = *(v27 + 8);
          if (v28 != MEMORY[0x277D82C30])
          {
            if (*(v28 + 23) < 0)
            {
              **v28 = 0;
              *(v28 + 8) = 0;
            }

            else
            {
              *v28 = 0;
              *(v28 + 23) = 0;
            }
          }
        }

        *(v27 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = *(v1 + 208);
      if (result)
      {
        result = sub_24542A3D0(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      v29 = *(v1 + 216);
      if (v29)
      {
        if (*(v29 + 24))
        {
          *(v29 + 16) = 0;
          *(v29 + 8) = 0;
        }

        *(v29 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      v30 = *(v1 + 224);
      if (v30)
      {
        if (*(v30 + 24))
        {
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
        }

        *(v30 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v31 = *(v1 + 232);
      if (v31)
      {
        if (*(v31 + 16))
        {
          *(v31 + 8) = 0;
        }

        *(v31 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v32 = *(v1 + 240);
      if (v32)
      {
        if (*(v32 + 20))
        {
          v33 = *(v32 + 8);
          if (v33 != MEMORY[0x277D82C30])
          {
            if (*(v33 + 23) < 0)
            {
              **v33 = 0;
              *(v33 + 8) = 0;
            }

            else
            {
              *v33 = 0;
              *(v33 + 23) = 0;
            }
          }
        }

        *(v32 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      result = *(v1 + 248);
      if (result)
      {
        result = sub_24541F3F0(result);
      }
    }
  }

  v34 = *(v1 + 400);
  if (v34)
  {
    if (v34)
    {
      v35 = *(v1 + 256);
      if (v35 != MEMORY[0x277D82C30])
      {
        if (*(v35 + 23) < 0)
        {
          **v35 = 0;
          *(v35 + 8) = 0;
        }

        else
        {
          *v35 = 0;
          *(v35 + 23) = 0;
        }
      }
    }

    v34 = *(v1 + 400);
    if ((v34 & 2) != 0)
    {
      v36 = *(v1 + 264);
      if (v36)
      {
        v37 = *(v36 + 80);
        if (v37)
        {
          *(v36 + 24) = 0u;
          *(v36 + 8) = 0u;
        }

        if ((v37 & 0xFF00) != 0)
        {
          *(v36 + 56) = 0u;
          *(v36 + 40) = 0u;
        }

        if ((v37 & 0xFF0000) != 0)
        {
          *(v36 + 72) = 0;
        }

        *(v36 + 80) = 0;
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 304) = 0;
    if ((v34 & 8) != 0)
    {
      result = *(v1 + 272);
      if (result)
      {
        result = sub_245419C10(result);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x10) != 0)
    {
      v38 = *(v1 + 280);
      if (v38)
      {
        v39 = *(v38 + 68);
        if (v39)
        {
          *(v38 + 24) = 0u;
          *(v38 + 8) = 0u;
        }

        if ((v39 & 0xFF00) != 0)
        {
          *(v38 + 40) = 0;
          *(v38 + 48) = 0;
          *(v38 + 56) = 0;
        }

        *(v38 + 68) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x20) != 0)
    {
      v40 = *(v1 + 288);
      if (v40)
      {
        if (*(v40 + 52))
        {
          *(v40 + 32) = 0;
          *(v40 + 40) = 0;
        }

        result = sub_2453DC6D0(v40 + 8);
        *(v40 + 52) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x40) != 0)
    {
      result = *(v1 + 296);
      if (result)
      {
        result = sub_245420F00(result);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x80) != 0)
    {
      result = *(v1 + 312);
      if (result)
      {
        result = sub_245422048(result);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0xFF00) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      result = *(v1 + 320);
      if (result)
      {
        result = sub_24541E99C(result);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x400) != 0)
    {
      result = *(v1 + 344);
      if (result)
      {
        result = sub_2453EFB50(result);
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 308) = 0;
    *(v1 + 368) = 0;
    *(v1 + 372) = 0;
    if ((v34 & 0x8000) != 0)
    {
      result = *(v1 + 376);
      if (result)
      {
        result = sub_2453F4B50(result);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0x10000) != 0)
  {
    v41 = *(v1 + 384);
    if (v41)
    {
      if (*(v41 + 40))
      {
        *(v41 + 32) = 0;
      }

      result = sub_2453DC6D0(v41 + 8);
      *(v41 + 40) = 0;
    }
  }

  *(v1 + 336) = 0;
  *(v1 + 360) = 0;
  *v2 = 0;
  return result;
}

void sub_245397744(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "GnssEmergencyManager::handleIndicationDataRequest", v3, 2u);
  }

  operator new();
}

void sub_2453981A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  sub_2453A13E8(va);
  if (v39)
  {
    operator delete(v39);
  }

  (*(*v38 + 8))(v38);
  _Unwind_Resume(a1);
}

void sub_245398218(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "GnssEmergencyManager::handleRemoteDataRequest", buf, 2u);
  }

  operator new();
}

void sub_245398B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2453A7C24(&STACK[0x630]);
  sub_2453A7C24(va);
  if (v10)
  {
    operator delete(v10);
  }

  (*(*v9 + 8))(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_245398C58(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  v5 = (a1 + 304);
  v6 = (a1 + 308);
  v7 = (a1 + 372);
LABEL_2:
  while (2)
  {
    v8 = *(this + 1);
    if (v8 >= *(this + 2) || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v8 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v10 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v13;
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 396) |= 1u;
        if (v14 < v11 && *v14 == 16)
        {
          v19 = v14 + 1;
          *(this + 1) = v19;
          goto LABEL_122;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v19 = *(this + 1);
        v11 = *(this + 2);
LABEL_122:
        if (v19 >= v11 || (v29 = *v19, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v29;
          v30 = v19 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 396) |= 2u;
        if (v30 >= v11 || *v30 != 24)
        {
          continue;
        }

        v18 = v30 + 1;
        *(this + 1) = v18;
LABEL_130:
        v377[0] = 0;
        if (v18 >= v11 || (v31 = *v18, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377);
          if (!result)
          {
            return result;
          }

          v31 = v377[0];
        }

        else
        {
          *(this + 1) = v18 + 1;
        }

        if (sub_24539CC90(v31))
        {
          *(a1 + 396) |= 4u;
          *(a1 + 20) = v31;
        }

        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 34)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_140:
        *(a1 + 396) |= 8u;
        v33 = *(a1 + 24);
        if (!v33)
        {
          operator new();
        }

        v377[0] = 0;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v34;
          *(this + 1) = v34 + 1;
        }

        v35 = *(this + 14);
        v36 = *(this + 15);
        *(this + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24539C364(v33, this, v37) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v38 = *(this + 14);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v40 < 0 == v39)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 42)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_154:
        *(a1 + 396) |= 0x10u;
        v42 = *(a1 + 32);
        if (!v42)
        {
          operator new();
        }

        v377[0] = 0;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v43;
          *(this + 1) = v43 + 1;
        }

        v44 = *(this + 14);
        v45 = *(this + 15);
        *(this + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24539DAC8(v42, this, v46) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v47 = *(this + 14);
        v39 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v39)
        {
          *(this + 14) = v48;
        }

        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 50)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
LABEL_168:
        *(a1 + 396) |= 0x20u;
        v50 = *(a1 + 40);
        if (!v50)
        {
          operator new();
        }

        v377[0] = 0;
        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v51;
          *(this + 1) = v51 + 1;
        }

        v52 = *(this + 14);
        v53 = *(this + 15);
        *(this + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543318C(v50, this, v54) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v55 = *(this + 14);
        v39 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v39)
        {
          *(this + 14) = v56;
        }

        v57 = *(this + 1);
        if (v57 >= *(this + 2) || *v57 != 58)
        {
          continue;
        }

        *(this + 1) = v57 + 1;
LABEL_182:
        *(a1 + 396) |= 0x40u;
        v58 = *(a1 + 48);
        if (!v58)
        {
          operator new();
        }

        v377[0] = 0;
        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v59;
          *(this + 1) = v59 + 1;
        }

        v60 = *(this + 14);
        v61 = *(this + 15);
        *(this + 14) = v60 + 1;
        if (v60 >= v61)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245433648(v58, this, v62) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v63 = *(this + 14);
        v39 = __OFSUB__(v63, 1);
        v64 = v63 - 1;
        if (v64 < 0 == v39)
        {
          *(this + 14) = v64;
        }

        v65 = *(this + 1);
        if (v65 >= *(this + 2) || *v65 != 66)
        {
          continue;
        }

        *(this + 1) = v65 + 1;
LABEL_196:
        *(a1 + 396) |= 0x80u;
        v66 = *(a1 + 56);
        if (!v66)
        {
          operator new();
        }

        v377[0] = 0;
        v67 = *(this + 1);
        if (v67 >= *(this + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v67;
          *(this + 1) = v67 + 1;
        }

        v68 = *(this + 14);
        v69 = *(this + 15);
        *(this + 14) = v68 + 1;
        if (v68 >= v69)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245433C88(v66, this, v70) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v71 = *(this + 14);
        v39 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v39)
        {
          *(this + 14) = v72;
        }

        v73 = *(this + 1);
        if (v73 >= *(this + 2) || *v73 != 74)
        {
          continue;
        }

        *(this + 1) = v73 + 1;
LABEL_210:
        *(a1 + 396) |= 0x100u;
        v74 = *(a1 + 64);
        if (!v74)
        {
          operator new();
        }

        v377[0] = 0;
        v75 = *(this + 1);
        if (v75 >= *(this + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v75;
          *(this + 1) = v75 + 1;
        }

        v76 = *(this + 14);
        v77 = *(this + 15);
        *(this + 14) = v76 + 1;
        if (v76 >= v77)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453A1EB4(v74, this, v78) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v79 = *(this + 14);
        v39 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v39)
        {
          *(this + 14) = v80;
        }

        v81 = *(this + 1);
        if (v81 >= *(this + 2) || *v81 != 82)
        {
          continue;
        }

        *(this + 1) = v81 + 1;
LABEL_224:
        *(a1 + 396) |= 0x200u;
        v82 = *(a1 + 72);
        if (!v82)
        {
          operator new();
        }

        v377[0] = 0;
        v83 = *(this + 1);
        if (v83 >= *(this + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v83;
          *(this + 1) = v83 + 1;
        }

        v84 = *(this + 14);
        v85 = *(this + 15);
        *(this + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543434C(v82, this, v86) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v87 = *(this + 14);
        v39 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v39)
        {
          *(this + 14) = v88;
        }

        v89 = *(this + 1);
        if (v89 >= *(this + 2) || *v89 != 90)
        {
          continue;
        }

        *(this + 1) = v89 + 1;
LABEL_238:
        *(a1 + 396) |= 0x400u;
        v90 = *(a1 + 80);
        if (!v90)
        {
          operator new();
        }

        v377[0] = 0;
        v91 = *(this + 1);
        if (v91 >= *(this + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v91;
          *(this + 1) = v91 + 1;
        }

        v92 = *(this + 14);
        v93 = *(this + 15);
        *(this + 14) = v92 + 1;
        if (v92 >= v93)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245434D7C(v90, this, v94) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v95 = *(this + 14);
        v39 = __OFSUB__(v95, 1);
        v96 = v95 - 1;
        if (v96 < 0 == v39)
        {
          *(this + 14) = v96;
        }

        v97 = *(this + 1);
        if (v97 >= *(this + 2) || *v97 != 98)
        {
          continue;
        }

        *(this + 1) = v97 + 1;
LABEL_252:
        *(a1 + 396) |= 0x800u;
        v98 = *(a1 + 88);
        if (!v98)
        {
          operator new();
        }

        v377[0] = 0;
        v99 = *(this + 1);
        if (v99 >= *(this + 2) || *v99 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v99;
          *(this + 1) = v99 + 1;
        }

        v100 = *(this + 14);
        v101 = *(this + 15);
        *(this + 14) = v100 + 1;
        if (v100 >= v101)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245435368(v98, this, v102) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v103 = *(this + 14);
        v39 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v39)
        {
          *(this + 14) = v104;
        }

        v105 = *(this + 1);
        if (v105 >= *(this + 2) || *v105 != 106)
        {
          continue;
        }

        *(this + 1) = v105 + 1;
LABEL_266:
        *(a1 + 396) |= 0x1000u;
        v106 = *(a1 + 96);
        if (!v106)
        {
          operator new();
        }

        v377[0] = 0;
        v107 = *(this + 1);
        if (v107 >= *(this + 2) || *v107 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v107;
          *(this + 1) = v107 + 1;
        }

        v108 = *(this + 14);
        v109 = *(this + 15);
        *(this + 14) = v108 + 1;
        if (v108 >= v109)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543579C(v106, this, v110) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v111 = *(this + 14);
        v39 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v39)
        {
          *(this + 14) = v112;
        }

        v113 = *(this + 1);
        if (v113 >= *(this + 2) || *v113 != 114)
        {
          continue;
        }

        *(this + 1) = v113 + 1;
LABEL_280:
        *(a1 + 396) |= 0x2000u;
        v114 = *(a1 + 104);
        if (!v114)
        {
          operator new();
        }

        v377[0] = 0;
        v115 = *(this + 1);
        if (v115 >= *(this + 2) || *v115 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v115;
          *(this + 1) = v115 + 1;
        }

        v116 = *(this + 14);
        v117 = *(this + 15);
        *(this + 14) = v116 + 1;
        if (v116 >= v117)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245435AD8(v114, this, v118) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v119 = *(this + 14);
        v39 = __OFSUB__(v119, 1);
        v120 = v119 - 1;
        if (v120 < 0 == v39)
        {
          *(this + 14) = v120;
        }

        v121 = *(this + 1);
        if (v121 >= *(this + 2) || *v121 != 122)
        {
          continue;
        }

        *(this + 1) = v121 + 1;
LABEL_294:
        *(a1 + 396) |= 0x4000u;
        v122 = *(a1 + 112);
        if (!v122)
        {
          operator new();
        }

        v377[0] = 0;
        v123 = *(this + 1);
        if (v123 >= *(this + 2) || *v123 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v123;
          *(this + 1) = v123 + 1;
        }

        v124 = *(this + 14);
        v125 = *(this + 15);
        *(this + 14) = v124 + 1;
        if (v124 >= v125)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245435FC4(v122, this, v126) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v127 = *(this + 14);
        v39 = __OFSUB__(v127, 1);
        v128 = v127 - 1;
        if (v128 < 0 == v39)
        {
          *(this + 14) = v128;
        }

        v129 = *(this + 1);
        if (*(this + 4) - v129 <= 1 || *v129 != 130 || v129[1] != 1)
        {
          continue;
        }

        *(this + 1) = v129 + 2;
LABEL_309:
        *(a1 + 396) |= 0x8000u;
        v130 = *(a1 + 120);
        if (!v130)
        {
          operator new();
        }

        v377[0] = 0;
        v131 = *(this + 1);
        if (v131 >= *(this + 2) || *v131 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v131;
          *(this + 1) = v131 + 1;
        }

        v132 = *(this + 14);
        v133 = *(this + 15);
        *(this + 14) = v132 + 1;
        if (v132 >= v133)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543156C(v130, this, v134) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v135 = *(this + 14);
        v39 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v39)
        {
          *(this + 14) = v136;
        }

        v137 = *(this + 1);
        if (*(this + 4) - v137 <= 1 || *v137 != 138 || v137[1] != 1)
        {
          continue;
        }

        *(this + 1) = v137 + 2;
LABEL_324:
        *(a1 + 396) |= 0x10000u;
        v138 = *(a1 + 128);
        if (!v138)
        {
          operator new();
        }

        v377[0] = 0;
        v139 = *(this + 1);
        if (v139 >= *(this + 2) || *v139 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v139;
          *(this + 1) = v139 + 1;
        }

        v140 = *(this + 14);
        v141 = *(this + 15);
        *(this + 14) = v140 + 1;
        if (v140 >= v141)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245431A3C(v138, this, v142) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v143 = *(this + 14);
        v39 = __OFSUB__(v143, 1);
        v144 = v143 - 1;
        if (v144 < 0 == v39)
        {
          *(this + 14) = v144;
        }

        v145 = *(this + 1);
        if (*(this + 4) - v145 <= 1 || *v145 != 146 || v145[1] != 1)
        {
          continue;
        }

        *(this + 1) = v145 + 2;
LABEL_339:
        *(a1 + 396) |= 0x20000u;
        v146 = *(a1 + 136);
        if (!v146)
        {
          operator new();
        }

        v377[0] = 0;
        v147 = *(this + 1);
        if (v147 >= *(this + 2) || *v147 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v147;
          *(this + 1) = v147 + 1;
        }

        v148 = *(this + 14);
        v149 = *(this + 15);
        *(this + 14) = v148 + 1;
        if (v148 >= v149)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2454321A8(v146, this, v150) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v151 = *(this + 14);
        v39 = __OFSUB__(v151, 1);
        v152 = v151 - 1;
        if (v152 < 0 == v39)
        {
          *(this + 14) = v152;
        }

        v153 = *(this + 1);
        if (*(this + 4) - v153 <= 1 || *v153 != 154 || v153[1] != 1)
        {
          continue;
        }

        *(this + 1) = v153 + 2;
LABEL_354:
        *(a1 + 396) |= 0x40000u;
        v154 = *(a1 + 144);
        if (!v154)
        {
          operator new();
        }

        v377[0] = 0;
        v155 = *(this + 1);
        if (v155 >= *(this + 2) || *v155 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v155;
          *(this + 1) = v155 + 1;
        }

        v156 = *(this + 14);
        v157 = *(this + 15);
        *(this + 14) = v156 + 1;
        if (v156 >= v157)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245432B28(v154, this, v158) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v159 = *(this + 14);
        v39 = __OFSUB__(v159, 1);
        v160 = v159 - 1;
        if (v160 < 0 == v39)
        {
          *(this + 14) = v160;
        }

        v161 = *(this + 1);
        if (*(this + 4) - v161 <= 1 || *v161 != 162 || v161[1] != 1)
        {
          continue;
        }

        *(this + 1) = v161 + 2;
LABEL_369:
        *(a1 + 396) |= 0x80000u;
        v162 = *(a1 + 152);
        if (!v162)
        {
          operator new();
        }

        v377[0] = 0;
        v163 = *(this + 1);
        if (v163 >= *(this + 2) || *v163 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v163;
          *(this + 1) = v163 + 1;
        }

        v164 = *(this + 14);
        v165 = *(this + 15);
        *(this + 14) = v164 + 1;
        if (v164 >= v165)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245430EA8(v162, this, v166) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v167 = *(this + 14);
        v39 = __OFSUB__(v167, 1);
        v168 = v167 - 1;
        if (v168 < 0 == v39)
        {
          *(this + 14) = v168;
        }

        v169 = *(this + 1);
        if (*(this + 4) - v169 <= 1 || *v169 != 170 || v169[1] != 1)
        {
          continue;
        }

        *(this + 1) = v169 + 2;
LABEL_384:
        *(a1 + 396) |= 0x100000u;
        v170 = *(a1 + 160);
        if (!v170)
        {
          operator new();
        }

        v377[0] = 0;
        v171 = *(this + 1);
        if (v171 >= *(this + 2) || *v171 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v171;
          *(this + 1) = v171 + 1;
        }

        v172 = *(this + 14);
        v173 = *(this + 15);
        *(this + 14) = v172 + 1;
        if (v172 >= v173)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245432E20(v170, this, v174) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v175 = *(this + 14);
        v39 = __OFSUB__(v175, 1);
        v176 = v175 - 1;
        if (v176 < 0 == v39)
        {
          *(this + 14) = v176;
        }

        v177 = *(this + 1);
        if (*(this + 4) - v177 <= 1 || *v177 != 178 || v177[1] != 1)
        {
          continue;
        }

        *(this + 1) = v177 + 2;
LABEL_399:
        *(a1 + 396) |= 0x200000u;
        v178 = *(a1 + 168);
        if (!v178)
        {
          operator new();
        }

        v377[0] = 0;
        v179 = *(this + 1);
        if (v179 >= *(this + 2) || *v179 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v179;
          *(this + 1) = v179 + 1;
        }

        v180 = *(this + 14);
        v181 = *(this + 15);
        *(this + 14) = v180 + 1;
        if (v180 >= v181)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245436828(v178, this, v182) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v183 = *(this + 14);
        v39 = __OFSUB__(v183, 1);
        v184 = v183 - 1;
        if (v184 < 0 == v39)
        {
          *(this + 14) = v184;
        }

        v185 = *(this + 1);
        if (*(this + 4) - v185 <= 1 || *v185 != 186 || v185[1] != 1)
        {
          continue;
        }

        *(this + 1) = v185 + 2;
LABEL_414:
        *(a1 + 396) |= 0x400000u;
        v186 = *(a1 + 176);
        if (!v186)
        {
          operator new();
        }

        v377[0] = 0;
        v187 = *(this + 1);
        if (v187 >= *(this + 2) || *v187 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v187;
          *(this + 1) = v187 + 1;
        }

        v188 = *(this + 14);
        v189 = *(this + 15);
        *(this + 14) = v188 + 1;
        if (v188 >= v189)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245436C3C(v186, this, v190) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v191 = *(this + 14);
        v39 = __OFSUB__(v191, 1);
        v192 = v191 - 1;
        if (v192 < 0 == v39)
        {
          *(this + 14) = v192;
        }

        v193 = *(this + 1);
        if (*(this + 4) - v193 <= 1 || *v193 != 194 || v193[1] != 1)
        {
          continue;
        }

        *(this + 1) = v193 + 2;
LABEL_429:
        *(a1 + 396) |= 0x800000u;
        v194 = *(a1 + 184);
        if (!v194)
        {
          operator new();
        }

        v377[0] = 0;
        v195 = *(this + 1);
        if (v195 >= *(this + 2) || *v195 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v195;
          *(this + 1) = v195 + 1;
        }

        v196 = *(this + 14);
        v197 = *(this + 15);
        *(this + 14) = v196 + 1;
        if (v196 >= v197)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245437428(v194, this, v198) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v199 = *(this + 14);
        v39 = __OFSUB__(v199, 1);
        v200 = v199 - 1;
        if (v200 < 0 == v39)
        {
          *(this + 14) = v200;
        }

        v201 = *(this + 1);
        if (*(this + 4) - v201 <= 1 || *v201 != 202 || v201[1] != 1)
        {
          continue;
        }

        *(this + 1) = v201 + 2;
LABEL_444:
        *(a1 + 396) |= 0x1000000u;
        v202 = *(a1 + 192);
        if (!v202)
        {
          operator new();
        }

        v377[0] = 0;
        v203 = *(this + 1);
        if (v203 >= *(this + 2) || *v203 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v203;
          *(this + 1) = v203 + 1;
        }

        v204 = *(this + 14);
        v205 = *(this + 15);
        *(this + 14) = v204 + 1;
        if (v204 >= v205)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543775C(v202, this, v206) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v207 = *(this + 14);
        v39 = __OFSUB__(v207, 1);
        v208 = v207 - 1;
        if (v208 < 0 == v39)
        {
          *(this + 14) = v208;
        }

        v209 = *(this + 1);
        if (*(this + 4) - v209 <= 1 || *v209 != 210 || v209[1] != 1)
        {
          continue;
        }

        *(this + 1) = v209 + 2;
LABEL_459:
        *(a1 + 396) |= 0x2000000u;
        v210 = *(a1 + 200);
        if (!v210)
        {
          operator new();
        }

        v377[0] = 0;
        v211 = *(this + 1);
        if (v211 >= *(this + 2) || *v211 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v211;
          *(this + 1) = v211 + 1;
        }

        v212 = *(this + 14);
        v213 = *(this + 15);
        *(this + 14) = v212 + 1;
        if (v212 >= v213)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245437AFC(v210, this, v214) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v215 = *(this + 14);
        v39 = __OFSUB__(v215, 1);
        v216 = v215 - 1;
        if (v216 < 0 == v39)
        {
          *(this + 14) = v216;
        }

        v217 = *(this + 1);
        if (*(this + 4) - v217 <= 1 || *v217 != 218 || v217[1] != 1)
        {
          continue;
        }

        *(this + 1) = v217 + 2;
LABEL_474:
        *(a1 + 396) |= 0x4000000u;
        v218 = *(a1 + 208);
        if (!v218)
        {
          operator new();
        }

        v377[0] = 0;
        v219 = *(this + 1);
        if (v219 >= *(this + 2) || *v219 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v219;
          *(this + 1) = v219 + 1;
        }

        v220 = *(this + 14);
        v221 = *(this + 15);
        *(this + 14) = v220 + 1;
        if (v220 >= v221)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543BD84(v218, this, v222) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v223 = *(this + 14);
        v39 = __OFSUB__(v223, 1);
        v224 = v223 - 1;
        if (v224 < 0 == v39)
        {
          *(this + 14) = v224;
        }

        v225 = *(this + 1);
        if (*(this + 4) - v225 <= 1 || *v225 != 226 || v225[1] != 1)
        {
          continue;
        }

        *(this + 1) = v225 + 2;
LABEL_489:
        *(a1 + 396) |= 0x8000000u;
        v226 = *(a1 + 216);
        if (!v226)
        {
          operator new();
        }

        v377[0] = 0;
        v227 = *(this + 1);
        if (v227 >= *(this + 2) || *v227 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v227;
          *(this + 1) = v227 + 1;
        }

        v228 = *(this + 14);
        v229 = *(this + 15);
        *(this + 14) = v228 + 1;
        if (v228 >= v229)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543E264(v226, this, v230) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v231 = *(this + 14);
        v39 = __OFSUB__(v231, 1);
        v232 = v231 - 1;
        if (v232 < 0 == v39)
        {
          *(this + 14) = v232;
        }

        v233 = *(this + 1);
        if (*(this + 4) - v233 <= 1 || *v233 != 242 || v233[1] != 1)
        {
          continue;
        }

        *(this + 1) = v233 + 2;
LABEL_504:
        *(a1 + 396) |= 0x10000000u;
        v234 = *(a1 + 224);
        if (!v234)
        {
          operator new();
        }

        v377[0] = 0;
        v235 = *(this + 1);
        if (v235 >= *(this + 2) || *v235 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v235;
          *(this + 1) = v235 + 1;
        }

        v236 = *(this + 14);
        v237 = *(this + 15);
        *(this + 14) = v236 + 1;
        if (v236 >= v237)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245436420(v234, this, v238) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v239 = *(this + 14);
        v39 = __OFSUB__(v239, 1);
        v240 = v239 - 1;
        if (v240 < 0 == v39)
        {
          *(this + 14) = v240;
        }

        v241 = *(this + 1);
        if (*(this + 4) - v241 <= 1 || *v241 != 250 || v241[1] != 1)
        {
          continue;
        }

        *(this + 1) = v241 + 2;
LABEL_519:
        *(a1 + 396) |= 0x20000000u;
        v242 = *(a1 + 232);
        if (!v242)
        {
          operator new();
        }

        v377[0] = 0;
        v243 = *(this + 1);
        if (v243 >= *(this + 2) || *v243 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v243;
          *(this + 1) = v243 + 1;
        }

        v244 = *(this + 14);
        v245 = *(this + 15);
        *(this + 14) = v244 + 1;
        if (v244 >= v245)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245437054(v242, this, v246) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v247 = *(this + 14);
        v39 = __OFSUB__(v247, 1);
        v248 = v247 - 1;
        if (v248 < 0 == v39)
        {
          *(this + 14) = v248;
        }

        v249 = *(this + 1);
        if (*(this + 4) - v249 <= 1 || *v249 != 130 || v249[1] != 2)
        {
          continue;
        }

        *(this + 1) = v249 + 2;
LABEL_534:
        *(a1 + 396) |= 0x40000000u;
        v250 = *(a1 + 240);
        if (!v250)
        {
          operator new();
        }

        v377[0] = 0;
        v251 = *(this + 1);
        if (v251 >= *(this + 2) || *v251 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v251;
          *(this + 1) = v251 + 1;
        }

        v252 = *(this + 14);
        v253 = *(this + 15);
        *(this + 14) = v252 + 1;
        if (v252 >= v253)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245431DDC(v250, this, v254) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v255 = *(this + 14);
        v39 = __OFSUB__(v255, 1);
        v256 = v255 - 1;
        if (v256 < 0 == v39)
        {
          *(this + 14) = v256;
        }

        v257 = *(this + 1);
        if (*(this + 4) - v257 <= 1 || *v257 != 146 || v257[1] != 3)
        {
          continue;
        }

        *(this + 1) = v257 + 2;
LABEL_549:
        *(a1 + 396) |= 0x80000000;
        v258 = *(a1 + 248);
        if (!v258)
        {
          operator new();
        }

        v377[0] = 0;
        v259 = *(this + 1);
        if (v259 >= *(this + 2) || *v259 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v259;
          *(this + 1) = v259 + 1;
        }

        v260 = *(this + 14);
        v261 = *(this + 15);
        *(this + 14) = v260 + 1;
        if (v260 >= v261)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541F48C(v258, this, v262) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v263 = *(this + 14);
        v39 = __OFSUB__(v263, 1);
        v264 = v263 - 1;
        if (v264 < 0 == v39)
        {
          *(this + 14) = v264;
        }

        v265 = *(this + 1);
        if (*(this + 4) - v265 <= 1 || *v265 != 154 || v265[1] != 3)
        {
          continue;
        }

        *(this + 1) = v265 + 2;
LABEL_564:
        *(a1 + 400) |= 1u;
        if (*(a1 + 256) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v266 = *(this + 1);
        if (*(this + 4) - v266 < 2 || *v266 != 226 || v266[1] != 3)
        {
          continue;
        }

        *(this + 1) = v266 + 2;
LABEL_571:
        *(a1 + 400) |= 2u;
        v267 = *(a1 + 264);
        if (!v267)
        {
          operator new();
        }

        v377[0] = 0;
        v268 = *(this + 1);
        if (v268 >= *(this + 2) || *v268 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v268;
          *(this + 1) = v268 + 1;
        }

        v269 = *(this + 14);
        v270 = *(this + 15);
        *(this + 14) = v269 + 1;
        if (v269 >= v270)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F8B20(v267, this, v271) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v272 = *(this + 14);
        v39 = __OFSUB__(v272, 1);
        v273 = v272 - 1;
        if (v273 < 0 == v39)
        {
          *(this + 14) = v273;
        }

        v274 = *(this + 1);
        v22 = *(this + 2);
        if (v22 - v274 <= 1 || *v274 != 232 || v274[1] != 3)
        {
          continue;
        }

        v23 = (v274 + 2);
        *(this + 1) = v23;
LABEL_586:
        if (v23 >= v22 || (v275 = *v23, (v275 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v5);
          if (!result)
          {
            return result;
          }

          v276 = *(this + 1);
          v22 = *(this + 2);
        }

        else
        {
          *v5 = v275;
          v276 = (v23 + 1);
          *(this + 1) = v276;
        }

        v24 = *(a1 + 400) | 4;
        *(a1 + 400) = v24;
        if (v22 - v276 < 2 || *v276 != 242 || v276[1] != 3)
        {
          continue;
        }

        *(this + 1) = v276 + 2;
LABEL_595:
        *(a1 + 400) = v24 | 8;
        v277 = *(a1 + 272);
        if (!v277)
        {
          operator new();
        }

        v377[0] = 0;
        v278 = *(this + 1);
        if (v278 >= *(this + 2) || *v278 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v278;
          *(this + 1) = v278 + 1;
        }

        v279 = *(this + 14);
        v280 = *(this + 15);
        *(this + 14) = v279 + 1;
        if (v279 >= v280)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245419C60(v277, this, v281) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v282 = *(this + 14);
        v39 = __OFSUB__(v282, 1);
        v283 = v282 - 1;
        if (v283 < 0 == v39)
        {
          *(this + 14) = v283;
        }

        v284 = *(this + 1);
        if (*(this + 4) - v284 <= 1 || *v284 != 250 || v284[1] != 3)
        {
          continue;
        }

        *(this + 1) = v284 + 2;
LABEL_610:
        *(a1 + 400) |= 0x10u;
        v285 = *(a1 + 280);
        if (!v285)
        {
          operator new();
        }

        v377[0] = 0;
        v286 = *(this + 1);
        if (v286 >= *(this + 2) || *v286 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v286;
          *(this + 1) = v286 + 1;
        }

        v287 = *(this + 14);
        v288 = *(this + 15);
        *(this + 14) = v287 + 1;
        if (v287 >= v288)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541AA2C(v285, this, v289) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v290 = *(this + 14);
        v39 = __OFSUB__(v290, 1);
        v291 = v290 - 1;
        if (v291 < 0 == v39)
        {
          *(this + 14) = v291;
        }

        v292 = *(this + 1);
        if (*(this + 4) - v292 <= 1 || *v292 != 130 || v292[1] != 4)
        {
          continue;
        }

        *(this + 1) = v292 + 2;
LABEL_625:
        *(a1 + 400) |= 0x20u;
        v293 = *(a1 + 288);
        if (!v293)
        {
          operator new();
        }

        v377[0] = 0;
        v294 = *(this + 1);
        if (v294 >= *(this + 2) || *v294 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v294;
          *(this + 1) = v294 + 1;
        }

        v295 = *(this + 14);
        v296 = *(this + 15);
        *(this + 14) = v295 + 1;
        if (v295 >= v296)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541DB58(v293, this, v297) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v298 = *(this + 14);
        v39 = __OFSUB__(v298, 1);
        v299 = v298 - 1;
        if (v299 < 0 == v39)
        {
          *(this + 14) = v299;
        }

        v300 = *(this + 1);
        if (*(this + 4) - v300 <= 1 || *v300 != 138 || v300[1] != 4)
        {
          continue;
        }

        *(this + 1) = v300 + 2;
LABEL_640:
        *(a1 + 400) |= 0x40u;
        v301 = *(a1 + 296);
        if (!v301)
        {
          operator new();
        }

        v377[0] = 0;
        v302 = *(this + 1);
        if (v302 >= *(this + 2) || *v302 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v302;
          *(this + 1) = v302 + 1;
        }

        v303 = *(this + 14);
        v304 = *(this + 15);
        *(this + 14) = v303 + 1;
        if (v303 >= v304)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245420F4C(v301, this, v305) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v306 = *(this + 14);
        v39 = __OFSUB__(v306, 1);
        v307 = v306 - 1;
        if (v307 < 0 == v39)
        {
          *(this + 14) = v307;
        }

        v308 = *(this + 1);
        if (*(this + 4) - v308 <= 1 || *v308 != 146 || v308[1] != 4)
        {
          continue;
        }

        *(this + 1) = v308 + 2;
LABEL_655:
        *(a1 + 400) |= 0x80u;
        v309 = *(a1 + 312);
        if (!v309)
        {
          operator new();
        }

        v377[0] = 0;
        v310 = *(this + 1);
        if (v310 >= *(this + 2) || *v310 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v310;
          *(this + 1) = v310 + 1;
        }

        v311 = *(this + 14);
        v312 = *(this + 15);
        *(this + 14) = v311 + 1;
        if (v311 >= v312)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245422088(v309, this, v313) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v314 = *(this + 14);
        v39 = __OFSUB__(v314, 1);
        v315 = v314 - 1;
        if (v315 < 0 == v39)
        {
          *(this + 14) = v315;
        }

        v316 = *(this + 1);
        if (*(this + 4) - v316 <= 1 || *v316 != 154 || v316[1] != 4)
        {
          continue;
        }

        *(this + 1) = v316 + 2;
LABEL_670:
        *(a1 + 400) |= 0x100u;
        v317 = *(a1 + 320);
        if (!v317)
        {
          operator new();
        }

        v377[0] = 0;
        v318 = *(this + 1);
        if (v318 >= *(this + 2) || *v318 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
          {
            return 0;
          }
        }

        else
        {
          v377[0] = *v318;
          *(this + 1) = v318 + 1;
        }

        v319 = *(this + 14);
        v320 = *(this + 15);
        *(this + 14) = v319 + 1;
        if (v319 >= v320)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24541EA00(v317, this, v321) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v322 = *(this + 14);
        v39 = __OFSUB__(v322, 1);
        v323 = v322 - 1;
        if (v323 < 0 == v39)
        {
          *(this + 14) = v323;
        }

        v324 = *(this + 1);
        v27 = *(this + 2);
        if (v27 - v324 > 1)
        {
          v325 = *v324;
          goto LABEL_683;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v18 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_130;
      case 4u:
        if (v10 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_111;
      case 5u:
        if (v10 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_111;
      case 6u:
        if (v10 == 2)
        {
          goto LABEL_168;
        }

        goto LABEL_111;
      case 7u:
        if (v10 == 2)
        {
          goto LABEL_182;
        }

        goto LABEL_111;
      case 8u:
        if (v10 == 2)
        {
          goto LABEL_196;
        }

        goto LABEL_111;
      case 9u:
        if (v10 == 2)
        {
          goto LABEL_210;
        }

        goto LABEL_111;
      case 0xAu:
        if (v10 == 2)
        {
          goto LABEL_224;
        }

        goto LABEL_111;
      case 0xBu:
        if (v10 == 2)
        {
          goto LABEL_238;
        }

        goto LABEL_111;
      case 0xCu:
        if (v10 == 2)
        {
          goto LABEL_252;
        }

        goto LABEL_111;
      case 0xDu:
        if (v10 == 2)
        {
          goto LABEL_266;
        }

        goto LABEL_111;
      case 0xEu:
        if (v10 == 2)
        {
          goto LABEL_280;
        }

        goto LABEL_111;
      case 0xFu:
        if (v10 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_111;
      case 0x10u:
        if (v10 == 2)
        {
          goto LABEL_309;
        }

        goto LABEL_111;
      case 0x11u:
        if (v10 == 2)
        {
          goto LABEL_324;
        }

        goto LABEL_111;
      case 0x12u:
        if (v10 == 2)
        {
          goto LABEL_339;
        }

        goto LABEL_111;
      case 0x13u:
        if (v10 == 2)
        {
          goto LABEL_354;
        }

        goto LABEL_111;
      case 0x14u:
        if (v10 == 2)
        {
          goto LABEL_369;
        }

        goto LABEL_111;
      case 0x15u:
        if (v10 == 2)
        {
          goto LABEL_384;
        }

        goto LABEL_111;
      case 0x16u:
        if (v10 == 2)
        {
          goto LABEL_399;
        }

        goto LABEL_111;
      case 0x17u:
        if (v10 == 2)
        {
          goto LABEL_414;
        }

        goto LABEL_111;
      case 0x18u:
        if (v10 == 2)
        {
          goto LABEL_429;
        }

        goto LABEL_111;
      case 0x19u:
        if (v10 == 2)
        {
          goto LABEL_444;
        }

        goto LABEL_111;
      case 0x1Au:
        if (v10 == 2)
        {
          goto LABEL_459;
        }

        goto LABEL_111;
      case 0x1Bu:
        if (v10 == 2)
        {
          goto LABEL_474;
        }

        goto LABEL_111;
      case 0x1Cu:
        if (v10 == 2)
        {
          goto LABEL_489;
        }

        goto LABEL_111;
      case 0x1Eu:
        if (v10 == 2)
        {
          goto LABEL_504;
        }

        goto LABEL_111;
      case 0x1Fu:
        if (v10 == 2)
        {
          goto LABEL_519;
        }

        goto LABEL_111;
      case 0x20u:
        if (v10 == 2)
        {
          goto LABEL_534;
        }

        goto LABEL_111;
      case 0x32u:
        if (v10 == 2)
        {
          goto LABEL_549;
        }

        goto LABEL_111;
      case 0x33u:
        if (v10 == 2)
        {
          goto LABEL_564;
        }

        goto LABEL_111;
      case 0x3Cu:
        if (v10 == 2)
        {
          goto LABEL_571;
        }

        goto LABEL_111;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_586;
      case 0x3Eu:
        if (v10 != 2)
        {
          goto LABEL_111;
        }

        v24 = *(a1 + 400);
        goto LABEL_595;
      case 0x3Fu:
        if (v10 == 2)
        {
          goto LABEL_610;
        }

        goto LABEL_111;
      case 0x40u:
        if (v10 == 2)
        {
          goto LABEL_625;
        }

        goto LABEL_111;
      case 0x41u:
        if (v10 == 2)
        {
          goto LABEL_640;
        }

        goto LABEL_111;
      case 0x42u:
        if (v10 == 2)
        {
          goto LABEL_655;
        }

        goto LABEL_111;
      case 0x43u:
        if (v10 == 2)
        {
          goto LABEL_670;
        }

        goto LABEL_111;
      case 0x46u:
        if ((TagFallback & 7) == 0)
        {
          v28 = *(this + 1);
          v27 = *(this + 2);
          while (1)
          {
            v376 = 0;
            if (v28 >= v27 || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v376))
              {
                return 0;
              }
            }

            else
            {
              v376 = *v28;
              *(this + 1) = v28 + 1;
            }

            v326 = *(a1 + 336);
            if (v326 == *(a1 + 340))
            {
              sub_2453B0370((a1 + 328), v326 + 1);
              v326 = *(a1 + 336);
            }

            v327 = v376;
            v328 = *(a1 + 328);
            *(a1 + 336) = v326 + 1;
            *(v328 + 4 * v326) = v327;
            v329 = *(a1 + 340) - *(a1 + 336);
            if (v329 >= 1)
            {
              v330 = v329 + 1;
              do
              {
                v331 = *(this + 1);
                v332 = *(this + 2);
                if (v332 - v331 < 2 || *v331 != 176 || v331[1] != 4)
                {
                  break;
                }

                *(this + 1) = v331 + 2;
                if ((v331 + 2) >= v332 || v331[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v376))
                  {
                    return 0;
                  }
                }

                else
                {
                  v376 = v331[2];
                  *(this + 1) = v331 + 3;
                }

                v333 = *(a1 + 336);
                if (v333 >= *(a1 + 340))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v377);
                  v333 = *(a1 + 336);
                }

                v334 = v376;
                v335 = *(a1 + 328);
                *(a1 + 336) = v333 + 1;
                *(v335 + 4 * v333) = v334;
                --v330;
              }

              while (v330 > 1);
            }

LABEL_704:
            v324 = *(this + 1);
            v27 = *(this + 2);
            if (v27 - v324 < 2)
            {
              goto LABEL_2;
            }

            v325 = *v324;
            if (v325 == 186)
            {
              break;
            }

LABEL_683:
            if (v325 != 176 || v324[1] != 4)
            {
              goto LABEL_2;
            }

            v28 = (v324 + 2);
            *(this + 1) = v28;
          }

          if (v324[1] == 4)
          {
            *(this + 1) = v324 + 2;
LABEL_708:
            *(a1 + 400) |= 0x400u;
            v336 = *(a1 + 344);
            if (!v336)
            {
              operator new();
            }

            v377[0] = 0;
            v337 = *(this + 1);
            if (v337 >= *(this + 2) || *v337 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
              {
                return 0;
              }
            }

            else
            {
              v377[0] = *v337;
              *(this + 1) = v337 + 1;
            }

            v338 = *(this + 14);
            v339 = *(this + 15);
            *(this + 14) = v338 + 1;
            if (v338 >= v339)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453EFB98(v336, this, v340) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v341 = *(this + 14);
            v39 = __OFSUB__(v341, 1);
            v342 = v341 - 1;
            if (v342 < 0 == v39)
            {
              *(this + 14) = v342;
            }

            v343 = *(this + 1);
            v15 = *(this + 2);
            if (v15 - v343 > 1 && *v343 == 192 && v343[1] == 4)
            {
              v16 = (v343 + 2);
              *(this + 1) = v16;
LABEL_723:
              if (v16 >= v15 || (v344 = *v16, (v344 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v6);
                if (!result)
                {
                  return result;
                }

                v345 = *(this + 1);
                v15 = *(this + 2);
              }

              else
              {
                *v6 = v344;
                v345 = (v16 + 1);
                *(this + 1) = v345;
              }

              *(a1 + 400) |= 0x800u;
              if (v15 - v345 >= 2)
              {
                v346 = *v345;
                goto LABEL_730;
              }
            }
          }

          continue;
        }

        if (v10 == 2)
        {
          result = sub_2453DD50C(this, (a1 + 328));
          if (result)
          {
            goto LABEL_704;
          }

          return result;
        }

        goto LABEL_111;
      case 0x47u:
        if (v10 == 2)
        {
          goto LABEL_708;
        }

        goto LABEL_111;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_723;
      case 0x49u:
        if ((TagFallback & 7) == 0)
        {
          v26 = *(this + 1);
          v15 = *(this + 2);
          while (1)
          {
            v376 = 0;
            if (v26 >= v15 || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v376))
              {
                return 0;
              }
            }

            else
            {
              v376 = *v26;
              *(this + 1) = v26 + 1;
            }

            v347 = *(a1 + 360);
            if (v347 == *(a1 + 364))
            {
              sub_2453B0370((a1 + 352), v347 + 1);
              v347 = *(a1 + 360);
            }

            v348 = v376;
            v349 = *(a1 + 352);
            *(a1 + 360) = v347 + 1;
            *(v349 + 4 * v347) = v348;
            v350 = *(a1 + 364) - *(a1 + 360);
            if (v350 >= 1)
            {
              v351 = v350 + 1;
              do
              {
                v352 = *(this + 1);
                v353 = *(this + 2);
                if (v353 - v352 < 2 || *v352 != 200 || v352[1] != 4)
                {
                  break;
                }

                *(this + 1) = v352 + 2;
                if ((v352 + 2) >= v353 || v352[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v376))
                  {
                    return 0;
                  }
                }

                else
                {
                  v376 = v352[2];
                  *(this + 1) = v352 + 3;
                }

                v354 = *(a1 + 360);
                if (v354 >= *(a1 + 364))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v377);
                  v354 = *(a1 + 360);
                }

                v355 = v376;
                v356 = *(a1 + 352);
                *(a1 + 360) = v354 + 1;
                *(v356 + 4 * v354) = v355;
                --v351;
              }

              while (v351 > 1);
            }

LABEL_751:
            v345 = *(this + 1);
            v15 = *(this + 2);
            if (v15 - v345 < 2)
            {
              goto LABEL_2;
            }

            v346 = *v345;
            if (v346 == 208)
            {
              break;
            }

LABEL_730:
            if (v346 != 200 || v345[1] != 4)
            {
              goto LABEL_2;
            }

            v26 = (v345 + 2);
            *(this + 1) = v26;
          }

          if (v345[1] == 4)
          {
            v20 = (v345 + 2);
            *(this + 1) = v20;
LABEL_755:
            v377[0] = 0;
            if (v20 >= v15 || (v357 = *v20, (v357 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377);
              if (!result)
              {
                return result;
              }

              v357 = v377[0];
              v358 = *(this + 1);
              v15 = *(this + 2);
            }

            else
            {
              v358 = (v20 + 1);
              *(this + 1) = v358;
            }

            *(a1 + 368) = v357 != 0;
            *(a1 + 400) |= 0x2000u;
            if (v15 - v358 >= 2 && *v358 == 216 && v358[1] == 4)
            {
              v21 = (v358 + 2);
              *(this + 1) = v21;
LABEL_764:
              if (v21 >= v15 || (v359 = *v21, (v359 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v7);
                if (!result)
                {
                  return result;
                }

                v360 = *(this + 1);
                v15 = *(this + 2);
              }

              else
              {
                *v7 = v359;
                v360 = (v21 + 1);
                *(this + 1) = v360;
              }

              v25 = *(a1 + 400) | 0x4000;
              *(a1 + 400) = v25;
              if (v15 - v360 >= 2 && *v360 == 226 && v360[1] == 4)
              {
                *(this + 1) = v360 + 2;
LABEL_773:
                *(a1 + 400) = v25 | 0x8000;
                v361 = *(a1 + 376);
                if (!v361)
                {
                  operator new();
                }

                v377[0] = 0;
                v362 = *(this + 1);
                if (v362 >= *(this + 2) || *v362 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
                  {
                    return 0;
                  }
                }

                else
                {
                  v377[0] = *v362;
                  *(this + 1) = v362 + 1;
                }

                v363 = *(this + 14);
                v364 = *(this + 15);
                *(this + 14) = v363 + 1;
                if (v363 >= v364)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                if (!sub_2453F4C44(v361, this, v365) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                v366 = *(this + 14);
                v39 = __OFSUB__(v366, 1);
                v367 = v366 - 1;
                if (v367 < 0 == v39)
                {
                  *(this + 14) = v367;
                }

                v368 = *(this + 1);
                if (*(this + 4) - v368 > 1 && *v368 == 234 && v368[1] == 4)
                {
                  *(this + 1) = v368 + 2;
LABEL_788:
                  *(a1 + 400) |= 0x10000u;
                  v369 = *(a1 + 384);
                  if (!v369)
                  {
                    operator new();
                  }

                  v377[0] = 0;
                  v370 = *(this + 1);
                  if (v370 >= *(this + 2) || *v370 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v377))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v377[0] = *v370;
                    *(this + 1) = v370 + 1;
                  }

                  v371 = *(this + 14);
                  v372 = *(this + 15);
                  *(this + 14) = v371 + 1;
                  if (v371 >= v372)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
                  if (!sub_2453F158C(v369, this, v373) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
                  v374 = *(this + 14);
                  v39 = __OFSUB__(v374, 1);
                  v375 = v374 - 1;
                  if (v375 < 0 == v39)
                  {
                    *(this + 14) = v375;
                  }

                  if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                  {
                    *(this + 8) = 0;
                    result = 1;
                    *(this + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }

          continue;
        }

        if (v10 != 2)
        {
LABEL_111:
          if (v10 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        result = sub_2453DD50C(this, (a1 + 352));
        if (result)
        {
          goto LABEL_751;
        }

        return result;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v20 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_755;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v21 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_764;
      case 0x4Cu:
        if (v10 != 2)
        {
          goto LABEL_111;
        }

        v25 = *(a1 + 400);
        goto LABEL_773;
      case 0x4Du:
        if (v10 == 2)
        {
          goto LABEL_788;
        }

        goto LABEL_111;
      default:
        goto LABEL_111;
    }
  }
}

void sub_24539C210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24539C364(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_45;
          }
        }

        else if (v7 == 10 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_53;
        }

        goto LABEL_22;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_35;
      }

LABEL_22:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(a1 + 36) |= 1u;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v32 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v14;
      *(this + 1) = v14 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_24539C6C8(v13, this, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    v9 = *(this + 2);
    if (v22 < v9 && *v22 == 16)
    {
      v10 = v22 + 1;
      *(this + 1) = v10;
LABEL_35:
      v30 = 0;
      if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30);
        if (!result)
        {
          return result;
        }

        v23 = v30;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v23 <= 3)
      {
        *(a1 + 36) |= 2u;
        *(a1 + 16) = v23;
      }

      v25 = *(this + 1);
      v11 = *(this + 2);
      if (v25 < v11 && *v25 == 24)
      {
        v15 = v25 + 1;
        *(this + 1) = v15;
LABEL_45:
        v31 = 0;
        if (v15 >= v11 || (v26 = *v15, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
          if (!result)
          {
            return result;
          }

          v26 = v31;
          v27 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          v27 = v15 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 20) = v26 != 0;
        *(a1 + 36) |= 4u;
        if (v27 < v11 && *v27 == 80)
        {
          v12 = v27 + 1;
          *(this + 1) = v12;
LABEL_53:
          if (v12 >= v11 || (v28 = *v12, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v28;
            v29 = v12 + 1;
            *(this + 1) = v29;
          }

          *(a1 + 36) |= 8u;
          if (v29 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }
  }
}

uint64_t sub_24539C6C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v7 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v14 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_85;
              }
            }

            else if (v7 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v24 = *(this + 1);
                v11 = *(this + 2);
                goto LABEL_95;
              }
            }

            else if (v7 == 12 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_103;
            }
          }

          else if (v7 == 7)
          {
            if (v8 == 1)
            {
              goto LABEL_64;
            }
          }

          else if (v7 == 8)
          {
            if (v8 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v7 == 9 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_72;
          }

          goto LABEL_76;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v7 == 6 && v8 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_76;
        }

        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v31;
        *(a1 + 96) |= 1u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_41;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_76;
      }

LABEL_41:
      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v31;
      *(a1 + 96) |= 2u;
      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 25)
      {
        *(this + 1) = v15 + 1;
LABEL_45:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v31;
        *(a1 + 96) |= 4u;
        v16 = *(this + 1);
        if (v16 < *(this + 2) && *v16 == 33)
        {
          *(this + 1) = v16 + 1;
LABEL_49:
          *v31 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v31;
          *(a1 + 96) |= 8u;
          v17 = *(this + 1);
          if (v17 < *(this + 2) && *v17 == 41)
          {
            *(this + 1) = v17 + 1;
LABEL_56:
            *v31 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v31;
            *(a1 + 96) |= 0x10u;
            v18 = *(this + 1);
            if (v18 < *(this + 2) && *v18 == 49)
            {
              *(this + 1) = v18 + 1;
LABEL_60:
              *v31 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = *v31;
              *(a1 + 96) |= 0x20u;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 57)
              {
                *(this + 1) = v19 + 1;
LABEL_64:
                *v31 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = *v31;
                *(a1 + 96) |= 0x40u;
                v20 = *(this + 1);
                if (v20 < *(this + 2) && *v20 == 65)
                {
                  *(this + 1) = v20 + 1;
LABEL_68:
                  *v31 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 64) = *v31;
                  *(a1 + 96) |= 0x80u;
                  v21 = *(this + 1);
                  v9 = *(this + 2);
                  if (v21 < v9 && *v21 == 72)
                  {
                    v10 = v21 + 1;
                    *(this + 1) = v10;
LABEL_72:
                    if (v10 >= v9 || (v22 = *v10, v22 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                      if (!result)
                      {
                        return result;
                      }

                      v23 = *(this + 1);
                      v9 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 72) = v22;
                      v23 = v10 + 1;
                      *(this + 1) = v23;
                    }

                    *(a1 + 96) |= 0x100u;
                    if (v23 < v9 && *v23 == 80)
                    {
                      v14 = v23 + 1;
                      *(this + 1) = v14;
LABEL_85:
                      v31[0] = 0;
                      if (v14 >= v9 || (v26 = *v14, (v26 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
                        if (!result)
                        {
                          return result;
                        }

                        v26 = v31[0];
                      }

                      else
                      {
                        *(this + 1) = v14 + 1;
                      }

                      if (sub_24539CC50(v26))
                      {
                        *(a1 + 96) |= 0x200u;
                        *(a1 + 76) = v26;
                      }

                      v27 = *(this + 1);
                      v11 = *(this + 2);
                      if (v27 < v11 && *v27 == 88)
                      {
                        v24 = v27 + 1;
                        *(this + 1) = v24;
LABEL_95:
                        if (v24 >= v11 || (v28 = *v24, v28 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 80));
                          if (!result)
                          {
                            return result;
                          }

                          v29 = *(this + 1);
                          v11 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 80) = v28;
                          v29 = v24 + 1;
                          *(this + 1) = v29;
                        }

                        *(a1 + 96) |= 0x400u;
                        if (v29 < v11 && *v29 == 96)
                        {
                          v12 = v29 + 1;
                          *(this + 1) = v12;
LABEL_103:
                          v31[0] = 0;
                          if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31);
                            if (!result)
                            {
                              return result;
                            }

                            v30 = v31[0];
                          }

                          else
                          {
                            *(this + 1) = v12 + 1;
                          }

                          if (v30 <= 5)
                          {
                            *(a1 + 96) |= 0x800u;
                            *(a1 + 88) = v30;
                          }

                          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                          {
                            *(this + 8) = 0;
                            result = 1;
                            *(this + 36) = 1;
                            return result;
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

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_45;
    }

LABEL_76:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

BOOL sub_24539CC50(unsigned int a1)
{
  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x4000002000403) == 0)
  {
    return a1 == 75;
  }

  return result;
}

BOOL sub_24539CC90(unsigned int a1)
{
  result = 1;
  if (a1 - 31 > 0x2D || ((1 << (a1 - 31)) & 0x3FFFE7F001FBLL) == 0)
  {
    return a1 < 0x1E;
  }

  return result;
}

void sub_24539CCD8(void *a1)
{
  v2 = a1[32];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();
  if (qword_2813CEEB8 != a1)
  {
    v4 = a1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = a1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = a1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = a1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = a1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = a1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = a1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = a1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = a1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = a1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = a1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = a1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = a1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = a1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = a1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = a1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = a1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = a1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = a1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = a1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = a1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = a1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = a1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = a1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = a1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = a1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = a1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = a1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = a1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = a1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = a1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = a1[39];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = a1[40];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = a1[43];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = a1[47];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    v42 = a1[48];
    if (v42)
    {
      v43 = *(*v42 + 8);

      v43();
    }
  }
}

void sub_24539D418(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 36) & 1) == 0)
  {
    return;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    sub_24539DA30();
    v4 = *(qword_2813CEEC0 + 8);
  }

  v5 = *(v4 + 96);
  if ((~v5 & 3) != 0 || (v6 = *(a2 + 36), (v6 & 8) == 0) || ((v7 = v5 & v6 & 4, (v5 & 0x2F0) == 0x2F0) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v41 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v41, OS_LOG_TYPE_ERROR, "#input,assistance position received has invalid payload", buf, 2u);
    }
  }

  else
  {
    v9 = *(a2 + 8);
    if (!v9)
    {
      sub_24539DA30();
      v9 = *(qword_2813CEEC0 + 8);
    }

    v10 = sub_24539D8D0();
    v11 = *(a2 + 16);
    v12 = v11 == 2;
    if (v11 == 2)
    {
      v13 = v10;
      v14 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v9 + 8);
        v15 = *(v9 + 16);
        v17 = *(v9 + 24);
        v18 = *(a2 + 20);
        v20 = *(v9 + 40);
        v19 = *(v9 + 48);
        v21 = *(v9 + 56);
        v22 = *(v9 + 72);
        v23 = *(v9 + 76);
        if (((v23 - 25) > 0x32 || ((1 << (v23 - 25)) & 0x4000002000001) == 0) && v23 != 10)
        {
          v23 = 0;
        }

        v24 = (v13 - *(a2 + 24)) * 0.000001;
        *buf = 134548225;
        *v47 = v16;
        *&v47[8] = 2053;
        *&v47[10] = v15;
        *&v47[18] = 2053;
        v48 = v17;
        LOWORD(v49) = 1026;
        *(&v49 + 2) = v12;
        HIWORD(v49) = 1026;
        LODWORD(v50.f64[0]) = v18;
        WORD2(v50.f64[0]) = 2050;
        *(v50.f64 + 6) = v20;
        HIWORD(v50.f64[1]) = 2050;
        v51 = v19;
        LOWORD(v52) = 2050;
        *(&v52 + 2) = v21;
        WORD5(v52) = 1026;
        HIDWORD(v52) = v22;
        LOWORD(v53) = 1026;
        *(&v53 + 2) = v23;
        HIWORD(v53) = 2050;
        v54 = v24;
        _os_log_impl(&dword_245396000, v14, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectAssistancePosition,received tightly coupling pos,lat,%{sensitive}.4f,lon,%{sensitive}.4f,alt,%{sensitive}.4f,type,%{public}d,altValid,%{public}d,vertUncM,%{public}.1f,semiMajUncM,%{public}.1f,semiMinUncM,%{public}.1f,source,%{public}d,reliability,%{public}d,delayMachMs,%{public}.2f,", buf, 0x60u);
      }

      v25 = *(v9 + 76);
      if ((v25 - 25 > 0x32 || ((1 << (v25 - 25)) & 0x4000002000001) == 0) && v25 != 10)
      {
        v25 = 0;
      }

      if (*(a1 + 696))
      {
        v26 = *(v9 + 72);
        if (v26 <= 0xB && ((1 << v26) & 0xCD0) != 0)
        {
          v27 = *(v9 + 24);
          v28 = *(v9 + 40);
          v29 = *(v9 + 48);
          v44 = *(v9 + 56);
          v45 = *(v9 + 8);
          v30 = *(a2 + 24);
          v31 = (*(a1 + 672) + (v30 - *(a1 + 688))) * 0.000000001;
          if ((*(a1 + 768) & 0xFFFFFFFE) == 2)
          {
            v32 = (v31 / 604800.0) & 0x3FF;
          }

          else
          {
            v32 = (v31 / 604800.0);
          }

          v33 = ((v31 - (v31 / 604800.0) * 604800.0) * 1000.0);
          v34 = qword_2813CF020;
          if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *v47 = v32;
            *&v47[4] = 1024;
            *&v47[6] = v33;
            _os_log_debug_impl(&dword_245396000, v34, OS_LOG_TYPE_DEBUG, "injectTcpFix,GPSTime-week,%d,GPSTow,%d", buf, 0xEu);
            if ((*(a1 + 696) & 1) == 0)
            {
              sub_2453AB38C();
            }
          }

          v35 = *(a1 + 680);
          v36 = sqrt(vmulq_f64(v44, v44).f64[0] + v29 * v29) / 1.41421356;
          if ((v26 & 0xE) == 6)
          {
            v37 = 3;
          }

          else
          {
            v37 = 0;
          }

          if ((v26 & 0xE) == 0xA || v26 == 4)
          {
            v39 = 2;
          }

          else
          {
            v39 = v37;
          }

          *buf = v39;
          *&v47[4] = v45;
          v48 = v36;
          v49 = v29;
          v50 = v44;
          v51 = __PAIR64__(v32, v25);
          LODWORD(v52) = v33;
          *(&v52 + 1) = v35;
          v53 = v30 / 0x3B9ACA00;
          v54 = v27;
          v55 = v28;
          v56 = v25;
          v57 = v30 / 0x3B9ACA00;
          v58 = 0;
          v59 = 0;
          sub_2453A162C(a1 + 208, buf);
          v40 = *(a1 + 72);
          if (*v40)
          {
            *(v40 + 63) = 1;
          }

          return;
        }

        v42 = qword_2813CF020;
        if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 0;
        v43 = "injectTcpFix,received TCP is neither from WiFi source nor from Cell source";
      }

      else
      {
        v42 = qword_2813CF020;
        if (!os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 0;
        v43 = "injectTcpFix,time info not available.  Returning ";
      }

      _os_log_debug_impl(&dword_245396000, v42, OS_LOG_TYPE_DEBUG, v43, buf, 2u);
    }
  }
}

uint64_t sub_24539D8D0()
{
  if ((atomic_load_explicit(&qword_2813CF000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2813CF000))
  {
    sub_24543E8CC();
    __cxa_guard_release(&qword_2813CF000);
  }

  v0 = mach_continuous_time();
  v1 = 8;
  if (!byte_27EE13510)
  {
    v1 = 0;
  }

  return ((v0 >> v1) * qword_2813CEDC0 / qword_2813CEDB8) << v1;
}

void sub_24539D970(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858C68;
  sub_24539CCD8(a1);
  v2 = *(a1 + 44);
  if (v2)
  {
    MEMORY[0x245D6A0A0](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 41);
  if (v3)
  {
    MEMORY[0x245D6A0A0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24539D9F8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24539D970(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24539DA30()
{
  v0 = qword_2813CE6C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_245427954;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_24539DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24539DAC8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 36) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v14;
          v15 = v12 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 36) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v16;
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 36) |= 4u;
          if (v17 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_24539DCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "handleGpsTime, received time assistance", buf, 2u);
  }

  if ((*(a2 + 396) & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    sub_24539DA30();
    v7 = *(qword_2813CEEB8 + 32);
  }

  if ((*(v7 + 36) & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    sub_24539DA30();
    v8 = *(qword_2813CEEB8 + 32);
  }

  if ((*(v8 + 36) & 2) != 0)
  {
    v10 = *(a2 + 32);
    if (v10)
    {
      v11 = *(v10 + 8);
    }

    else
    {
      sub_24539DA30();
      v10 = *(a2 + 32);
      v11 = *(*(qword_2813CEEB8 + 32) + 8);
      if (!v10)
      {
        sub_24539DA30();
        v10 = *(qword_2813CEEB8 + 32);
      }
    }

    v12 = *(v10 + 16);
    v13 = *(a1 + 696);
    *(a1 + 672) = v11;
    *(a1 + 680) = v12;
    *(a1 + 688) = a3;
    if ((v13 & 1) == 0)
    {
      *(a1 + 696) = 1;
    }
  }

  else
  {
LABEL_10:
    v9 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "handleGpsTime,time assistace does not valid data. Returning", v14, 2u);
    }
  }
}

void sub_24539DE1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858590A0;
  sub_24539DA30();
  if (qword_2813CEEC0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_24539DEB0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24539DE1C(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24539DEE8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_24539DFB8(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24539DF20()
{
  v0 = qword_2813CE6D8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453B6ACC;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_24539DFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_24539DFB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858529F8;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_24539E010(uint64_t result)
{
  v1 = result;
  v2 = *(result + 216);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_2453B818C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_2453DB408(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 48) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 23) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_2453B92E0(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_24542F204(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v5 = *(v1 + 72);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      v6 = *(v1 + 80);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 28) = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      v7 = *(v1 + 88);
      if (v7)
      {
        if (*(v7 + 24))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 96) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v8 = *(v1 + 104);
      if (v8)
      {
        if (*(v8 + 24))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      result = *(v1 + 112);
      if (result)
      {
        result = sub_24542F2C8(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v9 = *(v1 + 120);
      if (v9)
      {
        v10 = *(v9 + 124);
        if (v10)
        {
          *(v9 + 56) = 0;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 89) = 0u;
          *(v9 + 64) = 0u;
          *(v9 + 80) = 0u;
        }

        if ((v10 & 0xFF0000) != 0)
        {
          *(v9 + 105) = 0;
          *(v9 + 112) = 0;
          *(v9 + 108) = 0;
        }

        *(v9 + 124) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 = *(v1 + 128);
      if (v11 != MEMORY[0x277D82C30])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    v2 = *(v1 + 216);
    if ((v2 & 0x40000) != 0)
    {
      result = *(v1 + 136);
      if (result)
      {
        result = sub_245409A00(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      result = *(v1 + 144);
      if (result)
      {
        result = sub_24540F354(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      result = *(v1 + 152);
      if (result)
      {
        result = sub_2454153E0(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      v12 = *(v1 + 160);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      result = *(v1 + 168);
      if (result)
      {
        result = sub_24542580C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      result = *(v1 + 176);
      if (result)
      {
        result = sub_2453F5B74(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      result = *(v1 + 184);
      if (result)
      {
        result = sub_2453F3C08(result);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    if ((v2 & 0x10000000) != 0)
    {
      v13 = *(v1 + 200);
      if (v13)
      {
        if (*(v13 + 20))
        {
          *(v13 + 8) = 0;
          *(v13 + 12) = 0;
        }

        *(v13 + 20) = 0;
      }
    }
  }

  *(v1 + 216) = 0;
  return result;
}

uint64_t sub_24539E2FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v204 = 0;
        v8 = *(this + 1);
        if (v8 < *(this + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(this + 1) = v8 + 1;
            goto LABEL_72;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204);
        if (result)
        {
          v9 = v204;
LABEL_72:
          if (v9 <= 0x1B && ((1 << v9) & 0xFDFFE3F) != 0)
          {
            if (v9 > 0x1B || ((1 << v9) & 0xFDFFE3F) == 0)
            {
              __assert_rtn("set_type", "GpsdProtocol.pb.h", 7737, "::CoreGem::proto::gpsd::Indication_Type_IsValid(value)");
            }

            *(a1 + 216) |= 1u;
            *(a1 + 8) = v9;
          }

          v27 = *(this + 1);
          v19 = *(this + 2);
          if (v27 < v19 && *v27 == 16)
          {
            v20 = v27 + 1;
            *(this + 1) = v20;
            goto LABEL_82;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
LABEL_82:
        v204 = 0;
        if (v20 >= v19 || (v28 = *v20, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204);
          if (!result)
          {
            return result;
          }

          v28 = v204;
        }

        else
        {
          *(this + 1) = v20 + 1;
        }

        if (sub_24539CC90(v28))
        {
          *(a1 + 216) |= 2u;
          *(a1 + 12) = v28;
        }

        v29 = *(this + 1);
        v17 = *(this + 2);
        if (v29 >= v17 || *v29 != 24)
        {
          continue;
        }

        v18 = v29 + 1;
        *(this + 1) = v18;
LABEL_92:
        if (v18 >= v17 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v17 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v30;
          v31 = v18 + 1;
          *(this + 1) = v31;
        }

        v21 = *(a1 + 216) | 4;
        *(a1 + 216) = v21;
        if (v31 >= v17 || *v31 != 34)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_100:
        *(a1 + 216) = v21 | 8;
        v32 = *(a1 + 24);
        if (!v32)
        {
          operator new();
        }

        v204 = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453A014C(v32, this, v36) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v37 = *(this + 14);
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v39 < 0 == v38)
        {
          *(this + 14) = v39;
        }

        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 42)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_114:
        *(a1 + 216) |= 0x10u;
        v41 = *(a1 + 32);
        if (!v41)
        {
          operator new();
        }

        v204 = 0;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v42;
          *(this + 1) = v42 + 1;
        }

        v43 = *(this + 14);
        v44 = *(this + 15);
        *(this + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453DB4D4(v41, this, v45) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v46 = *(this + 14);
        v38 = __OFSUB__(v46, 1);
        v47 = v46 - 1;
        if (v47 < 0 == v38)
        {
          *(this + 14) = v47;
        }

        v48 = *(this + 1);
        if (v48 >= *(this + 2) || *v48 != 50)
        {
          continue;
        }

        *(this + 1) = v48 + 1;
LABEL_128:
        *(a1 + 216) |= 0x20u;
        v49 = *(a1 + 40);
        if (!v49)
        {
          operator new();
        }

        v204 = 0;
        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v50;
          *(this + 1) = v50 + 1;
        }

        v51 = *(this + 14);
        v52 = *(this + 15);
        *(this + 14) = v51 + 1;
        if (v51 >= v52)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BAE38(v49, this, v53) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v54 = *(this + 14);
        v38 = __OFSUB__(v54, 1);
        v55 = v54 - 1;
        if (v55 < 0 == v38)
        {
          *(this + 14) = v55;
        }

        v56 = *(this + 1);
        if (v56 >= *(this + 2) || *v56 != 74)
        {
          continue;
        }

        *(this + 1) = v56 + 1;
LABEL_142:
        *(a1 + 216) |= 0x40u;
        v57 = *(a1 + 48);
        if (!v57)
        {
          operator new();
        }

        v204 = 0;
        v58 = *(this + 1);
        if (v58 >= *(this + 2) || *v58 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v58;
          *(this + 1) = v58 + 1;
        }

        v59 = *(this + 14);
        v60 = *(this + 15);
        *(this + 14) = v59 + 1;
        if (v59 >= v60)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245430898(v57, this, v61) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v62 = *(this + 14);
        v38 = __OFSUB__(v62, 1);
        v63 = v62 - 1;
        if (v63 < 0 == v38)
        {
          *(this + 14) = v63;
        }

        v64 = *(this + 1);
        if (v64 >= *(this + 2) || *v64 != 82)
        {
          continue;
        }

        *(this + 1) = v64 + 1;
LABEL_156:
        *(a1 + 216) |= 0x80u;
        v65 = *(a1 + 56);
        if (!v65)
        {
          operator new();
        }

        v204 = 0;
        v66 = *(this + 1);
        if (v66 >= *(this + 2) || *v66 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v66;
          *(this + 1) = v66 + 1;
        }

        v67 = *(this + 14);
        v68 = *(this + 15);
        *(this + 14) = v67 + 1;
        if (v67 >= v68)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453B9324(v65, this, v69) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v70 = *(this + 14);
        v38 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v38)
        {
          *(this + 14) = v71;
        }

        v72 = *(this + 1);
        if (*(this + 4) - v72 <= 1 || *v72 != 130 || v72[1] != 1)
        {
          continue;
        }

        *(this + 1) = v72 + 2;
LABEL_171:
        *(a1 + 216) |= 0x100u;
        v73 = *(a1 + 64);
        if (!v73)
        {
          operator new();
        }

        v204 = 0;
        v74 = *(this + 1);
        if (v74 >= *(this + 2) || *v74 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v74;
          *(this + 1) = v74 + 1;
        }

        v75 = *(this + 14);
        v76 = *(this + 15);
        *(this + 14) = v75 + 1;
        if (v75 >= v76)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245438D7C(v73, this, v77) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v78 = *(this + 14);
        v38 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v38)
        {
          *(this + 14) = v79;
        }

        v80 = *(this + 1);
        if (*(this + 4) - v80 <= 1 || *v80 != 138 || v80[1] != 1)
        {
          continue;
        }

        *(this + 1) = v80 + 2;
LABEL_186:
        *(a1 + 216) |= 0x200u;
        v81 = *(a1 + 72);
        if (!v81)
        {
          operator new();
        }

        v204 = 0;
        v82 = *(this + 1);
        if (v82 >= *(this + 2) || *v82 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v82;
          *(this + 1) = v82 + 1;
        }

        v83 = *(this + 14);
        v84 = *(this + 15);
        *(this + 14) = v83 + 1;
        if (v83 >= v84)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2454393FC(v81, this, v85) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v86 = *(this + 14);
        v38 = __OFSUB__(v86, 1);
        v87 = v86 - 1;
        if (v87 < 0 == v38)
        {
          *(this + 14) = v87;
        }

        v88 = *(this + 1);
        if (*(this + 4) - v88 <= 1 || *v88 != 146 || v88[1] != 1)
        {
          continue;
        }

        *(this + 1) = v88 + 2;
LABEL_201:
        *(a1 + 216) |= 0x400u;
        v89 = *(a1 + 80);
        if (!v89)
        {
          operator new();
        }

        v204 = 0;
        v90 = *(this + 1);
        if (v90 >= *(this + 2) || *v90 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v90;
          *(this + 1) = v90 + 1;
        }

        v91 = *(this + 14);
        v92 = *(this + 15);
        *(this + 14) = v91 + 1;
        if (v91 >= v92)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BB9FC(v89, this, v93) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v94 = *(this + 14);
        v38 = __OFSUB__(v94, 1);
        v95 = v94 - 1;
        if (v95 < 0 == v38)
        {
          *(this + 14) = v95;
        }

        v96 = *(this + 1);
        if (*(this + 4) - v96 <= 1 || *v96 != 154 || v96[1] != 1)
        {
          continue;
        }

        *(this + 1) = v96 + 2;
LABEL_216:
        *(a1 + 216) |= 0x800u;
        v97 = *(a1 + 88);
        if (!v97)
        {
          operator new();
        }

        v204 = 0;
        v98 = *(this + 1);
        if (v98 >= *(this + 2) || *v98 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v98;
          *(this + 1) = v98 + 1;
        }

        v99 = *(this + 14);
        v100 = *(this + 15);
        *(this + 14) = v99 + 1;
        if (v99 >= v100)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453BB4AC(v97, this, v101) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v102 = *(this + 14);
        v38 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v38)
        {
          *(this + 14) = v103;
        }

        v104 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v104 <= 1 || *v104 != 160 || v104[1] != 1)
        {
          continue;
        }

        v16 = (v104 + 2);
        *(this + 1) = v16;
LABEL_231:
        v204 = 0;
        if (v16 >= v15 || (v105 = *v16, (v105 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204);
          if (!result)
          {
            return result;
          }

          v105 = v204;
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (v105 <= 9)
        {
          *(a1 + 216) |= 0x2000u;
          *(a1 + 100) = v105;
        }

        v106 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v106 < 2 || *v106 != 176 || v106[1] != 1)
        {
          continue;
        }

        v11 = (v106 + 2);
        *(this + 1) = v11;
LABEL_242:
        v204 = 0;
        if (v11 >= v10 || (v107 = *v11, (v107 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204);
          if (!result)
          {
            return result;
          }

          v107 = v204;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v107 <= 9)
        {
          *(a1 + 216) |= 0x1000u;
          *(a1 + 96) = v107;
        }

        v108 = *(this + 1);
        if (*(this + 4) - v108 < 2 || *v108 != 186 || v108[1] != 1)
        {
          continue;
        }

        *(this + 1) = v108 + 2;
LABEL_253:
        *(a1 + 216) |= 0x4000u;
        v109 = *(a1 + 104);
        if (!v109)
        {
          operator new();
        }

        v204 = 0;
        v110 = *(this + 1);
        if (v110 >= *(this + 2) || *v110 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v110;
          *(this + 1) = v110 + 1;
        }

        v111 = *(this + 14);
        v112 = *(this + 15);
        *(this + 14) = v111 + 1;
        if (v111 >= v112)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543C94C(v109, this, v113) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v114 = *(this + 14);
        v38 = __OFSUB__(v114, 1);
        v115 = v114 - 1;
        if (v115 < 0 == v38)
        {
          *(this + 14) = v115;
        }

        v116 = *(this + 1);
        if (*(this + 4) - v116 <= 1 || *v116 != 202 || v116[1] != 1)
        {
          continue;
        }

        *(this + 1) = v116 + 2;
LABEL_268:
        *(a1 + 216) |= 0x8000u;
        v117 = *(a1 + 112);
        if (!v117)
        {
          operator new();
        }

        v204 = 0;
        v118 = *(this + 1);
        if (v118 >= *(this + 2) || *v118 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v118;
          *(this + 1) = v118 + 1;
        }

        v119 = *(this + 14);
        v120 = *(this + 15);
        *(this + 14) = v119 + 1;
        if (v119 >= v120)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24543CEAC(v117, this, v121) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v122 = *(this + 14);
        v38 = __OFSUB__(v122, 1);
        v123 = v122 - 1;
        if (v123 < 0 == v38)
        {
          *(this + 14) = v123;
        }

        v124 = *(this + 1);
        if (*(this + 4) - v124 <= 1 || *v124 != 242 || v124[1] != 1)
        {
          continue;
        }

        *(this + 1) = v124 + 2;
LABEL_283:
        *(a1 + 216) |= 0x10000u;
        v125 = *(a1 + 120);
        if (!v125)
        {
          operator new();
        }

        v204 = 0;
        v126 = *(this + 1);
        if (v126 >= *(this + 2) || *v126 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v126;
          *(this + 1) = v126 + 1;
        }

        v127 = *(this + 14);
        v128 = *(this + 15);
        *(this + 14) = v127 + 1;
        if (v127 >= v128)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453EC308(v125, this, v129) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v130 = *(this + 14);
        v38 = __OFSUB__(v130, 1);
        v131 = v130 - 1;
        if (v131 < 0 == v38)
        {
          *(this + 14) = v131;
        }

        v132 = *(this + 1);
        if (*(this + 4) - v132 <= 1 || *v132 != 250 || v132[1] != 1)
        {
          continue;
        }

        *(this + 1) = v132 + 2;
LABEL_298:
        *(a1 + 216) |= 0x20000u;
        if (*(a1 + 128) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v133 = *(this + 1);
        if (*(this + 4) - v133 < 2 || *v133 != 194 || v133[1] != 2)
        {
          continue;
        }

        *(this + 1) = v133 + 2;
LABEL_305:
        *(a1 + 216) |= 0x40000u;
        v134 = *(a1 + 136);
        if (!v134)
        {
          operator new();
        }

        v204 = 0;
        v135 = *(this + 1);
        if (v135 >= *(this + 2) || *v135 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v135;
          *(this + 1) = v135 + 1;
        }

        v136 = *(this + 14);
        v137 = *(this + 15);
        *(this + 14) = v136 + 1;
        if (v136 >= v137)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245409AB4(v134, this, v138) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v139 = *(this + 14);
        v38 = __OFSUB__(v139, 1);
        v140 = v139 - 1;
        if (v140 < 0 == v38)
        {
          *(this + 14) = v140;
        }

        v141 = *(this + 1);
        if (*(this + 4) - v141 <= 1 || *v141 != 202 || v141[1] != 2)
        {
          continue;
        }

        *(this + 1) = v141 + 2;
LABEL_320:
        *(a1 + 216) |= 0x80000u;
        v142 = *(a1 + 144);
        if (!v142)
        {
          operator new();
        }

        v204 = 0;
        v143 = *(this + 1);
        if (v143 >= *(this + 2) || *v143 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v143;
          *(this + 1) = v143 + 1;
        }

        v144 = *(this + 14);
        v145 = *(this + 15);
        *(this + 14) = v144 + 1;
        if (v144 >= v145)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24540F3D4(v142, this, v146) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v147 = *(this + 14);
        v38 = __OFSUB__(v147, 1);
        v148 = v147 - 1;
        if (v148 < 0 == v38)
        {
          *(this + 14) = v148;
        }

        v149 = *(this + 1);
        if (*(this + 4) - v149 <= 1 || *v149 != 210 || v149[1] != 2)
        {
          continue;
        }

        *(this + 1) = v149 + 2;
LABEL_335:
        *(a1 + 216) |= 0x100000u;
        v150 = *(a1 + 152);
        if (!v150)
        {
          operator new();
        }

        v204 = 0;
        v151 = *(this + 1);
        if (v151 >= *(this + 2) || *v151 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v151;
          *(this + 1) = v151 + 1;
        }

        v152 = *(this + 14);
        v153 = *(this + 15);
        *(this + 14) = v152 + 1;
        if (v152 >= v153)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245415470(v150, this, v154) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v155 = *(this + 14);
        v38 = __OFSUB__(v155, 1);
        v156 = v155 - 1;
        if (v156 < 0 == v38)
        {
          *(this + 14) = v156;
        }

        v157 = *(this + 1);
        if (*(this + 4) - v157 <= 1 || *v157 != 218 || v157[1] != 2)
        {
          continue;
        }

        *(this + 1) = v157 + 2;
LABEL_350:
        *(a1 + 216) |= 0x200000u;
        v158 = *(a1 + 160);
        if (!v158)
        {
          operator new();
        }

        v204 = 0;
        v159 = *(this + 1);
        if (v159 >= *(this + 2) || *v159 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v159;
          *(this + 1) = v159 + 1;
        }

        v160 = *(this + 14);
        v161 = *(this + 15);
        *(this + 14) = v160 + 1;
        if (v160 >= v161)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_245421B48(v158, this, v162) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v163 = *(this + 14);
        v38 = __OFSUB__(v163, 1);
        v164 = v163 - 1;
        if (v164 < 0 == v38)
        {
          *(this + 14) = v164;
        }

        v165 = *(this + 1);
        if (*(this + 4) - v165 <= 1 || *v165 != 226 || v165[1] != 2)
        {
          continue;
        }

        *(this + 1) = v165 + 2;
LABEL_365:
        *(a1 + 216) |= 0x400000u;
        v166 = *(a1 + 168);
        if (!v166)
        {
          operator new();
        }

        v204 = 0;
        v167 = *(this + 1);
        if (v167 >= *(this + 2) || *v167 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v167;
          *(this + 1) = v167 + 1;
        }

        v168 = *(this + 14);
        v169 = *(this + 15);
        *(this + 14) = v168 + 1;
        if (v168 >= v169)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_24542588C(v166, this, v170) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v171 = *(this + 14);
        v38 = __OFSUB__(v171, 1);
        v172 = v171 - 1;
        if (v172 < 0 == v38)
        {
          *(this + 14) = v172;
        }

        v173 = *(this + 1);
        if (*(this + 4) - v173 <= 1 || *v173 != 146 || v173[1] != 3)
        {
          continue;
        }

        *(this + 1) = v173 + 2;
LABEL_380:
        *(a1 + 216) |= 0x800000u;
        v174 = *(a1 + 176);
        if (!v174)
        {
          operator new();
        }

        v204 = 0;
        v175 = *(this + 1);
        if (v175 >= *(this + 2) || *v175 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v175;
          *(this + 1) = v175 + 1;
        }

        v176 = *(this + 14);
        v177 = *(this + 15);
        *(this + 14) = v176 + 1;
        if (v176 >= v177)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F5C2C(v174, this, v178) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v179 = *(this + 14);
        v38 = __OFSUB__(v179, 1);
        v180 = v179 - 1;
        if (v180 < 0 == v38)
        {
          *(this + 14) = v180;
        }

        v181 = *(this + 1);
        if (*(this + 4) - v181 <= 1 || *v181 != 154 || v181[1] != 3)
        {
          continue;
        }

        *(this + 1) = v181 + 2;
LABEL_395:
        *(a1 + 216) |= 0x1000000u;
        v182 = *(a1 + 184);
        if (!v182)
        {
          operator new();
        }

        v204 = 0;
        v183 = *(this + 1);
        if (v183 >= *(this + 2) || *v183 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v183;
          *(this + 1) = v183 + 1;
        }

        v184 = *(this + 14);
        v185 = *(this + 15);
        *(this + 14) = v184 + 1;
        if (v184 >= v185)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F3CA4(v182, this, v186) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v187 = *(this + 14);
        v38 = __OFSUB__(v187, 1);
        v188 = v187 - 1;
        if (v188 < 0 == v38)
        {
          *(this + 14) = v188;
        }

        v189 = *(this + 1);
        v12 = *(this + 2);
        if (v12 - v189 <= 1 || *v189 != 160 || v189[1] != 3)
        {
          continue;
        }

        v13 = (v189 + 2);
        *(this + 1) = v13;
LABEL_410:
        if (v13 >= v12 || (v190 = *v13, v190 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 192));
          if (!result)
          {
            return result;
          }

          v191 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 192) = v190;
          v191 = (v13 + 1);
          *(this + 1) = v191;
        }

        *(a1 + 216) |= 0x2000000u;
        if (v12 - v191 < 2 || *v191 != 168 || v191[1] != 3)
        {
          continue;
        }

        v24 = (v191 + 2);
        *(this + 1) = v24;
LABEL_419:
        v204 = 0;
        if (v24 >= v12 || (v192 = *v24, (v192 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204);
          if (!result)
          {
            return result;
          }

          v192 = v204;
        }

        else
        {
          *(this + 1) = v24 + 1;
        }

        if (v192 <= 4 && v192 != 3)
        {
          *(a1 + 216) |= 0x4000000u;
          *(a1 + 196) = v192;
        }

        v194 = *(this + 1);
        v22 = *(this + 2);
        if (v22 - v194 < 2 || *v194 != 176 || v194[1] != 3)
        {
          continue;
        }

        v23 = (v194 + 2);
        *(this + 1) = v23;
LABEL_433:
        if (v23 >= v22 || (v195 = *v23, v195 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 208));
          if (!result)
          {
            return result;
          }

          v196 = *(this + 1);
          v22 = *(this + 2);
        }

        else
        {
          *(a1 + 208) = v195;
          v196 = (v23 + 1);
          *(this + 1) = v196;
        }

        v14 = *(a1 + 216) | 0x8000000;
        *(a1 + 216) = v14;
        if (v22 - v196 < 2 || *v196 != 186 || v196[1] != 3)
        {
          continue;
        }

        *(this + 1) = v196 + 2;
LABEL_442:
        *(a1 + 216) = v14 | 0x10000000;
        v197 = *(a1 + 200);
        if (!v197)
        {
          operator new();
        }

        v204 = 0;
        v198 = *(this + 1);
        if (v198 >= *(this + 2) || *v198 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v204))
          {
            return 0;
          }
        }

        else
        {
          v204 = *v198;
          *(this + 1) = v198 + 1;
        }

        v199 = *(this + 14);
        v200 = *(this + 15);
        *(this + 14) = v199 + 1;
        if (v199 >= v200)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453F0618(v197, this, v201) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v202 = *(this + 14);
        v38 = __OFSUB__(v202, 1);
        v203 = v202 - 1;
        if (v203 < 0 == v38)
        {
          *(this + 14) = v203;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_92;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v21 = *(a1 + 216);
        goto LABEL_100;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_66;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_66;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_66;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_66;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_66;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_66;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_66;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_66;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_242;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_253;
        }

        goto LABEL_66;
      case 0x19u:
        if (v7 == 2)
        {
          goto LABEL_268;
        }

        goto LABEL_66;
      case 0x1Eu:
        if (v7 == 2)
        {
          goto LABEL_283;
        }

        goto LABEL_66;
      case 0x1Fu:
        if (v7 == 2)
        {
          goto LABEL_298;
        }

        goto LABEL_66;
      case 0x28u:
        if (v7 == 2)
        {
          goto LABEL_305;
        }

        goto LABEL_66;
      case 0x29u:
        if (v7 == 2)
        {
          goto LABEL_320;
        }

        goto LABEL_66;
      case 0x2Au:
        if (v7 == 2)
        {
          goto LABEL_335;
        }

        goto LABEL_66;
      case 0x2Bu:
        if (v7 == 2)
        {
          goto LABEL_350;
        }

        goto LABEL_66;
      case 0x2Cu:
        if (v7 == 2)
        {
          goto LABEL_365;
        }

        goto LABEL_66;
      case 0x32u:
        if (v7 == 2)
        {
          goto LABEL_380;
        }

        goto LABEL_66;
      case 0x33u:
        if (v7 == 2)
        {
          goto LABEL_395;
        }

        goto LABEL_66;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_410;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v24 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_419;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_433;
      case 0x37u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v14 = *(a1 + 216);
        goto LABEL_442;
      default:
LABEL_66:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    return result;
  }
}

uint64_t sub_2453A014C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        *(a1 + 48) |= 1u;
        v12 = *(a1 + 8);
        if (!v12)
        {
          operator new();
        }

        v41 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
          {
            return 0;
          }
        }

        else
        {
          v41 = *v13;
          *(this + 1) = v13 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
        if (!sub_2453A06A0(v12, this, v16) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
        v17 = *(this + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(this + 14) = v19;
        }

        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 18)
        {
          *(this + 1) = v20 + 1;
LABEL_38:
          *(a1 + 48) |= 2u;
          v21 = *(a1 + 16);
          if (!v21)
          {
            operator new();
          }

          v41 = 0;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
            {
              return 0;
            }
          }

          else
          {
            v41 = *v22;
            *(this + 1) = v22 + 1;
          }

          v23 = *(this + 14);
          v24 = *(this + 15);
          *(this + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          if (!sub_24539C6C8(v21, this, v25) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
          v26 = *(this + 14);
          v18 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v18)
          {
            *(this + 14) = v27;
          }

          v28 = *(this + 1);
          if (v28 < *(this + 2) && *v28 == 26)
          {
            *(this + 1) = v28 + 1;
LABEL_52:
            *(a1 + 48) |= 4u;
            v29 = *(a1 + 24);
            if (!v29)
            {
              operator new();
            }

            v41 = 0;
            v30 = *(this + 1);
            if (v30 >= *(this + 2) || *v30 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
              {
                return 0;
              }
            }

            else
            {
              v41 = *v30;
              *(this + 1) = v30 + 1;
            }

            v31 = *(this + 14);
            v32 = *(this + 15);
            *(this + 14) = v31 + 1;
            if (v31 >= v32)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
            if (!sub_2453A0B28(v29, this, v33) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            v34 = *(this + 14);
            v18 = __OFSUB__(v34, 1);
            v35 = v34 - 1;
            if (v35 < 0 == v18)
            {
              *(this + 14) = v35;
            }

            v36 = *(this + 1);
            v9 = *(this + 2);
            if (v36 < v9 && *v36 == 32)
            {
              v11 = v36 + 1;
              *(this + 1) = v11;
              goto LABEL_66;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
LABEL_66:
      if (v11 >= v9 || (v37 = *v11, v37 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v38 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v37;
        v38 = v11 + 1;
        *(this + 1) = v38;
      }

      *(a1 + 48) |= 8u;
      if (v38 < v9 && *v38 == 40)
      {
        v10 = v38 + 1;
        *(this + 1) = v10;
LABEL_74:
        v41 = 0;
        if (v10 >= v9 || (v40 = *v10, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
          if (!result)
          {
            return result;
          }

          v40 = v41;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v40 <= 4)
        {
          *(a1 + 48) |= 0x10u;
          *(a1 + 40) = v40;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_74;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453A06A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_58;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(this + 1);
            v11 = *(this + 2);
LABEL_50:
            v34[0] = 0;
            if (v17 >= v11 || (v22 = *v17, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
              if (!result)
              {
                return result;
              }

              v22 = v34[0];
              v23 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              v23 = v17 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 20) = v22 != 0;
            *(a1 + 72) |= 4u;
            if (v23 < v11 && *v23 == 32)
            {
              v12 = v23 + 1;
              *(this + 1) = v12;
LABEL_58:
              v34[0] = 0;
              if (v12 >= v11 || (v24 = *v12, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
                if (!result)
                {
                  return result;
                }

                v24 = v34[0];
                v25 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                v25 = v12 + 1;
                *(this + 1) = v25;
              }

              *(a1 + 64) = v24;
              *(a1 + 72) |= 8u;
              if (v25 < v11 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(this + 1) = v18;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 5)
              {
                goto LABEL_37;
              }

              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v14 = *(this + 1);
            v13 = *(this + 2);
            if (v14 >= v13 || (v15 = *v14, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
              if (!result)
              {
                return result;
              }

              v16 = *(this + 1);
              v13 = *(this + 2);
            }

            else
            {
              *(a1 + 8) = v15;
              v16 = v14 + 1;
              *(this + 1) = v16;
            }

            *(a1 + 72) |= 1u;
            if (v16 < v13 && *v16 == 21)
            {
              *(this + 1) = v16 + 1;
LABEL_46:
              v34[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v34) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 16) = v34[0];
              *(a1 + 72) |= 2u;
              v21 = *(this + 1);
              v11 = *(this + 2);
              if (v21 < v11 && *v21 == 24)
              {
                v17 = v21 + 1;
                *(this + 1) = v17;
                goto LABEL_50;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(this + 1);
        v11 = *(this + 2);
LABEL_66:
        if (v18 >= v11 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v26;
          v27 = v18 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 72) |= 0x10u;
        if (v27 < v11 && *v27 == 49)
        {
          *(this + 1) = v27 + 1;
LABEL_74:
          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v34;
          *(a1 + 72) |= 0x20u;
          v28 = *(this + 1);
          if (v28 < *(this + 2) && *v28 == 57)
          {
            *(this + 1) = v28 + 1;
LABEL_78:
            *v34 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v34;
            *(a1 + 72) |= 0x40u;
            v29 = *(this + 1);
            v9 = *(this + 2);
            if (v29 < v9 && *v29 == 64)
            {
              v19 = v29 + 1;
              *(this + 1) = v19;
              goto LABEL_82;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_78;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(this + 1);
      v9 = *(this + 2);
LABEL_82:
      if (v19 >= v9 || (v30 = *v19, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
        if (!result)
        {
          return result;
        }

        v31 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 48) = v30;
        v31 = v19 + 1;
        *(this + 1) = v31;
      }

      *(a1 + 72) |= 0x80u;
      if (v31 < v9 && *v31 == 72)
      {
        v10 = v31 + 1;
        *(this + 1) = v10;
LABEL_90:
        if (v10 >= v9 || (v32 = *v10, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v32;
          v33 = v10 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 72) |= 0x100u;
        if (v33 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_90;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453A0B28(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v7 != 6 || v8 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v15;
          *(a1 + 60) |= 0x20u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_38;
        }

        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v15;
        *(a1 + 60) |= 1u;
        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 17)
        {
          *(this + 1) = v9 + 1;
          goto LABEL_25;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v15;
      *(a1 + 60) |= 2u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 25)
      {
        *(this + 1) = v10 + 1;
LABEL_29:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v15;
        *(a1 + 60) |= 4u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 33)
        {
          *(this + 1) = v11 + 1;
LABEL_33:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v15;
          *(a1 + 60) |= 8u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 41)
          {
            *(this + 1) = v12 + 1;
LABEL_41:
            v15 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v15;
            *(a1 + 60) |= 0x10u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 49)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v7 == 3 && v8 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

BOOL sub_2453A0DFC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a2 != 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_24539DF20();
    v4 = *(qword_2813CEFD0 + 8);
  }

  *a2 = *(v4 + 8);
  *(a2 + 8) = *(v4 + 16);
  *(a2 + 12) = *(v4 + 20);
  *(a2 + 16) = *(v4 + 64);
  *(a2 + 24) = *(v4 + 24);
  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_24539DF20();
    v5 = *(qword_2813CEFD0 + 16);
  }

  *(a2 + 48) = *(v5 + 8);
  *(a2 + 64) = *(v5 + 24);
  *(a2 + 80) = *(v5 + 40);
  *(a2 + 96) = *(v5 + 56);
  v6 = *(v5 + 76);
  if (v6 <= 0x32)
  {
    if (((1 << v6) & 0x4000002000400) != 0)
    {
LABEL_11:
      *(a2 + 116) = v6;
      goto LABEL_12;
    }

    if (((1 << v6) & 3) != 0)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  if (v6 == 75)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(a2 + 120) = *(v5 + 80);
  v7 = *(v5 + 88);
  if (v7 <= 5)
  {
    *(a2 + 128) = dword_2454883F4[v7];
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    sub_24539DF20();
    v8 = *(qword_2813CEFD0 + 24);
  }

  *(a2 + 136) = *(v8 + 8);
  *(a2 + 152) = *(v8 + 24);
  *(a2 + 168) = *(v8 + 40);
  *(a2 + 184) = *(a1 + 32);
  if (*(a1 + 40) <= 4u)
  {
    *(a2 + 192) = 0;
  }

  return a2 != 0;
}

void sub_2453A0F5C(void *a1)
{
  v2 = a1[16];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x245D6A0D0](v2, 0x1012C40EC159624);
  }

  sub_24539DA30();
  if (qword_2813CEEC8 != a1)
  {
    v4 = a1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = a1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = a1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = a1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = a1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = a1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = a1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = a1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = a1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = a1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = a1[17];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = a1[18];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = a1[19];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = a1[20];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = a1[21];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = a1[22];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = a1[23];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = a1[25];
    if (v23)
    {
      v24 = *(*v23 + 8);

      v24();
    }
  }
}

void sub_2453A1358(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285859118;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A13B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A1358(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A13E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285858D58;
  sub_2453A0F5C(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A1440(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A13E8(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A1478(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852B60;
  sub_24539DF20();
  if (qword_2813CEFD0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A1564(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A1478(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A159C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852AE8;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A15F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A159C(a1);

  JUMPOUT(0x245D6A0D0);
}

__n128 sub_2453A162C(uint64_t a1, int *a2)
{
  v4 = *(a2 + 7);
  v29[6] = *(a2 + 6);
  v29[7] = v4;
  v30 = *(a2 + 16);
  v5 = *(a2 + 3);
  v29[2] = *(a2 + 2);
  v29[3] = v5;
  v6 = *(a2 + 5);
  v29[4] = *(a2 + 4);
  v29[5] = v6;
  v7 = *(a2 + 1);
  v29[0] = *a2;
  v29[1] = v7;
  sub_2453A1800(v29, "GemHeloEstimator::injectFix");
  v9 = *a2;
  if (*a2 == 3)
  {
    sub_2453A1A70(a1 + 272, a2, &v20);
    v17 = v27;
    *(a1 + 368) = v26;
    *(a1 + 384) = v17;
    *(a1 + 400) = v28;
    v18 = v23;
    *(a1 + 304) = v22;
    *(a1 + 320) = v18;
    v19 = v25;
    *(a1 + 336) = v24;
    *(a1 + 352) = v19;
    result = v21;
    *(a1 + 272) = v20;
    *(a1 + 288) = result;
  }

  else if (v9 == 2)
  {
    sub_2453A1A70(a1 + 136, a2, &v20);
    v13 = v24;
    *(a1 + 216) = v25;
    v14 = v27;
    *(a1 + 232) = v26;
    *(a1 + 248) = v14;
    v15 = v20;
    *(a1 + 152) = v21;
    result.n128_u64[0] = v22;
    v16 = v23;
    *(a1 + 168) = v22;
    *(a1 + 184) = v16;
    *(a1 + 200) = v13;
    *(a1 + 264) = v28;
    *(a1 + 136) = v15;
  }

  else if (v9 == 1)
  {
    sub_2453A1A70(a1, a2, &v20);
    v10 = v27;
    *(a1 + 96) = v26;
    *(a1 + 112) = v10;
    *(a1 + 128) = v28;
    v11 = v23;
    *(a1 + 32) = v22;
    *(a1 + 48) = v11;
    v12 = v25;
    *(a1 + 64) = v24;
    *(a1 + 80) = v12;
    result = v21;
    *a1 = v20;
    *(a1 + 16) = result;
  }

  return result;
}

void sub_2453A17A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852A70;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A1800(unsigned int *a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = &unk_24549677E;
    }

    v6 = v23;
    sub_2453B4204(v23, *a1);
    if (v24 < 0)
    {
      v6 = v23[0];
    }

    v7 = *(a1 + 10);
    v8 = *(a1 + 1);
    v15 = *(a1 + 2);
    v16 = *(a1 + 3);
    v17 = *(a1 + 4);
    v18 = *(a1 + 5);
    sub_2453B40D8(v21, a1[14]);
    v9 = v22;
    v10 = v21[0];
    v11 = *(a1 + 11);
    v12 = *(a1 + 12);
    sub_2453B40D8(__p, a1[26]);
    v13 = v21;
    if (v9 < 0)
    {
      v13 = v10;
    }

    if (v20 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136317955;
    v26 = v5;
    v27 = 2080;
    v28 = v6;
    v29 = 2048;
    v30 = v7;
    v31 = 2053;
    v32 = v8;
    v33 = 2053;
    v34 = v15;
    v35 = 2049;
    v36 = v16;
    v37 = 2049;
    v38 = v17;
    v39 = 2049;
    v40 = v18;
    v41 = 2081;
    v42 = v13;
    v43 = 2053;
    v44 = v11;
    v45 = 2049;
    v46 = v12;
    v47 = 2081;
    v48 = v14;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#heloInputFix,%s,%s,ts,%llu,lat,%{sensitive}.8f,lon,%{sensitive}.8f,hunc,%{private}.2f,smj,%{private}.2f,smn,%{private}.2f,hrel,%{private}s,alt,%{sensitive}.2f,vunc,%{private}.2f,vrel,%{private}s", buf, 0x7Au);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_2453A19FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453A1A38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A17A8(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A1A70(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 3);
  if (v5 != -1.0 && *(a2 + 12) != -1.0)
  {
    v8 = *(a1 + 24);
    if (v8 == -1.0 || (v9 = *(a2 + 10) - *(a1 + 80), v9 >= 0x12D))
    {
      v10 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, no fix available or fix aged.", buf, 2u);
      }

      memmove(a1, a2, 0x88uLL);
    }

    else
    {
      v11 = sqrt((3 * v9 * 3 * v9) + v8 * v8);
      v12 = a2[28] - *(a1 + 112);
      v13 = vcvtd_n_f64_s32(v12, 1uLL);
      v14 = v13 * v13 + *(a1 + 96) * *(a1 + 96);
      v15 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v38 = v9;
        *&v38[4] = 1024;
        *&v38[6] = v11;
        _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, horiz_pos_age,%d,aged_horiz_pos_uncertainty,%d", buf, 0xEu);
        v5 = *(a2 + 3);
        v15 = qword_2813CF018;
      }

      v16 = sqrt(v14);
      if (v5 < v11)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, updating xy", buf, 2u);
        }

        memmove((a1 + 8), a2 + 2, 0x50uLL);
        *a1 = *a2;
        v15 = qword_2813CF018;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v38 = v12;
        *&v38[4] = 1024;
        *&v38[6] = v16;
        _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, vertical_pos_age,%d,aged_vertical_pos_uncertainty,%d", buf, 0xEu);
        v15 = qword_2813CF018;
      }

      if (*(a2 + 12) < v16)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,GemHeloInputFix::battle, updating z", buf, 2u);
          v15 = qword_2813CF018;
        }

        v17 = *(a2 + 22);
        *(a1 + 104) = *(a2 + 26);
        *(a1 + 88) = v17;
        *(a1 + 112) = *(a2 + 10);
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 8);
        v22 = *(a1 + 16);
        v24 = *(a1 + 24);
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        sub_2453B40D8(v35, *(a1 + 56));
        v25 = v36;
        v26 = v35[0];
        v28 = *(a1 + 88);
        v27 = *(a1 + 96);
        sub_2453B40D8(__p, *(a1 + 104));
        v29 = v35;
        if (v25 < 0)
        {
          v29 = v26;
        }

        v30 = __p;
        if (v34 < 0)
        {
          v30 = __p[0];
        }

        *buf = 136317443;
        *v38 = "GemHeloInputFix::battle";
        *&v38[8] = 2053;
        v39 = v23;
        v40 = 2053;
        v41 = v22;
        v42 = 2049;
        v43 = v24;
        v44 = 2049;
        v45 = v31;
        v46 = 2049;
        v47 = v32;
        v48 = 2081;
        v49 = v29;
        v50 = 2053;
        v51 = v28;
        v52 = 2049;
        v53 = v27;
        v54 = 2081;
        v55 = v30;
        _os_log_debug_impl(&dword_245396000, v15, OS_LOG_TYPE_DEBUG, "#heloFix,%s,lat,%{sensitive}.8f,lon,%{sensitive}.8f,hunc,%{private}.2f,smj,%{private}.2f,smn,%{private}.2f,hrel,%{private}s,alt,%{sensitive}.2f,vunc,%{private}.2f,vrel,%{private}s", buf, 0x66u);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }

        if (v36 < 0)
        {
          operator delete(v35[0]);
        }
      }
    }
  }

  v18 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v18;
  *(a3 + 128) = *(a1 + 128);
  v19 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v19;
  v20 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v20;
  v21 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v21;
}

void sub_2453A1E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2453A1EB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 36) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v15;
        *(a1 + 36) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15;
          *(a1 + 36) |= 4u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

void sub_2453A207C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858593E8;
  sub_24539DA30();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453A20D4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453A207C(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2453A2ADC(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v33[20] = *MEMORY[0x277D85DE8];
  if (a1 && (v3 = a2) != 0)
  {
    v4 = a1;
    memset(&__str, 0, sizeof(__str));
    v23 = *MEMORY[0x277D82818];
    v5 = *(MEMORY[0x277D82818] + 64);
    v6 = *(MEMORY[0x277D82818] + 72);
    do
    {
      sub_2453A2FDC(buf);
      v7 = *&v28[2];
      *(&v29 + *(*&v28[2] - 24)) = *(&v29 + *(*&v28[2] - 24)) & 0xFFFFFFB5 | 8;
      *(v31 + *(v7 - 24) + 6) = 2;
      v8 = &v28[*(v7 - 24) + 2];
      if (*(v8 + 36) == -1)
      {
        std::ios_base::getloc(&v28[*(v7 - 24) + 2]);
        v9 = std::locale::use_facet(&v24, MEMORY[0x277D82680]);
        (v9->__vftable[2].~facet_0)(v9, 32);
        std::locale::~locale(&v24);
      }

      *(v8 + 36) = 48;
      MEMORY[0x245D69F60](&v28[2], *v4);
      std::stringbuf::str();
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v10, size);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      *buf = v23;
      *&buf[*(v23 - 24)] = v5;
      *&v28[2] = v6;
      v29 = MEMORY[0x277D82878] + 16;
      if (v32 < 0)
      {
        operator delete(*(&v31[6] + 6));
      }

      v29 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v30);
      std::iostream::~basic_iostream();
      MEMORY[0x245D6A070](v33);
      ++v4;
      --v3;
    }

    while (v3);
    v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = __str.__r_.__value_.__l.__size_ / 0x1F4;
      v14 = __str.__r_.__value_.__l.__size_ % 0x1F4;
    }

    else
    {
      v13 = 0;
      v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    v16 = 0;
    if (v14)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = v13;
    }

    if (a3)
    {
      v18 = "In";
    }

    else
    {
      v18 = "Out";
    }

    v19 = 1;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_31;
    }

    while (v16 < v12)
    {
      while (1)
      {
        std::string::basic_string(&v24, &__str, v16, 0x1F4uLL, buf);
        v20 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
        {
          v21 = &v24;
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = v24.__r_.__value_.__r.__words[0];
          }

          *buf = 134546435;
          *&buf[4] = v19;
          v27 = 2053;
          *v28 = v17;
          *&v28[8] = 2085;
          v29 = v21;
          v30 = 2085;
          v31[0] = v18;
          _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "#supl,#pdu,%{sensitive}zu,of,%{sensitive}zu,%{sensitive}s,%{sensitive}s", buf, 0x2Au);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v16 += 500;
        ++v19;
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          break;
        }

LABEL_31:
        if (v16 >= __str.__r_.__value_.__l.__size_)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          return;
        }
      }
    }
  }

  else
  {
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#supl,PDU is empty", buf, 2u);
    }
  }
}

void sub_2453A2F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  std::locale::~locale(&a13);
  sub_2453A3280(&a25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2453A2FDC(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_2453A5818((a1 + 3), 24);
  return a1;
}

void sub_2453A3258(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245D6A070](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2453A3280(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245D6A070](a1 + 128);
  return a1;
}

uint64_t sub_2453A33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285851DB8;
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 55) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 850045863;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1018212795;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  sub_2453A5A84(a1 + 200, a2);
  sub_2453A5B1C(a1 + 232, a3);
  sub_2453A5BB4(a1 + 264, a4);
  sub_2453A5C4C(a1 + 296, a5);
  sub_24543F30C((a1 + 64), QOS_CLASS_USER_INITIATED, "suplConnMgr");
  return a1;
}

void sub_2453A34D0(_Unwind_Exception *a1)
{
  sub_2453A5E64(v1 + 296);
  sub_2453A5DE4(v1 + 264);
  sub_2453A5D64(v1 + 232);
  sub_2453A5CE4(v1 + 200);
  std::condition_variable::~condition_variable(v3);
  std::mutex::~mutex(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2453A353C(uint64_t a1)
{
  *a1 = &unk_285851DB8;
  sub_2453A35CC(a1);
  dispatch_release(*(a1 + 64));
  sub_2453A5E64(a1 + 296);
  sub_2453A5DE4(a1 + 264);
  sub_2453A5D64(a1 + 232);
  sub_2453A5CE4(a1 + 200);
  std::condition_variable::~condition_variable((a1 + 144));
  std::mutex::~mutex((a1 + 80));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_2453A35CC(uint64_t a1)
{
  atomic_store(0, (a1 + 28));
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    CFReadStreamClose(v2);
    CFRelease(*v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFWriteStreamClose(v4);
    CFRelease(*(a1 + 16));
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(a1 + 24) = -1;
  result = MEMORY[0x245D69EE0](a1 + 32, &unk_24549677E);
  *(a1 + 56) = 0;
  return result;
}

void sub_2453A3658(uint64_t a1)
{
  sub_2453A353C(a1);

  JUMPOUT(0x245D6A0D0);
}

BOOL sub_2453A3690(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  __p = 0;
  v26 = 0;
  v27 = 0;
  v2 = *(a1 + 256);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  (*(*v2 + 48))(v2, &__p);
  v3 = CFDataCreate(0, __p, v26 - __p);
  if (!v3)
  {
    v21 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v21, OS_LOG_TYPE_ERROR, "suplCertData alloc", buf, 2u);
      v21 = qword_2813CF018;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
      v31 = 1026;
      v32 = 304;
      v33 = 2082;
      v34 = "verifySSL";
      _os_log_error_impl(&dword_245396000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    __assert_rtn("verifySSL", "GnssConnectionManager.mm", 304, "false && suplCertData alloc");
  }

  v4 = SecCertificateCreateWithData(0, v3);
  v5 = v4;
  if (v4)
  {
    values = v4;
    v6 = CFArrayCreate(0, &values, 1, 0);
    if (!v6)
    {
      v22 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "myCerts alloc", buf, 2u);
        v22 = qword_2813CF018;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v30 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
        v31 = 1026;
        v32 = 313;
        v33 = 2082;
        v34 = "verifySSL";
        _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      __assert_rtn("verifySSL", "GnssConnectionManager.mm", 313, "false && myCerts alloc");
    }

    BasicX509 = SecPolicyCreateBasicX509();
    if (!BasicX509)
    {
      v23 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245396000, v23, OS_LOG_TYPE_ERROR, "myPolicy alloc", buf, 2u);
        v23 = qword_2813CF018;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v30 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
        v31 = 1026;
        v32 = 316;
        v33 = 2082;
        v34 = "verifySSL";
        _os_log_error_impl(&dword_245396000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      __assert_rtn("verifySSL", "GnssConnectionManager.mm", 316, "false && myPolicy alloc");
    }

    v8 = CFWriteStreamCopyProperty(*(a1 + 16), *MEMORY[0x277CBAE60]);
    v9 = v8;
    if (!v8)
    {
      v15 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_245396000, v15, OS_LOG_TYPE_FAULT, "#supl unable to obtain trust", buf, 2u);
      }

      v14 = 0;
      goto LABEL_20;
    }

    v10 = SecTrustSetPolicies(v8, BasicX509);
    if (v10)
    {
      v11 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        LODWORD(v30) = v10;
        v12 = "#supl unable to set trust policy status,%{public}d";
LABEL_32:
        _os_log_fault_impl(&dword_245396000, v11, OS_LOG_TYPE_FAULT, v12, buf, 8u);
      }
    }

    else
    {
      v16 = SecTrustSetAnchorCertificates(v9, v6);
      if (!v16)
      {
        error = 0;
        v18 = SecTrustEvaluateWithError(v9, &error);
        v19 = error;
        if (error)
        {
          v14 = 0;
        }

        else
        {
          v14 = v18;
        }

        if (v14)
        {
          goto LABEL_19;
        }

        v20 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v30 = v19;
          _os_log_fault_impl(&dword_245396000, v20, OS_LOG_TYPE_FAULT, "#supl: Invalid trust (EV) error: %{public}@", buf, 0xCu);
          v19 = error;
          if (!error)
          {
            goto LABEL_19;
          }
        }

        else if (!v19)
        {
          goto LABEL_19;
        }

        CFRelease(v19);
        goto LABEL_19;
      }

      v11 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        LODWORD(v30) = v16;
        v12 = "#supl unable to set anchor certs status,%{public}d";
        goto LABEL_32;
      }
    }

    v14 = 0;
LABEL_19:
    CFRelease(v9);
LABEL_20:
    CFRelease(BasicX509);
    CFRelease(v6);
    CFRelease(v5);
    CFRelease(v3);
    goto LABEL_21;
  }

  v13 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_245396000, v13, OS_LOG_TYPE_FAULT, "#supl unable to read SUPL certificate data", buf, 2u);
  }

  CFRelease(v3);
  v14 = 0;
LABEL_21:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_2453A3C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453A3C8C(uint64_t a1)
{
  std::mutex::lock((a1 + 80));
  *(a1 + 72) = 1;
  std::mutex::unlock((a1 + 80));

  std::condition_variable::notify_one((a1 + 144));
}

void sub_2453A3CD8(uint64_t a1, CFIndex a2, UInt32 a3)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = *(a2 + 23);
  }

  v8 = qword_2813CF018;
  if (!a3 || !v7)
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
    {
      if ((v6 & 0x80000000) != 0)
      {
        if (*(a2 + 8))
        {
          v40 = *a2;
        }

        else
        {
          v40 = "(null)";
        }
      }

      else
      {
        v40 = "(null)";
        if (v6)
        {
          v40 = a2;
        }
      }

      LODWORD(clientContext.version) = 136380931;
      *(&clientContext.version + 4) = v40;
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = a3;
      _os_log_fault_impl(&dword_245396000, v8, OS_LOG_TYPE_FAULT, "#supl,connect,bad inputs,serverName,%{private}s,port,%{public}d", &clientContext, 0x12u);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v41 = a2;
    if ((v6 & 0x80000000) != 0)
    {
      v41 = *a2;
    }

    LODWORD(clientContext.version) = 136315394;
    *(&clientContext.version + 4) = v41;
    WORD2(clientContext.info) = 1024;
    *(&clientContext.info + 6) = a3;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#supl,connect,opening server,%s,port,%d", &clientContext, 0x12u);
  }

  v9 = atomic_load((a1 + 28));
  if (v9)
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v45 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v45 = *v45;
      }

      v46 = *(a1 + 56);
      LODWORD(clientContext.version) = 136380931;
      *(&clientContext.version + 4) = v45;
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = v46;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#supl,connect,connection still open to serverName,%{private}s,port,%{public}d", &clientContext, 0x12u);
    }

LABEL_9:
    sub_2453A48E4(*(a1 + 288), 4);
    return;
  }

  v11 = a2;
  if (*(a2 + 23) < 0)
  {
    v11 = *a2;
  }

  v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
  if (!v12)
  {
    v50 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(clientContext.version) = 0;
      _os_log_error_impl(&dword_245396000, v50, OS_LOG_TYPE_ERROR, "hostNameCFStr alloc", &clientContext, 2u);
      v50 = qword_2813CF018;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      LODWORD(clientContext.version) = 136446722;
      *(&clientContext.version + 4) = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = 144;
      WORD1(clientContext.retain) = 2082;
      *(&clientContext.retain + 4) = "connect";
      _os_log_error_impl(&dword_245396000, v50, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &clientContext, 0x1Cu);
    }

    __assert_rtn("connect", "GnssConnectionManager.mm", 144, "false && hostNameCFStr alloc");
  }

  CFStreamCreatePairWithSocketToHost(0, v12, a3, (a1 + 8), (a1 + 16));
  CFRelease(v12);
  keys[0] = *MEMORY[0x277CBAED0];
  values = *MEMORY[0x277CBED10];
  v13 = CFDictionaryCreate(0, keys, &values, 1, 0, 0);
  if (!v13)
  {
    v51 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(clientContext.version) = 0;
      _os_log_error_impl(&dword_245396000, v51, OS_LOG_TYPE_ERROR, "sslDictionary alloc", &clientContext, 2u);
      v51 = qword_2813CF018;
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      LODWORD(clientContext.version) = 136446722;
      *(&clientContext.version + 4) = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/GnssConnectionManager.mm";
      WORD2(clientContext.info) = 1026;
      *(&clientContext.info + 6) = 154;
      WORD1(clientContext.retain) = 2082;
      *(&clientContext.retain + 4) = "connect";
      _os_log_error_impl(&dword_245396000, v51, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &clientContext, 0x1Cu);
    }

    __assert_rtn("connect", "GnssConnectionManager.mm", 154, "false && sslDictionary alloc");
  }

  v14 = *MEMORY[0x277CBF070];
  v15 = *MEMORY[0x277CBED28];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBF070], *MEMORY[0x277CBED28]);
  CFWriteStreamSetProperty(*(a1 + 16), v14, v15);
  v16 = *(a1 + 224);
  if (!v16)
  {
    sub_2453A5EE4();
  }

  v17 = (*(*v16 + 48))(v16);
  v18 = qword_2813CF018;
  v19 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    if (v19)
    {
      LOWORD(clientContext.version) = 0;
      _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#supl,connect,using LTE,service type set to Emergency", &clientContext, 2u);
    }

    v20 = MEMORY[0x277CC39C8];
  }

  else
  {
    if (v19)
    {
      LOWORD(clientContext.version) = 0;
      _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#supl,connect,not using LTE,service type set to EmergencyLocation", &clientContext, 2u);
    }

    v20 = MEMORY[0x277CC39D0];
  }

  v21 = *v20;
  v22 = *MEMORY[0x277CBADD0];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBADD0], *v20);
  CFWriteStreamSetProperty(*(a1 + 16), v22, v21);
  __p[0] = 0;
  __p[1] = 0;
  v55 = 0;
  v23 = *(a1 + 320);
  if (!v23)
  {
    sub_2453A5EE4();
  }

  (*(*v23 + 48))(v23, __p);
  if (v55 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v24];
  v26 = *MEMORY[0x277CBADA0];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBADA0], v25);
  CFWriteStreamSetProperty(*(a1 + 16), v26, v25);
  v27 = *MEMORY[0x277CBAE68];
  CFReadStreamSetProperty(*(a1 + 8), *MEMORY[0x277CBAE68], v13);
  CFWriteStreamSetProperty(*(a1 + 16), v27, v13);
  CFRelease(v13);
  clientContext.version = 0;
  clientContext.info = a1;
  memset(&clientContext.retain, 0, 24);
  *(a1 + 72) = 0;
  *(a1 + 192) = 0;
  if (!CFReadStreamSetClient(*(a1 + 8), 0xDuLL, sub_2453A4934, &clientContext))
  {
    v34 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    LOWORD(__lk.__m_) = 0;
    v35 = "#supl,connect,unable to set read stream client";
LABEL_105:
    _os_log_error_impl(&dword_245396000, v34, OS_LOG_TYPE_ERROR, v35, &__lk, 2u);
LABEL_73:
    sub_2453A48E4(*(a1 + 288), 3);
    goto LABEL_74;
  }

  if (!CFWriteStreamSetClient(*(a1 + 16), 0xDuLL, sub_2453A4A98, &clientContext))
  {
    v34 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    LOWORD(__lk.__m_) = 0;
    v35 = "#supl,connect,unable to set write stream client";
    goto LABEL_105;
  }

  MEMORY[0x245D69A90](*(a1 + 8), *(a1 + 64));
  MEMORY[0x245D69B50](*(a1 + 16), *(a1 + 64));
  if (!CFReadStreamOpen(*(a1 + 8)))
  {
    v36 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&dword_245396000, v36, OS_LOG_TYPE_ERROR, "#supl,connect,read stream open failed", &__lk, 2u);
    }

    Status = CFReadStreamGetStatus(*(a1 + 8));
    v38 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__lk.__m_) = 134349056;
      *(&__lk.__m_ + 4) = Status;
      _os_log_error_impl(&dword_245396000, v38, OS_LOG_TYPE_ERROR, "#supl,read stream in bad state streamStatus,%{public}lu", &__lk, 0xCu);
    }

    v39 = CFReadStreamCopyError(*(a1 + 8));
    sub_2453A4E78(a1, v39);
    goto LABEL_71;
  }

  if (!CFWriteStreamOpen(*(a1 + 16)))
  {
    v42 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&dword_245396000, v42, OS_LOG_TYPE_ERROR, "#supl,connect,write stream open failed", &__lk, 2u);
    }

    v43 = CFWriteStreamGetStatus(*(a1 + 16));
    v44 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__lk.__m_) = 134349056;
      *(&__lk.__m_ + 4) = v43;
      _os_log_error_impl(&dword_245396000, v44, OS_LOG_TYPE_ERROR, "#supl,write stream in bad state streamStatus,%{public}lu", &__lk, 0xCu);
    }

    v39 = CFWriteStreamCopyError(*(a1 + 16));
    sub_2453A4E78(a1, v39);
LABEL_71:
    if (v39)
    {
      CFRelease(v39);
    }

    goto LABEL_73;
  }

  __lk.__m_ = (a1 + 80);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 80));
  v28.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 10000000000;
  do
  {
    if (*(a1 + 72))
    {
      goto LABEL_50;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v28.__d_.__rep_)
    {
      break;
    }

    v29.__d_.__rep_ = v28.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v29.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v30.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v30.__d_.__rep_)
      {
        v31 = 0;
        goto LABEL_46;
      }

      if (v30.__d_.__rep_ < 1)
      {
        if (v30.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v31 = 0x8000000000000000;
          goto LABEL_46;
        }
      }

      else if (v30.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }

      v31 = 1000 * v30.__d_.__rep_;
LABEL_44:
      if (v31 > (v29.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v32.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_47:
        std::condition_variable::__do_timed_wait((a1 + 144), &__lk, v32);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_46:
      v32.__d_.__rep_ = v31 + v29.__d_.__rep_;
      goto LABEL_47;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v28.__d_.__rep_);
  if (*(a1 + 72) == 1)
  {
LABEL_50:
    v33 = 0;
    goto LABEL_84;
  }

  v33 = 1;
LABEL_84:
  if (!__lk.__owns_)
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
    return;
  }

  std::mutex::unlock(__lk.__m_);
  __lk.__owns_ = 0;
  v47 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2453A4E34;
  block[3] = &unk_278E36C40;
  block[4] = a1;
  dispatch_sync(v47, block);
  if (v33)
  {
    v48 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v48, OS_LOG_TYPE_ERROR, "#supl,connect,timeout waiting for connection", buf, 2u);
    }
  }

  if ((*(a1 + 193) & 1) == 0)
  {
    sub_2453A4C7C(a1);
LABEL_96:
    sub_2453A48E4(*(a1 + 288), 3);
    goto LABEL_97;
  }

  if ((*(a1 + 194) & 1) == 0)
  {
    sub_2453A4D58(a1);
    goto LABEL_96;
  }

  v49 = qword_2813CF018;
  if (*(a1 + 192))
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v49, OS_LOG_TYPE_DEFAULT, "#supl,connect,success", buf, 2u);
    }

    atomic_store(1u, (a1 + 28));
    std::string::operator=((a1 + 32), a2);
    *(a1 + 56) = a3;
    sub_2453A48E4(*(a1 + 288), 2);
  }

  else
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v49, OS_LOG_TYPE_ERROR, "#supl,connect,SSL failure", buf, 2u);
    }

    sub_2453A35CC(a1);
    sub_2453A48E4(*(a1 + 288), 3);
  }

LABEL_97:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

LABEL_74:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }
}