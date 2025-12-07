uint64_t HALS_DefaultDeviceManager::FilterSettings(HALS_DefaultDeviceManager *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = this;
  v2 = 0;
  v20 = HALB_Mutex::Lock(this);
  v3 = this + 120;
  v4 = 72;
  do
  {
    v5 = *(v3 + 1);
    if (v5)
    {
      OS::CF::UntypedObject::UntypedObject(v18, v5);
      v18[0] = &unk_1F5991188;
      DeviceInfo::DeviceInfo(v21, v18);
      OS::CF::UntypedObject::~UntypedObject(v18);
      v6 = *(this + 107) == 1 && v23 == 1634300528;
      if (v6 || *(this + 108) == 1 && v23 == 1651275109 && (v24 & 1) != 0 || v25 == 1)
      {
        OS::CF::UntypedObject::operator=(v3, 0);
        *(v3 + 4) = 0;
        v2 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v22);
    }

    v3 += 24;
    v4 -= 24;
  }

  while (v4);
  v7 = this + 224;
  v8 = 72;
  do
  {
    v9 = *(v7 + 1);
    if (v9)
    {
      OS::CF::UntypedObject::UntypedObject(v17, v9);
      v17[0] = &unk_1F5991188;
      DeviceInfo::DeviceInfo(v21, v17);
      OS::CF::UntypedObject::~UntypedObject(v17);
      v10 = *(this + 107) == 1 && v23 == 1634300528;
      if (v10 || *(this + 108) == 1 && v23 == 1651275109 && (v24 & 1) != 0 || v25 == 1)
      {
        OS::CF::UntypedObject::operator=(v7, 0);
        *(v7 + 4) = 0;
        v2 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v22);
    }

    v7 += 24;
    v8 -= 24;
  }

  while (v8);
  v11 = this + 328;
  v12 = 72;
  do
  {
    v13 = *(v11 + 1);
    if (v13)
    {
      OS::CF::UntypedObject::UntypedObject(v16, v13);
      v16[0] = &unk_1F5991188;
      DeviceInfo::DeviceInfo(v21, v16);
      OS::CF::UntypedObject::~UntypedObject(v16);
      v14 = *(this + 107) == 1 && v23 == 1634300528;
      if (v14 || *(this + 108) == 1 && v23 == 1651275109 && (v24 & 1) != 0 || v25 == 1)
      {
        OS::CF::UntypedObject::operator=(v11, 0);
        *(v11 + 4) = 0;
        v2 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v22);
    }

    v11 += 24;
    v12 -= 24;
  }

  while (v12);
  HALB_Mutex::Locker::~Locker(&v19);
  return v2 & 1;
}

void sub_1DE4B8B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, HALB_Mutex *a15)
{
  OS::CF::UntypedObject::~UntypedObject(&a9);
  HALB_Mutex::Locker::~Locker(&a15);
  _Unwind_Resume(a1);
}

uint64_t HALS_DefaultDeviceManager::UpdateDefaultDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  *(&v131[39] + 2) = *MEMORY[0x1E69E9840];
  v7 = a4 >> 8;
  v8 = WORD1(a4);
  v9 = BYTE3(a4);
  v114[0] = BYTE3(a4);
  v114[1] = BYTE2(a4);
  v114[2] = BYTE1(a4);
  v114[3] = a4;
  v114[4] = 0;
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v130 = 1024;
    LODWORD(v131[0]) = 1657;
    WORD2(v131[0]) = 2082;
    *(v131 + 6) = v114;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::UpdateDefaultDevice:        '%{public}s' --->>>", buf, 0x1Cu);
  }

  PreferredDefaultDevice = HALS_DefaultDeviceManager::FindPreferredDefaultDevice(a1, a2, a3, v4);
  if (PreferredDefaultDevice)
  {
    goto LABEL_259;
  }

  v117[0] = v9;
  v117[1] = v8;
  v117[2] = v7;
  v117[3] = v4;
  v117[4] = 0;
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v130 = 1024;
    LODWORD(v131[0]) = 1725;
    WORD2(v131[0]) = 2082;
    *(v131 + 6) = v117;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' --->>>", buf, 0x1Cu);
  }

  v121[0] = 0;
  v121[1] = 0;
  HALS_System::GetInstance(&v122, 0, v121);
  v11 = v122;
  if (v122)
  {
    NumberDevices = HALS_System::GetNumberDevices(v122, 2, 0, 0);
    v120 = NumberDevices;
    std::vector<unsigned int>::vector[abi:ne200100](&v118, NumberDevices);
    HALS_System::GetDeviceList(v11, NumberDevices, &v120, v118, 2, 0, 0);
    v115 = 0;
    v116 = 0uLL;
    v13 = v118;
    v14 = v119;
    if (v118 != v119)
    {
      if (v4 == 1682533920)
      {
        v15 = 9;
      }

      else
      {
        v15 = 10;
      }

      v16 = "imdhtrpd icpnuhtbvae4931 bsusubmeulbntlbotuabolg";
      if (v4 == 1682533920)
      {
        v16 = &DeviceInfo::kInputTransportOrder;
      }

      v113 = v16;
      v110 = v119;
      while (1)
      {
        DeviceInfo::DeviceInfo(buf, *v13);
        if (v4 > 1934587251)
        {
          if (v4 == 1934587252)
          {
            if (v131[38])
            {
              goto LABEL_28;
            }
          }

          else if (v4 == 1936224868 && (v131[38] & 0x100) != 0)
          {
LABEL_28:
            v17 = v116;
            v18 = v116 - v115;
            if (v116 == v115)
            {
              v20 = v116;
LABEL_92:
              if (v116 >= *(&v116 + 1))
              {
                v61 = 1 - 0x7063E7063E7063E7 * (v18 >> 3);
                if (v61 > 0xC7CE0C7CE0C7CELL)
                {
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if (0x1F3831F3831F3832 * ((*(&v116 + 1) - v115) >> 3) > v61)
                {
                  v61 = 0x1F3831F3831F3832 * ((*(&v116 + 1) - v115) >> 3);
                }

                if (0x8F9C18F9C18F9C19 * ((*(&v116 + 1) - v115) >> 3) >= 0x63E7063E7063E7)
                {
                  v62 = 0xC7CE0C7CE0C7CELL;
                }

                else
                {
                  v62 = v61;
                }

                v127 = &v115;
                if (v62)
                {
                  std::allocator<DeviceInfo>::allocate_at_least[abi:ne200100](v62);
                }

                v63 = v20 - v115;
                v64 = (8 * ((v20 - v115) >> 3));
                v124 = 0;
                v125 = v64;
                v126 = v64;
                if (!(0x8F9C18F9C18F9C19 * ((v20 - v115) >> 3)))
                {
                  if (v63 < 1)
                  {
                    if (v20 == v115)
                    {
                      v65 = 1;
                    }

                    else
                    {
                      v65 = 0x1F3831F3831F3832 * ((v20 - v115) >> 3);
                    }

                    v128 = v127;
                    std::allocator<DeviceInfo>::allocate_at_least[abi:ne200100](v65);
                  }

                  v64 -= 82 * ((1 - 0x7063E7063E7063E7 * (v63 >> 3)) >> 1);
                  v125 = v64;
                  *&v126 = v64;
                }

                *v64 = *buf;
                OS::CF::UntypedObject::UntypedObject((v64 + 2), *(v131 + 2));
                *(v64 + 1) = &unk_1F5991188;
                memcpy(v64 + 6, &v131[1] + 2, 0x12AuLL);
                *&v126 = v126 + 328;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DeviceInfo>,DeviceInfo*>(v20, v116, v126);
                *&v126 = v126 + v116 - v20;
                *&v116 = v20;
                v66 = v125 + v115 - v20;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DeviceInfo>,DeviceInfo*>(v115, v20, v66);
                v67 = v115;
                v68 = *(&v116 + 1);
                v115 = v66;
                v116 = v126;
                *&v126 = v67;
                *(&v126 + 1) = v68;
                v124 = v67;
                v125 = v67;
                std::__split_buffer<DeviceInfo>::~__split_buffer(&v124);
              }

              else if (v20 == v116)
              {
                *v116 = *buf;
                OS::CF::UntypedObject::UntypedObject((v17 + 8), *(v131 + 2));
                *(v17 + 1) = &unk_1F5991188;
                memcpy(v17 + 24, &v131[1] + 2, 0x12AuLL);
                *&v116 = v17 + 328;
              }

              else
              {
                v50 = v116;
                if (v116 >= 0x148)
                {
                  *v116 = *(v116 - 328);
                  *(v17 + 2) = *(v17 - 39);
                  *(v17 - 39) = 0;
                  *(v17 + 1) = &unk_1F5991188;
                  memcpy(v17 + 24, v17 - 304, 0x12AuLL);
                  v50 = (v17 + 328);
                }

                *&v116 = v50;
                if (v17 != v20 + 328)
                {
                  v51 = 0;
                  do
                  {
                    *&v17[v51 - 328] = *&v17[v51 - 656];
                    v52 = &v17[v51 - 312];
                    v53 = &v17[v51 - 640];
                    v54 = *v52;
                    *v52 = *v53;
                    *v53 = v54;
                    memcpy(&v17[v51 - 304], &v17[v51 - 632], 0x12AuLL);
                    v51 -= 328;
                  }

                  while (v20 - v17 + 328 != v51);
                  v50 = v116;
                }

                v55 = v20 <= buf;
                v56 = v50 > buf;
                v57 = !v55 || !v56;
                if (v55 && v56)
                {
                  v58 = 328;
                }

                else
                {
                  v58 = 0;
                }

                *v20 = *&buf[v58];
                v59 = (v131 + 2);
                if (v57)
                {
                  v60 = &v131[1] + 2;
                }

                else
                {
                  v59 = &v132;
                  v60 = &v133;
                }

                OS::CF::String::operator=((v20 + 8), *v59);
                memcpy(v20 + 24, v60, 0x12AuLL);
                v14 = v110;
              }

              goto LABEL_124;
            }

            v19 = 0x8F9C18F9C18F9C19 * (v18 >> 3);
            v20 = v115;
            while (2)
            {
              v21 = v19 >> 1;
              v22 = &v20[328 * (v19 >> 1)];
              v24 = *(v22 + 35);
              v23 = *(v22 + 36);
              v26 = v24 == *(&v131[33] + 2) && v23 == *(&v131[34] + 2);
              v27 = *(v22 + 77);
              if (v4 == 1682533920 && (v27 <= 2 ? (v28 = *(&v131[36] + 6) <= 2) : (v28 = 0), v28 && !v26))
              {
LABEL_52:
                v31 = v23 > *(&v131[34] + 2) && v24 == *(&v131[33] + 2);
                v32 = v24 > *(&v131[33] + 2) || v31;
              }

              else if (v4 == 1934587252 || v4 == 1682929012)
              {
                v30 = *(v22 + 78) > 3 || *(&v131[37] + 2) > 3;
                if (!v30 && !v26)
                {
                  goto LABEL_52;
                }

LABEL_59:
                if (v4 != 1934587252 && v4 != 1682929012)
                {
                  goto LABEL_62;
                }

                v33 = *(v22 + 78);
                v34 = v33 < *(&v131[37] + 2);
                if (v33 == *(&v131[37] + 2))
                {
                  goto LABEL_62;
                }

LABEL_83:
                v32 = v34;
              }

              else
              {
                if (v4 != 1682533920)
                {
                  goto LABEL_59;
                }

                v34 = v27 < *(&v131[36] + 6);
                if (v27 != *(&v131[36] + 6))
                {
                  goto LABEL_83;
                }

LABEL_62:
                v35 = *(v22 + 74);
                v36 = -1;
                v37 = v113;
                do
                {
                  v39 = *v37;
                  v37 += 4;
                  v38 = v39;
                  v40 = v36 + 2;
                  ++v36;
                }

                while (v39 != v35 && v40 < v15);
                v42 = -1;
                v43 = v113;
                do
                {
                  v45 = *v43;
                  v43 += 4;
                  v44 = v45;
                  v46 = v42 + 2;
                  ++v42;
                }

                while (v45 != *(&v131[35] + 2) && v46 < v15);
                if (v44 != *(&v131[35] + 2))
                {
                  v42 = -1;
                }

                v32 = v36 < v42 && v38 == v35;
              }

              v49 = v22 + 328;
              v19 += ~v21;
              if (v32)
              {
                v20 = v49;
              }

              else
              {
                v19 = v21;
              }

              if (!v19)
              {
                goto LABEL_92;
              }

              continue;
            }
          }
        }

        else if (v4 == 1682533920)
        {
          if (BYTE6(v131[37]) == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v4 == 1682929012 && (v131[37] & 0x100000000000000) != 0)
        {
          goto LABEL_28;
        }

LABEL_124:
        OS::CF::UntypedObject::~UntypedObject(&buf[8]);
        if (++v13 == v14)
        {
          v13 = v118;
          break;
        }
      }
    }

    if (v13)
    {
      v119 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v115 = 0;
    v116 = 0uLL;
  }

  if (v123)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v123);
  }

  if (*(a1 + 105) == 1)
  {
    pthread_mutex_lock(&DeviceInfo::DumpHeap(std::vector<DeviceInfo> const&)::sMutex);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_DefaultDeviceManager.cpp";
      v130 = 1024;
      LODWORD(v131[0]) = 410;
      WORD2(v131[0]) = 2048;
      *(v131 + 6) = 0x8F9C18F9C18F9C19 * ((v116 - v115) >> 3);
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Heap has %lu items", buf, 0x1Cu);
    }

    v69 = v115;
    __src = v116;
    if (v115 != v116)
    {
      v70 = 0;
      v109 = v115 + 24;
      v71 = MEMORY[0x1E69E9C10];
      do
      {
        pthread_mutex_lock(&DeviceInfo::DumpDeviceInfo(DeviceInfo const&)::sMutex);
        v72.i32[0] = *(v69 + v70 + 296);
        v73 = vrev64_s16(*&vmovl_u8(v72));
        v74 = vuzp1_s8(v73, v73);
        LODWORD(v118) = v74.i32[0];
        BYTE4(v118) = 0;
        v74.i32[0] = *(v69 + v70 + 300);
        v75 = vrev64_s16(*&vmovl_u8(v74));
        v76 = vuzp1_s8(v75, v75);
        LODWORD(v122) = v76.i32[0];
        BYTE4(v122) = 0;
        v76.i32[0] = *(v69 + v70 + 304);
        v77 = vrev64_s16(*&vmovl_u8(v76));
        LODWORD(v121[0]) = vuzp1_s8(v77, v77).u32[0];
        BYTE4(v121[0]) = 0;
        v78 = *(v69 + v70 + 308);
        v79 = "";
        if (v78 <= 5)
        {
          v79 = off_1E8676110[v78];
        }

        v80 = *(v69 + v70 + 312);
        v81 = "";
        if (v80 <= 6)
        {
          v81 = off_1E8676140[v80];
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v82 = *(v69 + v70);
          *buf = 136315906;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 488;
          WORD2(v131[0]) = 2048;
          *(v131 + 6) = v82;
          HIWORD(v131[1]) = 2082;
          v131[2] = &v109[v70 / 4];
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d    %lu: '%{public}s'", buf, 0x26u);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v84 = *(v69 + v70 + 280);
          v83 = *(v69 + v70 + 288);
          *buf = 136315906;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 489;
          WORD2(v131[0]) = 2048;
          *(v131 + 6) = v84;
          HIWORD(v131[1]) = 2048;
          v131[2] = v83;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Arrival Time:       (%llu, %llu)", buf, 0x26u);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 490;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = &v118;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Transport:          '%{public}s'", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 491;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = &v122;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Input Data Source:  '%{public}s'", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 492;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = v121;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Output Data Source: '%{public}s'", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 493;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = v79;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Input Kind:          %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 494;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = v81;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Output Kind:         %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 316))
          {
            v85 = "yes";
          }

          else
          {
            v85 = "no";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 495;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = v85;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Can Be Input:        %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 317))
          {
            v86 = "yes";
          }

          else
          {
            v86 = "no";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 496;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = v86;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Can Be Output:       %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 318))
          {
            v87 = "yes";
          }

          else
          {
            v87 = "no";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 497;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = v87;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Can Be System:       %{public}s", buf, 0x1Cu);
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v69 + v70 + 321))
          {
            v88 = "no";
          }

          else
          {
            v88 = "yes";
          }

          *buf = 136315650;
          *&buf[4] = "HALS_DefaultDeviceManager.cpp";
          v130 = 1024;
          LODWORD(v131[0]) = 498;
          WORD2(v131[0]) = 2082;
          *(v131 + 6) = v88;
          _os_log_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d         Allows Auto-Route:   %{public}s", buf, 0x1Cu);
        }

        pthread_mutex_unlock(&DeviceInfo::DumpDeviceInfo(DeviceInfo const&)::sMutex);
        v70 += 328;
      }

      while ((v69 + v70) != __src);
    }

    pthread_mutex_unlock(&DeviceInfo::DumpHeap(std::vector<DeviceInfo> const&)::sMutex);
  }

  v90 = v115;
  v89 = v116;
  if (v115 == v116)
  {
    goto LABEL_194;
  }

  v91 = v115;
  while (v4 > 1934587251)
  {
    if (v4 == 1934587252)
    {
      if ((*(v91 + 318) & 1) == 0)
      {
        goto LABEL_193;
      }
    }

    else if (v4 != 1936224868 || (*(v91 + 319) & 1) == 0)
    {
      goto LABEL_193;
    }

LABEL_192:
    if (v91[78] <= 3)
    {
      v96 = v91[76];
      LOBYTE(v118) = HIBYTE(v96);
      BYTE1(v118) = BYTE2(v96);
      BYTE2(v118) = BYTE1(v96);
      *(&v118 + 3) = v96;
      if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v97 = *v91;
        *buf = 136316418;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        v130 = 1024;
        LODWORD(v131[0]) = 1757;
        WORD2(v131[0]) = 2082;
        *(v131 + 6) = v117;
        HIWORD(v131[1]) = 1024;
        LODWORD(v131[2]) = v97;
        WORD2(v131[2]) = 2082;
        *(&v131[2] + 6) = v91 + 6;
        HIWORD(v131[3]) = 2082;
        v131[4] = &v118;
        v98 = MEMORY[0x1E69E9C10];
LABEL_243:
        _os_log_impl(&dword_1DE1F9000, v98, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' | picking %d: '%{public}s'/'%{public}s'", buf, 0x36u);
        goto LABEL_244;
      }

      goto LABEL_244;
    }

LABEL_193:
    v91 += 82;
    if (v91 == v116)
    {
      goto LABEL_194;
    }
  }

  if (v4 != 1682533920)
  {
    if (v4 != 1682929012 || (*(v91 + 317) & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  if (*(v91 + 316) != 1 || v91[77] > 2)
  {
    goto LABEL_193;
  }

  v104 = v91[75];
  LOBYTE(v118) = HIBYTE(v104);
  BYTE1(v118) = BYTE2(v104);
  BYTE2(v118) = BYTE1(v104);
  *(&v118 + 3) = v104;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v105 = *v91;
    *buf = 136316418;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v130 = 1024;
    LODWORD(v131[0]) = 1748;
    WORD2(v131[0]) = 2082;
    *(v131 + 6) = v117;
    HIWORD(v131[1]) = 1024;
    LODWORD(v131[2]) = v105;
    WORD2(v131[2]) = 2082;
    *(&v131[2] + 6) = v91 + 6;
    HIWORD(v131[3]) = 2082;
    v131[4] = &v118;
    v98 = MEMORY[0x1E69E9C10];
    goto LABEL_243;
  }

LABEL_244:
  PreferredDefaultDevice = *v91;
  if (PreferredDefaultDevice)
  {
    goto LABEL_251;
  }

  v90 = v115;
  v89 = v116;
LABEL_194:
  if (v90 == v89)
  {
    goto LABEL_211;
  }

  v92 = v90;
  while (2)
  {
    if (v4 > 1934587251)
    {
      if (v4 == 1934587252)
      {
        if ((*(v92 + 318) & 1) == 0)
        {
          goto LABEL_210;
        }

        goto LABEL_209;
      }

      if (v4 == 1936224868 && (*(v92 + 319) & 1) != 0)
      {
        goto LABEL_209;
      }

LABEL_210:
      v92 += 82;
      if (v92 == v89)
      {
        goto LABEL_211;
      }

      continue;
    }

    break;
  }

  if (v4 != 1682533920)
  {
    if (v4 != 1682929012 || (*(v92 + 317) & 1) == 0)
    {
      goto LABEL_210;
    }

LABEL_209:
    if (v92[78] <= 4)
    {
      v99 = v92[76];
      LOBYTE(v118) = HIBYTE(v99);
      BYTE1(v118) = BYTE2(v99);
      BYTE2(v118) = BYTE1(v99);
      *(&v118 + 3) = v99;
      if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v100 = *v92;
        *buf = 136316418;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        v130 = 1024;
        LODWORD(v131[0]) = 1785;
        WORD2(v131[0]) = 2082;
        *(v131 + 6) = v117;
        HIWORD(v131[1]) = 1024;
        LODWORD(v131[2]) = v100;
        WORD2(v131[2]) = 2082;
        *(&v131[2] + 6) = v92 + 6;
        HIWORD(v131[3]) = 2082;
        v131[4] = &v118;
        v101 = MEMORY[0x1E69E9C10];
LABEL_249:
        _os_log_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' | accepting %d: '%{public}s'/'%{public}s'", buf, 0x36u);
        goto LABEL_250;
      }

      goto LABEL_250;
    }

    goto LABEL_210;
  }

  if (*(v92 + 316) != 1 || v92[77] > 3)
  {
    goto LABEL_210;
  }

  v106 = v92[75];
  LOBYTE(v118) = HIBYTE(v106);
  BYTE1(v118) = BYTE2(v106);
  BYTE2(v118) = BYTE1(v106);
  *(&v118 + 3) = v106;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v107 = *v92;
    *buf = 136316418;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v130 = 1024;
    LODWORD(v131[0]) = 1776;
    WORD2(v131[0]) = 2082;
    *(v131 + 6) = v117;
    HIWORD(v131[1]) = 1024;
    LODWORD(v131[2]) = v107;
    WORD2(v131[2]) = 2082;
    *(&v131[2] + 6) = v92 + 6;
    HIWORD(v131[3]) = 2082;
    v131[4] = &v118;
    v101 = MEMORY[0x1E69E9C10];
    goto LABEL_249;
  }

LABEL_250:
  PreferredDefaultDevice = *v92;
  if (PreferredDefaultDevice)
  {
    goto LABEL_251;
  }

  v90 = v115;
  v89 = v116;
LABEL_211:
  if (v90 == v89)
  {
LABEL_225:
    PreferredDefaultDevice = 0;
    goto LABEL_251;
  }

  while (2)
  {
    if (v4 <= 1934587251)
    {
      if (v4 == 1682533920)
      {
        if (*(v90 + 316) == 1)
        {
          v102 = v90[75];
          LOBYTE(v118) = HIBYTE(v102);
          BYTE1(v118) = BYTE2(v102);
          BYTE2(v118) = BYTE1(v102);
          *(&v118 + 3) = v102;
          if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v103 = *v90;
            *buf = 136316418;
            *&buf[4] = "HALS_DefaultDeviceManager.cpp";
            v130 = 1024;
            LODWORD(v131[0]) = 1805;
            WORD2(v131[0]) = 2082;
            *(v131 + 6) = v117;
            HIWORD(v131[1]) = 1024;
            LODWORD(v131[2]) = v103;
            WORD2(v131[2]) = 2082;
            *(&v131[2] + 6) = v90 + 6;
            HIWORD(v131[3]) = 2082;
            v131[4] = &v118;
            v95 = MEMORY[0x1E69E9C10];
            goto LABEL_238;
          }

          goto LABEL_239;
        }
      }

      else if (v4 == 1682929012 && (*(v90 + 317) & 1) != 0)
      {
        break;
      }

      goto LABEL_224;
    }

    if (v4 == 1934587252)
    {
      if (*(v90 + 318))
      {
        break;
      }

      goto LABEL_224;
    }

    if (v4 != 1936224868 || (*(v90 + 319) & 1) == 0)
    {
LABEL_224:
      v90 += 82;
      if (v90 == v89)
      {
        goto LABEL_225;
      }

      continue;
    }

    break;
  }

  v93 = v90[76];
  LOBYTE(v118) = HIBYTE(v93);
  BYTE1(v118) = BYTE2(v93);
  BYTE2(v118) = BYTE1(v93);
  *(&v118 + 3) = v93;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v94 = *v90;
    *buf = 136316418;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v130 = 1024;
    LODWORD(v131[0]) = 1814;
    WORD2(v131[0]) = 2082;
    *(v131 + 6) = v117;
    HIWORD(v131[1]) = 1024;
    LODWORD(v131[2]) = v94;
    WORD2(v131[2]) = 2082;
    *(&v131[2] + 6) = v90 + 6;
    HIWORD(v131[3]) = 2082;
    v131[4] = &v118;
    v95 = MEMORY[0x1E69E9C10];
LABEL_238:
    _os_log_impl(&dword_1DE1F9000, v95, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' | using %d: '%{public}s'/'%{public}s'", buf, 0x36u);
  }

LABEL_239:
  PreferredDefaultDevice = *v90;
LABEL_251:
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v130 = 1024;
    LODWORD(v131[0]) = 1822;
    WORD2(v131[0]) = 2082;
    *(v131 + 6) = v117;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::PickDefaultDevice:          '%{public}s' <<<---", buf, 0x1Cu);
  }

  *buf = &v115;
  std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](buf);
  if (!PreferredDefaultDevice)
  {
    if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_DefaultDeviceManager.cpp";
      v130 = 1024;
      LODWORD(v131[0]) = 1667;
      WORD2(v131[0]) = 2082;
      *(v131 + 6) = v114;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::UpdateDefaultDevice: '%{public}s' no eligible devices", buf, 0x1Cu);
    }

    PreferredDefaultDevice = 0;
  }

LABEL_259:
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v130 = 1024;
    LODWORD(v131[0]) = 1670;
    WORD2(v131[0]) = 2082;
    *(v131 + 6) = v114;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::UpdateDefaultDevice:        '%{public}s' <<<---", buf, 0x1Cu);
  }

  return PreferredDefaultDevice;
}

void sub_1DE4BA3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  a45 = &a23;
  std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](&a45);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4BA438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  a45 = &a23;
  std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

uint64_t HALS_DefaultDeviceManager::FindPreferredDefaultDevice(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v26[0] = HIBYTE(a4);
  v26[1] = BYTE2(a4);
  v26[2] = BYTE1(a4);
  v26[3] = a4;
  v26[4] = 0;
  if (*(a1 + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v38 = "HALS_DefaultDeviceManager.cpp";
    v39 = 1024;
    *v40 = 1678;
    *&v40[4] = 2082;
    *&v40[6] = v26;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' --->>>", buf, 0x1Cu);
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_29;
  }

  OS::CF::UntypedObject::UntypedObject(v25, v8);
  v25[0] = &unk_1F5991188;
  DeviceInfo::DeviceInfo(buf, v25);
  OS::CF::UntypedObject::~UntypedObject(v25);
  if (!*&v40[2])
  {
    goto LABEL_28;
  }

  v9 = *(a2 + 16);
  v10 = 304;
  if (a4 == 1682533920)
  {
    v10 = 300;
  }

  if (v9 != *&buf[v10])
  {
    goto LABEL_28;
  }

  if (a4 > 1934587251)
  {
    if (a4 != 1934587252)
    {
      if (a4 != 1936224868 || (v44 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v43)
    {
      goto LABEL_17;
    }

LABEL_28:
    OS::CF::UntypedObject::~UntypedObject((&v38 + 4));
LABEL_29:
    v13 = 0;
    if (a4 == 1682533920)
    {
      v14 = 300;
    }

    else
    {
      v14 = 304;
    }

    v15 = (a3 + 16);
    while (1)
    {
      v16 = *(v15 - 1);
      if (v16)
      {
        break;
      }

      v11 = 0;
LABEL_44:
      v15 += 6;
      if (v13++ >= 2)
      {
        goto LABEL_21;
      }
    }

    OS::CF::UntypedObject::UntypedObject(v19, v16);
    v19[0] = &unk_1F5991188;
    DeviceInfo::DeviceInfo(buf, v19);
    OS::CF::UntypedObject::~UntypedObject(v19);
    if (*&v40[2])
    {
      v17 = *v15;
      if (*v15 == *&buf[v14])
      {
        v11 = 0;
        if (a4 > 1934587251)
        {
          if (a4 == 1934587252)
          {
            if (v43)
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (a4 != 1936224868)
            {
              goto LABEL_41;
            }

            if (v44)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
          if (a4 != 1682533920)
          {
            if (a4 != 1682929012)
            {
              goto LABEL_41;
            }

            if ((v42 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_50;
          }

          if (v41 == 1)
          {
LABEL_50:
            v20 = HIBYTE(*v15);
            v21 = BYTE2(v17);
            v22 = BYTE1(v17);
            v23 = v17;
            v24 = 0;
            if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v27 = 136316674;
              v28 = "HALS_DefaultDeviceManager.cpp";
              v29 = 1024;
              v30 = 1710;
              v31 = 2082;
              v32 = v26;
              v33 = 1024;
              v34 = v13;
              v35 = 1024;
              *v36 = *buf;
              *&v36[4] = 2082;
              *&v36[6] = &v40[10];
              *&v36[14] = 2082;
              *&v36[16] = &v20;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' | found preferred[%d] %d: '%{public}s'/'%{public}s'", v27, 0x3Cu);
            }

            v11 = *buf;
LABEL_41:
            OS::CF::UntypedObject::~UntypedObject((&v38 + 4));
            if (v11)
            {
              goto LABEL_21;
            }

            goto LABEL_44;
          }
        }
      }
    }

LABEL_40:
    v11 = 0;
    goto LABEL_41;
  }

  if (a4 == 1682533920)
  {
    if (v41 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a4 != 1682929012 || (v42 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v20 = HIBYTE(*(a2 + 16));
  v21 = BYTE2(v9);
  v22 = BYTE1(v9);
  v23 = v9;
  v24 = 0;
  if (*(a1 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 136316418;
    v28 = "HALS_DefaultDeviceManager.cpp";
    v29 = 1024;
    v30 = 1692;
    v31 = 2082;
    v32 = v26;
    v33 = 1024;
    v34 = *buf;
    v35 = 2082;
    *v36 = &v40[10];
    *&v36[8] = 2082;
    *&v36[10] = &v20;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' | found transient %d: '%{public}s'/'%{public}s'", v27, 0x36u);
  }

  v11 = *buf;
  OS::CF::UntypedObject::~UntypedObject((&v38 + 4));
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_21:
  if ((*(a1 + 106) & 1) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v38 = "HALS_DefaultDeviceManager.cpp";
    v39 = 1024;
    *v40 = 1717;
    *&v40[4] = 2082;
    *&v40[6] = v26;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::FindPreferredDefaultDevice: '%{public}s' <<<---", buf, 0x1Cu);
  }

  return v11;
}

void sub_1DE4BAA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void std::vector<DeviceInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 328;
        OS::CF::UntypedObject::~UntypedObject((v4 - 320));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void DeviceInfo::DeviceInfo(DeviceInfo *this, HALS_ObjectMap *a2)
{
  *this = 0;
  *(this + 1) = &unk_1F5991188;
  *(this + 2) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 24) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0x600000005;
  *(this + 79) = 0;
  *(this + 160) = 0;
  v3 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  DeviceInfo::CatalogDeviceInfo(this, v3);
  HALS_ObjectMap::ReleaseObject(v3, v4);
}

void sub_1DE4BAB88(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  OS::CF::UntypedObject::~UntypedObject(v2);
  _Unwind_Resume(a1);
}

void std::allocator<DeviceInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<DeviceInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    OS::CF::UntypedObject::~UntypedObject((i - 320));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DeviceInfo>,DeviceInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v3 = a3;
    v5 = a1;
    v6 = a3 + 8;
    v7 = a1;
    do
    {
      *v3 = *v7;
      *(v3 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      *(v3 + 8) = &unk_1F5991188;
      memcpy((v3 + 24), (v7 + 24), 0x12AuLL);
      v7 += 328;
      v3 += 328;
      v6 += 328;
    }

    while (v7 != a2);
    do
    {
      OS::CF::UntypedObject::~UntypedObject((v5 + 8));
      v5 += 328;
    }

    while (v5 != a2);
  }
}

double DeviceInfo::CatalogDeviceInfo(DeviceInfo *this, HALS_Device *a2)
{
  if (!a2)
  {
    return result;
  }

  *this = *(a2 + 4);
  v4 = (*(*a2 + 216))(a2);
  OS::CF::UntypedObject::operator=(this + 8, v4);
  OS::CF::String::AsCString(this + 8, this + 24, 256);
  v5 = *(a2 + 54);
  *(this + 35) = *(a2 + 53);
  *(this + 36) = v5;
  TransportType = HALS_IODevice::GetTransportType(a2);
  *(this + 74) = TransportType;
  if (TransportType == 1651274862)
  {
    *(this + 75) = DeviceInfo::GetMasterDataSourceValue(a2, 1);
    *(this + 76) = DeviceInfo::GetMasterDataSourceValue(a2, 0);
  }

  v7 = *(this + 75);
  v8 = HALS_IODevice::GetTransportType(a2);
  if (!HALS_IODevice::GetNumberStreams(a2, 1))
  {
    v10 = 5;
    goto LABEL_19;
  }

  v10 = 4;
  if (v8 > 1718055535)
  {
    if (v8 > 1986622067)
    {
      if (v8 == 1986622068)
      {
        goto LABEL_19;
      }

      v11 = 1986818665;
    }

    else
    {
      if (v8 == 1718055536)
      {
        goto LABEL_19;
      }

      v11 = 1735554416;
    }

LABEL_18:
    if (v8 == v11)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

  if (v8 <= 1651275108)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    v11 = 1634300528;
    goto LABEL_18;
  }

  if (v8 == 1651275109)
  {
    if (!DeviceInfo::IsIEDActive(a2, v9))
    {
      v10 = 4;
      goto LABEL_19;
    }

    v40 = DeviceInfo::GetBTDeviceCategory(a2, v39) - 1;
    if (v40 < 3)
    {
      v10 = dword_1DE7722E0[v40];
      goto LABEL_19;
    }

LABEL_68:
    v10 = 3;
    goto LABEL_19;
  }

  if (v8 == 1668506482)
  {
LABEL_15:
    v10 = 1;
    goto LABEL_19;
  }

LABEL_53:
  v43 = *(a2 + 4);
  v47 = 0x676C6F6264727465;
  v48 = 0;
  if ((*(*a2 + 96))(a2, v43, &v47, 0) && HALS_Device::WantsDisplayRouting(a2))
  {
    goto LABEL_15;
  }

  if (v8 != 1651274862)
  {
    goto LABEL_68;
  }

  if (v7 == 1768778083)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  if (v7 == 1701669219)
  {
    v10 = 0;
  }

LABEL_19:
  *(this + 77) = v10;
  v12 = *(this + 76);
  v13 = HALS_IODevice::GetTransportType(a2);
  if (HALS_IODevice::GetNumberStreams(a2, 0))
  {
    v15 = 5;
    if (v13 > 1718055535)
    {
      if (v13 > 1986622067)
      {
        if (v13 == 1986622068)
        {
          goto LABEL_34;
        }

        v16 = 1986818665;
        goto LABEL_33;
      }

      if (v13 != 1718055536)
      {
        v16 = 1735554416;
LABEL_33:
        if (v13 == v16)
        {
          goto LABEL_34;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v13 > 1651275108)
      {
        if (v13 == 1651275109)
        {
          if (DeviceInfo::IsIEDActive(a2, v14))
          {
            v42 = DeviceInfo::GetBTDeviceCategory(a2, v41) - 1;
            if (v42 >= 3)
            {
              v15 = 4;
            }

            else
            {
              v15 = dword_1DE7722E0[v42];
            }
          }

          else
          {
            v15 = 5;
          }

          goto LABEL_34;
        }

        if (v13 == 1668506482)
        {
LABEL_30:
          v15 = 1;
          goto LABEL_34;
        }

LABEL_62:
        v44 = *(a2 + 4);
        v47 = 0x676C6F6264727465;
        v48 = 0;
        if (!(*(*a2 + 96))(a2, v44, &v47, 0))
        {
          if (v13 != 1651274862)
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }

        if (!HALS_Device::WantsDisplayRouting(a2))
        {
          if (v13 != 1651274862)
          {
            v15 = 1;
            if (v13 == 1685090932 || v13 == 1751412073)
            {
              goto LABEL_34;
            }

LABEL_76:
            v17 = 4;
            goto LABEL_35;
          }

LABEL_72:
          v15 = 2;
          v17 = 4;
          if (v12 > 1769173098)
          {
            if (v12 != 1769173099)
            {
              if (v12 != 1936745574)
              {
                goto LABEL_35;
              }

              v15 = 3;
            }
          }

          else if (v12 != 1702064235)
          {
            if (v12 != 1751412846)
            {
              goto LABEL_35;
            }

            v15 = 0;
          }

          goto LABEL_34;
        }

        goto LABEL_30;
      }

      if (v13)
      {
        v16 = 1634300528;
        goto LABEL_33;
      }
    }

LABEL_34:
    v17 = v15;
    goto LABEL_35;
  }

  v17 = 6;
LABEL_35:
  *(this + 78) = v17;
  IsHidden = HALS_Device::IsHidden(a2);
  NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 1);
  CanBeDefaultDevice = HALS_Device::CanBeDefaultDevice(a2, 1, 0);
  v21 = (a2 + 160);
  v22 = atomic_load(a2 + 40);
  v23 = HALS_Device::AreAllStreamsMixable(a2, 1);
  v24 = (NumberStreamsExcludingReferenceStreams != 0) & ~IsHidden & CanBeDefaultDevice;
  if (v22 != -1)
  {
    v24 = 0;
  }

  *(this + 316) = v24 & v23;
  v25 = HALS_Device::IsHidden(a2);
  v26 = HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 0);
  v27 = HALS_Device::CanBeDefaultDevice(a2, 0, 0);
  v28 = atomic_load(v21);
  v29 = HALS_Device::AreAllStreamsMixable(a2, 0);
  v30 = (v26 != 0) & ~v25 & v27;
  if (v28 != -1)
  {
    v30 = 0;
  }

  *(this + 317) = v30 & v29;
  v31 = HALS_Device::IsHidden(a2);
  v32 = HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 0);
  v33 = HALS_Device::CanBeDefaultDevice(a2, 0, 1);
  v34 = atomic_load(v21);
  v35 = HALS_Device::AreAllStreamsMixable(a2, 0);
  v37 = (v32 != 0) & ~v31 & v33;
  if (v34 != -1)
  {
    v37 = 0;
  }

  *(this + 318) = v37 & v35;
  *(this + 319) = *(this + 317);
  if (*(this + 74) == 1651275109)
  {
    *(this + 320) = DeviceInfo::SupportsIED(a2, v36);
  }

  v48 = 0;
  v47 = *"otuabolg";
  if ((*(*a2 + 96))(a2, *(a2 + 4), &v47, 0))
  {
    v45 = 4;
    v46 = 1;
    (*(*a2 + 120))(a2, *(a2 + 4), &v47, 4, &v45, &v46, 0, 0, 0);
    if (!v46)
    {
      *(this + 321) = 1;
      *&result = 0x500000004;
      *(this + 308) = 0x500000004;
    }
  }

  return result;
}

uint64_t DeviceInfo::GetMasterDataSourceValue(DeviceInfo *this, HALS_Device *a2)
{
  if (a2)
  {
    v2 = 1768845428;
  }

  else
  {
    v2 = 1869968496;
  }

  v3 = (*(*this + 648))(this, 1685287523, v2, 0);
  v5 = v3;
  if (v3)
  {
    SelectorControlValue = HALS_Control::GetSelectorControlValue(v3);
  }

  else
  {
    SelectorControlValue = 0;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  return SelectorControlValue;
}

uint64_t DeviceInfo::SupportsIED(DeviceInfo *this, HALS_Device *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  strcpy(buf, "edeibolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v4 = (*(*this + 96))(this, v3, buf, 0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*this + 224))(this);
    v6 = "doesn't support";
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v14 = 1024;
    v15 = 589;
    *buf = 136315906;
    if (v4)
    {
      v6 = "supports";
    }

    v16 = 2082;
    v17 = v5;
    v18 = 2082;
    v19 = v6;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | %{public}s in-ear detection", buf, 0x26u);
  }

  if (v4)
  {
    v7 = *(this + 4);
    strcpy(buf, "edeibolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v12 = 0;
    (*(*this + 120))(this, v7, buf, 4, &v12, &v12 + 4, 0, 0, 0);
    v8 = HIDWORD(v12);
    v4 = HIDWORD(v12) != 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*(*this + 224))(this);
      v10 = "off";
      *&buf[4] = "HALS_DefaultDeviceManager.cpp";
      v14 = 1024;
      v15 = 595;
      *buf = 136315906;
      v16 = 2082;
      if (v8)
      {
        v10 = "on";
      }

      v17 = v9;
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | in-ear detection is %{public}s", buf, 0x26u);
    }
  }

  return v4;
}

BOOL HALS_Device::IsHidden(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F626869646ELL;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5) != 0;
}

BOOL HALS_Device::CanBeDefaultDevice(HALS_Device *this, int a2, int a3)
{
  v3 = *(this + 4);
  if (a3)
  {
    v4 = 1936092276;
  }

  else
  {
    v4 = 1684434036;
  }

  if (a2)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = 0;
  v8 = 0;
  (*(*this + 120))(this, v3, v7, 4, &v8, &v8 + 4, 0, 0, 0);
  return HIDWORD(v8) != 0;
}

BOOL DeviceInfo::IsIEDActive(DeviceInfo *this, HALS_Device *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!DeviceInfo::SupportsIED(this, a2))
  {
    return 1;
  }

  v3 = *(this + 4);
  strcpy(buf, "pseibolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v12 = 0;
  (*(*this + 120))(this, v3, buf, 4, &v12, &v12 + 4, 0, 0, 0);
  v4 = HIDWORD(v12);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*this + 224))(this);
    if ((v4 - 1) > 2)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = off_1E86760E0[v4 - 1];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v14 = 1024;
    v15 = 611;
    v16 = 2082;
    v17 = v5;
    v18 = 2082;
    v19 = v6;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | primary: %{public}s", buf, 0x26u);
  }

  if (v4 == 1)
  {
    return 1;
  }

  v8 = *(this + 4);
  strcpy(buf, "sseibolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v12 = 0;
  (*(*this + 120))(this, v8, buf, 4, &v12, &v12 + 4, 0, 0, 0);
  v9 = HIDWORD(v12);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = (*(*this + 224))(this);
    if ((v9 - 1) > 2)
    {
      v11 = "unknown";
    }

    else
    {
      v11 = off_1E86760E0[v9 - 1];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v14 = 1024;
    v15 = 618;
    v16 = 2082;
    v17 = v10;
    v18 = 2082;
    v19 = v11;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | secondary: %{public}s", buf, 0x26u);
  }

  return v9 == 1;
}

uint64_t DeviceInfo::GetBTDeviceCategory(DeviceInfo *this, HALS_Device *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  strcpy(buf, "tacdbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v4 = 0;
  if ((*(*this + 96))(this, v3, buf, 0))
  {
    v5 = *(this + 4);
    strcpy(buf, "tacdbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v9 = 0;
    (*(*this + 120))(this, v5, buf, 4, &v9, &v9 + 4, 0, 0, 0);
    v4 = HIDWORD(v9);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(*this + 224))(this);
    if ((v4 - 1) > 2)
    {
      v7 = "Unknown";
    }

    else
    {
      v7 = off_1E86760F8[(v4 - 1)];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    v11 = 1024;
    v12 = 669;
    v13 = 2082;
    v14 = v6;
    v15 = 2082;
    v16 = v7;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Device %{public}s | %{public}s", buf, 0x26u);
  }

  return v4;
}

BOOL HALS_Device::WantsDisplayRouting(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6264727465;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5) != 0;
}

uint64_t DeviceInfo::DeviceInfo(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = &unk_1F5991188;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0x600000005;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0;
  v14[0] = 0;
  v14[1] = 0;
  HALS_System::GetInstance(v9, 0, v14);
  v4 = *&v9[0];
  if (*(&v9[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9[0] + 1));
  }

  if (v4)
  {
    v11[0] = 0;
    v11[1] = 0;
    HALS_System::GetInstance(&v12, 0, v11);
    v5 = *(a2 + 8);
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    v6 = HALS_System::CopyDeviceByUID(v12, v5, 0, v9);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v9);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    DeviceInfo::CatalogDeviceInfo(a1, v6);
    HALS_ObjectMap::ReleaseObject(v6, v7);
  }

  return a1;
}

void sub_1DE4BBE54(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v19, a2);
  OS::CF::UntypedObject::~UntypedObject(v18);
  _Unwind_Resume(a1);
}

uint64_t HALS_DefaultDeviceManager::SavedInfo::operator=(uint64_t a1, uint64_t a2)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v6, *(a2 + 8), @"uid");
  v4 = *(a1 + 8);
  *(a1 + 8) = v7;
  v7 = v4;
  OS::CF::UntypedObject::~UntypedObject(&v6);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v6, *(a2 + 8), @"master data source value");
  *(a1 + 16) = OS::CF::Number::GetValue<unsigned int>(v7, 0);
  OS::CF::UntypedObject::~UntypedObject(&v6);
  return a1;
}

uint64_t HALS_DefaultDeviceManager::GetDefaultDevice(HALS_DefaultDeviceManager *this, int a2)
{
  v7 = this;
  v4 = 0;
  v8 = HALB_Mutex::Lock(this);
  if (a2 > 1934587251)
  {
    if (a2 == 1934587252)
    {
      v5 = 320;
      goto LABEL_10;
    }

    if (a2 == 1936224868)
    {
      v5 = 424;
      goto LABEL_10;
    }
  }

  else
  {
    if (a2 == 1682533920)
    {
      v5 = 112;
      goto LABEL_10;
    }

    if (a2 == 1682929012)
    {
      v5 = 216;
LABEL_10:
      v4 = *(this + v5);
    }
  }

  HALB_Mutex::Locker::~Locker(&v7);
  return v4;
}

void HALS_DefaultDeviceManager::SetDefaultDevice(HALS_DefaultDeviceManager *this, uint64_t a2, HALS_ObjectMap *a3, char a4)
{
  v5 = a3;
  v73 = *MEMORY[0x1E69E9840];
  DeviceInfo::DeviceInfo(v60, a3);
  v8 = *(this + 107) == 1 && v64 == 1634300528;
  if (v8 || (*(this + 108) == 1 ? (v9 = v64 == 1651275109) : (v9 = 0), v9 && (v71 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v10 = v72;
  }

  v11 = v10 | a4;
  v49[0] = BYTE3(a2);
  v49[1] = BYTE2(a2);
  v49[2] = BYTE1(a2);
  v49[3] = a2;
  v49[4] = 0;
  v12 = &v66;
  if (a2 == 1682533920)
  {
    v12 = &v65;
  }

  v13 = *v12;
  v48[0] = HIBYTE(v13);
  v48[1] = BYTE2(v13);
  v48[2] = BYTE1(v13);
  v48[3] = v13;
  v48[4] = 0;
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (*buf = 136315394, *&buf[4] = "HALS_DefaultDeviceManager.cpp", *&buf[12] = 1024, *&buf[14] = 1067, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1068;
        *&buf[18] = 2082;
        v51 = v49;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetDefaultDevice:           '%{public}s' --->>>", buf, 0x1Cu);
      }
    }
  }

  if (*(this + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v14 = "";
    *buf = 136316674;
    *&buf[4] = "HALS_DefaultDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1070;
    *&buf[18] = 2082;
    if (v11)
    {
      v14 = "transient";
    }

    v51 = v49;
    v52 = 2082;
    v53 = v14;
    v54 = 1024;
    v55 = v5;
    v56 = 2082;
    v57 = &v63;
    v58 = 2082;
    v59 = v48;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetDefaultDevice:           '%{public}s' | %{public}s %d: '%{public}s'/'%{public}s'", buf, 0x40u);
  }

  if ((v11 & 1) == 0)
  {
    if (!cf)
    {
      goto LABEL_99;
    }

    if (a2 > 1934587251)
    {
      if (a2 == 1934587252)
      {
        if ((v69 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      else if (a2 != 1936224868 || (v70 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (a2 == 1682533920)
    {
      if (v67 != 1)
      {
        goto LABEL_99;
      }
    }

    else if (a2 != 1682929012 || (v68 & 1) == 0)
    {
      goto LABEL_99;
    }

    v46 = this;
    v47 = HALB_Mutex::Lock(this);
    if (a2 <= 1934587251)
    {
      if (a2 != 1682533920)
      {
        OS::CF::UntypedObject::UntypedObject(buf, cf);
        *buf = &unk_1F5991188;
        if (OS::CF::operator==(*(this + 29), *&buf[8]))
        {
          v17 = *(this + 60);
          v18 = v66;
          OS::CF::UntypedObject::~UntypedObject(buf);
          if (v17 == v18)
          {
            goto LABEL_88;
          }
        }

        else
        {
          OS::CF::UntypedObject::~UntypedObject(buf);
        }

        OS::CF::String::operator=(this + 272, *(this + 32));
        *(this + 72) = *(this + 66);
        OS::CF::String::operator=(this + 248, *(this + 29));
        *(this + 66) = *(this + 60);
        OS::CF::UntypedObject::UntypedObject(v44, cf);
        v44[0] = &unk_1F5991188;
        v33 = v66;
        OS::CF::UntypedObject::UntypedObject(buf, v44[1]);
        *&buf[16] = v33;
        v34 = *(this + 29);
        *(this + 29) = *&buf[8];
        *buf = &unk_1F5991188;
        *&buf[8] = v34;
        *(this + 60) = v33;
        OS::CF::UntypedObject::~UntypedObject(buf);
        OS::CF::UntypedObject::~UntypedObject(v44);
LABEL_88:
        OS::CF::UntypedObject::operator=(this + 296, 0);
        *(this + 78) = 0;
LABEL_95:
        v24 = &v46;
        goto LABEL_96;
      }

      OS::CF::UntypedObject::UntypedObject(buf, cf);
      *buf = &unk_1F5991188;
      if (OS::CF::operator==(*(this + 16), *&buf[8]))
      {
        v25 = *(this + 34);
        v26 = v65;
        OS::CF::UntypedObject::~UntypedObject(buf);
        if (v25 == v26)
        {
          goto LABEL_91;
        }
      }

      else
      {
        OS::CF::UntypedObject::~UntypedObject(buf);
      }

      OS::CF::String::operator=(this + 168, *(this + 19));
      *(this + 46) = *(this + 40);
      OS::CF::String::operator=(this + 144, *(this + 16));
      *(this + 40) = *(this + 34);
      OS::CF::UntypedObject::UntypedObject(v45, cf);
      v45[0] = &unk_1F5991188;
      v35 = v65;
      OS::CF::UntypedObject::UntypedObject(buf, v45[1]);
      *&buf[16] = v35;
      v36 = *(this + 16);
      *(this + 16) = *&buf[8];
      *buf = &unk_1F5991188;
      *&buf[8] = v36;
      *(this + 34) = v35;
      OS::CF::UntypedObject::~UntypedObject(buf);
      OS::CF::UntypedObject::~UntypedObject(v45);
LABEL_91:
      OS::CF::UntypedObject::operator=(this + 192, 0);
      *(this + 52) = 0;
      goto LABEL_95;
    }

    if (a2 != 1934587252)
    {
      OS::CF::UntypedObject::operator=(this + 432, 0);
      *(this + 112) = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1112;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Default Shared Output Device can only be set transiently.", buf, 0x12u);
      }

      goto LABEL_95;
    }

    OS::CF::UntypedObject::UntypedObject(buf, cf);
    *buf = &unk_1F5991188;
    if (OS::CF::operator==(*(this + 42), *&buf[8]))
    {
      v27 = *(this + 86);
      v28 = v66;
      OS::CF::UntypedObject::~UntypedObject(buf);
      if (v27 == v28)
      {
        goto LABEL_94;
      }
    }

    else
    {
      OS::CF::UntypedObject::~UntypedObject(buf);
    }

    OS::CF::String::operator=(this + 376, *(this + 45));
    *(this + 98) = *(this + 92);
    OS::CF::String::operator=(this + 352, *(this + 42));
    *(this + 92) = *(this + 86);
    OS::CF::UntypedObject::UntypedObject(v43, cf);
    v43[0] = &unk_1F5991188;
    v37 = v66;
    OS::CF::UntypedObject::UntypedObject(buf, v43[1]);
    *&buf[16] = v37;
    v38 = *(this + 42);
    *(this + 42) = *&buf[8];
    *buf = &unk_1F5991188;
    *&buf[8] = v38;
    *(this + 86) = v37;
    OS::CF::UntypedObject::~UntypedObject(buf);
    OS::CF::UntypedObject::~UntypedObject(v43);
LABEL_94:
    OS::CF::UntypedObject::operator=(this + 400, 0);
    *(this + 104) = 0;
    goto LABEL_95;
  }

  if (!v5)
  {
    *buf = this;
    *&buf[8] = HALB_Mutex::Lock(this);
    if (a2 > 1934587251)
    {
      if (a2 == 1934587252)
      {
        v15 = 416;
        v16 = 400;
        goto LABEL_75;
      }

      if (a2 == 1936224868)
      {
        v15 = 448;
        v16 = 432;
        goto LABEL_75;
      }
    }

    else
    {
      if (a2 == 1682533920)
      {
        v15 = 208;
        v16 = 192;
        goto LABEL_75;
      }

      if (a2 == 1682929012)
      {
        v15 = 312;
        v16 = 296;
LABEL_75:
        OS::CF::UntypedObject::operator=(this + v16, 0);
        *(this + v15) = 0;
      }
    }

    v24 = buf;
LABEL_96:
    HALB_Mutex::Locker::~Locker(v24);
    goto LABEL_97;
  }

  if (!cf)
  {
    goto LABEL_97;
  }

  if (a2 <= 1934587251)
  {
    if (a2 == 1682533920)
    {
      if (v67 != 1)
      {
        goto LABEL_97;
      }
    }

    else if (a2 != 1682929012 || (v68 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_68;
  }

  if (a2 == 1934587252)
  {
    if ((v69 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_68;
  }

  if (a2 == 1936224868 && (v70 & 1) != 0)
  {
LABEL_68:
    v46 = this;
    v47 = HALB_Mutex::Lock(this);
    if (a2 > 1934587251)
    {
      if (a2 == 1934587252)
      {
        OS::CF::UntypedObject::UntypedObject(v40, cf);
        v40[0] = &unk_1F5991188;
        v31 = v66;
        OS::CF::UntypedObject::UntypedObject(buf, v40[1]);
        *&buf[16] = v31;
        v32 = *(this + 51);
        *(this + 51) = *&buf[8];
        *buf = &unk_1F5991188;
        *&buf[8] = v32;
        *(this + 104) = v31;
        OS::CF::UntypedObject::~UntypedObject(buf);
        v21 = v40;
      }

      else
      {
        OS::CF::UntypedObject::UntypedObject(v39, cf);
        v39[0] = &unk_1F5991188;
        v22 = v66;
        OS::CF::UntypedObject::UntypedObject(buf, v39[1]);
        *&buf[16] = v22;
        v23 = *(this + 55);
        *(this + 55) = *&buf[8];
        *buf = &unk_1F5991188;
        *&buf[8] = v23;
        *(this + 112) = v22;
        OS::CF::UntypedObject::~UntypedObject(buf);
        v21 = v39;
      }
    }

    else if (a2 == 1682533920)
    {
      OS::CF::UntypedObject::UntypedObject(v42, cf);
      v42[0] = &unk_1F5991188;
      v29 = v65;
      OS::CF::UntypedObject::UntypedObject(buf, v42[1]);
      *&buf[16] = v29;
      v30 = *(this + 25);
      *(this + 25) = *&buf[8];
      *buf = &unk_1F5991188;
      *&buf[8] = v30;
      *(this + 52) = v29;
      OS::CF::UntypedObject::~UntypedObject(buf);
      v21 = v42;
    }

    else
    {
      OS::CF::UntypedObject::UntypedObject(v41, cf);
      v41[0] = &unk_1F5991188;
      v19 = v66;
      OS::CF::UntypedObject::UntypedObject(buf, v41[1]);
      *&buf[16] = v19;
      v20 = *(this + 38);
      *(this + 38) = *&buf[8];
      *buf = &unk_1F5991188;
      *&buf[8] = v20;
      *(this + 78) = v19;
      OS::CF::UntypedObject::~UntypedObject(buf);
      v21 = v41;
    }

    OS::CF::UntypedObject::~UntypedObject(v21);
    goto LABEL_95;
  }

LABEL_97:
  HALS_DefaultDeviceManager::WriteSettings(this);
  HALS_DefaultDeviceManager::CheckForChanges(this, a2);
  if (a2 == 1682929012)
  {
    HALS_DefaultDeviceManager::CheckForChanges(this, 1936224868);
  }

LABEL_99:
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (*buf = 136315650, *&buf[4] = "HALS_DefaultDeviceManager.cpp", *&buf[12] = 1024, *&buf[14] = 1177, *&buf[18] = 2082, v51 = v49, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetDefaultDevice:           '%{public}s' <<<---", buf, 0x1Cu), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DefaultDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1178;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u);
      }
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v61);
}

void HALS_DefaultDeviceManager::WriteSettings(HALS_DefaultDeviceManager *this)
{
  if ((*(this + 104) & 1) == 0)
  {
    OS::CF::MutableArray::MutableArray(v13);
    OS::CF::MutableArray::MutableArray(v11);
    OS::CF::MutableArray::MutableArray(v9);
    v7 = this;
    LODWORD(v8) = HALB_Mutex::Lock(this);
    v2 = this + 328;
    v3 = 3;
    do
    {
      HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(&v5, (v2 - 208));
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v14, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
      HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(&v5, (v2 - 104));
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v12, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
      HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(&v5, v2);
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v10, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
      v2 += 24;
      --v3;
    }

    while (v3);
    HALB_Mutex::Locker::~Locker(&v7);
    OS::CF::MutableDictionary::MutableDictionary(&v7);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v8, @"input", v14);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v8, @"output", v12);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v8, @"system output", v10);
    v4[0] = 0;
    v4[1] = 0;
    HALS_System::GetInstance(&v5, 0, v4);
    HALS_SettingsManager::WriteSetting(*(v5 + 1776), @"preferred devices", v8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    OS::CF::UntypedObject::~UntypedObject(&v7);
    OS::CF::UntypedObject::~UntypedObject(v9);
    OS::CF::UntypedObject::~UntypedObject(v11);
    OS::CF::UntypedObject::~UntypedObject(v13);
  }
}

void sub_1DE4BCDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject(va1);
  OS::CF::UntypedObject::~UntypedObject((v9 - 48));
  OS::CF::UntypedObject::~UntypedObject((v9 - 32));
  _Unwind_Resume(a1);
}

void HALS_DefaultDeviceManager::CheckForChanges(HALS_DefaultDeviceManager *this, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v32[0] = BYTE3(a2);
  v32[1] = BYTE2(a2);
  v32[2] = BYTE1(a2);
  v32[3] = a2;
  v32[4] = 0;
  if (*(this + 106) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v39 = "HALS_DefaultDeviceManager.cpp";
    v40 = 1024;
    v41 = 1286;
    v42 = 2082;
    v43 = v32;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:            '%{public}s' --->>>", buf, 0x1Cu);
  }

  for (i = 0; i != 72; i += 24)
  {
    v5 = &buf[i];
    *v5 = &unk_1F5991188;
    *(v5 + 1) = 0;
    *(v5 + 4) = 0;
  }

  v30[0] = &unk_1F5991188;
  v30[1] = 0;
  v31 = 0;
  *v33 = this;
  v6 = 0;
  *&v33[8] = HALB_Mutex::Lock(this);
  if (a2 > 1934587251)
  {
    if (a2 == 1934587252)
    {
      v6 = *(this + 80);
      v24 = (this + 344);
      v25 = buf;
      v26 = 3;
      do
      {
        v27 = OS::CF::String::operator=(v25, *(v24 - 1));
        v28 = *v24;
        v24 += 3;
        *(v27 + 16) = v28;
        v25 = (v27 + 24);
        --v26;
      }

      while (v26);
      v12 = (this + 400);
      HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 400);
      v13 = 416;
    }

    else
    {
      if (a2 != 1936224868)
      {
        goto LABEL_24;
      }

      v6 = *(this + 106);
      v14 = (this + 240);
      v15 = buf;
      v16 = 3;
      do
      {
        v17 = OS::CF::String::operator=(v15, *(v14 - 1));
        v18 = *v14;
        v14 += 3;
        *(v17 + 16) = v18;
        v15 = (v17 + 24);
        --v16;
      }

      while (v16);
      v12 = (this + 432);
      HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 432);
      v13 = 448;
    }
  }

  else if (a2 == 1682533920)
  {
    v6 = *(this + 28);
    v19 = (this + 136);
    v20 = buf;
    v21 = 3;
    do
    {
      v22 = OS::CF::String::operator=(v20, *(v19 - 1));
      v23 = *v19;
      v19 += 3;
      *(v22 + 16) = v23;
      v20 = (v22 + 24);
      --v21;
    }

    while (v21);
    v12 = (this + 192);
    HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 192);
    v13 = 208;
  }

  else
  {
    if (a2 != 1682929012)
    {
      goto LABEL_24;
    }

    v6 = *(this + 54);
    v7 = (this + 240);
    v8 = buf;
    v9 = 3;
    do
    {
      v10 = OS::CF::String::operator=(v8, *(v7 - 1));
      v11 = *v7;
      v7 += 3;
      *(v10 + 16) = v11;
      v8 = (v10 + 24);
      --v9;
    }

    while (v9);
    v12 = (this + 296);
    HALS_DefaultDeviceManager::CheckForChanges::$_0::operator()(this + 296);
    v13 = 312;
  }

  OS::CF::String::operator=(v30, v12[1]);
  v31 = *(this + v13);
LABEL_24:
  HALB_Mutex::Locker::~Locker(v33);
  if (v6 != HALS_DefaultDeviceManager::UpdateDefaultDevice(this, v30, buf, a2))
  {
    std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](1uLL);
  }

  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (*v33 = 136315650, *&v33[4] = "HALS_DefaultDeviceManager.cpp", v34 = 1024, v35 = 1370, v36 = 2082, v37 = v32, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:            '%{public}s' <<<---", v33, 0x1Cu), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 136315394;
        *&v33[4] = "HALS_DefaultDeviceManager.cpp";
        v34 = 1024;
        v35 = 1371;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  -----------------------------------", v33, 0x12u);
      }
    }
  }

  OS::CF::UntypedObject::~UntypedObject(v30);
  for (j = 48; j != -24; j -= 24)
  {
    OS::CF::UntypedObject::~UntypedObject(&buf[j]);
  }
}

void sub_1DE4BD310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  operator delete(v17);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  for (i = 48; i != -24; i -= 24)
  {
    OS::CF::UntypedObject::~UntypedObject((&a17 + i));
  }

  _Unwind_Resume(a1);
}

void HALS_DefaultDeviceManager::CheckForChanges(unsigned int)::$_0::operator()(uint64_t result)
{
  if (*(result + 8))
  {
    v7[0] = 0;
    v7[1] = 0;
    HALS_System::GetInstance(&v8, 0, v7);
    v2 = *(result + 8);
    memset(v5, 0, sizeof(v5));
    v6 = 1065353216;
    v3 = HALS_System::CopyDeviceByUID(v8, v2, 0, v5);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v5);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (!v3)
    {
      OS::CF::UntypedObject::operator=(result, 0);
      *(result + 16) = 0;
    }

    HALS_ObjectMap::ReleaseObject(v3, v4);
  }
}

void sub_1DE4BD40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  v11 = *(v9 - 24);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void HALS_DefaultDeviceManager::SavedInfo::MakeDictionary(HALS_DefaultDeviceManager::SavedInfo *this, uint64_t a2)
{
  OS::CF::MutableDictionary::MutableDictionary(v7);
  v4 = *(a2 + 8);
  if (v4)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"uid", v4);
    OS::CF::Number::Number<unsigned int>(v6, *(a2 + 16));
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"master data source value", v6[1]);
    OS::CF::UntypedObject::~UntypedObject(v6);
  }

  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  else
  {
    Copy = 0;
  }

  *this = &unk_1F5991008;
  *(this + 1) = Copy;
  OS::CF::UntypedObject::~UntypedObject(v7);
}

void HALS_DefaultDeviceManager::ResetDefaultDevice(HALS_DefaultDeviceManager *this, uint64_t a2)
{
  v17 = this;
  v18 = HALB_Mutex::Lock(this);
  switch(a2)
  {
    case 0x734F7574:
      OS::CF::UntypedObject::operator=(this + 400, 0);
      *(this + 104) = 0;
      v14 = &unk_1F5991188;
      cf = 0;
      v16 = 0;
      v11 = this + 328;
      v12 = -3;
      do
      {
        v13 = OS::CF::String::operator=(v11, cf);
        *(v13 + 16) = v16;
        v11 = (v13 + 24);
        v7 = __CFADD__(v12++, 1);
      }

      while (!v7);
      goto LABEL_15;
    case 0x644F7574:
      OS::CF::UntypedObject::operator=(this + 296, 0);
      *(this + 78) = 0;
      v14 = &unk_1F5991188;
      cf = 0;
      v16 = 0;
      v8 = this + 224;
      v9 = -3;
      do
      {
        v10 = OS::CF::String::operator=(v8, cf);
        *(v10 + 16) = v16;
        v8 = (v10 + 24);
        v7 = __CFADD__(v9++, 1);
      }

      while (!v7);
      goto LABEL_15;
    case 0x64496E20:
      OS::CF::UntypedObject::operator=(this + 192, 0);
      *(this + 52) = 0;
      v14 = &unk_1F5991188;
      cf = 0;
      v16 = 0;
      v4 = this + 120;
      v5 = -3;
      do
      {
        v6 = OS::CF::String::operator=(v4, cf);
        *(v6 + 16) = v16;
        v4 = (v6 + 24);
        v7 = __CFADD__(v5++, 1);
      }

      while (!v7);
LABEL_15:
      OS::CF::UntypedObject::~UntypedObject(&v14);
      break;
  }

  HALB_Mutex::Locker::~Locker(&v17);
  HALS_DefaultDeviceManager::WriteSettings(this);
  HALS_DefaultDeviceManager::CheckForChanges(this, a2);
}

void HALS_DefaultDeviceManager::CheckForChanges(HALS_DefaultDeviceManager *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (v2 = 136315394, v3 = "HALS_DefaultDeviceManager.cpp", v4 = 1024, v5 = 1214, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", &v2, 0x12u), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315394;
        v3 = "HALS_DefaultDeviceManager.cpp";
        v4 = 1024;
        v5 = 1215;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:                 --->>>", &v2, 0x12u);
      }
    }
  }

  HALS_DefaultDeviceManager::CheckForChanges(this, 1682533920);
  HALS_DefaultDeviceManager::CheckForChanges(this, 1682929012);
  HALS_DefaultDeviceManager::CheckForChanges(this, 1934587252);
  HALS_DefaultDeviceManager::CheckForChanges(this, 1936224868);
  if (*(this + 106) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (v2 = 136315394, v3 = "HALS_DefaultDeviceManager.cpp", v4 = 1024, v5 = 1222, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges:                 <<<---", &v2, 0x12u), (*(this + 106) & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315394;
        v3 = "HALS_DefaultDeviceManager.cpp";
        v4 = 1024;
        v5 = 1223;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", &v2, 0x12u);
      }
    }
  }
}

void HALS_DefaultDeviceManager::SetLoggingIsEnabled(HALS_DefaultDeviceManager *this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (g_static_start_options != 1)
  {
    if (((*(this + 105) & 1) != 0 || a2) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = "disabling";
      v6 = "HALS_DefaultDeviceManager.cpp";
      v5 = 136315650;
      if (a2)
      {
        v4 = "enabling";
      }

      v7 = 1024;
      v8 = 1380;
      v9 = 2082;
      v10 = v4;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetLoggingIsEnabled: %{public}s default device logging", &v5, 0x1Cu);
    }

    *(this + 105) = a2;
  }
}

void HALS_DefaultDeviceManager::SetVerboseLoggingIsEnabled(HALS_DefaultDeviceManager *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (g_static_start_options != 1)
  {
    if ((*(this + 106) & 1) != 0 || (*(this + 105) == 1 ? (v4 = a2 == 0) : (v4 = 1), !v4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v5 = "disabling";
        v7 = "HALS_DefaultDeviceManager.cpp";
        v6 = 136315650;
        if (a2)
        {
          v5 = "enabling";
        }

        v8 = 1024;
        v9 = 1392;
        v10 = 2082;
        v11 = v5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetVerboseLoggingIsEnabled: %{public}s verbose default device logging", &v6, 0x1Cu);
      }
    }

    *(this + 106) = *(this + 105) & a2;
  }
}

void HALS_DefaultDeviceManager::SetAirPlayIsAlwaysTransient(HALS_DefaultDeviceManager *this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = "No";
    v6 = "HALS_DefaultDeviceManager.cpp";
    v5 = 136315650;
    if (a2)
    {
      v4 = "Yes";
    }

    v7 = 1024;
    v8 = 1400;
    v9 = 2082;
    v10 = v4;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetAirPlayIsAlwaysTransient: %{public}s", &v5, 0x1Cu);
  }

  *(this + 107) = a2;
  if (HALS_DefaultDeviceManager::FilterSettings(this))
  {
    HALS_DefaultDeviceManager::WriteSettings(this);
    HALS_DefaultDeviceManager::CheckForChanges(this);
  }
}

void AMCP::make_string_for_transport_type(AMCP *this@<X0>, const char *a2@<X1>, std::string *a3@<X8>, int8x8_t a4@<D0>)
{
  if (this <= 1700886113)
  {
    if (this <= 1651271008)
    {
      switch(this)
      {
        case 0:
          v4 = "Unknown";
          goto LABEL_39;
        case 0x31333934:
          v4 = "FireWire";
          goto LABEL_39;
        case 0x61697270:
          v4 = "Airplay";
          goto LABEL_39;
      }
    }

    else if (this > 1651275108)
    {
      if (this == 1651275109)
      {
        v4 = "Bluetooth";
        goto LABEL_39;
      }

      if (this == 1685090932)
      {
        v4 = "Display Port";
        goto LABEL_39;
      }
    }

    else
    {
      if (this == 1651271009)
      {
        v4 = "Bluetooth LE";
        goto LABEL_39;
      }

      if (this == 1651274862)
      {
        v4 = "Built-In";
        goto LABEL_39;
      }
    }
  }

  else if (this > 1953002861)
  {
    if (this > 1986622067)
    {
      if (this == 1986622068)
      {
        v4 = "Virtual";
        goto LABEL_39;
      }

      if (this == 1986818665)
      {
        v4 = "System Capture";
        goto LABEL_39;
      }
    }

    else
    {
      if (this == 1953002862)
      {
        v4 = "Thunderbolt";
        goto LABEL_39;
      }

      if (this == 1970496032)
      {
        v4 = "USB";
        goto LABEL_39;
      }
    }
  }

  else if (this > 1835169138)
  {
    if (this == 1835169139)
    {
      v4 = "Mikey Bus";
      goto LABEL_39;
    }

    if (this == 1885563168)
    {
      v4 = "PCI";
      goto LABEL_39;
    }
  }

  else
  {
    if (this == 1700886114)
    {
      v4 = "AVB";
      goto LABEL_39;
    }

    if (this == 1751412073)
    {
      v4 = "HDMI";
LABEL_39:
      std::string::basic_string[abi:ne200100]<0>(a3, v4);
      return;
    }
  }

  a4.i32[0] = bswap32(this);
  v5 = vzip1_s8(a4, a4);
  v6.i64[0] = 0x1F0000001FLL;
  v6.i64[1] = 0x1F0000001FLL;
  v7.i64[0] = 0x5F0000005FLL;
  v7.i64[1] = 0x5F0000005FLL;
  v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
  v10 = 4;
  LODWORD(__p) = vuzp1_s8(v8, v8).u32[0];
  BYTE4(__p) = 0;
  caulk::make_string(a3, "Transport '%s'", a2, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

BOOL HALB_ChangeSynchronizer::SetStateIf(atomic_uint *a1, int a2, unsigned int a3)
{
  v6 = 0;
  v25 = *MEMORY[0x1E69E9840];
  do
  {
    if (HALB_ChangeSynchronizer::SetStateIf(HALB_ChangeSynchronizer::ChangeStatus,HALB_ChangeSynchronizer::ChangeStatus)::kTransitionTable[v6] == a2 && HALB_ChangeSynchronizer::SetStateIf(HALB_ChangeSynchronizer::ChangeStatus,HALB_ChangeSynchronizer::ChangeStatus)::kTransitionTable[v6 + 1] == a3)
    {
      v11 = a2;
      atomic_compare_exchange_strong(a1 + 2, &v11, a3);
      return v11 == a2;
    }

    v6 += 2;
  }

  while (v6 != 26);
  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *v9;
  }

  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v13 = HALB_ChangeSynchronizer::ChangeStatusToString(HALB_ChangeSynchronizer::ChangeStatus)::kStatusNames[a2];
    v14 = HALB_ChangeSynchronizer::ChangeStatusToString(HALB_ChangeSynchronizer::ChangeStatus)::kStatusNames[a3];
    v15 = 136316162;
    v16 = "HALB_ChangeSynchronizer.cpp";
    v17 = 1024;
    v18 = 82;
    v19 = 2048;
    v20 = a1;
    v21 = 2080;
    v22 = v13;
    v23 = 2080;
    v24 = v14;
    _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] HALB_ChangeSynchronizer::SetStateIf: Change synchronizer state change (%p) preventing unexpected state transition %s -> %s (DEBUG ONLY)", &v15, 0x30u);
    return 0;
  }

  return result;
}

unint64_t AMCP::Stable_Raw_Clock::calculate_early_threshold(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 15);
  if (*&this[24]._os_unfair_lock_opaque < 3uLL)
  {
    v2 = -48000;
  }

  else
  {
    v2 = *(boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::at(&this[16]._os_unfair_lock_opaque, 2) + 8) - 48000;
  }

  os_unfair_lock_unlock(this + 15);
  LODWORD(v3) = this[4];
  return v2 + (*&this[12]._os_unfair_lock_opaque * v3);
}

void AMCP::Stable_Raw_Clock::process_time_stamp(os_unfair_lock_s *a1, __int128 *a2)
{
  if ((*(*&a1->_os_unfair_lock_opaque + 32))(a1))
  {
    (*(*&a1->_os_unfair_lock_opaque + 40))(a1, a2);
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
    os_unfair_lock_lock(a1 + 15);
    boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>(&a1[16], &v4);
    os_unfair_lock_unlock(a1 + 15);
  }

  ++a1[6]._os_unfair_lock_opaque;

  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
}

void AMCP::Stable_Raw_Clock::process_initial_time_stamps(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  if ((v4 & 1) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Stable_Raw_Clock.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 68;
      *&buf[18] = 2080;
      *&buf[20] = "not (need_to_process_initial_stamps())";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v28 = "virtual void AMCP::Stable_Raw_Clock::process_initial_time_stamps(const Zero_Time_Stamp &)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/Stable_Raw_Clock.cpp";
    v30 = 68;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  LODWORD(v5) = *(a1 + 16);
  v6 = v5;
  v7 = *(a2 + 16);
  v8 = *(a2 + 8) - 2 * (*(a1 + 40) * v6);
  *buf = *a2 + v6 * -2.0;
  *&buf[8] = v8;
  *&buf[16] = v7;
  os_unfair_lock_lock((a1 + 60));
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>((a1 + 64), buf);
  os_unfair_lock_unlock((a1 + 60));
  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
  LODWORD(v9) = *(a1 + 16);
  v10 = v9;
  v11 = *(a2 + 8) - (*(a1 + 40) * v10);
  *buf = *a2 - v10;
  *&buf[8] = v11;
  *&buf[16] = v7;
  os_unfair_lock_lock((a1 + 60));
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>((a1 + 64), buf);
  os_unfair_lock_unlock((a1 + 60));
  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
  *buf = *a2;
  *&buf[16] = *(a2 + 16);
  os_unfair_lock_lock((a1 + 60));
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>((a1 + 64), buf);
  os_unfair_lock_unlock((a1 + 60));

  AMCP::Time_Stamp_Historian::calculate_and_save_delta(a1);
}

void sub_1DE4BECA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::Stable_Raw_Clock::~Stable_Raw_Clock(char **this)
{
  *this = &unk_1F598B740;
  v1 = this + 8;
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(this + 14);
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598B740;
  v1 = this + 8;
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(this + 14);
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(v1);
}

void HALS_IOStreamDSP::GraphV2::Run(uint64_t a1, double *a2, int a3, void *a4, uint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v7 = a7;
  v71 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v53 - v15;
  if (v14 != v13)
  {
    if (((v14 - v13) >> 4) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v14 - v13) >> 4;
    }

    v19 = (v13 + 4);
    v20 = (&v53 - v15);
    do
    {
      v21 = *v19;
      v19 += 4;
      *v20++ = v21;
      --v18;
    }

    while (v18);
  }

  *v60 = *(v13 + 4);
  *&v60[4] = v16;
  *&v60[8] = 1;
  v56.__r_.__value_.__r.__words[0] = 0;
  inited = CADSPGraphCalculateExpectedNumberOfOutputPCMFramesWithFlags_delayInitStub(v16);
  v24 = v56.__r_.__value_.__r.__words[0];
  if (inited)
  {
    v25 = 0;
  }

  else
  {
    v25 = v56.__r_.__value_.__r.__words[0] == 0;
  }

  if (v25)
  {
    v24 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v23);
    v56.__r_.__value_.__r.__words[0] = v24;
  }

  v57 = v24;
  if (v24)
  {
    v57 = 0;
    buf[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v57, v23);
    *buf = 0;
    v56.__r_.__value_.__r.__words[0] = 0;
    v65 = v24;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v56, v43);
    LOBYTE(v66) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v44);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    Code_delayInitStub = CADSPRealTimeErrorGetCode_delayInitStub(v45);
    caulk::string_from_4cc(v60, Code_delayInitStub);
    if (SBYTE3(v64) >= 0)
    {
      v47 = v60;
    }

    else
    {
      v47 = *v60;
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 688;
    *&buf[18] = 2080;
    *&buf[20] = v47;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to calculate DSP I/O frame counts with error %s", buf, 0x1Cu);
    if (SBYTE3(v64) < 0)
    {
      operator delete(*v60);
    }

    if ((v66 & 1) == 0)
    {
LABEL_35:
      v48 = &v65;
LABEL_44:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v48, v45);
    }
  }

  else
  {
    buf[8] = 1;
    v26 = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v57, v23);
    MEMORY[0x1EEE9AC00](v26);
    if (v29 != v30)
    {
      v54 = a6;
      v55 = v7;
      v31 = 0;
      v32 = 0;
      if (a3)
      {
        v33 = a2;
      }

      else
      {
        v33 = 0;
      }

      v34 = (&v53 - v27 + 16);
      *&v28 = 136315394;
      v53 = v28;
      do
      {
        v35 = *a5;
        v36 = *&v17[4 * v32];
        *v34 = v36;
        *(v34 - 1) = a2;
        v37 = v35 + v31;
        v38 = *(v35 + v31 + 40);
        *(v34 - 2) = v38;
        v39 = *(v37 + 80);
        if (v39)
        {
          HALB_CaptureFile::Write(v39, 0, v33, 0, v36, *(v38 + 16));
        }

        ++v32;
        v34 += 6;
        v31 += 88;
      }

      while (v32 < (a4[1] - *a4) >> 4);
      v7 = v55;
      a6 = v54;
    }

    v69 = 0u;
    v70 = 0u;
    memset(buf, 0, sizeof(buf));
    v67 = v59;
    v65 = a6;
    v66 = buf;
    v56.__r_.__value_.__r.__words[0] = 0;
    v40 = CADSPGraphProcessPCMData_delayInitStub(0.0);
    v42 = v56.__r_.__value_.__r.__words[0];
    if (!v40 && !v56.__r_.__value_.__r.__words[0])
    {
      v42 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v41);
      v56.__r_.__value_.__r.__words[0] = v42;
    }

    v57 = v42;
    if (!v42)
    {
      v60[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v57, v41);
      v58 = 1;
      *v7 = v67;
      return;
    }

    v57 = 0;
    v60[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v57, v41);
    *v60 = 0;
    v56.__r_.__value_.__r.__words[0] = 0;
    v57 = v42;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v56, v49);
    v58 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v60, v50);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    Code = CA::DSP::RealTimeError::GetCode(v42, v45);
    caulk::string_from_4cc(&v56, Code);
    v52 = (v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v56 : v56.__r_.__value_.__r.__words[0];
    *v60 = 136315650;
    *&v60[4] = "HALS_IOStreamDSP.cpp";
    v61 = 1024;
    v62 = 728;
    v63 = 2080;
    v64 = v52;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to run DSP with error %s", v60, 0x1Cu);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if ((v58 & 1) == 0)
    {
LABEL_43:
      v48 = &v57;
      goto LABEL_44;
    }
  }
}

void sub_1DE4BF370(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(void *a1, double a2)
{
  if (*a1)
  {
    CADSPRealTimeErrorRelease_delayInitStub(a2);
    *a1 = 0;
  }

  return a1;
}

void HALS_IOStreamDSP::GraphV2::Reset(HALS_IOStreamDSP::GraphV2 *this, double a2)
{
  v18 = *MEMORY[0x1E69E9840];
  __p.__r_.__value_.__r.__words[0] = 0;
  inited = 0;
  if (CADSPGraphReset_delayInitStub(a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = __p.__r_.__value_.__r.__words[0] == 0;
  }

  if (v4)
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v2);
    __p.__r_.__value_.__r.__words[0] = inited;
  }

  v11 = inited;
  if (inited)
  {
    v11 = 0;
    buf[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11, v2);
    *buf = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    v11 = inited;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v5);
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v6);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    Code = CA::DSP::RealTimeError::GetCode(inited, v7);
    caulk::string_from_4cc(&__p, Code);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v14 = 1024;
    v15 = 661;
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to reset DSP with error %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v12 & 1) == 0)
    {
LABEL_16:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11, v7);
    }
  }

  else
  {
    buf[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11, v2);
    v12 = 1;
  }
}

void sub_1DE4BF588(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double HALS_IOStreamDSP::GraphV2::GetLatencySeconds(HALS_IOStreamDSP::GraphV2 *this, double a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0.0;
  v13 = 0;
  inited = 0;
  if (CADSPGraphGetLatency_delayInitStub(a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = v13 == 0;
  }

  if (v4)
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v2);
    v13 = inited;
  }

  v12 = inited;
  if (inited)
  {
    v12 = 0;
    v11 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12, v2);
    v10 = 0;
    v13 = 0;
    v14 = *&inited;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13, v7);
    LOBYTE(v15) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10, v8);
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14, v9);
    return 0.0;
  }

  else
  {
    v5 = v15;
    v11 = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12, v2);
    v14 = v5;
    LOBYTE(v15) = 1;
  }

  return v5;
}

void sub_1DE4BF69C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::GetParameter(CA::DSP::Graph **this, uint64_t a2, float *a3, double a4)
{
  v5 = a2;
  v34 = *MEMORY[0x1E69E9840];
  if (!CA::DSP::Graph::HasParameter(this[1], a4))
  {
    return 0;
  }

  v6 = bswap32(v5);
  *&buf[1] = v6;
  if ((v6 - 32) > 0x5E || ((v6 >> 8) - 32) > 0x5E || ((v6 << 8 >> 24) - 32) > 0x5E || ((v6 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v25, v5);
  }

  else
  {
    strcpy(&buf[5], "'");
    buf[0] = 39;
    std::string::basic_string[abi:ne200100]<0>(&v25, buf);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v28 = 1024;
    v29 = 631;
    v30 = 2080;
    v31 = v9;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  getting parameter %s", buf, 0x1Cu);
  }

  *&buf[8] = 0;
  v23 = 0;
  Parameter_delayInitStub = CADSPGraphGetParameter_delayInitStub(v8);
  inited = 0;
  if (!Parameter_delayInitStub)
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v11);
    v23 = inited;
  }

  v26 = inited;
  if (inited)
  {
    v26 = 0;
    __p.__r_.__value_.__r.__words[0] = inited;
    __p.__r_.__value_.__s.__data_[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26, v11);
    v15 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    *buf = 0;
    v23 = v15;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v16);
    v24 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v17);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v19 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
      Code = CA::DSP::RealTimeError::GetCode(v23, v18);
      caulk::string_from_4cc(&__p, Code);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      v28 = 1024;
      v29 = 637;
      v30 = 2080;
      v31 = v19;
      v32 = 2080;
      v33 = v21;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to get parameter %s with error %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v23, v18);
    v7 = 0;
  }

  else
  {
    v13 = *&buf[8];
    LODWORD(__p.__r_.__value_.__l.__data_) = *&buf[8];
    v7 = 1;
    __p.__r_.__value_.__s.__data_[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26, v11);
    LODWORD(v23) = v13;
    v24 = 1;
    *a3 = v13;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1DE4BF9E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::SetParameter(CA::DSP::Graph **this, uint64_t a2, double a3)
{
  v3 = *&a3;
  v4 = a2;
  v29 = *MEMORY[0x1E69E9840];
  if (!CA::DSP::Graph::HasParameter(this[1], a3))
  {
    return 0;
  }

  v5 = bswap32(v4);
  *&buf[1] = v5;
  if ((v5 - 32) > 0x5E || ((v5 >> 8) - 32) > 0x5E || ((v5 << 8 >> 24) - 32) > 0x5E || ((v5 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v21, v4);
  }

  else
  {
    strcpy(&buf[5], "'");
    buf[0] = 39;
    std::string::basic_string[abi:ne200100]<0>(&v21, buf);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v21.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v23 = 1024;
    v24 = 610;
    v25 = 2080;
    v26 = v8;
    v27 = 2048;
    v28 = v3;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  setting parameter %s to %f", buf, 0x26u);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  *&v7 = v3;
  inited = 0;
  if (!CADSPGraphSetParameter_delayInitStub(v7))
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v9);
    __p.__r_.__value_.__r.__words[0] = inited;
  }

  v19 = inited;
  if (inited)
  {
    v19 = 0;
    buf[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v19, v9);
    *buf = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    v19 = inited;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v12);
    v20 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v13);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v21;
    }

    else
    {
      v15 = v21.__r_.__value_.__r.__words[0];
    }

    Code = CA::DSP::RealTimeError::GetCode(inited, v14);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      *&data = COERCE_DOUBLE(&__p);
    }

    else
    {
      data = __p.__r_.__value_.__l.__data_;
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v23 = 1024;
    v24 = 616;
    v25 = 2080;
    v26 = v15;
    v27 = 2080;
    v28 = *&data;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to set parameter %s with error %s", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v20 & 1) == 0)
    {
LABEL_30:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v19, v14);
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
    buf[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v19, v9);
    v20 = 1;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1DE4BFCF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::GetProperty(CA::DSP::Graph **this, uint64_t a2, unsigned int *a3, void *a4, double a5)
{
  v6 = a2;
  v32 = *MEMORY[0x1E69E9840];
  if (!CA::DSP::Graph::HasProperty(this[1], a5))
  {
    return 0;
  }

  v7 = bswap32(v6);
  *&buf[1] = v7;
  if ((v7 - 32) > 0x5E || ((v7 >> 8) - 32) > 0x5E || ((v7 << 8 >> 24) - 32) > 0x5E || ((v7 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v24, v6);
  }

  else
  {
    strcpy(&buf[5], "'");
    buf[0] = 39;
    std::string::basic_string[abi:ne200100]<0>(&v24, buf);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v24.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v26 = 1024;
    v27 = 581;
    v28 = 2080;
    v29 = v10;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  getting DSP property %s", buf, 0x1Cu);
  }

  v23 = *a3;
  __p.__r_.__value_.__r.__words[0] = 0;
  inited = 0;
  if (!CADSPGraphGetProperty_delayInitStub(v9))
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v11);
    __p.__r_.__value_.__r.__words[0] = inited;
  }

  v21 = inited;
  if (inited)
  {
    v21 = 0;
    buf[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v21, v11);
    *buf = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    v21 = inited;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v14);
    v22 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v15);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v24;
    }

    else
    {
      v17 = v24.__r_.__value_.__r.__words[0];
    }

    Code = CA::DSP::RealTimeError::GetCode(inited, v16);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v26 = 1024;
    v27 = 589;
    v28 = 2080;
    v29 = v17;
    v30 = 2080;
    v31 = p_p;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to get property %s with error %s", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v22 & 1) == 0)
    {
LABEL_30:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v21, v16);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
    buf[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v21, v11);
    v22 = 1;
    *a3 = v23;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_1DE4C003C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::GetPropertyInfo(CA::DSP::Graph **this, uint64_t a2, unsigned int *a3, BOOL *a4, double a5)
{
  v7 = a2;
  v32 = *MEMORY[0x1E69E9840];
  if (!CA::DSP::Graph::HasProperty(this[1], a5))
  {
    return 0;
  }

  v8 = bswap32(v7);
  *&buf[1] = v8;
  if ((v8 - 32) > 0x5E || ((v8 >> 8) - 32) > 0x5E || ((v8 << 8 >> 24) - 32) > 0x5E || ((v8 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v25, v7);
  }

  else
  {
    strcpy(&buf[5], "'");
    buf[0] = 39;
    std::string::basic_string[abi:ne200100]<0>(&v25, buf);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v25.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 557;
    v28 = 2080;
    v29 = v11;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  getting DSP property info %s", buf, 0x1Cu);
  }

  *&buf[8] = 0;
  inited = 0;
  if (!CADSPGraphGetPropertyInfo_delayInitStub(v10))
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v12);
    v23 = inited;
  }

  v26 = inited;
  if (inited)
  {
    v26 = 0;
    __p.__r_.__value_.__s.__data_[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26, v12);
    __p.__r_.__value_.__r.__words[0] = 0;
    *buf = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v16);
    v23 = inited;
    v24 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v17);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    Code = CA::DSP::RealTimeError::GetCode(inited, v18);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 563;
    v28 = 2080;
    v29 = v19;
    v30 = 2080;
    v31 = p_p;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to get DSP property info %s with error %s", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v24 & 1) == 0)
    {
LABEL_30:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v23, v18);
    }

    v9 = 0;
  }

  else
  {
    v14 = *&buf[8];
    v9 = 1;
    __p.__r_.__value_.__s.__data_[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v26, v12);
    v23 = v14;
    v24 = 1;
    *a3 = HIDWORD(v14);
    *a4 = (v14 & 2) != 0;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1DE4C0360(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOStreamDSP::GraphV2::SetProperty(CA::DSP::Graph **this, uint64_t a2, uint64_t a3, const void *a4, double a5)
{
  v5 = a2;
  v30 = *MEMORY[0x1E69E9840];
  if (!CA::DSP::Graph::HasProperty(this[1], a5))
  {
    return 0;
  }

  v6 = bswap32(v5);
  *&buf[1] = v6;
  if ((v6 - 32) > 0x5E || ((v6 >> 8) - 32) > 0x5E || ((v6 << 8 >> 24) - 32) > 0x5E || ((v6 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v22, v5);
  }

  else
  {
    strcpy(&buf[5], "'");
    buf[0] = 39;
    std::string::basic_string[abi:ne200100]<0>(&v22, buf);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = &v22;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v22.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v24 = 1024;
    v25 = 536;
    v26 = 2080;
    v27 = v9;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  setting DSP property info %s", buf, 0x1Cu);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  inited = 0;
  if (!CADSPGraphSetProperty_delayInitStub(v8))
  {
    inited = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator_delayInitStub(v10);
    __p.__r_.__value_.__r.__words[0] = inited;
  }

  v20 = inited;
  if (inited)
  {
    v20 = 0;
    buf[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v20, v10);
    *buf = 0;
    __p.__r_.__value_.__r.__words[0] = 0;
    v20 = inited;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p, v13);
    v21 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf, v14);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v22;
    }

    else
    {
      v16 = v22.__r_.__value_.__r.__words[0];
    }

    Code = CA::DSP::RealTimeError::GetCode(inited, v15);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOStreamDSP.cpp";
    v24 = 1024;
    v25 = 542;
    v26 = 2080;
    v27 = v16;
    v28 = 2080;
    v29 = p_p;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  failed to set DSP property %s with error %s", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v21 & 1) == 0)
    {
LABEL_30:
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v20, v15);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
    buf[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v20, v10);
    v21 = 1;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1DE4C0668(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void HALS_IOStreamDSP::GraphV2::~GraphV2(HALS_IOStreamDSP::GraphV2 *this, double a2)
{
  HALS_IOStreamDSP::GraphV2::~GraphV2(this, a2);

  JUMPOUT(0x1E12C1730);
}

{
  v3 = (this + 16);
  if (*(this + 2) && RPBServerGetSharedInstance_delayInitStub(a2))
  {
    RPBServerRemoveHost_delayInitStub(v4);
  }

  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v3);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 1);
}

const void **CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<HALS_IOStreamDSP::InputChannelData>>::destroy[abi:ne200100]<HALS_IOStreamDSP::InputChannelData,void,0>(uint64_t a1)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((a1 + 80), 0);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((a1 + 40), 0);

  return std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](a1 + 48);
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1DE4C084C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_0,std::allocator<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_0>,void ()(AudioBufferList *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN16HALS_IOStreamDSP15AllocateBuffersEjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS_11CaptureFileE17AudioCapturerModeE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_1,std::allocator<HALS_IOStreamDSP::AllocateBuffers(unsigned int,std::string const&,HALS_IOStreamDSP::CaptureFile,AudioCapturerMode)::$_1>,void ()(AudioBufferList *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN16HALS_IOStreamDSP15AllocateBuffersEjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS_11CaptureFileE17AudioCapturerModeE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HALS_IOStreamDSP::InputChannelData::~InputChannelData(HALS_IOStreamDSP::InputChannelData *this)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](this + 5, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](this + 48);
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = "DSP graph API version {} is not supported";
  v14[0] = "DSP graph API version {} is not supported";
  v14[1] = "";
  v15 = 0;
  v16 = 0;
  v17 = v2;
  v10 = *a2;
  v11 = a2[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v4 = "The format string terminates at a '{'";
  v13 = 0;
  do
  {
    v5 = v9;
    while (1)
    {
      v6 = *v3;
      if (v6 == 125)
      {
        if (++v3 == "" || *v3 != 125)
        {
          v4 = "The format string contains an invalid escape sequence";
LABEL_17:
          std::__throw_format_error[abi:ne200100](v4);
        }

        goto LABEL_10;
      }

      if (v6 == 123)
      {
        if (++v3 == "")
        {
          goto LABEL_17;
        }

        if (*v3 != 123)
        {
          break;
        }
      }

LABEL_10:
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v5, v6);
      if (++v3 == "")
      {
        goto LABEL_13;
      }
    }

    v9 = v5;
    v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, "", v14, &v9);
  }

  while (v3 != "");
LABEL_13:
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }
}

void sub_1DE4C0BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string<std::string_view,0>(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, uint64_t **a4)
{
  *&v291[1023] = *MEMORY[0x1E69E9840];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_523;
  }

  v9 = *v7;
  if (v9 != 125)
  {
    if (v9 == 58)
    {
      ++v7;
      goto LABEL_5;
    }

LABEL_523:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

LABEL_5:
  *a3 = v7;
  v10 = a4[1];
  if (v10 <= v8)
  {
LABEL_524:
    std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }

  if (v10 > 0xC)
  {
    v11 = &a4[2][4 * v8];
    v13 = *v11;
    v14 = *(v11 + 4);
    v15 = *(v11 + 8);
    v16 = *v11 >> 8;
    LODWORD(v11) = *(v11 + 16);
  }

  else
  {
    v11 = (a4[3] >> (5 * v8)) & 0x1F;
    v12 = &a4[2][2 * v8];
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v12 + 8);
    v16 = *v12 >> 8;
  }

  switch(v11)
  {
    case 1:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_225;
      }

      v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 55);
      v18 = v17;
      if (BYTE1(v285) - 2 < 6)
      {
        *a3 = v17;
        v19 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
        v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v13, a4, v19, v20, 0);
        goto LABEL_13;
      }

      if (BYTE1(v285) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v285, "a BOOL");
      if ((v285 & 7) == 0)
      {
        LOBYTE(v285) = v285 | 1;
      }

      *a3 = v18;
LABEL_225:
      v125 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v127 = v126;
      if ((v125 & 0x40) != 0)
      {
        std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v289, a4);
        v130 = std::locale::use_facet(&v289, MEMORY[0x1E69E5368]);
        std::locale::~locale(&v289);
        v131 = v130->__vftable;
        if (v13)
        {
          (v131[2].~facet)(&v289, v130);
        }

        else
        {
          (v131[2].~facet_0)(&v289, v130);
        }

        if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v289;
        }

        else
        {
          v132 = v289.__r_.__value_.__r.__words[0];
        }

        if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v289.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v289.__r_.__value_.__l.__size_;
        }

        v22 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v132, size, *a4, v125, v127);
        if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
        {
          v134 = v289.__r_.__value_.__r.__words[0];
          goto LABEL_466;
        }
      }

      else
      {
        if (v13)
        {
          v128 = 4;
        }

        else
        {
          v128 = 5;
        }

        v22 = *a4;
        if (v13)
        {
          v129 = "true";
        }

        else
        {
          v129 = "false";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v129, v128, *a4, v125, v127, v128);
      }

      goto LABEL_467;
    case 2:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_51;
      }

      v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 55);
      v45 = BYTE1(v285);
      if (BYTE1(v285) - 2 >= 6)
      {
        if (BYTE1(v285) > 0x13u || ((1 << SBYTE1(v285)) & 0x80401) == 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
        }

        std::__format_spec::__parser<char>::__validate[abi:ne200100](&v285, "a character");
        if ((v285 & 7) == 0)
        {
          LOBYTE(v285) = v285 | 1;
        }
      }

      *a3 = v44;
      switch(v45)
      {
        case 0:
          goto LABEL_51;
        case 19:
          v35 = *a4;
          v135 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
          v137 = v136;
          __p.__r_.__value_.__s.__data_[0] = v13;
          memset(&v289, 0, sizeof(v289));
          std::string::push_back(&v289, 39);
          std::__formatter::__escape[abi:ne200100]<char>(&v289, &__p, 1, 0);
          std::string::push_back(&v289, 39);
          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v138 = &v289 + HIBYTE(v289.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v138 = (v289.__r_.__value_.__r.__words[0] + v289.__r_.__value_.__l.__size_);
          }

          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v139 = &v289;
          }

          else
          {
            v139 = v289.__r_.__value_.__r.__words[0];
          }

          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v140 = HIBYTE(v289.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v140 = v289.__r_.__value_.__l.__size_;
          }

          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v139, v138 - v139, v35, v135, v137, v140);
          if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          goto LABEL_113;
        case 10:
LABEL_51:
          v35 = *a4;
          v46 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
          v289.__r_.__value_.__s.__data_[0] = v13;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v289, 1uLL, v35, v46, v47, 1);
          goto LABEL_113;
      }

      v75 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v76 = v141;
      v53 = v13;
      v74 = a4;
      goto LABEL_106;
    case 3:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v48 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v48;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v33 = v49;
      v50 = v13 | (v16 << 8);
      if ((v31 & 0xFF00) == 0xA00)
      {
        if ((v13 | (v16 << 8)) == v13)
        {
          goto LABEL_27;
        }

LABEL_525:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      if (v50 >= 0)
      {
        v53 = v50;
      }

      else
      {
        v53 = -v50;
      }

      v73 = v16 << 8 >> 31;
      v74 = a4;
      v75 = v31;
      v76 = v33;
      goto LABEL_107;
    case 4:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v30 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v30;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v33 = v32;
      v34 = v13 | (v16 << 8) | (v14 << 32);
      if ((v31 & 0xFF00) != 0xA00)
      {
        if (v34 >= 0)
        {
          v62 = v13 | (v16 << 8) | (v14 << 32);
        }

        else
        {
          v62 = -v34;
        }

        v42 = v14 >> 31;
        v67 = a4;
        v68 = v31;
        v69 = v33;
        goto LABEL_111;
      }

      if (v34 != v34)
      {
        goto LABEL_525;
      }

LABEL_27:
      v35 = *a4;
      LOBYTE(v285) = v13;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v285, 1uLL, v35, v31, v33, 1);
LABEL_113:
      *a4 = v35;
LABEL_468:
      v245 = *a3;
      if (*a3 == a2 || *v245 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
      }

      return v245 + 1;
    case 5:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v54 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v54;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v55;
      v56 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) >= __PAIR128__((v56 >= 0x80) + v15 - 1, v56 - 128))
        {
          goto LABEL_525;
        }

LABEL_80:
        v35 = *a4;
        LOBYTE(v285) = v13;
        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v285, 1uLL, v35, v40, v42, 1);
        goto LABEL_113;
      }

      v70 = (__PAIR128__(v15 ^ (v15 >> 63), v56 ^ (v15 >> 63)) - __PAIR128__(v15 >> 63, v15 >> 63)) >> 64;
      v43 = (v56 ^ (v15 >> 63)) - (v15 >> 63);
      v72 = v15 >> 63;
      v71 = a4;
LABEL_109:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v70, v71, v40, v42, v72);
      goto LABEL_112;
    case 6:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v51 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v51;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v52;
      v53 = v13 | (v16 << 8);
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (v53 >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v74 = a4;
      v75 = v40;
      v76 = v42;
LABEL_106:
      LOBYTE(v73) = 0;
LABEL_107:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v53, v74, v75, v76, v73);
LABEL_112:
      v35 = v77;
      goto LABEL_113;
    case 7:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v60 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v60;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v61;
      v62 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v67 = a4;
        v68 = v40;
        v69 = v42;
        LOBYTE(v42) = 0;
LABEL_111:
        v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v62, v67, v68, v69, v42);
        goto LABEL_112;
      }

      if (v62 >= 0x80)
      {
        goto LABEL_525;
      }

      goto LABEL_80;
    case 8:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v39 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v39;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v41;
      v43 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(v15, v43) >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v70 = v15;
      v71 = a4;
      LOBYTE(v72) = 0;
      goto LABEL_109;
    case 9:
      v277 = 0;
      v278 = -1;
      v279 = 32;
      v280 = 0;
      v281 = 0;
      if (v9 != 58)
      {
        goto LABEL_117;
      }

      v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v277, a3, 63);
      if (BYTE1(v277) - 13 < 6)
      {
        if (v278 != -1 || SWORD1(v277) <= -1)
        {
          v38 = v278;
        }

        else
        {
          v38 = 6;
        }

        v278 = v38;
LABEL_116:
        *a3 = v36;
LABEL_117:
        v79 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v277, a4);
        v80 = v78;
        v81 = v16 << 8;
        v82 = v13 | (v16 << 8);
        if ((v13 | (v16 << 8) & 0x7FFFFFFF) < 0x7F800000)
        {
          if (v78 == -1)
          {
            v83 = 149;
          }

          else
          {
            v83 = v78;
          }

          v289.__r_.__value_.__r.__words[0] = v83;
          if (v83 < 150)
          {
            v84 = v83 + 45;
            v289.__r_.__value_.__l.__size_ = v84;
            if ((v83 + 45) >= 0x101)
            {
              operator new();
            }
          }

          else
          {
            LODWORD(v289.__r_.__value_.__l.__data_) = 149;
            HIDWORD(v289.__r_.__value_.__r.__words[0]) = v83 - 149;
            v84 = 194;
            v289.__r_.__value_.__l.__size_ = 194;
            v83 = 149;
          }

          *v273 = v79;
          v85 = BYTE1(v79);
          v289.__r_.__value_.__r.__words[2] = &v290;
          v275 = v79;
          if ((v81 & 0x80000000) != 0)
          {
            v88 = 45;
          }

          else
          {
            v86 = (v79 >> 3) & 3;
            if (v86 == 2)
            {
              v88 = 43;
            }

            else
            {
              v87 = &v290;
              if (v86 != 3)
              {
                goto LABEL_132;
              }

              v88 = 32;
            }
          }

          v290 = v88;
          v87 = v291;
LABEL_132:
          v89 = fabsf(*&v82);
          if (BYTE1(v79) > 0xEu)
          {
            if (BYTE1(v79) - 15 < 2)
            {
              v285 = v87;
              v90 = MEMORY[0x1E12C15E0](v87, &v291[v84 - 1], 2, v83, v89);
              __src = v90;
              *v288 = v90;
              if (v83)
              {
                v91 = v83 + 1;
              }

              else
              {
                v91 = 0;
              }

              v92 = &v90[-v91];
              goto LABEL_142;
            }

            if (BYTE1(v79) == 17)
            {
LABEL_148:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v285, &v289, v83, v87);
              goto LABEL_300;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v285, &v289, v83, v87);
            v93 = __src;
            if (__src != *v288)
            {
              goto LABEL_265;
            }
          }

          else
          {
            if (BYTE1(v79) > 0xBu)
            {
              if (BYTE1(v79) == 12)
              {
                if ((v78 & 0x80000000) != 0)
                {
                  v142 = -1;
                }

                else
                {
                  v142 = v83;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v142, v87);
                v143 = v285;
                v93 = __src;
                while (v143 != v93)
                {
                  v144 = *v143;
                  if ((v144 - 97) < 6)
                  {
                    LOBYTE(v144) = v144 - 32;
                  }

                  *v143++ = v144;
                }

                v145 = 80;
                goto LABEL_299;
              }

              if (BYTE1(v79) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v83, v87);
                goto LABEL_300;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v83, v87);
              v93 = __src;
LABEL_265:
              v145 = 69;
LABEL_299:
              *v93 = v145;
              goto LABEL_300;
            }

            if (!BYTE1(v79))
            {
              if ((v78 & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              v285 = v87;
              v247 = std::to_chars(v87, &v291[v84 - 1], &v290, v89);
              v248 = v247;
              *v288 = v247;
              v249 = v247 - v87;
              if (v247 - v87 < 4)
              {
LABEL_483:
                v251 = v247;
              }

              else
              {
                if (v249 >= 6)
                {
                  v249 = 6;
                }

                v250 = -v249;
                while (*(v247 + v250) != 101)
                {
                  if (++v250 == -3)
                  {
                    goto LABEL_483;
                  }
                }

                v251 = (v247 + v250);
              }

              __src = v251;
              v262 = memchr(v87 + 1, 46, v251 - (v87 + 1));
              if (v262)
              {
                v92 = v262;
              }

              else
              {
                v92 = v251;
              }

              if (v92 == v251)
              {
                v92 = v248;
              }

LABEL_142:
              v286 = v92;
              goto LABEL_300;
            }

            if ((v78 & 0x80000000) != 0)
            {
              v146 = -1;
            }

            else
            {
              v146 = v83;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v146, v87);
          }

LABEL_300:
          if ((v275 & 0x20) != 0)
          {
            v157 = v286;
            v158 = *v288;
            if (v286 == *v288)
            {
              **v288 = 46;
              *v288 = ++v158;
              v159 = __src;
              if (__src != v157)
              {
                if (__src + 1 == v157)
                {
                  v166 = *__src;
                  *__src = *(__src + 1);
                  *(v159 + 1) = v166;
                }

                else
                {
                  memmove(&v158[-(v157 - __src)], __src, v157 - __src);
                  *v159 = 46;
                }
              }

              v286 = v159;
              __src = (v159 + 1);
            }

            else
            {
              v159 = v286;
            }

            if ((v85 - 17) <= 1)
            {
              if (v80 <= 1)
              {
                v167 = 1;
              }

              else
              {
                v167 = v80;
              }

              if ((v80 & 0x80000000) != 0)
              {
                v167 = 6;
              }

              v168 = v285 - v159;
              if (__src != v158)
              {
                v168 = -1;
              }

              v169 = v168 + v167;
              v170 = __src + ~v159;
              if (v170 < v169)
              {
                HIDWORD(v289.__r_.__value_.__r.__words[0]) += v169 - v170;
              }
            }
          }

          if ((v275 & 0x40) == 0)
          {
            v171 = *v288;
            v172 = v289.__r_.__value_.__r.__words[2];
            v173 = *v288 - v289.__r_.__value_.__r.__words[2];
            v174 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
            if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) >= *v273 >> 32)
            {
              if (!HIDWORD(v289.__r_.__value_.__r.__words[0]) || (v187 = __src, __src == *v288))
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], *v288 - v289.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
              }

              else
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], __src - v289.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v187, v171 - v187);
              }
            }

            else
            {
              v22 = *a4;
              if ((v275 & 7) == 4)
              {
                if (v289.__r_.__value_.__r.__words[2] != v285)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
                  ++v172;
                }

                v175 = *v273;
                v176 = v273[0] & 0xB8 | 3;
                v177 = 48;
              }

              else
              {
                v175 = *v273;
                v176 = v273[0];
                v177 = BYTE4(v80);
              }

              v196 = v175 & 0xFFFFFFFFFFFFFF00 | v176;
              v197 = v80 & 0xFFFFFF00FFFFFFFFLL | (v177 << 32);
              if (v174)
              {
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171, v22, v196, v197, v173, __src, v174);
              }

              else
              {
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171 - v172, v22, v196, v197, v173);
              }
            }

            goto LABEL_416;
          }

          v22 = *a4;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v282, a4);
          v178 = std::locale::use_facet(&v282, MEMORY[0x1E69E5368]);
          (v178->__vftable[1].__on_zero_shared)(&__p);
          v179 = v286;
          v180 = __src;
          v181 = v285;
          v270 = v286;
          v271 = v178;
          if (__src < v286)
          {
            v179 = __src;
          }

          v272 = v179 - v285;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v182 = __p.__r_.__value_.__l.__size_;
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_377;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            v184 = *__p.__r_.__value_.__l.__data_;
            if (v272 <= v184)
            {
              *__p.__r_.__value_.__l.__data_ = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              goto LABEL_377;
            }

            v186 = *__p.__r_.__value_.__l.__data_;
            v183 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_377;
            }

            if (v272 <= __p.__r_.__value_.__s.__data_[0])
            {
              __p.__r_.__value_.__s.__data_[0] = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              goto LABEL_377;
            }

            v182 = __p.__r_.__value_.__l.__size_;
            v183 = __p.__r_.__value_.__r.__words[0];
            v184 = __p.__r_.__value_.__s.__data_[0];
            p_p = &__p;
            v186 = __p.__r_.__value_.__s.__data_[0];
          }

          memset(&v283, 0, sizeof(v283));
          v188 = (v183 + v182);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v189 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v189 = v188;
          }

          v190 = v272 - v184;
          if (v272 - v184 >= 1)
          {
            v191 = (v189 - 1);
            do
            {
              std::string::push_back(&v283, v186);
              if (p_p == v191)
              {
                v186 = p_p->__r_.__value_.__s.__data_[0];
              }

              else
              {
                v192 = (&p_p->__r_.__value_.__l.__data_ + 1);
                v193 = &p_p->__r_.__value_.__s.__data_[1];
                do
                {
                  v194 = *v193++;
                  v186 = v194;
                  if (v194)
                  {
                    v195 = 1;
                  }

                  else
                  {
                    v195 = v192 == v191;
                  }

                  v192 = v193;
                }

                while (!v195);
                p_p = (v193 - 1);
              }

              v190 -= v186;
            }

            while (v190 > 0);
          }

          std::string::push_back(&v283, v186 + v190);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v283;
LABEL_377:
          v198 = HIDWORD(v80);
          v269 = *v288;
          v199 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v199 = __p.__r_.__value_.__l.__size_;
          }

          v200 = *v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0]) + v199 - (v199 != 0);
          v201 = v275 & 7;
          v202 = (*v273 >> 32) - v200;
          if (*v273 >> 32 > v200)
          {
            if (v201 == 4)
            {
              v203 = 48;
            }

            else
            {
              v203 = v198;
            }

            if (v201 == 4)
            {
              v204 = 3;
            }

            else
            {
              v204 = v275 & 7;
            }

            if (v204 > 1)
            {
              if (v204 != 3)
              {
                *v274 = v202 - (v202 >> 1);
                v202 >>= 1;
                goto LABEL_393;
              }
            }

            else if (v204)
            {
              *v274 = v202;
              v202 = 0;
LABEL_393:
              if (v201 == 4 && v181 != v289.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v289.__r_.__value_.__r.__words[2]);
              }

              v205 = v198 & 0xFFFFFF00 | v203;
              std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, v202, v205);
              if (v201 != 4 && v181 != v289.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v289.__r_.__value_.__r.__words[2]);
              }

              v276 = v180;
              v206 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v206 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  v207 = __p.__r_.__value_.__r.__words[0];
LABEL_404:
                  v208 = v207 + v206;
                  v209 = (v271->__vftable[1].~facet_0)(v271);
                  v210 = &v207->__r_.__value_.__s.__data_[1];
                  for (i = v208; ; v208 = i)
                  {
                    v212 = *--i;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v212);
                    if (v208 == v210)
                    {
                      break;
                    }

                    v181 += *i;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v209);
                  }

LABEL_408:
                  v213 = v269;
                  if (v270 == v269)
                  {
                    v213 = v270;
                    v215 = v276;
                  }

                  else
                  {
                    v214 = (v271->__vftable[1].~facet)(v271);
                    v215 = v276;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v214);
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, (v270 + 1), &v276[-v270 - 1]);
                    std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, SHIDWORD(v289.__r_.__value_.__r.__words[0]), 48);
                  }

                  if (v215 != v213)
                  {
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v215, v213 - v215);
                  }

                  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, *v274, v205);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v282);
LABEL_416:
                  if (v289.__r_.__value_.__l.__size_ < 0x101)
                  {
                    goto LABEL_467;
                  }

                  goto LABEL_465;
                }
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                v207 = &__p;
                goto LABEL_404;
              }

              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v272);
              goto LABEL_408;
            }

            *v274 = 0;
            goto LABEL_393;
          }

          *v274 = 0;
          v202 = 0;
          v203 = v198;
          goto LABEL_393;
        }

        v265 = *a4;
        LODWORD(v266) = v81 >> 31;
        v267 = v79;
        v268 = v80;
LABEL_521:
        v21 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v265, v267, v268, v266, 0);
LABEL_13:
        v22 = v21;
        goto LABEL_467;
      }

      if (BYTE1(v277) <= 0xCu && ((1 << SBYTE1(v277)) & 0x1801) != 0)
      {
        goto LABEL_116;
      }

      goto LABEL_527;
    case 10:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_188;
      }

      v63 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 < 6)
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v65 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v65 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v65;
        goto LABEL_187;
      }

      if (__p.__r_.__value_.__s.__data_[1] <= 0xCu && ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) != 0)
      {
LABEL_187:
        *a3 = v63;
LABEL_188:
        v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
        v96 = v111;
        v112 = v13 | (v16 << 8);
        v98 = v14 << 32;
        *&v113 = v112 | (v14 << 32);
        if ((v112 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
        {
          if (v111 == -1)
          {
            v114 = 1074;
          }

          else
          {
            v114 = v111;
          }

          v289.__r_.__value_.__r.__words[0] = v114;
          if (v114 >= 1075)
          {
            LODWORD(v289.__r_.__value_.__l.__data_) = 1074;
            HIDWORD(v289.__r_.__value_.__r.__words[0]) = v114 - 1074;
            v289.__r_.__value_.__l.__size_ = 1390;
            goto LABEL_195;
          }

          v115 = v114 + 316;
          v289.__r_.__value_.__l.__size_ = v115;
          if ((v114 + 316) >= 0x401)
          {
LABEL_195:
            operator new();
          }

          v116 = v95;
          v289.__r_.__value_.__r.__words[2] = &v290;
          if ((v98 & 0x8000000000000000) != 0)
          {
            v119 = 45;
          }

          else
          {
            v117 = (v95 >> 3) & 3;
            if (v117 == 2)
            {
              v119 = 43;
            }

            else
            {
              v118 = &v290;
              if (v117 != 3)
              {
                goto LABEL_203;
              }

              v119 = 32;
            }
          }

          v290 = v119;
          v118 = v291;
LABEL_203:
          v120 = fabs(v113);
          if (BYTE1(v95) > 0xEu)
          {
            if (BYTE1(v95) - 15 < 2)
            {
              v285 = v118;
              v121 = MEMORY[0x1E12C1580](v118, &v291[v115 - 1], 2, v114, v120);
              __src = v121;
              *v288 = v121;
              if (v114)
              {
                v122 = v114 + 1;
              }

              else
              {
                v122 = 0;
              }

              v123 = &v121[-v122];
              goto LABEL_213;
            }

            if (BYTE1(v95) == 17)
            {
LABEL_220:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v285, &v289, v114, v118);
              goto LABEL_316;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v285, &v289, v114, v118);
            v124 = __src;
            if (__src != *v288)
            {
              goto LABEL_289;
            }
          }

          else
          {
            if (BYTE1(v95) > 0xBu)
            {
              if (BYTE1(v95) == 12)
              {
                if ((v111 & 0x80000000) != 0)
                {
                  v150 = -1;
                }

                else
                {
                  v150 = v114;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v150, v118);
                v151 = v285;
                v124 = __src;
                while (v151 != v124)
                {
                  v152 = *v151;
                  if ((v152 - 97) < 6)
                  {
                    LOBYTE(v152) = v152 - 32;
                  }

                  *v151++ = v152;
                }

                v154 = 80;
                goto LABEL_315;
              }

              if (BYTE1(v95) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v114, v118);
                goto LABEL_316;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v114, v118);
              v124 = __src;
LABEL_289:
              v154 = 69;
LABEL_315:
              *v124 = v154;
              goto LABEL_316;
            }

            if (!BYTE1(v95))
            {
              if ((v111 & 0x80000000) == 0)
              {
                goto LABEL_220;
              }

              v285 = v118;
              v257 = std::to_chars(v118, &v291[v115 - 1], &v290, v120);
              v258 = v257;
              *v288 = v257;
              v259 = v257 - v118;
              if (v257 - v118 < 4)
              {
LABEL_497:
                v261 = v257;
              }

              else
              {
                if (v259 >= 6)
                {
                  v259 = 6;
                }

                v260 = -v259;
                while (*(v257 + v260) != 101)
                {
                  if (++v260 == -3)
                  {
                    goto LABEL_497;
                  }
                }

                v261 = (v257 + v260);
              }

              __src = v261;
              v264 = memchr(v118 + 1, 46, v261 - (v118 + 1));
              if (v264)
              {
                v123 = v264;
              }

              else
              {
                v123 = v261;
              }

              if (v123 == v261)
              {
                v123 = v258;
              }

LABEL_213:
              v286 = v123;
              if ((v95 & 0x20) == 0)
              {
                goto LABEL_457;
              }

              goto LABEL_317;
            }

            if ((v111 & 0x80000000) != 0)
            {
              v156 = -1;
            }

            else
            {
              v156 = v114;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v156, v118);
          }

LABEL_316:
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_457;
          }

LABEL_317:
          v163 = v286;
          v164 = *v288;
          if (v286 == *v288)
          {
            **v288 = 46;
            *v288 = ++v164;
            v165 = __src;
            if (__src != v163)
            {
              if (__src + 1 == v163)
              {
                v234 = *__src;
                *__src = *(__src + 1);
                *(v165 + 1) = v234;
              }

              else
              {
                memmove(&v164[-(v163 - __src)], __src, v163 - __src);
                *v165 = 46;
              }
            }

            v286 = v165;
            __src = (v165 + 1);
          }

          else
          {
            v165 = v286;
          }

          if (BYTE1(v95) - 17 <= 1)
          {
            if (v96 <= 1)
            {
              v235 = 1;
            }

            else
            {
              v235 = v96;
            }

            if ((v96 & 0x80000000) != 0)
            {
              v235 = 6;
            }

            v236 = v285 - v165;
            if (__src != v164)
            {
              v236 = -1;
            }

            v237 = v236 + v235;
            v238 = __src + ~v165;
            if (v238 < v237)
            {
              HIDWORD(v289.__r_.__value_.__r.__words[0]) += v237 - v238;
            }
          }

LABEL_457:
          if ((v95 & 0x40) == 0)
          {
            v221 = *v288;
            v239 = v95;
            v223 = v289.__r_.__value_.__r.__words[2];
            v224 = *v288 - v289.__r_.__value_.__r.__words[2];
            v225 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
            if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) < v239 >> 32)
            {
              v240 = v116;
              v241 = v96;
              v242 = v239;
              v22 = *a4;
              if ((v240 & 7) == 4)
              {
                if (v289.__r_.__value_.__r.__words[2] != v285)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
                  ++v223;
                }

                v243 = v242 & 0xB8 | 3;
                v244 = 48;
              }

              else
              {
                v243 = v239;
                v244 = BYTE4(v241);
              }

              v232 = v242 & 0xFFFFFFFFFFFFFF00 | v243;
              v233 = v241 & 0xFFFFFF00FFFFFFFFLL | (v244 << 32);
              if (!v225)
              {
LABEL_476:
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221 - v223, v22, v232, v233, v224);
LABEL_464:
                if (v289.__r_.__value_.__l.__size_ < 0x401)
                {
LABEL_467:
                  *a4 = v22;
                  goto LABEL_468;
                }

LABEL_465:
                v134 = v289.__r_.__value_.__r.__words[2];
LABEL_466:
                operator delete(v134);
                goto LABEL_467;
              }

LABEL_443:
              std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221, v22, v232, v233, v224, __src, v225);
              goto LABEL_464;
            }

            if (!HIDWORD(v289.__r_.__value_.__r.__words[0]))
            {
              goto LABEL_473;
            }

            v231 = __src;
            if (__src == *v288)
            {
              goto LABEL_473;
            }

            goto LABEL_439;
          }

          goto LABEL_463;
        }

LABEL_519:
        v265 = *a4;
        v266 = v98 >> 63;
        v267 = v95;
        v268 = v96;
        goto LABEL_521;
      }

      goto LABEL_527;
    case 11:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_152;
      }

      v57 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
      {
        if (__p.__r_.__value_.__s.__data_[1] > 0xCu || ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
        {
LABEL_527:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v59 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v59 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v59;
      }

      *a3 = v57;
LABEL_152:
      v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
      v96 = v94;
      v97 = v13 | (v16 << 8);
      v98 = v14 << 32;
      *&v99 = v97 | (v14 << 32);
      if ((v97 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
      {
        goto LABEL_519;
      }

      if (v94 == -1)
      {
        v100 = 1074;
      }

      else
      {
        v100 = v94;
      }

      v289.__r_.__value_.__r.__words[0] = v100;
      if (v100 >= 1075)
      {
        LODWORD(v289.__r_.__value_.__l.__data_) = 1074;
        HIDWORD(v289.__r_.__value_.__r.__words[0]) = v100 - 1074;
        v289.__r_.__value_.__l.__size_ = 1390;
        goto LABEL_159;
      }

      v101 = v100 + 316;
      v289.__r_.__value_.__l.__size_ = v101;
      if ((v100 + 316) >= 0x401)
      {
LABEL_159:
        operator new();
      }

      v102 = v95;
      v289.__r_.__value_.__r.__words[2] = &v290;
      if ((v98 & 0x8000000000000000) != 0)
      {
        v105 = 45;
      }

      else
      {
        v103 = (v95 >> 3) & 3;
        if (v103 == 2)
        {
          v105 = 43;
        }

        else
        {
          v104 = &v290;
          if (v103 != 3)
          {
            goto LABEL_167;
          }

          v105 = 32;
        }
      }

      v290 = v105;
      v104 = v291;
LABEL_167:
      v106 = fabs(v99);
      if (BYTE1(v95) > 0xEu)
      {
        if (BYTE1(v95) - 15 < 2)
        {
          v285 = v104;
          v107 = MEMORY[0x1E12C15B0](v104, &v291[v101 - 1], 2, v100, v106);
          __src = v107;
          *v288 = v107;
          if (v100)
          {
            v108 = v100 + 1;
          }

          else
          {
            v108 = 0;
          }

          v109 = &v107[-v108];
          goto LABEL_177;
        }

        if (BYTE1(v95) == 17)
        {
LABEL_184:
          std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v285, &v289, v100, v104);
          goto LABEL_308;
        }

        std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v285, &v289, v100, v104);
        v110 = __src;
        if (__src != *v288)
        {
          goto LABEL_287;
        }
      }

      else
      {
        if (BYTE1(v95) > 0xBu)
        {
          if (BYTE1(v95) == 12)
          {
            if ((v94 & 0x80000000) != 0)
            {
              v147 = -1;
            }

            else
            {
              v147 = v100;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v147, v104);
            v148 = v285;
            v110 = __src;
            while (v148 != v110)
            {
              v149 = *v148;
              if ((v149 - 97) < 6)
              {
                LOBYTE(v149) = v149 - 32;
              }

              *v148++ = v149;
            }

            v153 = 80;
            goto LABEL_307;
          }

          if (BYTE1(v95) == 13)
          {
            std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v100, v104);
            goto LABEL_308;
          }

          std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v100, v104);
          v110 = __src;
LABEL_287:
          v153 = 69;
LABEL_307:
          *v110 = v153;
          goto LABEL_308;
        }

        if (!BYTE1(v95))
        {
          if ((v94 & 0x80000000) == 0)
          {
            goto LABEL_184;
          }

          v285 = v104;
          v252 = std::to_chars(v104, &v291[v101 - 1], &v290, v106);
          v253 = v252;
          *v288 = v252;
          v254 = v252 - v104;
          if (v252 - v104 < 4)
          {
LABEL_490:
            v256 = v252;
          }

          else
          {
            if (v254 >= 6)
            {
              v254 = 6;
            }

            v255 = -v254;
            while (*(v252 + v255) != 101)
            {
              if (++v255 == -3)
              {
                goto LABEL_490;
              }
            }

            v256 = (v252 + v255);
          }

          __src = v256;
          v263 = memchr(v104 + 1, 46, v256 - (v104 + 1));
          if (v263)
          {
            v109 = v263;
          }

          else
          {
            v109 = v256;
          }

          if (v109 == v256)
          {
            v109 = v253;
          }

LABEL_177:
          v286 = v109;
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_430;
          }

          goto LABEL_309;
        }

        if ((v94 & 0x80000000) != 0)
        {
          v155 = -1;
        }

        else
        {
          v155 = v100;
        }

        std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v155, v104);
      }

LABEL_308:
      if ((v95 & 0x20) == 0)
      {
        goto LABEL_430;
      }

LABEL_309:
      v160 = v286;
      v161 = *v288;
      if (v286 == *v288)
      {
        **v288 = 46;
        *v288 = ++v161;
        v162 = __src;
        if (__src != v160)
        {
          if (__src + 1 == v160)
          {
            v216 = *__src;
            *__src = *(__src + 1);
            *(v162 + 1) = v216;
          }

          else
          {
            memmove(&v161[-(v160 - __src)], __src, v160 - __src);
            *v162 = 46;
          }
        }

        v286 = v162;
        __src = (v162 + 1);
      }

      else
      {
        v162 = v286;
      }

      if (BYTE1(v95) - 17 <= 1)
      {
        if (v96 <= 1)
        {
          v217 = 1;
        }

        else
        {
          v217 = v96;
        }

        if ((v96 & 0x80000000) != 0)
        {
          v217 = 6;
        }

        v218 = v285 - v162;
        if (__src != v161)
        {
          v218 = -1;
        }

        v219 = v218 + v217;
        v220 = __src + ~v162;
        if (v220 < v219)
        {
          HIDWORD(v289.__r_.__value_.__r.__words[0]) += v219 - v220;
        }
      }

LABEL_430:
      if ((v95 & 0x40) == 0)
      {
        v221 = *v288;
        v222 = v95;
        v223 = v289.__r_.__value_.__r.__words[2];
        v224 = *v288 - v289.__r_.__value_.__r.__words[2];
        v225 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
        if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) < v222 >> 32)
        {
          v226 = v102;
          v227 = v96;
          v228 = v222;
          v22 = *a4;
          if ((v226 & 7) == 4)
          {
            if (v289.__r_.__value_.__r.__words[2] != v285)
            {
              std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
              ++v223;
            }

            v229 = v228 & 0xB8 | 3;
            v230 = 48;
          }

          else
          {
            v229 = v222;
            v230 = BYTE4(v227);
          }

          v232 = v228 & 0xFFFFFFFFFFFFFF00 | v229;
          v233 = v227 & 0xFFFFFF00FFFFFFFFLL | (v230 << 32);
          if (!v225)
          {
            goto LABEL_476;
          }

          goto LABEL_443;
        }

        if (!HIDWORD(v289.__r_.__value_.__r.__words[0]) || (v231 = __src, __src == *v288))
        {
LABEL_473:
          v22 = *a4;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], *v288 - v289.__r_.__value_.__r.__words[2]);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
          goto LABEL_464;
        }

LABEL_439:
        v22 = *a4;
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], __src - v289.__r_.__value_.__r.__words[2]);
        std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v231, v221 - v231);
        goto LABEL_464;
      }

LABEL_463:
      v22 = *a4;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v283, a4);
      std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v22, &v289, &v285, &v283, v95, v96);
      std::locale::~locale(&v283);
      goto LABEL_464;
    case 12:
      LODWORD(v289.__r_.__value_.__l.__data_) = 1;
      *(v289.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v289.__r_.__value_.__s.__data_[12] = 32;
      *(&v289.__r_.__value_.__r.__words[1] + 5) = 0;
      v289.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3);
      }

      v66 = strlen((v13 | (v16 << 8) | (v14 << 32)));
      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, (v13 | (v16 << 8) | (v14 << 32)), v66, a4);
      goto LABEL_95;
    case 13:
      LODWORD(v289.__r_.__value_.__l.__data_) = 1;
      *(v289.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v289.__r_.__value_.__s.__data_[12] = 32;
      *(&v289.__r_.__value_.__r.__words[1] + 5) = 0;
      v289.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3);
      }

      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, (v13 | (v16 << 8) | (v14 << 32)), v15, a4);
      goto LABEL_95;
    case 14:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 36);
        if (BYTE1(v285) - 8 >= 2 && BYTE1(v285))
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *a3 = v23;
      }

      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v26 = v13 | (v16 << 8) | (v14 << 32);
      v27 = v25 & 0xFF00;
      v28 = v25 & 0xFFFFFFFFFFFF00DFLL;
      if (v27 == 2304)
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x720, v24, &v289, &v289.__r_.__value_.__s.__data_[19], "0X", 16);
      }

      else
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x620, v24, &v289, &v289.__r_.__value_.__s.__data_[19], "0x", 16);
      }

LABEL_95:
      *a4 = v29;
      goto LABEL_468;
    case 15:
      (v15)(a3, a4, v13 | (v16 << 8) | (v14 << 32));
      goto LABEL_468;
    default:
      goto LABEL_524;
  }
}

void sub_1DE4C2C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, unint64_t a35, void *__p)
{
  if (a35 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t *result, char a2)
{
  v2 = result[4];
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = result[2];
    result[2] = v6 + 1;
    *(v5 + v6) = a2;
    if (result[2] == result[1])
    {
      return (result[3])(result, 2);
    }
  }

  return result;
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *result;
  if (v4 == 125 || v4 == 58)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 2;
    }

    ++*(a3 + 24);
  }

  else if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
LABEL_13:
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    ++result;
  }

  else
  {
    if ((v4 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    result = std::__format::__parse_number[abi:ne200100]<char const*>(result, a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v25[0] = *a2;
  v25[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v25) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v25[0];
  if (v25[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v25[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v16 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v16 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_48;
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v4, v3);
  }

  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
    goto LABEL_56;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
  }

  else
  {
    if ((v19 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
  }

  if (v3 != v4)
  {
LABEL_56:
    if ((a3 & 0x10) != 0)
    {
      v22 = *v4;
      if (v22 != 76)
      {
        goto LABEL_60;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v22 = *v4;
LABEL_60:
    if (v22 <= 97)
    {
      if (v22 <= 69)
      {
        if (v22 > 65)
        {
          if (v22 == 66)
          {
            v23 = 3;
            goto LABEL_103;
          }

          if (v22 == 69)
          {
            v23 = 14;
            goto LABEL_103;
          }
        }

        else
        {
          if (v22 == 63)
          {
            v23 = 19;
            goto LABEL_103;
          }

          if (v22 == 65)
          {
            v23 = 12;
            goto LABEL_103;
          }
        }
      }

      else if (v22 <= 79)
      {
        if (v22 == 70)
        {
          v23 = 16;
          goto LABEL_103;
        }

        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'P':
            v23 = 9;
            goto LABEL_103;
          case 'X':
            v23 = 7;
            goto LABEL_103;
          case 'a':
            v23 = 11;
LABEL_103:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }
    }

    else
    {
      if (v22 <= 102)
      {
        if (v22 <= 99)
        {
          if (v22 == 98)
          {
            v23 = 2;
          }

          else
          {
            v23 = 10;
          }
        }

        else if (v22 == 100)
        {
          v23 = 5;
        }

        else if (v22 == 101)
        {
          v23 = 13;
        }

        else
        {
          v23 = 15;
        }

        goto LABEL_103;
      }

      if (v22 <= 111)
      {
        if (v22 == 103)
        {
          v23 = 17;
          goto LABEL_103;
        }

        if (v22 == 111)
        {
          v23 = 4;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'p':
            v23 = 8;
            goto LABEL_103;
          case 's':
            v23 = 1;
            goto LABEL_103;
          case 'x':
            v23 = 6;
            goto LABEL_103;
        }
      }
    }

    if (v4 != v3 && *v4 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
    }
  }

  return v4;
}

_BYTE *std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(_BYTE *result)
{
  v1 = result[1];
  if ((v1 - 2) >= 6 && v1 != 0)
  {
    if (v1 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, "an integer");
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_1DE4C349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v23[23] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) == 0)
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
    }

    goto LABEL_10;
  }

  v8 = *(a1 + 1);
  v9 = a2[1];
  if (v9 <= v8)
  {
    LOBYTE(v11) = 0;
  }

  else if (v9 > 0xC)
  {
    v12 = a2[2] + 32 * v8;
    v2 = *v12;
    v8 = *(v12 + 8);
    LOBYTE(v11) = *(v12 + 16);
    *v19 = *(v12 + 17);
    *&v19[7] = *(v12 + 24);
  }

  else
  {
    v10 = a2[2];
    v11 = (a2[3] >> (5 * v8)) & 0x1FLL;
    v2 = *(v10 + 16 * v8);
    v8 = *(v10 + 16 * v8 + 8);
  }

  v20 = v2;
  v21 = v8;
  v22 = v11;
  *v23 = *v19;
  *&v23[7] = *&v19[7];
  v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  if ((*(a1 + 1) & 0x8000) != 0)
  {
LABEL_10:
    v13 = *(a1 + 2);
    v14 = a2[1];
    if (v14 <= v13)
    {
      LOBYTE(v16) = 0;
    }

    else if (v14 > 0xC)
    {
      v17 = a2[2] + 32 * v13;
      v2 = *v17;
      v13 = *(v17 + 8);
      LOBYTE(v16) = *(v17 + 16);
      *v19 = *(v17 + 17);
      *&v19[7] = *(v17 + 24);
    }

    else
    {
      v15 = a2[2];
      v16 = (a2[3] >> (5 * v13)) & 0x1FLL;
      v2 = *(v15 + 16 * v13);
      v13 = *(v15 + 16 * v13 + 8);
    }

    v20 = v2;
    v21 = v13;
    v22 = v16;
    *v23 = *v19;
    *&v23[7] = *&v19[7];
    std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  }

  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v10 = v8;
  if (v6 == 19)
  {
    memset(&v15, 0, sizeof(v15));
    std::string::push_back(&v15, 34);
    std::__formatter::__escape[abi:ne200100]<char>(&v15, a2, a3, 1);
    std::string::push_back(&v15, 34);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, size, v7, v9, v10);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return v13;
  }

  else
  {

    return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }
}

void sub_1DE4C37E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char *a5, char *a6, char *a7, uint64_t a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v41, a2);
  v19 = std::locale::use_facet(&v41, MEMORY[0x1E69E5368]);
  v20 = v18 - v13;
  std::locale::~locale(&v41);
  (v19->__vftable[1].__on_zero_shared)(&v41, v19);
  if ((v43 & 0x8000000000000000) != 0)
  {
    locale = v41.__locale_;
    v22 = v42;
    if (v42 && v20 > *v41.__locale_)
    {
      v23 = v41.__locale_;
      goto LABEL_19;
    }

    operator delete(v41.__locale_);
LABEL_38:
    v35 = HIDWORD(a3);
    if ((a3 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v8, v13 - v8);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v13 - v8)
      {
        LODWORD(v37) = v13 - v8;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v8 = v13;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v34 = *a2;
    v38 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18, *a2, v38 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18 - v8, *a2, v38 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v18 - v8);
    }

    return v34;
  }

  if (!v43 || v20 <= SLOBYTE(v41.__locale_))
  {
    goto LABEL_38;
  }

  locale = &v41;
  v23 = v41.__locale_;
  v22 = v42;
LABEL_19:
  v24 = *a2;
  memset(&__p, 0, sizeof(__p));
  v25 = v23 + v22;
  if (v43 >= 0)
  {
    v25 = &v41 + v43;
  }

  v26 = *locale;
  v27 = v20 - *locale;
  if (v27 >= 1)
  {
    v28 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (locale == v28)
      {
        v26 = *locale;
      }

      else
      {
        v29 = locale + 1;
        v30 = locale + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        locale = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v19->__vftable[1].~facet_0)(v19);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v8, v13, v18, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v41.__locale_);
  }

  return v34;
}

void sub_1DE4C3B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v16 = a1;
      v10 = a2 - a1;
      v11 = a2;
      v15 = a4;
      v12 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      a2 = v11;
      if (v10 >= v12)
      {
        a2 = &v16[v12];
        v13 = a2 - 1;
        do
        {
          *v13-- = a0123456789abcd[v4 % v15];
          v14 = v4 >= v15;
          v4 /= v15;
        }

        while (v14);
      }

      return a2;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (std::__itoa::__pow10_64[v7] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 >= 0x2540BE400)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return a2;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E12C14A0](&v6);
    v4 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v4, &v6);
    }

    else
    {
      std::locale::locale(v4, &v6);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v6);
  }

  return std::locale::locale(this, (a2 + 32));
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *a5 + a5[1];
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = v4[1] - v10;
    if (v11 < v8 + 1)
    {
      result = (v4[3])(v4, v8 + 2);
      v10 = v4[2];
      v11 = v4[1] - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = v4[2];
    }

    v10 += v12;
    v4[2] = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v11 = v9 >> 1;
        v9 -= v9 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v11 = 0;
LABEL_9:
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v12, __src, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
      return a3;
    }

    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  return a3;
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v10 = v8 >> 1;
        v8 -= v8 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v10 = 0;
LABEL_9:
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  v6 = *(result + 32);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 - v7 >= v5)
    {
      v9 = a3 - a2;
    }

    else
    {
      v9 = *v6 - v7;
    }

    v6[1] = v7 + v5;
    if (v8 <= v7 || v9 == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = a3 - a2;
  }

  v11 = *(result + 16);
  do
  {
    v12 = *(v4 + 8) - v11;
    if (v12 < v9 + 1)
    {
      result = (*(v4 + 24))(v4, v9 + 2);
      v11 = *(v4 + 16);
      v12 = *(v4 + 8) - v11;
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = (*v4 + v11);
      v15 = v13;
      v16 = v3;
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = v18 - 32;
        if ((v18 - 97) < 6)
        {
          v17 = v19;
        }

        *v14++ = v17;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v20 = v9 > v12;
    v9 -= v13;
  }

  while (v20);
  return result;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = v5[1] - v10;
      if (v11 < v4 + 1)
      {
        result = (v5[3])(v5, v4 + 2);
        v10 = v5[2];
        v11 = v5[1] - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = v5[2];
      }

      v10 += v12;
      v5[2] = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v12 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v12 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v12 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        *(a1 + 3) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v8 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        *(a1 + 5) = std::__itoa::__digits_base_10[v8 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v8 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v10 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v10 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v10 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v4 = a2 % 0xF4240 % 0x2710;
        *(a1 + 3) = std::__itoa::__digits_base_10[v4 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v4 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v5 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v5];
      v11 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v11 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v11 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v5 | 0x30;
      v6 = a2 % 0x2710;
      *(a1 + 1) = std::__itoa::__digits_base_10[v6 / 0x64u];
      *(a1 + 3) = std::__itoa::__digits_base_10[v6 % 0x64u];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v9 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v9];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v9 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  LOWORD(v2) = v2 % 0x2710;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < v4 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);
    std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }

  return a3;
}

uint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(char *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v6 = a3;
  if (!a3)
  {
    return result;
  }

  if (*a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v7 = 0;
    v8 = &a1[a3 - 1];
    while (1)
    {
      if (a2 - 1 == v7)
      {
        return a2;
      }

      if (a3 - 1 == v7)
      {
        break;
      }

      v9 = a1[++v7];
      if (v9 < 0)
      {
        v6 = a3 - v7 + 1;
        v8 = &a1[v7 - 1];
        goto LABEL_10;
      }
    }

    if ((a1[a3] & 0x80000000) == 0)
    {
      return a3;
    }

    v6 = 1;
  }

LABEL_10:
  v10 = &a1[a2];
  v34 = v8;
  v35 = &a1[a2];
  LODWORD(v11) = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v34) & 0x7FFFFFFF;
  v36 = v11;
  v12 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v11);
  v37 = v12;
  v38 = 0;
  v39 = 0;
  if (v12 == 3)
  {
    v13 = 2;
    goto LABEL_16;
  }

  if (v12 == 9)
  {
    v13 = 3;
LABEL_16:
    LODWORD(v38) = v13;
    goto LABEL_17;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v11))
  {
    v13 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v32 = v8 - a1;
  if (v8 != v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = v11;
      while (1)
      {
        v16 = v34;
        if (v34 == v35)
        {
          break;
        }

        v17 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v34);
        v11 = v17 & 0x7FFFFFFF;
        v18 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v17 & 0x7FFFFFFF);
        v19 = v18;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            if (HIDWORD(v38) == 2)
            {
              if (v18 == 3)
              {
                HIDWORD(v38) = 0;
                goto LABEL_44;
              }
            }

            else if (HIDWORD(v38) == 1)
            {
              if (v18 == 2)
              {
                goto LABEL_44;
              }

              if (v18 == 13)
              {
LABEL_40:
                HIDWORD(v38) = 2;
                goto LABEL_44;
              }
            }

            else
            {
              if (v18 == 13)
              {
                goto LABEL_40;
              }

              if (v18 == 2)
              {
                HIDWORD(v38) = 1;
                goto LABEL_44;
              }
            }

LABEL_45:
            LODWORD(v38) = 0;
            goto LABEL_46;
          }

          LODWORD(v38) = 0;
          if (v18 == 9)
          {
            goto LABEL_44;
          }

LABEL_46:
          v21 = std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](&v36, v11, v19);
          v36 = v11;
          v37 = v19;
          if (v21)
          {
            break;
          }
        }

        else
        {
          if (!v38)
          {
            goto LABEL_46;
          }

          v20 = std::__indic_conjunct_break::__get_property[abi:ne200100](v11);
          if (v20 == 3)
          {
            goto LABEL_45;
          }

          if (!v39)
          {
            if (v20 == 1)
            {
              goto LABEL_44;
            }

            if (v20 == 2)
            {
              v39 = 1;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          if ((v20 - 1) >= 2)
          {
            v39 = 0;
          }

LABEL_44:
          v36 = v11;
          v37 = v19;
        }
      }

      if (v15 - 262142 < 0xFFFC1102)
      {
        goto LABEL_57;
      }

      v22 = &std::__width_estimation_table::__entries[abi:ne200100];
      v23 = 107;
      do
      {
        v24 = v23 >> 1;
        v25 = &v22[v23 >> 1];
        v27 = *v25;
        v26 = v25 + 1;
        v23 += ~(v23 >> 1);
        if (((v15 << 14) | 0x3FFF) >= v27)
        {
          v22 = v26;
        }

        else
        {
          v23 = v24;
        }
      }

      while (v23);
      if (v22 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
LABEL_57:
        v29 = 1;
      }

      else
      {
        v28 = (*(v22 - 1) & 0x3FFF) + (*(v22 - 1) >> 14) >= v15;
        v29 = 1;
        if (v28)
        {
          v29 = 2;
        }
      }

      v30 = v14 + v29;
      if (a4 || v30 <= v6)
      {
        v31 = v16 == v10 || v30 > v6;
        v14 = v30;
        if (!v31)
        {
          continue;
        }
      }

      return v32 + v14;
    }
  }

  v14 = 0;
  return v32 + v14;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

LABEL_35:
    v5 = 2147549181;
    *a1 = v1 + 1;
    return v5;
  }

  if (v2 == 3)
  {
    if (a1[1] - v1 < 3)
    {
      goto LABEL_35;
    }

    v13 = 1;
    do
    {
      v14 = v1[v13] & 0xC0;
    }

    while (v14 == 128 && v13++ != 2);
    if (v14 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v16 = *v1 & 0xF;
    *a1 = v1 + 2;
    v17 = (v16 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    if (v17 >= 0x800)
    {
      v18 = v17 | v1[2] & 0x3F;
      if ((v17 & 0xF800) == 0xD800)
      {
        return 2147549181;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    if (v2 != 4 || a1[1] - v1 < 4)
    {
      goto LABEL_35;
    }

    v6 = 1;
    do
    {
      v7 = v1[v6] & 0xC0;
    }

    while (v7 == 128 && v6++ != 3);
    if (v7 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v9 = *v1 & 7;
    *a1 = v1 + 2;
    v10 = (v9 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    v11 = v1[2];
    *a1 = v1 + 4;
    if (v10 >= 0x400)
    {
      v12 = v1[3] & 0x3F | ((v10 | v11 & 0x3F) << 6);
      if (v10 >> 10 >= 0x11)
      {
        return 2147549181;
      }

      else
      {
        return v12;
      }
    }
  }

  return v5;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

void std::__formatter::__escape[abi:ne200100]<char>(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v23 = a2;
  v24 = &a2[a3];
  if (a3)
  {
    v5 = a2;
    v7 = 1;
    do
    {
      v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v23);
      if ((v8 & 0x80000000) != 0)
      {
        v12 = v23;
        while (v5 != v12)
        {
          v13 = *v5++;
          std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v13, "\\x{");
        }

        goto LABEL_45;
      }

      v9 = v8;
      if (v8 <= 31)
      {
        switch(v8)
        {
          case 9:
            v10 = a1;
            v11 = "\\t";
            goto LABEL_43;
          case 0xA:
            v10 = a1;
            v11 = "\\n";
            goto LABEL_43;
          case 0xD:
            v10 = a1;
            v11 = "\\r";
            goto LABEL_43;
        }
      }

      else if (v8 > 38)
      {
        if (v8 == 39)
        {
          v10 = a1;
          if (!a4)
          {
            v11 = "\\'";
            goto LABEL_43;
          }

          v16 = 39;
          goto LABEL_41;
        }

        if (v8 == 92)
        {
          v10 = a1;
          v11 = "\\\"";
          goto LABEL_43;
        }
      }

      else
      {
        if (v8 == 32)
        {
          v10 = a1;
          v16 = 32;
LABEL_41:
          std::string::push_back(v10, v16);
          goto LABEL_44;
        }

        if (v8 == 34)
        {
          v10 = a1;
          if (a4 == 1)
          {
            v11 = "\";
LABEL_43:
            std::string::append(v10, v11, 2uLL);
            goto LABEL_44;
          }

          v16 = 34;
          goto LABEL_41;
        }
      }

      if ((v8 - 917760) < 0xF0)
      {
        goto LABEL_23;
      }

      if (v8 <= 0x323AF)
      {
        v17 = &std::__escaped_output_table::__entries[abi:ne200100];
        v18 = 711;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[v18 >> 1];
          v22 = *v20;
          v21 = v20 + 1;
          v18 += ~(v18 >> 1);
          if (((v8 << 14) | 0x3FFFu) >= v22)
          {
            v17 = v21;
          }

          else
          {
            v18 = v19;
          }
        }

        while (v18);
        if (v17 == &std::__escaped_output_table::__entries[abi:ne200100] || (*(v17 - 1) & 0x3FFF) + (*(v17 - 1) >> 14) < v8)
        {
LABEL_23:
          if ((v7 & 1) == 0 || std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v8) != 2)
          {
            v14 = v23;
            if (v5 == v23)
            {
              v7 = 0;
            }

            else
            {
              do
              {
                v15 = *v5++;
                std::string::push_back(a1, v15);
                v7 = 0;
              }

              while (v5 != v14);
            }

            goto LABEL_45;
          }
        }
      }

      std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v9, "\\u{");
LABEL_44:
      v7 = 1;
LABEL_45:
      v5 = v23;
    }

    while (v23 != v24);
  }
}

void std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(std::string *this, uint64_t a2, std::string::value_type *a3)
{
  v3 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = a3 + 1;
    do
    {
      std::string::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  v8 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(&v11, &v12, v3);
  if (&v11 != v8)
  {
    v9 = v8;
    v10 = &v11;
    do
    {
      std::string::push_back(this, *v10++);
    }

    while (v10 != v9);
  }

  std::string::push_back(this, 125);
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v6 = 45;
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      v6 = 43;
    }

    else
    {
      if (v7 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v6 = 32;
    }
  }

  p_src = v15;
  __src = v6;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 6;
    if (BYTE1(a2) != 18)
    {
      v9 = 0;
    }
  }

  v10 = 3;
  if (!a5)
  {
    v10 = 0;
  }

  v11 = &aInfnaninfnan[v9 + v10];
  *p_src = *v11;
  p_src[2] = v11[2];
  if ((a2 & 7) == 4)
  {
    v12 = a2 & 0xF8 | 3;
  }

  else
  {
    v12 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v12, a3, p_src - &__src + 3);
  return a1;
}

uint64_t *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v49 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_30;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v16 = *__p.__r_.__value_.__l.__data_;
    if (v49 <= v16)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_30;
    }

    v18 = *__p.__r_.__value_.__l.__data_;
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_30;
    }

    if (v49 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_30;
    }

    size = __p.__r_.__value_.__l.__size_;
    v15 = __p.__r_.__value_.__r.__words[0];
    v16 = __p.__r_.__value_.__s.__data_[0];
    p_p = &__p;
    v18 = __p.__r_.__value_.__s.__data_[0];
  }

  memset(&v50, 0, sizeof(v50));
  v19 = (v15 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v19;
  }

  v21 = v49 - v16;
  if (v49 - v16 >= 1)
  {
    v22 = (v20 - 1);
    do
    {
      std::string::push_back(&v50, v18);
      if (p_p == v22)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v23 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v24 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v25 = *v24++;
          v18 = v25;
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v23 == v22;
          }

          v23 = v24;
        }

        while (!v26);
        p_p = (v24 - 1);
      }

      v21 -= v18;
    }

    while (v21 > 0);
  }

  std::string::push_back(&v50, v18 + v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v50;
LABEL_30:
  v27 = HIDWORD(a6);
  v28 = *(a2 + 16);
  v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  v30 = a3[3] - v28 + *(a2 + 4) + v29 - (v29 != 0);
  v31 = a5 & 7;
  v32 = (a5 >> 32) - v30;
  if (a5 >> 32 <= v30)
  {
    *v48 = 0;
    v32 = 0;
    v33 = v27;
    goto LABEL_46;
  }

  if (v31 == 4)
  {
    v33 = 48;
  }

  else
  {
    v33 = v27;
  }

  if (v31 == 4)
  {
    v34 = 3;
  }

  else
  {
    v34 = a5 & 7;
  }

  if (v34 > 1)
  {
    if (v34 != 3)
    {
      *v48 = v32 - (v32 >> 1);
      v32 >>= 1;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!v34)
  {
LABEL_44:
    *v48 = 0;
    goto LABEL_46;
  }

  *v48 = (a5 >> 32) - v30;
  v32 = 0;
LABEL_46:
  if (v31 == 4 && v13 != v28)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v28);
  }

  v35 = v27 & 0xFFFFFF00 | v33;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v32, v35);
  if (v31 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_57;
    }

LABEL_60:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v49);
    goto LABEL_61;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_60;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_57:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v40);
  }

LABEL_61:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v46, v44 - v46);
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v48, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1DE4C5C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = HIDWORD(a5);
  v16 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v16, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](a3, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, v15);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1E12C15B0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if ((a4 + 1) == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (v6[v10] != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = &v6[v10];
      if (*result == 46)
      {
        v6 = (a4 + 1);
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12C15B0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1E12C15B0](a5, a3 + a2, 1, a4);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}