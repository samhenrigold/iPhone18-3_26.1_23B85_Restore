void sub_1DE3EF498(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ADS::Device::Device_GetPropertyData(ADS::Device *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int *a7, unsigned int *a8, void *a9)
{
  v9 = a8;
  v11 = a6;
  v125 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  if (a4->mSelector <= 1751738722)
  {
    if (mSelector <= 1685087595)
    {
      if (mSelector > 1668575851)
      {
        if (mSelector <= 1684107363)
        {
          if (mSelector == 1668575852)
          {
            mScope = a4->mScope;
            switch(mScope)
            {
              case 0x6F757470u:
                ADS::Device::getControlsWithScope(buf, *(this + 59), *(this + 60), 1869968496);
                memset(v110, 0, sizeof(v110));
                std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v110, buf, &v121, 1);
              case 0x696E7074u:
                ADS::Device::getControlsWithScope(buf, *(this + 59), *(this + 60), 1768845428);
                memset(v111, 0, sizeof(v111));
                std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v111, buf, &v121, 1);
              case 0x676C6F62u:
                memset(buf, 0, sizeof(buf));
                std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
                memset(v112, 0, sizeof(v112));
                std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v112, buf, &v121, 1);
            }

            return;
          }

          if (mSelector != 1668639076)
          {
            if (mSelector == 1668641652)
            {
              if (a6 <= 0xB3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "ADS_Device.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 3102;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioObjectPropertyCustomPropertyInfoList", buf, 0x12u);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                *exception = off_1F5991DD8;
                exception[2] = 561211770;
              }

              *a8 = xmmword_1DE757FB0;
              *(a8 + 1) = xmmword_1DE757FC0;
              *(a8 + 2) = xmmword_1DE757FD0;
              *(a8 + 3) = xmmword_1DE757FE0;
              *(a8 + 4) = xmmword_1DE757FF0;
              *(a8 + 5) = xmmword_1DE758000;
              *(a8 + 6) = xmmword_1DE758010;
              *(a8 + 7) = xmmword_1DE758020;
              *(a8 + 8) = xmmword_1DE758030;
              *(a8 + 9) = xmmword_1DE758040;
              *(a8 + 10) = xmmword_1DE758050;
              a8[44] = 0;
              *buf = a6 - 180;
              ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a6, buf, a8 + 180);
              v29 = *buf + 180;
              goto LABEL_221;
            }

            goto LABEL_216;
          }

          goto LABEL_129;
        }

        if (mSelector > 1684434035)
        {
          if (mSelector != 1684434036)
          {
            if (mSelector != 1684893796)
            {
              goto LABEL_216;
            }

            if (a6 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 3088;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyMaximumPastData", buf, 0x12u);
              }

              v32 = __cxa_allocate_exception(0x10uLL);
              *v32 = off_1F5991DD8;
              v32[2] = 561211770;
            }

LABEL_146:
            v14 = *(this + 185);
            goto LABEL_220;
          }

          if (a6 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2877;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyDeviceCanBeDefaultDevice for the device", buf, 0x12u);
            }

            v76 = __cxa_allocate_exception(0x10uLL);
            *v76 = off_1F5991DD8;
            v76[2] = 561211770;
          }

          if (*(this + 3) != 1633905771)
          {
            v14 = *(this + 552);
            goto LABEL_220;
          }

          goto LABEL_142;
        }

        if (mSelector == 1684107364)
        {
          if (a6 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3081;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyAvailablePastData", buf, 0x12u);
            }

            v74 = __cxa_allocate_exception(0x10uLL);
            *v74 = off_1F5991DD8;
            v74[2] = 561211770;
          }

          v14 = *(this + 177);
          goto LABEL_220;
        }

        if (mSelector != 1684236338)
        {
          goto LABEL_216;
        }

        if (*(this + 3) == 1633905771)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3009;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: clock devices do not have streams (kAudioDevicePropertyPreferredChannelsForStereo)", buf, 0x12u);
          }

          v65 = __cxa_allocate_exception(0x10uLL);
          *v65 = off_1F5991DD8;
          v65[2] = 1970171760;
        }

        if (a6 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3012;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyPreferredChannelsForStereo for the device", buf, 0x12u);
          }

          v104 = __cxa_allocate_exception(0x10uLL);
          *v104 = off_1F5991DD8;
          v104[2] = 561211770;
        }

        *a8 = *(this + 139);
        a8[1] = *(this + 140);
        goto LABEL_205;
      }

      if (mSelector > 1634429293)
      {
        if (mSelector == 1634429294)
        {
          if (a6 >= 4)
          {
            v60 = *(this + 47);
            if (v60)
            {
              v61 = 1;
              do
              {
                *v9++ = *(v60 + 4);
                if (v61 >= a6 >> 2)
                {
                  break;
                }

                v60 = *v60;
                ++v61;
              }

              while (v60);
            }
          }

          return;
        }

        if (mSelector != 1634690672)
        {
          if (mSelector == 1668049764)
          {
            if (a6 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2848;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyClockDomain for the device", buf, 0x12u);
              }

              v89 = __cxa_allocate_exception(0x10uLL);
              *v89 = off_1F5991DD8;
              v89[2] = 561211770;
            }

            v14 = *(this + 124);
            goto LABEL_220;
          }

          goto LABEL_216;
        }

        if (*(this + 3) == 1633905771)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3059;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: clock devices do not have streams (kAudioFakeDevicePropertyAudioOutFilePath)", buf, 0x12u);
          }

          v97 = __cxa_allocate_exception(0x10uLL);
          *v97 = off_1F5991DD8;
          v97[2] = 1970171760;
        }

        if (a6 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3060;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyAudioOutFilePath for the device", buf, 0x12u);
          }

          v106 = __cxa_allocate_exception(0x10uLL);
          *v106 = off_1F5991DD8;
          v106[2] = 561211770;
        }

        v15 = *MEMORY[0x1E695E478];
        v16 = *(this + 76);
        goto LABEL_200;
      }

      if (mSelector == 1633970543)
      {
        if (a6 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3221;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyStartIOCallback for the device", buf, 0x12u);
          }

          v100 = __cxa_allocate_exception(0x10uLL);
          *v100 = off_1F5991DD8;
          v100[2] = 561211770;
        }

        v18 = *(this + 80);
        goto LABEL_204;
      }

      if (mSelector != 1634038341)
      {
        if (mSelector != 1634038357)
        {
          goto LABEL_216;
        }

        v20 = *(this + 23);
        v19 = this + 184;
        *buf = this + 184;
        buf[8] = (*(v20 + 16))(this + 184, a2, a3);
        v21 = *(v19 + 81);
        if (v21)
        {
          CFRetain(v21);
          v22 = 8;
        }

        else
        {
          v22 = 0;
        }

        *v9 = v21;
        goto LABEL_185;
      }

      v55 = *(this + 23);
      v54 = this + 184;
      *buf = this + 184;
      buf[8] = (*(v55 + 16))(this + 184, a2, a3);
      v36 = *(v54 + 164);
      goto LABEL_184;
    }

    if (mSelector > 1702248803)
    {
      if (mSelector <= 1719105133)
      {
        switch(mSelector)
        {
          case 1702248804:
            v53 = *(this + 23);
            v52 = this + 184;
            *buf = this + 184;
            buf[8] = (*(v53 + 16))(this + 184, a2, a3);
            v36 = *(v52 + 166);
            break;
          case 1702392685:
            v40 = *(this + 23);
            v39 = this + 184;
            *buf = this + 184;
            buf[8] = (*(v40 + 16))(this + 184, a2, a3);
            v36 = *(v39 + 165);
            break;
          case 1718841206:
            if (a6 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 3244;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertySafetyOffsetViolationCheckFailed for the device", buf, 0x12u);
              }

              v87 = __cxa_allocate_exception(0x10uLL);
              *v87 = off_1F5991DD8;
              v87[2] = 561211770;
            }

            v30 = 776;
            if (a4->mScope == 1768845428)
            {
              v30 = 780;
            }

            v14 = *(this + v30);
            goto LABEL_220;
          default:
            goto LABEL_216;
        }
      }

      else
      {
        if (mSelector <= 1735354733)
        {
          if (mSelector == 1719105134)
          {
            if (a6 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2739;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioObjectPropertyFirmwareVersion for the device", buf, 0x12u);
              }

              v75 = __cxa_allocate_exception(0x10uLL);
              *v75 = off_1F5991DD8;
              v75[2] = 561211770;
            }

            v15 = *MEMORY[0x1E695E478];
            v16 = *(this + 99);
LABEL_200:
            Copy = CFStringCreateCopy(v15, v16);
            goto LABEL_201;
          }

          if (mSelector != 1719301235)
          {
            goto LABEL_216;
          }

          if (a6 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3235;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyFirstZTSSampleTime for the device", buf, 0x12u);
            }

            v67 = __cxa_allocate_exception(0x10uLL);
            *v67 = off_1F5991DD8;
            v67[2] = 561211770;
          }

          v17 = 0.0;
          if (*(this + 617) == 1)
          {
            v17 = (*(this + 78) * *(this + 185));
          }

          *a8 = v17;
LABEL_205:
          v29 = 8;
LABEL_221:
          *a7 = v29;
          return;
        }

        if (mSelector != 1735354734)
        {
          if (mSelector == 1751737454)
          {
            if (a6 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 3003;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyIsHidden for the device", buf, 0x12u);
              }

              v70 = __cxa_allocate_exception(0x10uLL);
              *v70 = off_1F5991DD8;
              v70[2] = 561211770;
            }

            v14 = *(this + 554);
            goto LABEL_220;
          }

          goto LABEL_216;
        }

        if (a6 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2864;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyDeviceIsRunning for the device", buf, 0x12u);
          }

          v77 = __cxa_allocate_exception(0x10uLL);
          *v77 = off_1F5991DD8;
          v77[2] = 561211770;
        }

        v35 = *(this + 23);
        v34 = this + 184;
        *buf = this + 184;
        buf[8] = (*(v35 + 16))(this + 184, a2, a3);
        v36 = *(v34 + 40) != 0;
      }

LABEL_184:
      *v9 = v36;
      v22 = 4;
      goto LABEL_185;
    }

    if (mSelector > 1685287011)
    {
      switch(mSelector)
      {
        case 1685287012:
          if (a6 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3074;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertySupportsPastData", buf, 0x12u);
            }

            v102 = __cxa_allocate_exception(0x10uLL);
            *v102 = off_1F5991DD8;
            v102[2] = 561211770;
          }

          v14 = *(this + 176);
          goto LABEL_220;
        case 1685484385:
          if (a6 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3187;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyTriggerAction for the device", buf, 0x12u);
            }

            v98 = __cxa_allocate_exception(0x10uLL);
            *v98 = off_1F5991DD8;
            v98[2] = 561211770;
          }

          v56 = *(this + 54);
          v57 = *(this + 55);
          v58 = *(this + 57);
          *(a8 + 2) = *(this + 56);
          *(a8 + 3) = v58;
          *a8 = v56;
          *(a8 + 1) = v57;
          v29 = 64;
          goto LABEL_221;
        case 1685484386:
          if (a6 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3180;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertySelectBehavior for the device", buf, 0x12u);
            }

            v90 = __cxa_allocate_exception(0x10uLL);
            *v90 = off_1F5991DD8;
            v90[2] = 561211770;
          }

          v14 = atomic_load(this + 214);
          goto LABEL_220;
      }

      goto LABEL_216;
    }

    if (mSelector == 1685087596)
    {
      if (a6 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3095;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyEnableListening", buf, 0x12u);
        }

        v101 = __cxa_allocate_exception(0x10uLL);
        *v101 = off_1F5991DD8;
        v101[2] = 561211770;
      }

      v14 = *(this + 178);
      goto LABEL_220;
    }

    if (mSelector == 1685278529)
    {
      if (a6 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3296;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyDSPOffloadRequested", buf, 0x12u);
        }

        v96 = __cxa_allocate_exception(0x10uLL);
        *v96 = off_1F5991DD8;
        v96[2] = 561211770;
      }

      *a7 = 0;
      v38 = *(this + 118);
      if (!v38)
      {
        return;
      }

LABEL_188:
      Copy = PropertyListDeepImmutableCopy(v38);
LABEL_201:
      *v9 = Copy;
      goto LABEL_205;
    }

    if (mSelector != 1685278578)
    {
      goto LABEL_216;
    }

    if (a6 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3273;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyDSPOffloadRequested", buf, 0x12u);
      }

      v85 = __cxa_allocate_exception(0x10uLL);
      *v85 = off_1F5991DD8;
      v85[2] = 561211770;
    }

    *buf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    if (*(this + 936) == 1)
    {
      v23 = atomic_load(this + 214);
      if ((v23 & 0x400) != 0)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
        mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v119, Mutable);
        v26 = v119;
        v25 = *buf;
        v27 = @"airpods noise suppression";
        goto LABEL_232;
      }

      v24 = atomic_load(this + 214);
      if ((v24 & 0x800) != 0)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
        mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v119, Mutable);
        v26 = v119;
        v25 = *buf;
        v27 = @"airpods content creation recording";
LABEL_232:
        mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::DictionaryRef>(v25, v27, v26);
        applesauce::CF::DictionaryRef::~DictionaryRef(&v119);
        mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&Mutable);
      }
    }

    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v119, *buf);
    v62 = v119;
    v119 = 0;
    *v9 = v62;
    applesauce::CF::DictionaryRef::~DictionaryRef(&v119);
    *a7 = 8;
    mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(buf);
    return;
  }

  if (mSelector <= 1853059618)
  {
    if (mSelector > 1769302371)
    {
      if (mSelector <= 1819107690)
      {
        if (mSelector == 1769302372)
        {
          *a7 = 4;
          *a8 = *(this + 233);
          return;
        }

        if (mSelector != 1818454126)
        {
          if (mSelector == 1818850926)
          {
            if (a6 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2856;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyDeviceIsAlive for the device", buf, 0x12u);
              }

              v82 = __cxa_allocate_exception(0x10uLL);
              *v82 = off_1F5991DD8;
              v82[2] = 561211770;
            }

            v14 = 1;
            goto LABEL_220;
          }

          goto LABEL_216;
        }

        if (a6 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2718;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioObjectPropertyElementName for the device", buf, 0x12u);
          }

          v84 = __cxa_allocate_exception(0x10uLL);
          *v84 = off_1F5991DD8;
          v84[2] = 561211770;
        }

        v15 = *MEMORY[0x1E695E478];
        v16 = @"DefaultElementName";
      }

      else if (mSelector > 1819569762)
      {
        if (mSelector == 1819569763)
        {
          if (a6 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2895;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyLatency for the device", buf, 0x12u);
            }

            v73 = __cxa_allocate_exception(0x10uLL);
            *v73 = off_1F5991DD8;
            v73[2] = 561211770;
          }

          v14 = *(this + 183);
          goto LABEL_220;
        }

        if (mSelector != 1836411236)
        {
          goto LABEL_216;
        }

        if (a6 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2803;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyModelUID for the device", buf, 0x12u);
          }

          v69 = __cxa_allocate_exception(0x10uLL);
          *v69 = off_1F5991DD8;
          v69[2] = 561211770;
        }

        v15 = *MEMORY[0x1E695E478];
        v16 = *(this + 22);
      }

      else if (mSelector == 1819107691)
      {
        if (a6 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2725;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioObjectPropertyManufacturer for the device", buf, 0x12u);
          }

          v72 = __cxa_allocate_exception(0x10uLL);
          *v72 = off_1F5991DD8;
          v72[2] = 561211770;
        }

        v15 = *MEMORY[0x1E695E478];
        v16 = *(this + 18);
      }

      else
      {
        if (mSelector != 1819173229)
        {
          goto LABEL_216;
        }

        if (a6 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2711;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioObjectPropertyName for the device", buf, 0x12u);
          }

          v66 = __cxa_allocate_exception(0x10uLL);
          *v66 = off_1F5991DD8;
          v66[2] = 561211770;
        }

        v15 = *MEMORY[0x1E695E478];
        v16 = *(this + 16);
      }

      goto LABEL_200;
    }

    if (mSelector <= 1752525154)
    {
      switch(mSelector)
      {
        case 1751738723:
          if (a6 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3200;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of AudioFakeDeviceIsolatedIOOperationCallback for the device", buf, 0x12u);
            }

            v93 = __cxa_allocate_exception(0x10uLL);
            *v93 = off_1F5991DD8;
            v93[2] = 561211770;
          }

          v18 = *(this + 81);
          break;
        case 1751740259:
          if (a6 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3193;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyHardwareIOCallback for the device", buf, 0x12u);
            }

            v91 = __cxa_allocate_exception(0x10uLL);
            *v91 = off_1F5991DD8;
            v91[2] = 561211770;
          }

          v18 = *(this + 79);
          break;
        case 1752197475:
          if (a6 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3207;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyHardwareSetupForIsolatedIOCallback for the device", buf, 0x12u);
            }

            v81 = __cxa_allocate_exception(0x10uLL);
            *v81 = off_1F5991DD8;
            v81[2] = 561211770;
          }

          v18 = *(this + 82);
          break;
        default:
          goto LABEL_216;
      }

      goto LABEL_204;
    }

    if (mSelector != 1752525155)
    {
      if (mSelector != 1768515184)
      {
        if (mSelector != 1768777573)
        {
          goto LABEL_216;
        }

        if (a6 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3174;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyRawImageData for the device", buf, 0x12u);
          }

          v83 = __cxa_allocate_exception(0x10uLL);
          *v83 = off_1F5991DD8;
          v83[2] = 561211770;
        }

        Copy = CFDataCreateCopy(*MEMORY[0x1E695E478], *(this + 103));
        goto LABEL_201;
      }

      if (a6 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3252;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyInputInjectionFilePath for the device", buf, 0x12u);
        }

        v92 = __cxa_allocate_exception(0x10uLL);
        *v92 = off_1F5991DD8;
        v92[2] = 561211770;
      }

      v38 = *(this + 85);
      goto LABEL_188;
    }

    if (a6 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3214;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyHardwareTeardownForIsolatedIOCallback for the device", buf, 0x12u);
      }

      v94 = __cxa_allocate_exception(0x10uLL);
      *v94 = off_1F5991DD8;
      v94[2] = 561211770;
    }

    v18 = *(this + 83);
LABEL_204:
    *a8 = v18;
    goto LABEL_205;
  }

  if (mSelector <= 1936618860)
  {
    if (mSelector > 1919512166)
    {
      if (mSelector <= 1935892847)
      {
        if (mSelector != 1919512167)
        {
          if (mSelector == 1935763060)
          {
            if (*(this + 3) == 1633905771)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2963;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: clock devices do not have streams (kAudioDevicePropertySafetyOffset)", buf, 0x12u);
              }

              v64 = __cxa_allocate_exception(0x10uLL);
              *v64 = off_1F5991DD8;
              v64[2] = 1970171760;
            }

            if (a6 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2964;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  SA_ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertySafetyOffset for the device", buf, 0x12u);
              }

              v103 = __cxa_allocate_exception(0x10uLL);
              *v103 = off_1F5991DD8;
              v103[2] = 561211770;
            }

            v14 = *(this + 186);
            goto LABEL_220;
          }

LABEL_216:
          ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a6, a7, a8);
          return;
        }

        if (a6 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3053;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyZeroTimeStampPeriod for the device", buf, 0x12u);
          }

          v78 = __cxa_allocate_exception(0x10uLL);
          *v78 = off_1F5991DD8;
          v78[2] = 561211770;
        }

        goto LABEL_146;
      }

      if (mSelector == 1935892848)
      {
        if (*(this + 3) == 1633905771)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3066;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: clock devices do not have streams (kAudioFakeDevicePropertyStreamCaptureEnabled)", buf, 0x12u);
          }

          v80 = __cxa_allocate_exception(0x10uLL);
          *v80 = off_1F5991DD8;
          v80[2] = 1970171760;
        }

        if (a6 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3067;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyStreamCaptureEnabled for the device", buf, 0x12u);
          }

          v105 = __cxa_allocate_exception(0x10uLL);
          *v105 = off_1F5991DD8;
          v105[2] = 561211770;
        }

        v14 = *(this + 616);
        goto LABEL_220;
      }

      if (mSelector != 1936092276)
      {
        goto LABEL_216;
      }

      if (a6 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2887;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyDeviceCanBeDefaultSystemDevice for the device", buf, 0x12u);
        }

        v71 = __cxa_allocate_exception(0x10uLL);
        *v71 = off_1F5991DD8;
        v71[2] = 561211770;
      }

      if (*(this + 3) != 1633905771)
      {
        v14 = *(this + 553);
LABEL_220:
        *a8 = v14;
        v29 = 4;
        goto LABEL_221;
      }

LABEL_142:
      v14 = 0;
      goto LABEL_220;
    }

    if (mSelector == 1853059619)
    {
      if (*(this + 52) >= (a6 >> 4))
      {
        LODWORD(v59) = a6 >> 4;
      }

      else
      {
        v59 = *(this + 52);
      }

      std::copy_n[abi:ne200100]<std::__tree_const_iterator<ADS::AudioValueRangeWrapper,std::__tree_node<ADS::AudioValueRangeWrapper,void *> *,long>,unsigned int,ADS::AudioValueRangeWrapper*,0>(*(this + 50), v59, a8);
      v29 = 16 * v59;
      goto LABEL_221;
    }

    if (mSelector != 1853059700)
    {
      if (mSelector != 1870098020)
      {
        goto LABEL_216;
      }

      v31 = a4->mScope;
      switch(v31)
      {
        case 0x6F757470u:
          memset(buf, 0, sizeof(buf));
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
          ADS::Device::getControlsWithScope(&v121, *(this + 59), *(this + 60), 1869968496);
          memset(v116, 0, sizeof(v116));
          std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v116, buf, v124, 2);
        case 0x696E7074u:
          memset(buf, 0, sizeof(buf));
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
          ADS::Device::getControlsWithScope(&v121, *(this + 59), *(this + 60), 1768845428);
          memset(v117, 0, sizeof(v117));
          std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v117, buf, v124, 2);
        case 0x676C6F62u:
          memset(buf, 0, sizeof(buf));
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
          v121 = 0;
          v122 = 0;
          v123 = 0;
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v121, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
          memset(v124, 0, sizeof(v124));
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v124, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
          memset(v118, 0, sizeof(v118));
          std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v118, buf, &v125, 3);
      }

      return;
    }

    if (a6 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2973;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  SA_ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyNominalSampleRate for the device", buf, 0x12u);
      }

      v95 = __cxa_allocate_exception(0x10uLL);
      *v95 = off_1F5991DD8;
      v95[2] = 561211770;
    }

    v42 = *(this + 23);
    v41 = this + 184;
    *buf = this + 184;
    buf[8] = (*(v42 + 16))(this + 184, a2, a3);
    *v9 = *(v41 + 67);
    v22 = 8;
LABEL_185:
    *a7 = v22;
    CADeprecated::CAMutex::Locker::~Locker(buf);
    return;
  }

  if (mSelector <= 1937009954)
  {
    if (mSelector != 1936618861)
    {
      if (mSelector == 1936879204)
      {
        v43 = atomic_load(this + 214);
        if (v43 < 0)
        {
          a8[2] = 10;
        }

        else
        {
          if (*(this + 3) == 1633905771)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3028;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: clock devices do not have streams (kAudioDevicePropertyPreferredChannelLayout)", buf, 0x12u);
            }

            v107 = __cxa_allocate_exception(0x10uLL);
            *v107 = off_1F5991DD8;
            v107[2] = 1970171760;
          }

          v44 = 568;
          if (a4->mScope == 1768845428)
          {
            v44 = 564;
          }

          v45 = atomic_load((this + v44));
          v46 = v45 - 1;
          v47 = caulk::numeric::exceptional_mul<unsigned int>(v45 - 1);
          v48 = caulk::numeric::exceptional_add<unsigned int>(v47);
          if (v48 > v11)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3034;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyPreferredChannelLayout for the device", buf, 0x12u);
            }

            v108 = __cxa_allocate_exception(0x10uLL);
            *v108 = off_1F5991DD8;
            v108[2] = 561211770;
          }

          *v9 = 0;
          v9[2] = v46;
          if (v46)
          {
            v49 = v9 + 4;
            v50 = 1;
            do
            {
              *(v49 - 1) = v50;
              *v49 = 0;
              v49[1] = 0;
              v49 = (v49 + 20);
              ++v50;
              --v46;
            }

            while (v46);
          }

          *a7 = v48;
        }

        return;
      }

      if (mSelector != 1937008739)
      {
        goto LABEL_216;
      }

      if (a6 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3228;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioFakeDevicePropertyIOThreadStateChangeCallback for the device", buf, 0x12u);
        }

        v88 = __cxa_allocate_exception(0x10uLL);
        *v88 = off_1F5991DD8;
        v88[2] = 561211770;
      }

      v18 = *(this + 84);
      goto LABEL_204;
    }

    if (a6 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2732;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioObjectPropertySerialNumber for the device", buf, 0x12u);
      }

      v99 = __cxa_allocate_exception(0x10uLL);
      *v99 = off_1F5991DD8;
      v99[2] = 561211770;
    }

    v15 = *MEMORY[0x1E695E478];
    v16 = *(this + 101);
    goto LABEL_200;
  }

  if (mSelector > 1969841183)
  {
    if (mSelector != 1969841184)
    {
      if (mSelector == 1986294896)
      {
        *a7 = 4;
        *a8 = 0;
        return;
      }

      goto LABEL_216;
    }

LABEL_129:
    if (a6 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2785;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyDeviceUID for the device", buf, 0x12u);
      }

      v63 = __cxa_allocate_exception(0x10uLL);
      *v63 = off_1F5991DD8;
      v63[2] = 561211770;
    }

    *buf = &unk_1F5991188;
    *&buf[8] = @"deleteme";
    v33 = OS::CF::operator==(*(this + 20), @"deleteme");
    OS::CF::UntypedObject::~UntypedObject(buf);
    if (v33)
    {
      Copy = 0;
    }

    else
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E478], *(this + 20));
    }

    goto LABEL_201;
  }

  if (mSelector != 1937009955)
  {
    if (mSelector == 1953653102)
    {
      if (a6 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2812;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: not enough space for the return value of kAudioDevicePropertyTransportType for the device", buf, 0x12u);
        }

        v68 = __cxa_allocate_exception(0x10uLL);
        *v68 = off_1F5991DD8;
        v68[2] = 561211770;
      }

      v14 = *(this + 184);
      goto LABEL_220;
    }

    goto LABEL_216;
  }

  if (*(this + 3) == 1633905771)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ADS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2901;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_GetPropertyData: clock devices do not have streams (kAudioDevicePropertyStreams)", buf, 0x12u);
    }

    v79 = __cxa_allocate_exception(0x10uLL);
    *v79 = off_1F5991DD8;
    v79[2] = 1970171760;
  }

  v37 = a4->mScope;
  switch(v37)
  {
    case 0x6F757470u:
      memset(buf, 0, sizeof(buf));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
      memset(v113, 0, sizeof(v113));
      std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v113, buf, &v121, 1);
    case 0x696E7074u:
      memset(buf, 0, sizeof(buf));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
      memset(v114, 0, sizeof(v114));
      std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v114, buf, &v121, 1);
    case 0x676C6F62u:
      memset(buf, 0, sizeof(buf));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
      v121 = 0;
      v122 = 0;
      v123 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v121, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
      memset(v115, 0, sizeof(v115));
      std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int> const*,std::vector<unsigned int> const*>(v115, buf, v124, 2);
  }
}

unint64_t ADS::Device::getRequestedSubObjects(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v7 = 0;
  v8 = a3;
  do
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
    v9 = __p;
    if (v7 < v8)
    {
      v10 = 0;
      v11 = (v14 - __p) >> 2;
      while (v11 > v10)
      {
        *(a4 + 4 * v7) = v9[v10++];
        if (v8 == ++v7)
        {
          v7 = v8;
          goto LABEL_10;
        }
      }

      v7 = v7;
    }

    if (v9)
    {
LABEL_10:
      operator delete(v9);
    }

    v6 += 24;
  }

  while (v6 != a2);
  return v7;
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL OS::CF::operator==(CFStringRef theString1, const __CFString *a2)
{
  result = 0;
  if (theString1)
  {
    if (a2)
    {
      return CFStringCompare(theString1, a2, 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

void *std::copy_n[abi:ne200100]<std::__tree_const_iterator<ADS::AudioValueRangeWrapper,std::__tree_node<ADS::AudioValueRangeWrapper,void *> *,long>,unsigned int,ADS::AudioValueRangeWrapper*,0>(void *result, int a2, _OWORD *a3)
{
  if (a2)
  {
    *a3 = *(result + 2);
    v3 = a2 - 1;
    if (a2 != 1)
    {
      do
      {
        v4 = result[1];
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = result[2];
            v6 = *v5 == result;
            result = v5;
          }

          while (!v6);
        }

        a3[1] = *(v5 + 2);
        ++a3;
        result = v5;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::DictionaryRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t ADS::Device::GetPropertyDataSize(ADS::Device *this, ADS::ObjectManager *a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(this + 2) != a2)
  {
    v15 = ADS::ObjectManager::CopyObjectByObjectID(a2);
    v16 = v15;
    if (!v15)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = 136315394;
        v36 = "ADS_Device.cpp";
        v37 = 1024;
        v38 = 2160;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::GetPropertyData: unknown device", &v35, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    v9 = (*(*v15 + 48))(v15, a2, a3, a4, a5, a6);
    ADS::ObjectManager::ReleaseObject(v16, v17);
    return v9;
  }

  mSelector = a4->mSelector;
  v9 = 8;
  if (a4->mSelector <= 1751738722)
  {
    if (mSelector > 1685087595)
    {
      if (mSelector <= 1702248803)
      {
        if (mSelector > 1685287011)
        {
          if (mSelector == 1685287012)
          {
            return 4;
          }

          if (mSelector == 1685484385)
          {
            return 64;
          }

          v10 = 1685484386;
          goto LABEL_84;
        }

        if (mSelector == 1685087596)
        {
          return 4;
        }

        if (mSelector == 1685278529)
        {
          return v9;
        }

        v18 = 1685278578;
      }

      else
      {
        if (mSelector <= 1719105133)
        {
          if (mSelector == 1702248804 || mSelector == 1702392685)
          {
            return 4;
          }

          v10 = 1718841206;
          goto LABEL_84;
        }

        if (mSelector > 1735354733)
        {
          if (mSelector == 1735354734)
          {
            return 4;
          }

          v10 = 1751737454;
          goto LABEL_84;
        }

        if (mSelector == 1719105134)
        {
          return v9;
        }

        v18 = 1719301235;
      }
    }

    else if (mSelector <= 1668575851)
    {
      if (mSelector > 1634429293)
      {
        if (mSelector == 1634429294)
        {
          v20 = *(this + 96);
          return 4 * v20;
        }

        if (mSelector != 1634690672)
        {
          v10 = 1668049764;
          goto LABEL_84;
        }

        return v9;
      }

      if (mSelector == 1633970543)
      {
        return v9;
      }

      if (mSelector == 1634038341)
      {
        return 4;
      }

      v18 = 1634038357;
    }

    else
    {
      if (mSelector <= 1684107363)
      {
        if (mSelector != 1668575852)
        {
          if (mSelector != 1668639076)
          {
            if (mSelector != 1668641652)
            {
              goto LABEL_104;
            }

            return 12 * ADS::PropertyManager::Size((this + 24)) + 180;
          }

          return v9;
        }

        mScope = a4->mScope;
        switch(mScope)
        {
          case 0x6F757470u:
            v33 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_3>(*(this + 59), *(this + 60));
            break;
          case 0x696E7074u:
            v33 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_2>(*(this + 59), *(this + 60));
            break;
          case 0x676C6F62u:
            v28 = *(this + 120);
            v29 = *(this + 118);
            return (v28 - v29) & 0xFFFFFFFC;
          default:
            return 0;
        }

        return (4 * v33);
      }

      if (mSelector > 1684434035)
      {
        if (mSelector == 1684434036)
        {
          return 4;
        }

        v10 = 1684893796;
        goto LABEL_84;
      }

      if (mSelector == 1684107364)
      {
        return 4;
      }

      v18 = 1684236338;
    }

LABEL_74:
    if (mSelector != v18)
    {
      goto LABEL_104;
    }

    return v9;
  }

  if (mSelector <= 1853059618)
  {
    if (mSelector <= 1769302371)
    {
      if (mSelector > 1752525154)
      {
        if (mSelector == 1752525155 || mSelector == 1768515184)
        {
          return v9;
        }

        v18 = 1768777573;
      }

      else
      {
        if (mSelector == 1751738723 || mSelector == 1751740259)
        {
          return v9;
        }

        v18 = 1752197475;
      }
    }

    else
    {
      if (mSelector <= 1819107690)
      {
        if (mSelector == 1769302372)
        {
          return 4;
        }

        if (mSelector != 1818454126)
        {
          v10 = 1818850926;
          goto LABEL_84;
        }

        return v9;
      }

      if (mSelector > 1819569762)
      {
        if (mSelector == 1819569763)
        {
          return 4;
        }

        v18 = 1836411236;
      }

      else
      {
        if (mSelector == 1819107691)
        {
          return v9;
        }

        v18 = 1819173229;
      }
    }

    goto LABEL_74;
  }

  if (mSelector <= 1936618860)
  {
    if (mSelector > 1919512166)
    {
      if (mSelector <= 1935892847)
      {
        if (mSelector != 1919512167)
        {
          v10 = 1935763060;
          goto LABEL_84;
        }

        return 4;
      }

      if (mSelector == 1935892848)
      {
        return 4;
      }

      v10 = 1936092276;
LABEL_84:
      if (mSelector == v10)
      {
        return 4;
      }

      goto LABEL_104;
    }

    if (mSelector == 1853059619)
    {
      return (16 * *(this + 104));
    }

    if (mSelector != 1853059700)
    {
      if (mSelector == 1870098020)
      {
        v19 = a4->mScope;
        switch(v19)
        {
          case 0x6F757470u:
            v30 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_1>(*(this + 59), *(this + 60));
            v31 = *(this + 114);
            v32 = *(this + 112);
            break;
          case 0x696E7074u:
            v30 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_0>(*(this + 59), *(this + 60));
            v31 = *(this + 108);
            v32 = *(this + 106);
            break;
          case 0x676C6F62u:
            v20 = ((*(this + 114) - *(this + 112)) >> 2) + ((*(this + 108) - *(this + 106)) >> 2) + ((*(this + 120) - *(this + 118)) >> 2);
            return 4 * v20;
          default:
            return 0;
        }

        v20 = v30 + ((v31 - v32) >> 2);
        return 4 * v20;
      }

LABEL_104:

      return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
    }

    return v9;
  }

  if (mSelector > 1937009954)
  {
    if (mSelector > 1969841183)
    {
      if (mSelector != 1969841184)
      {
        v10 = 1986294896;
        goto LABEL_84;
      }

      return v9;
    }

    if (mSelector != 1937009955)
    {
      v10 = 1953653102;
      goto LABEL_84;
    }

    v22 = a4->mScope;
    switch(v22)
    {
      case 0x6F757470u:
        v28 = *(this + 114);
        v29 = *(this + 112);
        break;
      case 0x696E7074u:
        v28 = *(this + 108);
        v29 = *(this + 106);
        break;
      case 0x676C6F62u:
        v20 = ((*(this + 114) - *(this + 112)) >> 2) + ((*(this + 108) - *(this + 106)) >> 2);
        return 4 * v20;
      default:
        return 0;
    }

    return (v28 - v29) & 0xFFFFFFFC;
  }

  if (mSelector == 1936618861)
  {
    return v9;
  }

  if (mSelector != 1936879204)
  {
    v18 = 1937008739;
    goto LABEL_74;
  }

  v23 = atomic_load(this + 214);
  if (v23 < 0)
  {
    return 12;
  }

  v24 = 568;
  if (a4->mScope == 1768845428)
  {
    v24 = 564;
  }

  v25 = atomic_load((this + v24));
  v26 = caulk::numeric::exceptional_mul<unsigned int>(v25 - 1);

  return caulk::numeric::exceptional_add<unsigned int>(v26);
}

void sub_1DE3F36D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_0>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1768845428)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_1>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1869968496)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_2>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1768845428)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_3>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1869968496)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t ADS::Device::IsPropertySettable(ADS::Device *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (*(this + 2) != a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v5 = 0;
  mSelector = a4->mSelector;
  if (a4->mSelector > 1751738722)
  {
    if (mSelector <= 1853059618)
    {
      if (mSelector <= 1769302371)
      {
        if (mSelector > 1752525154)
        {
          if (mSelector != 1752525155 && mSelector != 1768515184)
          {
            v7 = 1768777573;
            goto LABEL_75;
          }
        }

        else if (mSelector != 1751738723 && mSelector != 1751740259)
        {
          v8 = 1752197475;
          goto LABEL_67;
        }
      }

      else
      {
        if (mSelector > 1819107690)
        {
          if (mSelector > 1819569762)
          {
            if (mSelector == 1819569763)
            {
              return v5 & 1;
            }

            v7 = 1836411236;
            goto LABEL_75;
          }

          if (mSelector == 1819107691)
          {
            return v5 & 1;
          }

          v8 = 1819173229;
          goto LABEL_67;
        }

        if (mSelector != 1769302372)
        {
          if (mSelector == 1818454126)
          {
            return v5 & 1;
          }

          v7 = 1818850926;
          goto LABEL_75;
        }
      }

LABEL_68:
      v5 = 1;
      return v5 & 1;
    }

    if (mSelector > 1936618860)
    {
      if (mSelector > 1937009954)
      {
        if (mSelector > 1969841183)
        {
          if (mSelector == 1969841184)
          {
            return v5 & 1;
          }

          v7 = 1986294896;
        }

        else
        {
          if (mSelector == 1937009955)
          {
            return v5 & 1;
          }

          v7 = 1953653102;
        }

        goto LABEL_75;
      }

      if (mSelector == 1936618861 || mSelector == 1936879204)
      {
        return v5 & 1;
      }

      v8 = 1937008739;
      goto LABEL_67;
    }

    if (mSelector <= 1935763059)
    {
      if (mSelector == 1853059619)
      {
        return v5 & 1;
      }

      if (mSelector != 1853059700)
      {
        v7 = 1919512167;
        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (mSelector == 1935763060)
    {
      return v5 & 1;
    }

    if (mSelector != 1935892848)
    {
      v7 = 1936092276;
      goto LABEL_75;
    }

LABEL_53:
    v5 = *(this + 3) != 1633905771;
    return v5 & 1;
  }

  if (mSelector > 1685087595)
  {
    if (mSelector > 1702392684)
    {
      if (mSelector > 1719301234)
      {
        if (mSelector == 1719301235 || mSelector == 1735354734)
        {
          return v5 & 1;
        }

        v7 = 1751737454;
      }

      else
      {
        if (mSelector == 1702392685)
        {
          v5 = *(this + 717);
          return v5 & 1;
        }

        if (mSelector == 1718841206)
        {
          return v5 & 1;
        }

        v7 = 1719105134;
      }

      goto LABEL_75;
    }

    if (mSelector > 1685287011)
    {
      if ((mSelector - 1685484385) >= 2)
      {
        if (mSelector != 1685287012)
        {
          if (mSelector != 1702248804)
          {
            goto LABEL_77;
          }

          v5 = *(this + 718);
        }

        return v5 & 1;
      }

      goto LABEL_68;
    }

    if (mSelector != 1685087596)
    {
      if (mSelector == 1685278529)
      {
        return v5 & 1;
      }

      v7 = 1685278578;
      goto LABEL_75;
    }

    goto LABEL_53;
  }

  if (mSelector <= 1668575851)
  {
    if (mSelector <= 1634429293)
    {
      if (mSelector != 1633970543)
      {
        if (mSelector == 1634038341)
        {
          return v5 & 1;
        }

        v7 = 1634038357;
        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (mSelector == 1634429294)
    {
      return v5 & 1;
    }

    if (mSelector != 1634690672)
    {
      v7 = 1668049764;
      goto LABEL_75;
    }

    goto LABEL_53;
  }

  if (mSelector <= 1684107363)
  {
    if (mSelector == 1668575852 || mSelector == 1668639076)
    {
      return v5 & 1;
    }

    v8 = 1668641652;
LABEL_67:
    if (mSelector != v8)
    {
      goto LABEL_77;
    }

    goto LABEL_68;
  }

  if (mSelector <= 1684434035)
  {
    if (mSelector != 1684107364)
    {
      v7 = 1684236338;
      goto LABEL_75;
    }

    return v5 & 1;
  }

  if (mSelector == 1684434036)
  {
    return v5 & 1;
  }

  v7 = 1684893796;
LABEL_75:
  if (mSelector == v7)
  {
    return v5 & 1;
  }

LABEL_77:

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

BOOL ADS::Device::HasProperty(ADS::Device *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (*(this + 2) != a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  mSelector = a4->mSelector;
  v6 = 1;
  if (a4->mSelector > 1751740258)
  {
    if (mSelector > 1853059699)
    {
      if (mSelector <= 1936618860)
      {
        if (mSelector <= 1935892847)
        {
          if (mSelector == 1853059700 || mSelector == 1919512167)
          {
            return v6 & 1;
          }

          if (mSelector != 1935763060)
          {
            goto LABEL_91;
          }

LABEL_71:
          mScope = a4->mScope;
          if (mScope == 1869968496 || mScope == 1768845428)
          {
            goto LABEL_90;
          }

          goto LABEL_73;
        }

        if (mSelector != 1935892848)
        {
          if (mSelector != 1936092276)
          {
            if (mSelector != 1936290671)
            {
              goto LABEL_91;
            }

            v6 = *(this + 716);
          }

          return v6 & 1;
        }

        goto LABEL_90;
      }

      if (mSelector <= 1937009954)
      {
        if (mSelector == 1936618861)
        {
          return v6 & 1;
        }

        if (mSelector != 1936879204)
        {
          v10 = 1937008739;
          goto LABEL_85;
        }

        goto LABEL_71;
      }

      if (mSelector <= 1969841183)
      {
        if (mSelector != 1937009955)
        {
          v10 = 1953653102;
          goto LABEL_85;
        }

        goto LABEL_90;
      }

      if (mSelector == 1969841184)
      {
        return v6 & 1;
      }

      v11 = 1986294896;
    }

    else
    {
      if (mSelector > 1818454125)
      {
        if (mSelector <= 1819173228)
        {
          if (mSelector == 1818454126 || mSelector == 1818850926)
          {
            return v6 & 1;
          }

          v10 = 1819107691;
          goto LABEL_85;
        }

        if (mSelector > 1836411235)
        {
          if (mSelector == 1836411236)
          {
            return v6 & 1;
          }

          v10 = 1853059619;
          goto LABEL_85;
        }

        if (mSelector == 1819173229)
        {
          return v6 & 1;
        }

        if (mSelector != 1819569763)
        {
          goto LABEL_91;
        }

        v8 = a4->mScope;
        v9 = v8 == 1768845428 || v8 == 1869968496;
LABEL_100:
        v6 = v9;
        return v6 & 1;
      }

      if (mSelector <= 1768515183)
      {
        if (mSelector == 1751740259 || mSelector == 1752197475)
        {
          return v6 & 1;
        }

        v10 = 1752525155;
        goto LABEL_85;
      }

      if (mSelector == 1768515184 || mSelector == 1768777573)
      {
        return v6 & 1;
      }

      v11 = 1769302372;
    }

    if (mSelector != v11)
    {
      goto LABEL_91;
    }

    v13 = atomic_load(this + 214);
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_91;
    }

    v9 = a4->mScope == 1735159650 && a4->mElement == 0;
    goto LABEL_100;
  }

  if (mSelector > 1685278528)
  {
    if (mSelector > 1718841205)
    {
      if (mSelector > 1735354733)
      {
        if (mSelector == 1735354734 || mSelector == 1751737454)
        {
          return v6 & 1;
        }

        v10 = 1751738723;
      }

      else
      {
        if (mSelector == 1718841206 || mSelector == 1719105134)
        {
          return v6 & 1;
        }

        v10 = 1719301235;
      }

      goto LABEL_85;
    }

    if (mSelector > 1685484384)
    {
      if ((mSelector - 1685484385) >= 2)
      {
        if (mSelector == 1702248804)
        {
          v6 = *(this + 718);
          return v6 & 1;
        }

        if (mSelector != 1702392685)
        {
          goto LABEL_91;
        }

        v6 = *(this + 717);
      }

      return v6 & 1;
    }

    if (mSelector == 1685278529)
    {
      return v6 & 1;
    }

    if (mSelector != 1685278578)
    {
      v7 = 1685287012;
      goto LABEL_89;
    }

    v15 = atomic_load(this + 214);
    if ((v15 & 0x400) == 0)
    {
      v16 = atomic_load(this + 214);
      if ((v16 & 0x800) == 0)
      {
LABEL_73:
        v6 = 0;
        return v6 & 1;
      }
    }

    v17 = a4->mScope;
    v18 = 1768845428;
    goto LABEL_99;
  }

  if (mSelector <= 1668639075)
  {
    if (mSelector <= 1634429293)
    {
      if (mSelector == 1633970543 || mSelector == 1634038341)
      {
        return v6 & 1;
      }

      v10 = 1634038357;
    }

    else
    {
      if (mSelector <= 1668049763)
      {
        if (mSelector != 1634429294)
        {
          v7 = 1634690672;
          goto LABEL_89;
        }

        return v6 & 1;
      }

      if (mSelector == 1668049764)
      {
        return v6 & 1;
      }

      v10 = 1668575852;
    }

LABEL_85:
    if (mSelector != v10)
    {
      goto LABEL_91;
    }

    return v6 & 1;
  }

  if (mSelector > 1684236337)
  {
    if (mSelector <= 1684893795)
    {
      if (mSelector != 1684236338)
      {
        v10 = 1684434036;
        goto LABEL_85;
      }

      goto LABEL_71;
    }

    if (mSelector != 1684893796)
    {
      v7 = 1685087596;
      goto LABEL_89;
    }

LABEL_90:
    v6 = *(this + 3) != 1633905771;
    return v6 & 1;
  }

  if (mSelector == 1668639076)
  {
    v17 = *(this + 3);
    v18 = 1633905771;
LABEL_99:
    v9 = v17 == v18;
    goto LABEL_100;
  }

  if (mSelector == 1668641652)
  {
    return v6 & 1;
  }

  v7 = 1684107364;
LABEL_89:
  if (mSelector == v7)
  {
    goto LABEL_90;
  }

LABEL_91:

  return ADS::BaseObject::HasProperty(this, a2, a3, a4);
}

void ADS::Device::~Device(ADS::Device *this)
{
  ADS::Device::~Device(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596C9A8;
  v2 = *(this + 118);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 104);
  if (v3)
  {
    CFRelease(v3);
  }

  OS::CF::UntypedObject::~UntypedObject((this + 816));
  OS::CF::UntypedObject::~UntypedObject((this + 800));
  OS::CF::UntypedObject::~UntypedObject((this + 784));
  CAExtAudioFile::~CAExtAudioFile((this + 688));
  v4 = *(this + 85);
  if (v4)
  {
    CFRelease(v4);
  }

  OS::CF::UntypedObject::~UntypedObject((this + 600));
  v5 = *(this + 72);
  if (v5)
  {
    *(this + 73) = v5;
    operator delete(v5);
  }

  v6 = *(this + 59);
  if (v6)
  {
    *(this + 60) = v6;
    operator delete(v6);
  }

  v7 = *(this + 56);
  if (v7)
  {
    *(this + 57) = v7;
    operator delete(v7);
  }

  v8 = *(this + 53);
  if (v8)
  {
    *(this + 54) = v8;
    operator delete(v8);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 51));
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(this + 360);
  CADeprecated::CAMutex::~CAMutex((this + 272));
  CADeprecated::CAMutex::~CAMutex((this + 184));
  OS::CF::UntypedObject::~UntypedObject((this + 168));
  OS::CF::UntypedObject::~UntypedObject((this + 152));
  OS::CF::UntypedObject::~UntypedObject((this + 136));
  OS::CF::UntypedObject::~UntypedObject((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

void CAExtAudioFile::~CAExtAudioFile(CAExtAudioFile *this)
{
  *this = &unk_1F596CAB8;
  CAExtAudioFile::Close(this);
}

{
  CAExtAudioFile::~CAExtAudioFile(this);

  JUMPOUT(0x1E12C1730);
}

void CAExtAudioFile::CheckProperty(CAExtAudioFile *this, int a2, const char *a3, int a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6[0] = HIBYTE(a4);
    v6[1] = BYTE2(a4);
    v6[2] = BYTE1(a4);
    v6[3] = a4;
    v6[4] = 0;
    snprintf(__str, 0x80uLL, "%s ('%s') failed", a3, v6);
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, __str, a2);
  }
}

void CAXException::CAXException(CAXException *this, const char *__s, int a3)
{
  *this = &unk_1F5971690;
  *(this + 66) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy(this + 8, __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 2);
      *(this + 56) = *(__s + 3);
      *(this + 40) = v7;
      *(this + 24) = v6;
      *(this + 8) = v5;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 6);
      *(this + 120) = *(__s + 7);
      *(this + 104) = v10;
      *(this + 88) = v9;
      *(this + 72) = v8;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 10);
      *(this + 184) = *(__s + 11);
      *(this + 168) = v13;
      *(this + 152) = v12;
      *(this + 136) = v11;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(this + 247) = *(__s + 239);
      *(this + 232) = v16;
      *(this + 216) = v15;
      *(this + 200) = v14;
      *(this + 263) = 0;
    }
  }

  else
  {
    *(this + 8) = 0;
  }
}

void CAExtAudioFile::Check(CAExtAudioFile *this, int a2, const char *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    snprintf(__str, 0x80uLL, "%s failed", a3);
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, __str, a2);
  }
}

void ADS::Device::Deactivate(ADS::Device *this)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = (this + 184);
  v2 = *(this + 23);
  v22 = this + 184;
  v4 = (*(v2 + 16))(this + 184);
  v23 = v4;
  v20 = v3 + 11;
  v5 = (*(v3[11] + 16))(v3 + 11);
  v21 = v5;
  *(this + 112) = 0;
  memset(v24, 0, sizeof(v24));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v24, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
  v16 = v4;
  memset(v25, 0, sizeof(v25));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v25, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
  v26 = 0;
  v27[0] = 0;
  v27[1] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v26, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
  for (i = 0; i != 9; i += 3)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v17, v24[i], v24[i + 1], (v24[i + 1] - v24[i]) >> 2);
    v7 = v17;
    v8 = v18;
    for (j = v17; j != v8; ++j)
    {
      v10 = ADS::ObjectManager::CopyObjectByObjectID(*j);
      v12 = v10;
      if (v10)
      {
        (*(*v10 + 8))(v10);
        ADS::ObjectManager::ReleaseObject(v12, v13);
      }

      ADS::ObjectManager::ReleaseObject(v12, v11);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }

  for (k = 0; k != -9; k -= 3)
  {
    v15 = v27[k - 1];
    if (v15)
    {
      v27[k] = v15;
      operator delete(v15);
    }
  }

  *(this + 54) = *(this + 53);
  *(this + 57) = *(this + 56);
  *(this + 60) = *(this + 59);
  if (v5)
  {
    (*(v3[11] + 24))(v3 + 11);
  }

  if (v16)
  {
    (*(*v3 + 24))(v3);
  }
}

void sub_1DE3F4A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ADS::Device::Activate(ADS::Device *this)
{
  v16[2] = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v13, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
  memset(v14, 0, sizeof(v14));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v14, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
  v15 = 0;
  v16[0] = 0;
  v16[1] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v15, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
  for (i = 0; i != 9; i += 3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v10, v13[i], v13[i + 1], (v13[i + 1] - v13[i]) >> 2);
    v3 = v10;
    v4 = v11;
    for (j = v10; j != v4; ++j)
    {
      v6 = ADS::ObjectManager::CopyObjectByObjectID(*j);
      (**v6)(v6);
      ADS::ObjectManager::ReleaseObject(v6, v7);
    }

    if (v3)
    {
      operator delete(v3);
    }
  }

  for (k = 0; k != -9; k -= 3)
  {
    v9 = v16[k - 1];
    if (v9)
    {
      v16[k] = v9;
      operator delete(v9);
    }
  }

  *(this + 112) = 1;
}

uint64_t ADS::Device::Device(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a1;
  v346 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  *(a1 + 12) = 0x616F626A61646576;
  *(a1 + 20) = a3;
  *(a1 + 24) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *a1 = &unk_1F596C9A8;
  OS::CF::String::String((a1 + 120), "Unnamed Device");
  OS::CF::String::String((v5 + 136), "Apple Inc.");
  v6 = *MEMORY[0x1E695E478];
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E478], 0, @"TestDevice_%u", a2);
  *(v5 + 152) = &unk_1F5991188;
  *(v5 + 160) = v7;
  *(v5 + 168) = &unk_1F5991188;
  *(v5 + 176) = @"SimulatorDeviceModelUID";
  CADeprecated::CAMutex::CAMutex((v5 + 184), "Device State");
  CADeprecated::CAMutex::CAMutex((v5 + 272), "IO Mutex");
  *__p = a2;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 392) = 1065353216;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v5 + 360), a2, __p);
  *(v5 + 408) = 0;
  *(v5 + 416) = 0;
  v176 = (v5 + 408);
  *(v5 + 400) = v5 + 408;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 456) = 0u;
  *(v5 + 472) = 0u;
  *(v5 + 485) = 0u;
  *(v5 + 504) = 0u;
  *(v5 + 520) = 0u;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 257;
  *(v5 + 554) = 0;
  v177 = (v5 + 556);
  *(v5 + 556) = xmmword_1DE758060;
  *(v5 + 576) = 0;
  *(v5 + 592) = 0;
  *(v5 + 584) = 0;
  OS::CF::String::String((v5 + 600), "/tmp");
  *(v5 + 616) = 0;
  *(v5 + 624) = 10;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 664) = 0u;
  v8 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  *(v5 + 680) = v8;
  v179 = v5;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(v5 + 688) = &unk_1F596CAB8;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0xF424000000000;
  *(v5 + 712) = 0;
  *(v5 + 715) = 0;
  *(v5 + 720) = 0u;
  *(v5 + 736) = 1986622068;
  *(v5 + 744) = 0;
  *(v5 + 792) = 0;
  *(v5 + 752) = 0u;
  *(v5 + 768) = 0u;
  *(v5 + 784) = &unk_1F5991188;
  *(v5 + 808) = 0;
  *(v5 + 800) = &unk_1F5991188;
  *(v5 + 824) = CFDataCreate(0, DUMMY_IMAGE, 4);
  *(v5 + 816) = &unk_1F596CAF8;
  *(v5 + 832) = 0u;
  *(v5 + 848) = 0;
  *(v5 + 852) = 1065353216;
  *(v5 + 864) = 0;
  *(v5 + 896) = 0;
  *(v5 + 904) = 0;
  *(v5 + 912) = 0;
  *(v5 + 920) = 0;
  *(v5 + 928) = 0;
  *(v5 + 932) = 0;
  *(v5 + 888) = 0;
  *(v5 + 872) = 0u;
  *(v5 + 936) = 1;
  *(v5 + 944) = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v301, *(a4 + 8), @"uuid");
  if (v302)
  {
    OS::CF::String::operator=(v5 + 152, v302);
  }

  else
  {
    *&buf[8] = CFUUIDCreate(v6);
    *buf = &unk_1F596CB48;
    *(&v323 + 1) = CFUUIDCreateString(0, *&buf[8]);
    *&v323 = &unk_1F5991188;
    OS::CF::String::AsStdString(__p, &v323);
    if (__p[23] >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = *__p;
    }

    v10 = CFStringCreateWithFormat(v6, 0, @"TestDevice_%s", v9);
    OS::CF::UntypedObject::operator=(v5 + 152, v10);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    OS::CF::UntypedObject::~UntypedObject(&v323);
    OS::CF::UntypedObject::~UntypedObject(buf);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v299, *(a4 + 8), @"model");
  if (v300)
  {
    OS::CF::String::operator=(v5 + 168, v300);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v297, *(a4 + 8), @"name");
  if (v298)
  {
    OS::CF::String::operator=(v5 + 120, v298);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v295, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v293, "name");
    if (v294 < 0)
    {
      operator delete(v293);
    }

    if (v296 < 0)
    {
      operator delete(v295);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v291, *(a4 + 8), @"serial number");
  if (v292)
  {
    OS::CF::String::operator=(v5 + 800, v292);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v289, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v287, "serial number");
    if (v288 < 0)
    {
      operator delete(v287);
    }

    if (v290 < 0)
    {
      operator delete(v289);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v285, *(a4 + 8), @"manufacturer");
  if (v286)
  {
    OS::CF::String::operator=(v5 + 136, v286);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v283, *(a4 + 8), @"firmware version");
  if (v284)
  {
    OS::CF::String::operator=(v5 + 784, v284);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v281, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v279, "firmware version");
    if (v280 < 0)
    {
      operator delete(v279);
    }

    if (v282 < 0)
    {
      operator delete(v281);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v277, *(a4 + 8), @"clock latency");
  if (v278)
  {
    *(v5 + 728) = OS::CF::Number::GetValue<unsigned int>(v278, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v275, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v273, "clock latency");
    if (v274 < 0)
    {
      operator delete(v273);
    }

    if (v276 < 0)
    {
      operator delete(v275);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v271, *(a4 + 8), @"latency");
  if (v272)
  {
    *(v5 + 732) = OS::CF::Number::GetValue<unsigned int>(v272, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v269, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v267, "latency");
    if (v268 < 0)
    {
      operator delete(v267);
    }

    if (v270 < 0)
    {
      operator delete(v269);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v265, *(a4 + 8), @"hidden");
  if (v266)
  {
    *(v5 + 554) = OS::CF::Boolean::AsBool(v266);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v263, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v261, "hidden");
    if (v262 < 0)
    {
      operator delete(v261);
    }

    if (v264 < 0)
    {
      operator delete(v263);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v259, *(a4 + 8), @"ring buffer frame size");
  if (v260)
  {
    v11 = OS::CF::Number::GetValue<unsigned int>(v260, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v257, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v255, "ring buffer frame size");
    if (v256 < 0)
    {
      operator delete(v255);
    }

    if (v258 < 0)
    {
      operator delete(v257);
    }

    v11 = 0x4000;
  }

  *(v5 + 740) = v11;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v253, *(a4 + 8), @"transport type");
  if (v254)
  {
    *(v5 + 736) = OS::CF::Number::GetValue<unsigned int>(v254, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v251, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v249, "transport type");
    if (v250 < 0)
    {
      operator delete(v249);
    }

    if (v252 < 0)
    {
      operator delete(v251);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v247, *(a4 + 8), @"clock domain");
  if (v248)
  {
    *(v5 + 496) = OS::CF::Number::GetValue<unsigned int>(v248, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v245, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v243, "clock domain");
    if (v244 < 0)
    {
      operator delete(v243);
    }

    if (v246 < 0)
    {
      operator delete(v245);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v241, *(a4 + 8), @"related devices");
  v12 = v242;
  if (v242)
  {
    for (i = 0; i < OS::CF::ArrayBase<__CFArray const*>::GetSize(v12); ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::operator[](buf, v241, i);
      OS::CF::UntypedObject::As<OS::CF::Number>(__p, buf);
      OS::CF::UntypedObject::~UntypedObject(buf);
      if (*&__p[8])
      {
        *buf = OS::CF::Number::GetValue<unsigned int>(*&__p[8], 0);
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>((v5 + 360), *buf, buf);
      }

      OS::CF::UntypedObject::~UntypedObject(__p);
      v12 = v242;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v239, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v237, "related devices");
    if (v238 < 0)
    {
      operator delete(v237);
    }

    if (v240 < 0)
    {
      operator delete(v239);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v235, *(a4 + 8), @"custom");
  if (v236)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E9C10];
    while (1)
    {
      if (v14 >= OS::CF::ArrayBase<__CFArray const*>::GetSize(v236))
      {
        goto LABEL_303;
      }

      OS::CF::ArrayBase<__CFArray const*>::operator[](__p, v235, v14);
      OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v313, __p);
      OS::CF::UntypedObject::~UntypedObject(__p);
      if (*type)
      {
        break;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 226;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: Invalid custom property. Skipping and continuing.", __p, 0x12u);
      }

LABEL_302:
      OS::CF::UntypedObject::~UntypedObject(&v313);
      ++v14;
    }

    OS::CF::UntypedObject::UntypedObject(&v233, *type);
    v233 = &unk_1F5991008;
    applesauce::CF::DictionaryRef::from_get(&cf, theDict);
    v16 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v232[0] = v16;
    GetFourCharacterCodeFromKey(&v306, v16, "selector");
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v229[0] = v17;
    GetFourCharacterCodeFromKey(&v230, v17, "scope");
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    *v305 = v18;
    GetFourCharacterCodeFromKey(&v315, v18, "element");
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = v315;
    if (!v306 || !v230 || !v315)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_293:
        if (v19)
        {
          CFRelease(v19);
        }

        if (v230)
        {
          CFRelease(v230);
        }

        if (v306)
        {
          CFRelease(v306);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        OS::CF::UntypedObject::~UntypedObject(&v233);
        goto LABEL_302;
      }

      *__p = 136315394;
      *&__p[4] = "ADS_Device.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 531;
      _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Invalid address for custom property. Skipping this property.", __p, 0x12u);
LABEL_292:
      v19 = v315;
      goto LABEL_293;
    }

    LODWORD(v311) = applesauce::CF::convert_to<unsigned int,0>(v306);
    if (!v230)
    {
      v162 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v162, "Could not construct");
      __cxa_throw(v162, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    HIDWORD(v311) = applesauce::CF::convert_to<unsigned int,0>(v230);
    if (!v315)
    {
      v161 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v161, "Could not construct");
      __cxa_throw(v161, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    LODWORD(v312) = applesauce::CF::convert_to<unsigned int,0>(v315);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v323, theDict, @"type");
    if (!*(&v323 + 1))
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 539;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Cannot create custom property of unknown type. Skipping this property.", __p, 0x12u);
      }

      goto LABEL_291;
    }

    OS::CF::String::AsStdString(__p, &v323);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v316, theDict, @"settable");
    if (v316.__r_.__value_.__l.__size_)
    {
      v20 = OS::CF::Boolean::AsBool(v316.__r_.__value_.__l.__size_);
    }

    else
    {
      v20 = 0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 548;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Missing value for 'settable.' Using default.", buf, 0x12u);
        v20 = 0;
      }
    }

    v304 = v20;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v308, theDict, @"requires set request");
    if (v308.__r_.__value_.__l.__size_)
    {
      v21 = OS::CF::Boolean::AsBool(v308.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = 0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 560;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Missing value for 'requires set request.' Using default.", buf, 0x12u);
        v21 = 0;
      }
    }

    v303 = v21;
    if ((__p[23] & 0x80) == 0)
    {
      if (__p[23] > 5u)
      {
        if (__p[23] <= 9u)
        {
          if (__p[23] != 6)
          {
            goto LABEL_119;
          }

          if (*__p != 1769108595 || *&__p[4] != 26478)
          {
            goto LABEL_187;
          }

LABEL_201:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v321, theDict, @"data");
          if (*v322)
          {
            operator new();
          }

          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_288;
          }

          if (!v306)
          {
            v173 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v173, "Could not construct");
            __cxa_throw(v173, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v41 = applesauce::CF::convert_to<unsigned int,0>(v306);
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 600;
          *&buf[18] = 1024;
          *&buf[20] = v41;
          v38 = v15;
          v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for string type must be a string. Skipping property %u.";
          goto LABEL_287;
        }

LABEL_234:
        if (__p[23] != 10)
        {
          goto LABEL_235;
        }

        if (*__p != 0x616E6F6974636964 || *&__p[8] != 31090)
        {
LABEL_269:
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v54 = applesauce::CF::NumberRef::operator->(&v306);
            v55 = applesauce::CF::convert_to<unsigned int,0>(*v54);
            *buf = 136315650;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 686;
            *&buf[18] = 1024;
            *&buf[20] = v55;
            _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Unsupported custom property type. Skipping property %u.", buf, 0x18u);
          }

          goto LABEL_289;
        }

LABEL_249:
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v321, theDict, @"data");
        if (*v322)
        {
          operator new();
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_288;
        }

        if (!v306)
        {
          v172 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v172, "Could not construct");
          __cxa_throw(v172, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v48 = applesauce::CF::convert_to<unsigned int,0>(v306);
        *buf = 136315650;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 625;
        *&buf[18] = 1024;
        *&buf[20] = v48;
        v38 = v15;
        v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for dictionary type must be a dictionary. Skipping property %u.";
        goto LABEL_287;
      }

      if (__p[23] != 3)
      {
        if (__p[23] != 4)
        {
          if (__p[23] != 5)
          {
            goto LABEL_269;
          }

          if (*__p != 1634692198 || __p[4] != 116)
          {
            goto LABEL_194;
          }

          goto LABEL_148;
        }

        goto LABEL_267;
      }

      if (*__p != 28265 || __p[2] != 116)
      {
        goto LABEL_269;
      }

LABEL_181:
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v321, theDict, @"data");
      if (*v322)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(buf, theDict, @"supported values");
        OS::CF::Number::GetValue<unsigned int>(*v322, 0);
        operator new();
      }

      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_288;
      }

      if (!v306)
      {
        v170 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v170, "Could not construct");
        __cxa_throw(v170, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v37 = applesauce::CF::convert_to<unsigned int,0>(v306);
      *buf = 136315650;
      *&buf[4] = "ADS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 573;
      *&buf[18] = 1024;
      *&buf[20] = v37;
      v38 = v15;
      v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for int type must be a number. Skipping property %u.";
      goto LABEL_287;
    }

    v22 = *&__p[8];
    if (*&__p[8] == 3)
    {
      if (**__p == 28265 && *(*__p + 2) == 116)
      {
        goto LABEL_181;
      }
    }

    else
    {
      if (*&__p[8] == 5)
      {
        v23 = **__p == 1634692198 && *(*__p + 4) == 116;
        if (v23)
        {
LABEL_148:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v321, theDict, @"data");
          if (*v322)
          {
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(buf, theDict, @"supported values");
            OS::CF::Number::GetValue<float>(*v322);
            operator new();
          }

          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_288;
          }

          if (!v306)
          {
            v171 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v171, "Could not construct");
            __cxa_throw(v171, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v40 = applesauce::CF::convert_to<unsigned int,0>(v306);
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 587;
          *&buf[18] = 1024;
          *&buf[20] = v40;
          v38 = v15;
          v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for float type must be a number. Skipping property %u.";
          goto LABEL_287;
        }

        if ((__p[23] & 0x80) == 0)
        {
          goto LABEL_191;
        }

        v22 = *&__p[8];
      }

      if (v22 == 6)
      {
        if (**__p == 1769108595 && *(*__p + 4) == 26478)
        {
          goto LABEL_201;
        }

        if ((__p[23] & 0x80) == 0)
        {
          if (__p[23] > 6u)
          {
            if (__p[23] == 7)
            {
              goto LABEL_204;
            }

            goto LABEL_234;
          }

          if (__p[23] != 4)
          {
            if (__p[23] == 5)
            {
              goto LABEL_194;
            }

            if (__p[23] != 6)
            {
              goto LABEL_269;
            }

LABEL_187:
            if (*__p != 1651340654 || *&__p[4] != 29285)
            {
              goto LABEL_191;
            }

LABEL_231:
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v321, theDict, @"data");
            if (*v322)
            {
              operator new();
            }

            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_288;
            }

            if (!v306)
            {
              v175 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v175, "Could not construct");
              __cxa_throw(v175, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v51 = applesauce::CF::convert_to<unsigned int,0>(v306);
            *buf = 136315650;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 613;
            *&buf[18] = 1024;
            *&buf[20] = v51;
            v38 = v15;
            v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for number type must be a number. Skipping property %u.";
            goto LABEL_287;
          }

          goto LABEL_267;
        }

        v27 = *&__p[8];
        if (*&__p[8] != 6)
        {
          goto LABEL_155;
        }

        if (**__p == 1651340654 && *(*__p + 4) == 29285)
        {
          goto LABEL_231;
        }
      }
    }

    v27 = *&__p[8];
LABEL_155:
    if (v27 != 10)
    {
      goto LABEL_162;
    }

    if (**__p == 0x616E6F6974636964 && *(*__p + 8) == 31090)
    {
      goto LABEL_249;
    }

    if ((__p[23] & 0x80) != 0)
    {
      v27 = *&__p[8];
LABEL_162:
      if (v27 != 5)
      {
        goto LABEL_168;
      }

      if (**__p == 1634890337 && *(*__p + 4) == 121)
      {
LABEL_199:
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v321, theDict, @"data");
        if (*v322)
        {
          operator new();
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_288;
        }

        if (!v306)
        {
          v174 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v174, "Could not construct");
          __cxa_throw(v174, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v42 = applesauce::CF::convert_to<unsigned int,0>(v306);
        *buf = 136315650;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 637;
        *&buf[18] = 1024;
        *&buf[20] = v42;
        v38 = v15;
        v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for array type must be an array. Skipping property %u.";
        goto LABEL_287;
      }

      if ((__p[23] & 0x80) != 0)
      {
LABEL_168:
        v30 = *&__p[8];
        if (*&__p[8] == 15)
        {
          if (**__p == 0x6C61766F69647561 && *(*__p + 7) == 0x65676E617265756CLL)
          {
            goto LABEL_241;
          }

          if ((__p[23] & 0x80) == 0)
          {
            if (__p[23] != 4)
            {
LABEL_119:
              if (__p[23] != 7)
              {
                goto LABEL_269;
              }

LABEL_204:
              if (*__p != 1819242338 || *&__p[3] != 1851876716)
              {
                goto LABEL_269;
              }

              goto LABEL_209;
            }

            goto LABEL_267;
          }

          v30 = *&__p[8];
        }

        if (v30 != 7)
        {
          goto LABEL_275;
        }

        if (**__p == 1819242338 && *(*__p + 3) == 1851876716)
        {
LABEL_209:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v321, theDict, @"data");
          if (*v322)
          {
            operator new();
          }

          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_288;
          }

          v43 = applesauce::CF::NumberRef::operator->(&v306);
          v44 = applesauce::CF::convert_to<unsigned int,0>(*v43);
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 665;
          *&buf[18] = 1024;
          *&buf[20] = v44;
          v38 = v15;
          v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for BOOLean type must be a BOOLean. Skipping property %u.";
          goto LABEL_287;
        }

        if ((__p[23] & 0x80) != 0)
        {
LABEL_275:
          if (*&__p[8] != 4)
          {
            goto LABEL_269;
          }

          v53 = *__p;
LABEL_268:
          if (*v53 != 1635017060)
          {
            goto LABEL_269;
          }

          *v322 = 0;
          v321 = &unk_1F596CAF8;
          if (theDict)
          {
            *buf = 0;
            if (CFDictionaryGetValueIfPresent(theDict, @"data", buf))
            {
              v56 = *buf ? CFGetTypeID(*buf) : 0;
              if (v56 == CFDataGetTypeID())
              {
                v57 = *buf;
                if (*buf)
                {
                  CFRetain(*buf);
                  v58 = v57;
                }

                else
                {
                  v58 = 0;
                }

                OS::CF::UntypedObject::operator=(&v321, v58);
              }
            }

            if (*v322)
            {
              v319 = *v322;
              std::allocate_shared[abi:ne200100]<ADS::CFProperty,std::allocator<ADS::CFProperty>,AudioObjectPropertyAddress &,BOOL &,BOOL &,__CFData const*,0>(buf, &v311, &v304, &v303, &v319);
            }
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v59 = applesauce::CF::NumberRef::operator->(&v306);
            v60 = applesauce::CF::convert_to<unsigned int,0>(*v59);
            *buf = 136315650;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 677;
            *&buf[18] = 1024;
            *&buf[20] = v60;
            v38 = v15;
            v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for binary data type must be valid. Skipping property %u.";
            goto LABEL_287;
          }

          goto LABEL_288;
        }
      }

      if (__p[23] != 4)
      {
        goto LABEL_269;
      }

LABEL_267:
      v53 = __p;
      goto LABEL_268;
    }

LABEL_191:
    if (__p[23] <= 6u)
    {
      if (__p[23] != 4)
      {
        if (__p[23] != 5)
        {
          goto LABEL_269;
        }

LABEL_194:
        if (*__p != 1634890337 || __p[4] != 121)
        {
          goto LABEL_269;
        }

        goto LABEL_199;
      }

      goto LABEL_267;
    }

    if (__p[23] == 7)
    {
      goto LABEL_204;
    }

LABEL_235:
    if (__p[23] != 15)
    {
      goto LABEL_269;
    }

    if (*__p != 0x6C61766F69647561 || *&__p[7] != 0x65676E617265756CLL)
    {
      goto LABEL_269;
    }

LABEL_241:
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v321, theDict, @"data");
    if (*v322)
    {
      OS::CF::UntypedObject::UntypedObject(&v319, *v322);
      v319 = &unk_1F59910D0;
      ADS::Device::getRangeOptFromArray(buf, &v319);
      OS::CF::UntypedObject::~UntypedObject(&v319);
      if (buf[16] == 1)
      {
        operator new();
      }

      goto LABEL_288;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v49 = applesauce::CF::NumberRef::operator->(&v306);
      v50 = applesauce::CF::convert_to<unsigned int,0>(*v49);
      *buf = 136315650;
      *&buf[4] = "ADS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 649;
      *&buf[18] = 1024;
      *&buf[20] = v50;
      v38 = v15;
      v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for array type must be an array. Skipping property %u.";
LABEL_287:
      _os_log_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0x18u);
    }

LABEL_288:
    OS::CF::UntypedObject::~UntypedObject(&v321);
LABEL_289:
    OS::CF::UntypedObject::~UntypedObject(&v308);
    OS::CF::UntypedObject::~UntypedObject(&v316);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

LABEL_291:
    OS::CF::UntypedObject::~UntypedObject(&v323);
    goto LABEL_292;
  }

LABEL_303:
  v178 = (v5 + 400);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v232, *(a4 + 8), @"type");
  if (!v232[1])
  {
    goto LABEL_322;
  }

  OS::CF::String::AsStdString(__p, v232);
  if ((__p[23] & 0x80000000) != 0)
  {
    if (*&__p[8] != 5)
    {
      operator delete(*__p);
      goto LABEL_322;
    }

    v63 = **__p != 1668246627 || *(*__p + 4) != 107;
    operator delete(*__p);
    if (!v63)
    {
      goto LABEL_320;
    }

LABEL_322:
    if (*(v5 + 12) == 1633905771)
    {
      goto LABEL_323;
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v230, *(a4 + 8), @"streams");
    v70 = *v231;
    if (*v231)
    {
      v71 = 0;
      v72 = MEMORY[0x1E69E9C10];
      while (1)
      {
        if (v71 >= OS::CF::ArrayBase<__CFArray const*>::GetSize(v70))
        {
          goto LABEL_397;
        }

        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v229, &v230, v71);
        OS::CF::UntypedObject::UntypedObject(&v227, v229[1]);
        v227 = &unk_1F5991008;
        if (*(v5 + 12) == 1633905771)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 827;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddStream: Clock devices cannot have streams.", __p, 0x12u);
          }

          v160 = __cxa_allocate_exception(0x10uLL);
          *v160 = off_1F5991DD8;
          v160[2] = 1970171760;
        }

        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v319, v228, @"is input");
        if (v320)
        {
          break;
        }

        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 833;
          _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - 'is input' missing or invalid.", __p, 0x12u);
        }

LABEL_389:
        OS::CF::UntypedObject::~UntypedObject(&v319);
        OS::CF::UntypedObject::~UntypedObject(&v227);
        OS::CF::UntypedObject::~UntypedObject(v229);
        ++v71;
        v70 = *v231;
      }

      OS::CF::Boolean::AsBool(v320);
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v317, v228, @"basic description");
      if (*v318)
      {
        OS::CF::UntypedObject::UntypedObject(&v313, *v318);
        v313 = &unk_1F5991008;
        ADS::Device::ASBDfromDictionary(&v323, &v313);
        OS::CF::UntypedObject::~UntypedObject(&v313);
        *__p = v323;
        *&__p[16] = v324;
        *v330 = v325;
        if (ADS::Device::isASBDValid(__p, v73))
        {
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v311, v228, @"supported formats");
          v74 = v312;
          if (v312)
          {
            v75 = 0;
            *&v316.__r_.__value_.__r.__words[1] = 0uLL;
            v316.__r_.__value_.__r.__words[0] = &v316.__r_.__value_.__l.__size_;
            while (v75 < OS::CF::ArrayBase<__CFArray const*>::GetSize(v74))
            {
              memset(v330, 0, sizeof(v330));
              memset(__p, 0, sizeof(__p));
              OS::CF::ArrayBase<__CFArray const*>::operator[](&v306, &v311, v75);
              OS::CF::UntypedObject::As<OS::CF::Dictionary>(&cf, &v306);
              OS::CF::UntypedObject::UntypedObject(buf, v310);
              *buf = &unk_1F5991008;
              ADS::Device::ASBDfromDictionary(__p, buf);
              OS::CF::UntypedObject::~UntypedObject(buf);
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v308, v310, @"min sample rate");
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v321, v310, @"max sample rate");
              if (!v308.__r_.__value_.__l.__size_ || ((v76 = OS::CF::Number::GetValue<float>(v308.__r_.__value_.__l.__size_), *&v76 > 0.0) ? (v77 = *v322 == 0) : (v77 = 1), v77 || (v78 = OS::CF::Number::GetValue<float>(*v322), *&v78 <= 0.0)))
              {
                *&v330[16] = *__p;
                *&v330[8] = *__p;
              }

              else
              {
                v79 = OS::CF::Number::GetValue<float>(v308.__r_.__value_.__l.__size_);
                *&v330[8] = *&v79;
                v80 = OS::CF::Number::GetValue<float>(*v322);
                *&v330[16] = *&v80;
              }

              *__p = 0;
              OS::CF::UntypedObject::~UntypedObject(&v321);
              OS::CF::UntypedObject::~UntypedObject(&v308);
              OS::CF::UntypedObject::~UntypedObject(&cf);
              OS::CF::UntypedObject::~UntypedObject(&v306);
              *buf = *__p;
              *&buf[16] = *&__p[16];
              v327 = *v330;
              if (ADS::Device::isASBDValid(buf, v81))
              {
                *buf = *__p;
                *&buf[16] = *&__p[16];
                v327 = *v330;
                v328 = *&v330[8];
                if (!*std::__tree<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::__find_equal<CAStreamRangedDescription>(&v316, &v308, buf))
                {
                  operator new();
                }
              }

              else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                CA::StreamDescription::AsString(&v308, &v323, v82, v83);
                v84 = &v308;
                if ((v308.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v84 = v308.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 872;
                *&buf[18] = 2080;
                *&buf[20] = v84;
                _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: Skipping supported format %s for this stream", buf, 0x1Cu);
                if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v308.__r_.__value_.__l.__data_);
                }
              }

              ++v75;
              v74 = v312;
            }

            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v308, v228, @"terminal type");
            if (v308.__r_.__value_.__l.__size_)
            {
              OS::CF::Number::GetValue<unsigned int>(v308.__r_.__value_.__l.__size_, 0);
            }

            else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 882;
              _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: 'terminal type' missing or invalid. Using default value.", __p, 0x12u);
            }

            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v321, v228, @"is reference");
            if (*v322)
            {
              *(v5 + 928) = OS::CF::Boolean::AsBool(*v322);
            }

            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v306, v228, @"latency");
            v87 = v307;
            if (v307)
            {
              v87 = OS::CF::Number::GetValue<unsigned int>(v307, 0);
            }

            LODWORD(v315) = ADS::ObjectManager::GetNextObjectID(v87);
            operator new();
          }

          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 857;
            _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - 'supported formats' missing or invalid.", __p, 0x12u);
          }

          OS::CF::UntypedObject::~UntypedObject(&v311);
          goto LABEL_388;
        }

        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 849;
          v85 = v72;
          v86 = "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - bad ASBD.";
          goto LABEL_377;
        }
      }

      else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 842;
        v85 = v72;
        v86 = "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - 'basic description' missing or invalid.";
LABEL_377:
        _os_log_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_DEFAULT, v86, __p, 0x12u);
      }

LABEL_388:
      OS::CF::UntypedObject::~UntypedObject(&v317);
      goto LABEL_389;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315394;
      *&__p[4] = "ADS_Device.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 251;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: No streams to instantiate", __p, 0x12u);
    }

LABEL_397:
    if (*(v5 + 12) == 1633905771)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 1239;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::updateSupportedSampleRates: clock devices do not have streams to populate the list of supported sample rates.", __p, 0x12u);
      }

      v164 = __cxa_allocate_exception(0x10uLL);
      *v164 = off_1F5991DD8;
      v164[2] = 1970171760;
    }

    *&buf[16] = 0;
    *&buf[8] = 0;
    *buf = &buf[8];
    memset(__p, 0, 24);
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *(v5 + 424), *(v5 + 432), (*(v5 + 432) - *(v5 + 424)) >> 2);
    *v330 = 0uLL;
    *&__p[24] = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p[24], *(v5 + 448), *(v5 + 456), (*(v5 + 456) - *(v5 + 448)) >> 2);
    for (j = 0; j != 48; j += 24)
    {
      v323 = 0uLL;
      *&v324 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v323, *&__p[j], *&__p[j + 8], (*&__p[j + 8] - *&__p[j]) >> 2);
      v89 = v323;
      for (k = v323; k != *(&v89 + 1); ++k)
      {
        v91 = ADS::ObjectManager::CopyObjectByObjectID(*k);
        *&v316.__r_.__value_.__r.__words[1] = 0uLL;
        v316.__r_.__value_.__r.__words[0] = &v316.__r_.__value_.__l.__size_;
        v92 = *(v91 + 21);
        if (v92 != (v91 + 176))
        {
          do
          {
            *&v308.__r_.__value_.__l.__data_ = *(v92 + 9);
            std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(&v316, &v308, *&v308.__r_.__value_.__l.__data_, *&v308.__r_.__value_.__l.__size_);
            v93 = v92[1];
            if (v93)
            {
              do
              {
                v94 = v93;
                v93 = *v93;
              }

              while (v93);
            }

            else
            {
              do
              {
                v94 = v92[2];
                v23 = *v94 == v92;
                v92 = v94;
              }

              while (!v23);
            }

            v92 = v94;
          }

          while (v94 != (v91 + 176));
          v95 = v316.__r_.__value_.__r.__words[0];
          if (v316.__r_.__value_.__l.__data_ != &v316.__r_.__value_.__r.__words[1])
          {
            do
            {
              *&v308.__r_.__value_.__l.__data_ = *(v95 + 32);
              std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(buf, &v308, *&v308.__r_.__value_.__l.__data_, *&v308.__r_.__value_.__l.__size_);
              v96 = *(v95 + 8);
              if (v96)
              {
                do
                {
                  v97 = v96;
                  v96 = v96->__r_.__value_.__r.__words[0];
                }

                while (v96);
              }

              else
              {
                do
                {
                  v97 = *(v95 + 16);
                  v23 = v97->__r_.__value_.__r.__words[0] == v95;
                  v95 = v97;
                }

                while (!v23);
              }

              v95 = v97;
            }

            while (v97 != &v316.__r_.__value_.__r.__words[1]);
          }
        }

        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v316.__r_.__value_.__l.__size_);
        ADS::ObjectManager::ReleaseObject(v91, v98);
      }

      v5 = v179;
      if (v89)
      {
        operator delete(v89);
      }
    }

    for (m = 0; m != -48; m -= 24)
    {
      v100 = *&__p[m + 24];
      if (v100)
      {
        *&__p[m + 32] = v100;
        operator delete(v100);
      }
    }

    if (v178 == buf)
    {
LABEL_448:
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*&buf[8]);
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, *(a4 + 8), @"preferred channel stereo L");
      if (*&buf[8])
      {
        *v177 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v225, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v223, "preferred channel stereo L");
        if (v224 < 0)
        {
          operator delete(v223);
        }

        if (v226 < 0)
        {
          operator delete(v225);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v323, *(a4 + 8), @"preferred channel stereo R");
      if (*(&v323 + 1))
      {
        *(v179 + 560) = OS::CF::Number::GetValue<unsigned int>(*(&v323 + 1), 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v221, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v219, "preferred channel stereo R");
        if (v220 < 0)
        {
          operator delete(v219);
        }

        if (v222 < 0)
        {
          operator delete(v221);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v316, *(a4 + 8), @"safety offset");
      if (v316.__r_.__value_.__l.__size_)
      {
        *(v179 + 744) = OS::CF::Number::GetValue<unsigned int>(v316.__r_.__value_.__l.__size_, 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v217, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v215, "safety offset");
        if (v216 < 0)
        {
          operator delete(v215);
        }

        if (v218 < 0)
        {
          operator delete(v217);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v308, *(a4 + 8), @"can be content default");
      if (v308.__r_.__value_.__l.__size_)
      {
        *(v179 + 552) = OS::CF::Boolean::AsBool(v308.__r_.__value_.__l.__size_);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v213, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v211, "can be content default");
        if (v212 < 0)
        {
          operator delete(v211);
        }

        if (v214 < 0)
        {
          operator delete(v213);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v321, *(a4 + 8), @"can be system default");
      if (*v322)
      {
        *(v179 + 553) = OS::CF::Boolean::AsBool(*v322);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v209, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v207, "can be system default");
        if (v208 < 0)
        {
          operator delete(v207);
        }

        if (v210 < 0)
        {
          operator delete(v209);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v319, *(a4 + 8), @"supports catchup mode");
      if (v320)
      {
        v111 = OS::CF::Boolean::AsBool(v320);
        *(v179 + 704) = v111;
        if (!v111)
        {
          goto LABEL_493;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v205, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v203, "supports catchup mode");
        if (v204 < 0)
        {
          operator delete(v203);
        }

        if (v206 < 0)
        {
          operator delete(v205);
        }

        if (!*(v179 + 704))
        {
LABEL_493:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v317, *(a4 + 8), @"supports Isolated IO");
          if (*v318)
          {
            *(v179 + 716) = OS::CF::Boolean::AsBool(*v318);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v313, *(a4 + 8), @"supports external secure mute");
          if (*type)
          {
            *(v179 + 717) = OS::CF::Boolean::AsBool(*type);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v311, *(a4 + 8), @"supports external voice activity detection");
          if (v312)
          {
            *(v179 + 718) = OS::CF::Boolean::AsBool(v312);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&cf, *(a4 + 8), @"audio out directory");
          if (!v310)
          {
            std::string::basic_string[abi:ne200100]<0>(&v197, "ADS::Device::Device");
            std::string::basic_string[abi:ne200100]<0>(&v195, "audio out directory");
            if (v196 < 0)
            {
              operator delete(v195);
            }

            if (v198 < 0)
            {
              operator delete(v197);
            }

            goto LABEL_513;
          }

          OS::CF::String::AsStdString(__p, &cf);
          if (__p[23] >= 0)
          {
            v112 = __p;
          }

          else
          {
            v112 = *__p;
          }

          v113 = access(v112, 2);
          v114 = v113;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (v114)
            {
LABEL_505:
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 359;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Provided filepath for audio out is not writeable. Reverting to default.", __p, 0x12u);
              }

              goto LABEL_513;
            }
          }

          else if (v113)
          {
            goto LABEL_505;
          }

          OS::CF::String::operator=(v179 + 600, v310);
LABEL_513:
          OS::CF::UntypedObject::~UntypedObject(&cf);
          OS::CF::UntypedObject::~UntypedObject(&v311);
          OS::CF::UntypedObject::~UntypedObject(&v313);
          OS::CF::UntypedObject::~UntypedObject(&v317);
          OS::CF::UntypedObject::~UntypedObject(&v319);
          OS::CF::UntypedObject::~UntypedObject(&v321);
          OS::CF::UntypedObject::~UntypedObject(&v308);
          OS::CF::UntypedObject::~UntypedObject(&v316);
          OS::CF::UntypedObject::~UntypedObject(&v323);
          OS::CF::UntypedObject::~UntypedObject(buf);
          OS::CF::UntypedObject::~UntypedObject(&v230);
          goto LABEL_514;
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(__p, *(a4 + 8), @"frames to save");
      if (*&__p[8])
      {
        *(v179 + 708) = OS::CF::Number::GetValue<unsigned int>(*&__p[8], 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v201, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v199, "frames to save");
        if (v200 < 0)
        {
          operator delete(v199);
        }

        if (v202 < 0)
        {
          operator delete(v201);
        }
      }

      OS::CF::UntypedObject::~UntypedObject(__p);
      goto LABEL_493;
    }

    v101 = *buf;
    if (*(v179 + 416))
    {
      v102 = *v178;
      *v178 = v176;
      (*v176)[2] = 0;
      *v176 = 0;
      v176[1] = 0;
      if (v102[1])
      {
        v103 = v102[1];
      }

      else
      {
        v103 = v102;
      }

      if (v103)
      {
        v104 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v103);
        if (v101 != &buf[8])
        {
          v105 = v101;
          do
          {
            v106 = v103;
            v103 = v104;
            *(v106 + 2) = *(v105 + 2);
            leaf_high = std::__tree<ADS::AudioValueRangeWrapper>::__find_leaf_high(v178, __p, *(v106 + 4), *(v106 + 5));
            std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v178, *__p, leaf_high, v106);
            if (v104)
            {
              v104 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v104);
            }

            else
            {
              v104 = 0;
            }

            v108 = *(v105 + 1);
            if (v108)
            {
              do
              {
                v101 = v108;
                v108 = *v108;
              }

              while (v108);
            }

            else
            {
              do
              {
                v101 = *(v105 + 2);
                v23 = *v101 == v105;
                v105 = v101;
              }

              while (!v23);
            }

            if (!v103)
            {
              break;
            }

            v105 = v101;
          }

          while (v101 != &buf[8]);
        }

        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v103);
        if (!v104)
        {
          goto LABEL_446;
        }

        for (n = v104[2]; n; n = n[2])
        {
          v104 = n;
        }

        v110 = v104;
      }

      else
      {
        v110 = 0;
      }

      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v110);
    }

LABEL_446:
    if (v101 != &buf[8])
    {
      operator new();
    }

    goto LABEL_448;
  }

  if (__p[23] != 5)
  {
    goto LABEL_322;
  }

  if (*__p != 1668246627 || __p[4] != 107)
  {
    goto LABEL_322;
  }

LABEL_320:
  *(v5 + 12) = 1633905771;
LABEL_323:
  *(v5 + 552) = 0;
  *v177 = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(__p, *(a4 + 8), @"supported sample rates");
  v64 = *&__p[8];
  if (*&__p[8])
  {
    for (ii = 0; ii < OS::CF::ArrayBase<__CFArray const*>::GetSize(v64); ++ii)
    {
      OS::CF::ArrayBase<__CFArray const*>::operator[](&v323, __p, ii);
      OS::CF::UntypedObject::As<OS::CF::Dictionary>(buf, &v323);
      OS::CF::UntypedObject::~UntypedObject(&v323);
      if (*&buf[8])
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v323, *&buf[8], @"min sample rate");
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v316, *&buf[8], @"max sample rate");
        if (*(&v323 + 1) && v316.__r_.__value_.__l.__size_)
        {
          v66 = OS::CF::Number::GetValue<float>(*(&v323 + 1));
          v67 = *&v66;
          v68 = OS::CF::Number::GetValue<float>(v316.__r_.__value_.__l.__size_);
          *&v308.__r_.__value_.__l.__data_ = v67;
          *&v308.__r_.__value_.__l.__size_ = *&v68;
          std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(v178, &v308, v67, *&v68);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v193, "ADS::Device::Device");
          std::string::basic_string[abi:ne200100]<0>(&v191, "supported sample rate range (clock device)");
          if (v192 < 0)
          {
            operator delete(v191);
          }

          if (v194 < 0)
          {
            operator delete(v193);
          }
        }

        OS::CF::UntypedObject::~UntypedObject(&v316);
      }

      else
      {
        OS::CF::ArrayBase<__CFArray const*>::operator[](&v316, __p, ii);
        OS::CF::UntypedObject::As<OS::CF::Number>(&v323, &v316);
        OS::CF::UntypedObject::~UntypedObject(&v316);
        if (*(&v323 + 1))
        {
          v69 = OS::CF::Number::GetValue<float>(*(&v323 + 1));
          *&v316.__r_.__value_.__l.__data_ = *&v69;
          *&v316.__r_.__value_.__l.__size_ = *&v69;
          std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(v178, &v316, *&v69, *&v69);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v189, "ADS::Device::Device");
          std::string::basic_string[abi:ne200100]<0>(&v187, "supported sample rate (clock device)");
          if (v188 < 0)
          {
            operator delete(v187);
          }

          if (v190 < 0)
          {
            operator delete(v189);
          }
        }
      }

      OS::CF::UntypedObject::~UntypedObject(&v323);
      OS::CF::UntypedObject::~UntypedObject(buf);
      v64 = *&__p[8];
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v185, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v183, "supported sample rates (clock device)");
    if (v184 < 0)
    {
      operator delete(v183);
    }

    if (v186 < 0)
    {
      operator delete(v185);
    }
  }

  OS::CF::UntypedObject::~UntypedObject(__p);
LABEL_514:
  if (*(v5 + 416))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, *(a4 + 8), @"sample rate");
    if (*&buf[8])
    {
      v115 = OS::CF::Number::GetValue<float>(*&buf[8]);
      v116 = *&v115;
    }

    else
    {
      v116 = 0.0;
    }

    if (!ADS::Device::isSupportedSampleRate(v5, v116))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 426;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: No valid, supported sample rate provided. Using default.", __p, 0x12u);
      }

      ADS::Device::isSupportedSampleRate(v5, 44100.0);
    }

    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "ADS_Device.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 451;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: Device does not support any sample rates.", __p, 0x12u);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v306, *(a4 + 8), @"controls");
  if (v307)
  {
    v117 = 0;
    v118 = MEMORY[0x1E69E9C10];
    while (1)
    {
      if (v117 >= OS::CF::ArrayBase<__CFArray const*>::GetSize(v307))
      {
        goto LABEL_755;
      }

      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&v230, &v306, v117);
      if (*v231)
      {
        break;
      }

      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 463;
        _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: Invalid control. Skipping and continuing.", __p, 0x12u);
      }

LABEL_741:
      OS::CF::UntypedObject::~UntypedObject(&v230);
      ++v117;
    }

    OS::CF::UntypedObject::UntypedObject(&v181, *v231);
    v181 = &unk_1F5991008;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v321, v182, @"type");
    if (!*v322)
    {
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 930;
        _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: Control must have a 'type.' Skipping this control.", __p, 0x12u);
      }

      goto LABEL_740;
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v319, v182, @"subtype");
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v317, v182, @"subtype");
    OS::CF::String::AsStdString(&v316, &v321);
    applesauce::CF::DictionaryRef::from_get(&v315, v182);
    GetFourCharacterCodeFromKey(v229, v315, "scope");
    if (v315)
    {
      CFRelease(v315);
    }

    if (v229[0])
    {
      v119 = applesauce::CF::convert_to<unsigned int,0>(v229[0]);
      v120 = v119;
    }

    else
    {
      v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
      v120 = 1735159650;
      if (v119)
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 941;
        _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'scope' provided. Using default.", __p, 0x12u);
      }
    }

    v305[0] = ADS::ObjectManager::GetNextObjectID(v119);
    if ((*(&v316.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v316.__r_.__value_.__l.__size_ <= 6)
      {
        if (v316.__r_.__value_.__l.__size_ != 5)
        {
          if (v316.__r_.__value_.__l.__size_ == 6 && *v316.__r_.__value_.__l.__data_ == 1684630643 && *(v316.__r_.__value_.__r.__words[0] + 4) == 29285)
          {
LABEL_577:
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v182, @"value");
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v323, v182, @"min");
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v308, v182, @"max");
            if (*(&v323 + 1))
            {
              v125 = OS::CF::Number::GetValue<unsigned int>(*(&v323 + 1), 0);
            }

            else
            {
              v125 = 0;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 961;
                _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'min' given for slider control. Using default.", __p, 0x12u);
                v125 = 0;
              }
            }

            if (v308.__r_.__value_.__l.__size_)
            {
              v146 = OS::CF::Number::GetValue<unsigned int>(v308.__r_.__value_.__l.__size_, 0);
            }

            else
            {
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 971;
                _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'max' given for slider control. Using default.", __p, 0x12u);
              }

              v146 = 10;
            }

            if (v125 > v146 && os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 981;
              _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: 'min' is greater than 'max.' Swapping these values.", __p, 0x12u);
            }

            if (*&buf[8])
            {
              OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
            }

            else if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 989;
              _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for slider control. Using default.", __p, 0x12u);
            }

            if (!v320)
            {
              if (*v318)
              {
                OS::CF::Number::GetValue<unsigned int>(*v318, 0);
                operator new();
              }

              operator new();
            }

            OS::CF::String::AsStdString(__p, &v319);
            if ((__p[23] & 0x80000000) != 0)
            {
              v152 = *&__p[8];
              operator delete(*__p);
              if (v152 != 4)
              {
                goto LABEL_765;
              }
            }

            else if (__p[23] != 4)
            {
LABEL_765:
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 999;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom slider control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
              }

              v165 = __cxa_allocate_exception(0x10uLL);
              *v165 = off_1F5991DD8;
              v165[2] = 2003332927;
            }

            OS::CF::String::AsStdString(__p, &v319);
            operator new();
          }

          goto LABEL_617;
        }

        if (*v316.__r_.__value_.__l.__data_ == 1702258028 && *(v316.__r_.__value_.__r.__words[0] + 4) == 108)
        {
LABEL_620:
          *buf = 0;
          *&buf[16] = 0uLL;
          *&buf[8] = &buf[16];
          LOBYTE(v327) = 1;
          HIDWORD(v327) = 5;
          *&v328 = 0x3F80000040000000;
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v313, v182, @"dB range");
          if (*type)
          {
            OS::CF::UntypedObject::UntypedObject(&v311, *type);
            v311 = &unk_1F59910D0;
            ADS::Device::getRangeOptFromArray(__p, &v311);
            OS::CF::UntypedObject::~UntypedObject(&v311);
            if (__p[16] == 1)
            {
              HIDWORD(v140) = *&__p[4];
              *&v140 = *__p;
              v141 = *&__p[8];
              CAVolumeCurve::AddRange(buf, 0, 5000, v140, v141);
            }
          }

          else
          {
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1023;
              _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: 'dB range' for array type must be an array. Using default dB range.", __p, 0x12u);
            }

            CAVolumeCurve::AddRange(buf, 0, 5000, 0.0, 120.0);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&cf, v182, @"value");
          if (v310)
          {
            OS::CF::Number::GetValue<int>(v310, 0);
          }

          else if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 1031;
            _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for level control. Using default.", __p, 0x12u);
          }

          if (!v320)
          {
            if (*v318)
            {
              OS::CF::Number::GetValue<unsigned int>(*v318, 0);
              operator new();
            }

            operator new();
          }

          OS::CF::String::AsStdString(&v308, &v319);
          std::string::basic_string[abi:ne200100]<0>(__p, "volume");
          *&__p[24] = 1986817381;
          std::string::basic_string[abi:ne200100]<0>(v330, "LFE volume");
          v331 = 1937072758;
          std::unordered_map<std::string,unsigned int>::unordered_map(&v323, __p, 2);
          for (jj = 0; jj != -64; jj -= 32)
          {
            if (v330[jj + 23] < 0)
            {
              operator delete(*&__p[jj + 32]);
            }
          }

          v148 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(&v323, &v308);
          if (v148)
          {
            v149 = *(v148 + 10);
          }

          else
          {
            v149 = 0;
          }

          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v323);
          if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v308.__r_.__value_.__l.__data_);
            if (v149)
            {
LABEL_701:
              operator new();
            }
          }

          else if (v149)
          {
            goto LABEL_701;
          }

          OS::CF::String::AsStdString(__p, &v319);
          if ((__p[23] & 0x80000000) != 0)
          {
            v153 = *&__p[8];
            operator delete(*__p);
            if (v153 != 4)
            {
              goto LABEL_768;
            }
          }

          else if (__p[23] != 4)
          {
LABEL_768:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1046;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom level control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
            }

            v166 = __cxa_allocate_exception(0x10uLL);
            *v166 = off_1F5991DD8;
            v166[2] = 2003332927;
          }

          OS::CF::String::AsStdString(&v323, &v319);
          operator new();
        }

        v129 = v316.__r_.__value_.__r.__words[0];
        goto LABEL_613;
      }

      if (v316.__r_.__value_.__l.__size_ == 7)
      {
        if (*v316.__r_.__value_.__l.__data_ == 1819242338 && *(v316.__r_.__value_.__r.__words[0] + 3) == 1851876716)
        {
LABEL_596:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v308, v182, @"value");
          if (v308.__r_.__value_.__l.__size_)
          {
            OS::CF::Number::GetValue<unsigned int>(v308.__r_.__value_.__l.__size_, 0);
          }

          else if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 1069;
            _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for BOOLean control. Using default.", __p, 0x12u);
          }

          if (!v320)
          {
            if (*v318)
            {
              OS::CF::Number::GetValue<unsigned int>(*v318, 0);
              operator new();
            }

            operator new();
          }

          OS::CF::String::AsStdString(&v323, &v319);
          std::string::basic_string[abi:ne200100]<0>(__p, "mute");
          *&__p[24] = 1836414053;
          std::string::basic_string[abi:ne200100]<0>(v330, "solo");
          v331 = 1936682095;
          std::string::basic_string[abi:ne200100]<0>(v332, "jack");
          v333 = 1784767339;
          std::string::basic_string[abi:ne200100]<0>(v334, "LFE mute");
          v335 = 1937072749;
          std::string::basic_string[abi:ne200100]<0>(v336, "phantom");
          v337 = 1885888878;
          std::string::basic_string[abi:ne200100]<0>(v338, "phase invert");
          v339 = 1885893481;
          std::string::basic_string[abi:ne200100]<0>(v340, "clip light");
          v341 = 1668049264;
          std::string::basic_string[abi:ne200100]<0>(v342, "talkback");
          v343 = 1952541794;
          std::string::basic_string[abi:ne200100]<0>(v344, "listenback");
          v345 = 1819504226;
          std::unordered_map<std::string,unsigned int>::unordered_map(buf, __p, 9);
          v143 = 288;
          do
          {
            if (__p[v143 + 7] < 0)
            {
              operator delete(*(&v327 + v143));
            }

            v143 -= 32;
          }

          while (v143);
          v144 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(buf, &v323);
          if (v144)
          {
            v145 = *(v144 + 10);
          }

          else
          {
            v145 = 0;
          }

          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(buf);
          if (SBYTE7(v324) < 0)
          {
            operator delete(v323);
            if (v145)
            {
LABEL_709:
              operator new();
            }
          }

          else if (v145)
          {
            goto LABEL_709;
          }

          OS::CF::String::AsStdString(__p, &v319);
          if ((__p[23] & 0x80000000) != 0)
          {
            v154 = *&__p[8];
            operator delete(*__p);
            if (v154 != 4)
            {
              goto LABEL_771;
            }
          }

          else if (__p[23] != 4)
          {
LABEL_771:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1080;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom BOOLean control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
            }

            v167 = __cxa_allocate_exception(0x10uLL);
            *v167 = off_1F5991DD8;
            v167[2] = 2003332927;
          }

          OS::CF::String::AsStdString(__p, &v319);
          operator new();
        }

        goto LABEL_617;
      }

      if (v316.__r_.__value_.__l.__size_ == 8)
      {
        v127 = *v316.__r_.__value_.__l.__data_;
LABEL_599:
        if (v127 != 0x726F7463656C6573)
        {
          goto LABEL_617;
        }

        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v308, v182, @"items");
        if (v308.__r_.__value_.__l.__size_)
        {
          if (!v320)
          {
            if (*v318)
            {
              OS::CF::Number::GetValue<unsigned int>(*v318, 0);
              operator new();
            }

            operator new();
          }

          OS::CF::String::AsStdString(&v323, &v319);
          std::string::basic_string[abi:ne200100]<0>(__p, "data source");
          *&__p[24] = 1685287523;
          std::string::basic_string[abi:ne200100]<0>(v330, "data destination");
          v331 = 1684370292;
          std::string::basic_string[abi:ne200100]<0>(v332, "clock source");
          v333 = 1668047723;
          std::string::basic_string[abi:ne200100]<0>(v334, "line level");
          v335 = 1852601964;
          std::string::basic_string[abi:ne200100]<0>(v336, "hpf");
          v337 = 1751740518;
          std::unordered_map<std::string,unsigned int>::unordered_map(buf, __p, 5);
          for (kk = 0; kk != -20; kk -= 4)
          {
            if (SHIBYTE(v336[kk + 2]) < 0)
            {
              operator delete(v336[kk]);
            }
          }

          v132 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(buf, &v323);
          if (v132)
          {
            v133 = *(v132 + 10);
          }

          else
          {
            v133 = 0;
          }

          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(buf);
          if (SBYTE7(v324) < 0)
          {
            operator delete(v323);
            if (v133)
            {
LABEL_728:
              operator new();
            }
          }

          else if (v133)
          {
            goto LABEL_728;
          }

          OS::CF::String::AsStdString(__p, &v319);
          if ((__p[23] & 0x80000000) != 0)
          {
            v156 = *&__p[8];
            operator delete(*__p);
            if (v156 != 4)
            {
              goto LABEL_777;
            }
          }

          else if (__p[23] != 4)
          {
LABEL_777:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1110;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom selector control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
            }

            v169 = __cxa_allocate_exception(0x10uLL);
            *v169 = off_1F5991DD8;
            v169[2] = 2003332927;
          }

          OS::CF::String::AsStdString(__p, &v319);
          operator new();
        }

        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 1098;
          _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'items' list given for selector control. Skipping this control.", __p, 0x12u);
        }

        v142 = &v308;
LABEL_631:
        OS::CF::UntypedObject::~UntypedObject(v142);
        goto LABEL_735;
      }

      if (v316.__r_.__value_.__l.__size_ != 10)
      {
        goto LABEL_617;
      }

      if (*v316.__r_.__value_.__l.__data_ == 0x70206F6572657473 && *(v316.__r_.__value_.__r.__words[0] + 8) == 28257)
      {
        goto LABEL_623;
      }

      if ((*(&v316.__r_.__value_.__s + 23) & 0x80) != 0 || HIBYTE(v316.__r_.__value_.__r.__words[2]) != 5)
      {
        goto LABEL_617;
      }
    }

    else
    {
      if (HIBYTE(v316.__r_.__value_.__r.__words[2]) > 6u)
      {
        if (HIBYTE(v316.__r_.__value_.__r.__words[2]) != 7)
        {
          if (HIBYTE(v316.__r_.__value_.__r.__words[2]) != 8)
          {
            if (HIBYTE(v316.__r_.__value_.__r.__words[2]) != 10)
            {
              goto LABEL_617;
            }

            if (v316.__r_.__value_.__r.__words[0] != 0x70206F6572657473 || LOWORD(v316.__r_.__value_.__r.__words[1]) != 28257)
            {
              goto LABEL_617;
            }

LABEL_623:
            if (v120 == 1768845428 || v120 == 1869968496)
            {
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v182, @"value");
              if (*&buf[8])
              {
                OS::CF::Number::GetValue<float>(*&buf[8]);
              }

              else if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 1140;
                _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for stereo pan control. Using default.", __p, 0x12u);
              }

              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v323, v182, @"channel A");
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v308, v182, @"channel B");
              v150 = 568;
              if (v120 == 1768845428)
              {
                v150 = 564;
              }

              v151 = atomic_load((v179 + v150));
              if (v151 > 2)
              {
                if (*(&v323 + 1) && OS::CF::Number::GetValue<int>(*(&v323 + 1), 0) < v151)
                {
                  OS::CF::Number::GetValue<unsigned int>(*(&v323 + 1), 0);
                }

                else if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  *__p = 136315394;
                  *&__p[4] = "ADS_Device.cpp";
                  *&__p[12] = 1024;
                  *&__p[14] = 1161;
                  _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'channel A' given for stereo pan control. Using default.", __p, 0x12u);
                }

                if (v308.__r_.__value_.__l.__size_ && OS::CF::Number::GetValue<int>(v308.__r_.__value_.__l.__size_, 0) < v151)
                {
                  OS::CF::Number::GetValue<unsigned int>(v308.__r_.__value_.__l.__size_, 0);
                }

                else if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  *__p = 136315394;
                  *&__p[4] = "ADS_Device.cpp";
                  *&__p[12] = 1024;
                  *&__p[14] = 1172;
                  _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'channel A' given for stereo pan control. Using default.", __p, 0x12u);
                }

                if (!v320)
                {
                  if (*v318)
                  {
                    OS::CF::Number::GetValue<unsigned int>(*v318, 0);
                    operator new();
                  }

                  operator new();
                }

                OS::CF::String::AsStdString(__p, &v319);
                if ((__p[23] & 0x80000000) != 0)
                {
                  v155 = *&__p[8];
                  operator delete(*__p);
                  if (v155 != 4)
                  {
                    goto LABEL_774;
                  }
                }

                else if (__p[23] != 4)
                {
LABEL_774:
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "ADS_Device.cpp";
                    *&__p[12] = 1024;
                    *&__p[14] = 1178;
                    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom stereo pan control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
                  }

                  v168 = __cxa_allocate_exception(0x10uLL);
                  *v168 = off_1F5991DD8;
                  v168[2] = 2003332927;
                }

                OS::CF::String::AsStdString(__p, &v319);
                operator new();
              }

              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 1150;
                _os_log_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: Cannot create a stereo pan control for a stream with fewer than two channels. Skipping this control.", __p, 0x12u);
              }

              OS::CF::UntypedObject::~UntypedObject(&v308);
              OS::CF::UntypedObject::~UntypedObject(&v323);
              OS::CF::UntypedObject::~UntypedObject(buf);
              goto LABEL_735;
            }

            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1128;
              v138 = v118;
              v139 = "%25s:%-5d  ADS::Device::createAndAddControl: Invalid scope for stereo pan control. Skipping this control.";
              goto LABEL_619;
            }

LABEL_735:
            if (v229[0])
            {
              CFRelease(v229[0]);
            }

            if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v316.__r_.__value_.__l.__data_);
            }

            OS::CF::UntypedObject::~UntypedObject(&v317);
            OS::CF::UntypedObject::~UntypedObject(&v319);
LABEL_740:
            OS::CF::UntypedObject::~UntypedObject(&v321);
            OS::CF::UntypedObject::~UntypedObject(&v181);
            goto LABEL_741;
          }

          v127 = v316.__r_.__value_.__r.__words[0];
          goto LABEL_599;
        }

        if (LODWORD(v316.__r_.__value_.__l.__data_) == 1819242338 && *(v316.__r_.__value_.__r.__words + 3) == 1851876716)
        {
          goto LABEL_596;
        }

LABEL_617:
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 1197;
          v138 = v118;
          v139 = "%25s:%-5d  Not a recognized type of control.";
LABEL_619:
          _os_log_impl(&dword_1DE1F9000, v138, OS_LOG_TYPE_DEFAULT, v139, __p, 0x12u);
          goto LABEL_735;
        }

        goto LABEL_735;
      }

      if (HIBYTE(v316.__r_.__value_.__r.__words[2]) != 5)
      {
        if (HIBYTE(v316.__r_.__value_.__r.__words[2]) == 6 && LODWORD(v316.__r_.__value_.__l.__data_) == 1684630643 && WORD2(v316.__r_.__value_.__r.__words[0]) == 29285)
        {
          goto LABEL_577;
        }

        goto LABEL_617;
      }

      if (LODWORD(v316.__r_.__value_.__l.__data_) == 1702258028 && v316.__r_.__value_.__s.__data_[4] == 108)
      {
        goto LABEL_620;
      }
    }

    v129 = &v316;
LABEL_613:
    data = v129->__r_.__value_.__l.__data_;
    v136 = v129->__r_.__value_.__s.__data_[4];
    if (data == 1668246626 && v136 == 107)
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(__p, v182, @"descriptor");
      v142 = __p;
      goto LABEL_631;
    }

    goto LABEL_617;
  }

LABEL_755:
  mach_timebase_info(__p);
  LODWORD(v157) = *&__p[4];
  LODWORD(v158) = *__p;
  *(v179 + 544) = v157 / v158 * 1000000000.0 / *(v179 + 720);
  OS::CF::UntypedObject::~UntypedObject(&v306);
  OS::CF::UntypedObject::~UntypedObject(v232);
  OS::CF::UntypedObject::~UntypedObject(v235);
  OS::CF::UntypedObject::~UntypedObject(v241);
  OS::CF::UntypedObject::~UntypedObject(v247);
  OS::CF::UntypedObject::~UntypedObject(v253);
  OS::CF::UntypedObject::~UntypedObject(v259);
  OS::CF::UntypedObject::~UntypedObject(v265);
  OS::CF::UntypedObject::~UntypedObject(v271);
  OS::CF::UntypedObject::~UntypedObject(v277);
  OS::CF::UntypedObject::~UntypedObject(v283);
  OS::CF::UntypedObject::~UntypedObject(v285);
  OS::CF::UntypedObject::~UntypedObject(v291);
  OS::CF::UntypedObject::~UntypedObject(v297);
  OS::CF::UntypedObject::~UntypedObject(v299);
  OS::CF::UntypedObject::~UntypedObject(v301);
  return v179;
}

void sub_1DE3FA348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, OS::CF::UntypedObject *a17, CAExtAudioFile *a18, const void **a19, OS::CF::UntypedObject *a20, uint64_t a21, OS::CF::UntypedObject *a22, OS::CF::UntypedObject *a23, void **a24, uint64_t a25, uint64_t a26, OS::CF::UntypedObject *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x6E8]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x660]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x6B0]);
  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(STACK[0x760]);
  }

  OS::CF::UntypedObject::~UntypedObject(&STACK[0x6F8]);
  applesauce::CF::NumberRef::~NumberRef(&STACK[0x6A8]);
  applesauce::CF::NumberRef::~NumberRef(&STACK[0x350]);
  applesauce::CF::NumberRef::~NumberRef(&STACK[0x650]);
  applesauce::CF::DictionaryRef::~DictionaryRef(&STACK[0x678]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x370]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x698]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x380]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x3C0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x400]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x440]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x480]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x4C0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x500]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x540]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x580]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x590]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x5D0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x610]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x620]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x630]);
  applesauce::CF::DictionaryRef::~DictionaryRef((a40 + 944));
  applesauce::CF::StringRef::~StringRef((a40 + 832));
  OS::CF::UntypedObject::~UntypedObject(a17);
  OS::CF::UntypedObject::~UntypedObject(a27);
  OS::CF::UntypedObject::~UntypedObject(a20);
  CAExtAudioFile::~CAExtAudioFile(a18);
  applesauce::CF::StringRef::~StringRef(a19);
  OS::CF::UntypedObject::~UntypedObject((a40 + 600));
  v41 = *(a40 + 576);
  if (v41)
  {
    *(a40 + 584) = v41;
    operator delete(v41);
  }

  v42 = *(a40 + 472);
  if (v42)
  {
    *(a40 + 480) = v42;
    operator delete(v42);
  }

  v43 = *(a40 + 448);
  if (v43)
  {
    *(a40 + 456) = v43;
    operator delete(v43);
  }

  v44 = *a16;
  if (*a16)
  {
    *(a40 + 432) = v44;
    operator delete(v44);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*a24);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a21);
  CADeprecated::CAMutex::~CAMutex((a40 + 272));
  CADeprecated::CAMutex::~CAMutex((a40 + 184));
  OS::CF::UntypedObject::~UntypedObject(a22);
  OS::CF::UntypedObject::~UntypedObject(a23);
  OS::CF::UntypedObject::~UntypedObject((a40 + 136));
  OS::CF::UntypedObject::~UntypedObject((a40 + 120));
  ADS::BaseObject::~BaseObject(a40);
  _Unwind_Resume(a1);
}

OS::CF::String *OS::CF::String::String(OS::CF::String *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  *this = &unk_1F5991188;
  *(this + 1) = v5;
  return this;
}

uint64_t OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &unk_1F5991138;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFNumberGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return OS::CF::UntypedObject::operator=(v6, v7);
      }
    }
  }

  return result;
}

void OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(void *a1, CFDictionaryRef theDict, void *key)
{
  *a1 = &unk_1F5988FA8;
  a1[1] = 0;
  if (theDict)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, key, &value))
    {
      if (value)
      {
        v4 = CFGetTypeID(value);
      }

      else
      {
        v4 = 0;
      }

      TypeID = CFBooleanGetTypeID();
      v6 = value;
      if (v4 == TypeID)
      {
        if (value)
        {
          CFRetain(value);
          v7 = a1;
          v8 = v6;
        }

        else
        {
          v7 = a1;
          v8 = 0;
        }

        OS::CF::UntypedObject::operator=(v7, v8);
      }

      else
      {
        if (value)
        {
          v6 = CFGetTypeID(value);
        }

        if (v6 == CFNumberGetTypeID())
        {
          v9 = value;
          if (value)
          {
            CFRetain(value);
          }

          v14[0] = &unk_1F5991138;
          v14[1] = v9;
          v10 = OS::CF::Number::GetValue<int>(v9, 0) != 0;
          OS::CF::Boolean::Boolean(v12, v10);
          v11 = a1[1];
          a1[1] = v13;
          v13 = v11;
          OS::CF::UntypedObject::~UntypedObject(v12);
          OS::CF::UntypedObject::~UntypedObject(v14);
        }
      }
    }
  }
}

const __CFBoolean *OS::CF::Boolean::AsBool(const __CFBoolean *this)
{
  if (this)
  {
    return (CFBooleanGetValue(this) != 0);
  }

  return this;
}

uint64_t OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &unk_1F59910D0;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFArrayGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return OS::CF::UntypedObject::operator=(v6, v7);
      }
    }
  }

  return result;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F5991008;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        v8 = ValueAtIndex ? CFGetTypeID(ValueAtIndex) : 0;
        result = CFDictionaryGetTypeID();
        if (v8 == result)
        {
          if (v7)
          {
            CFRetain(v7);
            v9 = v4;
            v10 = v7;
          }

          else
          {
            v9 = v4;
            v10 = 0;
          }

          return OS::CF::UntypedObject::operator=(v9, v10);
        }
      }
    }
  }

  return result;
}

double OS::CF::Number::GetValue<float>(const __CFNumber *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0.0;
  }

  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  LODWORD(result) = valuePtr;
  return result;
}

uint64_t std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(uint64_t result, _OWORD *a2, double a3, double a4)
{
  v4 = *(result + 8);
  if (!v4)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 4);
      if (v6 <= a3)
      {
        break;
      }

LABEL_5:
      v4 = *v4;
      if (!*v5)
      {
        goto LABEL_15;
      }
    }

    if (v6 != a3)
    {
      if (v6 >= a3)
      {
        return result;
      }

      goto LABEL_14;
    }

    v7 = *(v4 + 5);
    if (v7 > a4)
    {
      goto LABEL_5;
    }

    if (v6 >= a3 && v7 >= a4)
    {
      return result;
    }

LABEL_14:
    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_15;
    }
  }
}

void GetFourCharacterCodeFromKey(CFNumberRef *a1, const __CFDictionary *a2, const char *a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = strlen(a3);
  if (a3)
  {
    v7 = CFStringCreateWithBytes(0, a3, v6, 0x8000100u, 0);
    cf[0] = v7;
    if (!v7)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    cf[0] = 0;
  }

  Value = CFDictionaryGetValue(a2, v7);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Value)
  {
    CFRetain(Value);
    v20 = Value;
    v21 = 1;
    v10 = CFGetTypeID(Value);
    if (v10 == CFNumberGetTypeID())
    {
      applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(a1, &v20);
    }

    else
    {
      v11 = CFGetTypeID(Value);
      if (v11 == CFStringGetTypeID())
      {
        applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v19, &v20);
        if (!v19)
        {
          v15 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v15, "Could not construct");
          __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(cf, v19);
        if (v18 >= 0)
        {
          v12 = cf;
        }

        else
        {
          v12 = cf[0];
        }

        valuePtr = bswap32(*v12);
        v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        *a1 = v13;
        if (!v13)
        {
          v16 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v16, "Could not construct");
          __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        if (v18 < 0)
        {
          operator delete(cf[0]);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }

      else
      {
        *a1 = 0;
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void ADS::Device::getRangeOptFromArray(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(&v11, a2, 0);
  OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(&v9, a2, 1);
  if (v12)
  {
    v4 = v10 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "ADS_Device.cpp";
      v15 = 1024;
      v16 = 493;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::getRangeFromArray: Requires numerical data for value types at indices 0 and 1", buf, 0x12u);
    }

    v8 = 0;
    *a1 = 0;
  }

  else
  {
    v5 = OS::CF::Number::GetValue<float>(v12);
    v6 = *&v5;
    v7 = OS::CF::Number::GetValue<float>(v10);
    *a1 = v6;
    *(a1 + 8) = *&v7;
    v8 = 1;
  }

  *(a1 + 16) = v8;
  OS::CF::UntypedObject::~UntypedObject(&v9);
  OS::CF::UntypedObject::~UntypedObject(&v11);
}

uint64_t OS::CF::Number::GetValue<int>(const __CFNumber *a1, uint64_t a2)
{
  valuePtr = a2;
  if (a1)
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return a2;
}

uint64_t *std::unordered_map<std::string,unsigned int>::unordered_map(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v5 = &a2[4 * a3];
    do
    {
      v6 = std::__string_hash<char>::operator()[abi:ne200100](v4);
      v7 = v6;
      v8 = a1[1];
      if (!*&v8)
      {
        goto LABEL_19;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = v6;
        if (v6 >= *&v8)
        {
          v11 = v6 % *&v8;
        }
      }

      else
      {
        v11 = (*&v8 - 1) & v6;
      }

      v12 = *(*a1 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v7)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13 + 2, v4))
      {
        goto LABEL_18;
      }

      v4 += 4;
    }

    while (v4 != v5);
  }

  return a1;
}

void sub_1DE3FC030(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(void *a1, uint64_t a2, CFIndex a3)
{
  *a1 = &unk_1F5991138;
  a1[1] = 0;
  result = *(a2 + 8);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result > a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
      v8 = ValueAtIndex;
      v9 = ValueAtIndex ? CFGetTypeID(ValueAtIndex) : 0;
      result = CFNumberGetTypeID();
      if (v9 == result)
      {
        if (v8)
        {
          CFRetain(v8);
          v10 = a1;
          v11 = v8;
        }

        else
        {
          v10 = a1;
          v11 = 0;
        }

        return OS::CF::UntypedObject::operator=(v10, v11);
      }
    }
  }

  return result;
}

void OS::CF::Number::~Number(OS::CF::Number *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

void OS::CF::Array::~Array(OS::CF::Array *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::optional<applesauce::CF::TypeRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *std::__tree<ADS::AudioValueRangeWrapper>::__find_leaf_high(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v4 = v5;
        v7 = *(v5 + 4);
        if (v7 <= a3 && (v7 != a3 || *(v5 + 5) <= a4))
        {
          break;
        }

        v5 = *v5;
        v8 = v4;
        if (!*v4)
        {
          goto LABEL_10;
        }
      }

      v5 = v5[1];
    }

    while (v5);
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

LABEL_10:
  *a2 = v4;
  return v8;
}

void ADS::Device::ASBDfromDictionary(uint64_t a1, uint64_t a2)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v19, *(a2 + 8), @"sample rate");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v17, *(a2 + 8), @"format id");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v15, *(a2 + 8), @"format flags");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v13, *(a2 + 8), @"bytes per frame");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v11, *(a2 + 8), @"frames per packet");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v9, *(a2 + 8), @"channels per frame");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v7, *(a2 + 8), @"bits per channel");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v5, *(a2 + 8), @"bytes per packet");
  if (v20 && v18 && v16 && v14 && v12 && v10 && v8 && v6)
  {
    v4 = OS::CF::Number::GetValue<float>(v20);
    *a1 = *&v4;
    *(a1 + 8) = OS::CF::Number::GetValue<unsigned int>(v18, 0);
    *(a1 + 12) = OS::CF::Number::GetValue<unsigned int>(v16, 0);
    *(a1 + 24) = OS::CF::Number::GetValue<unsigned int>(v14, 0);
    *(a1 + 20) = OS::CF::Number::GetValue<unsigned int>(v12, 0);
    *(a1 + 28) = OS::CF::Number::GetValue<unsigned int>(v10, 0);
    *(a1 + 32) = OS::CF::Number::GetValue<unsigned int>(v8, 0);
    *(a1 + 16) = OS::CF::Number::GetValue<unsigned int>(v6, 0);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  OS::CF::UntypedObject::~UntypedObject(&v5);
  OS::CF::UntypedObject::~UntypedObject(v7);
  OS::CF::UntypedObject::~UntypedObject(v9);
  OS::CF::UntypedObject::~UntypedObject(v11);
  OS::CF::UntypedObject::~UntypedObject(v13);
  OS::CF::UntypedObject::~UntypedObject(v15);
  OS::CF::UntypedObject::~UntypedObject(v17);
  OS::CF::UntypedObject::~UntypedObject(v19);
}

BOOL ADS::Device::isASBDValid(ADS::Device *this, AudioStreamBasicDescription *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(this + 6);
  if (*(this + 5) * v3 == *(this + 4) || *(this + 2) != 1819304813)
  {
    if (*this >= 0.0)
    {
      v11 = *(this + 8);
      if ((*(this + 12) & 1) != 0 || v11 < 0x19)
      {
        if (v3 >= (*(this + 7) * v11) >> 3 || *(this + 2) != 1819304813)
        {
          return 1;
        }

        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v16 = *this;
        v17 = v14;
        v18 = *(this + 4);
        CA::StreamDescription::AsString(&__p, &v16, *&v16, *&v14);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v21 = "ADS_Device.cpp";
        v22 = 1024;
        v23 = 817;
        v24 = 2080;
        v25 = p_p;
        v7 = MEMORY[0x1E69E9C10];
        v8 = "%25s:%-5d  ASBD is not valid because not (asbd.mBitsPerChannel * asbd.mChannelsPerFrame / 8 == asbd.mBytesPerFrame) and asbd.mFormatID == kAudioFormatLinearPCM. ASBD: %s";
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v16 = *this;
        v17 = v12;
        v18 = *(this + 4);
        CA::StreamDescription::AsString(&__p, &v16, *&v16, *&v12);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &__p;
        }

        else
        {
          v13 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v21 = "ADS_Device.cpp";
        v22 = 1024;
        v23 = 811;
        v24 = 2080;
        v25 = v13;
        v7 = MEMORY[0x1E69E9C10];
        v8 = "%25s:%-5d  ASBD is not valid because !(asbd.mFormatFlags & kAudioFormatFlagIsFloat) && (asbd.mBitsPerChannel > 24). ASBD: %s";
      }
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v9 = *(this + 1);
      v16 = *this;
      v17 = v9;
      v18 = *(this + 4);
      CA::StreamDescription::AsString(&__p, &v16, *&v16, *&v9);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &__p;
      }

      else
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v21 = "ADS_Device.cpp";
      v22 = 1024;
      v23 = 805;
      v24 = 2080;
      v25 = v10;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d  ASBD is not valid because sample rate was less than 0. ASBD: %s";
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v5 = *(this + 1);
    v16 = *this;
    v17 = v5;
    v18 = *(this + 4);
    CA::StreamDescription::AsString(&__p, &v16, *&v16, *&v5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v21 = "ADS_Device.cpp";
    v22 = 1024;
    v23 = 799;
    v24 = 2080;
    v25 = v6;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d  ASBD is not valid because (asbd.mBytesPerFrame * asbd.mFramesPerPacket == asbd.mBytesPerPacket) and asbd.mFormatID == kAudioFormatLinearPCM returned false. ASBD: %s";
  }

  _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Cu);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void *std::set<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::set[abi:ne200100](void *a1, void *a2, const AudioStreamRangedDescription *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 == v4)
      {
        goto LABEL_8;
      }

      v9 = a1[1];
      v10 = v4;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      if (CAStreamRangedDescription::Sorter((v8 + 4), (v6 + 4), a3))
      {
LABEL_8:
        if (!v7)
        {
          v16 = v4;
LABEL_14:
          operator new();
        }

        v16 = v8;
        v12 = v8 + 1;
      }

      else
      {
        v12 = std::__tree<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::__find_equal<CAStreamRangedDescription>(a1, &v16, (v6 + 4));
      }

      if (!*v12)
      {
        goto LABEL_14;
      }

      v13 = v6[1];
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
          v14 = v6[2];
          v11 = *v14 == v6;
          v6 = v14;
        }

        while (!v11);
      }

      v6 = v14;
    }

    while (v14 != v5);
  }

  return a1;
}

void *std::__tree<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::__find_equal<CAStreamRangedDescription>(uint64_t a1, void *a2, CAStreamRangedDescription *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!CAStreamRangedDescription::Sorter(this, (v4 + 32), this))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!CAStreamRangedDescription::Sorter((v7 + 4), this, this))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *applesauce::CF::NumberRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1DE3FCAD8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

ADS::CFProperty *ADS::CFProperty::CFProperty(ADS::CFProperty *this, AudioObjectPropertyAddress a2, char a3, char a4, CFTypeRef cf)
{
  mSelector = a2.mSelector;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 1) = a2;
  *this = &unk_1F596CE98;
  v7 = CFRetain(cf);
  *(this + 5) = v7;
  *(this + 6) = CFGetTypeID(v7);
  *(this + 7) = 0;
  *(this + 4) = 0u;
  *(this + 6) = mSelector;
  *(this + 28) = 1886155636;
  return this;
}

BOOL ADS::CFProperty::IsSupportedValue(ADS::CFProperty *this, const void **a2)
{
  v4 = *(this + 6);
  if (v4 == CFDataGetTypeID())
  {
    return 1;
  }

  v6 = *a2;
  if (CFGetTypeID(v6) != *(this + 6))
  {
    return 0;
  }

  v8 = *(this + 7);
  v7 = *(this + 8);
  if (v7 == v8)
  {
    return 1;
  }

  while (*v8 != v6)
  {
    if (++v8 == v7)
    {
      v8 = *(this + 8);
      return v8 != v7;
    }
  }

  return v8 != v7;
}

void ADS::CFProperty::~CFProperty(CFTypeRef *this)
{
  ADS::CFProperty::~CFProperty(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596CE98;
  CFRelease(this[5]);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }
}

void sub_1DE3FCF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v7, v8);
  _Unwind_Resume(a1);
}

void ADS::ChangeInfoData<void const*>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<void const*>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

uint64_t ADS::CFProperty::AbortConfigChange(ADS::CFProperty *this, void *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void ADS::CFProperty::PerformConfigChange(ADS::CFProperty *this, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2[7];
  (*(*a2 + 8))(a2);
  if (((*(*this + 96))(this, &v5) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "ADS_Property.h";
      v8 = 1024;
      v9 = 156;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v3 = *(this + 5);
  *(this + 5) = v5;
  CFRelease(v3);
}

uint64_t ADS::CFProperty::SetPropertyData(uint64_t a1, const UInt8 *a2, int a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "ADS_Property.h";
      v17 = 1024;
      v18 = 189;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::SetPropertyData: this property cannot be set.", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v14 = 1970171760;
LABEL_20:
    exception[2] = v14;
  }

  if (a3 != 8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "ADS_Property.h";
      v17 = 1024;
      v18 = 191;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::SetPropertyData: wrong size for the data for this property.", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v14 = 561211770;
    goto LABEL_20;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "ADS_Property.h";
      v17 = 1024;
      v18 = 192;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::SetPropertyData: proposed property value is not supported.", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v14 = 1852797029;
    goto LABEL_20;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    TypeID = CFDataGetTypeID();
    v10 = *MEMORY[0x1E695E478];
    if (v8 == TypeID)
    {
      DeepCopy = CFDataCreate(v10, a2, 8);
    }

    else
    {
      DeepCopy = CFPropertyListCreateDeepCopy(v10, *a2, 0);
    }

    *(a1 + 40) = DeepCopy;
    CFRelease(v7);
  }

  return v6 ^ 1u;
}

uint64_t ADS::CFProperty::GetPropertyData(uint64_t (***this)(ADS::CFProperty *), UInt8 *a2)
{
  v4 = this[6];
  TypeID = CFDataGetTypeID();
  v6 = this[5];
  if (v4 == TypeID)
  {
    v10.length = CFDataGetLength(v6);
    v10.location = 0;
    CFDataGetBytes(this[5], v10, a2);
  }

  else
  {
    *a2 = PropertyListDeepImmutableCopy(v6);
  }

  v7 = **this;

  return v7(this);
}

CFIndex ADS::CFProperty::GetPropertyDataSize(ADS::CFProperty *this)
{
  v2 = *(this + 6);
  if (v2 == CFDataGetTypeID())
  {
    return CFDataGetLength(*(this + 5));
  }

  else
  {
    return 8;
  }
}

void std::__shared_ptr_emplace<ADS::CFProperty>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void OS::CF::Data::~Data(OS::CF::Data *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

BOOL ADS::TypedProperty<AudioValueRange>::IsSupportedValue(uint64_t a1, double *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 56);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a2;
  v5 = a2[1];
  while (1)
  {
    v6 = v3[1];
    if (v6 >= v4)
    {
      v7 = *v3;
      if (*v3 >= v4 || v6 > v5)
      {
        v9 = v7 >= v4 || v6 <= v5;
        v10 = v9 && v7 == v4;
        if (v10 && v6 == v5)
        {
          break;
        }
      }
    }

    v3 += 2;
    if (v3 == v2)
    {
      v3 = *(a1 + 64);
      return v3 != v2;
    }
  }

  return v3 != v2;
}

void ADS::TypedProperty<AudioValueRange>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CFB0;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *ADS::TypedProperty<AudioValueRange>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CFB0;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1DE3FD96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v7, v8);
  _Unwind_Resume(a1);
}

void ADS::ChangeInfoData<AudioValueRange>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<AudioValueRange>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

uint64_t ADS::TypedProperty<AudioValueRange>::AbortConfigChange(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

double ADS::TypedProperty<AudioValueRange>::PerformConfigChange(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 56);
  (*(*a2 + 8))(a2);
  if (((*(*a1 + 96))(a1, &v5) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "ADS_Property.h";
      v8 = 1024;
      v9 = 274;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  result = *&v5;
  *(a1 + 40) = v5;
  return result;
}

uint64_t ADS::TypedProperty<AudioValueRange>::SetPropertyData(uint64_t a1, _OWORD *a2, int a3, char a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: this property cannot be set.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 1970171760;
LABEL_17:
    exception[2] = v9;
  }

  if (a3 != 16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 297;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: wrong size for the data for this property.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 561211770;
    goto LABEL_17;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 298;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: proposed property value is not supported.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 1852797029;
    goto LABEL_17;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    *(a1 + 40) = *a2;
  }

  return v6 ^ 1u;
}

void std::__shared_ptr_emplace<ADS::TypedProperty<AudioValueRange>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CF60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

BOOL ADS::TypedProperty<float>::IsSupportedValue(uint64_t a1, float *a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2 == v3)
  {
    return 1;
  }

  while (*v3 != *a2)
  {
    if (++v3 == v2)
    {
      v3 = *(a1 + 48);
      return v3 != v2;
    }
  }

  return v3 != v2;
}

void ADS::TypedProperty<float>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CD80;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *ADS::TypedProperty<float>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CD80;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1DE3FE250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v7, v8);
  _Unwind_Resume(a1);
}

void ADS::ChangeInfoData<float>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<float>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

uint64_t ADS::TypedProperty<float>::AbortConfigChange(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

float ADS::TypedProperty<float>::PerformConfigChange(float *a1, float *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2[14];
  (*(*a2 + 8))(a2);
  if (((*(*a1 + 96))(a1, &v5) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "ADS_Property.h";
      v8 = 1024;
      v9 = 274;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  result = v5;
  a1[9] = v5;
  return result;
}

uint64_t ADS::TypedProperty<float>::SetPropertyData(uint64_t a1, _DWORD *a2, int a3, char a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: this property cannot be set.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 1970171760;
LABEL_17:
    exception[2] = v9;
  }

  if (a3 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 297;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: wrong size for the data for this property.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 561211770;
    goto LABEL_17;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 298;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: proposed property value is not supported.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 1852797029;
    goto LABEL_17;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    *(a1 + 36) = *a2;
  }

  return v6 ^ 1u;
}

void std::__shared_ptr_emplace<ADS::TypedProperty<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CD30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

BOOL ADS::TypedProperty<unsigned int>::IsSupportedValue(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2 == v3)
  {
    return 1;
  }

  while (*v3 != *a2)
  {
    if (++v3 == v2)
    {
      v3 = *(a1 + 48);
      return v3 != v2;
    }
  }

  return v3 != v2;
}

void ADS::TypedProperty<unsigned int>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CC58;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *ADS::TypedProperty<unsigned int>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CC58;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1DE3FEB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v7, v8);
  _Unwind_Resume(a1);
}

uint64_t ADS::TypedProperty<unsigned int>::AbortConfigChange(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t ADS::TypedProperty<unsigned int>::PerformConfigChange(_DWORD *a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2[14];
  (*(*a2 + 8))(a2);
  result = (*(*a1 + 96))(a1, &v5);
  if ((result & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "ADS_Property.h";
      v8 = 1024;
      v9 = 274;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  a1[9] = v5;
  return result;
}

uint64_t ADS::TypedProperty<unsigned int>::SetPropertyData(uint64_t a1, _DWORD *a2, int a3, char a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: this property cannot be set.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 1970171760;
LABEL_17:
    exception[2] = v9;
  }

  if (a3 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 297;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: wrong size for the data for this property.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 561211770;
    goto LABEL_17;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "ADS_Property.h";
      v12 = 1024;
      v13 = 298;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: proposed property value is not supported.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v9 = 1852797029;
    goto LABEL_17;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    *(a1 + 36) = *a2;
  }

  return v6 ^ 1u;
}

void std::__shared_ptr_emplace<ADS::TypedProperty<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CC08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

OS::CF::Boolean *OS::CF::Boolean::Boolean(OS::CF::Boolean *this, int a2)
{
  v3 = MEMORY[0x1E695E4C8];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4B8];
  }

  v4 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
  }

  *this = &unk_1F5988FA8;
  *(this + 1) = v4;
  return this;
}

void OS::CF::Boolean::~Boolean(OS::CF::Boolean *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

void OS::CF::UUID::~UUID(OS::CF::UUID *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t ADS::Device::getCurrentZTS(ADS::Device *this, double *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = this + 272;
  result = (*(*(this + 34) + 16))(this + 272);
  *a2 = *(this + 94);
  *a3 = *(this + 95);
  *a4 = *(this + 96);
  if (result)
  {
    return (*(*v8 + 24))(v8);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<ADS::Device::testOutputSafetyViolation(AudioTimeStamp const&)::$_0,std::tuple<char const*,int,double>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Output Safety Offset Violation check failed, theSafetyViolation %f", &v10, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<ADS::Device::testOutputSafetyViolation(AudioTimeStamp const&)::$_0,std::tuple<char const*,int,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void CAX4CCString::CAX4CCString(CAX4CCString *this)
{
  *(this + 1) = -1;
  if (!__maskrune(-1, 0x40000uLL))
  {
    goto LABEL_14;
  }

  v2 = *(this + 2);
  v3 = MEMORY[0x1E69E9830];
  if ((v2 & 0x80000000) != 0)
  {
    if (!__maskrune(v2, 0x40000uLL))
    {
      goto LABEL_14;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000) == 0)
  {
    goto LABEL_14;
  }

  v4 = *(this + 3);
  if ((v4 & 0x80000000) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v3 + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_14;
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    if (__maskrune(v5, 0x40000uLL))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v3 + 4 * v5 + 60) & 0x40000) != 0)
  {
LABEL_12:
    *(this + 5) = 39;
    *this = 39;
    return;
  }

LABEL_14:
  snprintf(this, 0x10uLL, "%d", -1);
}

uint64_t caulk::concurrent::details::rt_message_call<ADS::Device::testInputSafetyViolation(AudioTimeStamp const&,unsigned int)::$_0,std::tuple<char const*,int,double>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Input Safety Offset Violation check failed, theSafetyViolation %f", &v10, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<ADS::Device::testInputSafetyViolation(AudioTimeStamp const&,unsigned int)::$_0,std::tuple<char const*,int,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void AudioObjectShow(AudioObjectID inObjectID)
{
  v1 = *&inObjectID;
  v21 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(v13, 0);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v2 = HALS_ObjectMap::CopyObjectByObjectID(v1);
    v3 = v2;
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buffer = 136315650;
        v16 = "HALS_Framework-ios-imp.cpp";
        v17 = 1024;
        v18 = 343;
        v19 = 1024;
        v20 = v1;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectShow: no object with given ID %u", buffer, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    v4 = v2[5];
    v12[0] = HIBYTE(v4);
    v12[1] = BYTE2(v4);
    v12[2] = BYTE1(v4);
    v12[3] = v4;
    v12[4] = 0;
    v10 = 0x676C6F626C6E616DLL;
    v11 = 0;
    theString = 0;
    v8 = 8;
    (*(*v2 + 120))(v2, v1, &v10, 8, &v8, &theString, 0, 0, 0);
    buffer[0] = 0;
    if (theString)
    {
      usedBufLen = 0;
      v22.length = CFStringGetLength(theString);
      v22.location = 0;
      CFStringGetBytes(theString, v22, 0x8000100u, 0, 0, buffer, 255, &usedBufLen);
      buffer[usedBufLen] = 0;
      CFRelease(theString);
    }

    printf("AudioObjectID:\t\t0x%lX\n\tAudioClassID:\t'%s'\n\tName:\t\t\t%s\n", v3[4], v12, buffer);
    HALS_ObjectMap::ReleaseObject(v3, v5);
  }
}

void sub_1DE3FF7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioObjectIsPropertySettable(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, Boolean *outIsSettable)
{
  v5 = *&inObjectID;
  v40 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(&v32.mElement, 0);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (!outIsSettable)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "HALS_Framework-ios-imp.cpp";
        v36 = 1024;
        v37 = 531;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectIsPropertySettable: the outIsSettable argument is NULL", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v6 = HALS_ObjectMap::CopyObjectByObjectID(v5);
    v8 = v6;
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v35 = "HALS_Framework-ios-imp.cpp";
        v36 = 1024;
        v37 = 535;
        v38 = 1024;
        v39 = v5;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectIsPropertySettable: no object with given ID %u", buf, 0x18u);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      *v28 = off_1F5991DD8;
      v28[2] = 560947818;
    }

    v9 = *(v6 + 5);
    if (v9 <= 1701078389)
    {
      if (v9 == 1633773415)
      {
        goto LABEL_14;
      }

      v10 = 1633969526;
    }

    else
    {
      if (v9 == 1701078390 || v9 == 1701733488)
      {
        goto LABEL_14;
      }

      v10 = 1919182198;
    }

    if (v9 != v10)
    {
      v24 = *(v6 + 6);
      if (v9 != v24)
      {
        if (v24 <= 1701078389)
        {
          if (v24 == 1633773415)
          {
            goto LABEL_14;
          }

          v25 = 1633969526;
        }

        else
        {
          if (v24 == 1701078390 || v24 == 1919182198)
          {
            goto LABEL_14;
          }

          v25 = 1701733488;
        }

        if (v24 == v25)
        {
          goto LABEL_14;
        }
      }

      if (!(*(*v6 + 96))(v6, v5, inAddress, 0))
      {
        v11 = 2003332927;
        *outIsSettable = 0;
        goto LABEL_43;
      }

      LOBYTE(v22) = (*(*v8 + 104))(v8, v5, inAddress, 0);
      goto LABEL_33;
    }

LABEL_14:
    *&v32.mSelector = 0;
    v31 = 0;
    *v30 = 0;
    HALB_Info::TranslateDeviceAddressToControlAddress(inAddress, &v32.mScope, &v32.mSelector, v30, v7);
    if (v32.mScope)
    {
      v12 = (*(*v8 + 648))(v8);
      v13 = v12;
      if (v12)
      {
        v14 = (*(*v12 + 96))(v12, v12[4], v30, 0);
        if (v14)
        {
          v5 = v13[4];
          inAddress = v30;
          v16 = v13;
LABEL_27:
          LOBYTE(v14) = (*(*v16 + 104))(v16, v5, inAddress, 0);
          v11 = 0;
LABEL_29:
          *outIsSettable = v14;
          HALS_ObjectMap::ReleaseObject(v13, v15);
LABEL_43:
          HALS_ObjectMap::ReleaseObject(v8, v23);
          return v11;
        }
      }

      else
      {
        v14 = (*(*v8 + 96))(v8, v5, inAddress, 0);
        if (v14)
        {
          v16 = v8;
          goto LABEL_27;
        }
      }

      v11 = 2003332927;
      goto LABEL_29;
    }

    if ((HALB_Info::IsIOContextProperty(inAddress->mSelector, 0) & 1) != 0 && (*(*v8 + 840))(v8))
    {
      InternalIOContextID = HALS_Device::GetInternalIOContextID(v8);
      v18 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
      v19 = v18;
      if (!v18)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "HALS_Framework-ios-imp.cpp";
          v36 = 1024;
          v37 = 601;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectIsPropertySettable: no IO Context with given description", buf, 0x12u);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        *v29 = off_1F5991DD8;
        v29[2] = 2003332927;
      }

      v20 = (*(*v18 + 96))(v18, InternalIOContextID, inAddress, 0);
      if (v20)
      {
        LOBYTE(v20) = (*(*v19 + 104))(v19, InternalIOContextID, inAddress, 0);
        v11 = 0;
      }

      else
      {
        v11 = 2003332927;
      }

      *outIsSettable = v20;
      HALS_ObjectMap::ReleaseObject(v19, v21);
      goto LABEL_43;
    }

    v22 = (*(*v8 + 96))(v8, v5, inAddress, 0);
    if (!v22)
    {
      v11 = 2003332927;
      goto LABEL_35;
    }

    LOBYTE(v22) = (*(*v8 + 104))(v8, v5, inAddress, 0);
LABEL_33:
    v11 = 0;
LABEL_35:
    *outIsSettable = v22;
    goto LABEL_43;
  }

  return 560033144;
}

void sub_1DE3FFF04(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioObjectGetPropertyDataSize(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, UInt32 inQualifierDataSize, const void *inQualifierData, UInt32 *outDataSize)
{
  v7 = *&inQualifierDataSize;
  v9 = *&inObjectID;
  v44 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(&v36.mElement, 0);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (!outDataSize)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "HALS_Framework-ios-imp.cpp";
        v40 = 1024;
        v41 = 715;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectGetPropertyDataSize: the outDataSize argument is NULL", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    *outDataSize = 0;
    v10 = HALS_ObjectMap::CopyObjectByObjectID(v9);
    v12 = v10;
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v39 = "HALS_Framework-ios-imp.cpp";
        v40 = 1024;
        v41 = 719;
        v42 = 1024;
        v43 = v9;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectGetPropertyDataSize: no object with given ID %u", buf, 0x18u);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = off_1F5991DD8;
      v32[2] = 560947818;
    }

    v13 = *(v10 + 5);
    if (v13 <= 1701078389)
    {
      if (v13 == 1633773415)
      {
        goto LABEL_14;
      }

      v14 = 1633969526;
    }

    else
    {
      if (v13 == 1701078390 || v13 == 1701733488)
      {
        goto LABEL_14;
      }

      v14 = 1919182198;
    }

    if (v13 != v14)
    {
      v28 = *(v10 + 6);
      if (v13 != v28)
      {
        if (v28 <= 1701078389)
        {
          if (v28 == 1633773415)
          {
            goto LABEL_14;
          }

          v29 = 1633969526;
        }

        else
        {
          if (v28 == 1701078390 || v28 == 1919182198)
          {
            goto LABEL_14;
          }

          v29 = 1701733488;
        }

        if (v28 == v29)
        {
          goto LABEL_14;
        }
      }

      if (!(*(*v10 + 96))(v10, v9, inAddress, 0))
      {
        v15 = 2003332927;
        *outDataSize = 0;
        goto LABEL_43;
      }

      v26 = (*(*v12 + 112))(v12, v9, inAddress, v7, inQualifierData, 0);
      goto LABEL_33;
    }

LABEL_14:
    *&v36.mSelector = 0;
    v35 = 0;
    *v34 = 0;
    HALB_Info::TranslateDeviceAddressToControlAddress(inAddress, &v36.mScope, &v36.mSelector, v34, v11);
    if (v36.mScope)
    {
      v16 = (*(*v12 + 648))(v12);
      v17 = v16;
      if (v16)
      {
        v18 = (*(*v16 + 96))(v16, v16[4], v34, 0);
        if (v18)
        {
          v9 = v17[4];
          inAddress = v34;
          v20 = v17;
LABEL_27:
          v18 = (*(*v20 + 112))(v20, v9, inAddress, v7, inQualifierData, 0);
          v15 = 0;
LABEL_29:
          *outDataSize = v18;
          HALS_ObjectMap::ReleaseObject(v17, v19);
LABEL_43:
          HALS_ObjectMap::ReleaseObject(v12, v27);
          return v15;
        }
      }

      else
      {
        v18 = (*(*v12 + 96))(v12, v9, inAddress, 0);
        if (v18)
        {
          v20 = v12;
          goto LABEL_27;
        }
      }

      v15 = 2003332927;
      goto LABEL_29;
    }

    if ((HALB_Info::IsIOContextProperty(inAddress->mSelector, 0) & 1) != 0 && (*(*v12 + 840))(v12))
    {
      InternalIOContextID = HALS_Device::GetInternalIOContextID(v12);
      v22 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
      v23 = v22;
      if (!v22)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "HALS_Framework-ios-imp.cpp";
          v40 = 1024;
          v41 = 785;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectGetPropertyDataSize: no IO Context with given description", buf, 0x12u);
        }

        v33 = __cxa_allocate_exception(0x10uLL);
        *v33 = off_1F5991DD8;
        v33[2] = 2003332927;
      }

      v24 = (*(*v22 + 96))(v22, InternalIOContextID, inAddress, 0);
      if (v24)
      {
        v24 = (*(*v23 + 112))(v23, InternalIOContextID, inAddress, v7, inQualifierData, 0);
        v15 = 0;
      }

      else
      {
        v15 = 2003332927;
      }

      *outDataSize = v24;
      HALS_ObjectMap::ReleaseObject(v23, v25);
      goto LABEL_43;
    }

    v26 = (*(*v12 + 96))(v12, v9, inAddress, 0);
    if (!v26)
    {
      v15 = 2003332927;
      goto LABEL_35;
    }

    v26 = (*(*v12 + 112))(v12, v9, inAddress, v7, inQualifierData, 0);
LABEL_33:
    v15 = 0;
LABEL_35:
    *outDataSize = v26;
    goto LABEL_43;
  }

  return 560033144;
}

void sub_1DE4006D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioObjectGetPropertyData(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, UInt32 inQualifierDataSize, const void *inQualifierData, UInt32 *ioDataSize, void *outData)
{
  v9 = *&inQualifierDataSize;
  v11 = *&inObjectID;
  v52 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(&v44.mElement, 0);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (!ioDataSize)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    *buf = 136315394;
    v47 = "HALS_Framework-ios-imp.cpp";
    v48 = 1024;
    v49 = 894;
    v37 = MEMORY[0x1E69E9C10];
    v38 = "%25s:%-5d  AudioObjectGetPropertyData: the ioDataSize argument is NULL";
    goto LABEL_76;
  }

  if (!outData)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    *buf = 136315394;
    v47 = "HALS_Framework-ios-imp.cpp";
    v48 = 1024;
    v49 = 895;
    v37 = MEMORY[0x1E69E9C10];
    v38 = "%25s:%-5d  AudioObjectGetPropertyData: the outData argument is NULL";
LABEL_76:
    _os_log_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x12u);
LABEL_77:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v12 = HALS_ObjectMap::CopyObjectByObjectID(v11);
  v14 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v47 = "HALS_Framework-ios-imp.cpp";
      v48 = 1024;
      v49 = 899;
      v50 = 1024;
      v51 = v11;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectGetPropertyData: no object with given ID %u", buf, 0x18u);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = off_1F5991DD8;
    v40[2] = 560947818;
  }

  v15 = *(v12 + 5);
  if (v15 <= 1701078389)
  {
    if (v15 == 1633773415)
    {
      goto LABEL_15;
    }

    v16 = 1633969526;
  }

  else
  {
    if (v15 == 1701078390 || v15 == 1701733488)
    {
      goto LABEL_15;
    }

    v16 = 1919182198;
  }

  if (v15 == v16)
  {
    goto LABEL_15;
  }

  v29 = *(v12 + 6);
  if (v15 == v29)
  {
LABEL_32:
    v30 = (*(*v12 + 96))(v12, v11, inAddress, 0);
    v25 = *ioDataSize;
    if (v30)
    {
      (*(*v14 + 120))(v14, v11, inAddress, v25, ioDataSize, outData, v9, inQualifierData, 0);
      goto LABEL_34;
    }

LABEL_35:
    v17 = 2003332927;
    bzero(outData, v25);
    *ioDataSize = 0;
    goto LABEL_64;
  }

  if (v29 <= 1701078389)
  {
    if (v29 == 1633773415)
    {
      goto LABEL_15;
    }

    v32 = 1633969526;
  }

  else
  {
    if (v29 == 1701078390 || v29 == 1919182198)
    {
      goto LABEL_15;
    }

    v32 = 1701733488;
  }

  if (v29 != v32)
  {
    goto LABEL_32;
  }

LABEL_15:
  *&v44.mSelector = 0;
  v43 = 0;
  *v42 = 0;
  HALB_Info::TranslateDeviceAddressToControlAddress(inAddress, &v44.mScope, &v44.mSelector, v42, v13);
  if (v44.mScope)
  {
    v18 = (*(*v14 + 648))(v14);
    v19 = v18;
    if (v18)
    {
      if ((*(*v18 + 96))(v18, v18[4], v42, 0))
      {
        mSelector = inAddress->mSelector;
        if (HALB_Info::IsAVTProperty(inAddress->mSelector))
        {
          (*(*v19 + 120))(v19, v19[4], v42, *(outData + 6), outData + 24, *(outData + 2), *(outData + 2), *outData, 0);
LABEL_62:
          v17 = 0;
          goto LABEL_63;
        }

        if (mSelector > 1935946357)
        {
          if (mSelector > 1936811891)
          {
            if (mSelector == 1936811892 || mSelector == 1983013986)
            {
              goto LABEL_61;
            }

            v31 = 1937125988;
          }

          else
          {
            if (mSelector == 1935946358 || mSelector == 1936092525)
            {
              goto LABEL_61;
            }

            v31 = 1936811878;
          }
        }

        else
        {
          if (mSelector <= 1836462691)
          {
            if (mSelector != 1684157046 && mSelector != 1818453107)
            {
              v31 = 1818456932;
              goto LABEL_60;
            }

LABEL_61:
            (*(*v19 + 120))(v19, v19[4], v42, *ioDataSize, ioDataSize, outData, *ioDataSize, outData, 0);
            goto LABEL_62;
          }

          if (mSelector == 1836462692 || mSelector == 1836462707)
          {
            goto LABEL_61;
          }

          v31 = 1885762669;
        }

LABEL_60:
        if (mSelector != v31)
        {
          (*(*v19 + 120))(v19, v19[4], v42, *ioDataSize, ioDataSize, outData, v9, inQualifierData, 0);
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      LODWORD(v28) = *ioDataSize;
    }

    else
    {
      v27 = (*(*v14 + 96))(v14, v11, inAddress, 0);
      v28 = *ioDataSize;
      if (v27)
      {
        (*(*v14 + 120))(v14, v11, inAddress, v28, ioDataSize, outData, v9, inQualifierData, 0);
        goto LABEL_62;
      }
    }

    v17 = 2003332927;
    bzero(outData, v28);
    *ioDataSize = 0;
LABEL_63:
    HALS_ObjectMap::ReleaseObject(v19, v21);
    goto LABEL_64;
  }

  if ((HALB_Info::IsIOContextProperty(inAddress->mSelector, 0) & 1) != 0 && (*(*v14 + 840))(v14))
  {
    InternalIOContextID = HALS_Device::GetInternalIOContextID(v14);
    v23 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
    v19 = v23;
    if (!v23)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "HALS_Framework-ios-imp.cpp";
        v48 = 1024;
        v49 = 982;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectGetPropertyData: no IO Context with given description", buf, 0x12u);
      }

      v41 = __cxa_allocate_exception(0x10uLL);
      *v41 = off_1F5991DD8;
      v41[2] = 2003332927;
    }

    if ((*(*v23 + 96))(v23, InternalIOContextID, inAddress, 0))
    {
      (*(*v19 + 120))(v19, InternalIOContextID, inAddress, *ioDataSize, ioDataSize, outData, v9, inQualifierData, 0);
      v17 = 0;
    }

    else
    {
      v17 = 2003332927;
      bzero(outData, *ioDataSize);
      *ioDataSize = 0;
    }

    goto LABEL_63;
  }

  v24 = (*(*v14 + 96))(v14, v11, inAddress, 0);
  v25 = *ioDataSize;
  if (!v24)
  {
    goto LABEL_35;
  }

  (*(*v14 + 120))(v14, v11, inAddress, v25, ioDataSize, outData, v9, inQualifierData, 0);
LABEL_34:
  v17 = 0;
LABEL_64:
  v33 = inAddress->mSelector;
  if (HALB_Info::IsLocalizedStringProperty(v33, v26))
  {
    if (HALB_Info::IsAVTProperty(v33))
    {
      v35 = *(outData + 2);
      if (v35)
      {
        **(outData + 2) = HALS_Object::CopyLocalizedString(v14, inAddress, *v35);
      }
    }

    else
    {
      *outData = HALS_Object::CopyLocalizedString(v14, inAddress, *outData);
    }
  }

  HALS_ObjectMap::ReleaseObject(v14, v34);
  return v17;
}

void sub_1DE401154(_Unwind_Exception *exception_object, HALS_Object *a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  v7 = a2;
  HALS_ObjectMap::ReleaseObject(v5, a2);
  HALS_ObjectMap::ReleaseObject(v4, v8);
  __cxa_begin_catch(exception_object);
  if (v7 == 2)
  {
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    bzero(v3, *v2);
  }

  *v2 = 0;
LABEL_9:
  __cxa_end_catch();
  JUMPOUT(0x1DE400E50);
}

OSStatus AudioObjectSetPropertyData(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, UInt32 inQualifierDataSize, const void *inQualifierData, UInt32 inDataSize, const void *inData)
{
  v7 = *&inDataSize;
  v9 = *&inQualifierDataSize;
  v11 = *&inObjectID;
  v45 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(&v37.mElement, 0);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    v12 = 2003332927;
    if (!inData)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "HALS_Framework-ios-imp.cpp";
        v41 = 1024;
        v42 = 1135;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectSetPropertyData: the inData argument is NULL", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v13 = HALS_ObjectMap::CopyObjectByObjectID(v11);
    v15 = v13;
    if (!v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v40 = "HALS_Framework-ios-imp.cpp";
        v41 = 1024;
        v42 = 1139;
        v43 = 1024;
        v44 = v11;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectSetPropertyData: no object with given ID %u", buf, 0x18u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = off_1F5991DD8;
      v33[2] = 560947818;
    }

    v16 = *(v13 + 5);
    if (v16 <= 1701078389)
    {
      if (v16 == 1633773415)
      {
        goto LABEL_14;
      }

      v17 = 1633969526;
    }

    else
    {
      if (v16 == 1701078390 || v16 == 1701733488)
      {
        goto LABEL_14;
      }

      v17 = 1919182198;
    }

    if (v16 == v17)
    {
      goto LABEL_14;
    }

    v29 = *(v13 + 6);
    if (v16 == v29)
    {
LABEL_34:
      if ((*(*v13 + 96))(v13, v11, inAddress, 0))
      {
        if ((*(*v15 + 104))(v15, v11, inAddress, 0))
        {
          (*(*v15 + 128))(v15, v11, inAddress, v7, inData, v9, inQualifierData, 0);
          goto LABEL_37;
        }

LABEL_39:
        v12 = 1852797029;
      }

LABEL_52:
      HALS_ObjectMap::ReleaseObject(v15, v28);
      return v12;
    }

    if (v29 <= 1701078389)
    {
      if (v29 == 1633773415)
      {
        goto LABEL_14;
      }

      v30 = 1633969526;
    }

    else
    {
      if (v29 == 1701078390 || v29 == 1919182198)
      {
        goto LABEL_14;
      }

      v30 = 1701733488;
    }

    if (v29 != v30)
    {
      goto LABEL_34;
    }

LABEL_14:
    *&v37.mSelector = 0;
    v36 = 0;
    *v35 = 0;
    HALB_Info::TranslateDeviceAddressToControlAddress(inAddress, &v37.mScope, &v37.mSelector, v35, v14);
    if (v37.mScope)
    {
      v18 = (*(*v15 + 648))(v15);
      v19 = v18;
      if (v18)
      {
        if ((*(*v18 + 96))(v18, v18[4], v35, 0))
        {
          if ((*(*v19 + 104))(v19, v19[4], v35, 0))
          {
            v21 = 0;
            mSelector = inAddress->mSelector;
            if (inAddress->mSelector > 1987013731)
            {
              if (mSelector != 1987013741)
              {
                v23 = 1987013732;
LABEL_46:
                if (mSelector != v23)
                {
                  goto LABEL_48;
                }
              }
            }

            else if (mSelector != 1818453110)
            {
              v23 = 1818456950;
              goto LABEL_46;
            }

            kdebug_trace();
            v21 = 1;
LABEL_48:
            (*(*v19 + 128))(v19, v19[4], v35, v7, inData, v9, inQualifierData, 0);
            if (v21)
            {
              kdebug_trace();
            }

            goto LABEL_50;
          }

          goto LABEL_38;
        }
      }

      else if ((*(*v15 + 96))(v15, v11, inAddress, 0))
      {
        if ((*(*v15 + 104))(v15, v11, inAddress, 0))
        {
          (*(*v15 + 128))(v15, v11, inAddress, v7, inData, v9, inQualifierData, 0);
LABEL_50:
          v12 = 0;
          goto LABEL_51;
        }

LABEL_38:
        v12 = 1852797029;
      }

LABEL_51:
      HALS_ObjectMap::ReleaseObject(v19, v20);
      goto LABEL_52;
    }

    if ((HALB_Info::IsIOContextProperty(inAddress->mSelector, 0) & 1) != 0 && (*(*v15 + 840))(v15))
    {
      InternalIOContextID = HALS_Device::GetInternalIOContextID(v15);
      v25 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
      v26 = v25;
      if (!v25)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v40 = "HALS_Framework-ios-imp.cpp";
          v41 = 1024;
          v42 = 1229;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectSetPropertyData: no IO Context with given description", buf, 0x12u);
        }

        v34 = __cxa_allocate_exception(0x10uLL);
        *v34 = off_1F5991DD8;
        v34[2] = 2003332927;
      }

      if ((*(*v25 + 96))(v25, InternalIOContextID, inAddress, 0))
      {
        if ((*(*v26 + 104))(v26, InternalIOContextID, inAddress, 0))
        {
          (*(*v26 + 128))(v26, InternalIOContextID, inAddress, v7, inData, v9, inQualifierData, 0);
          v12 = 0;
        }

        else
        {
          v12 = 1852797029;
        }
      }

      HALS_ObjectMap::ReleaseObject(v26, v27);
      goto LABEL_52;
    }

    if ((*(*v15 + 96))(v15, v11, inAddress, 0))
    {
      if ((*(*v15 + 104))(v15, v11, inAddress, 0))
      {
        (*(*v15 + 128))(v15, v11, inAddress, v7, inData, v9, inQualifierData, 0);
LABEL_37:
        v12 = 0;
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    goto LABEL_52;
  }

  return 560033144;
}

void sub_1DE401B3C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioObjectAddPropertyListenerBlock(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, dispatch_queue_t inDispatchQueue, AudioObjectPropertyListenerBlock inListener)
{
  v7 = *&inObjectID;
  v26 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v17, 0);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (!inAddress)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v20 = "HALS_Framework-ios-imp.cpp";
    v21 = 1024;
    v22 = 1348;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  AudioObjectAddPropertyListenerBlock: can't add a listener proc without an address";
    goto LABEL_14;
  }

  if (!inListener)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v20 = "HALS_Framework-ios-imp.cpp";
    v21 = 1024;
    v22 = 1349;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  AudioObjectAddPropertyListenerBlock: can't add a NULL listener proc";
LABEL_14:
    _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v8 = HALS_ObjectMap::CopyObjectByObjectID(v7);
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 1353;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectAddPropertyListenerBlock: no object with given ID %u", buf, 0x18u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = 560947818;
  }

  HALS_Listener::HALS_Listener(v16, inDispatchQueue, inListener);
  buf[0] = 0;
  v25 = 0;
  HALS_NotificationManager::AddPropertyListener(v16, v7, inAddress, buf);
  HALS_Listener::~HALS_Listener(v16);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  return 0;
}

void sub_1DE401ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioObjectRemovePropertyListenerBlock(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, dispatch_queue_t inDispatchQueue, AudioObjectPropertyListenerBlock inListener)
{
  v7 = *&inObjectID;
  v26 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(&v18, 0);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (!inAddress)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v21 = "HALS_Framework-ios-imp.cpp";
    v22 = 1024;
    v23 = 1399;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  AudioObjectRemovePropertyListenerBlock: can't remove a listener proc without an address";
    goto LABEL_14;
  }

  if (!inListener)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v21 = "HALS_Framework-ios-imp.cpp";
    v22 = 1024;
    v23 = 1400;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  AudioObjectRemovePropertyListenerBlock: can't remove a NULL listener proc";
LABEL_14:
    _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v8 = HALS_ObjectMap::CopyObjectByObjectID(v7);
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "HALS_Framework-ios-imp.cpp";
      v22 = 1024;
      v23 = 1404;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectRemovePropertyListenerBlock: no object with given ID %u", buf, 0x18u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = off_1F5991DD8;
    v17[2] = 560947818;
  }

  HALS_Listener::HALS_Listener(buf, inDispatchQueue, inListener);
  HALS_NotificationManager::RemovePropertyListener(buf, v7, inAddress, v9, v10);
  HALS_Listener::~HALS_Listener(buf);
  HALS_ObjectMap::ReleaseObject(v8, v11);
  return 0;
}

void sub_1DE40222C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioObjectAddPropertyListener(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, AudioObjectPropertyListenerProc inListener, void *inClientData)
{
  v7 = *&inObjectID;
  v31 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v22, 0);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (!inAddress)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v25 = "HALS_Framework-ios-imp.cpp";
    v26 = 1024;
    v27 = 1455;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  AudioObjectAddPropertyListener: can't add a listener proc without an address";
    goto LABEL_14;
  }

  if (!inListener)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v25 = "HALS_Framework-ios-imp.cpp";
    v26 = 1024;
    v27 = 1456;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  AudioObjectAddPropertyListener: can't add a NULL listener proc";
LABEL_14:
    _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v8 = HALS_ObjectMap::CopyObjectByObjectID(v7);
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "HALS_Framework-ios-imp.cpp";
      v26 = 1024;
      v27 = 1460;
      v28 = 1024;
      v29 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectAddPropertyListener: no object with given ID %u", buf, 0x18u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = 560947818;
  }

  v16 = 3;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v20 = inListener;
  v21 = inClientData;
  buf[0] = 0;
  v30 = 0;
  HALS_NotificationManager::AddPropertyListener(&v16, v7, inAddress, buf);
  HALS_Listener::~HALS_Listener(&v16);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  return 0;
}

void sub_1DE402598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioObjectRemovePropertyListener(AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, AudioObjectPropertyListenerProc inListener, void *inClientData)
{
  v7 = *&inObjectID;
  v26 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(&v18, 0);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (!inAddress)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v21 = "HALS_Framework-ios-imp.cpp";
    LOWORD(v22) = 1024;
    *(&v22 + 2) = 1556;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  AudioObjectRemovePropertyListener: can't remove a listener proc without an address";
    goto LABEL_14;
  }

  if (!inListener)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v21 = "HALS_Framework-ios-imp.cpp";
    LOWORD(v22) = 1024;
    *(&v22 + 2) = 1557;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  AudioObjectRemovePropertyListener: can't remove a NULL listener proc";
LABEL_14:
    _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v10 = HALS_ObjectMap::CopyObjectByObjectID(v7);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "HALS_Framework-ios-imp.cpp";
      v22 = 0x400000006190400;
      v23 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectRemovePropertyListener: no object with given ID %u", buf, 0x18u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = off_1F5991DD8;
    v17[2] = 560947818;
  }

  *buf = 3;
  v22 = 0;
  v21 = 0;
  v23 = 0;
  v24 = inListener;
  v25 = inClientData;
  HALS_NotificationManager::RemovePropertyListener(buf, v7, inAddress, v8, v9);
  HALS_Listener::~HALS_Listener(buf);
  HALS_ObjectMap::ReleaseObject(v10, v11);
  return 0;
}

void sub_1DE4028E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareUnload(void)
{
  if (AllowHALClientsInThisProcess())
  {
    return 0;
  }

  else
  {
    return 560033144;
  }
}

OSStatus AudioHardwareCreateAggregateDevice(CFDictionaryRef inDescription, AudioObjectID *outDeviceID)
{
  v14 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(&v8, 0);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (inDescription)
    {
      if (outDeviceID)
      {
        HALS_MetaManager::CreateDevice(HALS_MetaManager::sInstance, inDescription, 0);
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      *buf = 136315394;
      v11 = "HALS_Framework-ios-imp.cpp";
      v12 = 1024;
      v13 = 1638;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  AudioHardwareCreateAggregateDevice: nowhere to put the return value";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      v11 = "HALS_Framework-ios-imp.cpp";
      v12 = 1024;
      v13 = 1637;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  AudioHardwareCreateAggregateDevice: can't create an Agggregate Device with a NULL description";
    }

    _os_log_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
    goto LABEL_13;
  }

  return 560033144;
}

void sub_1DE402B5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      if (v2)
      {
        *v2 = 0;
      }
    }

    else if (v2)
    {
      *v2 = 0;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE402A20);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioHardwareDestroyAggregateDevice(AudioObjectID inDeviceID)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(&v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  HALS_MetaManager::DestroyDevice(HALS_MetaManager::sInstance, inDeviceID);
  return 0;
}

void sub_1DE402C18(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE402C04);
}

OSStatus AudioDeviceCreateIOProcID(AudioObjectID inDevice, AudioDeviceIOProc inProc, void *inClientData, AudioDeviceIOProcID *outIOProcID)
{
  v7 = *&inDevice;
  v26 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    if (inProc)
    {
      if (outIOProcID)
      {
        v8 = HALS_ObjectMap::CopyObjectByObjectID(v7);
        v10 = v8;
        if (v8)
        {
          v12 = *(v8 + 5);
          v11 = *(v8 + 6);
          if (v12 <= 1701078389)
          {
            if (v12 == 1633773415)
            {
LABEL_13:
              *outIOProcID = (*(*v8 + 848))(v8, inProc, inClientData);
              HALS_ObjectMap::ReleaseObject(v10, v15);
              return 0;
            }

            v13 = 1633969526;
          }

          else
          {
            if (v12 == 1701078390 || v12 == 1701733488)
            {
              goto LABEL_13;
            }

            v13 = 1919182198;
          }

          if (v12 == v13)
          {
            goto LABEL_13;
          }

          if (v12 != v11)
          {
            if (v11 <= 1701078389)
            {
              if (v11 == 1633773415)
              {
                goto LABEL_13;
              }

              v17 = 1633969526;
            }

            else
            {
              if (v11 == 1701078390 || v11 == 1701733488)
              {
                goto LABEL_13;
              }

              v17 = 1919182198;
            }

            if (v11 == v17)
            {
              goto LABEL_13;
            }
          }

          HALS_ObjectMap::ReleaseObject(v8, v9);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = 136315394;
          v23 = "HALS_Framework-ios-imp.cpp";
          v24 = 1024;
          v25 = 1737;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceCreateIOProcID: no device with given ID", &v22, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 560947818;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        v21 = __cxa_allocate_exception(0x10uLL);
        *v21 = off_1F5991DD8;
        v21[2] = 1852797029;
      }

      v22 = 136315394;
      v23 = "HALS_Framework-ios-imp.cpp";
      v24 = 1024;
      v25 = 1733;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d  AudioDeviceCreateIOProcID: nowhere to put the return value";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v22 = 136315394;
      v23 = "HALS_Framework-ios-imp.cpp";
      v24 = 1024;
      v25 = 1732;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%25s:%-5d  AudioDeviceCreateIOProcID: can't create an AudioDeviceIOProcID for a NULL IOProc";
    }

    _os_log_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, v20, &v22, 0x12u);
    goto LABEL_32;
  }

  return 560033144;
}

void sub_1DE402FB0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE402FC8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE402FB8);
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE402D4CLL);
  }

  *v2 = 0;
  goto LABEL_7;
}