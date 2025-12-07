uint64_t adobe::usd::getMaterial(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = (a1 + 56);
  v6 = 1200340205 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v14 = *(a3 + 2);
  }

  v15 = v6;
  v7 = sub_29AA26980(a2, &__dst, &__dst);
  if (v8)
  {
    sub_29AA22610(v12, a3);
    sub_29AA1B908(v5, v12);
    sub_29AA19560(v12);
  }

  v9 = *(v7 + 10);
  v10 = *v5;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst);
  }

  return v10 + 1832 * v9;
}

void sub_29AA1CE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AA19560(va);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t adobe::usd::readObjMtl(uint64_t a1, int a2, unsigned __int8 **a3, uint64_t a4, unsigned int *a5, unsigned int *a6, char a7)
{
  v74 = a7;
  if ((atomic_load_explicit(&qword_2A1746820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746820))
  {
    sub_29A008E78(qword_2A1746808, "newmtl");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746808, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746820);
  }

  if ((atomic_load_explicit(&qword_2A1746840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746840))
  {
    sub_29A008E78(qword_2A1746828, "ka");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746828, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746840);
  }

  if ((atomic_load_explicit(&qword_2A1746860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746860))
  {
    sub_29A008E78(qword_2A1746848, "kd");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746848, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746860);
  }

  if ((atomic_load_explicit(&qword_2A1746880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746880))
  {
    sub_29A008E78(qword_2A1746868, "ks");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746868, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746880);
  }

  if ((atomic_load_explicit(&qword_2A17468A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17468A0))
  {
    sub_29A008E78(qword_2A1746888, "ke");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746888, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17468A0);
  }

  if ((atomic_load_explicit(&qword_2A17468C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17468C0))
  {
    sub_29A008E78(qword_2A17468A8, "tf");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17468A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17468C0);
  }

  if ((atomic_load_explicit(&qword_2A17468E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17468E0))
  {
    sub_29A008E78(qword_2A17468C8, "illum");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17468C8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17468E0);
  }

  if ((atomic_load_explicit(&qword_2A1746900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746900))
  {
    sub_29A008E78(qword_2A17468E8, "d");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17468E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746900);
  }

  if ((atomic_load_explicit(&qword_2A1746920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746920))
  {
    sub_29A008E78(qword_2A1746908, "ns");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746908, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746920);
  }

  if ((atomic_load_explicit(&qword_2A1746940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746940))
  {
    sub_29A008E78(qword_2A1746928, "sharpness");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746928, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746940);
  }

  if ((atomic_load_explicit(&qword_2A1746960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746960))
  {
    sub_29A008E78(qword_2A1746948, "ni");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746948, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746960);
  }

  if ((atomic_load_explicit(&qword_2A1746980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746980))
  {
    sub_29A008E78(qword_2A1746968, "pm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746968, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746980);
  }

  if ((atomic_load_explicit(&qword_2A17469A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17469A0))
  {
    sub_29A008E78(qword_2A1746988, "pr");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746988, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17469A0);
  }

  if ((atomic_load_explicit(&qword_2A17469C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17469C0))
  {
    sub_29A008E78(qword_2A17469A8, "map_ka");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17469A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17469C0);
  }

  if ((atomic_load_explicit(&qword_2A17469E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17469E0))
  {
    sub_29A008E78(qword_2A17469C8, "map_kd");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17469C8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17469E0);
  }

  if ((atomic_load_explicit(&qword_2A1746A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A00))
  {
    sub_29A008E78(qword_2A17469E8, "map_ks");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17469E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A00);
  }

  if ((atomic_load_explicit(&qword_2A1746A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A20))
  {
    sub_29A008E78(qword_2A1746A08, "map_ns");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A20);
  }

  if ((atomic_load_explicit(&qword_2A1746A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A40))
  {
    sub_29A008E78(qword_2A1746A28, "map_ke");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A40);
  }

  if ((atomic_load_explicit(&qword_2A1746A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A60))
  {
    sub_29A008E78(qword_2A1746A48, "map_d");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A60);
  }

  if ((atomic_load_explicit(&qword_2A1746A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A80))
  {
    sub_29A008E78(qword_2A1746A68, "map_pm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A80);
  }

  if ((atomic_load_explicit(&qword_2A1746AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746AA0))
  {
    sub_29A008E78(qword_2A1746A88, "map_pr");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746AA0);
  }

  if ((atomic_load_explicit(&qword_2A1746AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746AC0))
  {
    sub_29A008E78(qword_2A1746AA8, "norm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746AA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746AC0);
  }

  if ((atomic_load_explicit(&qword_2A1746AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746AE0))
  {
    sub_29A008E78(qword_2A1746AC8, "map_kn");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746AC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746AE0);
  }

  if ((atomic_load_explicit(&qword_2A1746B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B00))
  {
    sub_29A008E78(qword_2A1746AE8, "decal");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746AE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B00);
  }

  if ((atomic_load_explicit(&qword_2A1746B20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B20))
  {
    sub_29A008E78(qword_2A1746B08, "disp");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B20);
  }

  if ((atomic_load_explicit(&qword_2A1746B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B40))
  {
    sub_29A008E78(qword_2A1746B28, "bump");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B40);
  }

  if ((atomic_load_explicit(&qword_2A1746B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B60))
  {
    sub_29A008E78(qword_2A1746B48, "adobe_map_normal");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B60);
  }

  if ((atomic_load_explicit(&qword_2A1746B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B80))
  {
    sub_29A008E78(qword_2A1746B68, "adobe_map_roughness");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B80);
  }

  if ((atomic_load_explicit(&qword_2A1746BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746BA0))
  {
    sub_29A008E78(qword_2A1746B88, "adobe_map_metallic");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746BA0);
  }

  if ((atomic_load_explicit(&qword_2A1746BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746BC0))
  {
    sub_29A008E78(qword_2A1746BA8, "adobe_map_translucence");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746BA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746BC0);
  }

  if ((atomic_load_explicit(&qword_2A1746BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746BE0))
  {
    sub_29A008E78(qword_2A1746BC8, "adobe_translucence");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746BC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746BE0);
  }

  if ((atomic_load_explicit(&qword_2A1746C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C00))
  {
    sub_29A008E78(qword_2A1746BE8, "adobe_interior_color");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746BE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C00);
  }

  if ((atomic_load_explicit(&qword_2A1746C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C20))
  {
    sub_29A008E78(qword_2A1746C08, "adobe_density");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C20);
  }

  if ((atomic_load_explicit(&qword_2A1746C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C40))
  {
    sub_29A008E78(qword_2A1746C28, "adobe_glow");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C40);
  }

  if ((atomic_load_explicit(&qword_2A1746C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C60))
  {
    sub_29A008E78(qword_2A1746C48, "-blendu");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C60);
  }

  if ((atomic_load_explicit(&qword_2A1746C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C80))
  {
    sub_29A008E78(qword_2A1746C68, "-blendv");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C80);
  }

  if ((atomic_load_explicit(&qword_2A1746CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746CA0))
  {
    sub_29A008E78(qword_2A1746C88, "-cc");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746CA0);
  }

  if ((atomic_load_explicit(&qword_2A1746CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746CC0))
  {
    sub_29A008E78(qword_2A1746CA8, "-clamp");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746CA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746CC0);
  }

  if ((atomic_load_explicit(&qword_2A1746CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746CE0))
  {
    sub_29A008E78(qword_2A1746CC8, "-imfchan");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746CC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746CE0);
  }

  if ((atomic_load_explicit(&qword_2A1746D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D00))
  {
    sub_29A008E78(qword_2A1746CE8, "-mm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746CE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D00);
  }

  if ((atomic_load_explicit(&qword_2A1746D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D20))
  {
    sub_29A008E78(qword_2A1746D08, "-o");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D20);
  }

  if ((atomic_load_explicit(&qword_2A1746D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D40))
  {
    sub_29A008E78(qword_2A1746D28, "-s");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D40);
  }

  if ((atomic_load_explicit(&qword_2A1746D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D60))
  {
    sub_29A008E78(qword_2A1746D48, "-t");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D60);
  }

  if ((atomic_load_explicit(&qword_2A1746D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D80))
  {
    sub_29A008E78(qword_2A1746D68, "-texres");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D80);
  }

  v73 = 1;
  v72[0] = &v73;
  v72[1] = a1;
  v72[2] = a5;
  v72[3] = a6;
  v72[4] = &v74;
  v12 = mach_absolute_time();
  v13 = *(a1 + 104);
  v14 = *a3;
  v15 = a3[1];
  v71 = v14;
  if (v14 < v15 - 2)
  {
    Material = 0;
    do
    {
      if (v14 < v15)
      {
        v17 = v15 - v14;
        while (1)
        {
          v18 = *v14;
          if (v18 != 32 && v18 != 9)
          {
            break;
          }

          ++v14;
          if (!--v17)
          {
            v14 = v15;
            break;
          }
        }
      }

      v71 = v14;
      if (adobe::usd::checkWord(&v71, v15, qword_2A1746808))
      {
        __p = 0uLL;
        v68 = 0;
        adobe::usd::nextSpacedText(&v71, v15, &__p);
        Material = adobe::usd::getMaterial(a1, a4, &__p);
        *Material = 1;
        if (SHIBYTE(v68) < 0)
        {
          operator delete(__p);
        }
      }

      else if (Material && (*(Material + 1) & 1) == 0)
      {
        if (adobe::usd::checkWord(&v71, v15, qword_2A1746828))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 36), v20) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1336;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ka: expected 3 floats", v21, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746848))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 48), v22) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1340;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Kd: expected 3 floats", v23, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746868))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 60), v24) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1344;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ks: expected 3 floats", v25, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746888))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 84), v26) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1348;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ke: expected 3 floats", v27, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A17468A8))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 72), v28) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1352;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Tf: expected 3 floats", v29, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A17468C8))
        {
          LODWORD(__p) = 0;
          if (adobe::usd::nextFloat(&v71, v15, &__p, v30))
          {
            *(Material + 32) = *&__p;
          }

          else
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1356;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after illum: expected integer", v31, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A17468E8))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 96), v32) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1360;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after d: expected float", v33, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746908))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 104), v37) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1364;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ns: expected float", v38, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746928))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 108), v39) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1368;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after sharpness: expected float", v40, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746948))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 112), v41) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1372;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ni: expected float", v42, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746968))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 1164), v43) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1376;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Pm: expected float", v44, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746988))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 1160), v45) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1380;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Pr: expected float", v46, v73);
          }
        }

        else
        {
          if (adobe::usd::checkWord(&v71, v15, qword_2A17469A8))
          {
            v47 = Material + 120;
            v48 = v15;
            v49 = qword_2A17469A8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A17469C8))
          {
            v47 = Material + 224;
            v48 = v15;
            v49 = qword_2A17469C8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A17469E8))
          {
            v47 = Material + 328;
            v48 = v15;
            v49 = qword_2A17469E8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A08))
          {
            v47 = Material + 432;
            v48 = v15;
            v49 = qword_2A1746A08;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A28))
          {
            v47 = Material + 536;
            v48 = v15;
            v49 = qword_2A1746A28;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A48))
          {
            v47 = Material + 640;
            v48 = v15;
            v49 = qword_2A1746A48;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A88))
          {
            v47 = Material + 1168;
            v48 = v15;
            v49 = qword_2A1746A88;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A68))
          {
            v47 = Material + 1272;
            v48 = v15;
            v49 = qword_2A1746A68;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746AA8))
          {
            v47 = Material + 744;
            v48 = v15;
            v49 = qword_2A1746AA8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746AC8))
          {
            v47 = Material + 744;
            v48 = v15;
            v49 = qword_2A1746AC8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746AE8))
          {
            v47 = Material + 848;
            v48 = v15;
            v49 = qword_2A1746AE8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B08))
          {
            v47 = Material + 952;
            v48 = v15;
            v49 = qword_2A1746B08;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B28))
          {
            v47 = Material + 1056;
            v48 = v15;
            v49 = qword_2A1746B28;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B48))
          {
            *a1 = 1;
            v47 = Material + 744;
            v48 = v15;
            v49 = qword_2A1746B48;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B68))
          {
            *a1 = 1;
            v47 = Material + 1168;
            v48 = v15;
            v49 = qword_2A1746B68;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B88))
          {
            *a1 = 1;
            v47 = Material + 1272;
            v48 = v15;
            v49 = qword_2A1746B88;
          }

          else
          {
            if (!adobe::usd::checkWord(&v71, v15, qword_2A1746BA8))
            {
              if (adobe::usd::checkWord(&v71, v15, qword_2A1746BC8))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat(&v71, v15, (Material + 1404), v50) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1425;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_translucence: expected float", v51, v73);
                }
              }

              else if (adobe::usd::checkWord(&v71, v15, qword_2A1746BE8))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat3(&v71, v15, (Material + 1376), v52) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1432;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_interior_color: expected 3 floats", v53, v73);
                }
              }

              else if (adobe::usd::checkWord(&v71, v15, qword_2A1746C08))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat(&v71, v15, (Material + 1408), v54) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1438;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_density: expected float", v55, v73);
                }
              }

              else if (adobe::usd::checkWord(&v71, v15, qword_2A1746C28))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat(&v71, v15, (Material + 1400), v56) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1443;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_glow: expected float", v57, v73);
                }
              }

              goto LABEL_83;
            }

            *a1 = 1;
            v47 = Material + 1728;
            v48 = v15;
            v49 = qword_2A1746BA8;
          }

          sub_29AA1F03C(v72, &v71, v48, v49, v47);
        }
      }

LABEL_83:
      v34 = v71;
      if (v71 < v15 && *v71 != 10)
      {
        v35 = v71 + 1;
        while (v35 != v15)
        {
          v36 = *v35++;
          if (v36 == 10)
          {
            v34 = v35 - 1;
            goto LABEL_90;
          }
        }

        v34 = v15;
      }

LABEL_90:
      v14 = v34 + 1;
      v71 = v14;
      ++v73;
    }

    while (v14 < v15 - 2);
  }

  v58 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v59 = (v13 + 56 * a2);
    v60 = (v58 - v12);
    if (*(v59 + 23) < 0)
    {
      v59 = *v59;
    }

    v61 = v73;
    v62 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(v60);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read mtl %s (%d lines) in %lu ms\n", v63, v64, v59, v61, v62 / 1000000);
  }

  return 1;
}

void sub_29AA1F03C(unsigned int **a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  if (*a2 < a3)
  {
    v48 = v5;
    v49 = v6;
    do
    {
      v13 = *v7;
      if (v13 <= 0xD && ((1 << v13) & 0x2401) != 0)
      {
        break;
      }

      v15 = v7 + 1;
      while (v13 == 32)
      {
        *a2 = v15;
        if (v15 == a3)
        {
          return;
        }

        v16 = *v15++;
        LOBYTE(v13) = v16;
      }

      if (v13 <= 0xCu)
      {
        if (v13 && v13 != 10)
        {
LABEL_44:
          adobe::usd::nextSpacedText(a2, a3, a5 + 8);
          v34 = adobe::usd::addImage(a1[1], (a5 + 8), a1[2], a1[3], *a1[4]);
          *(a5 + 32) = v34;
          *a5 = v34 != -1;
          return;
        }

        return;
      }

      if (v13 == 13)
      {
        return;
      }

      if (v13 != 45)
      {
        goto LABEL_44;
      }

      if (adobe::usd::checkWord(a2, a3, qword_2A1746C48))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 36), v17);
      }

      if (adobe::usd::checkWord(a2, a3, qword_2A1746C68))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 37), v18);
      }

      if (adobe::usd::checkWord(a2, a3, qword_2A1746C88))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 48), v19);
      }

      if (adobe::usd::checkWord(a2, a3, qword_2A1746CA8))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 49), v20);
      }

      if (adobe::usd::checkWord(a2, a3, qword_2A1746CC8))
      {
        adobe::usd::nextChannel(a2, a3);
      }

      if (adobe::usd::checkWord(a2, a3, qword_2A1746CE8))
      {
        Float = adobe::usd::nextFloat(a2, a3, (a5 + 56), v21);
        v23 = adobe::usd::nextFloat(a2, a3, (a5 + 60), v22);
        if (!Float || (v23 & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1268;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v35 = a4;
          }

          else
          {
            v35 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -mm expects 2 floats", v24, **a1, v35);
          return;
        }
      }

      else if (adobe::usd::checkWord(a2, a3, qword_2A1746D08))
      {
        if ((adobe::usd::nextFloat3(a2, a3, (a5 + 64), v25) & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1275;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v36 = a4;
          }

          else
          {
            v36 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -o expects 3 floats", v26, **a1, v36);
          return;
        }
      }

      else if (adobe::usd::checkWord(a2, a3, qword_2A1746D28))
      {
        if ((adobe::usd::nextFloat3(a2, a3, (a5 + 76), v27) & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1282;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v37 = a4;
          }

          else
          {
            v37 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -s expects 3 floats", v28, **a1, v37);
          return;
        }
      }

      else if (adobe::usd::checkWord(a2, a3, qword_2A1746D48))
      {
        if ((adobe::usd::nextFloat3(a2, a3, (a5 + 88), v29) & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1289;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v38 = a4;
          }

          else
          {
            v38 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -t expects 3 floats", v30, **a1, v38);
          return;
        }
      }

      else
      {
        if (!adobe::usd::checkWord(a2, a3, qword_2A1746D68))
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1306;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v39 = a4;
          }

          else
          {
            v39 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: unrecognized map keyword", v31, **a1, v39);
          return;
        }

        *v42 = 0;
        if (!adobe::usd::nextFloat(a2, a3, v42, v32))
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1298;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v40 = a4;
          }

          else
          {
            v40 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -texres expects float", v33, **a1, v40);
          return;
        }
      }

      v7 = *a2;
    }

    while (*a2 < a3);
  }
}

uint64_t adobe::usd::readObjMdl(uint64_t a1, int a2, char **a3, uint64_t a4, uint64_t a5, const void **a6, char a7)
{
  v109 = a7;
  v105 = a1;
  v106 = a5;
  v107 = a6;
  v108 = &v109;
  v11 = mach_absolute_time();
  v103 = 0;
  v104 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  memset(&v99, 0, sizeof(v99));
  memset(&v98, 0, sizeof(v98));
  memset(&__str, 0, sizeof(__str));
  sub_29A008E78(&__p, *a3);
  sub_29A9EE25C(v92, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x29EDC93D0];
LABEL_4:
  v15 = v13;
  while (1)
  {
    std::ios_base::getloc((v92 + *(v92[0] - 24)));
    v16 = std::locale::use_facet(&__p, v14);
    v17 = (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&__p);
    v18 = sub_29A0DE07C(v92, &v100, v17);
    if ((*(v18 + *(*v18 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v19 = SHIBYTE(v102);
    if ((SHIBYTE(v102) & 0x8000000000000000) != 0)
    {
      v19 = v101;
      if (v101)
      {
LABEL_11:
        std::string::resize(&v99, v19, 0);
        if (v102 >= 0)
        {
          v20 = HIBYTE(v102);
        }

        else
        {
          v20 = v101;
        }

        std::string::resize(&v98, v20, 0);
        if (v102 >= 0)
        {
          v21 = HIBYTE(v102);
        }

        else
        {
          v21 = v101;
        }

        std::string::resize(&__str, v21, 0);
        v12 = (v12 + 1);
        if (v102 >= 0)
        {
          v22 = &v100;
        }

        else
        {
          v22 = v100;
        }

        v23 = &v99;
        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v99.__r_.__value_.__r.__words[0];
        }

        if (sscanf(v22, "export material %[^()]", v23) >= 1)
        {
          v24 = std::string::find(&v99, 0, 0);
          std::string::resize(&v99, v24, 0);
          Material = adobe::usd::getMaterial(a1, a4, &v99);
          v13 = 0;
          if (Material)
          {
            sub_29AA22610(&__p, &v99);
            sub_29AA2051C(Material, &__p);
            sub_29AA19560(&__p);
            *Material = 257;
            v13 = Material;
          }

          goto LABEL_4;
        }

        v13 = 0;
        if (!v15)
        {
          goto LABEL_4;
        }

        if (v102 >= 0)
        {
          v26 = &v100;
        }

        else
        {
          v26 = v100;
        }

        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v98;
        }

        else
        {
          v27 = v98.__r_.__value_.__r.__words[0];
        }

        if (sscanf(v26, "    %s : float(%f)", v27, &v104 + 4) == 2)
        {
          v28 = std::string::find(&v98, 0, 0);
          std::string::resize(&v98, v28, 0);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v98.__r_.__value_.__l.__size_ == 7 && *v98.__r_.__value_.__l.__data_ == 1667330159 && *(v98.__r_.__value_.__r.__words[0] + 3) == 2037672291)
            {
LABEL_105:
              *(v15 + 347) = HIDWORD(v104);
              goto LABEL_184;
            }

            if (v98.__r_.__value_.__l.__size_ == 8 && *v98.__r_.__value_.__l.__data_ == 0x63696C6C6174656DLL)
            {
              goto LABEL_167;
            }

            if (v98.__r_.__value_.__l.__size_ == 6)
            {
              if (*v98.__r_.__value_.__l.__data_ == 1734960488 && *(v98.__r_.__value_.__r.__words[0] + 4) == 29800)
              {
                goto LABEL_182;
              }
            }

            else if (v98.__r_.__value_.__l.__size_ == 9 && *v98.__r_.__value_.__l.__data_ == 0x73656E6867756F72 && *(v98.__r_.__value_.__r.__words[0] + 8) == 115)
            {
              goto LABEL_183;
            }

            if (v98.__r_.__value_.__l.__size_ == 17)
            {
              if (*v98.__r_.__value_.__l.__data_ == 0x52664F7865646E69 && *(v98.__r_.__value_.__r.__words[0] + 8) == 0x6F69746361726665 && *(v98.__r_.__value_.__r.__words[0] + 16) == 110)
              {
LABEL_137:
                *(v15 + 28) = HIDWORD(v104);
                goto LABEL_184;
              }
            }

            else if (v98.__r_.__value_.__l.__size_ == 11 && *v98.__r_.__value_.__l.__data_ == 0x6353746867696568 && *(v98.__r_.__value_.__r.__words[0] + 3) == 0x656C616353746867)
            {
              goto LABEL_173;
            }

            if (v98.__r_.__value_.__l.__size_ != 4)
            {
              goto LABEL_178;
            }

            v44 = v98.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (HIBYTE(v98.__r_.__value_.__r.__words[2]) > 7u)
            {
              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) <= 0xAu)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 8)
                {
                  if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 9)
                  {
                    goto LABEL_178;
                  }

                  if (v98.__r_.__value_.__r.__words[0] != 0x73656E6867756F72 || v98.__r_.__value_.__s.__data_[8] != 115)
                  {
                    goto LABEL_178;
                  }

LABEL_183:
                  *(v15 + 290) = HIDWORD(v104);
LABEL_184:
                  v13 = v15;
                  goto LABEL_4;
                }

                if (v98.__r_.__value_.__r.__words[0] == 0x63696C6C6174656DLL)
                {
LABEL_167:
                  *(v15 + 291) = HIDWORD(v104);
                  goto LABEL_184;
                }

LABEL_178:
                if (sub_29A0F2648(&v98, "translucence"))
                {
                  *(v15 + 351) = HIDWORD(v104);
                }

                else
                {
                  v70 = sub_29A0F2648(&v98, "density");
                  v13 = v15;
                  if (!v70)
                  {
                    goto LABEL_4;
                  }

                  *(v15 + 352) = HIDWORD(v104);
                }

                goto LABEL_184;
              }

              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 11)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 17)
                {
                  goto LABEL_178;
                }

                v56 = v98.__r_.__value_.__r.__words[0] == 0x52664F7865646E69 && v98.__r_.__value_.__l.__size_ == 0x6F69746361726665;
                if (!v56 || v98.__r_.__value_.__s.__data_[16] != 110)
                {
                  goto LABEL_178;
                }

                goto LABEL_137;
              }

              if (v98.__r_.__value_.__r.__words[0] != 0x6353746867696568 || *(v98.__r_.__value_.__r.__words + 3) != 0x656C616353746867)
              {
                goto LABEL_178;
              }

LABEL_173:
              *(v15 + 349) = HIDWORD(v104);
              goto LABEL_184;
            }

            if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 4)
            {
              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 6)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 7)
                {
                  goto LABEL_178;
                }

                if (LODWORD(v98.__r_.__value_.__l.__data_) != 1667330159 || *(v98.__r_.__value_.__r.__words + 3) != 2037672291)
                {
                  goto LABEL_178;
                }

                goto LABEL_105;
              }

              if (LODWORD(v98.__r_.__value_.__l.__data_) != 1734960488 || WORD2(v98.__r_.__value_.__r.__words[0]) != 29800)
              {
                goto LABEL_178;
              }

LABEL_182:
              *(v15 + 348) = HIDWORD(v104);
              goto LABEL_184;
            }

            v44 = &v98;
          }

          if (LODWORD(v44->__r_.__value_.__l.__data_) == 2003790951)
          {
            *(v15 + 350) = HIDWORD(v104);
            goto LABEL_184;
          }

          goto LABEL_178;
        }

        if (v102 >= 0)
        {
          v30 = &v100;
        }

        else
        {
          v30 = v100;
        }

        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v98;
        }

        else
        {
          v31 = v98.__r_.__value_.__r.__words[0];
        }

        if (sscanf(v30, "    %s : color(%f, %f, %f)", v31, &v104, &v103 + 4, &v103) == 4)
        {
          v32 = std::string::find(&v98, 0, 0);
          std::string::resize(&v98, v32, 0);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v98.__r_.__value_.__l.__size_ != 9 || (*v98.__r_.__value_.__l.__data_ == 0x6F6C6F4365736162 ? (v50 = *(v98.__r_.__value_.__r.__words[0] + 8) == 114) : (v50 = 0), !v50))
            {
              v13 = v15;
              if (v98.__r_.__value_.__l.__size_ != 13)
              {
                goto LABEL_4;
              }

              v33 = v98.__r_.__value_.__r.__words[0];
              goto LABEL_121;
            }

            goto LABEL_162;
          }

          if (HIBYTE(v98.__r_.__value_.__r.__words[2]) == 9)
          {
            v65 = v98.__r_.__value_.__r.__words[0] == 0x6F6C6F4365736162 && v98.__r_.__value_.__s.__data_[8] == 114;
            v13 = v15;
            if (!v65)
            {
              goto LABEL_4;
            }

LABEL_162:
            v66 = HIDWORD(v103);
            v67 = v103;
            *(v15 + 12) = v104;
            *(v15 + 13) = v66;
            *(v15 + 14) = v67;
            goto LABEL_184;
          }

          v13 = v15;
          if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 13)
          {
            goto LABEL_4;
          }

          v33 = &v98;
LABEL_121:
          v51 = v33->__r_.__value_.__r.__words[0];
          v52 = *(v33->__r_.__value_.__r.__words + 5);
          v53 = v51 == 0x726F697265746E69 && v52 == 0x726F6C6F43726F69;
          v13 = v15;
          if (v53)
          {
            v54 = HIDWORD(v103);
            v55 = v103;
            *(v15 + 344) = v104;
            *(v15 + 345) = v54;
            *(v15 + 346) = v55;
            goto LABEL_184;
          }
        }

        else
        {
          if (v102 >= 0)
          {
            v34 = &v100;
          }

          else
          {
            v34 = v100;
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if (sscanf(v34, "    baseColor : adobe::util::color_texture( texture_2d(%[^]", p_str) == 1)
          {
            v36 = std::string::find(&__str, 0, 0);
            std::string::resize(&__str, v36, 0);
            std::string::operator=((v15 + 116), &__str);
            v37 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
            *(v15 + 64) = v37;
            *(v15 + 224) = v37 != -1;
            goto LABEL_184;
          }

          if (v102 >= 0)
          {
            v46 = &v100;
          }

          else
          {
            v46 = v100;
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__str;
          }

          else
          {
            v47 = __str.__r_.__value_.__r.__words[0];
          }

          if (sscanf(v46, "    normal : adobe::util::normal_texture( texture_2d(%[^]", v47) == 1)
          {
            v48 = std::string::find(&__str, 0, 0);
            std::string::resize(&__str, v48, 0);
            std::string::operator=((v15 + 376), &__str);
            v49 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
            *(v15 + 194) = v49;
            *(v15 + 744) = v49 != -1;
            goto LABEL_184;
          }

          if (v102 >= 0)
          {
            v58 = &v100;
          }

          else
          {
            v58 = v100;
          }

          v59 = &v98;
          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v98.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &__str;
          }

          else
          {
            v60 = __str.__r_.__value_.__r.__words[0];
          }

          v61 = sscanf(v58, "    %s : adobe::util::float_texture( texture_2d(%[^]", v59, v60);
          v13 = v15;
          if (v61 == 2)
          {
            v62 = std::string::find(&v98, 0, 0);
            std::string::resize(&v98, v62, 0);
            v63 = std::string::find(&__str, 0, 0);
            std::string::resize(&__str, v63, 0);
            if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v98.__r_.__value_.__l.__size_ == 8)
              {
                if (*v98.__r_.__value_.__l.__data_ == 0x63696C6C6174656DLL)
                {
                  goto LABEL_196;
                }
              }

              else if (v98.__r_.__value_.__l.__size_ == 9 && *v98.__r_.__value_.__l.__data_ == 0x73656E6867756F72 && *(v98.__r_.__value_.__r.__words[0] + 8) == 115)
              {
                goto LABEL_214;
              }

              if (v98.__r_.__value_.__l.__size_ == 7)
              {
                v72 = v98.__r_.__value_.__r.__words[0];
                goto LABEL_198;
              }

LABEL_202:
              if (sub_29A0F2648(&v98, "glow"))
              {
                v77 = 812;
              }

              else
              {
                if (!sub_29A0F2648(&v98, "translucence"))
                {
                  __p.__r_.__value_.__r.__words[0] = "usdObj/obj.cpp";
                  __p.__r_.__value_.__l.__size_ = "readObjMdl";
                  __p.__r_.__value_.__r.__words[2] = 1561;
                  v90 = "BOOL adobe::usd::readObjMdl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v91 = 0;
                  v79 = &v98;
                  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v79 = v98.__r_.__value_.__r.__words[0];
                  }

                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v80 = &__str;
                  }

                  else
                  {
                    v80 = __str.__r_.__value_.__r.__words[0];
                  }

                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Unsupported MDL float_texture '%s' with file '%s'", v78, v79, v80);
                  goto LABEL_184;
                }

                v77 = 864;
              }
            }

            else
            {
              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 7)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 8)
                {
                  if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 9)
                  {
                    goto LABEL_202;
                  }

                  if (v98.__r_.__value_.__r.__words[0] != 0x73656E6867756F72 || v98.__r_.__value_.__s.__data_[8] != 115)
                  {
                    goto LABEL_202;
                  }

LABEL_214:
                  std::string::operator=(v15 + 49, &__str);
                  v81 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
                  *(v15 + 300) = v81;
                  *(v15 + 1168) = v81 != -1;
                  goto LABEL_184;
                }

                if (v98.__r_.__value_.__r.__words[0] == 0x63696C6C6174656DLL)
                {
LABEL_196:
                  std::string::operator=((v15 + 640), &__str);
                  v73 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
                  *(v15 + 326) = v73;
                  *(v15 + 1272) = v73 != -1;
                  goto LABEL_184;
                }

                goto LABEL_202;
              }

              v72 = &v98;
LABEL_198:
              data = v72->__r_.__value_.__l.__data_;
              v75 = *(v72->__r_.__value_.__r.__words + 3);
              if (data != 1667330159 || v75 != 2037672291)
              {
                goto LABEL_202;
              }

              v77 = 708;
            }

            sub_29AA20B70(&v105, &v15[v77], &__str);
            v13 = v15;
            goto LABEL_4;
          }
        }

        goto LABEL_4;
      }
    }

    else if (HIBYTE(v102))
    {
      goto LABEL_11;
    }

    v12 = (v12 + 1);
  }

  v82 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v83 = *(a1 + 104) + 56 * a2;
    if (*(v83 + 23) < 0)
    {
      v83 = *v83;
    }

    v84 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v82 - v11));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read mdl %s (%d lines) in %lu ms\n", v85, v86, v83, v12, v84 / 1000000);
  }

  v92[0] = *MEMORY[0x29EDC9528];
  v87 = *(MEMORY[0x29EDC9528] + 72);
  *(v92 + *(v92[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v92[2] = v87;
  v93 = MEMORY[0x29EDC9570] + 16;
  if (v95 < 0)
  {
    operator delete(v94[7].__locale_);
  }

  v93 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v94);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v96);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v100);
  }

  return 1;
}

void sub_29AA20484(_Unwind_Exception *a1)
{
  sub_29A008B0C(&STACK[0x758]);
  if (*(v1 - 217) < 0)
  {
    operator delete(*(v1 - 240));
  }

  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA2051C(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 112);
  v8 = *(a2 + 80);
  v7 = *(a2 + 96);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = v7;
  *(a1 + 112) = v6;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v10;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  v11 = *(a2 + 216);
  v12 = *(a2 + 200);
  v13 = *(a2 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v13;
  *(a1 + 200) = v12;
  *(a1 + 216) = v11;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 224) = *(a2 + 224);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v14 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v14;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  v15 = *(a2 + 320);
  v17 = *(a2 + 288);
  v16 = *(a2 + 304);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v17;
  *(a1 + 304) = v16;
  *(a1 + 320) = v15;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v18 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v18;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  v19 = *(a2 + 424);
  v21 = *(a2 + 392);
  v20 = *(a2 + 408);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v21;
  *(a1 + 408) = v20;
  *(a1 + 424) = v19;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 432) = *(a2 + 432);
  v22 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 456);
  *v22 = v23;
  *(a2 + 463) = 0;
  *(a2 + 440) = 0;
  v24 = *(a2 + 528);
  v26 = *(a2 + 496);
  v25 = *(a2 + 512);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v26;
  *(a1 + 512) = v25;
  *(a1 + 528) = v24;
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 536) = *(a2 + 536);
  v27 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v27);
  }

  v28 = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *v27 = v28;
  *(a2 + 567) = 0;
  *(a2 + 544) = 0;
  v29 = *(a2 + 632);
  v31 = *(a2 + 600);
  v30 = *(a2 + 616);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v31;
  *(a1 + 616) = v30;
  *(a1 + 632) = v29;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 640) = *(a2 + 640);
  v32 = (a1 + 648);
  if (*(a1 + 671) < 0)
  {
    operator delete(*v32);
  }

  v33 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *v32 = v33;
  *(a2 + 671) = 0;
  *(a2 + 648) = 0;
  v34 = *(a2 + 736);
  v36 = *(a2 + 704);
  v35 = *(a2 + 720);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = v36;
  *(a1 + 720) = v35;
  *(a1 + 736) = v34;
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 744) = *(a2 + 744);
  v37 = (a1 + 752);
  if (*(a1 + 775) < 0)
  {
    operator delete(*v37);
  }

  v38 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *v37 = v38;
  *(a2 + 775) = 0;
  *(a2 + 752) = 0;
  v39 = *(a2 + 840);
  v41 = *(a2 + 808);
  v40 = *(a2 + 824);
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 808) = v41;
  *(a1 + 824) = v40;
  *(a1 + 840) = v39;
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 848) = *(a2 + 848);
  v42 = (a1 + 856);
  if (*(a1 + 879) < 0)
  {
    operator delete(*v42);
  }

  v43 = *(a2 + 856);
  *(a1 + 872) = *(a2 + 872);
  *v42 = v43;
  *(a2 + 879) = 0;
  *(a2 + 856) = 0;
  v44 = *(a2 + 944);
  v46 = *(a2 + 912);
  v45 = *(a2 + 928);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 912) = v46;
  *(a1 + 928) = v45;
  *(a1 + 944) = v44;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 952) = *(a2 + 952);
  v47 = (a1 + 960);
  if (*(a1 + 983) < 0)
  {
    operator delete(*v47);
  }

  v48 = *(a2 + 960);
  *(a1 + 976) = *(a2 + 976);
  *v47 = v48;
  *(a2 + 983) = 0;
  *(a2 + 960) = 0;
  v49 = *(a2 + 1048);
  v51 = *(a2 + 1016);
  v50 = *(a2 + 1032);
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1016) = v51;
  *(a1 + 1032) = v50;
  *(a1 + 1048) = v49;
  *(a1 + 984) = *(a2 + 984);
  *(a1 + 1056) = *(a2 + 1056);
  v52 = (a1 + 1064);
  if (*(a1 + 1087) < 0)
  {
    operator delete(*v52);
  }

  v53 = *(a2 + 1064);
  *(a1 + 1080) = *(a2 + 1080);
  *v52 = v53;
  *(a2 + 1087) = 0;
  *(a2 + 1064) = 0;
  v54 = *(a2 + 1152);
  v55 = *(a2 + 1136);
  v56 = *(a2 + 1120);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = v56;
  *(a1 + 1136) = v55;
  *(a1 + 1152) = v54;
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1168) = *(a2 + 1168);
  v57 = (a1 + 1176);
  if (*(a1 + 1199) < 0)
  {
    operator delete(*v57);
  }

  v58 = *(a2 + 1176);
  *(a1 + 1192) = *(a2 + 1192);
  *v57 = v58;
  *(a2 + 1199) = 0;
  *(a2 + 1176) = 0;
  v59 = *(a2 + 1264);
  v60 = *(a2 + 1248);
  v61 = *(a2 + 1232);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1232) = v61;
  *(a1 + 1248) = v60;
  *(a1 + 1264) = v59;
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1272) = *(a2 + 1272);
  v62 = (a1 + 1280);
  if (*(a1 + 1303) < 0)
  {
    operator delete(*v62);
  }

  v63 = *(a2 + 1280);
  *(a1 + 1296) = *(a2 + 1296);
  *v62 = v63;
  *(a2 + 1303) = 0;
  *(a2 + 1280) = 0;
  *(a1 + 1304) = *(a2 + 1304);
  v64 = *(a2 + 1320);
  v65 = *(a2 + 1336);
  v66 = *(a2 + 1352);
  *(a1 + 1368) = *(a2 + 1368);
  *(a1 + 1336) = v65;
  *(a1 + 1352) = v66;
  *(a1 + 1320) = v64;
  v67 = *(a2 + 1376);
  v68 = *(a2 + 1392);
  *(a1 + 1408) = *(a2 + 1408);
  *(a1 + 1392) = v68;
  *(a1 + 1376) = v67;
  *(a1 + 1416) = *(a2 + 1416);
  v69 = (a1 + 1424);
  if (*(a1 + 1447) < 0)
  {
    operator delete(*v69);
  }

  v70 = *(a2 + 1424);
  *(a1 + 1440) = *(a2 + 1440);
  *v69 = v70;
  *(a2 + 1447) = 0;
  *(a2 + 1424) = 0;
  v71 = *(a2 + 1512);
  v73 = *(a2 + 1480);
  v72 = *(a2 + 1496);
  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1480) = v73;
  *(a1 + 1496) = v72;
  *(a1 + 1512) = v71;
  *(a1 + 1448) = *(a2 + 1448);
  *(a1 + 1520) = *(a2 + 1520);
  v74 = (a1 + 1528);
  if (*(a1 + 1551) < 0)
  {
    operator delete(*v74);
  }

  v75 = *(a2 + 1528);
  *(a1 + 1544) = *(a2 + 1544);
  *v74 = v75;
  *(a2 + 1551) = 0;
  *(a2 + 1528) = 0;
  v76 = *(a2 + 1616);
  v77 = *(a2 + 1600);
  v78 = *(a2 + 1584);
  *(a1 + 1568) = *(a2 + 1568);
  *(a1 + 1584) = v78;
  *(a1 + 1600) = v77;
  *(a1 + 1616) = v76;
  *(a1 + 1552) = *(a2 + 1552);
  *(a1 + 1624) = *(a2 + 1624);
  v79 = (a1 + 1632);
  if (*(a1 + 1655) < 0)
  {
    operator delete(*v79);
  }

  v80 = *(a2 + 1632);
  *(a1 + 1648) = *(a2 + 1648);
  *v79 = v80;
  *(a2 + 1655) = 0;
  *(a2 + 1632) = 0;
  v81 = *(a2 + 1720);
  v83 = *(a2 + 1688);
  v82 = *(a2 + 1704);
  *(a1 + 1672) = *(a2 + 1672);
  *(a1 + 1688) = v83;
  *(a1 + 1704) = v82;
  *(a1 + 1720) = v81;
  *(a1 + 1656) = *(a2 + 1656);
  *(a1 + 1728) = *(a2 + 1728);
  v84 = (a1 + 1736);
  if (*(a1 + 1759) < 0)
  {
    operator delete(*v84);
  }

  v85 = *(a2 + 1736);
  *(a1 + 1752) = *(a2 + 1752);
  *v84 = v85;
  *(a2 + 1759) = 0;
  *(a2 + 1736) = 0;
  *(a1 + 1760) = *(a2 + 1760);
  v86 = *(a2 + 1776);
  v87 = *(a2 + 1792);
  v88 = *(a2 + 1808);
  *(a1 + 1824) = *(a2 + 1824);
  *(a1 + 1808) = v88;
  *(a1 + 1792) = v87;
  *(a1 + 1776) = v86;
  return a1;
}

uint64_t sub_29AA20B70(uint64_t a1, uint64_t a2, std::string *__str)
{
  std::string::operator=((a2 + 8), __str);
  result = adobe::usd::addImage(*a1, __str, *(a1 + 8), *(a1 + 16), **(a1 + 24));
  *(a2 + 32) = result;
  *a2 = result != -1;
  return result;
}

uint64_t adobe::usd::readObj(uint64_t ***a1, std::string *a2, char a3)
{
  v5 = mach_absolute_time();
  pxrInternal__aapl__pxrReserved__::TfGetBaseName(a2, &v17);
  sub_29A095658(a1 + 1, &v17.__r_.__value_.__l.__data_, &v17);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (adobe::usd::readFileContents(a2, &v14))
  {
    v6 = mach_absolute_time();
    if (sub_29AA17830(0))
    {
      v7 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v6 - v5));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("read obj time: %lu\n", v8, v9, v7 / 1000000);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    adobe::usd::readObjInternal(a1, &v14, &v11);
  }

  *&v11 = "usdObj/obj.cpp";
  *(&v11 + 1) = "readObj";
  *&v12 = 1589;
  *(&v12 + 1) = "BOOL adobe::usd::readObj(Obj &, const std::string &, BOOL)";
  LOBYTE(v13) = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 3, "Failed reading obj file");
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29AA20F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  sub_29A0EB4E8(&a31);
  sub_29A0EB4E8(&a37);
  v39 = *(v37 - 136);
  if (v39)
  {
    *(v37 - 128) = v39;
    operator delete(v39);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(a1);
}

void adobe::usd::readObj(pxrInternal__aapl__pxrReserved__ *a1, uint64_t *a2)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  adobe::usd::readObjInternal(a1, a2, v2);
}

uint64_t adobe::usd::writeObjHeader(uint64_t a1, uint64_t a2)
{
  v14 = 128000;
  v18 = 0;
  v19 = a2;
  v15 = operator new[](0x1F400uLL);
  v16 = v15 + 128000;
  v17 = v15;
  sub_29A008E78(__p, "# Obj model");
  std::ostream::write();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "\n# This model was generated by the USD fileformat plugin");
  std::ostream::write();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(a1 + 128);
  for (i = *(a1 + 136); v3 != i; v3 += 24)
  {
    sub_29A008E78(&v11, "\n");
    v5 = *(v3 + 23);
    if (v5 >= 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = *v3;
    }

    if (v5 >= 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = *(v3 + 8);
    }

    v8 = std::string::append(&v11, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::ostream::write();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  ++v18;
  std::ostream::write();
  return sub_29AA23A6C(&v14);
}

uint64_t adobe::usd::writeObjGeometry(void *a1, uint64_t a2)
{
  v33 = 128000;
  v37 = 0;
  v38 = a2;
  v34 = operator new[](0x1F400uLL);
  v35 = v34 + 128000;
  v36 = v34;
  if (a1[14] != a1[13])
  {
    sub_29A008E78(&__p, "\n\nmtllib");
    std::ostream::write();
    if (v32 < 0)
    {
      operator delete(__p);
    }

    v3 = a1[13];
    for (i = a1[14]; v3 != i; v3 += 56)
    {
      std::operator+<char>();
      std::ostream::write();
      if (v32 < 0)
      {
        operator delete(__p);
      }
    }
  }

  v5 = a1[4];
  if (a1[5] != v5)
  {
    v6 = 0;
    do
    {
      v7 = (v5 + 48 * v6);
      if (*(v7 + 23) < 0)
      {
        sub_29A008D14(__dst, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v29 = *(v7 + 2);
        *__dst = v8;
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(__dst[0]);
      }

      v9 = *(v7 + 3);
      if (*(v7 + 4) != v9)
      {
        v10 = 0;
        do
        {
          v11 = (v9 + 416 * v10);
          if (*(v11 + 23) < 0)
          {
            sub_29A008D14(v26, *v11, *(v11 + 1));
          }

          else
          {
            v12 = *v11;
            v27 = *(v11 + 2);
            *v26 = v12;
          }

          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[0]);
          }

          sub_29A011440(&__p, *(v11 + 28));
          v13 = __p;
          if (v31 != __p)
          {
            v14 = 0;
            v15 = (v31 - __p) >> 2;
            v16 = *(v11 + 32);
            if (v15 <= 1)
            {
              v15 = 1;
            }

            v17 = __p;
            do
            {
              *v17++ = v14;
              v18 = *v16++;
              v14 += v18;
              --v15;
            }

            while (v15);
          }

          v19 = *(v11 + 48);
          v20 = *(v11 + 49);
          if (v19 != v20)
          {
            do
            {
              if (*v19 != -1)
              {
                v21 = a1[7] + 1832 * *v19;
                if (*(v21 + 31) < 0)
                {
                  sub_29A008D14(v24, *(v21 + 8), *(v21 + 16));
                }

                else
                {
                  v22 = *(v21 + 8);
                  v25 = *(v21 + 24);
                  *v24 = v22;
                }

                if (SHIBYTE(v25) < 0)
                {
                  operator delete(v24[0]);
                }
              }

              v19 += 12;
            }

            while (v19 != v20);
            v13 = __p;
          }

          if (v13)
          {
            v31 = v13;
            operator delete(v13);
          }

          ++v10;
          v9 = *(v7 + 3);
        }

        while (v10 < 0x4EC4EC4EC4EC4EC5 * ((*(v7 + 4) - v9) >> 5));
      }

      ++v6;
      v5 = a1[4];
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[5] - v5) >> 4));
  }

  ++v37;
  std::ostream::write();
  return sub_29AA23A6C(&v33);
}

void sub_29AA21534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_29AA23A6C(&a27);
  _Unwind_Resume(a1);
}

uint64_t adobe::usd::writeObjMaterials(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A008864(v40);
  v39 = v40;
  v5 = *(a2 + 32);
  for (i = *(a2 + 40); v5 != i; ++v5)
  {
    v7 = *v5;
    v8 = *(a1 + 56);
    sub_29A00911C(&v41, "\n", 1);
    v9 = sub_29A00911C(&v41, "newmtl ", 7);
    v10 = v8 + 1832 * v7;
    v11 = *(v10 + 31);
    if (v11 >= 0)
    {
      v12 = v10 + 8;
    }

    else
    {
      v12 = *(v10 + 8);
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 31);
    }

    else
    {
      v13 = *(v10 + 16);
    }

    v14 = sub_29A00911C(v9, v12, v13);
    sub_29A00911C(v14, "\n", 1);
    if (*(v10 + 36) != -1.0 || *(v10 + 40) != -1.0 || *(v10 + 44) != -1.0)
    {
      sub_29A00911C(&v41, "Ka ", 3);
      v15 = std::ostream::operator<<();
      sub_29A00911C(v15, " ", 1);
      v16 = std::ostream::operator<<();
      sub_29A00911C(v16, " ", 1);
      v17 = std::ostream::operator<<();
      sub_29A00911C(v17, "\n", 1);
    }

    if (*(v10 + 48) != -1.0 || *(v10 + 52) != -1.0 || *(v10 + 56) != -1.0)
    {
      sub_29A00911C(&v41, "Kd ", 3);
      v18 = std::ostream::operator<<();
      sub_29A00911C(v18, " ", 1);
      v19 = std::ostream::operator<<();
      sub_29A00911C(v19, " ", 1);
      v20 = std::ostream::operator<<();
      sub_29A00911C(v20, "\n", 1);
    }

    if (*(v10 + 60) != -1.0 || *(v10 + 64) != -1.0 || *(v10 + 68) != -1.0)
    {
      sub_29A00911C(&v41, "Ks ", 3);
      v21 = std::ostream::operator<<();
      sub_29A00911C(v21, " ", 1);
      v22 = std::ostream::operator<<();
      sub_29A00911C(v22, " ", 1);
      v23 = std::ostream::operator<<();
      sub_29A00911C(v23, "\n", 1);
    }

    if (*(v10 + 72) != -1.0 || *(v10 + 76) != -1.0 || *(v10 + 80) != -1.0)
    {
      sub_29A00911C(&v41, "Tr ", 3);
      v24 = std::ostream::operator<<();
      sub_29A00911C(v24, " ", 1);
      v25 = std::ostream::operator<<();
      sub_29A00911C(v25, " ", 1);
      v26 = std::ostream::operator<<();
      sub_29A00911C(v26, "\n", 1);
    }

    if (*(v10 + 32) != -1)
    {
      v27 = sub_29A00911C(&v41, "illum ", 6);
      v28 = MEMORY[0x29C2C1ED0](v27, *(v10 + 32));
      sub_29A00911C(v28, "\n", 1);
    }

    if (*(v10 + 96) != -1.0)
    {
      if (*(v10 + 100))
      {
        v29 = "d -halo ";
      }

      else
      {
        v29 = "d ";
      }

      if (*(v10 + 100))
      {
        v30 = 8;
      }

      else
      {
        v30 = 2;
      }

      sub_29A00911C(&v41, v29, v30);
      v31 = std::ostream::operator<<();
      sub_29A00911C(v31, "\n", 1);
    }

    if (*(v10 + 104) != -1.0)
    {
      sub_29A00911C(&v41, "Ns ", 3);
      v32 = std::ostream::operator<<();
      sub_29A00911C(v32, "\n", 1);
    }

    if (*(v10 + 108) != -1.0)
    {
      sub_29A00911C(&v41, "sharpness ", 10);
      v33 = std::ostream::operator<<();
      sub_29A00911C(v33, "\n", 1);
    }

    if (*(v10 + 112) != -1.0)
    {
      sub_29A00911C(&v41, "Ni ", 3);
      v34 = std::ostream::operator<<();
      sub_29A00911C(v34, "\n", 1);
    }

    sub_29A008E78(&__p, "map_Ka");
    sub_29AA21D14(&v39, &__p, v10 + 120);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "map_Kd");
    sub_29AA21D14(&v39, &__p, v10 + 224);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "map_Ks");
    sub_29AA21D14(&v39, &__p, v10 + 328);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "map_Ns");
    sub_29AA21D14(&v39, &__p, v10 + 432);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "map_d");
    sub_29AA21D14(&v39, &__p, v10 + 640);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "norm");
    sub_29AA21D14(&v39, &__p, v10 + 744);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "decal");
    sub_29AA21D14(&v39, &__p, v10 + 848);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "disp");
    sub_29AA21D14(&v39, &__p, v10 + 952);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "bump");
    sub_29AA21D14(&v39, &__p, v10 + 1056);
    if (v38 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  std::ostream::write();
  if (v38 < 0)
  {
    operator delete(__p);
  }

  v40[0] = *MEMORY[0x29EDC9528];
  v35 = *(MEMORY[0x29EDC9528] + 72);
  *(v40 + *(v40[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v41 = v35;
  v42 = MEMORY[0x29EDC9570] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v43);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v45);
}

void sub_29AA21C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a18);
  _Unwind_Resume(a1);
}

void *sub_29AA21D14(void *result, uint64_t ***a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  if (v3)
  {
    v5 = result;
    v6 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v7 = v6;
    }

    sub_29A00911C((*result + 16), a2, v7);
    if (*(a3 + 76) != 1.0 || *(a3 + 80) != 1.0 || *(a3 + 84) != 1.0)
    {
      sub_29A00911C((*v5 + 16), " -s ", 4);
      v10 = std::ostream::operator<<();
      sub_29A00911C(v10, " ", 1);
      v11 = std::ostream::operator<<();
      sub_29A00911C(v11, " 1.0", 4);
    }

    if (*(a3 + 64) != 0.0 || *(a3 + 68) != 0.0 || *(a3 + 72) != 0.0)
    {
      sub_29A00911C((*v5 + 16), " -o ", 4);
      v12 = std::ostream::operator<<();
      sub_29A00911C(v12, " ", 1);
      v13 = std::ostream::operator<<();
      sub_29A00911C(v13, " 0.0", 4);
    }

    v14 = sub_29A00911C((*v5 + 16), " ", 1);
    v15 = *(a3 + 31);
    if (v15 >= 0)
    {
      v16 = a3 + 8;
    }

    else
    {
      v16 = *(a3 + 8);
    }

    if (v15 >= 0)
    {
      v17 = *(a3 + 31);
    }

    else
    {
      v17 = *(a3 + 16);
    }

    v18 = sub_29A00911C(v14, v16, v17);

    return sub_29A00911C(v18, "\n", 1);
  }

  return result;
}

uint64_t adobe::usd::writeObj(void *a1, std::string *__str)
{
  v34[19] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfGetPathName(&v25, __str);
  pxrInternal__aapl__pxrReserved__::TfMakeDirs(&v25, 0xFFFFFFFFLL, 1);
  sub_29AA223E0(v32, __str, 16);
  if (v33[15])
  {
    adobe::usd::writeObjHeader(a1, v32);
    adobe::usd::writeObjGeometry(a1, v32);
    v5 = a1[13];
    for (i = a1[14]; v5 != i; v5 += 7)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v25.__r_.__value_.__l.__data_, v5, &__p);
      sub_29AA223E0(v26, &__p, 16);
      v8 = v30;
      if (v30)
      {
        adobe::usd::writeObjMaterials(a1, v5, v26);
      }

      else
      {
        v19 = "usdObj/obj.cpp";
        v20 = "writeObj";
        v21 = 1871;
        v22 = "BOOL adobe::usd::writeObj(const Obj &, const std::string &, BOOL)";
        v23 = 0;
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v19, "Failed to open obj material library file %s", v7, p_p);
      }

      v26[0] = &unk_2A206F178;
      v31[0] = &unk_2A206F1C8;
      v27 = &unk_2A206F1A0;
      MEMORY[0x29C2C1D20](&v28);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v8)
      {
        goto LABEL_35;
      }
    }

    v10 = a1[10];
    v11 = a1[11];
    if (v10 == v11)
    {
LABEL_30:
      v15 = 1;
      goto LABEL_36;
    }

    while (1)
    {
      if ((*(v10 + 47) & 0x8000000000000000) != 0)
      {
        if (!*(v10 + 32))
        {
          goto LABEL_29;
        }
      }

      else if (!*(v10 + 47))
      {
        goto LABEL_29;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v25.__r_.__value_.__l.__data_, (v10 + 24), &__p);
      pxrInternal__aapl__pxrReserved__::TfGetPathName(&v18, &__p);
      pxrInternal__aapl__pxrReserved__::TfMakeDirs(&v18, 0xFFFFFFFFLL, 1);
      sub_29AA223E0(v26, &__p, 20);
      v13 = v30;
      if (v30)
      {
        std::ostream::write();
        if (!std::filebuf::close())
        {
          std::ios_base::clear((v26 + *(v26[0] - 24)), *&v29[*(v26[0] - 24)] | 4);
        }
      }

      else
      {
        v19 = "usdObj/obj.cpp";
        v20 = "writeObj";
        v21 = 1885;
        v22 = "BOOL adobe::usd::writeObj(const Obj &, const std::string &, BOOL)";
        v23 = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &__p;
        }

        else
        {
          v14 = __p.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v19, "Failed to open texture file %s", v12, v14);
      }

      v26[0] = &unk_2A206F178;
      v31[0] = &unk_2A206F1C8;
      v27 = &unk_2A206F1A0;
      MEMORY[0x29C2C1D20](&v28);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](v31);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v13)
      {
        goto LABEL_35;
      }

LABEL_29:
      v10 += 88;
      if (v10 == v11)
      {
        goto LABEL_30;
      }
    }
  }

  v26[0] = "usdObj/obj.cpp";
  v26[1] = "writeObj";
  v27 = 1859;
  v28 = "BOOL adobe::usd::writeObj(const Obj &, const std::string &, BOOL)";
  v29[0] = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = __str;
  }

  else
  {
    v16 = __str->__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v26, "Failed to open obj file %s", v4, v16);
LABEL_35:
  v15 = 0;
LABEL_36:
  v32[0] = &unk_2A206F178;
  v34[0] = &unk_2A206F1C8;
  v32[2] = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](v33);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v34);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_29AA2233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_29AA22564(&STACK[0x2C8]);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AA223E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 480) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2A206F1A0;
  *a1 = &unk_2A206F2B8;
  *(a1 + 432) = &unk_2A206F2E0;
  std::ios_base::init((a1 + 432), (a1 + 24));
  *(a1 + 568) = 0;
  *(a1 + 576) = -1;
  *a1 = &unk_2A206F178;
  *(a1 + 432) = &unk_2A206F1C8;
  *(a1 + 16) = &unk_2A206F1A0;
  MEMORY[0x29C2C1D10](a1 + 24);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29AA22524(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

void *sub_29AA22564(void *a1)
{
  *a1 = &unk_2A206F178;
  v2 = a1 + 54;
  a1[54] = &unk_2A206F1C8;
  a1[2] = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v2);
  return a1;
}

uint64_t sub_29AA22610(uint64_t a1, __int128 *a2)
{
  v3 = (a1 + 280);
  *a1 = 0;
  v4 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(a1 + 32) = -1;
  __asm { FMOV            V5.4S, #-1.0 }

  *(a1 + 36) = _Q5;
  *(a1 + 52) = _Q5;
  *(a1 + 68) = _Q5;
  *(a1 + 84) = _Q5;
  *(a1 + 100) = 0;
  __asm { FMOV            V6.2S, #-1.0 }

  *(a1 + 104) = _D6;
  *(a1 + 112) = -1082130432;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 156) = 257;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0;
  *(a1 + 172) = 4;
  *(a1 + 176) = xmmword_29B4DB580;
  *(a1 + 192) = xmmword_29B4DB590;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 256) = -1;
  *(a1 + 260) = 257;
  *(a1 + 264) = 1065353216;
  *(a1 + 272) = 0;
  *(a1 + 276) = 4;
  *v3 = xmmword_29B4DB580;
  v3[1] = xmmword_29B4DB590;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 360) = -1;
  *(a1 + 364) = 257;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0;
  *(a1 + 380) = 4;
  *(a1 + 384) = xmmword_29B4DB580;
  *(a1 + 400) = xmmword_29B4DB590;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 464) = -1;
  *(a1 + 468) = 257;
  *(a1 + 472) = 1065353216;
  *(a1 + 480) = 0;
  *(a1 + 484) = 4;
  v3[13] = xmmword_29B4DB580;
  v3[14] = xmmword_29B4DB590;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 568) = -1;
  *(a1 + 572) = 257;
  *(a1 + 576) = 1065353216;
  *(a1 + 584) = 0;
  *(a1 + 588) = 4;
  *(a1 + 592) = xmmword_29B4DB580;
  *(a1 + 608) = xmmword_29B4DB590;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 672) = -1;
  *(a1 + 676) = 257;
  *(a1 + 680) = 1065353216;
  *(a1 + 688) = 0;
  *(a1 + 692) = 4;
  v3[26] = xmmword_29B4DB580;
  v3[27] = xmmword_29B4DB590;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 776) = -1;
  *(a1 + 780) = 257;
  *(a1 + 784) = 1065353216;
  *(a1 + 792) = 0;
  *(a1 + 796) = 4;
  *(a1 + 800) = xmmword_29B4DB580;
  *(a1 + 816) = xmmword_29B4DB590;
  *(a1 + 832) = 0;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 880) = -1;
  *(a1 + 884) = 257;
  *(a1 + 888) = 1065353216;
  *(a1 + 896) = 0;
  *(a1 + 900) = 4;
  v3[39] = xmmword_29B4DB580;
  v3[40] = xmmword_29B4DB590;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 984) = -1;
  *(a1 + 988) = 257;
  *(a1 + 992) = 1065353216;
  *(a1 + 1000) = 0;
  *(a1 + 1004) = 4;
  *(a1 + 1008) = xmmword_29B4DB580;
  *(a1 + 1024) = xmmword_29B4DB590;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1088) = -1;
  *(a1 + 1092) = 257;
  *(a1 + 1096) = 1065353216;
  *(a1 + 1104) = 0;
  *(a1 + 1108) = 4;
  v3[52] = xmmword_29B4DB580;
  v3[53] = xmmword_29B4DB590;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = _D6;
  *(a1 + 1168) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1200) = -1;
  *(a1 + 1204) = 257;
  *(a1 + 1208) = 1065353216;
  *(a1 + 1216) = 0;
  *(a1 + 1220) = 4;
  v3[59] = xmmword_29B4DB580;
  v3[60] = xmmword_29B4DB590;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1304) = -1;
  *(a1 + 1308) = 257;
  *(a1 + 1312) = 1065353216;
  *(a1 + 1320) = 0;
  *(a1 + 1324) = 4;
  *(a1 + 1328) = xmmword_29B4DB580;
  *(a1 + 1344) = xmmword_29B4DB590;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = _Q5;
  *(a1 + 1392) = _Q5;
  *(a1 + 1408) = -1082130432;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1448) = -1;
  *(a1 + 1452) = 257;
  *(a1 + 1456) = 1065353216;
  *(a1 + 1464) = 0;
  *(a1 + 1468) = 4;
  *(a1 + 1472) = xmmword_29B4DB580;
  *(a1 + 1488) = xmmword_29B4DB590;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1528) = 0u;
  *(a1 + 1552) = -1;
  *(a1 + 1556) = 257;
  *(a1 + 1560) = 1065353216;
  *(a1 + 1568) = 0;
  *(a1 + 1572) = 4;
  v3[81] = xmmword_29B4DB580;
  v3[82] = xmmword_29B4DB590;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1632) = 0u;
  *(a1 + 1656) = -1;
  *(a1 + 1660) = 257;
  *(a1 + 1664) = 1065353216;
  *(a1 + 1672) = 0;
  *(a1 + 1676) = 4;
  *(a1 + 1680) = xmmword_29B4DB580;
  *(a1 + 1696) = xmmword_29B4DB590;
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1736) = 0u;
  *(a1 + 1760) = -1;
  *(a1 + 1764) = 257;
  *(a1 + 1768) = 1065353216;
  *(a1 + 1776) = 0;
  *(a1 + 1780) = 4;
  v3[94] = xmmword_29B4DB580;
  v3[95] = xmmword_29B4DB590;
  *(a1 + 1816) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 900) = 3;
  return a1;
}

uint64_t sub_29AA229C4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AA22A88(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AA22A3C(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_29AA19764(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA22A88(char **a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[48 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v18 = v8 + 48;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29AA22BE0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29AA22D44(&v16);
  return v15;
}

void sub_29AA22BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA22D44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA22BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29AA1971C(a1, v5);
      v5 += 48;
    }
  }

  return sub_29AA22CB8(v10);
}

uint64_t sub_29AA22CB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AA22CF0(a1);
  }

  return a1;
}

void sub_29AA22CF0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_29AA1971C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29AA22D44(void **a1)
{
  sub_29AA22D78(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AA22D78(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29AA1971C(v4, i - 48);
  }
}

uint64_t sub_29AA22DC0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AA22E20(a1, a2);
  }

  else
  {
    sub_29AA22F6C(a1, *(a1 + 8), a2);
    result = v3 + 416;
    *(a1 + 8) = v3 + 416;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AA22E20(char **a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x9D89D89D89D89DLL)
  {
    sub_29A00C9A4();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 5);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 5)) >= 0x4EC4EC4EC4EC4ELL)
  {
    v6 = 0x9D89D89D89D89DLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9E1258(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[26 * v2];
  *(&v16 + 1) = &v7[26 * v6];
  sub_29AA22F6C(a1, v15, a2);
  *&v16 = v15 + 26;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_29AA230C0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AA235D4(&v14);
  return v13;
}

void sub_29AA22F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA235D4(va);
  _Unwind_Resume(a1);
}

__n128 sub_29AA22F6C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v4;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *(a2 + 56) = *(a3 + 7);
  *(a3 + 7) = 0;
  v5 = a3[5];
  *(a2 + 64) = a3[4];
  *(a2 + 80) = v5;
  a3[4] = 0u;
  a3[5] = 0u;
  *(a2 + 96) = *(a3 + 12);
  *(a3 + 12) = 0;
  v6 = *(a3 + 104);
  *(a2 + 120) = *(a3 + 120);
  *(a2 + 104) = v6;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a2 + 136) = *(a3 + 17);
  *(a3 + 17) = 0;
  v7 = a3[10];
  *(a2 + 144) = a3[9];
  *(a2 + 160) = v7;
  a3[9] = 0u;
  a3[10] = 0u;
  *(a2 + 176) = *(a3 + 22);
  *(a3 + 22) = 0;
  v8 = *(a3 + 184);
  *(a2 + 200) = *(a3 + 200);
  *(a2 + 184) = v8;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a2 + 216) = *(a3 + 27);
  *(a3 + 27) = 0;
  v9 = a3[15];
  *(a2 + 224) = a3[14];
  *(a2 + 240) = v9;
  a3[14] = 0u;
  a3[15] = 0u;
  *(a2 + 256) = *(a3 + 32);
  *(a3 + 32) = 0;
  v10 = *(a3 + 280);
  *(a2 + 264) = *(a3 + 264);
  *(a2 + 280) = v10;
  *(a3 + 264) = 0u;
  *(a3 + 280) = 0u;
  *(a2 + 296) = *(a3 + 37);
  *(a3 + 37) = 0;
  v11 = a3[20];
  *(a2 + 304) = a3[19];
  *(a2 + 320) = v11;
  a3[19] = 0u;
  a3[20] = 0u;
  *(a2 + 336) = *(a3 + 42);
  *(a3 + 42) = 0;
  v12 = *(a3 + 360);
  *(a2 + 344) = *(a3 + 344);
  *(a2 + 360) = v12;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a2 + 376) = *(a3 + 47);
  *(a3 + 47) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  result = a3[24];
  *(a2 + 384) = result;
  *(a2 + 400) = *(a3 + 50);
  a3[24] = 0uLL;
  *(a3 + 50) = 0;
  *(a2 + 408) = *(a3 + 102);
  return result;
}

char *sub_29AA230C0(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_29AA23164(__dst, v8);
      v8 += 26;
      __dst += 416;
      v7 -= 416;
    }

    while (v8 != a3);
    if (a2 != a3)
    {
      sub_29AA197E8(a2);
    }
  }

  return result;
}

void sub_29AA23140(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_29AA197E8(v1 - 416);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29AA23164(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  *(__dst + 40) = *(a2 + 40);
  *(__dst + 24) = v5;
  v6 = *(a2 + 7);
  *(__dst + 7) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(__dst + 6))
    {
      v7 = *(__dst + 6);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  v8 = a2[5];
  *(__dst + 4) = a2[4];
  *(__dst + 5) = v8;
  v9 = *(a2 + 12);
  *(__dst + 12) = v9;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(__dst + 11))
    {
      v10 = *(__dst + 11);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 104);
  *(__dst + 120) = *(a2 + 120);
  *(__dst + 104) = v11;
  v12 = *(a2 + 17);
  *(__dst + 17) = v12;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(__dst + 16))
    {
      v13 = *(__dst + 16);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  v14 = a2[10];
  *(__dst + 9) = a2[9];
  *(__dst + 10) = v14;
  v15 = *(a2 + 22);
  *(__dst + 22) = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(__dst + 21))
    {
      v16 = *(__dst + 21);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 184);
  *(__dst + 200) = *(a2 + 200);
  *(__dst + 184) = v17;
  v18 = *(a2 + 27);
  *(__dst + 27) = v18;
  if (v18)
  {
    v19 = (v18 - 16);
    if (*(__dst + 26))
    {
      v19 = *(__dst + 26);
    }

    atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
  }

  v20 = a2[15];
  *(__dst + 14) = a2[14];
  *(__dst + 15) = v20;
  v21 = *(a2 + 32);
  *(__dst + 32) = v21;
  if (v21)
  {
    v22 = (v21 - 16);
    if (*(__dst + 31))
    {
      v22 = *(__dst + 31);
    }

    atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
  }

  v23 = *(a2 + 280);
  *(__dst + 264) = *(a2 + 264);
  *(__dst + 280) = v23;
  v24 = *(a2 + 37);
  *(__dst + 37) = v24;
  if (v24)
  {
    v25 = (v24 - 16);
    if (*(__dst + 36))
    {
      v25 = *(__dst + 36);
    }

    atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
  }

  v26 = a2[20];
  *(__dst + 19) = a2[19];
  *(__dst + 20) = v26;
  v27 = *(a2 + 42);
  *(__dst + 42) = v27;
  if (v27)
  {
    v28 = (v27 - 16);
    if (*(__dst + 41))
    {
      v28 = *(__dst + 41);
    }

    atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
  }

  v29 = *(a2 + 360);
  *(__dst + 344) = *(a2 + 344);
  *(__dst + 360) = v29;
  v30 = *(a2 + 47);
  *(__dst + 47) = v30;
  if (v30)
  {
    v31 = (v30 - 16);
    if (*(__dst + 46))
    {
      v31 = *(__dst + 46);
    }

    atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
  }

  *(__dst + 48) = 0;
  *(__dst + 49) = 0;
  *(__dst + 50) = 0;
  sub_29AA23420(__dst + 48, *(a2 + 48), *(a2 + 49), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 49) - *(a2 + 48)) >> 4));
  *(__dst + 102) = *(a2 + 102);
  return __dst;
}

void *sub_29AA23420(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1C11FC(result, a4);
    result = sub_29AA234A8(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29AA23488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AA198A0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA234A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  for (v9[2] = &v12; a2 != a3; v12 = v4)
  {
    *v4 = *a2;
    v5 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 8) = v5;
    v6 = *(a2 + 40);
    *(v4 + 40) = v6;
    if (v6)
    {
      v7 = (v6 - 16);
      if (*(v4 + 32))
      {
        v7 = *(v4 + 32);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      v4 = v12;
    }

    a2 += 48;
    v4 += 48;
  }

  v10 = 1;
  sub_29AA23558(v9);
  return v4;
}

uint64_t sub_29AA23558(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AA23590(a1);
  }

  return a1;
}

uint64_t sub_29AA23590(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

uint64_t sub_29AA235D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 416;
    sub_29AA197E8(v2 - 416);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA23624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 16))
  {
    result = sub_29AA23694(a1, a2, a3, a4, a5);
  }

  else
  {
    *v6 = *a2;
    v7 = *(a2 + 8);
    *(v6 + 24) = *(a2 + 24);
    *(v6 + 8) = v7;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(v6 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    result = v6 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AA23694(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v9 = 0x555555555555555;
  }

  else
  {
    v9 = v6;
  }

  v22 = a1;
  if (v9)
  {
    v10 = sub_29A08E058(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[48 * v5];
  v19 = v10;
  v20 = v11;
  *(&v21 + 1) = &v10[48 * v9];
  *v11 = *a2;
  v12 = *(a2 + 8);
  *(v11 + 24) = *(a2 + 24);
  *(v11 + 8) = v12;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(v11 + 5) = *(a2 + 40);
  *(a2 + 40) = 0;
  *&v21 = v11 + 48;
  v13 = a1[1];
  v14 = &v11[*a1 - v13];
  sub_29AA237E4(a1, *a1, v13, v14, a5);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29AA238EC(&v19);
  return v18;
}

void sub_29AA237D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA238EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA237E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      v6 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v6;
      v7 = *(v5 + 40);
      *(a4 + 40) = v7;
      if (v7)
      {
        v8 = (v7 - 16);
        if (*(a4 + 32))
        {
          v8 = *(a4 + 32);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
        a4 = v13;
      }

      v5 += 48;
      a4 += 48;
      v13 = a4;
    }

    while (v5 != a3);
  }

  v11 = 1;
  sub_29AA238A8(a1, a2, a3);
  return sub_29AA23558(v10);
}

void sub_29AA238A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }
}

uint64_t sub_29AA238EC(uint64_t a1)
{
  sub_29AA23924(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA23924(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    *(result + 16) = v2 - 48;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  return result;
}

void sub_29AA2396C(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 472);
  sub_29A012C90(&v3);
  v3 = (a1 + 448);
  sub_29A012C90(&v3);
  v3 = (a1 + 424);
  sub_29A012C90(&v3);
  v3 = (a1 + 400);
  sub_29A012C90(&v3);
  v3 = (a1 + 376);
  sub_29A012C90(&v3);
  v3 = (a1 + 352);
  sub_29A012C90(&v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

uint64_t sub_29AA23A6C(uint64_t a1)
{
  if (sub_29AA17830(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Destroying buffer. Flush count %d\n", v2, v3, *(a1 + 32));
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_29AA23AC8(void *a1)
{
  *(a1 - 2) = &unk_2A206F178;
  a1[52] = &unk_2A206F1C8;
  *a1 = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x29C2C4390);
}

void sub_29AA23B6C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_2A206F178;
  v1[54] = &unk_2A206F1C8;
  v1[2] = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x29C2C4390);
}

void sub_29AA23C2C(void *a1)
{
  *a1 = &unk_2A206F178;
  v2 = a1 + 54;
  a1[54] = &unk_2A206F1C8;
  a1[2] = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v2);

  operator delete(a1);
}

void sub_29AA23CE0(void *a1)
{
  v1 = a1 - 2;
  *(a1 - 2) = &unk_2A206F178;
  v2 = a1 + 52;
  a1[52] = &unk_2A206F1C8;
  *a1 = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v2);

  operator delete(v1);
}

void sub_29AA23D8C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_2A206F178;
  v1[54] = &unk_2A206F1C8;
  v1[2] = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v1 + 54);

  operator delete(v1);
}

unsigned __int8 *sub_29AA23E54(unsigned __int8 *result, unsigned __int8 *a2, float *a3, uint64_t a4)
{
  if (result != a2)
  {
    v104 = v4;
    v105 = v5;
    v7 = BYTE4(a4);
    v102 = 0u;
    v103 = 0u;
    *&v101[7] = 0;
    v100 = 0;
    *v101 = 0;
    v99 = 0;
    v8 = *result;
    v9 = result;
    v10 = v8 == 45;
    *&v101[8] = v8 == 45;
    if (v8 == 45)
    {
      v9 = (result + 1);
      if (result + 1 == a2)
      {
        return sub_29AA2472C(result, a2, a3);
      }

      v11 = *v9;
      if ((v11 - 48) >= 0xA && v11 != BYTE4(a4))
      {
        return sub_29AA2472C(result, a2, a3);
      }
    }

    v13 = a2 - v9;
    if (a2 - v9 < 8)
    {
      v14 = 0;
      v16 = v9;
      v15 = v9;
    }

    else
    {
      v14 = 0;
      v15 = v9;
      v16 = v9;
      do
      {
        v17 = *v16 - 0x3030303030303030;
        if ((((*v16 + 0x4646464646464646) | v17) & 0x8080808080808080) != 0)
        {
          break;
        }

        v14 = 100000000 * v14 + ((0xF424000000064 * ((10 * v17 + (v17 >> 8)) & 0xFF000000FFLL) + 0x271000000001 * (((10 * v17 + (v17 >> 8)) >> 16) & 0xFF000000FFLL)) >> 32);
        v16 += 8;
        v15 += 8;
        v13 -= 8;
      }

      while (v13 > 7);
      v18 = v16;
      if (v16 == a2)
      {
LABEL_21:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = v15 - v9;
        *&v102 = v9;
        *(&v102 + 1) = v15 - v9;
        v25 = v15 - v9;
        if (v15 == v9)
        {
          return sub_29AA2472C(result, a2, a3);
        }

LABEL_39:
        if ((a4 & 1) != 0 && v18 != a2 && (*v18 | 0x20) == 0x65)
        {
          v31 = v18 + 1;
          if (v18 + 1 == a2)
          {
            v33 = 0;
          }

          else
          {
            v32 = *v31;
            if (v32 == 45)
            {
              v31 = v18 + 2;
              v33 = 1;
            }

            else
            {
              v33 = 0;
              if (v32 == 43)
              {
                v31 = v18 + 2;
              }
            }
          }

          if (v31 != a2 && *v31 - 48 <= 9)
          {
            v34 = 0;
            while (1)
            {
              v35 = *v31 - 48;
              if (v35 > 9)
              {
                break;
              }

              v36 = 10 * v34 + v35;
              if (v34 < 0x10000000)
              {
                v34 = v36;
              }

              if (++v31 == a2)
              {
                v31 = a2;
                break;
              }
            }

            if (v33)
            {
              v34 = -v34;
            }

            v23 += v34;
            v18 = v31;
LABEL_64:
            *v101 = v18;
            v101[9] = 1;
            if (v25 < 20)
            {
              goto LABEL_89;
            }

            v37 = v9;
            do
            {
              v38 = *v37;
              if (v38 != 48 && v38 != v7)
              {
                break;
              }

              v25 -= v38 == 48;
              ++v37;
            }

            while (v37 != a2);
            if (v25 < 20)
            {
LABEL_89:
              v46 = 0;
            }

            else
            {
              v101[10] = 1;
              v14 = 0;
              if (!v24)
              {
                goto LABEL_81;
              }

              v40 = v24 - 1;
              do
              {
                v41 = *v9++;
                v14 = v41 + 10 * v14 - 48;
              }

              while (v14 < 0xDE0B6B3A7640000 && v40-- != 0);
              if (v14 <= 0xDE0B6B3A763FFFFLL)
              {
LABEL_81:
                if (v21)
                {
                  v43 = v21 - 1;
                  v9 = v22;
                  do
                  {
                    v44 = *v9++;
                    v14 = v44 + 10 * v14 - 48;
                  }

                  while (v14 < 0xDE0B6B3A7640000 && v43-- != 0);
                }

                else
                {
                  v9 = v22;
                }

                v15 = v22;
              }

              v23 = v15 - v9 + v34;
              v46 = 1;
            }

            v99 = v23;
            v100 = v14;
            if ((v23 - 11) >= 0xFFFFFFFFFFFFFFEBLL && v14 <= 0x1000000 && (v46 & 1) == 0)
            {
              v47 = v14;
              if (v23 < 0)
              {
                v48 = v47 / flt_29B4DB5D0[-v23];
              }

              else
              {
                v48 = flt_29B4DB5D0[v23] * v47;
              }

              *a3 = v48;
              if (v8 == 45)
              {
                *a3 = -v48;
              }

              return v18;
            }

            v49 = 0;
            v50 = 0;
            if (v23 >= -65 && v14)
            {
              if (v23 <= 38)
              {
                v51 = __clz(v14);
                v52 = qword_29B4DB600[2 * v23 + 684];
                v53 = v52 * (v14 << v51);
                v54 = (v52 * (v14 << v51)) >> 64;
                if ((~v54 & 0x3FFFFFFFFFLL) == 0)
                {
                  v55 = (qword_29B4DB600[2 * v23 + 685] * (v14 << v51)) >> 64;
                  v62 = __CFADD__(v55, v53);
                  v53 += v55;
                  if (v62)
                  {
                    ++v54;
                  }
                }

                v56 = v54 >> 63;
                v57 = (217706 * v23) >> 16;
                if (v53 == -1 && (v23 + 27) >= 0x53)
                {
                  v50 = v54 << (v54 >= 0);
                  v58 = (v57 - v51 - 32618 + v56);
                  goto LABEL_184;
                }

                v59 = v54 >> ((v54 < 0) | 0x26u);
                v60 = v57 - v51 + v56 + 190;
                if (v60 <= 0)
                {
                  if ((1 - v60) <= 0x3F)
                  {
                    v69 = ((v59 >> (1 - v60)) & 1) + (v59 >> (1 - v60));
                    v50 = v69 >> 1;
                    v49 = (v69 & 0x7000000) != 0;
                  }

                  else
                  {
                    v50 = 0;
                    v49 = 0;
                  }
                }

                else
                {
                  v62 = v59 << ((v54 < 0) | 0x26u) != v54 || ((v54 >> ((v54 < 0) | 0x26u)) & 3) != 1 || v53 >= 2;
                  v63 = v62 || (v23 + 17) >= 0x1C;
                  v64 = (v54 >> ((v54 < 0) | 0x26u)) & 0x3FFFFFE;
                  if (v63)
                  {
                    v64 = v54 >> ((v54 < 0) | 0x26u);
                  }

                  v65 = (v64 & 1) + v64;
                  v66 = v65 >> 1;
                  v65 >>= 25;
                  v67 = v65 == 0;
                  if (v65)
                  {
                    ++v60;
                  }

                  v50 = v66 & 0x37FFFFF;
                  if (!v67 || v60 >= 0xFF)
                  {
                    v50 = 0;
                  }

                  if (v60 >= 0xFF)
                  {
                    v49 = 255;
                  }

                  else
                  {
                    v49 = v60;
                  }
                }
              }

              else
              {
                v50 = 0;
                v49 = 255;
              }
            }

            if (!v46)
            {
              goto LABEL_179;
            }

            v70 = 0;
            v71 = 0;
            v72 = v14 + 1;
            if (v23 >= -65 && v14 != -1)
            {
              if (v23 <= 38)
              {
                v73 = __clz(v72);
                v74 = v72 << v73;
                v75 = qword_29B4DB600[2 * v23 + 684];
                v76 = v75 * v74;
                v77 = (v75 * v74) >> 64;
                if ((~v77 & 0x3FFFFFFFFFLL) == 0)
                {
                  v78 = (qword_29B4DB600[2 * v23 + 685] * v74) >> 64;
                  v62 = __CFADD__(v78, v76);
                  v76 += v78;
                  if (v62)
                  {
                    ++v77;
                  }
                }

                v79 = v77 >> 63;
                v80 = (217706 * v23) >> 16;
                if (v76 == -1 && (v23 + 27) >= 0x53)
                {
                  v71 = v77 << (v77 >= 0);
                  v70 = v80 - v73 - 32618 + v79;
                }

                else
                {
                  v81 = v77 >> ((v77 < 0) | 0x26u);
                  v82 = v80 - v73 + v79 + 190;
                  if (v82 <= 0)
                  {
                    if ((1 - v82) <= 0x3F)
                    {
                      v91 = ((v81 >> (1 - v82)) & 1) + (v81 >> (1 - v82));
                      v71 = v91 >> 1;
                      v70 = (v91 & 0x7000000) != 0;
                    }

                    else
                    {
                      v71 = 0;
                      v70 = 0;
                    }
                  }

                  else
                  {
                    v85 = v81 << ((v77 < 0) | 0x26u) != v77 || ((v77 >> ((v77 < 0) | 0x26u)) & 3) != 1 || v76 >= 2 || (v23 + 17) >= 0x1C;
                    v86 = (v77 >> ((v77 < 0) | 0x26u)) & 0x3FFFFFE;
                    if (v85)
                    {
                      v86 = v77 >> ((v77 < 0) | 0x26u);
                    }

                    v87 = (v86 & 1) + v86;
                    v88 = v87 >> 1;
                    v87 >>= 25;
                    v89 = v87 == 0;
                    if (v87)
                    {
                      ++v82;
                    }

                    v71 = v88 & 0x37FFFFF;
                    if (!v89 || v82 >= 0xFF)
                    {
                      v71 = 0;
                    }

                    if (v82 >= 0xFF)
                    {
                      v70 = 255;
                    }

                    else
                    {
                      v70 = v82;
                    }
                  }
                }
              }

              else
              {
                v71 = 0;
                v70 = 255;
              }
            }

            if (v50 == v71 && v49 == v70)
            {
LABEL_179:
              LODWORD(v58) = v49;
LABEL_185:
              v98 = v50 | (v58 << 23);
              if (v10)
              {
                v98 |= 0x80000000;
              }

              *a3 = v98;
              return v18;
            }

            v92 = __clz(v14);
            v93 = v14 << v92;
            v94 = qword_29B4DB600[2 * v23 + 684];
            v95 = (v94 * v93) >> 64;
            if ((~v95 & 0x3FFFFFFFFFLL) == 0 && __CFADD__((qword_29B4DB600[2 * v23 + 685] * v93) >> 64, v94 * v93))
            {
              ++v95;
            }

            v96 = v95 >> 63;
            v50 = v95 << ((v95 & 0x8000000000000000) == 0);
            LODWORD(v96) = v96 - v92 + ((217706 * v23) >> 16);
            v58 = (v96 - 32618);
            if (v96 - 32618 >= 0)
            {
              goto LABEL_185;
            }

LABEL_184:
            LODWORD(v50) = sub_29AA248EC(&v99, v50, v58);
            LODWORD(v58) = v97;
            v10 = v101[8];
            goto LABEL_185;
          }

          if ((a4 & 4) != 0)
          {
LABEL_63:
            v34 = 0;
            goto LABEL_64;
          }
        }

        else if ((a4 & 5) != 1)
        {
          goto LABEL_63;
        }

        return sub_29AA2472C(result, a2, a3);
      }
    }

    v19 = 0;
    v18 = &v16[a2 - v15];
    while (1)
    {
      v20 = v16[v19];
      if ((v20 - 48) > 9)
      {
        break;
      }

      v14 = v20 + 10 * v14 - 48;
      if (&v16[++v19] == a2)
      {
        v15 = &v16[a2 - v15];
        goto LABEL_21;
      }
    }

    v15 = &v16[v19];
    v24 = v16 - v9 + v19;
    *&v102 = v9;
    *(&v102 + 1) = v24;
    if (v16[v19] == BYTE4(a4))
    {
      v26 = &a2[~v16 - v19];
      v22 = v15 + 1;
      if (v26 < 8)
      {
        v27 = (v15 + 1);
        v18 = v15 + 1;
      }

      else
      {
        v27 = &v16[v19 + 1];
        v18 = v15 + 1;
        do
        {
          v28 = *v18 - 0x3030303030303030;
          if ((((*v18 + 0x4646464646464646) | v28) & 0x8080808080808080) != 0)
          {
            break;
          }

          v14 = 100000000 * v14 + ((0xF424000000064 * ((10 * v28 + (v28 >> 8)) & 0xFF000000FFLL) + 0x271000000001 * (((10 * v28 + (v28 >> 8)) >> 16) & 0xFF000000FFLL)) >> 32);
          v18 += 8;
          v27 += 8;
          v26 -= 8;
        }

        while (v26 > 7);
      }

      if (v18 != a2)
      {
        v29 = &a2[v18 - v27];
        while (1)
        {
          v30 = *v18 - 48;
          if (v30 > 9)
          {
            break;
          }

          ++v18;
          v14 = 10 * v14 + v30;
          if (v18 == a2)
          {
            v18 = v29;
            break;
          }
        }

        v27 = v18;
      }

      v21 = ~v16 + v27 - v19;
      v23 = &v16[v19 - v27 + 1];
      *&v103 = v15 + 1;
      *(&v103 + 1) = v21;
      v25 = v24 - v23;
      if (v24 == v23)
      {
        return sub_29AA2472C(result, a2, a3);
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v25 = v24;
      v18 = v15;
      if (!v24)
      {
        return sub_29AA2472C(result, a2, a3);
      }
    }

    goto LABEL_39;
  }

  return result;
}

unsigned __int8 *sub_29AA2472C(unsigned __int8 *result, unsigned __int8 *a2, float *a3)
{
  v3 = *result;
  if (v3 == 45)
  {
    v4 = result + 1;
  }

  else
  {
    v4 = result;
  }

  if (a2 - v4 >= 3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 |= aNan_0[v5] ^ v4[v5];
      ++v5;
    }

    while (v5 != 3);
    if ((v6 & 0xDF) != 0)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v8 |= aInf[v7] ^ v4[v7];
        ++v7;
      }

      while (v7 != 3);
      if ((v8 & 0xDF) == 0)
      {
        if (a2 - v4 < 8)
        {
          goto LABEL_31;
        }

        v13 = 0;
        v14 = 0;
        do
        {
          v14 |= aInity[v13] ^ v4[v13 + 3];
          ++v13;
        }

        while (v13 != 5);
        if ((v14 & 0xDF) != 0)
        {
LABEL_31:
          v15 = 3;
        }

        else
        {
          v15 = 8;
        }

        result = &v4[v15];
        v16 = INFINITY;
        if (v3 == 45)
        {
          v16 = -INFINITY;
        }

        *a3 = v16;
      }
    }

    else
    {
      result = v4 + 3;
      v9 = NAN;
      if (v3 == 45)
      {
        v9 = NAN;
      }

      *a3 = v9;
      if (result == a2)
      {
        return a2;
      }

      else if (v4[3] == 40)
      {
        v10 = v4 + 4;
        if (v10 != a2)
        {
          v11 = *v10;
          if (v11 == 41)
          {
            return v10 + 1;
          }

          else
          {
            while ((v11 & 0xDFu) - 65 < 0x1A || (v11 - 58) >= 0xFFFFFFF6 || v11 == 95)
            {
              if (++v10 == a2)
              {
                break;
              }

              v11 = *v10;
              if (v11 == 41)
              {
                return v10 + 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_29AA248EC(int *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 1);
  v6 = *a1;
  if (v5 >> 4 < 0x271)
  {
    v7 = *(a1 + 1);
  }

  else
  {
    do
    {
      v7 = v5 / 0x2710;
      v6 += 4;
      v8 = v5 > 0x5F5E0FF;
      v5 /= 0x2710uLL;
    }

    while (v8);
  }

  if (v7 < 0x64)
  {
    v9 = v7;
  }

  else
  {
    do
    {
      v9 = v7 / 0x64;
      v6 += 2;
      v10 = v7 >> 4;
      v7 /= 0x64uLL;
    }

    while (v10 > 0x270);
  }

  if (v9 >= 0xA)
  {
    do
    {
      ++v6;
      v8 = v9 > 0x63;
      v9 /= 0xAuLL;
    }

    while (v8);
  }

  v22 = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_29AA24B2C(v20, a1, 0x72uLL, &v22);
  v11 = v6 - v22;
  v12 = (v6 - v22 + 1);
  if (v11 + 1 < 0)
  {
    return sub_29AA251D8(v20, a2, v3 + 0x8000, v12);
  }

  if (!sub_29AA25548(v20, v11 + 1) || (sub_29AA259F0(v20, v12) & 1) == 0)
  {
    abort();
  }

  v23 = 0;
  v13 = sub_29AA2548C(v20, &v23);
  if (v21)
  {
    v14 = __clz(*(v20 + v21 - 1));
  }

  else
  {
    v14 = 0;
  }

  v16 = (v13 & 0xFFFFFFFFFFLL) > 0x8000000000 || (v13 & 0xFFFFFFFFFFLL) == 0x8000000000 && v23 || (v13 & 0x1FFFFFFFFFFLL) == 0x18000000000;
  v17 = v16 + (v13 >> 40);
  if (v17 >> 24)
  {
    v18 = 127;
  }

  else
  {
    v18 = 126;
  }

  if (v17 >> 24)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18 - v14 + (v21 << 6) >= 0xFFu;
  }

  if (v19)
  {
    return 0;
  }

  else
  {
    return v17 & 0xFFFFFFFFFF7FFFFFLL;
  }
}

uint64_t sub_29AA24B2C(uint64_t result, void *a2, unint64_t a3, unint64_t *a4)
{
  v77 = result;
  *a4 = 0;
  v6 = a2[4];
  v7 = a2[5];
  v8 = (v6 + v7);
  if (v7 < 8)
  {
    v10 = a2[4];
    v11 = v10;
  }

  else
  {
    v9 = a2[5];
    v10 = a2[4];
    v11 = v10;
    do
    {
      if (*v11 != 0x3030303030303030)
      {
        break;
      }

      ++v11;
      ++v10;
      v9 -= 8;
    }

    while (v9 > 7);
  }

  if (v11 == v8)
  {
    goto LABEL_33;
  }

  v12 = (v11 + v7 + v6 - v10);
  while (*v11 == 48)
  {
    v11 = (v11 + 1);
    if (v11 == v8)
    {
      v11 = v12;
      break;
    }
  }

  if (v11 == v8)
  {
LABEL_33:
    v29 = a2[6];
    if (!v29)
    {
      return result;
    }

    v30 = a2[7];
    v31 = (v29 + v30);
    if (*a4)
    {
      v32 = a2[6];
    }

    else
    {
      if (v30 < 8)
      {
        v52 = a2[6];
        v32 = v52;
      }

      else
      {
        v51 = a2[7];
        v52 = a2[6];
        v32 = v52;
        do
        {
          if (*v32 != 0x3030303030303030)
          {
            break;
          }

          ++v32;
          ++v52;
          v51 -= 8;
        }

        while (v51 > 7);
      }

      if (v32 == v31)
      {
        return result;
      }

      v56 = (v32 + v30 + v29 - v52);
      while (*v32 == 48)
      {
        v32 = (v32 + 1);
        if (v32 == v31)
        {
          v32 = v56;
          break;
        }
      }
    }

    if (v32 != v31)
    {
      v76 = v30 + v29 - 8;
      while (1)
      {
        v33 = *a4;
        if (v31 - v32 < 8)
        {
          v39 = 0;
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = v76 - v32;
          v37 = a3 - v33;
          v38 = 1;
          while (1)
          {
            v39 = v35;
            v20 = v37 >= 8;
            v37 -= 8;
            if (!v20)
            {
              break;
            }

            v40 = *v32++;
            v41 = 10 * (v40 - 0x3030303030303030) + ((v40 - 0x3030303030303030) >> 8);
            v34 = 100000000 * v34 + ((0xF424000000064 * (v41 & 0xFF000000FFLL) + 0x271000000001 * ((v41 >> 16) & 0xFF000000FFLL)) >> 32);
            v33 += 8;
            *a4 = v33;
            v42 = (v36 > 7) & v38;
            v36 -= 8;
            v35 = 8;
            v38 = 0;
            if ((v42 & 1) == 0)
            {
              v39 += 8;
              goto LABEL_45;
            }
          }
        }

        do
        {
LABEL_45:
          if (v32 == v31)
          {
            break;
          }

          if (v33 >= a3)
          {
            break;
          }

          v43 = v39;
          v44 = *v32;
          v32 = (v32 + 1);
          v34 = v44 + 10 * v34 - 48;
          ++v39;
          *a4 = ++v33;
        }

        while (v43 <= 0x11);
        result = sub_29AA25430(v77, qword_29B4DDEB0[v39]);
        if (v33 == a3)
        {
          break;
        }

        if (v34)
        {
          v45 = v77;
          v46 = *(v77 + 496);
          v47 = v46;
          while (v47)
          {
            --v47;
            v20 = __CFADD__(*v45, v34);
            *v45++ += v34;
            v34 = 1;
            if (!v20)
            {
              goto LABEL_56;
            }
          }

          if (v46 <= 0x3D)
          {
            *(v77 + 8 * v46) = v34;
            *(v77 + 496) = v46 + 1;
          }
        }

LABEL_56:
        if (v32 == v31)
        {
          return result;
        }
      }

      if (v34)
      {
        v53 = v77;
        v54 = *(v77 + 496);
        v55 = v54;
        while (v55)
        {
          --v55;
          v20 = __CFADD__(*v53, v34);
          *v53++ += v34;
          v34 = 1;
          if (!v20)
          {
            goto LABEL_113;
          }
        }

        if (v54 <= 0x3D)
        {
          *(v77 + 8 * v54) = v34;
          *(v77 + 496) = v54 + 1;
        }
      }

LABEL_113:
      v71 = v31 - v32;
      if (v31 - v32 < 8)
      {
        goto LABEL_119;
      }

      do
      {
        if (*v32 != 0x3030303030303030)
        {
LABEL_121:
          v72 = v77;
          result = sub_29AA25430(v77, 0xAuLL);
          v69 = *(v77 + 496);
          v73 = v69;
          while (v73)
          {
            --v73;
            v20 = __CFADD__((*v72++)++, 1);
            if (!v20)
            {
              goto LABEL_127;
            }
          }

          goto LABEL_125;
        }

        ++v32;
        v71 -= 8;
      }

      while (v71 > 7);
LABEL_119:
      while (v32 != v31)
      {
        if (*v32 != 48)
        {
          goto LABEL_121;
        }

        v32 = (v32 + 1);
      }
    }

    return result;
  }

  v75 = v7 + v6 - 8;
  while (1)
  {
    v13 = *a4;
    if (v8 - v11 < 8)
    {
      v19 = 0;
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = v75 - v11;
      v17 = a3 - v13;
      v18 = 1;
      while (1)
      {
        v19 = v15;
        v20 = v17 >= 8;
        v17 -= 8;
        if (!v20)
        {
          break;
        }

        v21 = *v11++;
        v22 = 10 * (v21 - 0x3030303030303030) + ((v21 - 0x3030303030303030) >> 8);
        v14 = 100000000 * v14 + ((0xF424000000064 * (v22 & 0xFF000000FFLL) + 0x271000000001 * ((v22 >> 16) & 0xFF000000FFLL)) >> 32);
        v13 += 8;
        *a4 = v13;
        v23 = (v16 > 7) & v18;
        v16 -= 8;
        v15 = 8;
        v18 = 0;
        if ((v23 & 1) == 0)
        {
          v19 += 8;
          goto LABEL_21;
        }
      }
    }

    do
    {
LABEL_21:
      if (v11 == v8)
      {
        break;
      }

      if (v13 >= a3)
      {
        break;
      }

      v24 = v19;
      v25 = *v11;
      v11 = (v11 + 1);
      v14 = v25 + 10 * v14 - 48;
      ++v19;
      *a4 = ++v13;
    }

    while (v24 <= 0x11);
    result = sub_29AA25430(v77, qword_29B4DDEB0[v19]);
    if (v13 == a3)
    {
      break;
    }

    if (v14)
    {
      v26 = v77;
      v27 = *(v77 + 496);
      v28 = v27;
      while (v28)
      {
        --v28;
        v20 = __CFADD__(*v26, v14);
        *v26++ += v14;
        v14 = 1;
        if (!v20)
        {
          goto LABEL_32;
        }
      }

      if (v27 <= 0x3D)
      {
        *(v77 + 8 * v27) = v14;
        *(v77 + 496) = v27 + 1;
      }
    }

LABEL_32:
    if (v11 == v8)
    {
      goto LABEL_33;
    }
  }

  if (v14)
  {
    v48 = v77;
    v49 = *(v77 + 496);
    v50 = v49;
    while (v50)
    {
      --v50;
      v20 = __CFADD__(*v48, v14);
      *v48++ += v14;
      v14 = 1;
      if (!v20)
      {
        goto LABEL_81;
      }
    }

    if (v49 <= 0x3D)
    {
      *(v77 + 8 * v49) = v14;
      *(v77 + 496) = v49 + 1;
    }
  }

LABEL_81:
  v57 = v8 - v11;
  if (v8 - v11 >= 8)
  {
    while (*v11 == 0x3030303030303030)
    {
      ++v11;
      v57 -= 8;
      if (v57 <= 7)
      {
        goto LABEL_84;
      }
    }

    v61 = 1;
    v59 = a2;
LABEL_95:
    v63 = v59[6];
    if (!v63)
    {
      if (!v61)
      {
        return result;
      }

      goto LABEL_107;
    }

    goto LABEL_96;
  }

LABEL_84:
  if (v11 != v8)
  {
    v58 = v11 + 1;
    v59 = a2;
    do
    {
      v60 = *(v58 - 1);
      v62 = v60 == 48;
      v61 = v60 != 48;
      v62 = !v62 || v58++ == v8;
    }

    while (!v62);
    goto LABEL_95;
  }

  v59 = a2;
  v63 = a2[6];
  if (!v63)
  {
    return result;
  }

  LOBYTE(v61) = 0;
LABEL_96:
  v64 = v59[7];
  v65 = v63;
  if (v64 >= 8)
  {
    v66 = v64;
    v65 = v63;
    while (*v65 == 0x3030303030303030)
    {
      ++v65;
      v66 -= 8;
      if (v66 <= 7)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_107;
  }

LABEL_100:
  v67 = (v63 + v64);
  while (v65 != v67)
  {
    if (*v65 != 48)
    {
      goto LABEL_107;
    }

    v65 = (v65 + 1);
  }

  if (v61)
  {
LABEL_107:
    v68 = v77;
    result = sub_29AA25430(v77, 0xAuLL);
    v69 = *(v77 + 496);
    v70 = v69;
    while (v70)
    {
      --v70;
      v20 = __CFADD__((*v68++)++, 1);
      if (!v20)
      {
        goto LABEL_127;
      }
    }

LABEL_125:
    if (v69 < 0x3E)
    {
      *(v77 + 8 * v69) = 1;
      *(v77 + 496) = v69 + 1;
    }

LABEL_127:
    ++*a4;
  }

  return result;
}

unint64_t sub_29AA251D8(unsigned __int16 *a1, unint64_t a2, int a3, int a4)
{
  if (a3 <= -40)
  {
    if (1 - a3 >= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = 1 - a3;
    }

    v8 = a2 >> v10;
    if (1 - a3 > 63)
    {
      v8 = 0;
    }

    v9 = (v8 & 0xFFFFFFFFFF800000) != 0;
  }

  else
  {
    v8 = (a2 >> 40) & 0x7FFFFF;
    v9 = 255;
    if (a3 + 40 >= 255)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v9 = a3 + 40;
    }
  }

  v11 = (v8 | (v9 << 23)) & 0x7F800000;
  if (v11)
  {
    v12 = v11 >> 23;
    v13 = v8 & 0x7FFFFF | 0x800000;
    v14 = v12 - 151;
  }

  else
  {
    v13 = v8 & 0x7FFFFF;
    v14 = -150;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  __src = (2 * v13) | 1;
  WORD4(v66) = 1;
  if (a4 && (sub_29AA25548(&__src, -a4) & 1) == 0)
  {
LABEL_19:
    abort();
  }

  v15 = (v14 - a4);
  if (v15 < 1)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v15 = (a4 - v14);
    p_src = a1;
  }

  else
  {
    p_src = &__src;
  }

  if ((sub_29AA259F0(p_src, v15) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  v17 = a1[248];
  if (v17 <= WORD4(v66))
  {
    if (v17 >= WORD4(v66))
    {
      v20 = 4 * v17;
      do
      {
        v18 = v20 == 0;
        if (!(v20 * 2))
        {
          break;
        }

        v21 = *&a1[v20 - 4];
        v22 = *&v34[v20 * 2];
        if (v21 > v22)
        {
          goto LABEL_23;
        }

        v20 -= 4;
      }

      while (v21 >= v22);
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
LABEL_23:
    v19 = 1;
  }

  v23 = (v19 | BYTE5(a2) & 1u & v18) + (a2 >> 40);
  v24 = v23 >> 24 == 0;
  if (v23 >> 24)
  {
    v25 = 41;
  }

  else
  {
    v25 = 40;
  }

  v26 = v25 + a3;
  v27 = v23 & 0xFFFFFFFFFF7FFFFFLL;
  if (!v24 || v26 >= 0xFF)
  {
    v27 = 0;
  }

  if (1 - a3 >= 64)
  {
    v29 = 64;
  }

  else
  {
    v29 = 1 - a3;
  }

  v30 = a2 >> v29;
  if (1 - a3 <= 63)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31 + ((v19 | v31 & v18) & 1);
  if (a3 <= -40)
  {
    return v32;
  }

  else
  {
    return v27;
  }
}

uint64_t sub_29AA25430(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 496);
  if (!*(a1 + 496))
  {
    return 1;
  }

  v3 = 0;
  v4 = a1;
  v5 = *(a1 + 496);
  do
  {
    v6 = *v4 * a2;
    v7 = __CFADD__(v6, v3);
    v8 = v6 + v3;
    if (v7)
    {
      v3 = ((*v4 * a2) >> 64) + 1;
    }

    else
    {
      v3 = (*v4 * a2) >> 64;
    }

    *v4++ = v8;
    --v5;
  }

  while (v5);
  if (!v3)
  {
    return 1;
  }

  if (v2 <= 0x3D)
  {
    *(a1 + 8 * v2) = v3;
    *(a1 + 496) = v2 + 1;
    return 1;
  }

  return 0;
}

unint64_t sub_29AA2548C(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 496);
  if (v2 == 1)
  {
    v4 = *(a1 + 8 * v2 - 8);
    *a2 = 0;
    return v4 << __clz(v4);
  }

  else if (*(a1 + 496))
  {
    v5 = a1 + 8 * v2;
    v6 = *(v5 - 16);
    v7 = *(v5 - 8);
    v8 = __clz(v7);
    v9 = (v7 << v8) | (v6 >> 1 >> ~v8);
    if (v8)
    {
      v6 <<= v8;
      result = v9;
    }

    else
    {
      result = *(v5 - 8);
    }

    if (v2 < 3)
    {
      v10 = 0;
    }

    else if (*(v5 - 24))
    {
      v10 = 1;
    }

    else
    {
      v11 = (v5 - 32);
      v12 = 3;
      do
      {
        v13 = v12;
        if (v2 == v12)
        {
          break;
        }

        v14 = *v11--;
        ++v12;
      }

      while (!v14);
      v10 = v13 < v2;
    }

    if (v6)
    {
      v10 = 1;
    }

    *a2 = v10;
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_29AA25548(unsigned __int16 *a1, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x87)
  {
LABEL_4:
    if (v2 >= 0x1B)
    {
      v5 = a1[248];
      do
      {
        if (v5)
        {
          v6 = 0;
          v7 = a1;
          v8 = v5;
          do
          {
            v9 = 0x6765C793FA10079DLL * *v7;
            v10 = __CFADD__(v9, v6);
            v11 = v9 + v6;
            if (v10)
            {
              v6 = ((*v7 * 0x6765C793FA10079DuLL) >> 64) + 1;
            }

            else
            {
              v6 = (*v7 * 0x6765C793FA10079DuLL) >> 64;
            }

            *v7 = v11;
            v7 += 4;
            --v8;
          }

          while (v8);
          if (v6)
          {
            if (v5 > 0x3D)
            {
              return 0;
            }

            *&a1[4 * v5++] = v6;
            a1[248] = v5;
          }
        }

        v2 -= 27;
      }

      while (v2 > 0x1A);
    }

    if (v2)
    {
      v12 = a1[248];
      if (a1[248])
      {
        v13 = 0;
        v14 = qword_29B4DDF50[v2];
        v15 = a1;
        v16 = a1[248];
        do
        {
          v17 = *v15 * v14;
          v10 = __CFADD__(v17, v13);
          v18 = v17 + v13;
          if (v10)
          {
            v13 = ((*v15 * v14) >> 64) + 1;
          }

          else
          {
            v13 = (*v15 * v14) >> 64;
          }

          *v15 = v18;
          v15 += 4;
          --v16;
        }

        while (v16);
        if (v13)
        {
          if (v12 > 0x3D)
          {
            return 0;
          }

          *&a1[4 * v12] = v13;
          a1[248] = v12 + 1;
        }
      }
    }

    return 1;
  }

  while (1)
  {
    result = sub_29AA2567C(a1, qword_29B4DE030, 5uLL);
    if (!result)
    {
      return result;
    }

    v2 -= 135;
    if (v2 <= 0x86)
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_29AA2567C(unsigned __int16 *a1, unint64_t *a2, unint64_t a3)
{
  if (a3 == 1)
  {
    v3 = a1[248];
    if (a1[248])
    {
      v4 = 0;
      v5 = *a2;
      v6 = a1;
      v7 = a1[248];
      do
      {
        v8 = *v6 * v5;
        v9 = __CFADD__(v8, v4);
        v10 = v8 + v4;
        if (v9)
        {
          v4 = ((*v6 * v5) >> 64) + 1;
        }

        else
        {
          v4 = (*v6 * v5) >> 64;
        }

        *v6 = v10;
        v6 += 4;
        --v7;
      }

      while (v7);
      if (v4)
      {
        if (v3 > 0x3D)
        {
          return 0;
        }

        *&a1[4 * v3] = v4;
        a1[248] = v3 + 1;
      }
    }
  }

  else
  {
    result = sub_29AA25700(a1, a2, a3);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_29AA25700(unsigned __int16 *__src, unint64_t *a2, unint64_t a3)
{
  v3 = __src[248];
  v28 = 0;
  if (v3 >= 0x3F)
  {
    abort();
  }

  memcpy(__dst, __src, 8 * v3);
  v7 = v28 + v3;
  v28 += v3;
  if (a3)
  {
    if (v3)
    {
      v8 = 0;
      v9 = *a2;
      v10 = __src;
      v11 = v3;
      do
      {
        v12 = *v10 * v9;
        v13 = __CFADD__(v12, v8);
        v14 = v12 + v8;
        if (v13)
        {
          v8 = ((*v10 * v9) >> 64) + 1;
        }

        else
        {
          v8 = (*v10 * v9) >> 64;
        }

        *v10 = v14;
        v10 += 4;
        --v11;
      }

      while (v11);
      if (v8)
      {
        if (v3 == 62)
        {
          return 0;
        }

        *&__src[4 * v3] = v8;
        LOWORD(v3) = v3 + 1;
        __src[248] = v3;
      }
    }

    if (a3 != 1)
    {
      if (a3 <= 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = a3;
      }

      v17 = 1;
      while (1)
      {
        v18 = a2[v17];
        if (v18)
        {
          v26 = 0;
          if (v7 > 0x3Eu)
          {
            return 0;
          }

          memcpy(v25, __dst, 8 * (v7 & 0x1FFF));
          v26 += v7;
          v19 = v26;
          if (v26)
          {
            v20 = 0;
            v21 = v25;
            v22 = v26;
            do
            {
              v23 = *v21 * v18;
              v13 = __CFADD__(v23, v20);
              v24 = v23 + v20;
              if (v13)
              {
                v20 = ((*v21 * v18) >> 64) + 1;
              }

              else
              {
                v20 = (*v21 * v18) >> 64;
              }

              *v21++ = v24;
              --v22;
            }

            while (v22);
            if (v20)
            {
              if (v19 > 0x3Du)
              {
                return 0;
              }

              v25[v19++] = v20;
              v26 = v19;
            }
          }

          else
          {
            v19 = 0;
          }

          if (!sub_29AA258D8(__src, v25, v19, v17))
          {
            return 0;
          }
        }

        if (++v17 == v16)
        {
          LOWORD(v3) = __src[248];
          break;
        }
      }
    }
  }

  while (v3 && !*&__src[4 * v3 - 4])
  {
    LOWORD(v3) = v3 - 1;
    __src[248] = v3;
  }

  return 1;
}

uint64_t sub_29AA258D8(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 496);
  if (v8 < a4 || a3 > v8 - a4)
  {
    v10 = a3 + a4;
    if (a3 + a4 > 0x3E)
    {
      return 0;
    }

    v11 = v10 - v8;
    if (v10 > v8 && v11 >= 1)
    {
      bzero((a1 + 8 * v8), 8 * v11);
    }

    LODWORD(v8) = v10;
    *(a1 + 496) = v10;
  }

  if (!a3)
  {
    return 1;
  }

  v12 = 0;
  v13 = (a1 + 8 * a4);
  v14 = a3;
  do
  {
    v15 = *a2++;
    v16 = *v13 + v15;
    v17 = __CFADD__(*v13, v15);
    v18 = v12 & (v16 == -1);
    if (v12)
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = v16;
    }

    *v13++ = v19;
    v12 = v17 | v18;
    --v14;
  }

  while (v14);
  if (((v17 | v18) & 1) == 0)
  {
    return 1;
  }

  v20 = (a1 + 8 * (a3 + a4));
  v21 = v8 - (a3 + a4);
  if (v8 < a3 + a4)
  {
    v21 = 0;
  }

  while (v21)
  {
    --v21;
    if (!__CFADD__((*v20++)++, 1))
    {
      return 1;
    }
  }

  if (v8 <= 0x3D)
  {
    result = 1;
    *(a1 + 8 * v8) = 1;
    *(a1 + 496) = v8 + 1;
    return result;
  }

  return 0;
}

uint64_t sub_29AA259F0(unsigned __int16 *__src, unint64_t a2)
{
  v4 = a2 & 0x3F;
  if (!v4 || (result = sub_29AA25A94(__src, v4), result))
  {
    if (a2 >= 0x40)
    {
      v6 = a2 >> 6;
      v7 = __src[248];
      v8 = (a2 >> 6) + v7;
      if (__src[248] && v8 <= 0x3E)
      {
        v9 = 8 * v6;
        memmove(&__src[4 * v6], __src, 8 * v7);
        bzero(__src, v9);
        __src[248] += a2 >> 6;
      }

      else if (v8 > 0x3E)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_29AA25A94(uint64_t a1, char a2)
{
  v2 = *(a1 + 496);
  if (!*(a1 + 496))
  {
    return 1;
  }

  v3 = 0;
  v4 = 64 - a2;
  v5 = a1;
  v6 = *(a1 + 496);
  do
  {
    v7 = *v5;
    *v5 = (*v5 << a2) | (v3 >> v4);
    ++v5;
    v3 = v7;
    --v6;
  }

  while (v6);
  v8 = v7 >> v4;
  if (!v8)
  {
    return 1;
  }

  if (v2 <= 0x3D)
  {
    *(a1 + 8 * v2) = v8;
    *(a1 + 496) = v2 + 1;
    return 1;
  }

  return 0;
}

void sub_29AA25AFC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xF83E0F83E0F83E1 * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v11 = 528 * ((528 * a2 - 528) / 0x210) + 528;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xF83E0F83E0F83E1 * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x7C1F07C1F07C1FLL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xF83E0F83E0F83E1 * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3E0F83E0F83E0FLL)
    {
      v9 = 0x7C1F07C1F07C1FLL;
    }

    else
    {
      v9 = v7;
    }

    v20 = a1;
    if (v9)
    {
      v10 = sub_29A9E298C(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;
    v18 = &v10[33 * v6];
    *(&v19 + 1) = &v10[33 * v9];
    v12 = 528 * ((528 * a2 - 528) / 0x210) + 528;
    bzero(v18, v12);
    *&v19 = v18 + v12;
    v13 = *(a1 + 8);
    v14 = v18 + *a1 - v13;
    sub_29AA25C98(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    v16 = *(a1 + 16);
    *(a1 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    sub_29AA2619C(&v17);
  }
}

void sub_29AA25C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AA2619C(va);
  _Unwind_Resume(a1);
}

void sub_29AA25C98(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    sub_29AA25D3C(a4, a2);
  }
}

void sub_29AA25D18(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_29AA2396C(v1 - 528);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA25D3C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 25) = *(a2 + 25);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 71) < 0)
  {
    sub_29A008D14((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  v8 = *(a2 + 13);
  *(a1 + 104) = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(a1 + 96))
    {
      v9 = *(a1 + 96);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = a2[8];
  *(a1 + 112) = a2[7];
  *(a1 + 128) = v10;
  v11 = *(a2 + 18);
  *(a1 + 144) = v11;
  if (v11)
  {
    v12 = (v11 - 16);
    if (*(a1 + 136))
    {
      v12 = *(a1 + 136);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v13;
  v14 = *(a2 + 23);
  *(a1 + 184) = v14;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(a1 + 176))
    {
      v15 = *(a1 + 176);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  v16 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v16;
  v17 = *(a2 + 28);
  *(a1 + 224) = v17;
  if (v17)
  {
    v18 = (v17 - 16);
    if (*(a1 + 216))
    {
      v18 = *(a1 + 216);
    }

    atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
  }

  v19 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v19;
  v20 = *(a2 + 33);
  *(a1 + 264) = v20;
  if (v20)
  {
    v21 = (v20 - 16);
    if (*(a1 + 256))
    {
      v21 = *(a1 + 256);
    }

    atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
  }

  v22 = a2[18];
  *(a1 + 272) = a2[17];
  *(a1 + 288) = v22;
  v23 = *(a2 + 38);
  *(a1 + 304) = v23;
  if (v23)
  {
    v24 = (v23 - 16);
    if (*(a1 + 296))
    {
      v24 = *(a1 + 296);
    }

    atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
  }

  v25 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v25;
  v26 = *(a2 + 43);
  *(a1 + 344) = v26;
  if (v26)
  {
    v27 = (v26 - 16);
    if (*(a1 + 336))
    {
      v27 = *(a1 + 336);
    }

    atomic_fetch_add_explicit(v27, 1uLL, memory_order_relaxed);
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29AA26038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A012C90(va);
  sub_29A012C90(va);
  sub_29A012C90(va);
  sub_29A012C90(va);
  sub_29A012C90(va);
  sub_29A012C90(va);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void *sub_29AA26120(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A10E7C8(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AA26180(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA2619C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 528;
    sub_29AA2396C(v2 - 528);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AA261EC(uint64_t *result, uint64_t *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      v8 = *a2;
      v9 = v4 + 12 * v3;
      *(v9 + 8) = *(a2 + 2);
      *v9 = v8;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BBFC0();
  }

  sub_29B2BC020();
}

void sub_29AA262A4(uint64_t *result, void *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 8 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC0E0();
  }

  sub_29B2BC080();
}

void sub_29AA2634C(uint64_t *result, uint64_t *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      v8 = *a2;
      v9 = v4 + 12 * v3;
      *(v9 + 8) = *(a2 + 2);
      *v9 = v8;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC1A4();
  }

  sub_29B2BC144();
}

void sub_29AA26404(uint64_t *result, void *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 8 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC264();
  }

  sub_29B2BC204();
}

void sub_29AA264AC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_29A10E224(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[40 * v6];
    v13 = &v10[40 * v9];
    v14 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    *(a1 + 16) = v13;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

uint64_t sub_29AA26620(char **a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v8[24] = *(a2 + 24);
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = a2[2];
  *(v8 + 6) = *(a2 + 6);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29AA26798(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29AA26904(&v16);
  return v15;
}

void sub_29AA26784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA26904(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA26798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29AA19484(a1, v5);
      v5 += 56;
    }
  }

  return sub_29AA26878(v10);
}

uint64_t sub_29AA26878(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AA268B0(a1);
  }

  return a1;
}

void sub_29AA268B0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_29AA19484(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29AA26904(void **a1)
{
  sub_29AA26938(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AA26938(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29AA19484(v4, i - 56);
  }
}

const void **sub_29AA26980(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AA26BE0(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29AA26BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA26BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *a3, *(a3 + 8));
  }

  else
  {
    *(result + 1) = *a3;
    result[4] = *(a3 + 16);
  }

  *(v9 + 10) = *(a3 + 24);
  *(a4 + 16) = 1;
  return result;
}

void sub_29AA26C74(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA26C90(uint64_t *a1, uint64_t a2)
{
  v2 = 0x1D10C4C0478BBCEDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x23C5DE767F70E8)
  {
    sub_29A00C9A4();
  }

  if (0x3A2189808F1779DALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x3A2189808F1779DALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x1D10C4C0478BBCEDLL * ((a1[2] - *a1) >> 3)) >= 0x11E2EF3B3FB874)
  {
    v6 = 0x23C5DE767F70E8;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29AA27304(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[1832 * v2];
  *(&v16 + 1) = &v7[1832 * v6];
  sub_29AA26DD8(a1, v15, a2);
  *&v16 = v15 + 1832;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29AA27350(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AA273D4(&v14);
  return v13;
}

void sub_29AA26DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA273D4(va);
  _Unwind_Resume(a1);
}

__n128 sub_29AA26DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v4 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v4;
  v6 = *(a3 + 80);
  v5 = *(a3 + 96);
  v7 = *(a3 + 64);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 80) = v6;
  *(a2 + 96) = v5;
  *(a2 + 64) = v7;
  *(a2 + 120) = *(a3 + 120);
  v8 = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 128) = v8;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a2 + 152) = *(a3 + 152);
  v9 = *(a3 + 184);
  v10 = *(a3 + 200);
  v11 = *(a3 + 216);
  *(a2 + 168) = *(a3 + 168);
  *(a2 + 216) = v11;
  *(a2 + 200) = v10;
  *(a2 + 184) = v9;
  *(a2 + 224) = *(a3 + 224);
  v12 = *(a3 + 232);
  *(a2 + 248) = *(a3 + 248);
  *(a2 + 232) = v12;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 232) = 0;
  *(a2 + 256) = *(a3 + 256);
  v14 = *(a3 + 288);
  v13 = *(a3 + 304);
  v15 = *(a3 + 272);
  *(a2 + 320) = *(a3 + 320);
  *(a2 + 288) = v14;
  *(a2 + 304) = v13;
  *(a2 + 272) = v15;
  *(a2 + 328) = *(a3 + 328);
  v16 = *(a3 + 336);
  *(a2 + 352) = *(a3 + 352);
  *(a2 + 336) = v16;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0;
  *(a3 + 336) = 0;
  *(a2 + 360) = *(a3 + 360);
  v18 = *(a3 + 392);
  v17 = *(a3 + 408);
  v19 = *(a3 + 376);
  *(a2 + 424) = *(a3 + 424);
  *(a2 + 392) = v18;
  *(a2 + 408) = v17;
  *(a2 + 376) = v19;
  *(a2 + 432) = *(a3 + 432);
  v20 = *(a3 + 440);
  *(a2 + 456) = *(a3 + 456);
  *(a2 + 440) = v20;
  *(a3 + 448) = 0;
  *(a3 + 456) = 0;
  *(a3 + 440) = 0;
  *(a2 + 464) = *(a3 + 464);
  v22 = *(a3 + 496);
  v21 = *(a3 + 512);
  v23 = *(a3 + 480);
  *(a2 + 528) = *(a3 + 528);
  *(a2 + 496) = v22;
  *(a2 + 512) = v21;
  *(a2 + 480) = v23;
  *(a2 + 536) = *(a3 + 536);
  v24 = *(a3 + 544);
  *(a2 + 560) = *(a3 + 560);
  *(a2 + 544) = v24;
  *(a3 + 560) = 0;
  *(a3 + 552) = 0;
  *(a3 + 544) = 0;
  *(a2 + 568) = *(a3 + 568);
  v26 = *(a3 + 600);
  v25 = *(a3 + 616);
  v27 = *(a3 + 584);
  *(a2 + 632) = *(a3 + 632);
  *(a2 + 600) = v26;
  *(a2 + 616) = v25;
  *(a2 + 584) = v27;
  *(a2 + 640) = *(a3 + 640);
  v28 = *(a3 + 648);
  *(a2 + 664) = *(a3 + 664);
  *(a2 + 648) = v28;
  *(a3 + 664) = 0;
  *(a3 + 656) = 0;
  *(a3 + 648) = 0;
  *(a2 + 672) = *(a3 + 672);
  v30 = *(a3 + 704);
  v29 = *(a3 + 720);
  v31 = *(a3 + 688);
  *(a2 + 736) = *(a3 + 736);
  *(a2 + 704) = v30;
  *(a2 + 720) = v29;
  *(a2 + 688) = v31;
  *(a2 + 744) = *(a3 + 744);
  v32 = *(a3 + 752);
  *(a2 + 768) = *(a3 + 768);
  *(a2 + 752) = v32;
  *(a3 + 768) = 0;
  *(a3 + 760) = 0;
  *(a3 + 752) = 0;
  *(a2 + 776) = *(a3 + 776);
  v34 = *(a3 + 808);
  v33 = *(a3 + 824);
  v35 = *(a3 + 792);
  *(a2 + 840) = *(a3 + 840);
  *(a2 + 808) = v34;
  *(a2 + 824) = v33;
  *(a2 + 792) = v35;
  *(a2 + 848) = *(a3 + 848);
  v36 = *(a3 + 856);
  *(a2 + 872) = *(a3 + 872);
  *(a2 + 856) = v36;
  *(a3 + 872) = 0;
  *(a3 + 864) = 0;
  *(a3 + 856) = 0;
  *(a2 + 880) = *(a3 + 880);
  v38 = *(a3 + 912);
  v37 = *(a3 + 928);
  v39 = *(a3 + 896);
  *(a2 + 944) = *(a3 + 944);
  *(a2 + 912) = v38;
  *(a2 + 928) = v37;
  *(a2 + 896) = v39;
  *(a2 + 952) = *(a3 + 952);
  v40 = *(a3 + 960);
  *(a2 + 976) = *(a3 + 976);
  *(a2 + 960) = v40;
  *(a3 + 976) = 0;
  *(a3 + 968) = 0;
  *(a3 + 960) = 0;
  *(a2 + 984) = *(a3 + 984);
  v42 = *(a3 + 1016);
  v41 = *(a3 + 1032);
  v43 = *(a3 + 1000);
  *(a2 + 1048) = *(a3 + 1048);
  *(a2 + 1016) = v42;
  *(a2 + 1032) = v41;
  *(a2 + 1000) = v43;
  *(a2 + 1056) = *(a3 + 1056);
  v44 = *(a3 + 1064);
  *(a2 + 1080) = *(a3 + 1080);
  *(a2 + 1064) = v44;
  *(a3 + 1080) = 0;
  *(a3 + 1072) = 0;
  *(a3 + 1064) = 0;
  *(a2 + 1088) = *(a3 + 1088);
  v45 = *(a3 + 1120);
  v46 = *(a3 + 1136);
  v47 = *(a3 + 1152);
  *(a2 + 1104) = *(a3 + 1104);
  *(a2 + 1152) = v47;
  *(a2 + 1136) = v46;
  *(a2 + 1120) = v45;
  *(a2 + 1160) = *(a3 + 1160);
  *(a2 + 1168) = *(a3 + 1168);
  v48 = *(a3 + 1176);
  *(a2 + 1192) = *(a3 + 1192);
  *(a2 + 1176) = v48;
  *(a3 + 1192) = 0;
  *(a3 + 1184) = 0;
  *(a3 + 1176) = 0;
  *(a2 + 1200) = *(a3 + 1200);
  v49 = *(a3 + 1232);
  v50 = *(a3 + 1248);
  v51 = *(a3 + 1264);
  *(a2 + 1216) = *(a3 + 1216);
  *(a2 + 1264) = v51;
  *(a2 + 1248) = v50;
  *(a2 + 1232) = v49;
  *(a2 + 1272) = *(a3 + 1272);
  v52 = *(a3 + 1280);
  *(a2 + 1296) = *(a3 + 1296);
  *(a2 + 1280) = v52;
  *(a3 + 1296) = 0;
  *(a3 + 1288) = 0;
  *(a3 + 1280) = 0;
  *(a2 + 1304) = *(a3 + 1304);
  v54 = *(a3 + 1336);
  v53 = *(a3 + 1352);
  v55 = *(a3 + 1320);
  *(a2 + 1368) = *(a3 + 1368);
  *(a2 + 1336) = v54;
  *(a2 + 1352) = v53;
  *(a2 + 1320) = v55;
  v56 = *(a3 + 1376);
  v57 = *(a3 + 1392);
  *(a2 + 1408) = *(a3 + 1408);
  *(a2 + 1392) = v57;
  *(a2 + 1376) = v56;
  *(a2 + 1416) = *(a3 + 1416);
  v58 = *(a3 + 1424);
  *(a2 + 1440) = *(a3 + 1440);
  *(a2 + 1424) = v58;
  *(a3 + 1440) = 0;
  *(a3 + 1432) = 0;
  *(a3 + 1424) = 0;
  *(a2 + 1448) = *(a3 + 1448);
  v60 = *(a3 + 1480);
  v59 = *(a3 + 1496);
  v61 = *(a3 + 1464);
  *(a2 + 1512) = *(a3 + 1512);
  *(a2 + 1480) = v60;
  *(a2 + 1496) = v59;
  *(a2 + 1464) = v61;
  *(a2 + 1520) = *(a3 + 1520);
  v62 = *(a3 + 1528);
  *(a2 + 1544) = *(a3 + 1544);
  *(a2 + 1528) = v62;
  *(a3 + 1544) = 0;
  *(a3 + 1536) = 0;
  *(a3 + 1528) = 0;
  *(a2 + 1552) = *(a3 + 1552);
  v63 = *(a3 + 1584);
  v64 = *(a3 + 1600);
  v65 = *(a3 + 1616);
  *(a2 + 1568) = *(a3 + 1568);
  *(a2 + 1616) = v65;
  *(a2 + 1600) = v64;
  *(a2 + 1584) = v63;
  *(a2 + 1624) = *(a3 + 1624);
  v66 = *(a3 + 1632);
  *(a2 + 1648) = *(a3 + 1648);
  *(a2 + 1632) = v66;
  *(a3 + 1648) = 0;
  *(a3 + 1640) = 0;
  *(a3 + 1632) = 0;
  *(a2 + 1656) = *(a3 + 1656);
  v68 = *(a3 + 1688);
  v67 = *(a3 + 1704);
  v69 = *(a3 + 1672);
  *(a2 + 1720) = *(a3 + 1720);
  *(a2 + 1688) = v68;
  *(a2 + 1704) = v67;
  *(a2 + 1672) = v69;
  *(a2 + 1728) = *(a3 + 1728);
  v70 = *(a3 + 1736);
  *(a2 + 1752) = *(a3 + 1752);
  *(a2 + 1736) = v70;
  *(a3 + 1752) = 0;
  *(a3 + 1744) = 0;
  *(a3 + 1736) = 0;
  *(a2 + 1760) = *(a3 + 1760);
  result = *(a3 + 1792);
  v72 = *(a3 + 1808);
  v73 = *(a3 + 1824);
  *(a2 + 1776) = *(a3 + 1776);
  *(a2 + 1824) = v73;
  *(a2 + 1808) = v72;
  *(a2 + 1792) = result;
  return result;
}

void *sub_29AA27304(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x23C5DE767F70E9)
  {
    sub_29A00C8B8();
  }

  return operator new(1832 * a2);
}

void sub_29AA27350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29AA26DD8(a1, a4, v8);
      v8 += 1832;
      a4 += 1832;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_29AA19560(v6);
      v6 += 1832;
    }
  }
}

uint64_t sub_29AA273D4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1832;
    sub_29AA19560(i - 1832);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AA27424(uint64_t *result, void *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 8 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC0E0();
  }

  sub_29B2BC2C8();
}

void sub_29AA274CC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      sub_29AA2396C(v3 - 528);
    }

    v1[1] = v2;

    operator delete(v2);
  }
}

void *sub_29AA27550(void *result, void *a2, uint64_t a3, tbb::task_group_context *a4)
{
  if (result[1] < *result)
  {
    v5 = result;
    v9 = a4;
    v6 = tbb::internal::allocate_root_with_context_proxy::allocate(&v9, 0x38uLL);
    *(v6 - 11) = 1;
    *v6 = &unk_2A206F368;
    v7 = v5[2];
    *(v6 + 8) = *v5;
    *(v6 + 24) = v7;
    *(v6 + 32) = *a2;
    initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v6);
    *(v6 + 48) = 0;
    *(v6 + 52) = 5;
    *(v6 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
    return (*(**(v6 - 40) + 16))(*(v6 - 40), v6, v6 - 8);
  }

  return result;
}

void sub_29AA2762C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  tbb::internal::allocate_root_with_context_proxy::free(va, v9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA27650(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  if (!v3)
  {
    *(a1 + 40) = 1;
    if (*(a1 - 11) < 0)
    {
      v4 = *(a1 - 32);
      if (*(v4 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v4 + 8) = 1;
        v5 = *(a1 + 52);
        if (v5 <= 1)
        {
          LOBYTE(v5) = 1;
        }

        *(a1 + 52) = v5 + 1;
      }
    }
  }

  sub_29AA276C0(v2, a1, (a1 + 8));
  return 0;
}

void sub_29AA276C0(uint64_t a1, tbb::internal::allocate_continuation_proxy *a2, uint64_t *a3)
{
  if (a3[2] < (0xF83E0F83E0F83E1 * ((*a3 - a3[1]) >> 4)))
  {
    if (*a1 > 1uLL)
    {
      goto LABEL_6;
    }

    if (*a1)
    {
LABEL_4:
      if (*(a1 + 12))
      {
        --*(a1 + 12);
        *a1 = 0;
LABEL_6:
        while (1)
        {
          v6 = 0;
          sub_29AA27794(a2, &v6);
          if (a3[2] >= (0xF83E0F83E0F83E1 * ((*a3 - a3[1]) >> 4)))
          {
            break;
          }

          if (*a1 <= 1uLL)
          {
            if (*a1)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }
    }
  }

  sub_29AA27868(a1, a2, a3);
}

uint64_t sub_29AA27794(tbb::internal::allocate_continuation_proxy *a1, uint64_t a2)
{
  v3 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v3 - 11) = 1;
  *v3 = &unk_2A204C520;
  __dmb(0xBu);
  v3[8] = 0;
  *(a1 - 4) = v3;
  *(v3 - 3) = 2;
  v4 = tbb::internal::allocate_child_proxy::allocate(v3, 0x38uLL);
  v5 = ***(sub_29AA27A58(v4, a1) - 40);

  return v5();
}

void sub_29AA27868(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = a3[1];
  v5 = *a3;
  if (a3[2] < (0xF83E0F83E0F83E1 * ((*a3 - v4) >> 4)) && *(result + 12))
  {
    *v15 = 0x10000;
    v16 = *a3;
    v17 = a3[2];
    while (1)
    {
      v7 = sub_29AA27AEC(v15, *(result + 12));
      v8 = *(*(a2 - 32) + 8);
      __dmb(0xBu);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = *(result + 12) + 1;
      *(result + 12) = v9;
      v10 = v15[2];
      if (v15[2] < 2u)
      {
        v11 = v15[0];
        if (v15[v15[0] + 3] >= v9 || *(&v16 + 3 * v15[0] + 2) >= (0xF83E0F83E0F83E1 * ((*(&v16 + 3 * v15[0]) - *(&v16 + 3 * v15[0] + 1)) >> 4)))
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_29AA27BBC(a2, &v16 + 24 * v15[1], v15[v15[1] + 3]);
        v10 = --v15[2];
        v15[1] = (v15[1] + 1) & 7;
      }

LABEL_12:
      if (!v10 || tbb::task_group_context::is_group_execution_cancelled(*(a2 - 56)))
      {
        return;
      }
    }

    v11 = v15[0];
LABEL_8:
    v12 = &v16 + 3 * v11;
    v14 = *v12;
    v13 = v12[1];
    if (v13 != *v12)
    {
      do
      {
        (*(a2 + 32))(v13, v7);
        v13 += 528;
      }

      while (v13 != v14);
      LOBYTE(v11) = v15[0];
    }

    v10 = --v15[2];
    v15[0] = (v11 - 1) & 7;
    goto LABEL_12;
  }

  while (v4 != v5)
  {
    (*(a2 + 32))(v4);
    v4 += 528;
  }
}

uint64_t sub_29AA27A58(uint64_t result, uint64_t a2)
{
  *(result - 11) = 1;
  *result = &unk_2A206F368;
  v2 = *(a2 + 8);
  *(result + 8) = v2;
  v3 = *(a2 + 16);
  v4 = ((v2 - v3) * 0xF83E0F83E0F83E1) >> 64;
  v5 = v3 + 528 * ((v4 >> 6) + (v4 >> 63));
  *(a2 + 8) = v5;
  *(result + 16) = v5;
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  v6 = *(a2 + 40) >> 1;
  *(a2 + 40) = v6;
  *(result + 40) = v6;
  *(result + 48) = 2;
  *(result + 52) = *(a2 + 52);
  return result;
}

__n128 sub_29AA27AEC(unsigned __int8 *a1, unsigned int a2)
{
  v2 = a1[2];
  if (v2 <= 7)
  {
    v3 = a1 + 3;
    v4 = a1 + 16;
    v5 = *a1;
    v6 = a1[v5 + 3];
    do
    {
      if (a2 <= v6)
      {
        break;
      }

      v7 = &v4[24 * v5];
      if (v7[1].n128_u64[0] >= 0xF83E0F83E0F83E1 * ((v7->n128_u64[0] - v7->n128_u64[1]) >> 4))
      {
        break;
      }

      v8 = (v5 + 1) & 7;
      v9 = &v4[24 * v8];
      v10 = v7[1].n128_u64[0];
      result = *v7;
      *v9 = *v7;
      v12 = *v9;
      v13 = *(v9 + 1);
      v14 = (*v9 - v13) / 1056;
      *a1 = v8;
      *(v9 + 2) = v10;
      v15 = v13 + 528 * v14;
      v7->n128_u64[0] = v12;
      v7->n128_u64[1] = v15;
      *v9 = v15;
      v6 = v3[v5] + 1;
      v3[v5] = v6;
      v3[v8] = v6;
      v7[1].n128_u64[0] = v10;
      a1[2] = v2 + 1;
      LOBYTE(v5) = (v5 + 1) & 7;
    }

    while (v2++ < 7);
  }

  return result;
}

uint64_t sub_29AA27BBC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = tbb::internal::allocate_continuation_proxy::allocate(a1, 0x10uLL);
  *(v6 - 11) = 1;
  *v6 = &unk_2A204C520;
  __dmb(0xBu);
  v6[8] = 0;
  *(a1 - 32) = v6;
  *(v6 - 3) = 2;
  v7 = tbb::internal::allocate_child_proxy::allocate(v6, 0x38uLL);
  *(v7 - 11) = 1;
  *v7 = &unk_2A206F368;
  v8 = *(a2 + 16);
  *(v7 + 8) = *a2;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a1 + 32);
  v9 = *(a1 + 40) >> 1;
  *(a1 + 40) = v9;
  *(v7 + 40) = v9;
  *(v7 + 48) = 2;
  *(v7 + 52) = *(a1 + 52) - a3;
  v10 = ***(v7 - 40);

  return v10();
}

void *sub_29AA27CE4(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29AA27D6C(result, a4);
    result = sub_29AA27DBC(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AA27D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AA274CC(&a9);
  _Unwind_Resume(a1);
}

char *sub_29AA27D6C(void *a1, unint64_t a2)
{
  if (a2 >= 0x7C1F07C1F07C20)
  {
    sub_29A00C9A4();
  }

  result = sub_29A9E298C(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[528 * v4];
  return result;
}

uint64_t sub_29AA27DBC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    sub_29AA25D3C(a4, a2);
  }

  return a4;
}

void sub_29AA27E1C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_29AA2396C(v1 - 528);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA27E40()
{
  v4 = *v2;
  v5 = v3 + 12 * v1;
  *(v5 + 8) = *(v2 + 2);
  *v5 = v4;
  return v0;
}

void adobe::usd::SetExtent(void *a1, pxrInternal__aapl__pxrReserved__::UsdGeomBoundable *a2)
{
  sub_29A1935CC(a1);
  v4 = a1[4];
  sub_29A1935CC(a1);
  v5 = a1[4] + 12 * *a1;
  v6 = 0x80000000800000;
  v7 = vneg_f32(0x80000000800000);
  if (v4 == v5)
  {
    v9 = 3.4028e38;
    v8 = -3.4028e38;
  }

  else
  {
    v8 = -3.4028e38;
    v9 = 3.4028e38;
    do
    {
      v10 = v4[1].f32[0];
      if (v10 < v9)
      {
        v9 = v4[1].f32[0];
      }

      v11 = *v4;
      v4 = (v4 + 12);
      v7 = vbsl_s8(vcgt_f32(v7, v11), v11, v7);
      v6 = vbsl_s8(vcgt_f32(v11, v6), v11, v6);
      if (v10 > v8)
      {
        v8 = v10;
      }
    }

    while (v4 != v5);
  }

  sub_29A193124(v15, 2uLL);
  sub_29A1935CC(v15);
  v12 = v16;
  *v16 = v7;
  v12[1].f32[0] = v9;
  sub_29A1935CC(v15);
  v13 = v16;
  *(v16 + 12) = v6;
  v13[2].f32[1] = v8;
  pxrInternal__aapl__pxrReserved__::UsdGeomBoundable::GetExtentAttr(&v14, a2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void sub_29AA27FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A5888DC(va);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

char *adobe::usd::importChannel(int a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 5)
    {
      if (!v2)
      {
        v2 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      return v2 + 40;
    }

LABEL_13:
    if (!v2)
    {
      v2 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    return v2 + 16;
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      if (!v2)
      {
        v2 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      return v2 + 32;
    }

    goto LABEL_13;
  }

  if (!v2)
  {
    v2 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  return v2 + 24;
}

uint64_t adobe::usd::importEmissive(uint64_t a1, adobe::usd::InputTranslator *a2, const adobe::usd::Input *a3, adobe::usd::Input *a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v28[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = -1;
  v33 = 0;
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v8)
  {
    v8 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v16 = 0;
  LODWORD(v17) = 0;
  sub_29AA28320(a1 + 536, v28, v8 + 6, (a1 + 84), &v16);
  v17 = 0;
  v18 = -1;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v9)
  {
    v9 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v15 = -1082130432;
  sub_29AA28558(a1 + 1624, &v16, v9 + 2, (a1 + 1400), &v15);
  if (adobe::usd::Input::isEmpty(&v16))
  {
    adobe::usd::InputTranslator::translateDirect(a2, v28, a4, 0);
  }

  else if ((adobe::usd::Input::isZeroInput(&v16) & 1) == 0)
  {
    if (adobe::usd::Input::isEmpty(v28))
    {
      if (sub_29AA17830(0))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  Multiply diffuse with glow\n", v10, v11);
      }
    }

    else
    {
      if (sub_29AA17830(0))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  Multiply Ke with glow\n", v12, v13);
      }

      a3 = v28;
    }

    adobe::usd::InputTranslator::translateFactor(a2, a3, &v16, a4, 0);
  }

  sub_29A8FAC0C(&v16);
  return sub_29A8FAC0C(v28);
}

uint64_t sub_29AA28320(uint64_t a1, uint64_t a2, void *a3, float *a4, float *a5)
{
  v9 = *a4;
  v8 = a4[1];
  v10 = a4[2];
  if (*a1 == 1)
  {
    if (v9 != 0.0 || v8 != 0.0 || v10 != 0.0)
    {
      *(a2 + 16) = *(a1 + 32);
      sub_29A166F2C((a2 + 24), a3);
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v12)
      {
        v12 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      sub_29A166F2C((a2 + 32), v12 + 8);
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v13)
      {
        v13 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      sub_29A166F2C((a2 + 40), v13 + 8);
      v14 = a4[1];
      v15 = a4[2];
      v17 = *a4 == -1.0 && v14 == -1.0 && v15 == -1.0;
      if (!v17 && (*a4 != *a5 || v14 != a5[1] || v15 != a5[2]))
      {
        *&v29 = *a4;
        *(&v29 + 4) = __PAIR64__(LODWORD(v15), LODWORD(v14));
        HIDWORD(v29) = 1065353216;
        sub_29A3FEAA8((a2 + 72), &v29);
      }

      v18 = *(a1 + 64);
      v19 = *(a1 + 68);
      if (v18 != 0.0 || v19 != 0.0 || *(a1 + 72) != 0.0)
      {
        v20 = *(a2 + 144);
        if (v20 && (*(a2 + 144) & 3) != 3)
        {
          (*((v20 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 136);
        }

        *(a2 + 144) = &off_2A2042618 + 3;
        *(a2 + 136) = v18;
        *(a2 + 140) = v19;
      }

      v21 = *(a1 + 76);
      v22 = *(a1 + 80);
      if (v21 != 1.0 || v22 != 1.0 || *(a1 + 84) != 1.0)
      {
        v23 = *(a2 + 128);
        if (v23)
        {
          if ((*(a2 + 128) & 3) != 3)
          {
            (*((v23 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 120);
          }
        }

        *(a2 + 128) = &off_2A2042618 + 3;
        *(a2 + 120) = v21;
        *(a2 + 124) = v22;
      }

      return 1;
    }

LABEL_48:
    sub_29A3FDE98(a2, a4);
    return 1;
  }

  if (v9 != -1.0 || v8 != -1.0 || v10 != -1.0)
  {
    if (v9 == *a5 && v8 == a5[1] && v10 == a5[2])
    {
      return 1;
    }

    goto LABEL_48;
  }

  return 0;
}

uint64_t sub_29AA28558(uint64_t a1, uint64_t a2, void *a3, float *a4, float *a5)
{
  v7 = *a4;
  if (*a1 == 1)
  {
    if (v7 != 0.0)
    {
      *(a2 + 16) = *(a1 + 32);
      sub_29A166F2C((a2 + 24), a3);
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v13)
      {
        v13 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      sub_29A166F2C((a2 + 32), v13 + 8);
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v14)
      {
        v14 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      sub_29A166F2C((a2 + 40), v14 + 8);
      v15.i32[0] = *a4;
      if (*a4 != -1.0 && *v15.i32 != *a5)
      {
        v23 = vdupq_lane_s32(v15, 0);
        sub_29A3FEAA8((a2 + 72), &v23);
      }

      v17 = *(a1 + 64);
      v18 = *(a1 + 68);
      if (v17 != 0.0 || v18 != 0.0 || *(a1 + 72) != 0.0)
      {
        v19 = *(a2 + 144);
        if (v19 && (*(a2 + 144) & 3) != 3)
        {
          (*((v19 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 136);
        }

        *(a2 + 144) = &off_2A2042618 + 3;
        *(a2 + 136) = v17;
        *(a2 + 140) = v18;
      }

      v20 = *(a1 + 76);
      v21 = *(a1 + 80);
      if (v20 != 1.0 || v21 != 1.0 || *(a1 + 84) != 1.0)
      {
        v22 = *(a2 + 128);
        if (v22 && (*(a2 + 128) & 3) != 3)
        {
          (*((v22 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 120);
        }

        *(a2 + 128) = &off_2A2042618 + 3;
        *(a2 + 120) = v20;
        *(a2 + 124) = v21;
      }

      return 1;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      v9 = (*(a2 + 8) & 3) == 3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v7 != -1.0)
  {
    if (v7 == *a5)
    {
      return 1;
    }

    v8 = *(a2 + 8);
    if (!v8 || (*(a2 + 8) & 3) == 3)
    {
LABEL_14:
      *(a2 + 8) = &unk_2A2044C63;
      *a2 = v7;
      return 1;
    }

LABEL_13:
    (*((v8 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    goto LABEL_14;
  }

  return 0;
}

uint64_t adobe::usd::importObj(std::string *a1, uint64_t a2, uint64_t a3)
{
  v215 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 8);
  v6 = (a2 + 16);
  if (v5 != (a2 + 16))
  {
    do
    {
      if (*(v5 + 55) < 0)
      {
        sub_29A008D14(&__dst, v5[4], v5[5]);
      }

      else
      {
        __dst = *(v5 + 2);
        *&v213 = v5[6];
      }

      sub_29A095658((a3 + 88), &__dst, &__dst);
      if (SBYTE7(v213) < 0)
      {
        operator delete(__dst);
      }

      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          _ZF = *v8 == v5;
          v5 = v8;
        }

        while (!_ZF);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  sub_29A008E78(&__dst, "hasAdobeProperties");
  *&v202[2] = &unk_2A20443C3;
  LOBYTE(v202[0]) = *a2;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a3 + 40), &__dst, v202, ":");
  sub_29A186B14(v202);
  if (SBYTE7(v213) < 0)
  {
    operator delete(__dst);
  }

  if (*(a2 + 176))
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v11)
    {
      v11 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    if ((*(v11 + 104) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v11 + 104) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
    }

    *&__dst = *(a2 + 176);
    *(&__dst + 1) = &off_2A2044E88 + 1;
    if ((__dst & 7) != 0 && (atomic_fetch_add_explicit((__dst & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *&__dst = __dst & 0xFFFFFFFFFFFFFFF8;
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a3 + 40), EmptyString, &__dst, ":");
    sub_29A186B14(&__dst);
  }

  if (a1->__r_.__value_.__s.__data_[1] == 1)
  {
    v13 = a1->__r_.__value_.__s.__data_[2];
    sub_29A008E78(v202, usdObj::DEBUG_TAG);
    adobe::usd::InputTranslator::InputTranslator(&__dst, v13 & 1, a2 + 80, v202);
    __str = a1;
    if (SBYTE3(v203) < 0)
    {
      operator delete(*v202);
    }

    sub_29A9F53C0((a3 + 304), 0x1D10C4C0478BBCEDLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    v14 = *(a2 + 56);
    if (*(a2 + 64) != v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      __asm
      {
        FMOV            V8.2S, #-1.0
        FMOV            V9.2S, #1.0
      }

      while (1)
      {
        v23 = *(a3 + 304);
        if (sub_29AA17830(0))
        {
          v26 = (v14 + v16 + 8);
          if (*(v14 + v16 + 31) < 0)
          {
            v26 = *v26;
          }

          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Import material: %s\n", v24, v25, v26);
        }

        std::string::operator=((v23 + v15), (v14 + v16 + 8));
        *&v202[2] = 0;
        v202[4] = -1;
        v207 = 0;
        v208 = 0;
        v209 = 0;
        v210 = 0;
        v211 = 0;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v206 = 0;
        v191[1] = 0;
        v192 = -1;
        v197 = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0;
        v180[1] = 0;
        v181 = -1;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v185 = 0;
        v169[1] = 0;
        v170 = -1;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v174 = 0;
        v158[1] = 0;
        v159 = -1;
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0;
        v147[1] = 0;
        v148 = -1;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v152 = 0;
        v136[1] = 0;
        v137 = -1;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        v125[1] = 0;
        v126 = -1;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0;
        v114[1] = 0;
        v115 = -1;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0;
        v103[1] = 0;
        v104 = -1;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v108 = 0;
        v92[1] = 0;
        v93 = -1;
        v98 = 0;
        v99 = 0;
        v100 = 0;
        v101 = 0;
        v102 = 0;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0;
        v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v27)
        {
          v27 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        __p[0] = 0;
        LODWORD(__p[1]) = 0;
        sub_29AA28320(v14 + v16 + 224, v202, v27 + 6, (v14 + v16 + 48), __p);
        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v28)
        {
          v28 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        LODWORD(__p[0]) = 0;
        v29 = sub_29AA28558(v14 + v16 + 1168, v191, v28 + 2, (v14 + v16 + 1160), __p);
        v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v30)
        {
          v30 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        LODWORD(__p[0]) = 0;
        if ((v29 | sub_29AA28558(v14 + v16 + 1272, v180, v30 + 2, (v14 + v16 + 1164), __p)))
        {
          break;
        }

        v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v33)
        {
          v33 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        __p[0] = 0;
        LODWORD(__p[1]) = 0;
        sub_29AA28320(v14 + v16 + 328, v169, v33 + 6, (v14 + v16 + 60), __p);
        v34 = adobe::usd::importChannel(*(v14 + v16 + 484));
        LODWORD(__p[0]) = 0;
        sub_29AA28558(v14 + v16 + 432, v158, v34, (v14 + v16 + 104), __p);
        v31 = (v23 + v15 + 208);
        if (__str->__r_.__value_.__s.__data_[3] != 1)
        {
          v32 = v202;
          goto LABEL_47;
        }

        adobe::usd::InputTranslator::translatePhong2PBR(&__dst, v202, v169, v158, v31, (v23 + v15 + 1120), (v23 + v15 + 1272));
LABEL_48:
        v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v35)
        {
          v35 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        __p[0] = _D8;
        LODWORD(__p[1]) = -1082130432;
        v90 = 0;
        v91 = 0;
        sub_29AA28320(v14 + v16 + 744, v147, v35 + 6, __p, &v90);
        v36 = adobe::usd::importChannel(*(v14 + v16 + 1108));
        LODWORD(__p[0]) = -1;
        LODWORD(v90) = 0;
        sub_29AA29764(v14 + v16 + 1056, v136, v36, __p, &v90);
        v84 = 0u;
        v85 = 0u;
        *v86 = 0u;
        v89 = 0;
        v90 = 0;
        *__p = 0u;
        v83 = 0u;
        LODWORD(v84) = -1;
        WORD2(v84) = 257;
        DWORD2(v84) = 1065353216;
        DWORD1(v85) = 4;
        HIDWORD(v85) = 1065353216;
        *&v86[4] = 0;
        *&v86[12] = _D9;
        v87 = 1065353216;
        v88 = 0;
        v81 = 1069547520;
        sub_29AA28558(__p, v114, &v90, (v14 + v16 + 112), &v81);
        if ((v90 & 7) != 0)
        {
          atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (SHIBYTE(v83) < 0)
        {
          operator delete(__p[1]);
        }

        adobe::usd::importEmissive(v14 + v16, &__dst, v202, (v23 + v15 + 360));
        v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v37)
        {
          v37 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        LODWORD(__p[0]) = 1065353216;
        if ((sub_29AA28558(v14 + v16 + 1416, v125, v37 + 2, (v14 + v16 + 96), __p) & 1) == 0)
        {
          v38 = adobe::usd::importChannel(*(v14 + v16 + 692));
          LODWORD(__p[0]) = 1065353216;
          sub_29AA28558(v14 + v16 + 640, v125, v38, (v14 + v16 + 96), __p);
        }

        adobe::usd::InputTranslator::translateNormals(&__dst, v136, v147, (v23 + v15 + 816));
        adobe::usd::InputTranslator::translateDirect(&__dst, v125, (v23 + v15 + 2944), 0);
        adobe::usd::InputTranslator::translateDirect(&__dst, v114, (v23 + v15 + 3552), 0);
        v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v39)
        {
          v39 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        LODWORD(__p[0]) = 0;
        if (sub_29AA28558(v14 + v16 + 1728, v103, v39 + 2, (v14 + v16 + 1404), __p))
        {
          adobe::usd::InputTranslator::translateDirect(&__dst, v103, (v23 + v15 + 3704), 0);
          sub_29A1854E8((v23 + v15 + 4160), (v23 + v15 + 208));
          v40 = (v23 + v15);
          *(v23 + v15 + 4176) = *(v23 + v15 + 224);
          sub_29A166F2C((v23 + v15 + 4184), (v23 + v15 + 232));
          sub_29A166F2C(v40 + 524, v40 + 30);
          sub_29A166F2C(v40 + 525, v40 + 31);
          sub_29A166F2C(v40 + 526, v40 + 32);
          sub_29A166F2C(v40 + 527, v40 + 33);
          sub_29A166F2C(v40 + 528, v40 + 34);
          sub_29A1854E8(v40 + 529, v40 + 35);
          sub_29A1854E8(v40 + 531, v40 + 37);
          sub_29A1854E8((v23 + v15 + 4264), (v23 + v15 + 312));
          sub_29A1854E8((v23 + v15 + 4280), (v23 + v15 + 328));
          sub_29A1854E8((v23 + v15 + 4296), (v23 + v15 + 344));
        }

        sub_29A8FAC0C(v92);
        sub_29A8FAC0C(v103);
        sub_29A8FAC0C(v114);
        sub_29A8FAC0C(v125);
        sub_29A8FAC0C(v136);
        sub_29A8FAC0C(v147);
        sub_29A8FAC0C(v158);
        sub_29A8FAC0C(v169);
        sub_29A8FAC0C(v180);
        sub_29A8FAC0C(v191);
        sub_29A8FAC0C(v202);
        ++v17;
        v14 = *(a2 + 56);
        v16 += 1832;
        v15 += 4616;
        if (v17 >= 0x1D10C4C0478BBCEDLL * ((*(a2 + 64) - v14) >> 3))
        {
          goto LABEL_63;
        }
      }

      adobe::usd::InputTranslator::translateDirect(&__dst, v202, (v23 + v15 + 208), 0);
      adobe::usd::InputTranslator::translateDirect(&__dst, v180, (v23 + v15 + 1120), 0);
      v31 = (v23 + 4616 * v17 + 1272);
      v32 = v191;
LABEL_47:
      adobe::usd::InputTranslator::translateDirect(&__dst, v32, v31, 0);
      goto LABEL_48;
    }

LABEL_63:
    Images = adobe::usd::InputTranslator::getImages(&__dst);
    sub_29A9FE634((a3 + 256));
    *(a3 + 256) = *Images;
    *(a3 + 272) = *(Images + 16);
    *Images = 0;
    *(Images + 8) = 0;
    *(Images + 16) = 0;
    adobe::usd::InputTranslator::~InputTranslator(&__dst);
    a1 = __str;
  }

  if (a1->__r_.__value_.__s.__data_[0] == 1)
  {
    v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    if (!v42)
    {
      v42 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
    }

    v76 = *(a2 + 40);
    __stra = *(a2 + 32);
    if (__stra != v76)
    {
      v80 = *(v42 + 26) ^ *(a2 + 176);
      v43 = 0xFFFFFFFFLL;
      do
      {
        adobe::usd::UsdData::addNode(a3, 0xFFFFFFFF, v10);
        v45 = v44;
        std::string::operator=(v44, __stra);
        data = __stra[1].__r_.__value_.__l.__data_;
        size = __stra[1].__r_.__value_.__l.__size_;
        while (data != size)
        {
          if (*(data + 28))
          {
            v49 = adobe::usd::UsdData::addMesh(a3, v46, v10);
            v51 = v50;
            *v202 = v49;
            *&v202[2] = v50;
            sub_29A00D250(&v45[18].__r_.__value_.__l.__data_, v202);
            std::string::operator=(v51, data);
            *(v51 + 864) = 1;
            sub_29A27CF04((v51 + 56), data + 14);
            sub_29A27CF04((v51 + 96), (data + 264));
            sub_29A4ADDE0((v51 + 136), (data + 24));
            if (*(data + 13))
            {
              sub_29A27CF04((v51 + 456), data + 19);
              sub_29A4AD678((v51 + 416), (data + 104));
              v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v52)
              {
                v52 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              sub_29A166F2C((v51 + 408), v52 + 40);
            }

            if (*(data + 18))
            {
              sub_29A27CF04((v51 + 264), (data + 344));
              sub_29A4ADDE0((v51 + 224), data + 9);
              v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v53)
              {
                v53 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              sub_29A166F2C((v51 + 216), v53 + 40);
            }

            if (*(data + 8))
            {
              adobe::usd::UsdData::addColorSet(a3, v202[0], v10);
              v55 = v54;
              if (v80 < 8)
              {
                v56 = *(data + 5);
                __dst = *(data + 4);
                v213 = v56;
                v57 = *(data + 12);
                v214 = v57;
                if (v57)
                {
                  v58 = (v57 - 4);
                  if (*(&v213 + 1))
                  {
                    v58 = *(&v213 + 1);
                  }

                  atomic_fetch_add_explicit(v58, 1uLL, memory_order_relaxed);
                }

                sub_29A1935CC(&__dst);
                v59 = v214;
                v60 = sub_29A1935CC(&__dst);
                v61 = &v214[3 * __dst];
                while (v59 != v61)
                {
                  *v59 = adobe::usd::srgbToLinear(v60, *v59);
                  v59[1] = adobe::usd::srgbToLinear(v62, v59[1]);
                  v59[2] = adobe::usd::srgbToLinear(v63, v59[2]);
                  v59 += 3;
                }

                sub_29A4ADDE0((v55 + 8), &__dst);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
              }

              sub_29A4ADDE0((v54 + 8), data + 4);
              v66 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v66)
              {
                v66 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              sub_29A166F2C(v55, v66 + 154);
            }

            v67 = *(data + 48);
            v68 = *(data + 49);
            v69 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 4);
            if (v69 == 1)
            {
              if (*(data + 28) != *(v67 + 1))
              {
                goto LABEL_107;
              }

              v70 = v68 - 48;
LABEL_105:
              *(v51 + 832) = *v70;
            }

            else
            {
              if (!v69)
              {
                v70 = data + 408;
                goto LABEL_105;
              }

LABEL_107:
              while (v67 != v68)
              {
                adobe::usd::UsdData::addSubset(a3, v202[0], v10);
                v72 = *v67;
                v71 = (v67 + 8);
                *(v73 + 80) = v72;
                sub_29A27CF04(v73, v71);
                v67 = v71 + 40;
              }
            }

            v74 = *(v51 + 832);
            if ((v74 & 0x80000000) != 0)
            {
              *(v51 + 832) = v43;
              v74 = v43;
            }

            v43 = v74;
            goto LABEL_111;
          }

          if (sub_29AA17830(0))
          {
            v64 = data;
            if (data[23] < 0)
            {
              v64 = *data;
            }

            v65 = v45;
            if (SHIBYTE(v45->__r_.__value_.__r.__words[2]) < 0)
            {
              v65 = v45->__r_.__value_.__r.__words[0];
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Skipping empty group %s on node %s - %zu verts, %zu faces, %zu indices\n", v46, v10, v64, v65, *(data + 3), *(data + 28), *(data + 33));
          }

LABEL_111:
          data += 416;
        }

        __stra += 2;
      }

      while (__stra != v76);
    }
  }

  return 1;
}

void sub_29AA29604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29A8FAC0C(&a34);
  sub_29A8FAC0C(&a53);
  sub_29A8FAC0C(&a65);
  sub_29A8FAC0C(&STACK[0x290]);
  sub_29A8FAC0C(&STACK[0x328]);
  sub_29A8FAC0C(&STACK[0x3C0]);
  sub_29A8FAC0C(&STACK[0x458]);
  sub_29A8FAC0C(&STACK[0x4F0]);
  sub_29A8FAC0C(&STACK[0x588]);
  sub_29A8FAC0C(&STACK[0x620]);
  sub_29A8FAC0C(&STACK[0x6B8]);
  adobe::usd::InputTranslator::~InputTranslator(&STACK[0x750]);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA29764(uint64_t a1, uint64_t a2, void *a3, int *a4, _DWORD *a5)
{
  v7 = *a4;
  if (*a1 == 1)
  {
    if (v7)
    {
      *(a2 + 16) = *(a1 + 32);
      sub_29A166F2C((a2 + 24), a3);
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v10)
      {
        v10 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      sub_29A166F2C((a2 + 32), v10 + 8);
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v11)
      {
        v11 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      sub_29A166F2C((a2 + 40), v11 + 8);
      v13 = *a4;
      if (*a4 != -1 && v13 != *a5)
      {
        *v12.i32 = v13;
        v24 = vdupq_lane_s32(v12, 0);
        sub_29A3FEAA8((a2 + 72), &v24);
      }

      v14 = *(a1 + 64);
      v15 = *(a1 + 68);
      if (v14 != 0.0 || v15 != 0.0 || *(a1 + 72) != 0.0)
      {
        v16 = *(a2 + 144);
        if (v16 && (*(a2 + 144) & 3) != 3)
        {
          (*((v16 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 136);
        }

        *(a2 + 144) = &off_2A2042618 + 3;
        *(a2 + 136) = v14;
        *(a2 + 140) = v15;
      }

      v17 = *(a1 + 76);
      v18 = *(a1 + 80);
      if (v17 != 1.0 || v18 != 1.0 || *(a1 + 84) != 1.0)
      {
        v19 = *(a2 + 128);
        if (v19)
        {
          if ((*(a2 + 128) & 3) != 3)
          {
            (*((v19 & 0xFFFFFFFFFFFFFFF8) + 32))(a2 + 120);
          }
        }

        *(a2 + 128) = &off_2A2042618 + 3;
        *(a2 + 120) = v17;
        *(a2 + 124) = v18;
      }
    }

    else
    {
      v21 = *(a2 + 8);
      if (v21)
      {
        v22 = (*(a2 + 8) & 3) == 3;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
      }

      *(a2 + 8) = &unk_2A204475B;
      *a2 = 0;
    }

    return 1;
  }

  if (v7 != -1)
  {
    if (v7 != *a5)
    {
      v20 = *(a2 + 8);
      if (v20 && (*(a2 + 8) & 3) != 3)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
      }

      *(a2 + 8) = &unk_2A204475B;
      *a2 = v7;
    }

    return 1;
  }

  return 0;
}

adobe::usd::ObjResolver *adobe::usd::ObjResolver::ObjResolver(adobe::usd::ObjResolver *this)
{
  sub_29A008E78(__p, "ObjResolver");
  adobe::usd::Resolver::Resolver(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2A206F3B0;
  return this;
}

void sub_29AA29A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::ObjResolver::readCache(uint64_t a1, std::string *a2, uint64_t a3)
{
  LOBYTE(v30[0]) = 0;
  v31[0] = 0;
  v31[1] = 0;
  v30[1] = v31;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  adobe::usd::readObj(v30, a2, 1);
  v7 = 0;
  v8 = 0;
  memset(&v5[4], 0, 48);
  v6 = 0;
  v9 = 0;
  v10 = 0x4038000000000000;
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  *v5 = 65792;
  adobe::usd::importObj(v5, v30, &v5[4]);
  sub_29A9FE634(a3);
  *a3 = v22;
  *(a3 + 16) = v23;
  *&v23 = 0;
  v22 = 0uLL;
  sub_29A9E5D10(&v5[4]);
  return sub_29AA19334(v30);
}

void sub_29AA29B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A9E5D10(va);
  sub_29AA19334(v5 - 224);
  _Unwind_Resume(a1);
}

void sub_29AA29B70(void **a1)
{
  adobe::usd::Resolver::~Resolver(a1);

  operator delete(v1);
}

void *sub_29AA29B98()
{
  v2 = nullsub_1471;
  return sub_29AA29BF4(v0);
}

void *sub_29AA29BF4(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206F410;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AA29C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA29CA4(pxrInternal__aapl__pxrReserved__::Ar_PackageResolverFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Ar_PackageResolverFactoryBase::~Ar_PackageResolverFactoryBase(a1);

  operator delete(v1);
}

adobe::usd::ObjResolver *sub_29AA29CCC()
{
  v0 = operator new(0x20uLL);
  adobe::usd::ObjResolver::ObjResolver(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType::~UsdXpcFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType::UsdXpcFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "xpc");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "1.0");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 2, "usd");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 3, "obj");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 4, "stl");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 5, "ply");
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA29FCC(_Unwind_Exception *a1)
{
  v3 = 40;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::UsdXpcFileFormat(pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat *this)
{
  *&v21 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  if (!v2)
  {
    v2 = sub_29AA2ACBC(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  if (!v3)
  {
    v3 = sub_29AA2ACBC(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29AA2ACBC(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29AA2ACBC(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  }

  if ((*(v5 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v5 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(&__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v7 = *EmptyString;
    v16 = EmptyString[2];
    __dst = v7;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  if (!v8)
  {
    v8 = sub_29AA2ACBC(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  }

  if ((*(v8 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = ((*(v8 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  if (*(v9 + 23) < 0)
  {
    sub_29A008D14(&v17, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v18 = v9[2];
    v17 = v10;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  if (!v11)
  {
    v11 = sub_29AA2ACBC(&pxrInternal__aapl__pxrReserved__::UsdXpcFileFormatTokens);
  }

  if ((*(v11 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v12 = ((*(v11 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  if (*(v12 + 23) < 0)
  {
    sub_29A008D14(&v19, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    v20 = v12[2];
    v19 = v13;
  }

  memset(v14, 0, sizeof(v14));
  sub_29A280C48(v14, &__dst, &v21, 3uLL);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(this, v2, v3 + 1, v4 + 2, v14);
}

void pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::~UsdXpcFileFormat(pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat *this)
{
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::CallbackFromXPC(int a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "consume");
  if (string)
  {
    sub_29A008E78(&__p, string);
    v4 = sandbox_extension_issue_file();
    remote_connection = xpc_dictionary_get_remote_connection(xdict);
    reply = xpc_dictionary_create_reply(xdict);
    v7 = reply;
    if (v4)
    {
      xpc_dictionary_set_string(reply, "consumeToken", v4);
      free(v4);
    }

    xpc_connection_send_message(remote_connection, v7);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_29AA2A494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::Read(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, const char *a3)
{
  v6 = xpc_connection_create("com.apple.USDLib.FormatLoader", 0);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3221225472;
  handler[2] = sub_29AA2A78C;
  handler[3] = &unk_29F295CC8;
  handler[4] = a1;
  xpc_connection_set_event_handler(v6, handler);
  xpc_connection_resume(v6);
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (a3[23] >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  xpc_dictionary_set_string(v7, "filename", v9);
  v10 = sandbox_extension_issue_file();
  if (v10)
  {
    xpc_dictionary_set_string(v8, "extensionToken", v10);
  }

  free(v10);
  v11 = xpc_connection_send_message_with_reply_sync(v6, v8);
  if (v11 && (v12 = v11, v13 = MEMORY[0x29C2C5A00](), v14 = MEMORY[0x29EDCAA00], v13 == MEMORY[0x29EDCAA00]) && ((string = xpc_dictionary_get_string(v12, "error")) == 0 || !*string) && (value = xpc_dictionary_get_value(v12, "object")) != 0 && (v18 = value, MEMORY[0x29C2C5A00]() == v14))
  {
    v19 = operator new(0x10uLL);
    serialize::Serializer::Serializer(v19);
    v19[1] = v18;
    v20 = serialize::Serializer::load(v19);
    operator delete(v19);
    xpc_release(v8);
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::XpcConverter::XpcConverter(v23);
      pxrInternal__aapl__pxrReserved__::XpcConverter::makeUsdStage(&v22, v20);
      (*(*v20 + 16))(v20);
      if (v22)
      {
        sub_29A321960(v21, &v22);
        pxrInternal__aapl__pxrReserved__::SdfLayer::TransferContent(a2, v21);
        sub_29B28F9E0(v21);
      }

      sub_29A321930(&v22);
    }
  }

  else
  {
    xpc_release(v8);
  }

  return 0;
}

void sub_29AA2A70C(_Unwind_Exception *a1, uint64_t a2, atomic_uint *a3, uint64_t a4, atomic_uint *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    if (atomic_fetch_add_explicit(a5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a5 + 8))(a5, a2, a3);
    }
  }

  sub_29A321930(va);
}

void sub_29AA2A78C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x29C2C5A00](a2);
    if (v3 == MEMORY[0x29EDCAA00])
    {

      pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::CallbackFromXPC(v3, a2);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::ReadFromString(uint64_t a1, uint64_t a2, const std::string *a3)
{
  sub_29A9EE25C(v5, a3, 24);
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5[2] = v3;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v9);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::WriteToString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v4, v5);
  sub_29A1DA734(v5);
}

void sub_29AA2AA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdXpcFileFormat::WriteToStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v4, v5);
  sub_29A1DA734(v5);
}

void sub_29AA2AAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA2AAFC()
{
  v2 = nullsub_1472;
  return sub_29AA2AB58(v0);
}

void *sub_29AA2AB58(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206F528;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AA2ABE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}