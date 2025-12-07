uint64_t sub_19B41DF08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 16);
  v9 = a2;
  v10 = v8 + 80 * a2;
  v11 = *(v10 + 32);
  if (v11 != (v10 + 40))
  {
    do
    {
      v12 = *(v11 + 10);
      if (!v12)
      {
        result = (*(*v11[4] + 16))(v11[4], a2, a3, a4);
        v12 = *(v11 + 10);
      }

      *(v11 + 10) = (v12 + 1) % *(v11 + 11);
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v8 = *(v7 + 16);
      v11 = v14;
    }

    while (v14 != (v8 + 80 * v9 + 40));
  }

  v16 = v8 + 80 * v9;
  v17 = *(v16 + 64);
  if (v17 != v16 + 56)
  {
    do
    {
      result = (*(**(v17 + 16) + 16))(*(v17 + 16), a2, a3, a4);
      v17 = *(v17 + 8);
    }

    while (v17 != *(v7 + 16) + 80 * v9 + 56);
  }

  return result;
}

double sub_19B41E070(unint64_t a1)
{
  v2 = *&qword_1ED71C8F8;
  if (*&qword_1ED71C8F8 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_1ED71C8F8 = v2;
  }

  return v2 * a1;
}

float32x4_t sub_19B41E130(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_19B41E194(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  *a2 = 0xBFF0000000000000;
  memset(buf, 0, sizeof(buf));
  sub_19B41E130(buf, a3);
  *(a2 + 8) = *buf;
  *(a2 + 96) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  if (a1)
  {
    __n = 0;
    __src = 0;
    IOHIDEventGetVendorDefinedData();
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
    }

    v9 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      __dst = 0;
      v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Empty payload, returning", &__dst, 2);
LABEL_25:
      v11 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLSensorFusionServiceSPU::populateDeviceMotion(IOHIDEventRef, uint32_t, CLSensorFusionService::Sample &)", "CoreLocation: %s\n", v8);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "#Warning Device motion event ref invalid", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      __dst = 0;
      v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "#Warning Device motion event ref invalid", &__dst, 2);
      goto LABEL_25;
    }
  }

  return 0;
}

void sub_19B41EA5C(uint64_t a1, uint64_t a2, __IOHIDServiceClient *a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Type = IOHIDEventGetType();
    if (Type)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v9 != v10)
      {
        v11 = Type;
        do
        {
          v12 = v9[1];
          if (v12)
          {
            v13 = *v9;
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v14 = std::__shared_weak_count::lock(v12);
            if (v14)
            {
              v15 = v14;
              if (v13)
              {
                v16 = *(v13 + 56);
                if (v16)
                {
                  if (*(v13 + 24) == a3 || *(v13 + 152) == v11)
                  {
                    v16(*(v13 + 64), a2, a3, a4);
                  }
                }
              }

              sub_19B41FFEC(v15);
            }

            std::__shared_weak_count::__release_weak(v12);
          }

          v9 += 2;
        }

        while (v9 != v10);
      }
    }

    else
    {
      valuePtr = 0;
      RegistryID = IOHIDServiceClientGetRegistryID(a3);
      CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v22 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
      {
        *buf = 134283777;
        v47 = a3;
        v48 = 2050;
        v49 = valuePtr;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Got null event,sender %{private}p,registryID %{public}llx", buf, 0x16u);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v42 = 134283777;
        v43 = a3;
        v44 = 2050;
        v45 = valuePtr;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "[CLIoHidInterface] Got null event,sender %{private}p,registryID %{public}llx", &v42, 22);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v27 = *(a1 + 8);
      for (i = *(a1 + 16); v27 != i; v27 += 2)
      {
        v28 = v27[1];
        if (v28)
        {
          v29 = *v27;
          atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v30 = std::__shared_weak_count::lock(v28);
          if (v30)
          {
            v31 = v30;
            if (v29)
            {
              if (*(v29 + 8) == valuePtr && *(v29 + 136))
              {
                if (qword_1ED71C830 != -1)
                {
                  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                }

                v32 = off_1ED71C838;
                if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Fetching historical events", buf, 2u);
                }

                v33 = sub_19B420058();
                if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED71C830 != -1)
                  {
                    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                  }

                  LOWORD(v42) = 0;
                  LODWORD(v40) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Fetching historical events", &v42, v40);
                  v35 = v34;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v34);
                  if (v35 != buf)
                  {
                    free(v35);
                  }
                }

                (*(v29 + 136))(*(v29 + 144));
              }

              else
              {
                if (qword_1ED71C830 != -1)
                {
                  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                }

                v36 = off_1ED71C838;
                if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Did not fetch historical events", buf, 2u);
                }

                v37 = sub_19B420058();
                if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED71C830 != -1)
                  {
                    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                  }

                  LOWORD(v42) = 0;
                  LODWORD(v40) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Did not fetch historical events", &v42, v40);
                  v39 = v38;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v38);
                  if (v39 != buf)
                  {
                    free(v39);
                  }
                }
              }
            }

            sub_19B41FFEC(v31);
          }

          std::__shared_weak_count::__release_weak(v28);
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v17 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Received null sender", buf, 2u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      LOWORD(v42) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Received null sender", &v42, 2);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }
}

void sub_19B41F160(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void sub_19B41F1A0(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v8 = 0xBFF0000000000000;
  sub_19B41E130((&v8 + 8), a2);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v13 = xmmword_19B7BA300;
  v14 = 0x1FF00000000;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (sub_19B41E194(a5, &v8, xmmword_19B7BA300))
  {
    sub_19B41FA70(a1, &v8, v7);
  }
}

void sub_19B41F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v191 = *MEMORY[0x1E69E9840];
  if (*(v3 + 96) <= 0.0)
  {
    v7 = 0;
  }

  else if (((*(v3 + 178) ^ *(v4 + 82)) >> 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v8 = mach_absolute_time();
  v9 = sub_19B41E070(v8);
  v10 = *v5;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v11 = v9 - v10;
  v12 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, v7))
  {
    v13 = *(v5 + 8);
    v14 = *(v5 + 12);
    v15 = *(v5 + 16);
    v16 = *(v5 + 20);
    v17 = *(v5 + 24);
    v18 = *(v5 + 28);
    v19 = *(v5 + 32);
    v20 = (*(v5 + 36) * 57.296);
    v21 = (*(v5 + 40) * 57.296);
    v22 = (*(v5 + 44) * 57.296);
    v23 = *(v5 + 48);
    v24 = *(v5 + 52);
    v25 = *(v5 + 56);
    v26 = *(v5 + 68);
    v27 = *(v5 + 72);
    v28 = *(v5 + 76);
    v29 = *(v5 + 60);
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v32 = *(v5 + 84);
    v33 = *(v5 + 81);
    v34 = *(v5 + 82);
    v35 = *(v5 + 96);
    v36 = *v5;
    *buf = 134224384;
    v98 = v13;
    v99 = 2048;
    v100 = v14;
    v101 = 2048;
    v102 = v15;
    v103 = 2048;
    v104 = v16;
    v105 = 2048;
    v106 = v17;
    v107 = 2048;
    v108 = v18;
    v109 = 2048;
    v110 = v19;
    v111 = 2048;
    v112 = v20;
    v113 = 2048;
    v114 = v21;
    v115 = 2048;
    v116 = v22;
    v117 = 2048;
    v118 = v23;
    v119 = 2048;
    v120 = v24;
    v121 = 2048;
    v122 = v25;
    v123 = 2048;
    v124 = v26;
    v125 = 2048;
    v126 = v27;
    v127 = 2048;
    v128 = v28;
    v129 = 2048;
    v130 = v29;
    v131 = 2048;
    v132 = v30;
    v133 = 1026;
    v134 = v31;
    v135 = 1026;
    v136 = v32;
    v137 = 1026;
    v138 = v33;
    v139 = 1026;
    v140 = v34;
    v141 = 2050;
    v142 = v35;
    v143 = 2050;
    v144 = v36;
    v145 = 2050;
    v146 = v9;
    v147 = 2050;
    v148 = v11;
    _os_log_impl(&dword_19B41C000, v12, v7, "[CLSensorFusionService] q.x,%10.10f,q.y,%10.10f,q.z,%10.10f,q.w,%10.10f,userAccel.x,%10.10f,userAccel.y,%10.10f,userAccel.z,%10.10f,rotationRate.x,%10.10f,rotationRate.y,%10.10f,rotationRate.z,%10.10f,magneticField.x,%10.10f,magneticField.y,%10.10f,magneticField.z,%10.10f,magBiasEstVar.x,%10.10f,magBiasEstVar.y,%10.10f,magBiasEstVar.z,%10.10f,heading,%.3f,accuracy,%.3f,level,%{public}d,variant,%{public}d,mode,%{public}d,status,%{public}#02x,clientID,%{public}llu,timestamp,%{public}lf,now,%{public}lf,latency,%{public}lf", buf, 0xF6u);
  }

  v37 = sub_19B420058();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v38 = *(v5 + 8);
    v39 = *(v5 + 12);
    v40 = *(v5 + 16);
    v41 = *(v5 + 20);
    v42 = *(v5 + 24);
    v43 = *(v5 + 28);
    v44 = *(v5 + 32);
    v45 = (*(v5 + 36) * 57.296);
    v46 = (*(v5 + 40) * 57.296);
    v47 = (*(v5 + 44) * 57.296);
    v48 = *(v5 + 48);
    v49 = *(v5 + 52);
    v50 = *(v5 + 56);
    v51 = *(v5 + 68);
    v52 = *(v5 + 72);
    v53 = *(v5 + 76);
    v54 = *(v5 + 60);
    v55 = *(v5 + 64);
    v56 = *(v5 + 80);
    v57 = *(v5 + 84);
    v58 = *(v5 + 81);
    v59 = *(v5 + 82);
    v60 = *(v5 + 96);
    v61 = *v5;
    *v152 = 134224384;
    *&v152[4] = v38;
    *&v152[12] = 2048;
    *&v152[14] = v39;
    v153 = 2048;
    v154 = v40;
    *v155 = 2048;
    *&v155[2] = v41;
    *&v155[10] = 2048;
    *&v155[12] = v42;
    *&v155[20] = 2048;
    *&v155[22] = v43;
    *&v155[30] = 2048;
    *&v155[32] = v44;
    *v156 = 2048;
    *&v156[2] = v45;
    *&v156[10] = 2048;
    v157 = v46;
    v158 = 2048;
    *v159 = v47;
    *&v159[8] = 2048;
    v160 = v48;
    v161 = 2048;
    v162 = v49;
    v163 = 2048;
    v164 = v50;
    v165 = 2048;
    v166 = v51;
    v167 = 2048;
    v168 = v52;
    v169 = 2048;
    v170 = v53;
    v171 = 2048;
    v172 = v54;
    v173 = 2048;
    v174 = v55;
    v175 = 1026;
    v176 = v56;
    v177 = 1026;
    v178 = v57;
    v179 = 1026;
    v180 = v58;
    v181 = 1026;
    v182 = v59;
    v183 = 2050;
    v184 = v60;
    v185 = 2050;
    v186 = v61;
    v187 = 2050;
    v188 = v9;
    v189 = 2050;
    v190 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, v7, "[CLSensorFusionService] q.x,%10.10f,q.y,%10.10f,q.z,%10.10f,q.w,%10.10f,userAccel.x,%10.10f,userAccel.y,%10.10f,userAccel.z,%10.10f,rotationRate.x,%10.10f,rotationRate.y,%10.10f,rotationRate.z,%10.10f,magneticField.x,%10.10f,magneticField.y,%10.10f,magneticField.z,%10.10f,magBiasEstVar.x,%10.10f,magBiasEstVar.y,%10.10f,magBiasEstVar.z,%10.10f,heading,%.3f,accuracy,%.3f,level,%{public}d,variant,%{public}d,mode,%{public}d,status,%{public}#02x,clientID,%{public}llu,timestamp,%{public}lf,now,%{public}lf,latency,%{public}lf", v152, 246);
    v63 = v62;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService::logSample(const CLSensorFusionService::Sample *)", "CoreLocation: %s\n", v62);
    if (v63 != buf)
    {
      free(v63);
    }
  }

  if (*(v6 + 8) == 1)
  {
    *v152 = &unk_1F0E313F0;
    Current = CFAbsoluteTimeGetCurrent();
    v65 = *v5;
    *&v152[8] = Current;
    v154 = v65;
    *v155 = *(v5 + 8);
    *&v155[16] = *(v5 + 24);
    LODWORD(Current) = *(v5 + 32);
    *&v155[28] = vmul_f32(*(v5 + 36), vdup_n_s32(0x42652EE1u));
    *&v65 = *(v5 + 44) * 57.296;
    *&v155[24] = LODWORD(Current);
    *&v155[36] = LODWORD(v65);
    *v156 = *(v5 + 48);
    LOBYTE(v157) = *(v5 + 80);
    LODWORD(v65) = *(v5 + 60);
    *&v156[8] = *(v5 + 56);
    HIDWORD(v157) = LODWORD(v65);
    *&v159[2] = *(v5 + 64);
    v66 = *(v5 + 81);
    *&v159[6] = *(v5 + 84);
    LODWORD(v160) = v66;
    HIDWORD(v160) = *(v5 + 96);
    v161 = *(v5 + 82);
    v67 = sub_19B720E40();
    sub_19B7223F8(v67, v152);
    sub_19B517F80(buf);
    sub_19B532918(buf);
    v151 |= 1u;
    v149 = *&v152[8];
    v68 = v150;
    v69 = *v5;
    *(v150 + 124) |= 0x10u;
    *(v68 + 40) = v69;
    v70 = v150;
    v71 = *(v5 + 8);
    *(v150 + 124) |= 2u;
    *(v70 + 16) = v71;
    v72 = v150;
    v73 = *(v5 + 12);
    *(v150 + 124) |= 4u;
    *(v72 + 24) = v73;
    v74 = v150;
    v75 = *(v5 + 16);
    *(v150 + 124) |= 8u;
    *(v74 + 32) = v75;
    v76 = v150;
    v77 = *(v5 + 20);
    *(v150 + 124) |= 1u;
    *(v76 + 8) = v77;
    v78 = v150;
    LODWORD(v77) = *(v5 + 24);
    *(v150 + 124) |= 0x40000u;
    *(v78 + 100) = LODWORD(v77);
    v79 = v150;
    LODWORD(v77) = *(v5 + 28);
    *(v150 + 124) |= 0x80000u;
    *(v79 + 104) = LODWORD(v77);
    v80 = v150;
    LODWORD(v77) = *(v5 + 32);
    *(v150 + 124) |= 0x100000u;
    *(v80 + 108) = LODWORD(v77);
    v81 = v150;
    *&v77 = *(v5 + 36) * 57.296;
    *(v150 + 124) |= 0x2000u;
    *(v81 + 80) = LODWORD(v77);
    v82 = v150;
    *&v77 = *(v5 + 40) * 57.296;
    *(v150 + 124) |= 0x4000u;
    *(v82 + 84) = LODWORD(v77);
    v83 = v150;
    *&v77 = *(v5 + 44) * 57.296;
    *(v150 + 124) |= 0x8000u;
    *(v83 + 88) = LODWORD(v77);
    v84 = v150;
    LODWORD(v77) = *(v5 + 48);
    *(v150 + 124) |= 0x100u;
    *(v84 + 60) = LODWORD(v77);
    v85 = v150;
    LODWORD(v77) = *(v5 + 52);
    *(v150 + 124) |= 0x200u;
    *(v85 + 64) = LODWORD(v77);
    v86 = v150;
    LODWORD(v77) = *(v5 + 56);
    *(v150 + 124) |= 0x400u;
    *(v86 + 68) = LODWORD(v77);
    v87 = v150;
    v88 = *(v5 + 80);
    *(v150 + 124) |= 0x80u;
    *(v87 + 56) = v88;
    v89 = v150;
    LODWORD(v77) = *(v5 + 60);
    *(v150 + 124) |= 0x800u;
    *(v89 + 72) = LODWORD(v77);
    v90 = v150;
    LODWORD(v77) = *(v5 + 64);
    *(v150 + 124) |= 0x20u;
    *(v90 + 48) = LODWORD(v77);
    v91 = v150;
    v92 = *(v5 + 81);
    *(v150 + 124) |= 0x1000u;
    *(v91 + 76) = v92;
    v93 = v150;
    v94 = *(v5 + 96);
    *(v150 + 124) |= 0x40u;
    *(v93 + 52) = v94;
    v95 = v150;
    LODWORD(v94) = *(v5 + 82);
    *(v150 + 124) |= 0x10000u;
    *(v95 + 92) = v94;
    v96 = v150;
    LODWORD(v94) = *(v5 + 84);
    *(v150 + 124) |= 0x200000u;
    *(v96 + 112) = v94;
    sub_19B51DBD4(buf);
  }
}

void sub_19B41FA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B41FA70(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_19B41F22C(a1, a2, a3);
  v5 = *(a1 + 56);
  if (v5)
  {
    v5(a2, *(a1 + 12), *(a1 + 64));
  }

  os_unfair_lock_lock((a1 + 88));
  v6 = *a2;
  v7 = a2[2];
  *(a1 + 112) = a2[1];
  *(a1 + 128) = v7;
  *(a1 + 96) = v6;
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  *(a1 + 192) = *(a2 + 12);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = v8;

  os_unfair_lock_unlock((a1 + 88));
}

void sub_19B41FAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 13)
  {
    if (IOHIDEventGetIntegerValue() == 1)
    {
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v5 = qword_1ED71C7E8;
      if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "Received shake data, discarding.", buf, 2u);
      }

      v6 = sub_19B420058();
      if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D8 != -1)
        {
          dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
        }

        *v42 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E8, 2, "Received shake data, discarding.", v42, 2);
        v8 = v7;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLAccelerometer::onAccelerometerIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v7);
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }

    else
    {
      IOHIDEventGetFloatValue();
      v10 = v9;
      IOHIDEventGetFloatValue();
      v12 = v11;
      IOHIDEventGetFloatValue();
      v14 = v13;
      TimeStamp = IOHIDEventGetTimeStamp();
      v16 = sub_19B41E070(TimeStamp);
      v29 = v16;
      v30 = v10;
      v31 = v12;
      v32 = v14;
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v17 = qword_1ED71C7E8;
      if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v34 = v10;
        v35 = 2048;
        v36 = v12;
        v37 = 2048;
        v38 = v14;
        v39 = 2048;
        *v40 = v16;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[Accelerometer] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", buf, 0x2Au);
      }

      v18 = sub_19B420058();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D8 != -1)
        {
          dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
        }

        *v42 = 134218752;
        *&v42[4] = v10;
        *&v42[12] = 2048;
        *&v42[14] = v12;
        v43 = 2048;
        v44 = v14;
        *v45 = 2048;
        *&v45[2] = v16;
        LODWORD(v27) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E8, 2, "[Accelerometer] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", COERCE_DOUBLE(v42), v27, v28, v29);
        v20 = v19;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccelerometer::onAccelerometerData(const CLMotionTypeAcceleration &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      if (*(a1 + 32) == 1)
      {
        *v42 = &unk_1F0E31230;
        Current = CFAbsoluteTimeGetCurrent();
        *v45 = v10;
        *&v45[4] = v12;
        *&v45[8] = v14;
        *&v42[8] = Current;
        v44 = v16;
        v22 = sub_19B720E40();
        sub_19B7223F8(v22, v42);
        sub_19B517F80(buf);
        sub_19B532378(buf);
        v41 |= 1u;
        *(&v40[82] + 6) = *&v42[8];
        v23 = *(v40 + 6);
        *(*(v40 + 6) + 32) |= 1u;
        *(v23 + 8) = v16;
        v24 = *(v40 + 6);
        *(*(v40 + 6) + 32) |= 4u;
        *(v24 + 20) = v10;
        v25 = *(v40 + 6);
        *(*(v40 + 6) + 32) |= 8u;
        *(v25 + 24) = v12;
        v26 = *(v40 + 6);
        *(*(v40 + 6) + 32) |= 0x10u;
        *(v26 + 28) = v14;
        sub_19B51DBD4(buf);
      }

      sub_19B41DF08(a1, 0, &v29, 24);
    }
  }
}

void sub_19B41FFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B41FFEC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_19B420058()
{
  if (qword_1ED71D348 != -1)
  {
    dispatch_once(&qword_1ED71D348, &unk_1F0E29740);
  }

  return qword_1ED71D340;
}

float sub_19B4200DC(uint64_t a1, float *a2)
{
  sub_19B420408((a1 + 24), a2);
  v4 = *(a1 + 64);
  if (v4 > *(a1 + 8))
  {
    v5 = *(a1 + 56);
    v6 = *(*(*(a1 + 32) + ((v5 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v5 & 0x3FF));
    v7 = *(a1 + 16) - v6;
    v8 = *(a1 + 20) - (v6 * v6);
    *(a1 + 16) = v7;
    *(a1 + 20) = v8;
    *(a1 + 56) = v5 + 1;
    *(a1 + 64) = v4 - 1;
    sub_19B420490(a1 + 24, 1);
  }

  v9 = *(a1 + 20);
  *(a1 + 16) = *a2 + *(a1 + 16);
  result = v9 + (*a2 * *a2);
  *(a1 + 20) = result;
  return result;
}

double sub_19B420178(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  sub_19B4200DC(v4 + 16, (a2 + 8));
  sub_19B4200DC(v4 + 88, (a2 + 12));
  sub_19B4200DC(v4 + 160, (a2 + 16));
  v5 = *(a1 + 280);
  v6 = *(v5 + 80);
  if (v6 < *(v5 + 24))
  {
    goto LABEL_16;
  }

  result = 0.0;
  v8 = 0.0;
  if (v6 >= 2)
  {
    v9 = (v6 * *(v5 + 36)) - (*(v5 + 32) * *(v5 + 32));
    v8 = 0.0;
    if (v9 >= 0.0)
    {
      v8 = v9 / ((v6 - 1) * v6);
    }
  }

  v10 = *(v5 + 152);
  if (v10 >= 2)
  {
    v11 = (v10 * *(v5 + 108)) - (*(v5 + 104) * *(v5 + 104));
    if (v11 >= 0.0)
    {
      *&result = v11 / ((v10 - 1) * v10);
    }
  }

  v12 = *(v5 + 224);
  v13 = 0.0;
  if (v12 >= 2)
  {
    v14 = (v12 * *(v5 + 180)) - (*(v5 + 176) * *(v5 + 176));
    if (v14 >= 0.0)
    {
      v13 = v14 / ((v12 - 1) * v12);
    }
  }

  if (v8 >= *&result)
  {
    *&result = v8;
  }

  if (*&result < v13)
  {
    *&result = v13;
  }

  if (*&result > *(a1 + 944))
  {
LABEL_16:
    result = *a2;
    *(a1 + 936) = *a2;
    if (*(a1 + 48) == 2)
    {
      return result;
    }

    v15 = sub_19B420D84();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B798004;
    v20[3] = &unk_1E75327D8;
    v20[4] = a1;
    v16 = v20;
    goto LABEL_18;
  }

  v17 = *(a1 + 48);
  if (v17 == 1)
  {
    result = *a2;
    if (*a2 > *(a1 + 936) + *(a1 + 928))
    {
      v15 = sub_19B420D84();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_19B44E8A4;
      v18[3] = &unk_1E75327D8;
      v18[4] = a1;
      v16 = v18;
      goto LABEL_18;
    }
  }

  else if (v17 == 2)
  {
    result = *a2;
    if (*a2 > *(a1 + 936) + *(a1 + 920))
    {
      v15 = sub_19B420D84();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B44DD98;
      v19[3] = &unk_1E75327D8;
      v19[4] = a1;
      v16 = v19;
LABEL_18:
      sub_19B421668(v15, v16);
    }
  }

  return result;
}

float sub_19B420408(unint64_t *a1, float *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_19B4291D8(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

uint64_t sub_19B420490(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
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
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

float sub_19B4204F0(uint64_t a1, float32x2_t *a2)
{
  v2 = *a2;
  *(a1 + 16) = vcvtq_f64_f32(a2[1]);
  v3 = a2[2].f32[1];
  *(a1 + 32) = a2[2].f32[0];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 40) = a2[3];
  *(a1 + 48) = a2[4];
  *(a1 + 56) = a2[5];
  *(a1 + 64) = a2[6];
  v4 = a2[7].i32[1];
  *(a1 + 72) = a2[7].i32[0];
  *(a1 + 122) = 0;
  if (((a2[10].i8[0] + 1) & 0xF8) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = (a2[10].i8[0] + 1) - 1;
  }

  *(a1 + 76) = v5;
  v6 = a2[10].i16[1];
  *(a1 + 81) = (v6 & 0x10) != 0;
  *(a1 + 80) = (v6 & 8) != 0;
  *(a1 + 82) = HIBYTE(v6) & 1;
  *(a1 + 84) = v4;
  *(a1 + 88) = (v6 & 0x4000) != 0;
  *(a1 + 89) = (v6 & 0x40) != 0;
  *(a1 + 96) = a2[8].i32[0];
  *(a1 + 92) = 0;
  *(a1 + 100) = a2[8].i32[1];
  *(a1 + 104) = a2[9].i32[0];
  result = a2[9].f32[1];
  *(a1 + 108) = result;
  *(a1 + 112) = a2[11].i8[0];
  *(a1 + 122) = v6;
  *(a1 + 120) = a2[10].i8[1];
  *(a1 + 124) = 0;
  return result;
}

void sub_19B4205E8(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  sub_19B4204F0(&v9, a1);
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0xA21) != 0)
    {
      v6 = a3;
      v7 = a2;
    }

    else if (((1 << a2) & 0x1C) != 0)
    {
      sub_19B41DF08(a3, 2, &v9, 128);
      sub_19B41DF08(a3, 3, &v9, 128);
      v5 = *(a3 + 96);
      if (v5 >= 0.0)
      {
        v8 = *(a3 + 104);
        sub_19B688CC8(v10, v8, v5);
      }

      else
      {
        v10[22] = 1127481344;
      }

      v6 = a3;
      v7 = 4;
    }

    else
    {
      if (((1 << a2) & 0x402) == 0)
      {
        return;
      }

      if (*(a3 + 80))
      {
        v6 = a3;
        v7 = 11;
      }

      else
      {
        sub_19B41DF08(a3, 1, &v9, 128);
        v6 = a3;
        v7 = 10;
      }
    }

    sub_19B41DF08(v6, v7, &v9, 128);
  }
}

void sub_19B420920()
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
  }

  v0 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEBUG, "Ping timer fired, resetting watchdog", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "Ping timer fired, resetting watchdog", v13, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void *CLMotionCore::runMotionThread(void *)_block_invoke", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = qword_1ED71C908;
  v5 = *(qword_1ED71C908 + 40);
  if (v5 || (v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]), *(qword_1ED71C908 + 40) = v6, dispatch_source_set_event_handler(v6, &unk_1F0E283A0), dispatch_resume(*(qword_1ED71C908 + 40)), v4 = qword_1ED71C908, (v5 = *(qword_1ED71C908 + 40)) != 0))
  {
    ++*(v4 + 48);
    v7 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Failed to create watchdog timer", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
      }

      v13[0] = 0;
      LODWORD(v12) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "Failed to create watchdog timer", v13, v12);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)_block_invoke", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

void sub_19B420C9C(uint64_t a1, uint64_t a2)
{
  if (CFRunLoopGetCurrent() == *qword_1ED71C908)
  {
    v4 = objc_autoreleasePoolPush();
    (*(a2 + 16))(a2);

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    inited = pthread_dependency_init_np();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_19B421750;
    v5[3] = &unk_1E7532AD8;
    v5[4] = a2;
    v5[5] = &v6;
    sub_19B421668(inited, v5);
    pthread_dependency_wait_np();
  }
}

uint64_t sub_19B420D84()
{
  if (qword_1ED71C938 != -1)
  {
    dispatch_once(&qword_1ED71C938, &unk_1F0E29600);
  }

  return qword_1ED71C908;
}

double CLMotionActivity::getInit@<D0>(CLMotionActivity *this@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0;
  *(a2 + 88) = 0;
  *(a2 + 36) = 0;
  *(a2 + 28) = 0;
  *(a2 + 12) = 0u;
  *(a2 + 40) = 0xBFF0000000000000;
  *(a2 + 52) = 0;
  *(a2 + 56) = 0xBFF0000000000000;
  *(a2 + 80) = 0xBFF0000000000000;
  *(a2 + 32) = 0;
  *(a2 + 48) = 0;
  *(a2 + 96) = 0;
  *(a2 + 100) = 0;
  *(a2 + 8) = 0;
  *(a2 + 64) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  return result;
}

double CLMotionActivity::init(CLMotionActivity *this)
{
  result = 0.0;
  *&this->type = 0;
  *&this[1].source = 0;
  this->tilt = 0.0;
  HIDWORD(this->conservativeMountedProbability) = 0;
  *&this->mountedState = 0u;
  this->timestamp = -1.0;
  this->exitState = 0;
  this->estExitTime = -1.0;
  *&this[1].type = 0xBFF0000000000000;
  this->isStanding = 0;
  this->isVehicleConnected = 0;
  LOBYTE(this[1].mountedConfidence) = 0;
  *&this[1].conservativeMountedState = 0;
  this->source = 0;
  this->vehicleType = 0;
  *&this[1].isStanding = 0;
  this[1].timestamp = 0.0;
  *&this[1].isVehicleConnected = 0;
  return result;
}

void sub_19B420FC0(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v16 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v17 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v18 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 94, "initializeHidIfNecessary");
LABEL_42:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_7:
    v7 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Event system client initialized successfully", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_vtable[262] != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v20[0] = 0;
      LODWORD(v19) = 2;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Event system client initialized successfully", v20, v19);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::initializeHidIfNecessary()", "CoreLocation: %s\n", v9);
LABEL_26:
      if (v11 != buf)
      {
        free(v11);
      }

      return;
    }

    return;
  }

  if (*(a1 + 40))
  {
    return;
  }

  v29 = @"HighFrequency";
  v4 = MEMORY[0x1E695E110];
  if (*(a1 + 48))
  {
    v4 = MEMORY[0x1E695E118];
  }

  v30[0] = v4;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v30, &v29, 1);
  v5 = IOHIDEventSystemClientCreateWithType();
  *(a1 + 40) = v5;
  if (v5)
  {
    sub_19B420D84();
    IOHIDEventSystemClientScheduleWithRunLoop();
    IOHIDEventSystemClientRegisterEventCallback();
    IOHIDEventSystemClientRegisterResetCallback();
    IOHIDEventSystemClientRegisterDeviceMatchingCallback();
    sub_19B42D440(a1);
    IOHIDEventSystemClientSetProperty(*(a1 + 40), @"PreserveTimestamp", *MEMORY[0x1E695E4D0]);
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v12 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not create event system client. All bets are off", buf, 2u);
  }

  v13 = sub_19B420058();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v20[0] = 0;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "[CLIoHidInterface] Could not create event system client. All bets are off", v20, 2);
    v11 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::initializeHidIfNecessary()", "CoreLocation: %s\n", v14);
    goto LABEL_26;
  }
}

uint64_t sub_19B4215D8()
{
  if (qword_1ED71C9E0 != -1)
  {
    dispatch_once(&qword_1ED71C9E0, &unk_1F0E3A4A0);
  }

  return byte_1ED71C971;
}

uint64_t sub_19B421620()
{
  if (qword_1ED71CA18 != -1)
  {
    dispatch_once(&qword_1ED71CA18, &unk_1F0E3A580);
  }

  return qword_1ED71CA20;
}

void sub_19B421668(uint64_t a1, uint64_t a2)
{
  v2 = *qword_1ED71C908;
  v3 = *MEMORY[0x1E695E8E0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B421704;
  block[3] = &unk_1E7532B40;
  block[4] = a2;
  CFRunLoopPerformBlock(v2, v3, block);
  CFRunLoopWakeUp(*qword_1ED71C908);
}

void sub_19B421704(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19B421750(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return pthread_dependency_fulfill_np();
}

uint64_t sub_19B421798()
{
  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  return qword_1ED71C980;
}

uint64_t sub_19B4217E0(__IOHIDServiceClient *a1, const __CFString *a2, const void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v18 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setPropertyIoHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v19 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setPropertyIoHid should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] setPropertyIoHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v20 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setPropertyIoHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 203, "setPropertyIoHid");
    goto LABEL_41;
  }

  if (!a1)
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_6:
      v9 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Property can not be set for null hidServiceRef", buf, 2u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (p_vtable[262] != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v22[0] = 0;
      LODWORD(v21) = 2;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "[CLIoHidInterface] Property can not be set for null hidServiceRef", v22, v21);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLIoHidInterface::setPropertyIoHid(IOHIDServiceClientRef, CFStringRef, CFTypeRef)", "CoreLocation: %s\n", v11);
      goto LABEL_25;
    }

LABEL_41:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_6;
  }

  if (IOHIDServiceClientSetProperty(a1, a2, a3))
  {
    return 1;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v14 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] IOHIDServiceClientSetProperty() returned false", buf, 2u);
  }

  v15 = sub_19B420058();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v22[0] = 0;
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] IOHIDServiceClientSetProperty() returned false", v22, 2);
    v13 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLIoHidInterface::setPropertyIoHid(IOHIDServiceClientRef, CFStringRef, CFTypeRef)", "CoreLocation: %s\n", v16);
LABEL_25:
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return 0;
}

void sub_19B421D14(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v73 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v98 = 0;
      *&v98[4] = 2082;
      *&v98[6] = "";
      *&v98[14] = 2082;
      *&v98[16] = "assert";
      *&v98[24] = 2081;
      *&v98[26] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v73, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v74 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v98 = 0;
      *&v98[4] = 2082;
      *&v98[6] = "";
      *&v98[14] = 2082;
      *&v98[16] = "assert";
      *&v98[24] = 2081;
      *&v98[26] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v74, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v75 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v98 = 0;
      *&v98[4] = 2082;
      *&v98[6] = "";
      *&v98[14] = 2082;
      *&v98[16] = "assert";
      *&v98[24] = 2081;
      *&v98[26] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v75, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 219, "applyAllDirtyDeviceProperties");
    __break(1u);
  }

  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_3:
  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Apply all dirty device properties", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v88) = 0;
    LODWORD(v76) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Apply all dirty device properties", &v88, v76);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 != v8)
  {
    LOBYTE(v83) = 1;
    v77 = *(a1 + 16);
    do
    {
      v9 = v7[1];
      if (v9)
      {
        v10 = *v7;
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v80 = v9;
        v79 = std::__shared_weak_count::lock(v9);
        if (v79)
        {
          v78 = v7;
          if (v10)
          {
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            obj = *(v10 + 168);
            v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v84, v96, 16);
            if (v13)
            {
              v14 = *v85;
              do
              {
                v15 = 0;
                do
                {
                  if (*v85 != v14)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v16 = *(*(&v84 + 1) + 8 * v15);
                  v17 = objc_msgSend_objectForKeyedSubscript_(*(v10 + 168), v12, v16);
                  if (objc_msgSend_dirty(v17, v18, v19))
                  {
                    if (!*(v10 + 24))
                    {
                      sub_19B42E770(v6, 0);
                    }

                    if (*(v6 + 52) >= 10 && (*(v10 + 48) & 1) != 0)
                    {
                      LOBYTE(v83) = 1;
                    }

                    else
                    {
                      v21 = *(v10 + 24);
                      if (v21)
                      {
                        v22 = objc_msgSend_value(v17, v12, v20);
                        v23 = sub_19B4217E0(v21, v16, v22);
                        objc_msgSend_setDirty_(v17, v24, v23 ^ 1u);
                        if (v83)
                        {
                          v83 = objc_msgSend_dirty(v17, v25, v26) ^ 1;
                        }

                        else
                        {
                          LOBYTE(v83) = 0;
                        }

                        if (qword_1ED71C830 != -1)
                        {
                          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                        }

                        v35 = off_1ED71C838;
                        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
                        {
                          v39 = *(v10 + 16);
                          v38 = *(v10 + 20);
                          v40 = objc_msgSend_value(v17, v36, v37);
                          v43 = objc_msgSend_dirty(v17, v41, v42);
                          *buf = 67241218;
                          v44 = "successfully";
                          if (v43)
                          {
                            v44 = "unsuccessfully";
                          }

                          *v98 = v38;
                          *&v98[4] = 1026;
                          *&v98[6] = v39;
                          *&v98[10] = 2114;
                          *&v98[12] = v16;
                          *&v98[20] = 2114;
                          *&v98[22] = v40;
                          *&v98[30] = 2082;
                          *&v98[32] = v44;
                          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Property for usage pair {%{public}d, %{public}d}: {%{public}@ = %{public}@} was set %{public}s", buf, 0x2Cu);
                          v6 = a1;
                        }

                        v45 = sub_19B420058();
                        if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1ED71C830 != -1)
                          {
                            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                          }

                          v48 = off_1ED71C838;
                          v50 = *(v10 + 16);
                          v49 = *(v10 + 20);
                          v51 = objc_msgSend_value(v17, v46, v47);
                          v54 = objc_msgSend_dirty(v17, v52, v53);
                          v88 = 67241218;
                          v55 = "successfully";
                          if (v54)
                          {
                            v55 = "unsuccessfully";
                          }

                          *v89 = v49;
                          *&v89[4] = 1026;
                          *&v89[6] = v50;
                          v90 = 2114;
                          v91 = v16;
                          v92 = 2114;
                          v93 = v51;
                          v94 = 2082;
                          v95 = v55;
                          LODWORD(v76) = 44;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v48, 0, "[CLIoHidInterface] Property for usage pair {%{public}d, %{public}d}: {%{public}@ = %{public}@} was set %{public}s", &v88, v76);
                          v57 = v56;
                          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v56);
                          if (v57 != buf)
                          {
                            free(v57);
                          }

                          v6 = a1;
                        }
                      }

                      else
                      {
                        if (qword_1ED71C830 != -1)
                        {
                          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                        }

                        v27 = off_1ED71C838;
                        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
                        {
                          v29 = *(v10 + 16);
                          v28 = *(v10 + 20);
                          *buf = 67240448;
                          *v98 = v28;
                          *&v98[4] = 1026;
                          *&v98[6] = v29;
                          _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service for device with usage pair {%{public}d, %{public}d} is not ready", buf, 0xEu);
                        }

                        v30 = sub_19B420058();
                        if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1ED71C830 != -1)
                          {
                            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                          }

                          v32 = *(v10 + 16);
                          v31 = *(v10 + 20);
                          v88 = 67240448;
                          *v89 = v31;
                          *&v89[4] = 1026;
                          *&v89[6] = v32;
                          LODWORD(v76) = 14;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Service for device with usage pair {%{public}d, %{public}d} is not ready", &v88, v76);
                          v34 = v33;
                          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v33);
                          if (v34 != buf)
                          {
                            free(v34);
                          }
                        }

                        LOBYTE(v83) = 0;
                      }
                    }
                  }

                  ++v15;
                }

                while (v13 != v15);
                v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v84, v96, 16);
              }

              while (v13);
            }
          }

          sub_19B41FFEC(v79);
          v8 = v77;
          v7 = v78;
        }

        std::__shared_weak_count::__release_weak(v80);
      }

      v7 += 2;
    }

    while (v7 != v8);
    if ((v83 & 1) == 0)
    {
      v59 = *(v6 + 52);
      *(v6 + 52) = v59 + 1;
      if (v59 > 4)
      {
        if (v59 > 9)
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v69 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not set all properties after too many retries. Giving up.", buf, 2u);
          }

          v70 = sub_19B420058();
          if ((*(v70 + 160) & 0x80000000) == 0 || (*(v70 + 164) & 0x80000000) == 0 || (*(v70 + 168) & 0x80000000) == 0 || *(v70 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            LOWORD(v88) = 0;
            LODWORD(v76) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "[CLIoHidInterface] Could not set all properties after too many retries. Giving up.", &v88, v76);
            v72 = v71;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v71);
            if (v72 != buf)
            {
              free(v72);
            }
          }

          v58 = 1.79769313e308;
          goto LABEL_108;
        }

        v65 = CFAbsoluteTimeGetCurrent();
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v66 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          *v98 = 0x4004000000000000;
          _os_log_impl(&dword_19B41C000, v66, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", buf, 0xCu);
        }

        v67 = sub_19B420058();
        v58 = v65 + 2.5;
        if (*(v67 + 160) <= 1 && *(v67 + 164) <= 1 && *(v67 + 168) <= 1 && !*(v67 + 152))
        {
LABEL_108:
          v6 = a1;
          goto LABEL_109;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v88 = 134349056;
        *v89 = 0x4004000000000000;
        LODWORD(v76) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", &v88, v76);
        v64 = v68;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v68);
      }

      else
      {
        v60 = CFAbsoluteTimeGetCurrent();
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v61 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *v98 = 0x3FD0000000000000;
          _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", buf, 0xCu);
        }

        v62 = sub_19B420058();
        v58 = v60 + 0.25;
        if (*(v62 + 160) <= 1 && *(v62 + 164) <= 1 && *(v62 + 168) <= 1 && !*(v62 + 152))
        {
          goto LABEL_108;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v88 = 134349056;
        *v89 = 0x3FD0000000000000;
        LODWORD(v76) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", &v88, v76);
        v64 = v63;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v63);
      }

      if (v64 != buf)
      {
        free(v64);
      }

      goto LABEL_108;
    }
  }

  *(v6 + 52) = 0;
  v58 = 1.79769313e308;
LABEL_109:
  CFRunLoopTimerSetNextFireDate(*(v6 + 56), v58);
}

void sub_19B422AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16)
{
  sub_19B41FFEC(a15);
  std::__shared_weak_count::__release_weak(a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B422B38(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v3[2];
  v5 = v4 + 80 * v1;
  v8 = *(v5 + 40);
  v7 = (v5 + 40);
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = (v7 - 1);
  v10 = v7;
  v11 = v6;
  do
  {
    v12 = v11[4];
    v13 = v12 >= v2;
    v14 = v12 < v2;
    if (v13)
    {
      v10 = v11;
    }

    v11 = v11[v14];
  }

  while (v11);
  if (v10 != v7 && v10[4] <= v2)
  {
    v23 = v10[1];
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      v25 = v10;
      do
      {
        v24 = v25[2];
        v26 = *v24 == v25;
        v25 = v24;
      }

      while (!v26);
    }

    if (*v9 == v10)
    {
      *v9 = v24;
    }

    --v7[1];
    sub_19B4271C4(v6, v10);
    operator delete(v10);
    v27 = v3[2];
    v28 = sub_19B426978(v27, v1);
    v36 = v28;
    v29 = sub_19B4268E8(v27, v1);
    v35 = v29;
    v30 = (v27 + 80 * v1);
    if (v28 != *v30)
    {
      *v30 = v28;
      *(v3[2] + 80 * v1 + 16) = (*(*v3 + 16))(v3, v1, &v36);
      sub_19B423614(v3, v1);
      v27 = v3[2];
    }

    v31 = v27 + 80 * v1;
    v33 = *(v31 + 8);
    v32 = (v31 + 8);
    if (v29 != v33)
    {
      *v32 = v29;
      v34 = (*(*v3 + 24))(v3, v1, &v35);
      v27 = v3[2];
      *(v27 + 80 * v1 + 24) = v34;
    }

    return (*(*v3 + 40))(v3, v1, *(v27 + 80 * v1 + 48) + 1);
  }

  else
  {
LABEL_9:
    v15 = v4 + 80 * v1;
    result = (v15 + 56);
    for (i = *(v15 + 64); i != result; i = i[1])
    {
      if (i[2] == v2)
      {
        result = i;
        break;
      }
    }

    v18 = (v4 + 80 * v1 + 56);
    if (result != v18)
    {
      v20 = *result;
      v19 = result[1];
      *(v20 + 8) = v19;
      *v19 = v20;
      --v18[2];
      operator delete(result);
      v21 = *(v3[2] + 80 * v1 + 72);
      v22 = *(*v3 + 32);

      return v22(v3, v1, v21);
    }
  }

  return result;
}

__n128 sub_19B422E10(uint64_t a1)
{
  *v2.i64 = (*(*a1 + 56))(a1);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *v7 = 0;
  v6 = 0xBFF0000000000000;
  sub_19B41E130((&v6 + 8), v2);
  memset(&v7[8], 0, 36);
  *&v7[44] = xmmword_19B7BA300;
  *&v7[60] = 0;
  *&v8 = 511;
  BYTE8(v8) = 0;
  *(a1 + 192) = 0;
  v3 = v8;
  *(a1 + 160) = *&v7[48];
  *(a1 + 176) = v3;
  v4 = *v7;
  *(a1 + 96) = v6;
  *(a1 + 112) = v4;
  result = *&v7[32];
  *(a1 + 128) = *&v7[16];
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_19B422EC8(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    sub_19B420D84();
    v3 = *_CFGetProgname();
    *buf = 136446210;
    v16 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "%{public}s is disabling power conservation for parallax.", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
    }

    v5 = off_1ED71C808;
    sub_19B420D84();
    v6 = *_CFGetProgname();
    v13 = 136446210;
    v14 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v5, 1, "%{public}s is disabling power conservation for parallax.", &v13, 12);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService3AxisDynamicGyro::stop()", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (*(a1 + 225) == 1)
  {
    v9 = sub_19B442E70();
    sub_19B445814(v9);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC((a1 + 200));
  if (*(a1 + 288))
  {
    v10 = sub_19B42AD98();
    sub_19B426A14(v10, 0, *(a1 + 288));
    v11 = *(a1 + 288);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    *(a1 + 288) = 0;
  }

  sub_19B423148((a1 + 200));
  result = *(a1 + 280);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(a1 + 280) = 0;
  }

  return result;
}

void *sub_19B423148(void *result)
{
  if (result[1])
  {
    v1 = result;
    v2 = sub_19B4249E4();
    sub_19B426A14(v2, 0, v1[1]);
    result = v1[1];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v1[1] = 0;
  }

  return result;
}

uint64_t sub_19B4231B4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = sub_19B423E34();
  if ((v2 & 4) != 0)
  {
    if (!*(a1 + 40))
    {
      v3 = sub_19B42CAAC();
      sub_19B42C428(v3);
    }
  }

  else
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v4 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Accel unavailable, unable to establish hid interface", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      LOWORD(v9) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E8, 17, "Accel unavailable, unable to establish hid interface", &v9, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAccelerometer::openHidDevice()", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return (v2 >> 2) & 1;
}

void sub_19B423614(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = v2 + 80 * a2;
  v6 = *(v3 + 32);
  v4 = v3 + 32;
  v5 = v6;
  v7 = *(v4 - 16);
  if (v7 <= 0.0)
  {
    if (v5 != (v4 + 8))
    {
      do
      {
        *(v5 + 11) = 1;
        v20 = v5[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v5[2];
            v19 = *v21 == v5;
            v5 = v21;
          }

          while (!v19);
        }

        v5 = v21;
      }

      while (v21 != (v4 + 8));
    }
  }

  else if (v5 != (v2 + 80 * a2 + 40))
  {
    do
    {
      if (v7 <= 0.0)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
        }

        v10 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
        {
          v11 = *(*(a1 + 16) + 80 * a2 + 16);
          *buf = 134217984;
          v25 = v11;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "CLMotionNotifier::updateSamplePeriod UpdateInterval:%f", buf, 0xCu);
        }

        v12 = sub_19B420058();
        if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
          }

          v13 = *(*(a1 + 16) + 80 * a2 + 16);
          v22 = 134217984;
          v23 = v13;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "CLMotionNotifier::updateSamplePeriod UpdateInterval:%f", COERCE_DOUBLE(&v22));
          v15 = v14;
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMotionNotifier::updateSamplePeriods(int)", "CoreLocation: %s\n", v14);
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }

      v16 = *(a1 + 16);
      v7 = *(v16 + 80 * a2 + 16);
      *(v5 + 11) = llround(*(v5 + 6) / v7);
      v17 = v5[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != (v16 + 80 * a2 + 40));
  }
}

uint64_t sub_19B4238F4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  v6 = objc_msgSend_initWithLong_(v4, v5, a2);
  (*(*a1 + 16))(a1, @"ReportInterval", v6);

  return a2;
}

void sub_19B423974(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v16 = off_1ED71C838;
    p_vtable = "assert";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 16);
      v17 = *(a1 + 20);
      *buf = 68290051;
      *v28 = 0;
      *&v28[4] = 2082;
      *&v28[6] = "";
      v29 = 1026;
      v30 = v17;
      v31 = 1026;
      v32 = v18;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v19 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v21 = *(a1 + 16);
      v20 = *(a1 + 20);
      *buf = 68290051;
      *v28 = 0;
      *&v28[4] = 2082;
      *&v28[6] = "";
      v29 = 1026;
      v30 = v20;
      v31 = 1026;
      v32 = v21;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setProperty should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a2 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 20);
      *buf = 68290051;
      *v28 = 0;
      *&v28[4] = 2082;
      *&v28[6] = "";
      v29 = 1026;
      v30 = v22;
      v31 = 1026;
      v32 = v23;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 562, "setProperty");
LABEL_28:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_5;
  }

  sub_19B420FC0(*(a1 + 40));
  if (a3)
  {
    v7 = [CLPropertyValue alloc];
    v9 = objc_msgSend_initWithValue_dirty_(v7, v8, a3, 1);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 168), v10, v9, a2);
    goto LABEL_14;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
    goto LABEL_28;
  }

LABEL_5:
  v12 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    *v28 = a2;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not set property value for %{public}@", buf, 0xCu);
  }

  v13 = sub_19B420058();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v25 = 138543362;
    v26 = a2;
    LODWORD(v24) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "[CLIoHidInterface] Could not set property value for %{public}@", &v25, v24);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLIoHidInterface::Device::setProperty(NSString *, id)", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

LABEL_14:
  sub_19B421D14(*(a1 + 40));
}

uint64_t sub_19B423E34()
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 0;
  v1 = dword_1ED71C97C;
  switch(dword_1ED71C97C)
  {
    case 0:
    case 281:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v8 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v12 = v1;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Unsupported HW type %d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B40, 16, "Unsupported HW type %d; file a radar to CoreMotion Factory | 1.0", &v10);
      goto LABEL_20;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v4 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v12 = v1;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      v5 = sub_19B420058();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B38 != -1)
        {
          dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
        }

        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B40, 17, "Old hardware,%d is not supported", &v10);
LABEL_20:
        v7 = v6;
        sub_19B6BB7CC("Generic", 1, 0, 0, "static CLPlatformInfo::MotionProviders CLPlatformInfo::motionProviders()", "CoreLocation: %s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      return 0;
    case 6:
    case 60:
    case 61:
    case 204:
      return 4;
    case 24:
    case 25:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 78:
    case 79:
    case 80:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 168:
    case 170:
    case 171:
    case 172:
    case 173:
    case 176:
    case 177:
    case 233:
      return 31;
    case 26:
      return 15;
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 62:
    case 63:
    case 64:
    case 65:
    case 76:
    case 77:
    case 134:
    case 135:
    case 136:
    case 137:
    case 144:
    case 145:
    case 146:
    case 147:
    case 154:
    case 155:
    case 156:
    case 157:
    case 161:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
      return 23;
    case 39:
    case 42:
    case 148:
    case 149:
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      return 6;
    case 50:
    case 51:
    case 66:
    case 67:
    case 74:
    case 75:
    case 82:
    case 84:
    case 86:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 150:
    case 151:
    case 152:
    case 153:
      if (qword_1ED71CA10 != -1)
      {
        dispatch_once(&qword_1ED71CA10, &unk_1F0E3A560);
      }

      v2 = byte_1ED71C977 == 0;
      v3 = 22;
      goto LABEL_26;
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 280:
      if (qword_1ED71CA10 != -1)
      {
        dispatch_once(&qword_1ED71CA10, &unk_1F0E3A560);
      }

      v2 = byte_1ED71C977 == 0;
      v3 = 54;
LABEL_26:
      if (v2)
      {
        result = v3;
      }

      else
      {
        result = v3 + 1;
      }

      break;
    case 169:
    case 174:
    case 175:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      result = 63;
      break;
    default:
      return result;
  }

  return result;
}

double sub_19B424680(uint64_t a1, int a2, double *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v3 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || (result = 0.0, *(v4 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      LOWORD(v19) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E8, 17, "Unrecognized notification", &v19, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccelerometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }

      return 0.0;
    }
  }

  else
  {
    v10 = sub_19B4231B4(a1);
    result = 0.0;
    if (v10)
    {
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v11 = qword_1ED71C7E8;
      if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_INFO))
      {
        v12 = *a3;
        *buf = 134349056;
        v22 = v12;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "Setting accelerometer update interval to %{public}f", buf, 0xCu);
      }

      v13 = sub_19B420058();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D8 != -1)
        {
          dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
        }

        v14 = *a3;
        v19 = 134349056;
        v20 = v14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E8, 1, "Setting accelerometer update interval to %{public}f", &v19, 12);
        v16 = v15;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccelerometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v17 = rint(*a3 * 1000000.0);
      if (*a3 < 0.0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      sub_19B4238F4(*(a1 + 40), v18);
      return *a3;
    }
  }

  return result;
}

uint64_t sub_19B4249E4()
{
  if (qword_1ED71D1F8 != -1)
  {
    dispatch_once(&qword_1ED71D1F8, &unk_1F0E29500);
  }

  return qword_1ED71D1F0;
}

uint64_t sub_19B424A2C(uint64_t a1, double a2)
{
  v3 = rint(a2 * 1000000.0);
  if (v3 >= 1000000)
  {
    v3 = 1000000;
  }

  if (v3 <= 10000)
  {
    v4 = 10000;
  }

  else
  {
    v4 = v3;
  }

  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  v7 = objc_msgSend_initWithLong_(v5, v6, v4);
  (*(*a1 + 16))(a1, @"BatchInterval", v7);

  return v4;
}

uint64_t sub_19B424AE0()
{
  if (qword_1ED71D5D8 != -1)
  {
    dispatch_once(&qword_1ED71D5D8, &unk_1F0E29FC0);
  }

  return qword_1ED71D5D0;
}

void sub_19B424B28(void *a1, int a2, uint64_t *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v7 = *a3;
    *buf = 67240448;
    *&buf[4] = a2;
    *&buf[8] = 2050;
    *&buf[10] = v7;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CLDeviceMotion::minimumUpdateIntervalChanged,notification,%{public}d,minimumUpdateInterval,%{public}f", buf, 0x12u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v9 = *a3;
    v48 = 67240448;
    *v49 = a2;
    *&v49[4] = 2050;
    *&v49[6] = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "CLDeviceMotion::minimumUpdateIntervalChanged,notification,%{public}d,minimumUpdateInterval,%{public}f", &v48, 18);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLDeviceMotion::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v12 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v13 = sub_19B42753C(a1, 0);
    v14 = sub_19B42753C(a1, 9);
    v15 = sub_19B42753C(a1, 1);
    v16 = sub_19B42753C(a1, 10);
    v17 = sub_19B42753C(a1, 2);
    v18 = sub_19B42753C(a1, 3);
    v19 = sub_19B42753C(a1, 4);
    v20 = sub_19B42753C(a1, 5);
    v21 = sub_19B42753C(a1, 11);
    *buf = 134351104;
    *&buf[4] = v13;
    *&buf[12] = 2050;
    *&buf[14] = v14;
    v65 = 2050;
    v66 = v15;
    v67 = 2050;
    v68 = v16;
    v69 = 2050;
    v70 = v17;
    v71 = 2050;
    v72 = v18;
    v73 = 2050;
    v74 = v19;
    v75 = 2050;
    v76 = v20;
    v77 = 2050;
    v78 = v21;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "minimumUpdateInterval GyroOnly:%{public}f, 3AxisDynamicGyro:%{public}f, 6Axis:%{public}f, 6AxisThrottledGyro:%{public}f, 9Axis:%{public}f, 9AxisWithNorthReference:%{public}f, 9AxisWithTrueNorthReference:%{public}f, BuildGYTT:%{public}f, 6AxisAlwaysOnSPU:%{public}f", buf, 0x5Cu);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v23 = off_1ED71C808;
    v24 = sub_19B42753C(a1, 0);
    v25 = sub_19B42753C(a1, 9);
    v26 = sub_19B42753C(a1, 1);
    v27 = sub_19B42753C(a1, 10);
    v28 = sub_19B42753C(a1, 2);
    v29 = sub_19B42753C(a1, 3);
    v30 = sub_19B42753C(a1, 4);
    v31 = sub_19B42753C(a1, 5);
    v32 = sub_19B42753C(a1, 11);
    v48 = 134351104;
    *v49 = v24;
    *&v49[8] = 2050;
    *&v49[10] = v25;
    v50 = 2050;
    v51 = v26;
    v52 = 2050;
    v53 = v27;
    v54 = 2050;
    v55 = v28;
    v56 = 2050;
    v57 = v29;
    v58 = 2050;
    v59 = v30;
    v60 = 2050;
    v61 = v31;
    v62 = 2050;
    v63 = v32;
    LODWORD(v47) = 92;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v23, 1, "minimumUpdateInterval GyroOnly:%{public}f, 3AxisDynamicGyro:%{public}f, 6Axis:%{public}f, 6AxisThrottledGyro:%{public}f, 9Axis:%{public}f, 9AxisWithNorthReference:%{public}f, 9AxisWithTrueNorthReference:%{public}f, BuildGYTT:%{public}f, 6AxisAlwaysOnSPU:%{public}f", &v48, v47);
    v34 = v33;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLDeviceMotion::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  if (a2 > 4)
  {
    if (a2 > 9)
    {
      if (a2 != 11)
      {
        if (a2 != 10)
        {
          return;
        }

        goto LABEL_53;
      }

      v41 = a1[10];
      if (v41)
      {
LABEL_72:
        v45 = *(*v41 + 16);
        goto LABEL_73;
      }
    }

    else if (a2 == 5)
    {
      v41 = a1[4];
      if (v41)
      {
        goto LABEL_72;
      }
    }

    else if (a2 == 9)
    {
      v41 = a1[6];
      if (v41)
      {
        goto LABEL_72;
      }
    }
  }

  else
  {
    if ((a2 - 2) < 3)
    {
      if (!a1[9])
      {
        return;
      }

      v35 = sub_19B42753C(a1, 2);
      v36 = sub_19B42753C(a1, 3);
      if (v35 <= 0.0)
      {
        v37 = 1.79769313e308;
      }

      else
      {
        v37 = v35;
      }

      if (v36 <= 0.0)
      {
        v36 = 1.79769313e308;
      }

      if (v36 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v36;
      }

      v39 = sub_19B42753C(a1, 4);
      if (v39 <= 0.0)
      {
        v39 = 1.79769313e308;
      }

      if (v39 >= v38)
      {
        v39 = v38;
      }

      if (v39 == 1.79769313e308)
      {
        v39 = 0.0;
      }

      *buf = v39;
      v40 = a1[9];
LABEL_64:
      v45 = *(*v40 + 16);
LABEL_73:
      v45();
      return;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

LABEL_53:
      if (!a1[8])
      {
        return;
      }

      v42 = sub_19B42753C(a1, 1);
      v43 = sub_19B42753C(a1, 10);
      if (v42 <= 0.0)
      {
        v44 = 1.79769313e308;
      }

      else
      {
        v44 = v42;
      }

      if (v43 <= 0.0)
      {
        v43 = 1.79769313e308;
      }

      if (v43 >= v44)
      {
        v43 = v44;
      }

      if (v43 == 1.79769313e308)
      {
        v43 = 0.0;
      }

      *buf = v43;
      v40 = a1[8];
      goto LABEL_64;
    }

    v46 = a1[7];
    if (v46)
    {
      *buf = sub_19B42753C(a1, 0);
      (*(*v46 + 16))(v46, buf);
    }

    v41 = a1[5];
    if (v41)
    {
      goto LABEL_72;
    }
  }
}

unint64_t sub_19B42521C()
{
  if ((sub_19B421620() & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return (sub_19B421620() >> 4) & 1;
  }
}

void sub_19B425248(uint64_t a1, uint64_t a2)
{
  v4 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B426B24;
  v5[3] = &unk_1E7535180;
  v5[4] = a1;
  v5[5] = a2;
  sub_19B420C9C(v4, v5);
}

double sub_19B4253A0(void *a1, int *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67240192;
    v23 = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Stopping device motion, mode=%{public}#x", buf, 8u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v7 = *a2;
    v20 = 67240192;
    v21 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Stopping device motion, mode=%{public}#x", &v20, 8);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::disableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (sub_19B426490(a2))
  {
    v11 = *a2;
    if (*a2 <= 18)
    {
      if (v11 > 6)
      {
        if (v11 == 7 || v11 == 15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v11 == 2)
        {
          sub_19B421798();
          if ((sub_19B421620() & 0x100) != 0)
          {
            v12 = a1[7];
            if (!v12)
            {
              return result;
            }
          }

          else
          {
            v12 = a1[5];
            if (!v12)
            {
              return result;
            }
          }

          goto LABEL_51;
        }

        if (v11 == 3)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      if (v11 > 66)
      {
        if (v11 != 67)
        {
          if (v11 != 143)
          {
            if (v11 == 259)
            {
              v12 = a1[10];
              if (!v12)
              {
                return result;
              }

LABEL_51:
              *&result = sub_19B422E10(v12).n128_u64[0];
              return result;
            }

            goto LABEL_39;
          }

LABEL_28:
          v12 = a1[9];
          if (!v12)
          {
            return result;
          }

          goto LABEL_51;
        }

LABEL_24:
        v12 = a1[8];
        if (!v12)
        {
          return result;
        }

        goto LABEL_51;
      }

      if (v11 == 19)
      {
        v12 = a1[4];
        if (!v12)
        {
          return result;
        }

        goto LABEL_51;
      }

      if (v11 == 34)
      {
        v12 = a1[6];
        if (!v12)
        {
          return result;
        }

        goto LABEL_51;
      }
    }

LABEL_39:
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v13 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      v14 = *a2;
      *buf = 67240192;
      v23 = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Device motion mode (%{public}d) not supported, unable to disable sensor fusion", buf, 8u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v16 = *a2;
      v20 = 67240192;
      v21 = v16;
      LODWORD(v19) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "Device motion mode (%{public}d) not supported, unable to disable sensor fusion", &v20, v19);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLDeviceMotion::disableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  return result;
}

double sub_19B4257A0(NSObject *a1, unsigned int a2, unint64_t a3, unint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    buf = 67240704;
    *buf_4 = a2;
    *&buf_4[4] = 2050;
    *&buf_4[6] = a3;
    *&buf_4[14] = 2050;
    *&buf_4[16] = a4;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CLDeviceMotion::numberOfClientsChanged notification:%{public}d, from:%{public}zu, to:%{public}zu", &buf, 0x1Cu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v61 = 67240704;
    *v62 = a2;
    *&v62[4] = 2050;
    *&v62[6] = a3;
    *&v62[14] = 2050;
    *&v62[16] = a4;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "CLDeviceMotion::numberOfClientsChanged notification:%{public}d, from:%{public}zu, to:%{public}zu", &v61, 28);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLDeviceMotion::numberOfClientsChanged(int, size_t, size_t)", "CoreLocation: %s\n", v8);
    if (v9 != &buf)
    {
      free(v9);
    }
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v10 = off_1ED71C808;
  v58 = a4;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v57 = sub_19B427728(a1, 0);
    v11 = sub_19B427728(a1, 9);
    v12 = sub_19B427728(a1, 1);
    v13 = sub_19B427728(a1, 10);
    v14 = sub_19B427728(a1, 2);
    v15 = sub_19B427728(a1, 3);
    v16 = sub_19B427728(a1, 4);
    v17 = sub_19B427728(a1, 5);
    v18 = sub_19B427728(a1, 11);
    buf = 134351104;
    *buf_4 = v57;
    *&buf_4[8] = 2050;
    *&buf_4[10] = v11;
    *&buf_4[18] = 2050;
    *&buf_4[20] = v12;
    *&buf_4[28] = 2050;
    *&buf_4[30] = v13;
    v77 = 2050;
    v78 = v14;
    v79 = 2050;
    v80 = v15;
    v81 = 2050;
    v82 = v16;
    v83 = 2050;
    v84 = v17;
    a4 = v58;
    v85 = 2050;
    v86 = v18;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "numberOfClients GyroOnly:%{public}zd, 3AxisDynamicGyro:%{public}zd, 6Axis:%{public}zd, 6AxisThrottledGyro:%{public}zd, 9Axis:%{public}zd, 9AxisWithNorthReference:%{public}zd, 9AxisWithTrueNorthReference:%{public}zd, BuildGYTT:%{public}zd, 6AxisAlwaysOnSPU:%{public}zd", &buf, 0x5Cu);
  }

  v19 = sub_19B420058();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v20 = off_1ED71C808;
    v21 = sub_19B427728(a1, 0);
    v22 = sub_19B427728(a1, 9);
    v23 = sub_19B427728(a1, 1);
    v24 = sub_19B427728(a1, 10);
    v25 = sub_19B427728(a1, 2);
    v26 = sub_19B427728(a1, 3);
    v27 = sub_19B427728(a1, 4);
    v28 = sub_19B427728(a1, 5);
    v29 = sub_19B427728(a1, 11);
    v61 = 134351104;
    *v62 = v21;
    *&v62[8] = 2050;
    *&v62[10] = v22;
    *&v62[18] = 2050;
    *&v62[20] = v23;
    v63 = 2050;
    v64 = v24;
    v65 = 2050;
    v66 = v25;
    v67 = 2050;
    v68 = v26;
    v69 = 2050;
    v70 = v27;
    v71 = 2050;
    v72 = v28;
    v73 = 2050;
    v74 = v29;
    LODWORD(v56) = 92;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, v20, 1, "numberOfClients GyroOnly:%{public}zd, 3AxisDynamicGyro:%{public}zd, 6Axis:%{public}zd, 6AxisThrottledGyro:%{public}zd, 9Axis:%{public}zd, 9AxisWithNorthReference:%{public}zd, 9AxisWithTrueNorthReference:%{public}zd, BuildGYTT:%{public}zd, 6AxisAlwaysOnSPU:%{public}zd", &v61, v56);
    v31 = v30;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLDeviceMotion::numberOfClientsChanged(int, size_t, size_t)", "CoreLocation: %s\n", v30);
    if (v31 != &buf)
    {
      free(v31);
    }

    a4 = v58;
  }

  if (a2 == 10)
  {
    LODWORD(v32) = 1;
  }

  else
  {
    LODWORD(v32) = a2;
  }

  v33 = sub_19B427728(a1, 2);
  v34 = sub_19B427728(a1, 3);
  v35 = sub_19B427728(a1, 4);
  v36 = sub_19B421620();
  if (v32 > 0xB)
  {
    goto LABEL_56;
  }

  if (((1 << v32) & 0xA23) == 0)
  {
    v38 = v36;
    if (((1 << v32) & 0xC) != 0)
    {
      goto LABEL_84;
    }

    if (v32 == 4)
    {
      if (a3 || a4 != 1)
      {
        if (a3 != 1 || a4 || !a1[11].isa)
        {
          goto LABEL_84;
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
        }

        v48 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_INFO, "Unregistering for geomagnetic model updates", &buf, 2u);
        }

        v49 = sub_19B420058();
        if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }

          LOWORD(v61) = 0;
          LODWORD(v56) = 2;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Unregistering for geomagnetic model updates", &v61, v56);
          v52 = v51;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::unregisterForGeomagneticModelNotification()", "CoreLocation: %s\n", v51);
          if (v52 != &buf)
          {
            free(v52);
          }
        }

        objc_msgSend_unregister_forNotification_(*(a1[11].isa + 2), v50, *(a1[11].isa + 1), 0);
        result = -1.0;
        *&a1[12].isa = xmmword_19B7B7710;
      }

      else
      {
        if (!a1[11].isa)
        {
          sub_19B43D9C4();
          sub_19B43DA50();
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
        }

        v39 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_INFO, "Registering for geomagnetic model updates", &buf, 2u);
        }

        v40 = sub_19B420058();
        if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }

          LOWORD(v61) = 0;
          LODWORD(v56) = 2;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Registering for geomagnetic model updates", &v61, v56);
          v43 = v42;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::registerForGeomagneticModelNotification()", "CoreLocation: %s\n", v42);
          if (v43 != &buf)
          {
            free(v43);
          }
        }

        objc_msgSend_register_forNotification_registrationInfo_(*(a1[11].isa + 2), v41, *(a1[11].isa + 1), 0, 0);
      }

      a4 = v58;
LABEL_84:
      v53 = v34 + v33 + v35;
      if (a3 < a4)
      {
        if (v53 == 1)
        {
          buf = sub_19B427908(v32);
          sub_19B43B878(a1, &buf);
        }

        if (*(a1[9].isa + 7))
        {
          return result;
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
        }

        v54 = off_1ED71C808;
        v32 = "sE";
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
        {
          buf = 68289539;
          *buf_4 = 0;
          *&buf_4[4] = 2082;
          *&buf_4[6] = "";
          *&buf_4[14] = 2082;
          *&buf_4[16] = "assert";
          *&buf_4[24] = 2081;
          *&buf_4[26] = "fSensorFusionService9Axis->isRunning()";
          _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:9Axis should be running, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }
        }

        v55 = off_1ED71C808;
        if (os_signpost_enabled(off_1ED71C808))
        {
          buf = 68289539;
          *buf_4 = 0;
          *&buf_4[4] = 2082;
          *&buf_4[6] = "";
          *&buf_4[14] = 2082;
          *&buf_4[16] = "assert";
          *&buf_4[24] = 2081;
          *&buf_4[26] = "fSensorFusionService9Axis->isRunning()";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "9Axis should be running", "{msg%{public}.0s:9Axis should be running, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }
        }

        a1 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          buf = 68289539;
          *buf_4 = 0;
          *&buf_4[4] = 2082;
          *&buf_4[6] = "";
          *&buf_4[14] = 2082;
          *&buf_4[16] = "assert";
          *&buf_4[24] = 2081;
          *&buf_4[26] = "fSensorFusionService9Axis->isRunning()";
          _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:9Axis should be running, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Notifiers/CLDeviceMotion.mm", 363, "numberOfClientsChanged");
      }

      if (((v38 >> 4) & 1 ^ v53) != 1)
      {
        return result;
      }

LABEL_100:
      buf = sub_19B427908(v32);
      return sub_19B4253A0(a1, &buf);
    }

LABEL_56:
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v44 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      buf = 67240192;
      *buf_4 = a2;
      _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_FAULT, "Device motion mode (%{public}d) not supported, can't process client change", &buf, 8u);
    }

    v45 = sub_19B420058();
    if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v61 = 67240192;
      *v62 = a2;
      LODWORD(v56) = 8;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "Device motion mode (%{public}d) not supported, can't process client change", &v61, v56);
      v47 = v46;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLDeviceMotion::numberOfClientsChanged(int, size_t, size_t)", "CoreLocation: %s\n", v46);
      if (v47 != &buf)
      {
        free(v47);
      }
    }

    return result;
  }

  if (!a3 && a4 == 1)
  {
    buf = sub_19B427908(v32);
    sub_19B43B878(a1, &buf);
    return result;
  }

  if (a3 == 1 && !a4)
  {
    goto LABEL_100;
  }

  return result;
}

uint64_t sub_19B426490(int *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1 > 142)
  {
    if (v2 != 143 && v2 != 259)
    {
LABEL_36:
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v14 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
      {
        v15 = *a1;
        *buf = 67240192;
        v21 = v15;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Unsupported mode (%{public}d). Returning.", buf, 8u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v17 = *a1;
      LODWORD(v19[0]) = 67240192;
      HIDWORD(v19[0]) = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "Unsupported mode (%{public}d). Returning.", v19, 8, v19[0]);
      goto LABEL_46;
    }
  }

  else
  {
    v3 = (v2 - 7) > 0x3C || ((1 << (v2 - 7)) & 0x1000000008001101) == 0;
    if (v3 && (v2 - 2) >= 2)
    {
      goto LABEL_36;
    }
  }

  if ((v2 & 4) != 0)
  {
    if (!sub_19B43A6F0())
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v10 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
      {
        v11 = *a1;
        *buf = 67240192;
        v21 = v11;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Unsupported mode (%{public}d). Compass not found. Returning.", buf, 8u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v13 = *a1;
      LODWORD(v19[0]) = 67240192;
      HIDWORD(v19[0]) = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "Unsupported mode (%{public}d). Compass not found. Returning.", v19, 8, v19[0]);
      goto LABEL_46;
    }

    v2 = *a1;
  }

  if ((v2 & 2) != 0)
  {
    return 1;
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    *buf = 67240192;
    v21 = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unsupported mode (%{public}d). Couldn't do DeviceMotion without Gyro. Returning.", buf, 8u);
  }

  v6 = sub_19B420058();
  if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v7 = *a1;
    LODWORD(v19[0]) = 67240192;
    HIDWORD(v19[0]) = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "Unsupported mode (%{public}d). Couldn't do DeviceMotion without Gyro. Returning.", v19, 8, v19[0]);
LABEL_46:
    v18 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLDeviceMotion::isModeValid(const CLMotionTypeDeviceMotionMode &) const", "CoreLocation: %s\n", v8);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return 0;
}

double sub_19B4268E8(uint64_t a1, int a2)
{
  v2 = a1 + 80 * a2;
  v3 = *(v2 + 32);
  v4 = (v2 + 40);
  if (v3 == v4)
  {
    result = 1.79769313e308;
  }

  else
  {
    result = 1.79769313e308;
    do
    {
      v6 = v3[7];
      if (v6 < result && v6 > 0.0)
      {
        result = v3[7];
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

double sub_19B426978(uint64_t a1, int a2)
{
  v2 = a1 + 80 * a2;
  v3 = *(v2 + 32);
  v4 = (v2 + 40);
  if (v3 == v4)
  {
    result = 1.79769313e308;
  }

  else
  {
    result = 1.79769313e308;
    do
    {
      v6 = v3[6];
      if (v6 < result && v6 > 0.0)
      {
        result = v3[6];
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

double sub_19B426A08(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 40) = *a2;
  return result;
}

void sub_19B426A14(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B422B38;
  v7[3] = &unk_1E7533D90;
  v8 = a2;
  v7[4] = a1;
  v7[5] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B426B24(uint64_t a1)
{
  v1 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v27 = off_1ED71C808;
    v4 = "assert";
    v2 = "properties != nullptr";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v28 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "properties != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v1 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Notifiers/CLDeviceMotion.mm", 210, "removeDeviceMotionDispatcher_block_invoke");
  }

  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
LABEL_3:
  v5 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_description(v4, v6, v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    *buf = 136446210;
    *v33 = v11;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "CLDeviceMotion::removeDeviceMotionDispatcher removing dispatcher with property: %{public}s", buf, 0xCu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v17 = off_1ED71C808;
    v18 = objc_msgSend_description(v4, v15, v16);
    v30 = 136446210;
    v31 = objc_msgSend_UTF8String(v18, v19, v20);
    LODWORD(v29) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 1, "CLDeviceMotion::removeDeviceMotionDispatcher removing dispatcher with property: %{public}s", &v30, v29);
    v22 = v21;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::removeDeviceMotionDispatcher(CLDeviceMotion::Dispatcher *)_block_invoke", "CoreLocation: %s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  *buf = objc_msgSend_mode(v4, v13, v14);
  if (sub_19B426490(buf))
  {
    v25 = objc_msgSend_mode(v4, v23, v24);
    v26 = sub_19B426F5C(v25);
    sub_19B426A14(v2, v26, *(v1 + 5));
  }
}

uint64_t sub_19B426F5C(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 <= 18)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        return 2;
      }

      if (a1 == 15)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 2)
      {
        return 0;
      }

      if (a1 == 3)
      {
        return 1;
      }
    }
  }

  else if (a1 <= 66)
  {
    if (a1 == 19)
    {
      return 5;
    }

    if (a1 == 34)
    {
      return 9;
    }
  }

  else
  {
    switch(a1)
    {
      case 67:
        return 10;
      case 143:
        return 4;
      case 259:
        return 11;
    }
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v3 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v9 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "No viable conversion for mode %{public}#x", buf, 8u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v7[0] = 67240192;
    v7[1] = a1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "No viable conversion for mode %{public}#x", v7, 8);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static CLDeviceMotion::CLDeviceMotionNotification CLDeviceMotion::CLMotionTypeDeviceMotionModeToCLDeviceMotionNotification(const CLMotionTypeDeviceMotionMode)", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return 12;
}

uint64_t *sub_19B4271C4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

double sub_19B42753C(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) > a2)
  {
    return *(*(a1 + 16) + 80 * a2);
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unknown notification %d", buf, 8u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (result = -1.0, *(v5 + 152)))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "Unknown notification %d", v8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 0, "CFTimeInterval CLMotionNotifier::minimumUpdateInterval(int)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }

    return -1.0;
  }

  return result;
}

uint64_t sub_19B427728(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) > a2)
  {
    return *(*(a1 + 16) + 80 * a2 + 48);
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unknown notification %d", buf, 8u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "Unknown notification %d", v8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 0, "ssize_t CLMotionNotifier::numberOfClients(int)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return -1;
}

uint64_t sub_19B427908(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 < 0xC && ((0xE3Fu >> a1) & 1) != 0)
  {
    return dword_19B7BD104[a1];
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v3 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v9 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "No viable conversion for notification %{public}#x", buf, 8u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v7[0] = 67240192;
    v7[1] = a1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "No viable conversion for notification %{public}#x", v7, 8);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static CLMotionTypeDeviceMotionMode CLDeviceMotion::CLDeviceMotionNotificationToCLMotionTypeDeviceMotionMode(const int)", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return 0;
}

void *sub_19B427AEC(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = sub_19B42AD98();
    sub_19B426A14(v2, 0, v1[2]);
    result = v1[2];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v1[2] = 0;
  }

  return result;
}

void sub_19B427CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CLMotionActivity::isInVehicle(CLMotionActivity *this)
{
  type = this->type;
  v2 = 1;
  if (this->type > 51)
  {
    if (type == 52 || type == 56)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!type)
  {
    return 0;
  }

  if (type != 5)
  {
LABEL_7:
    v2 = 0;
  }

LABEL_8:
  if ((type & 0xFFFFFFFE) == 0xA)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t CLMotionActivity::isTypeInVehicle(uint64_t result)
{
  v1 = 1;
  if (result > 51)
  {
    if (result == 52 || result == 56)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!result)
  {
    return result;
  }

  if (result != 5)
  {
LABEL_7:
    v1 = 0;
  }

LABEL_8:
  if ((result & 0xFFFFFFFE) == 0xA)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

const char *CLMotionActivity::activityTypeToString(int a1)
{
  result = "frozen";
  if (a1 > 12149)
  {
    if (a1 > 15659)
    {
      if (a1 > 18239)
      {
        if (a1 > 90121)
        {
          if (a1 <= 515620)
          {
            v7 = 90122;
            v8 = "Indoor Hand Cycling";
            v9 = a1 == 90603;
            v10 = "Outdoor Wheelchair Activity";
          }

          else
          {
            if (a1 == 515621)
            {
              return "Baseball";
            }

            v7 = 515652;
            v8 = "Racquetball";
            v9 = a1 == 519150;
            v10 = "Snowboarding";
          }
        }

        else if (a1 <= 19089)
        {
          v7 = 18240;
          v8 = "Swimming";
          v9 = a1 == 19030;
          v10 = "Indoor Skating Sports";
        }

        else
        {
          if (a1 == 19090)
          {
            return "Cross Country Skiing";
          }

          v7 = 19150;
          v8 = "DownhillSkiing";
          v9 = a1 == 90121;
          v10 = "Outdoor Hand Cycling";
        }

        goto LABEL_143;
      }

      if (a1 > 15732)
      {
        if (a1 <= 18049)
        {
          v7 = 15733;
          v8 = "Track and Field";
          v9 = a1 == 17150;
          v10 = "Indoor Walking";
        }

        else
        {
          if (a1 == 18050)
          {
            return "Outdoor Rowing";
          }

          v7 = 18100;
          v8 = "Paddle Sports";
          v9 = a1 == 18200;
          v10 = "Scuba Diving";
        }

        goto LABEL_143;
      }

      v25 = 15674;
      v37 = "Volleyball";
      if (a1 != 15711)
      {
        v37 = "frozen";
      }

      if (a1 == 15675)
      {
        v27 = "Tennis";
      }

      else
      {
        v27 = v37;
      }

      v28 = "Table Tennis";
      v29 = a1 == 15670;
      v30 = "Tai Chi";
      v31 = 15660;
LABEL_116:
      if (!v29)
      {
        v30 = "frozen";
      }

      if (a1 != v31)
      {
        v28 = v30;
      }

      if (a1 <= v25)
      {
        return v28;
      }

      else
      {
        return v27;
      }
    }

    if (a1 > 15329)
    {
      if (a1 <= 15559)
      {
        v25 = 15359;
        v34 = "Lacrosse";
        if (a1 != 15460)
        {
          v34 = "frozen";
        }

        if (a1 == 15360)
        {
          v27 = "Indoor Hockey";
        }

        else
        {
          v27 = v34;
        }

        v28 = "Handball";
        v29 = a1 == 15350;
        v30 = "Outdoor Hockey";
        v31 = 15330;
        goto LABEL_116;
      }

      if (a1 <= 15609)
      {
        v7 = 15560;
        v8 = "Rugby";
        v9 = a1 == 15592;
        v10 = "Outdoor Skating Sports";
      }

      else
      {
        if (a1 == 15610)
        {
          return "Outdoor Soccer";
        }

        v7 = 15620;
        v8 = "Softball";
        v9 = a1 == 15652;
        v10 = "Squash";
      }
    }

    else
    {
      if (a1 <= 15109)
      {
        v25 = 15054;
        v26 = "Boxing";
        if (a1 != 15100)
        {
          v26 = "frozen";
        }

        if (a1 == 15055)
        {
          v27 = "Basketball";
        }

        else
        {
          v27 = v26;
        }

        v28 = "Indoor Running";
        v29 = a1 == 15030;
        v30 = "Badminton";
        v31 = 12150;
        goto LABEL_116;
      }

      if (a1 <= 15229)
      {
        v7 = 15110;
        v8 = "Kickboxing";
        v9 = a1 == 15150;
        v10 = "Cricket";
      }

      else
      {
        if (a1 == 15230)
        {
          return "American Football";
        }

        v7 = 15250;
        v8 = "Disc Sports";
        v9 = a1 == 15255;
        v10 = "Golfing";
      }
    }

LABEL_143:
    if (!v9)
    {
      v10 = "frozen";
    }

    if (a1 == v7)
    {
      return v8;
    }

    else
    {
      return v10;
    }
  }

  if (a1 <= 65)
  {
    if (a1 > 10)
    {
      if (a1 > 60)
      {
        if (a1 > 63)
        {
          v3 = "Indoor Soccer";
          v4 = "Australian Football";
          if (a1 != 65)
          {
            v4 = "frozen";
          }

          v6 = a1 == 64;
          goto LABEL_131;
        }

        if ((a1 - 61) >= 2)
        {
          v20 = a1 == 63;
          v21 = "Multi Sport Transition";
          goto LABEL_137;
        }

        return "Unknown";
      }

      v11 = "vehicular in hand";
      v35 = "driving other";
      if (a1 != 56)
      {
        v35 = "frozen";
      }

      if (a1 != 52)
      {
        v11 = v35;
      }

      v14 = "in vehicle static";
      v36 = "walking slow";
      if (a1 != 41)
      {
        v36 = "frozen";
      }

      if (a1 != 11)
      {
        v14 = v36;
      }

      v16 = a1 <= 51;
    }

    else
    {
      if (a1 <= 5)
      {
        if (a1 > 2)
        {
          v3 = "moving";
          v4 = "walking";
          v5 = "driving";
          if (a1 != 5)
          {
            v5 = "frozen";
          }

          if (a1 != 4)
          {
            v4 = v5;
          }

          v6 = a1 == 3;
LABEL_131:
          if (v6)
          {
            return v3;
          }

          else
          {
            return v4;
          }
        }

        if (a1)
        {
          v20 = a1 == 2;
          v21 = "static";
LABEL_137:
          if (v20)
          {
            return v21;
          }

          return result;
        }

        return "Unknown";
      }

      v11 = "running";
      v22 = "moving coarse";
      v23 = "in vehicle frozen";
      if (a1 != 10)
      {
        v23 = "frozen";
      }

      if (a1 != 9)
      {
        v22 = v23;
      }

      if (a1 != 8)
      {
        v11 = v22;
      }

      v14 = "cycling";
      v24 = "semi-stationary";
      if (a1 != 7)
      {
        v24 = "frozen";
      }

      if (a1 != 6)
      {
        v14 = v24;
      }

      v16 = a1 <= 7;
    }

LABEL_107:
    if (v16)
    {
      return v14;
    }

    else
    {
      return v11;
    }
  }

  if (a1 > 2064)
  {
    if (a1 <= 2104)
    {
      v11 = "Rowing";
      v32 = "Cool Down";
      if (a1 != 2101)
      {
        v32 = "frozen";
      }

      if (a1 != 2071)
      {
        v11 = v32;
      }

      v14 = "Stair Climbing";
      v33 = "Jump Rope";
      if (a1 != 2068)
      {
        v33 = "frozen";
      }

      if (a1 != 2065)
      {
        v14 = v33;
      }

      v16 = a1 <= 2070;
    }

    else
    {
      v11 = "Dancing";
      v17 = "Step Training";
      v18 = "Pushing Wheelchair";
      if (a1 != 11805)
      {
        v18 = "frozen";
      }

      if (a1 != 3016)
      {
        v17 = v18;
      }

      if (a1 != 3015)
      {
        v11 = v17;
      }

      v14 = "Pilates";
      v19 = "Yoga";
      if (a1 != 2150)
      {
        v19 = "frozen";
      }

      if (a1 != 2105)
      {
        v14 = v19;
      }

      v16 = a1 <= 3014;
    }

    goto LABEL_107;
  }

  if (a1 > 2019)
  {
    v11 = "Core Training";
    v12 = "Elliptical";
    v13 = "Cross Training";
    if (a1 != 2061)
    {
      v13 = "frozen";
    }

    if (a1 != 2048)
    {
      v12 = v13;
    }

    if (a1 != 2024)
    {
      v11 = v12;
    }

    v14 = "Calisthenics";
    v15 = "Functional Strength Training";
    if (a1 != 2022)
    {
      v15 = "frozen";
    }

    if (a1 != 2020)
    {
      v14 = v15;
    }

    v16 = a1 <= 2023;
    goto LABEL_107;
  }

  if (a1 > 99)
  {
    v3 = "cycling leg";
    v4 = "Stationary Cycling";
    if (a1 != 2010)
    {
      v4 = "frozen";
    }

    v6 = a1 == 100;
    goto LABEL_131;
  }

  if (a1 == 66)
  {
    return "Pickleball";
  }

  if (a1 == 73)
  {
    return "Unknown";
  }

  return result;
}

const char *CLMotionActivity::activityConfidenceToString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_1E7534580[a1];
  }
}

void CLClientGetDistanceHighPrecision(_OWORD *a1, _OWORD *a2)
{
  if ((atomic_load_explicit(&qword_1ED71D208, memory_order_acquire) & 1) == 0)
  {
    v10 = a1;
    v11 = a2;
    v12 = __cxa_guard_acquire(&qword_1ED71D208);
    a2 = v11;
    v13 = v12;
    a1 = v10;
    if (v13)
    {
      qword_1ED71D250 = 0;
      unk_1ED71D258 = 0;
      xmmword_1ED71D240 = xmmword_19B7B7DA0;
      qword_1ED71D260 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1ED71D208);
      a1 = v10;
      a2 = v11;
    }
  }

  v2 = a1[7];
  v16[6] = a1[6];
  v16[7] = v2;
  v17[0] = a1[8];
  *(v17 + 12) = *(a1 + 140);
  v3 = a1[3];
  v16[2] = a1[2];
  v16[3] = v3;
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v5 = a1[1];
  v16[0] = *a1;
  v16[1] = v5;
  v6 = a2[7];
  v14[6] = a2[6];
  v14[7] = v6;
  v15[0] = a2[8];
  *(v15 + 12) = *(a2 + 140);
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[1];
  v14[0] = *a2;
  v14[1] = v9;
  sub_19B428558(&xmmword_1ED71D240, v16, v14);
}

void sub_19B428558(float64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 36);
  v5 = *(a3 + 36);
  if (v4 <= 0.0 || v5 <= 0.0)
  {
    if (v4 <= 0.0)
    {
      v7 = 0.0;
      if (v5 <= 0.0)
      {
        goto LABEL_11;
      }

      v6 = *(a3 + 28);
    }

    else
    {
      v6 = *(a2 + 28);
    }
  }

  else
  {
    v6 = (*(a2 + 28) + *(a3 + 28)) * 0.5;
  }

  v7 = -450.0;
  if (v6 >= -450.0)
  {
    v7 = v6;
    if (v6 > 1000000.0)
    {
      v7 = 1000000.0;
    }
  }

LABEL_11:
  v8 = *(a2 + 4);
  v9 = *(a2 + 12);
  v10 = *(a3 + 4);
  v11 = *(a3 + 12);
  if (sub_19B428690(v8, v9, v10, v11))
  {

    sub_19B725958(v8, v9, v10, v11);
  }

  else
  {

    sub_19B428714(a1, v8, v9, v10, v11, v7);
  }
}

BOOL sub_19B428690(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

void sub_19B428714(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = 0;
  v14 = 0;
  if (sub_19B428690(a2, a3, a4, a5) || !sub_19B4287F0(a1, &v14, &v13, &v12, a2, a3, a6, a4, a5, a6))
  {

    sub_19B725958(a2, a3, a4, a5);
  }
}

BOOL sub_19B4287F0(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_19B7B7DA0, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

void sub_19B428A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B428AFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void *sub_19B428B50(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B4C51DC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void *sub_19B428C08(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t sub_19B428F64(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  v4 = xmmword_19B7BD300;
  *(a1 + 8) = xmmword_19B7BD300;
  *(a1 + 24) = 0;
  if (a2)
  {
    v5 = objc_msgSend_copy(a2, a2, a3);
    v4 = xmmword_19B7BD300;
  }

  else
  {
    v5 = @"BundleIdNotAvailable";
  }

  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_19B428FCC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B72A364(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B4290B0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_19B446FB8(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_19B4291D8(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_19B446FB8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_19B4290B0(a1, &v9);
}

void sub_19B429360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19B4294F0(void *a1, const char *a2, int a3, char a4)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E34578;
  operator new();
}

os_log_t sub_19B429648()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429678()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4296A8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4296D8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429708()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429738()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429768()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429798()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4297C8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4297F8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429828()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429858()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429888()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4298B8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4298E8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429918()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429948()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429978()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4299A8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4299D8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A08()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A38()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A68()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A98()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429AC8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429AF8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429B28()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429B58()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429B88()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429BB8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429BE8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429C18()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429C48()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

void sub_19B429D10(CFTypeRef cf)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!qword_1ED71C900)
  {
    goto LABEL_27;
  }

  if (qword_1ED71C900 == cf)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Setting CLCommon's runloop after it was already established", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      *v12 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 0, "#Warning Setting CLCommon's runloop after it was already established", v12, 2, *v12);
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v2 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "#Warning Changing CLCommon's runloop after it was already established", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      *v12 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 0, "#Warning Changing CLCommon's runloop after it was already established", v12, 2, *v12);
LABEL_25:
      v7 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCommonSetRunLoop(CFRunLoopRef)", "CoreLocation: %s\n", v4);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

LABEL_27:
  if (cf)
  {
    CFRetain(cf);
  }

  if (qword_1ED71C900)
  {
    CFRelease(qword_1ED71C900);
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
  }

  v8 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v14 = cf;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "CLCommonSetRunLoop, %p", buf, 0xCu);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    *v12 = 134217984;
    *&v12[4] = cf;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "CLCommonSetRunLoop, %p", v12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCommonSetRunLoop(CFRunLoopRef)", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  qword_1ED71C900 = cf;
}

double sub_19B42A180(uint64_t a1, int a2, double *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v4 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v21) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unrecognized notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (result = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v18 = 67240192;
      LODWORD(v19) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E8, 17, "Unrecognized notification %{public}d", &v18, 8);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccelerometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }

      return 0.0;
    }
  }

  else
  {
    v11 = sub_19B4231B4(a1);
    result = 0.0;
    if (v11)
    {
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v12 = qword_1ED71C7E8;
      if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_INFO))
      {
        v13 = *a3;
        *buf = 134349056;
        v21 = v13;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "Setting batch interval to %{public}f", buf, 0xCu);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D8 != -1)
        {
          dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
        }

        v15 = *a3;
        v18 = 134349056;
        v19 = v15;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7E8, 1, "Setting batch interval to %{public}f", &v18, 12);
        v17 = v16;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccelerometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      sub_19B424A2C(*(a1 + 40), *a3);
      return *a3;
    }
  }

  return result;
}

void sub_19B42A4E4(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B42A51C(uint64_t a1)
{
  *a1 = &unk_1F0E31130;

  return a1;
}

uint64_t sub_19B42A568(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_19B42AD10(a1);
}

BOOL sub_19B42A614(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = sub_19B42A90C(a1);
  if (v4)
  {
    v6 = *(a1 + 64);
    v5 = *(a1 + 72);
    if (v6 == 0.0 || (v5 != 0.0 ? (v7 = v5 < v6) : (v7 = 0), v7))
    {
      v6 = *(a1 + 72);
    }

    v8 = objc_autoreleasePoolPush();
    (*(**(a1 + 80) + 16))(*(a1 + 80), @"GyroProperties", &unk_1F0E6A2C8);
    v9 = 0.0;
    if (v6 != 1.79769313e308)
    {
      v9 = v6;
    }

    v10 = rint(v9 * 1000000.0);
    if (v9 < 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    sub_19B4238F4(*(a1 + 80), v11);
    if ((a2 & 0x80000000) == 0)
    {
      v13 = *(a1 + 80);
      v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, a2 != 0);
      (*(*v13 + 16))(v13, @"GyroExtLevelTriggerSync", v14);
      *(a1 + 32) = a2;
    }

    objc_autoreleasePoolPop(v8);
    if (sub_19B42A90C(a1))
    {
      v15 = sub_19B424A2C(*(a1 + 80), 0.015);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v16 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v24 = v15;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "Setting gyro batch interval to: %{public}ld us", buf, 0xCu);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
        }

        v21 = 134349056;
        v22 = v15;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 1, "Setting gyro batch interval to: %{public}ld us", &v21, 12);
        v19 = v18;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLGyro::setGyroBatchInterval(const CFTimeInterval &)", "CoreLocation: %s\n", v18);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }
  }

  return v4;
}

BOOL sub_19B42A90C(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80) && (sub_19B423E34() & 2) != 0)
  {
    v2 = sub_19B42CAAC();
    v4 = 0x90000FF00;
    v5 = 0;
    sub_19B42C428(v2);
  }

  return *(a1 + 80) != 0;
}

void *sub_19B42AC20(void *a1)
{
  *a1 = &unk_1F0E32BF8;
  a1[20] = &unk_1F0E32728;
  sub_19B42A568(a1 + 23);
  a1[11] = &unk_1F0E32728;
  sub_19B42A568(a1 + 14);
  a1[2] = &unk_1F0E32728;
  sub_19B42A568(a1 + 5);
  return a1;
}

void sub_19B42ACD8(void *a1)
{
  sub_19B42AC20(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B42AD10(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_19B42AD60(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B42AD98()
{
  if (qword_1ED71D278 != -1)
  {
    dispatch_once(&qword_1ED71D278, &unk_1F0E29520);
  }

  return qword_1ED71D270;
}

void sub_19B42ADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  IOHIDEventGetVendorDefinedData();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
  }

  v4 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Empty payload", buf, 2u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 17, "Empty payload", v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLIspDataVisitor::onCMAData(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

uint64_t sub_19B42AFB0(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = 0;
  switch(*a2)
  {
    case 1:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 16))(a1);
      return 1;
    case 2:
      if (a3 != 72)
      {
        return 0;
      }

      (*(*a1 + 24))(a1);
      return 1;
    case 3:
      if (a3 != 105)
      {
        return 0;
      }

      (*(*a1 + 32))(a1);
      return 1;
    case 4:
      if (a3 != 64)
      {
        return 0;
      }

      (*(*a1 + 40))(a1);
      return 1;
    case 5:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 56))(a1);
      return 1;
    case 6:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 64))(a1);
      return 1;
    case 7:
      if (a3 != 212)
      {
        return 0;
      }

      (*(*a1 + 72))(a1);
      return 1;
    case 8:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 80))(a1);
      return 1;
    case 9:
      if (a3 != 212)
      {
        return 0;
      }

      (*(*a1 + 88))(a1);
      return 1;
    case 0xA:
      if (a3 != 193)
      {
        return 0;
      }

      (*(*a1 + 272))(a1);
      return 1;
    case 0xC:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 96))(a1);
      return 1;
    case 0xD:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 104))(a1);
      return 1;
    case 0xE:
      if (a3 != 55)
      {
        return 0;
      }

      (*(*a1 + 112))(a1);
      return 1;
    case 0xF:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 120))(a1);
      return 1;
    case 0x11:
      if (a3 != 36)
      {
        return 0;
      }

      (*(*a1 + 128))(a1);
      return 1;
    case 0x14:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 152))(a1);
      return 1;
    case 0x15:
      if (a3 != 48)
      {
        return 0;
      }

      (*(*a1 + 160))(a1);
      return 1;
    case 0x17:
      if (a3 != 21)
      {
        return 0;
      }

      (*(*a1 + 168))(a1);
      return 1;
    case 0x18:
      if (a3 != 89)
      {
        return 0;
      }

      (*(*a1 + 176))(a1);
      return 1;
    case 0x19:
      if (a3 != 218)
      {
        return 0;
      }

      (*(*a1 + 192))(a1);
      return 1;
    case 0x1B:
      if (a3 != 132)
      {
        return 0;
      }

      (*(*a1 + 200))(a1);
      return 1;
    case 0x1C:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 48))(a1);
      return 1;
    case 0x1D:
      if (a3 != 32)
      {
        return 0;
      }

      (*(*a1 + 136))(a1);
      return 1;
    case 0x1F:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 184))(a1);
      return 1;
    case 0x20:
      if (a3 != 157)
      {
        return 0;
      }

      (*(*a1 + 208))(a1);
      return 1;
    case 0x21:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 216))(a1);
      return 1;
    case 0x22:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 224))(a1);
      return 1;
    case 0x23:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 232))(a1);
      return 1;
    case 0x24:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 248))(a1);
      return 1;
    case 0x25:
      if (a3 != 21)
      {
        return 0;
      }

      (*(*a1 + 256))(a1);
      return 1;
    case 0x26:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 264))(a1);
      return 1;
    case 0x27:
      if (a3 != 205)
      {
        return 0;
      }

      (*(*a1 + 280))(a1);
      return 1;
    case 0x28:
      if (a3 != 25)
      {
        return 0;
      }

      (*(*a1 + 288))(a1);
      return 1;
    case 0x29:
      if (a3 != 69)
      {
        return 0;
      }

      (*(*a1 + 296))(a1);
      return 1;
    case 0x2B:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 240))(a1);
      return 1;
    case 0x2C:
      if (a3 != 29)
      {
        return 0;
      }

      (*(*a1 + 312))(a1);
      return 1;
    case 0x2D:
      if (a3 != 37)
      {
        return 0;
      }

      (*(*a1 + 320))(a1);
      return 1;
    case 0x2E:
      if (a3 != 45)
      {
        return 0;
      }

      (*(*a1 + 328))(a1);
      return 1;
    case 0x2F:
      if (a3 != 113)
      {
        return 0;
      }

      (*(*a1 + 336))(a1);
      return 1;
    case 0x30:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 304))(a1);
      return 1;
    case 0x31:
      if (a3 != 68)
      {
        return 0;
      }

      v4 = *(*a1 + 352);
      goto LABEL_164;
    case 0x32:
      if (a3 != 43)
      {
        return 0;
      }

      (*(*a1 + 360))(a1);
      return 1;
    case 0x33:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 368))(a1);
      return 1;
    case 0x34:
      if (a3 != 49)
      {
        return 0;
      }

      (*(*a1 + 384))(a1);
      return 1;
    case 0x35:
      if (a3 != 20)
      {
        return 0;
      }

      (*(*a1 + 392))(a1);
      return 1;
    case 0x36:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 400))(a1);
      return 1;
    case 0x37:
      if (a3 != 30)
      {
        return 0;
      }

      (*(*a1 + 408))(a1);
      return 1;
    case 0x38:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 416))(a1);
      return 1;
    case 0x39:
      if (a3 != 57)
      {
        return 0;
      }

      (*(*a1 + 344))(a1);
      return 1;
    case 0x3A:
      if (a3 != 232)
      {
        return 0;
      }

      (*(*a1 + 376))(a1);
      return 1;
    case 0x3B:
      if (a3 != 44)
      {
        return 0;
      }

      (*(*a1 + 472))(a1);
      return 1;
    case 0x3C:
      if (a3 != 10)
      {
        return 0;
      }

      (*(*a1 + 488))(a1);
      return 1;
    case 0x40:
      if (a3 != 29)
      {
        return 0;
      }

      (*(*a1 + 424))(a1);
      return 1;
    case 0x41:
      if (a3 != 9)
      {
        return 0;
      }

      (*(*a1 + 440))(a1);
      return 1;
    case 0x42:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 448))(a1);
      return 1;
    case 0x43:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 496))(a1);
      return 1;
    case 0x44:
      if (a3 != 76)
      {
        return 0;
      }

      (*(*a1 + 456))(a1);
      return 1;
    case 0x45:
      if (a3 != 39)
      {
        return 0;
      }

      (*(*a1 + 504))(a1);
      return 1;
    case 0x47:
      if (a3 != 45)
      {
        return 0;
      }

      (*(*a1 + 512))(a1);
      return 1;
    case 0x48:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 528))(a1);
      return 1;
    case 0x49:
      if (a3 != 83)
      {
        return 0;
      }

      (*(*a1 + 520))(a1);
      return 1;
    case 0x4A:
      if (a3 != 51)
      {
        return 0;
      }

      v4 = *(*a1 + 544);
LABEL_164:
      v4();
      return 1;
    case 0x4B:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 552))(a1);
      return 1;
    case 0x4C:
      if (a3 != 10)
      {
        return 0;
      }

      (*(*a1 + 536))(a1);
      return 1;
    case 0x4D:
      if (a3 != 13)
      {
        return 0;
      }

      (*(*a1 + 480))(a1);
      return 1;
    case 0x4E:
      if (a3 != 58)
      {
        return 0;
      }

      (*(*a1 + 464))(a1);
      return 1;
    case 0x4F:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 560))(a1);
      return 1;
    case 0x50:
      if (a3 != 18)
      {
        return 0;
      }

      (*(*a1 + 568))(a1);
      return 1;
    case 0x52:
      if (a3 != 26)
      {
        return 0;
      }

      (*(*a1 + 576))(a1);
      return 1;
    case 0x53:
      if (a3 != 22)
      {
        return 0;
      }

      (*(*a1 + 584))(a1);
      return 1;
    case 0x54:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 592))(a1);
      return 1;
    case 0x55:
      if (a3 != 20)
      {
        return 0;
      }

      (*(*a1 + 600))(a1);
      return 1;
    case 0x56:
      if (a3 != 113)
      {
        return 0;
      }

      (*(*a1 + 608))(a1);
      return 1;
    case 0x57:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 616))(a1);
      return 1;
    case 0x58:
      if (a3 != 61)
      {
        return 0;
      }

      (*(*a1 + 624))(a1);
      return 1;
    case 0x59:
      if (a3 != 47)
      {
        return 0;
      }

      (*(*a1 + 432))(a1);
      return 1;
    case 0x5A:
      if (a3 != 222)
      {
        return 0;
      }

      (*(*a1 + 632))(a1);
      return 1;
    case 0x5B:
      if (a3 != 48)
      {
        return 0;
      }

      (*(*a1 + 640))(a1);
      return 1;
    case 0x5C:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 648))(a1);
      return 1;
    case 0x5D:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 656))(a1);
      return 1;
    case 0x5E:
      if (a3 != 60)
      {
        return 0;
      }

      (*(*a1 + 664))(a1);
      return 1;
    case 0x5F:
      if (a3 != 74)
      {
        return 0;
      }

      (*(*a1 + 672))(a1);
      return 1;
    case 0x60:
      if (a3 != 13)
      {
        return 0;
      }

      (*(*a1 + 680))(a1);
      return 1;
    case 0xB0:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 144))(a1);
      return 1;
    default:
      return v3;
  }
}

void sub_19B42C49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B42C54C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x19EAE71C0]();

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

BOOL sub_19B42C59C()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 1;
  if ((dword_1ED71C97C - 184) > 0x38 || ((1 << (dword_1ED71C97C + 72)) & 0x10000000000003FLL) == 0)
  {
    return (dword_1ED71C97C - 174) < 2;
  }

  return result;
}

void *sub_19B42C644(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Uiapplication.isa);
  result = objc_msgSend_performSelector_(v2, v3, sel_sharedApplication);
  if (result)
  {
    result = objc_msgSend_performSelector_(result, v5, sel_applicationState);
    *(*(a1 + 32) + 632) = result == 0;
  }

  return result;
}

uint64_t sub_19B42C69C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E32D70;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  if (sub_19B421620())
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v2 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLIspDataVisitor] setting up oscar callback", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
      }

      v16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIspDataVisitor] setting up oscar callback", v16, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLIspDataVisitor::CLIspDataVisitor()", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    v6 = sub_19B420D84();
    v7 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v8 = sub_19B62FD78;
LABEL_29:
    v7[2] = v8;
    v7[3] = &unk_1E75327D8;
    v7[4] = a1;
    sub_19B420C9C(v6, v7);
    return a1;
  }

  if ((sub_19B421620() & 2) != 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[CLIspDataVisitor] setting up devmotion3 callback", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
      }

      v16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIspDataVisitor] setting up devmotion3 callback", v16, 2);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLIspDataVisitor::CLIspDataVisitor()", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v6 = sub_19B420D84();
    v7 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v8 = sub_19B63019C;
    goto LABEL_29;
  }

  return a1;
}

void sub_19B42CA6C(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B42CAAC()
{
  if (qword_1ED71D7A8 != -1)
  {
    dispatch_once(&qword_1ED71D7A8, &unk_1F0E2A5C0);
  }

  return qword_1ED71D7A0;
}

void *sub_19B42CAF4(void *a1, unsigned int *a2, unsigned int *a3, char *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2ACD0;
  sub_19B42CB60((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

uint64_t sub_19B42CB60(uint64_t a1, int a2, int a3, char a4, uint64_t a5)
{
  *a1 = &unk_1F0E31168;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 20) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a5;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = objc_opt_new();
  return a1;
}

void sub_19B42CBE8(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v27 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        v37 = 2082;
        v38 = "assert";
        v39 = 2081;
        v40 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] addDevice should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }
      }

      v28 = off_1ED71C838;
      if (os_signpost_enabled(off_1ED71C838))
      {
        *buf = 68289539;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        v37 = 2082;
        v38 = "assert";
        v39 = 2081;
        v40 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] addDevice should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] addDevice should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }
      }

      v29 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        v37 = 2082;
        v38 = "assert";
        v39 = 2081;
        v40 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
        _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] addDevice should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 86, "addDevice");
      __break(1u);
LABEL_42:
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v5 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*a2 + 16);
    v7 = *(*a2 + 20);
    *buf = 67240448;
    v34 = v7;
    v35 = 1026;
    LODWORD(v36) = v6;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Adding new Device with usage pair {%{public}d, %{public}d}", buf, 0xEu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v9 = *(*a2 + 16);
    v10 = *(*a2 + 20);
    v30[0] = 67240448;
    v30[1] = v10;
    v31 = 1026;
    v32 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Adding new Device with usage pair {%{public}d, %{public}d}", v30, 14);
    v12 = v11;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::addDevice(std::shared_ptr<CLIoHidInterface::Device>)", "CoreLocation: %s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v13 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v16 = a1[2];
  v15 = a1[3];
  if (v16 >= v15)
  {
    v18 = a1[1];
    v19 = v16 - v18;
    v20 = (v16 - v18) >> 4;
    v21 = v20 + 1;
    if ((v20 + 1) >> 60)
    {
      sub_19B5BE690();
    }

    v22 = v15 - v18;
    if (v22 >> 3 > v21)
    {
      v21 = v22 >> 3;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF0)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 60))
      {
        operator new();
      }

      sub_19B4C5080();
    }

    v24 = v20;
    v25 = (16 * v20);
    v26 = &v25[-v24];
    *v25 = v13;
    v17 = v25 + 1;
    memcpy(v26, v18, v19);
    a1[1] = v26;
    a1[2] = v17;
    a1[3] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v16 = v13;
    *(v16 + 1) = v14;
    v17 = v16 + 16;
  }

  a1[2] = v17;
}

void sub_19B42D0E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B42D100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v10;
      v24 = 1026;
      v25 = v11;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v12 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v13;
      v24 = 1026;
      v25 = v14;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 16);
      v16 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v16;
      v24 = 1026;
      v25 = v17;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 519, "setCallback");
  }

  sub_19B420FC0(*(a1 + 40));
  v7 = *(a1 + 56) == 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  if ((((a2 != 0) ^ v7) & 1) == 0)
  {
    v8 = *(a1 + 40);

    sub_19B42D440(v8);
  }
}

void sub_19B42D440(NSObject *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v35 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v45 = 0;
      *&v45[4] = 2082;
      *&v45[6] = "";
      v46 = 2082;
      v47 = "assert";
      v48 = 2081;
      v49 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setMatchingForDevices should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v36 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v45 = 0;
      *&v45[4] = 2082;
      *&v45[6] = "";
      v46 = 2082;
      v47 = "assert";
      v48 = 2081;
      v49 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setMatchingForDevices should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] setMatchingForDevices should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v45 = 0;
      *&v45[4] = 2082;
      *&v45[6] = "";
      v46 = 2082;
      v47 = "assert";
      v48 = 2081;
      v49 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setMatchingForDevices should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 281, "setMatchingForDevices");
    __break(1u);
LABEL_65:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_30:
    v26 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *v45 = v1;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Setting matching multiple for %{public}lu events", buf, 0xCu);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v42 = 134349056;
      *v43 = v1;
      LODWORD(v37) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Setting matching multiple for %{public}lu events", &v42, v37);
      v30 = v29;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::setMatchingForDevices()", "CoreLocation: %s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v28, v39);
    IOHIDEventSystemClientSetMatchingMultiple();
    objc_autoreleasePoolPop(context);
    sub_19B42DD0C(a1);
    sub_19B42E770(a1, 0);
    return;
  }

  context = objc_autoreleasePoolPush();
  v4 = sub_19B421620();
  v39 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, (a1[2].isa - a1[1].isa) >> 4);
  isa = a1[1].isa;
  v6 = a1[2].isa;
  if (isa == v6)
  {
    v1 = 0;
LABEL_29:
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

  v1 = 0;
  while (1)
  {
    v8 = *(isa + 1);
    if (v8)
    {
      break;
    }

LABEL_26:
    isa = (isa + 16);
    if (isa == v6)
    {
      goto LABEL_29;
    }
  }

  v9 = *isa;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
LABEL_25:
    std::__shared_weak_count::__release_weak(v8);
    goto LABEL_26;
  }

  v11 = v10;
  if (!v9)
  {
LABEL_24:
    sub_19B41FFEC(v11);
    goto LABEL_25;
  }

  if ((v4 & 0x1000000000000) != 0 || *(v9 + 20) != 65280 || *(v9 + 16) != 8)
  {
    if (*(v9 + 56))
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v12 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(v9 + 16);
        v13 = *(v9 + 20);
        *buf = 67240448;
        *v45 = v13;
        *&v45[4] = 1026;
        *&v45[6] = v14;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Adding match entry for usage pair {%{public}d, %{public}d}", buf, 0xEu);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v18 = *(v9 + 16);
        v17 = *(v9 + 20);
        v42 = 67240448;
        *v43 = v17;
        *&v43[4] = 1026;
        *&v43[6] = v18;
        LODWORD(v37) = 14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Adding match entry for usage pair {%{public}d, %{public}d}", &v42, v37);
        v20 = v19;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::setMatchingForDevices()", "CoreLocation: %s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      v40[0] = @"PrimaryUsagePage";
      v21 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, *(v9 + 20));
      v40[1] = @"PrimaryUsage";
      v41[0] = v21;
      v41[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v22, *(v9 + 16));
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v41, v40, 2);
      objc_msgSend_setObject_atIndexedSubscript_(v39, v25, v24, v1++);
    }

    goto LABEL_24;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v31 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Prox: remove set matching multiple", buf, 2u);
  }

  v32 = sub_19B420058();
  if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v42) = 0;
    LODWORD(v37) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "[CLIoHidInterface] Prox: remove set matching multiple", &v42, v37);
    v34 = v33;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::setMatchingForDevices()", "CoreLocation: %s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  IOHIDEventSystemClientSetMatchingMultiple();
  sub_19B42DD0C(a1);
  sub_19B42E770(a1, 0);
  sub_19B41FFEC(v11);
  std::__shared_weak_count::__release_weak(v8);
  objc_autoreleasePoolPop(context);
}

void sub_19B42DCDC(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void sub_19B42DD0C(NSObject *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v48 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v66 = 0;
      *&v66[4] = 2082;
      *&v66[6] = "";
      *&v66[14] = 2082;
      *&v66[16] = "assert";
      *&v66[24] = 2081;
      v67 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v49 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v66 = 0;
      *&v66[4] = 2082;
      *&v66[6] = "";
      *&v66[14] = 2082;
      *&v66[16] = "assert";
      *&v66[24] = 2081;
      v67 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v66 = 0;
      *&v66[4] = 2082;
      *&v66[6] = "";
      *&v66[14] = 2082;
      *&v66[16] = "assert";
      *&v66[24] = 2081;
      v67 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 187, "invalidateDeviceServiceRefs");
    __break(1u);
  }

  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_3:
  v3 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Invalidating hid service refs", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v68[0]) = 0;
    LODWORD(v50) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "[CLIoHidInterface] Invalidating hid service refs", v68, v50);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::invalidateDeviceServiceRefs()", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  isa = a1[1].isa;
  v7 = a1[2].isa;
  if (isa != v7)
  {
    v51 = v7;
    do
    {
      v9 = *(isa + 1);
      if (v9)
      {
        v10 = *isa;
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v54 = v9;
        v53 = std::__shared_weak_count::lock(v9);
        if (v53)
        {
          if (v10)
          {
            v52 = isa;
            (*(*v10 + 48))(v10);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            v11 = off_1ED71C838;
            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
            {
              v13 = *(v10 + 16);
              v12 = *(v10 + 20);
              v14 = *(v10 + 56) != 0;
              v15 = *(v10 + 24);
              *buf = 67240961;
              *v66 = v12;
              *&v66[4] = 1026;
              *&v66[6] = v13;
              *&v66[10] = 1026;
              *&v66[12] = v14;
              *&v66[16] = 2049;
              *&v66[18] = v15;
              _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Device,hidUsagePage,%{public}d,hidUsage,%{public}d,hasCallback,%{public}d,serviceRef,%{private}p", buf, 0x1Eu);
            }

            v16 = sub_19B420058();
            if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C830 != -1)
              {
                dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
              }

              v18 = *(v10 + 16);
              v17 = *(v10 + 20);
              v19 = *(v10 + 56) != 0;
              v20 = *(v10 + 24);
              v68[0] = 67240961;
              v68[1] = v17;
              v69 = 1026;
              v70 = v18;
              v71 = 1026;
              v72 = v19;
              v73 = 2049;
              v74 = v20;
              LODWORD(v50) = 30;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Device,hidUsagePage,%{public}d,hidUsage,%{public}d,hasCallback,%{public}d,serviceRef,%{private}p", v68, v50);
              v22 = v21;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::print() const", "CoreLocation: %s\n", v21);
              if (v22 != buf)
              {
                free(v22);
              }
            }

            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v24 = *(v10 + 168);
              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v23, &v55, v68, 16);
              if (v26)
              {
                v27 = *v56;
                do
                {
                  v28 = 0;
                  do
                  {
                    if (*v56 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v55 + 1) + 8 * v28);
                    v30 = objc_msgSend_objectForKeyedSubscript_(*(v10 + 168), v25, v29);
                    if (qword_1ED71C830 != -1)
                    {
                      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                    }

                    v31 = off_1ED71C838;
                    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
                    {
                      v34 = objc_msgSend_value(v30, v32, v33);
                      v37 = objc_msgSend_dirty(v30, v35, v36);
                      *buf = 138543874;
                      *v66 = v29;
                      *&v66[8] = 2114;
                      *&v66[10] = v34;
                      *&v66[18] = 1026;
                      *&v66[20] = v37;
                      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] \tProperty: %{public}@ = %{public}@,dirty,%{public}d", buf, 0x1Cu);
                    }

                    v38 = sub_19B420058();
                    if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1ED71C830 != -1)
                      {
                        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                      }

                      v41 = off_1ED71C838;
                      v42 = objc_msgSend_value(v30, v39, v40);
                      v45 = objc_msgSend_dirty(v30, v43, v44);
                      v59 = 138543874;
                      v60 = v29;
                      v61 = 2114;
                      v62 = v42;
                      v63 = 1026;
                      v64 = v45;
                      LODWORD(v50) = 28;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v41, 2, "[CLIoHidInterface] \tProperty: %{public}@ = %{public}@,dirty,%{public}d", &v59, v50);
                      v47 = v46;
                      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::printProperties() const", "CoreLocation: %s\n", v46);
                      if (v47 != buf)
                      {
                        free(v47);
                      }
                    }

                    ++v28;
                  }

                  while (v26 != v28);
                  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v55, v68, 16);
                }

                while (v26);
              }
            }

            isa = v52;
            v7 = v51;
          }

          sub_19B41FFEC(v53);
        }

        std::__shared_weak_count::__release_weak(v54);
      }

      isa = (isa + 16);
    }

    while (isa != v7);
  }
}

void sub_19B42E5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, std::__shared_weak_count *a18)
{
  sub_19B41FFEC(a17);
  std::__shared_weak_count::__release_weak(a18);
  _Unwind_Resume(a1);
}

void *sub_19B42E628(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
    sub_19B42E734(a1);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 168);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, a2, &v12, v16, 16);
  if (result)
  {
    v7 = result;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 168), v6, *(*(&v12 + 1) + 8 * v9));
        objc_msgSend_setDirty_(v10, v11, 1);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v12, v16, 16);
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_19B42E734(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    IOHIDDeviceClose(v2, 0);
    CFRelease(*(a1 + 32));
    *(a1 + 32) = 0;
  }
}

void sub_19B42E770(uint64_t a1, __IOHIDServiceClient *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v35 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v57 = 0;
      *&v57[4] = 2082;
      *&v57[6] = "";
      v58 = 2082;
      *v59 = "assert";
      *&v59[8] = 2081;
      v60 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v36 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v57 = 0;
      *&v57[4] = 2082;
      *&v57[6] = "";
      v58 = 2082;
      *v59 = "assert";
      *&v59[8] = 2081;
      v60 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v37 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v57 = 0;
      *&v57[4] = 2082;
      *&v57[6] = "";
      v58 = 2082;
      *v59 = "assert";
      *&v59[8] = 2081;
      v60 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 138, "refreshDeviceServiceRefs");
    __break(1u);
  }

  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_3:
  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Refreshing service refs", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v47) = 0;
    LODWORD(v38) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "[CLIoHidInterface] Refreshing service refs", &v47, v38);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::refreshDeviceServiceRefs(const IOHIDServiceClientRef)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  obj = IOHIDEventSystemClientCopyServices(*(a1 + 40));
  if (obj)
  {
    context = objc_autoreleasePoolPush();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v43, v55, 16);
    if (v9)
    {
      v41 = *v44;
      do
      {
        v10 = 0;
        do
        {
          if (*v44 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v43 + 1) + 8 * v10);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
          {
            v13 = IOHIDServiceClientCopyProperty(v11, @"PrimaryUsagePage");
            v16 = objc_msgSend_intValue(v13, v14, v15);
            v17 = IOHIDServiceClientCopyProperty(v11, @"PrimaryUsage");
            v20 = objc_msgSend_intValue(v17, v18, v19);
            v21 = IOHIDServiceClientCopyProperty(v11, @"LocationID");
            v24 = objc_msgSend_intValue(v21, v22, v23);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            v25 = off_1ED71C838;
            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134284289;
              *v57 = v11;
              *&v57[8] = 1026;
              *&v57[10] = v16;
              v58 = 1026;
              *v59 = v20;
              *&v59[4] = 1026;
              *&v59[6] = v24;
              _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Check service ref %{private}p with usage pair {%{public}d, %{public}d} locationID %{public}d as a potential match", buf, 0x1Eu);
            }

            v26 = sub_19B420058();
            if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C830 != -1)
              {
                dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
              }

              v47 = 134284289;
              v48 = v11;
              v49 = 1026;
              v50 = v16;
              v51 = 1026;
              v52 = v20;
              v53 = 1026;
              v54 = v24;
              LODWORD(v38) = 30;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] Check service ref %{private}p with usage pair {%{public}d, %{public}d} locationID %{public}d as a potential match", &v47, v38);
              v28 = v27;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::refreshDeviceServiceRefs(const IOHIDServiceClientRef)", "CoreLocation: %s\n", v27);
              if (v28 != buf)
              {
                free(v28);
              }
            }
          }

          if (v11 != a2)
          {
            v30 = *(a1 + 8);
            v29 = *(a1 + 16);
            while (v30 != v29)
            {
              v31 = *(v30 + 8);
              if (v31)
              {
                v32 = *v30;
                atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v33 = std::__shared_weak_count::lock(v31);
                if (v33)
                {
                  v34 = v33;
                  if (v32 && (sub_19B42F570(v32, v11) & 1) != 0)
                  {
                    sub_19B42F5C8(v32, v11, 0);
                    if (v32[11])
                    {
                      IOHIDServiceClientRegisterRemovalCallback();
                    }
                  }

                  sub_19B41FFEC(v34);
                }

                std::__shared_weak_count::__release_weak(v31);
              }

              v30 += 16;
            }
          }

          ++v10;
        }

        while (v10 != v9);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v43, v55, 16);
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
  }
}

void sub_19B42EF38(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B42EF5C(__IOHIDServiceClient *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, a2, &v27, v43, 16);
  if (!v4)
  {
    return 1;
  }

  v6 = v4;
  v7 = *v28;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(a2);
      }

      v9 = *(*(&v27 + 1) + 8 * i);
      v10 = objc_msgSend_objectForKeyedSubscript_(a2, v5, v9);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v11 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543875;
        v38 = v9;
        v39 = 2113;
        v40 = v10;
        v41 = 2049;
        v42 = a1;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Checking matching property %{public}@ = %{private}@ for service ref %{private}p", buf, 0x20u);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v31 = 138543875;
        v32 = v9;
        v33 = 2113;
        v34 = v10;
        v35 = 2049;
        v36 = a1;
        LODWORD(v26) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Checking matching property %{public}@ = %{private}@ for service ref %{private}p", &v31, v26);
        v14 = v13;
        sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLIoHidInterface::Device::serviceMatchesProperties(IOHIDServiceClientRef, NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      v15 = IOHIDServiceClientCopyProperty(a1, v9);
      if (!v15)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v18 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543875;
          v38 = v9;
          v39 = 2114;
          v40 = v10;
          v41 = 2049;
          v42 = a1;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Invalid matching property %{public}@ = %{public}@ for service ref %{private}p", buf, 0x20u);
        }

        v19 = sub_19B420058();
        if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v31 = 138543875;
          v32 = v9;
          v33 = 2114;
          v34 = v10;
          v35 = 2049;
          v36 = a1;
          LODWORD(v26) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Invalid matching property %{public}@ = %{public}@ for service ref %{private}p", &v31, v26);
          v21 = v20;
          sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLIoHidInterface::Device::serviceMatchesProperties(IOHIDServiceClientRef, NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v20);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        return 0;
      }

      v16 = v15;
      if (!CFEqual(v15, v10))
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v22 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543875;
          v38 = v9;
          v39 = 2114;
          v40 = v16;
          v41 = 2049;
          v42 = a1;
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Property mismatch! %{public}@ = %{public}@ for service ref %{private}p", buf, 0x20u);
        }

        v23 = sub_19B420058();
        if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v31 = 138543875;
          v32 = v9;
          v33 = 2114;
          v34 = v16;
          v35 = 2049;
          v36 = a1;
          LODWORD(v26) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Property mismatch! %{public}@ = %{public}@ for service ref %{private}p", &v31, v26);
          v25 = v24;
          sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLIoHidInterface::Device::serviceMatchesProperties(IOHIDServiceClientRef, NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v24);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        CFRelease(v16);
        return 0;
      }

      CFRelease(v16);
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v5, &v27, v43, 16);
    result = 1;
    if (v6)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t sub_19B42F570(uint64_t a1, IOHIDServiceClientRef service)
{
  result = IOHIDServiceClientConformsTo(service, *(a1 + 20), *(a1 + 16));
  if (result)
  {
    v5 = *(a1 + 160);

    return sub_19B42EF5C(service, v5);
  }

  return result;
}

void sub_19B42F5C8(void *a1, char *a2, int a3)
{
  LODWORD(v3) = a3;
  v52 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v35 = off_1ED71C838;
    p_vtable = "sE";
    a2 = "assert";
    v3 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v50 = 2082;
      *v51 = "";
      *&v51[8] = 2082;
      *&v51[10] = "assert";
      *&v51[18] = 2081;
      *&v51[20] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v36 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v50 = 2082;
      *v51 = "";
      *&v51[8] = 2082;
      *&v51[10] = "assert";
      *&v51[18] = 2081;
      *&v51[20] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] Should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v50 = 2082;
      *v51 = "";
      *&v51[8] = 2082;
      *&v51[10] = "assert";
      *&v51[18] = 2081;
      *&v51[20] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 732, "updateServiceRef");
    goto LABEL_65;
  }

  v7 = *(a1 + 3);
  if (v7 == a2)
  {
    return;
  }

  if (!v7)
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_32:
      v23 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 4);
        v24 = *(a1 + 5);
        v26 = *(a1 + 20);
        *buf = 67240963;
        *&buf[4] = v24;
        v50 = 1026;
        *v51 = v25;
        *&v51[4] = 2049;
        *&v51[6] = a2;
        *&v51[14] = 2113;
        *&v51[16] = v26;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service ref with usage pair {%{public}d, %{public}d} is %{private}p with matching properties %{private}@", buf, 0x22u);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_vtable[262] != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v29 = *(a1 + 4);
        v28 = *(a1 + 5);
        v30 = *(a1 + 20);
        v39 = 67240963;
        v40 = v28;
        v41 = 1026;
        v42 = v29;
        v43 = 2049;
        v44 = a2;
        v45 = 2113;
        v46 = v30;
        LODWORD(v37) = 34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Service ref with usage pair {%{public}d, %{public}d} is %{private}p with matching properties %{private}@", &v39, v37);
        v32 = v31;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::updateServiceRef(IOHIDServiceClientRef, BOOL)", "CoreLocation: %s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      goto LABEL_42;
    }

LABEL_65:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_32;
  }

  if (!v3)
  {
    return;
  }

  if (*(a1 + 48) == 1 && (sub_19B4217E0(*(a1 + 3), @"ReportInterval", &unk_1F0E6A6C0) & 1) == 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] Failed to stop streaming from the old service before switching to the new one", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      LOWORD(v39) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "[CLIoHidInterface] Failed to stop streaming from the old service before switching to the new one", &v39, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::Device::updateServiceRef(IOHIDServiceClientRef, BOOL)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v12 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 4);
    v13 = *(a1 + 5);
    v15 = *(a1 + 20);
    *buf = 67241219;
    *&buf[4] = v13;
    v50 = 1026;
    *v51 = v14;
    *&v51[4] = 2049;
    *&v51[6] = v7;
    *&v51[14] = 2049;
    *&v51[16] = a2;
    *&v51[24] = 2113;
    *&v51[26] = v15;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Device,usagePage,%{public}d,usage,%{public}d,hidserviceref,old,%{private}p,new,%{private}p,matchingProperties,%{private}@", buf, 0x2Cu);
  }

  v16 = sub_19B420058();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v18 = *(a1 + 4);
    v17 = *(a1 + 5);
    v19 = *(a1 + 20);
    v39 = 67241219;
    v40 = v17;
    v41 = 1026;
    v42 = v18;
    v43 = 2049;
    v44 = v7;
    v45 = 2049;
    v46 = a2;
    v47 = 2113;
    v48 = v19;
    LODWORD(v37) = 44;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] Device,usagePage,%{public}d,usage,%{public}d,hidserviceref,old,%{private}p,new,%{private}p,matchingProperties,%{private}@", &v39, v37);
    v21 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::updateServiceRef(IOHIDServiceClientRef, BOOL)", "CoreLocation: %s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  (*(*a1 + 48))(a1);
LABEL_42:
  *(a1 + 3) = CFRetain(a2);
  sub_19B42E734(a1);
  if (v3)
  {
    sub_19B421D14(*(a1 + 5));
  }

  if (*(a1 + 15))
  {
    *buf = 0;
    RegistryID = IOHIDServiceClientGetRegistryID(a2);
    CFNumberGetValue(RegistryID, kCFNumberSInt64Type, buf);
    if (*buf != *(a1 + 1))
    {
      (*(a1 + 15))(*(a1 + 16));
    }
  }

  if (*(a1 + 9) && ((v3 & 1) != 0 || *(a1 + 48) == 1))
  {
    v34 = sub_19B420D84();
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_19B782F70;
    v38[3] = &unk_1E75327D8;
    v38[4] = a1;
    sub_19B421668(v34, v38);
  }
}

uint64_t sub_19B42FE48(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_timeSyncMachTimeStamp_oscarTimeStamp_, a1);
}

void sub_19B4303F0(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B4334DC;
    block[3] = &unk_1E75327D8;
    block[4] = a1;
    if (*v2 != -1)
    {
      dispatch_once(v2, block);
    }

    *(a1 + 32) = 1;
  }
}

uint64_t sub_19B430490(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v39 = objc_autoreleasePoolPush();
  v2 = _CFGetProgname();
  v3 = strcmp(*v2, "locationd") == 0;
  *(qword_1ED71C908 + 16) = v3;
  pthread_setname_np("com.apple.CoreMotion.MotionThread");
  if (*(qword_1ED71C908 + 16) != 1)
  {
    operator new();
  }

  sub_19B5FC534(buf);
  v4 = *&buf[0].version;
  buf[0].version = 0;
  buf[0].info = 0;
  v5 = *(qword_1ED71C908 + 32);
  *(qword_1ED71C908 + 24) = v4;
  if (v5)
  {
    sub_19B41FFEC(v5);
    if (buf[0].info)
    {
      sub_19B41FFEC(buf[0].info);
    }
  }

  v42 = 0;
  if ((sub_19B432FD8(*(qword_1ED71C908 + 24), "MotionThreadPriority", &v42, 0xFFFFFFFFLL) & 1) == 0)
  {
    v42 = -1;
  }

  v40 = 0;
  v6 = pthread_self();
  v7 = pthread_getschedparam(v6, &v40, &v41);
  if (v7)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0].version) = 67240192;
      HIDWORD(buf[0].version) = v7;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Could not get scheduling parameters for motion thread, error = %{public}d", buf, 8u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
      }

      LODWORD(context.version) = 67240192;
      HIDWORD(context.version) = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Could not get scheduling parameters for motion thread, error = %{public}d", &context, 8);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    sched_priority = v42;
    if (v42 <= 0)
    {
      priority_max = sched_get_priority_max(v40);
      sched_priority = v41.sched_priority;
      if (priority_max > v41.sched_priority)
      {
        sched_priority = priority_max;
      }
    }

    v41.sched_priority = sched_priority;
    v14 = pthread_self();
    pthread_setschedparam(v14, v40, &v41);
    v15 = pthread_self();
    pthread_getschedparam(v15, &v40, &v41);
  }

  *qword_1ED71C908 = CFRunLoopGetCurrent();
  sub_19B4303F0(a1);
  pthread_dependency_fulfill_np();
  memset(&context, 0, sizeof(context));
  v16 = *MEMORY[0x1E695E480];
  v17 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  if (!v17)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf[0].version) = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "could not create runloop source", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
      }

      LOWORD(v43[0]) = 0;
      LODWORD(v38) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not create runloop source", v43, v38);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v22 = *MEMORY[0x1E695E8D0];
  CFRunLoopAddSource(*qword_1ED71C908, v17, *MEMORY[0x1E695E8D0]);
  v23 = _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
  }

  v24 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0].version) = 67174657;
    HIDWORD(buf[0].version) = v23;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "_CFRunLoopSetPerCalloutAutoreleasepoolEnabled() returned a value of, %{private}d.", buf, 8u);
  }

  v25 = sub_19B420058();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v43[0] = 67174657;
    v43[1] = v23;
    LODWORD(v38) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "_CFRunLoopSetPerCalloutAutoreleasepoolEnabled() returned a value of, %{private}d.", v43, v38);
    v27 = v26;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  if (v23)
  {
    v28 = 0;
    v29 = 0;
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    buf[0].version = 0;
    buf[0].info = Mutable;
    buf[0].retain = MEMORY[0x1E695D7C8];
    buf[0].release = MEMORY[0x1E695D7C0];
    buf[0].copyDescription = MEMORY[0x1E695D768];
    v29 = CFRunLoopObserverCreate(0, 1uLL, 1u, -2147483647, sub_19B6783F4, buf);
    v28 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, sub_19B6783F4, buf);
    CFRunLoopAddObserver(*qword_1ED71C908, v29, v22);
    CFRunLoopAddObserver(*qword_1ED71C908, v28, v22);
  }

  *(qword_1ED71C908 + 40) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v32 = CFRunLoopTimerCreateWithHandler(v16, Current + 1.0, 5.0, 0, 0, &unk_1F0E28560);
  CFRunLoopAddTimer(*qword_1ED71C908, v32, v22);
  objc_autoreleasePoolPop(v39);
  CFRunLoopRun();
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
  }

  v33 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf[0].version) = 0;
    _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "Motion thread exiting", buf, 2u);
  }

  v34 = sub_19B420058();
  if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    LOWORD(context.version) = 0;
    LODWORD(v38) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Motion thread exiting", &context, v38);
    v36 = v35;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v35);
    if (v36 != buf)
    {
      free(v36);
    }
  }

  if (v32)
  {
    CFRunLoopRemoveTimer(*qword_1ED71C908, v32, v22);
    CFRelease(v32);
  }

  if (v28)
  {
    CFRunLoopRemoveObserver(*qword_1ED71C908, v28, v22);
    CFRelease(v28);
  }

  if (v29)
  {
    CFRunLoopRemoveObserver(*qword_1ED71C908, v29, v22);
    CFRelease(v29);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRunLoopRemoveSource(*qword_1ED71C908, v17, v22);
    CFRelease(v17);
  }

  return 0;
}

uint64_t sub_19B430DF4(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = sub_19B431640(a1);
  *v8 = &unk_1F0E33A28;
  *(v8 + 16) = 0;
  *(v8 + 3) = 0u;
  v9 = (v8 + 3);
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[10] = a4;
  v8[11] = -1;
  *(v8 + 96) = a3;
  sub_19B431640(v8 + 13);
  *(a1 + 104) = &unk_1F0E31430;
  sub_19B431640((a1 + 120));
  *(a1 + 120) = &unk_1F0E31430;
  *(a1 + 72) = a2;
  CFRetain(a2);
  CFRetain(*(a1 + 80));
  sub_19B431834(*(a1 + 80), &v59);
  if (v60 >= 0)
  {
    v10 = &v59;
  }

  else
  {
    v10 = v59;
  }

  v11 = getpwnam(v10);
  if (v11)
  {
    *(a1 + 88) = *&v11->pw_uid;
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v12 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v13 = &v59;
      if (v60 < 0)
      {
        v13 = v59;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "could not read user %{public}s uid/gid", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }

      v15 = &v59;
      if (v60 < 0)
      {
        v15 = v59;
      }

      LODWORD(v61.__r_.__value_.__l.__data_) = 136446210;
      *(v61.__r_.__value_.__r.__words + 4) = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not read user %{public}s uid/gid", &v61, 12);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLPreferences::CLPreferences(CFStringRef, BOOL, CFStringRef)", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_19B4C5138(__dst, v59, *(&v59 + 1));
  }

  else
  {
    *__dst = v59;
    v57 = v60;
  }

  sub_19B432230(__dst, &v58);
  v18 = std::string::append(&v58, "/Library/Preferences/", 0x15uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  sub_19B431834(a2, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v20 = &v53;
  }

  else
  {
    v20 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v21 = v55;
  }

  else
  {
    v21 = v54;
  }

  v22 = std::string::append(&v61, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  sub_19B428B50(&__p, ".plist");
  if ((v52 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v52 & 0x80u) == 0)
  {
    v25 = v52;
  }

  else
  {
    v25 = v51;
  }

  v26 = std::string::append(buf, p_p, v25);
  v27 = v26->__r_.__value_.__r.__words[0];
  v62[0] = v26->__r_.__value_.__l.__size_;
  *(v62 + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
  v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v9);
  }

  v29 = v62[0];
  *(a1 + 24) = v27;
  *(a1 + 32) = v29;
  *(a1 + 39) = *(v62 + 7);
  *(a1 + 47) = v28;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_19B4C5138(v48, v59, *(&v59 + 1));
  }

  else
  {
    *v48 = v59;
    v49 = v60;
  }

  sub_19B4324F8(v48, &v58);
  v30 = std::string::append(&v58, "/", 1uLL);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  sub_19B431834(a2, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v32 = &v53;
  }

  else
  {
    v32 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v33 = v55;
  }

  else
  {
    v33 = v54;
  }

  v34 = std::string::append(&v61, v32, v33);
  v35 = *&v34->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  sub_19B428B50(&__p, ".plist");
  if ((v52 & 0x80u) == 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p;
  }

  if ((v52 & 0x80u) == 0)
  {
    v37 = v52;
  }

  else
  {
    v37 = v51;
  }

  v38 = std::string::append(buf, v36, v37);
  v39 = v38->__r_.__value_.__r.__words[0];
  v62[0] = v38->__r_.__value_.__l.__size_;
  *(v62 + 7) = *(&v38->__r_.__value_.__r.__words[1] + 7);
  v40 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v41 = v62[0];
  *(a1 + 48) = v39;
  *(a1 + 56) = v41;
  *(a1 + 63) = *(v62 + 7);
  *(a1 + 71) = v40;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  v42 = getpwnam("root");
  v46 = 0;
  if (v42)
  {
    v43 = v42;
    pw_uid = v42->pw_uid;
    if (pw_uid == getuid())
    {
      pw_gid = v43->pw_gid;
      if (pw_gid == getgid())
      {
        v46 = 1;
      }
    }
  }

  *(a1 + 16) = v46;
  sub_19B432E80(a1);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  return a1;
}